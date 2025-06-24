# SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler
#
# SPDX-License-Identifier: AGPL-3.0-or-later

terraform {
  required_providers {
    coder = {
      source  = "coder/coder"
      version = "~> 2.4.2"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.36.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.5.0"
    }
  }
}

provider "coder" {
}

provider "http" {
}

locals {
  jupyter_url = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}jupyter--jupyter--${data.coder_workspace.me.name}--${data.coder_workspace_owner.me.name}.${var.external_url}%{else}${var.external_url}:${var.node_port}%{endif}"
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

variable "service_type" {
  type    = string
  default = "ClusterIP"
}

variable "node_port" {
  type    = string
  default = "30040"
}

variable "image" {
  type = string
}

variable "image_3_9" {
  type = string
}

variable "image_3_11" {
  type = string
}

variable "https" {
  type    = bool
  default = false
}

variable "external_url" {
  type = string
}

variable "privileged" {
  type    = string
  default = "false"
}

variable "stsenabled" {
  type    = bool
  default = false
}

variable "core_auth_creds" {
  type    = string
  default = "core-auth-creds"
}

variable "clientId" {
  type    = string
  default = "core-auth-creds"
}

variable "dhcore_endpoint" {
  type    = string
  default = ""
}

variable "dhcore_issuer" {
  type    = string
  default = ""
}

variable "extra_vars" {
  type    = bool
  default = false
}

data "coder_parameter" "cpu" {
  name         = "cpu"
  display_name = "CPU"
  description  = "The number of CPU cores"
  default      = "2"
  icon         = "/emojis/1f680.png"
  mutable      = true
  option {
    name  = "2 Cores"
    value = "2"
  }
  option {
    name  = "4 Cores"
    value = "4"
  }
  option {
    name  = "6 Cores"
    value = "6"
  }
  option {
    name  = "8 Cores"
    value = "8"
  }
}

data "coder_parameter" "memory" {
  name         = "memory"
  display_name = "Memory"
  description  = "The amount of memory in GB"
  default      = "2"
  icon         = "/icon/memory.svg"
  mutable      = true
  option {
    name  = "2 GB"
    value = "2"
  }
  option {
    name  = "4 GB"
    value = "4"
  }
  option {
    name  = "6 GB"
    value = "6"
  }
  option {
    name  = "8 GB"
    value = "8"
  }
}

data "coder_parameter" "home_disk_size" {
  name         = "home_disk_size"
  display_name = "Home disk size"
  description  = "The size of the home disk in GB"
  default      = "10"
  type         = "number"
  icon         = "/emojis/1f4be.png"
  mutable      = false
  validation {
    min = 1
    max = 99999
  }
}

data "coder_parameter" "python_version" {
  name         = "python_version"
  display_name = "Python Version"
  description  = "Select the Python version for this workspace"
  default      = var.image
  icon         = "/icon/python.svg"
  mutable      = true
  option {
    name  = "3.9"
    value = var.image_3_9
  }
  option {
    name  = "3.10"
    value = var.image
  }
  option {
    name  = "3.11"
    value = var.image_3_11
  }
}

data "http" "exchange_token" {
  count  = data.coder_workspace_owner.me.oidc_access_token != "" ? 1 : 0
  url    = "${var.dhcore_endpoint}/auth/token"
  method = "POST"

  # Optional request headers
  request_headers = {
    Content-Type  = "application/x-www-form-urlencoded"
    Authorization = "Basic ${base64encode("${data.kubernetes_secret.auth.data["clientId"]}:${data.kubernetes_secret.auth.data["clientSecret"]}")}"
  }

  request_body = "grant_type=urn:ietf:params:oauth:grant-type:token-exchange&scope=openid%20offline_access%20credentials&subject_token_type=urn:ietf:params:oauth:token-type:access_token&subject_token=${data.coder_workspace_owner.me.oidc_access_token}"
}

provider "kubernetes" {
  # Authenticate via ~/.kube/config or a Coder-specific ServiceAccount, depending on admin preferences
  config_path = var.use_kubeconfig == true ? "~/.kube/config" : null
}

data "coder_workspace" "me" {}

data "coder_workspace_owner" "me" {}

data "kubernetes_secret" "auth" {
  metadata {
    name      = var.core_auth_creds
    namespace = var.namespace
  }
}

resource "coder_agent" "jupyter" {
  os             = "linux"
  arch           = "amd64"
  startup_script = <<-EOT
    set -e
    jupyter lab --ServerApp.ip=0.0.0.0 --ServerApp.port=8888 --ServerApp.token="" --ServerApp.password="" --ServerApp.root_dir="/home/${data.coder_workspace_owner.me.name}"
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
    display_name = "Home Disk"
    key          = "3_home_disk"
    script       = "coder stat disk --path /home/${data.coder_workspace_owner.me.name}"
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
    vscode                 = true
    vscode_insiders        = false
    web_terminal           = false
    port_forwarding_helper = true
    ssh_helper             = true
  }
}

resource "coder_app" "jupyter" {
  agent_id     = coder_agent.jupyter.id
  slug         = "jupyter"
  display_name = "JupyterLab"
  icon         = "/icon/jupyter.svg"
  url          = "http://127.0.0.1:8888"
  subdomain    = true
  share        = "owner"
  healthcheck {
    url       = "http://127.0.0.1:8888/api"
    interval  = 5
    threshold = 10
  }
}

resource "coder_metadata" "jupyter" {
  count       = data.coder_workspace.me.start_count
  resource_id = kubernetes_deployment.jupyter[0].id
  item {
    key   = "URL"
    value = local.jupyter_url
  }
}

resource "kubernetes_persistent_volume_claim" "home" {
  metadata {
    name      = "jupyter-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}-home"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "jupyter-pvc"
      "app.kubernetes.io/instance" = "jupyter-pvc-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      "app.kubernetes.io/type"     = "pvc"
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
        storage = "${data.coder_parameter.home_disk_size.value}Gi"
      }
    }
  }
}

resource "kubernetes_service" "jupyter-service" {
  metadata {
    name      = "jupyter-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "jupyter-workspace"
      "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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
      "app.kubernetes.io/name"     = "jupyter-workspace"
      "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      "app.kubernetes.io/type"     = "workspace"
    }
    port {
      port        = 8888
      target_port = 8888
      node_port   = var.service_type == "ClusterIP" ? null : var.node_port
    }
    type = var.service_type
  }
}

resource "random_uuid" "check-token-exchange" {
  count = data.coder_workspace_owner.me.oidc_access_token != "" ? 1 : 0
  lifecycle {
    precondition {
      condition     = contains([201, 204, 200], data.http.exchange_token[0].status_code)
      error_message = "Invalid AAC Token"
    }
  }
}

resource "kubernetes_secret" "jupyter-secret" {
  count = (var.stsenabled && data.coder_workspace.me.start_count == 1 ) ? 1 : 0
  metadata {
    name      = "jupyter-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "jupyter-workspace"
      "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      "app.kubernetes.io/type"     = "secret"
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

  type = "Opaque"

  data = {
    "DHCORE_ACCESS_TOKEN"   = data.coder_workspace_owner.me.oidc_access_token != "" ? lookup(jsondecode(data.http.exchange_token[0].response_body), "access_token", null) : null
    "DHCORE_REFRESH_TOKEN"  = data.coder_workspace_owner.me.oidc_access_token != "" ? lookup(jsondecode(data.http.exchange_token[0].response_body), "refresh_token", null) : null
    "AWS_ACCESS_KEY_ID"     = data.coder_workspace_owner.me.oidc_access_token != "" ? lookup(jsondecode(data.http.exchange_token[0].response_body), "aws_access_key_id", null) : null
    "AWS_SECRET_ACCESS_KEY" = data.coder_workspace_owner.me.oidc_access_token != "" ? lookup(jsondecode(data.http.exchange_token[0].response_body), "aws_secret_access_key", null) : null
    "DB_PASSWORD"           = data.coder_workspace_owner.me.oidc_access_token != "" ? lookup(jsondecode(data.http.exchange_token[0].response_body), "db_password", null) : null
    "DB_USERNAME"           = data.coder_workspace_owner.me.oidc_access_token != "" ? lookup(jsondecode(data.http.exchange_token[0].response_body), "db_username", null) : null
    "AWS_SESSION_TOKEN"     = data.coder_workspace_owner.me.oidc_access_token != "" ? lookup(jsondecode(data.http.exchange_token[0].response_body), "aws_session_token", null) : null
    "DHCORE_CLIENT_ID"      = data.coder_workspace_owner.me.oidc_access_token != "" ? lookup(jsondecode(data.http.exchange_token[0].response_body), "client_id", null) : null
  }
}


resource "kubernetes_deployment" "jupyter" {
  count = data.coder_workspace.me.start_count
  depends_on = [
    kubernetes_persistent_volume_claim.home
  ]
  wait_for_rollout = false
  metadata {
    name      = "jupyter-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "jupyter-workspace"
      "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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
        "app.kubernetes.io/name"     = "jupyter-workspace"
        "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
        "app.kubernetes.io/part-of"  = "coder"
        "app.kubernetes.io/type"     = "workspace"
      }
    }
    template {
      metadata {
        labels = {
          "app.kubernetes.io/name"     = "jupyter-workspace"
          "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
          "app.kubernetes.io/part-of"  = "coder"
          "app.kubernetes.io/type"     = "workspace"
        }
      }
      spec {
        security_context {
          run_as_user     = "1000"
          fs_group        = "100"
          run_as_group    = "100"
          run_as_non_root = true
          seccomp_profile {
            type = "RuntimeDefault"
          }
        }
        init_container {
          name              = "copy-users-file"
          image             = data.coder_parameter.python_version.value
          image_pull_policy = "Always"
          command           = ["bash", "-c", "cp -r /etc/ /etc-backup/"]
          env {
            name  = "NB_USER"
            value = data.coder_workspace_owner.me.name
          }
          volume_mount {
            mount_path = "/home/${data.coder_workspace_owner.me.name}"
            name       = "home"
            sub_path   = data.coder_workspace_owner.me.name
            read_only  = false
          }
          volume_mount {
            name       = "user"
            mount_path = "/etc-backup"

          }
          security_context {
            run_as_user                = "0"
            run_as_group               = "0"
            allow_privilege_escalation = var.privileged
            seccomp_profile {
              type = "RuntimeDefault"
            }
          }
        }
        init_container {
          name              = "init-new-user"
          image             = data.coder_parameter.python_version.value
          image_pull_policy = "Always"
          command           = ["/usr/local/bin/start.sh"]
          env {
            name  = "NB_USER"
            value = data.coder_workspace_owner.me.name
          }
          env {
            name  = "CP_OPTS"
            value = "--r"
          }
          volume_mount {
            mount_path = "/home/${data.coder_workspace_owner.me.name}"
            name       = "home"
            sub_path   = data.coder_workspace_owner.me.name
            read_only  = false
          }
          volume_mount {
            name       = "user"
            mount_path = "/etc/"
            sub_path   = "etc/"
          }
          security_context {
            run_as_user                = "0"
            run_as_group               = "0"
            allow_privilege_escalation = var.privileged
            seccomp_profile {
              type = "RuntimeDefault"
            }
          }
        }
        container {
          name        = "jupyter"
          image       = data.coder_parameter.python_version.value
          command     = ["sh", "-c", coder_agent.jupyter.init_script]
          working_dir = "/home/${data.coder_workspace_owner.me.name}"
          security_context {
            run_as_user                = "1000"
            allow_privilege_escalation = var.privileged
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
            value = coder_agent.jupyter.token
          }
          env {
            name  = "NB_USER"
            value = data.coder_workspace_owner.me.name
          }
          env {
            name  = "GRANT_SUDO"
            value = var.privileged ? 1 : 0
          }
          env {
            name  = "HOME"
            value = "/home/${data.coder_workspace_owner.me.name}"
          }
          env_from {
            config_map_ref {
              name = "digitalhub-common-env"
            }
          }
          dynamic "env_from" {
            for_each = var.extra_vars ? [1] : []
            content {
              config_map_ref {
                name = "jupyter-additional-env"
              }
            }
          }
          dynamic "env_from" {
            for_each = var.stsenabled ? [] : [1]
            content {
              secret_ref {
                name = "digitalhub-common-creds"
              }
            }
          }
          dynamic "env_from" {
            for_each = var.stsenabled ? [1] : []
            content {
              secret_ref {
                name = "jupyter-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
              }
            }
          }
          port {
            container_port = 8888
            name           = "http"
            protocol       = "TCP"
          }
          resources {
            requests = {
              "cpu"    = "250m"
              "memory" = "512Mi"
            }
            limits = {
              "cpu"    = "${data.coder_parameter.cpu.value}"
              "memory" = "${data.coder_parameter.memory.value}Gi"
            }
          }
          volume_mount {
            mount_path = "/home/${data.coder_workspace_owner.me.name}"
            name       = "home"
            sub_path   = data.coder_workspace_owner.me.name
            read_only  = false
          }
          volume_mount {
            name       = "user"
            mount_path = "/etc/"
            sub_path   = "etc/"
          }
        }
        volume {
          name = "home"
          persistent_volume_claim {
            claim_name = kubernetes_persistent_volume_claim.home.metadata.0.name
            read_only  = false
          }
        }
        volume {
          name = "user"
          empty_dir {
            size_limit = "2Mi"
          }
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
