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
  }
}

provider "coder" {
}

locals {
  grafana_url = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}grafana--grafana--${data.coder_workspace.me.name}--${data.coder_workspace_owner.me.name}.${var.external_url}%{else}${var.external_url}:${var.node_port}%{endif}"
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
  default = "30130"
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

variable "extra_vars" {
  type    = bool
  default = false
}

provider "kubernetes" {
  # Authenticate via ~/.kube/config or a Coder-specific ServiceAccount, depending on admin preferences
  #config_path = var.use_kubeconfig == true ? "~/.kube/config" : null
}

data "coder_workspace" "me" {}

data "coder_workspace_owner" "me" {}

resource "coder_agent" "grafana" {
  os             = "linux"
  arch           = "amd64"
  startup_script = <<-EOT
    set -e
    /run.sh 2>&1
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

# grafana
resource "coder_app" "grafana" {
  agent_id     = coder_agent.grafana.id
  slug         = "grafana"
  display_name = "grafana"
  icon         = "https://cdn.iconscout.com/icon/free/png-256/free-grafana-logo-icon-download-in-svg-png-gif-file-formats--technology-social-media-company-vol-3-pack-logos-icons-3030088.png?f=webp"
  url          = "http://localhost:3000"
  subdomain    = true
  share        = "authenticated"

  healthcheck {
    url       = "http://localhost:3000/api/health"
    interval  = 5
    threshold = 10
  }
}

resource "coder_metadata" "grafana" {
  count       = data.coder_workspace.me.start_count
  resource_id = kubernetes_deployment.grafana[0].id
  item {
    key   = "URL"
    value = local.grafana_url
  }
}

resource "kubernetes_persistent_volume_claim" "database" {
  metadata {
    name      = "grafana-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}-database"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "grafana-pvc"
      "app.kubernetes.io/instance" = "grafana-pvc-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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
        storage = "1Gi"
      }
    }
  }
}

resource "kubernetes_service" "grafana-service" {
  metadata {
    name      = "grafana-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "grafana-workspace"
      "app.kubernetes.io/instance" = "grafana-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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
      "app.kubernetes.io/name"     = "grafana-workspace"
      "app.kubernetes.io/instance" = "grafana-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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

resource "kubernetes_deployment" "grafana" {
  count            = data.coder_workspace.me.start_count
  wait_for_rollout = false
  metadata {
    name      = "grafana-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "grafana-workspace"
      "app.kubernetes.io/instance" = "grafana-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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
        "app.kubernetes.io/name"     = "grafana-workspace"
        "app.kubernetes.io/instance" = "grafana-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
        "app.kubernetes.io/part-of"  = "coder"
        "app.kubernetes.io/type"     = "workspace"
      }
    }
    template {
      metadata {
        labels = {
          "app.kubernetes.io/name"     = "grafana-workspace"
          "app.kubernetes.io/instance" = "grafana-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
          "app.kubernetes.io/part-of"  = "coder"
          "app.kubernetes.io/type"     = "workspace"
        }
      }
      spec {
        security_context {
          run_as_user = "472"
          fs_group = "472"
          run_as_non_root = true
          seccomp_profile {
            type = "RuntimeDefault"
          }
        }
        container {
          name              = "grafana"
          image             = var.image
          image_pull_policy = "Always"
          command           = ["/bin/sh", "-c", coder_agent.grafana.init_script]
          security_context {
            run_as_user                = "472"
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
            value = coder_agent.grafana.token
          }
          env {
            name  = "GF_AUTH_ANONYMOUS_ENABLED"
            value = "true"
          }
          env {
            name  = "GF_AUTH_ANONYMOUS_ORG_ROLE"
            value = "Admin"
          }
          env {
            name  = "GF_INSTALL_PLUGINS"
            value = "https://github.com/scc-digitalhub/grafana-dremio-datasource-plugin/raw/master/releases/digital-hub-dremio-1.1.1.zip;digital-hub-dremio"
          }
          env {
            name  = "GF_PLUGINS_ALLOW_LOADING_UNSIGNED_PLUGINS"
            value = "digital-hub-dremio"
          }
          dynamic "env_from" {
            for_each = var.extra_vars ? [1] : []
            content {
              config_map_ref {
                name = "grafana-additional-env"
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
            mount_path = "/var/lib/grafana"
            name       = "database"
            sub_path   = "grafana"
            read_only  = false
          }
        }
        volume {
          name = "database"
          persistent_volume_claim {
            claim_name = kubernetes_persistent_volume_claim.database.metadata.0.name
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
