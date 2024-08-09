terraform {
  required_providers {
    coder = {
      source  = "coder/coder"
      version = "~> 0.23.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.30"
    }
  }
}

provider "coder" {
}

locals {
  dremio_url = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}dremio--dremio--${data.coder_workspace.me.name}--${data.coder_workspace_owner.me.name}.${var.external_url}%{else}${var.external_url}:${var.node_port}%{endif}"
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
  default     = "mlrun"
}

variable "postgresql_hostname" {
  type        = string
  description = "Postgresql hostname"
  default     = "database-postgres-cluster"
}

variable "minio_endpoint" {
  type        = string
  description = "Minio endpoint"
  default     = "minio:9000"
}

variable "minio_bucket" {
  type        = string
  description = "Minio buckat name"
  default     = "datalake"
}

variable "minio-creds-secret" {
  type        = string
  description = "Minio database credentials secret"
  default     = "digitalhub-minio-creds"
}

variable "postgresql_db_name" {
  type        = string
  description = "Postgresql database name"
  default     = "digitalhub"
}

variable "postgresql_creds_secret" {
  type        = string
  description = "Postgresql database credentials secret"
  default     = "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
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

data "coder_parameter" "admin_password" {
  name         = "admin_password"
  display_name = "Dremio Admin Password"
  description  = "Choose a password for Dremio admin account must be at least 8 letters long, must contain at least one number and one letter"
  type         = "string"
  icon         = "/emojis/1f510.png"
  mutable      = false
  # validation {
  #   regex = "[a-zA-Z][0-9][a-zA-Z0-9]{6,}|[a-zA-Z]{2}[0-9][a-zA-Z0-9]{5,}|[a-zA-Z]{3}[0-9][a-zA-Z0-9]{4,}|[a-zA-Z]{5}[0-9][a-zA-Z0-9]{3,}|[a-zA-Z]{6}[0-9][a-zA-Z0-9]{2,}|[a-zA-Z]{7,}[0-9][a-zA-Z0-9]*|[0-9][a-zA-Z][a-zA-Z0-9]{6,}|[0-9]{2}[a-zA-Z][a-zA-Z0-9]{5,}|[0-9]{3}[a-zA-Z][a-zA-Z0-9]{4,}|[0-9]{5}[a-zA-Z][a-zA-Z0-9]{3,}|[0-9]{6}[a-zA-Z][a-zA-Z0-9]{2,}|[0-9]{7,}[a-zA-Z][a-zA-Z0-9]*"
  #   error = "Invalid password: must be at least 8 letters long, must contain at least one number and one letter"
  # }
}

provider "kubernetes" {
  # Authenticate via ~/.kube/config or a Coder-specific ServiceAccount, depending on admin preferences
  config_path = var.use_kubeconfig == true ? "~/.kube/config" : null
}

data "coder_workspace" "me" {}

data "coder_workspace_owner" "me" {}

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
  icon         = "https://cdn.icon-icons.com/icons2/2699/PNG/512/dremio_logo_icon_168234.png"
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
    labels = {
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
    }
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
          image   = "badouralix/curl-jq"
          command = ["/bin/sh", "-c", "until [ \"$(curl -s -w '%%{http_code}' -o /dev/null \"http://${kubernetes_service.dremio-service.metadata.0.name}:9047/api/v2/buildinfo\")\" -eq 200 ]; do echo \"waiting for dremio to be ready\"; sleep 5; done"]
        }
        container {
          name    = "dremio-add-sources"
          image   = "badouralix/curl-jq"
          command = ["/bin/sh", "/init-files/add_source_with_api.sh"]
          env {
            name  = "ADMIN_PASSWORD"
            value = data.coder_parameter.admin_password.value
          }
          env {
            name  = "DREMIO_URL"
            value = kubernetes_service.dremio-service.metadata.0.name
          }
          env {
            name  = "MINIO_ENDPOINT"
            value = var.minio_endpoint
          }
          env {
            name  = "MINIO_BUCKET"
            value = var.minio_bucket
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
                key  = "username"
              }
            }
          }
          env {
            name = "PSQL_PASSWORD"
            value_from {
              secret_key_ref {
                name = var.postgresql_creds_secret
                key  = "password"
              }
            }
          }
          env {
            name = "MINIO_USERNAME"
            value_from {
              secret_key_ref {
                name = var.minio-creds-secret
                key  = "digitalhubUser"
              }
            }
          }
          env {
            name = "MINIO_PASSWORD"
            value_from {
              secret_key_ref {
                name = var.minio-creds-secret
                key  = "digitalhubPassword"
              }
            }
          }
          volume_mount {
            name       = "init-files"
            mount_path = "/init-files"
            read_only  = true
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
        }
      }
      spec {
        security_context {
          run_as_user  = "999"
          fs_group     = "999"
          run_as_group = "999"
        }
        init_container {
          name              = "init-dremio-data"
          image             = "dremio/dremio-oss:24.1.0"
          image_pull_policy = "IfNotPresent"
          command           = ["/bin/bash", "/tmp/init/init-data.sh"]
          env {
            name  = "ADMIN_PASSWORD"
            value = data.coder_parameter.admin_password.value
          }
          volume_mount {
            mount_path = "/opt/dremio/data"
            name       = "dremio-data"
            read_only  = false
          }
          volume_mount {
            mount_path = "/tmp/init/"
            name       = "dremio-init-data"
            read_only  = false
          }
          security_context {
            run_as_user                = "999"
            allow_privilege_escalation = false
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
          }
          env {
            name  = "CODER_AGENT_TOKEN"
            value = coder_agent.dremio.token
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
          name = "dremio-init-data"
          config_map {
            name = "dremio-init-data"
            items {
              key  = "dremio-backup.tar"
              path = "dremio-backup.tar"
            }
            items {
              key  = "init-data.sh"
              path = "init-data.sh"
            }
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
