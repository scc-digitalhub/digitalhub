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
  sqlpad_url = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}sqlpad--sqlpad--${data.coder_workspace.me.name}--${data.coder_workspace_owner.me.name}.${var.external_url}%{else}${var.external_url}:${var.node_port}%{endif}"
}

variable "namespace" {
  type        = string
  description = "The Kubernetes namespace to create workspaces in (must exist prior to creating workspaces)"
  default     = "mlrun"
}

variable "db_host" {
  description = "Provide the db host"
  type        = string
  default     = "database-postgres-cluster"
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

variable "service_type" {
  type    = string
  default = "ClusterIP"
}

variable "node_port" {
  type    = string
  default = "30140"
}

variable "image" {
  type = string
}

variable "https" {
  type    = bool
  default = false
}

variable "external_url" {
  type = string
}

provider "kubernetes" {
  # Authenticate via ~/.kube/config or a Coder-specific ServiceAccount, depending on admin preferences
  #config_path = var.use_kubeconfig == true ? "~/.kube/config" : null
}

data "coder_workspace" "me" {}

data "coder_workspace_owner" "me" {}

resource "coder_agent" "sqlpad" {
  os             = "linux"
  arch           = "amd64"
  startup_script = <<-EOT
    set -e
    node /usr/app/server.js 2>&1
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
    port_forwarding_helper = false
    ssh_helper             = false
  }
}

resource "coder_metadata" "sqlpad" {
  count       = data.coder_workspace.me.start_count
  resource_id = kubernetes_deployment.sqlpad[0].id
  item {
    key   = "URL"
    value = local.sqlpad_url
  }
}

resource "coder_app" "sqlpad" {
  agent_id     = coder_agent.sqlpad.id
  slug         = "sqlpad"
  display_name = "sqlpad"
  icon         = "https://i.ibb.co/TrBDsZM/sqlpad.png"
  url          = "http://localhost:3000"
  subdomain    = true
  share        = "owner"

  healthcheck {
    url       = "http://localhost:3000"
    interval  = 5
    threshold = 10
  }
}

resource "kubernetes_service" "sqlpad-service" {
  metadata {
    name      = "sqlpad-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "sqlpad-workspace"
      "app.kubernetes.io/instance" = "sqlpad-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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
      "app.kubernetes.io/name"     = "sqlpad-workspace"
      "app.kubernetes.io/instance" = "sqlpad-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      "app.kubernetes.io/type"     = "workspace"
    }
    port {
      port        = 3000
      target_port = 3000
      node_port   = var.service_type == "ClusterIP" ? null : var.node_port
    }
    type = var.service_type
  }
}

resource "kubernetes_deployment" "sqlpad" {
  count            = data.coder_workspace.me.start_count
  wait_for_rollout = false
  metadata {
    name      = "sqlpad-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "sqlpad-workspace"
      "app.kubernetes.io/instance" = "sqlpad-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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
    selector {
      match_labels = {
        "app.kubernetes.io/name"     = "sqlpad-workspace"
        "app.kubernetes.io/instance" = "sqlpad-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
        "app.kubernetes.io/part-of"  = "coder"
        "app.kubernetes.io/type"     = "workspace"
      }
    }
    template {
      metadata {
        labels = {
          "app.kubernetes.io/name"     = "sqlpad-workspace"
          "app.kubernetes.io/instance" = "sqlpad-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
          "app.kubernetes.io/part-of"  = "coder"
          "app.kubernetes.io/type"     = "workspace"
        }
      }
      spec {
        security_context {
          run_as_user = "1000"
          fs_group    = "1000"
        }
        container {
          name              = "sqlpad"
          image             = var.image
          image_pull_policy = "IfNotPresent"
          command           = ["sh", "-c", coder_agent.sqlpad.init_script]
          security_context {
            run_as_user                = "1000"
            allow_privilege_escalation = false
          }
          env {
            name  = "CODER_AGENT_TOKEN"
            value = coder_agent.sqlpad.token
          }
          env {
            name  = "SQLPAD_AUTH_DISABLED"
            value = "true"
          }
          env {
            name  = "SQLPAD_AUTH_DISABLED_DEFAULT_ROLE"
            value = "admin"
          }
          env {
            name  = "SQLPAD_CONNECTIONS__pg__driver"
            value = "postgres"
          }
          env {
            name  = "SQLPAD_CONNECTIONS__pg__name"
            value = var.db_name
          }
          env {
            name  = "SQLPAD_CONNECTIONS__pg__database"
            value = var.db_name
          }
          env {
            name  = "SQLPAD_CONNECTIONS__pg__host"
            value = var.db_host
          }
          env {
            name  = "SQLPAD_CONNECTIONS__pg__multiStatementTransactionEnabled"
            value = "true"
          }
          env {
            name  = "SQLPAD_CONNECTIONS__pg__postgresSsl"
            value = "true"
          }
          env {
            name  = "SQLPAD_CONNECTIONS__pg__postgresSslSelfSigned"
            value = "true"
          }
          env {
            name = "SQLPAD_CONNECTIONS__pg__password"
            value_from {
              secret_key_ref {
                name = var.db_secret
                key  = "password"
              }
            }
          }
          env {
            name = "SQLPAD_CONNECTIONS__pg__username"
            value_from {
              secret_key_ref {
                name = var.db_secret
                key  = "username"
              }
            }
          }
          resources {
            requests = {
              "cpu"    = "250m"
              "memory" = "512Mi"
            }
            limits = {
              "cpu"    = "1000m"
              "memory" = "2Gi"
            }
          }
          volume_mount {
            mount_path = "/var/lib/sqlpad"
            name       = "home"
            read_only  = false
          }
        }
        volume {
          name = "home"
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
