# SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler
#
# SPDX-License-Identifier: AGPL-3.0-or-later

terraform {
  required_providers {
    coder = {
      source  = "coder/coder"
      version = "~> 2.11.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.38.0"
    }
  }
}

provider "coder" {
}

locals {
  dremio_url     = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}dremio--dremio--${data.coder_workspace.me.name}--${data.coder_workspace_owner.me.name}.${var.external_url}%{else}${var.external_url}:${var.node_port}%{endif}"
  decoded_labels = var.extra_labels != "" ? jsondecode(base64decode(var.extra_labels)) : {}
}

variable "use_kubeconfig" {
  type        = bool
  description = <<-EOF
  Use host kubeconfig? (true/false)

  Set this to false if the Coder host is itself running as a Pod on the same
  Kubernetes cluster as you are deploying workspaces to.

  Set this to true if the Coder host is running outside the Kubernetes cluster
  for workspaces.  A valid "~/.kube/config" must be present on the Coder host.
  EOF
  default     = false
}

variable "namespace" {
  type        = string
  description = "The Kubernetes namespace to create workspaces in (must exist prior to creating workspaces)"
  default     = "digitalhub"
}

variable "postgresql_hostname" {
  type        = string
  description = "Postgresql hostname"
  default     = "database-postgres-cluster"
}

variable "s3_endpoint" {
  type        = string
  description = "S3 endpoint"
  default     = "seaweedfs-s3:8333"
}

variable "s3_bucket" {
  type        = string
  description = "S3 bucket name"
  default     = "datalake"
}

variable "postgresql_db_name" {
  type        = string
  description = "Postgresql database name"
  default     = "digitalhub"
}

variable "postgresql_creds_secret" {
  type        = string
  description = "Postgresql database credentials secret"
}

variable "postgresql_username_key" {
  type        = string
  description = "Postgresql database credentials username key"
}

variable "postgresql_password_key" {
  type        = string
  description = "Postgresql database credentials password key"
}

variable "service_type" {
  type    = string
  default = "ClusterIP"
}

variable "node_port" {
  type    = string
  default = "30120"
}

variable "image" {
  type = string
}

variable "arrow_flight_node_port" {
  type    = string
  default = "30190"
}

variable "odbc_jdbc_node_port" {
  type    = string
  default = "30200"
}

variable "https" {
  type    = bool
  default = false
}

variable "external_url" {
  type = string
}

variable "s3_platform_user_secret" {
  type = string
}

variable "s3_access_key_key" {
  type    = string
  default = "accessKey"
}

variable "s3_secret_key_key" {
  type    = string
  default = "secretKey"
}

variable "extra_vars" {
  type    = bool
  default = false
}

variable "extra_labels" {
  type        = string
  description = "Extra labels that will be used by the workspace deployment. The labels must be in json format and encoded in Base64."
  default     = ""
}

provider "kubernetes" {
  # Authenticate via ~/.kube/config or a Coder-specific ServiceAccount, depending on admin preferences
  config_path = var.use_kubeconfig == true ? "~/.kube/config" : null
}

data "coder_workspace" "me" {}

data "coder_workspace_owner" "me" {}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!%&*()-_=+:?"
}

resource "coder_agent" "dremio" {
  os             = "linux"
  arch           = "amd64"
  startup_script = <<EOT
    set -e
    /opt/dremio/bin/dremio start
  EOT
  metadata {
    display_name = "CPU Usage"
    key          = "0_cpu_usage"
    script       = "coder stat cpu"
    interval     = 10
    timeout      = 1
  }
  metadata {
    display_name = "RAM Usage"
    key          = "1_ram_usage"
    script       = "coder stat mem"
    interval     = 10
    timeout      = 1
  }
  metadata {
    display_name = "Dremio Disk"
    key          = "3_home_disk"
    script       = "coder stat disk --path /opt/dremio/data"
    interval     = 60
    timeout      = 1
  }
  metadata {
    display_name = "Load Average (Host)"
    key          = "6_load_host"
    # get load avg scaled by number of cores
    script   = <<EOT
      echo "`cat /proc/loadavg | awk '{ print $1 }'` `nproc`" | awk '{ printf "%0.2f", $1/$2 }'
    EOT
    interval = 60
    timeout  = 1
  }
  display_apps {
    vscode                 = false
    vscode_insiders        = false
    web_terminal           = false
    port_forwarding_helper = true
    ssh_helper             = false
  }
}

resource "coder_app" "dremio" {
  agent_id     = coder_agent.dremio.id
  slug         = "dremio"
  display_name = "Dremio"
  icon         = "https://cdn-images-1.medium.com/max/1200/1*2nGovT9tEnQva8NWfHLZxg.png"
  url          = "http://127.0.0.1:9047"
  subdomain    = true
  share        = "authenticated"
}

resource "coder_metadata" "dremio" {
  count       = data.coder_workspace.me.start_count
  resource_id = kubernetes_deployment.dremio[0].id
  item {
    key   = "Internal Endpoint"
    value = "http://dremio-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}:${kubernetes_service.dremio-service.spec[0].port[0].port}"
  }
  item {
    key   = "Arrow Flight Endpoint"
    value = "dremio-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}:${kubernetes_service.dremio-service.spec[0].port[1].port}"
  }
  item {
    key   = "URL"
    value = local.dremio_url
  }
  item {
    key       = "Username"
    value     = data.coder_workspace_owner.me.email
    sensitive = false
  }
  item {
    key       = "Password"
    value     = random_password.password.result
    sensitive = true
  }
}

resource "kubernetes_persistent_volume_claim" "dremio-data" {
  metadata {
    name      = "dremio-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}-data"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "dremio-pvc"
      "app.kubernetes.io/instance" = "dremio-pvc-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      // Coder specific labels.
      "com.coder.resource"       = "true"
      "com.coder.workspace.id"   = data.coder_workspace.me.id
      "com.coder.workspace.name" = data.coder_workspace.me.name
      "com.coder.user.id"        = data.coder_workspace_owner.me.id
      "com.coder.user.username"  = data.coder_workspace_owner.me.name
    }
    annotations = {
      "com.coder.user.email" = data.coder_workspace_owner.me.email
    }
  }
  wait_until_bound = false
  spec {
    access_modes = ["ReadWriteOnce"]
    resources {
      requests = {
        storage = "8Gi"
      }
    }
  }
}

resource "kubernetes_service" "dremio-service" {
  metadata {
    name      = "dremio-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "dremio-workspace"
      "app.kubernetes.io/instance" = "dremio-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      "app.kubernetes.io/type"     = "service"
      // Coder specific labels.
      "com.coder.resource"       = "true"
      "com.coder.workspace.id"   = data.coder_workspace.me.id
      "com.coder.workspace.name" = data.coder_workspace.me.name
      "com.coder.user.id"        = data.coder_workspace_owner.me.id
      "com.coder.user.username"  = data.coder_workspace_owner.me.name
    }
    annotations = {
      "com.coder.user.email" = data.coder_workspace_owner.me.email
    }
  }
  spec {
    selector = {
      "app.kubernetes.io/name"     = "dremio-workspace"
      "app.kubernetes.io/instance" = "dremio-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      "app.kubernetes.io/type"     = "workspace"
    }
    port {
      name        = "ui"
      port        = 9047
      target_port = 9047
      node_port   = var.service_type == "ClusterIP" ? null : var.node_port
    }
    port {
      name        = "arrow-flight"
      port        = 32010
      target_port = 32010
      node_port   = var.service_type == "ClusterIP" ? null : var.arrow_flight_node_port
    }
    port {
      name        = "odbc-jdbc"
      port        = 31010
      target_port = 31010
      node_port   = var.service_type == "ClusterIP" ? null : var.odbc_jdbc_node_port
    }
    type = var.service_type
  }
}

resource "kubernetes_job" "source-init" {
  depends_on = [
    kubernetes_deployment.dremio,
    kubernetes_service.dremio-service
  ]
  metadata {
    name      = "dremio-source-init-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = merge(
      {
        "app.kubernetes.io/name"     = "dremio-source-init"
        "app.kubernetes.io/instance" = "dremio-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
        "app.kubernetes.io/part-of"  = "coder"
        "app.kubernetes.io/type"     = "job"
        // Coder specific labels.
        "com.coder.resource"       = "true"
        "com.coder.workspace.id"   = data.coder_workspace.me.id
        "com.coder.workspace.name" = data.coder_workspace.me.name
        "com.coder.user.id"        = data.coder_workspace_owner.me.id
        "com.coder.user.username"  = data.coder_workspace_owner.me.name
      },
    local.decoded_labels)
    annotations = {
      "com.coder.user.email" = data.coder_workspace_owner.me.email
    }
  }
  spec {
    template {
      metadata {}
      spec {
        init_container {
          name    = "wait-for-dremio"
          image   = "curlimages/curl:8.15.0"
          command = ["/bin/sh", "-c", "until [ \"$(curl -s -w '%%{http_code}' -o /dev/null \"http://${kubernetes_service.dremio-service.metadata.0.name}:9047/api/v2/buildinfo\")\" -eq 200 ]; do echo \"waiting for dremio to be ready\"; sleep 5; done"]
          security_context {
            run_as_user                = "1000"
            allow_privilege_escalation = false
            capabilities {
              drop = [
                "ALL"
              ]
            }
            run_as_non_root = true
            seccomp_profile {
              type = "RuntimeDefault"
            }
          }
        }
        init_container {
          name              = "init-dremio-data"
          image             = var.image
          image_pull_policy = "IfNotPresent"
          command           = ["/bin/bash", "/tmp/init/init-data.sh"]
          env {
            name  = "ADMIN_PASSWORD"
            value = random_password.password.result
          }
          env {
            name  = "DREMIO_CODER_EMAIL"
            value = data.coder_workspace_owner.me.email
          }
          env {
            name  = "DREMIO_URL"
            value = kubernetes_service.dremio-service.metadata.0.name
          }
          volume_mount {
            mount_path = "/tmp/init/"
            name       = "dremio-init-data"
            read_only  = false
          }
          security_context {
            run_as_user                = "999"
            allow_privilege_escalation = false
            capabilities {
              drop = [
                "ALL"
              ]
            }
            run_as_non_root = true
            seccomp_profile {
              type = "RuntimeDefault"
            }
          }
        }
        container {
          name    = "dremio-add-sources"
          image   = "badouralix/curl-jq"
          command = ["/bin/sh", "/init-files/add_source_with_api.sh"]
          env {
            name  = "ADMIN_PASSWORD"
            value = random_password.password.result
          }
          env {
            name  = "DREMIO_URL"
            value = kubernetes_service.dremio-service.metadata.0.name
          }
          env {
            name  = "S3_ENDPOINT"
            value = var.s3_endpoint
          }
          env {
            name  = "S3_BUCKET"
            value = var.s3_bucket
          }
          env {
            name  = "PSQL_HOSTNAME"
            value = var.postgresql_hostname
          }
          env {
            name  = "PSQL_DB_NAME"
            value = var.postgresql_db_name
          }
          env {
            name = "PSQL_USERNAME"
            value_from {
              secret_key_ref {
                name = var.postgresql_creds_secret
                key  = var.postgresql_username_key
              }
            }
          }
          env {
            name = "PSQL_PASSWORD"
            value_from {
              secret_key_ref {
                name = var.postgresql_creds_secret
                key  = var.postgresql_password_key
              }
            }
          }
          env {
            name = "S3_USERNAME"
            value_from {
              secret_key_ref {
                name = var.s3_platform_user_secret
                key  = var.s3_access_key_key
              }
            }
          }
          env {
            name = "S3_PASSWORD"
            value_from {
              secret_key_ref {
                name = var.s3_platform_user_secret
                key  = var.s3_secret_key_key
              }
            }
          }
          env {
            name  = "DREMIO_CODER_EMAIL"
            value = data.coder_workspace_owner.me.email
          }
          security_context {
            run_as_user                = "1000"
            allow_privilege_escalation = false
            capabilities {
              drop = [
                "ALL"
              ]
            }
            run_as_non_root = true
            seccomp_profile {
              type = "RuntimeDefault"
            }
          }
          volume_mount {
            name       = "init-files"
            mount_path = "/init-files"
            read_only  = true
          }
        }
        security_context {
          run_as_non_root = true
          seccomp_profile {
            type = "RuntimeDefault"
          }
        }
        volume {
          name = "init-files"
          config_map {
            name = "dremio-init-data"
            items {
              key  = "add_source_with_api.sh"
              path = "add_source_with_api.sh"
            }
          }
        }
        volume {
          name = "dremio-init-data"
          config_map {
            name = "dremio-init-data"
            items {
              key  = "init-data.sh"
              path = "init-data.sh"
            }
          }

        }
      }
    }
  }
  wait_for_completion = false
}

resource "kubernetes_deployment" "dremio" {
  count = data.coder_workspace.me.start_count
  depends_on = [
    kubernetes_persistent_volume_claim.dremio-data
  ]
  wait_for_rollout = false
  metadata {
    name      = "dremio-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = merge(
      {
        "app.kubernetes.io/name"     = "dremio-workspace"
        "app.kubernetes.io/instance" = "dremio-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
        "app.kubernetes.io/part-of"  = "coder"
        "app.kubernetes.io/type"     = "workspace"
        // Coder specific labels.
        "com.coder.resource"       = "true"
        "com.coder.workspace.id"   = data.coder_workspace.me.id
        "com.coder.workspace.name" = data.coder_workspace.me.name
        "com.coder.user.id"        = data.coder_workspace_owner.me.id
        "com.coder.user.username"  = data.coder_workspace_owner.me.name
      },
    local.decoded_labels)
    annotations = {
      "com.coder.user.email" = data.coder_workspace_owner.me.email
    }
  }
  spec {
    replicas = 1
    strategy {
      type = "Recreate"
    }
    selector {
      match_labels = {
        "app.kubernetes.io/name"     = "dremio-workspace"
        "app.kubernetes.io/instance" = "dremio-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
        "app.kubernetes.io/part-of"  = "coder"
        "app.kubernetes.io/type"     = "workspace"
      }
    }
    template {
      metadata {
        labels = {
          "app.kubernetes.io/name"     = "dremio-workspace"
          "app.kubernetes.io/instance" = "dremio-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
          "app.kubernetes.io/part-of"  = "coder"
          "app.kubernetes.io/type"     = "workspace"
          // Coder specific labels.
          "com.coder.resource"       = "true"
          "com.coder.workspace.id"   = data.coder_workspace.me.id
          "com.coder.workspace.name" = data.coder_workspace.me.name
          "com.coder.user.id"        = data.coder_workspace_owner.me.id
          "com.coder.user.username"  = data.coder_workspace_owner.me.name
        }
      }
      spec {
        security_context {
          run_as_user     = "999"
          fs_group        = "999"
          run_as_group    = "999"
          run_as_non_root = true
          seccomp_profile {
            type = "RuntimeDefault"
          }
        }
        container {
          name              = "dremio"
          image             = var.image
          image_pull_policy = "IfNotPresent"
          command           = ["sh", "-c", coder_agent.dremio.init_script]
          security_context {
            run_as_user                = "999"
            run_as_group               = "999"
            allow_privilege_escalation = false
            capabilities {
              drop = [
                "ALL"
              ]
            }
            run_as_non_root = true
            seccomp_profile {
              type = "RuntimeDefault"
            }
          }
          env {
            name  = "CODER_AGENT_TOKEN"
            value = coder_agent.dremio.token
          }
          dynamic "env_from" {
            for_each = var.extra_vars ? [1] : []
            content {
              config_map_ref {
                name = "dremio-additional-env"
              }
            }
          }
          resources {
            requests = {
              "cpu"    = "2000m"
              "memory" = "2Gi"
            }
            limits = {
              "cpu"    = "4000m"
              "memory" = "4Gi"
            }
          }
          volume_mount {
            mount_path = "/opt/dremio/data"
            name       = "dremio-data"
            read_only  = false
          }
          volume_mount {
            mount_path = "/var/lib/dremio/dremio"
            name       = "dremio-home"
            read_only  = false
          }
        }
        volume {
          name = "dremio-data"
          persistent_volume_claim {
            claim_name = kubernetes_persistent_volume_claim.dremio-data.metadata.0.name
            read_only  = false
          }
        }
        volume {
          name = "dremio-home"
          empty_dir {}
        }
        affinity {
          pod_anti_affinity {
            preferred_during_scheduling_ignored_during_execution {
              weight = 1
              pod_affinity_term {
                topology_key = "kubernetes.io/hostname"
                label_selector {
                  match_expressions {
                    key      = "app.kubernetes.io/type"
                    operator = "In"
                    values   = ["workspace"]
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
