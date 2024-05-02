terraform {
  required_providers {
    coder = {
      source  = "coder/coder"
      version = "~> 0.11.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.22"
    }
  }
}

provider "coder" {
}

locals {
  jupyter_url = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}jupyter--jupyter--${data.coder_workspace.me.name}--${data.coder_workspace.me.owner}.${var.external_url}%{else}${var.external_url}:${var.node_port}%{endif}"
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

variable "db_name" {
  description = "Provide the db name"
  type        = string
  default     = "digitalhub"
}

variable "db_secret" {
  description = "Provide the db secret name with username and password"
  type        = string
  default     = "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
}

variable "minio_secret" {
  description = "Provides the secret credentials for minio"
  type        = string
  default     = "minio"
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
  type    = string
}

variable "https" {
  type    = bool
  default = false
}

variable "external_url" {
  type = string
}

data "coder_parameter" "cpu" {
  name         = "cpu"
  display_name = "CPU"
  description  = "The number of CPU cores"
  default      = "2"
  icon         = "/icon/memory.svg"
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

provider "kubernetes" {
  # Authenticate via ~/.kube/config or a Coder-specific ServiceAccount, depending on admin preferences
  config_path = var.use_kubeconfig == true ? "~/.kube/config" : null
}

data "coder_workspace" "me" {}

resource "coder_agent" "jupyter" {
  os                     = "linux"
  arch                   = "amd64"
  startup_script_timeout = 180
  startup_script         = <<-EOT
    set -e
    jupyter lab --ServerApp.ip=0.0.0.0 --ServerApp.port=8888 --ServerApp.token="" --ServerApp.password=""
  EOT
  display_apps {
    vscode                 = false
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
  resource_id = kubernetes_service.jupyter-service.id
  item {
    key   = "URL"
    value = local.jupyter_url
  }
}

resource "kubernetes_persistent_volume_claim" "home" {
  metadata {
    name      = "jupyter-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}-home"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "jupyter-pvc"
      "app.kubernetes.io/instance" = "jupyter-pvc-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      "app.kubernetes.io/type"     = "pvc"
      // Coder specific labels.
      "com.coder.resource"       = "true"
      "com.coder.workspace.id"   = data.coder_workspace.me.id
      "com.coder.workspace.name" = data.coder_workspace.me.name
      "com.coder.user.id"        = data.coder_workspace.me.owner_id
      "com.coder.user.username"  = data.coder_workspace.me.owner
    }
    annotations = {
      "com.coder.user.email" = data.coder_workspace.me.owner_email
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
    name      = "jupyter-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "jupyter-workspace"
      "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      "app.kubernetes.io/type"     = "service"
      // Coder specific labels.
      "com.coder.resource"       = "true"
      "com.coder.workspace.id"   = data.coder_workspace.me.id
      "com.coder.workspace.name" = data.coder_workspace.me.name
      "com.coder.user.id"        = data.coder_workspace.me.owner_id
      "com.coder.user.username"  = data.coder_workspace.me.owner
    }
    annotations = {
      "com.coder.user.email" = data.coder_workspace.me.owner_email
    }
  }
  spec {
    selector = {
      "app.kubernetes.io/name"     = "jupyter-workspace"
      "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
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

resource "kubernetes_deployment" "jupyter" {
  count = data.coder_workspace.me.start_count
  depends_on = [
    kubernetes_persistent_volume_claim.home
  ]
  wait_for_rollout = false
  metadata {
    name      = "jupyter-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "jupyter-workspace"
      "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      "app.kubernetes.io/type"     = "workspace"
      // Coder specific labels.
      "com.coder.resource"       = "true"
      "com.coder.workspace.id"   = data.coder_workspace.me.id
      "com.coder.workspace.name" = data.coder_workspace.me.name
      "com.coder.user.id"        = data.coder_workspace.me.owner_id
      "com.coder.user.username"  = data.coder_workspace.me.owner
    }
    annotations = {
      "com.coder.user.email" = data.coder_workspace.me.owner_email
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
        "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
        "app.kubernetes.io/part-of"  = "coder"
        "app.kubernetes.io/type"     = "workspace"
      }
    }
    template {
      metadata {
        labels = {
          "app.kubernetes.io/name"     = "jupyter-workspace"
          "app.kubernetes.io/instance" = "jupyter-workspace-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
          "app.kubernetes.io/part-of"  = "coder"
          "app.kubernetes.io/type"     = "workspace"
        }
      }
      spec {
        security_context {
          run_as_user  = "1000"
          fs_group     = "100"
          run_as_group = "100"
        }
        init_container {
          name              = "init-chown-data"
          image             = "busybox:1.35"
          image_pull_policy = "Always"
          command           = ["chown", "-R", "1000:100", "/home/jovyan/work"]
          volume_mount {
            mount_path = "/home/jovyan/work"
            name       = "home"
            read_only  = false
          }
          security_context {
            run_as_user                = "0"
            allow_privilege_escalation = false
          }
        }
        container {
          name    = "jupyter"
          image   = var.image
          command = ["sh", "-c", coder_agent.jupyter.init_script]
          security_context {
            run_as_user                = "1000"
            allow_privilege_escalation = false
          }
          env {
            name  = "CODER_AGENT_TOKEN"
            value = coder_agent.jupyter.token
          }
          env {
            name  = "V3IO_USERNAME"
            value = data.coder_workspace.me.owner
          }
          env {
            name  = "MLRUN_DBPATH"
            value = "http://mlrun-api:8080"
          }
          env {
            name  = "MLRUN_NAMESPACE"
            value = var.namespace
          }
          env {
            name  = "DIGITALHUB_CORE_TOKEN"
            value = data.coder_workspace.me.owner_oidc_access_token
          }
          env {
            name = "POSTGRES_USER"
            value_from {
              secret_key_ref {
                name = var.db_secret
                key  = "username"
              }
            }
          }
          env {
            name = "POSTGRES_PASSWORD"
            value_from {
              secret_key_ref {
                name = var.db_secret
                key  = "password"
              }
            }
          }
          env_from {
            config_map_ref {
              name = "mlrun-common-env"
            }
          }
          env_from {
            config_map_ref {
              name = "digitalhub-common-env"
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
            mount_path = "/home/jovyan/work"
            name       = "home"
            read_only  = false
          }
        }
        volume {
          name = "home"
          persistent_volume_claim {
            claim_name = kubernetes_persistent_volume_claim.home.metadata.0.name
            read_only  = false
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
