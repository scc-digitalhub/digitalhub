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
  digitalhub_dashboard = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}dashboard--${data.coder_workspace.me.name}--digitalhub-dashboard--${data.coder_workspace.me.owner}.${var.external_url}%{else}${var.external_url}:${var.node_port}%{endif}"
  mlrun_ui             = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}mlrun-ui--${data.coder_workspace.me.name}--digitalhub-dashboard--${data.coder_workspace.me.owner}.${var.external_url}%{else}${var.external_url}:30060%{endif}"
  mlrun_api            = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}mlrun-api--${data.coder_workspace.me.name}--digitalhub-dashboard--${data.coder_workspace.me.owner}.${var.external_url}%{else}${var.external_url}:30070%{endif}"
  minio                = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}minio.${var.external_url}%{else}${var.external_url}:30080%{endif}"
  nuclio_dashboard     = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}nuclio-ui--${data.coder_workspace.me.name}--digitalhub-dashboard--${data.coder_workspace.me.owner}.${var.external_url}%{else}${var.external_url}:30040%{endif}"
  kubeflow_ui          = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}kubeflow-ui--${data.coder_workspace.me.name}--digitalhub-dashboard--${data.coder_workspace.me.owner}.${var.external_url}%{else}${var.external_url}:30100%{endif}"
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

variable "https" {
  type    = bool
  default = false
}

variable "service_type" {
  type    = string
  default = "ClusterIP"
}

variable "external_url" {
  type = string
}

variable "node_port" {
  type    = string
  default = "30110"
}

provider "kubernetes" {
  # Authenticate via ~/.kube/config or a Coder-specific ServiceAccount, depending on admin preferences
  config_path = var.use_kubeconfig == true ? "~/.kube/config" : null
}

data "coder_workspace" "me" {}

resource "coder_agent" "dashboard" {
  os             = "linux"
  arch           = "amd64"
  startup_script = <<EOT
    echo "start nginx"
    nginx -e /dev/stdout -g "daemon off;"
  EOT
}

resource "coder_app" "dashboard" {
  agent_id     = coder_agent.dashboard.id
  slug         = "dashboard"
  display_name = "dashboard"
  icon         = "https://svgshare.com/i/u5R.svg"
  url          = "http://127.0.0.1:8080"
  subdomain    = true
  share        = "authenticated"
}

resource "coder_app" "mlrun-ui" {
  agent_id     = coder_agent.dashboard.id
  slug         = "mlrun-ui"
  display_name = "mlrun-ui"
  icon         = "https://docs.mlrun.org/en/stable/_static/favicon.ico"
  url          = "http://127.0.0.1:8081"
  subdomain    = true
  share        = "authenticated"
}

resource "coder_app" "mlrun-api" {
  agent_id     = coder_agent.dashboard.id
  slug         = "mlrun-api"
  display_name = "mlrun-api"
  icon         = "https://mymlops.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fmlrun.028176e3.png&w=3840&q=75"
  url          = "http://127.0.0.1:8082"
  subdomain    = true
  share        = "authenticated"
}

resource "coder_app" "nuclio-ui" {
  agent_id     = coder_agent.dashboard.id
  slug         = "nuclio-ui"
  display_name = "nuclio-ui"
  icon         = "https://nuclio.io/wp-content/uploads/fbrfg/favicon-16x16.png"
  url          = "http://127.0.0.1:8070"
  subdomain    = true
  share        = "authenticated"
}

resource "coder_app" "kubeflow-ui" {
  agent_id     = coder_agent.dashboard.id
  slug         = "kubeflow-ui"
  display_name = "kubeflow-ui"
  icon         = "https://www.kubeflow.org/favicons/favicon-16x16.png"
  url          = "http://127.0.0.1:8083"
  subdomain    = true
  share        = "authenticated"
}

resource "coder_metadata" "dashboard_url" {
  count       = data.coder_workspace.me.start_count
  resource_id = kubernetes_service.dashboard-service.id
  item {
    key   = "Dashboard URL"
    value = local.digitalhub_dashboard
  }
  item {
    key   = "MLRUN UI URL"
    value = local.mlrun_ui
  }
  item {
    key   = "MLRUN API URL"
    value = local.mlrun_api
  }
  item {
    key   = "Minio URL"
    value = local.minio
  }
  item {
    key   = "KubeFlow UI URL"
    value = local.kubeflow_ui
  }
  item {
    key   = "Nuclio UI URL"
    value = local.nuclio_dashboard
  }
}

resource "kubernetes_config_map" "components-json" {
  metadata {
    name      = "dashboard-components-json"
    namespace = var.namespace
  }
  data = {
    "components.json" = <<EOT
      [
        {
            "slug": "mlrun-ui",
            "name": "MLRun Dashboard",
            "description": "ML Run platform UI and API for the MLOps processes",
            "link": "${local.mlrun_ui}"
        },

        {
            "slug": "mlrun-api",
            "name": "MLRun API",
            "description": "ML Run platform UI and API for the MLOps processes",
            "port": 8082,
            "link": "${local.mlrun_api}"
        },
        {
            "slug": "minio",
            "name": "Minio",
            "description": "S3-compatible datalake",
            "link": "${local.minio}"
        },
        {
            "slug": "nuclio-dashboard",
            "name": "Nuclio Dashboard",
            "description": "Nuclio Dashboard",
            "link": "${local.nuclio_dashboard}"
        },
        {
            "slug": "kubeflow-ui",
            "name": "Kubeflow Dashboard",
            "description": "MLflow is an open source platform to manage the ML lifecycle, including experimentation, reproducibility, deployment, and a central model registry",
            "link": "${local.kubeflow_ui}"
        }
      ]
    EOT
  }
}

resource "kubernetes_config_map" "nginx-config" {
  metadata {
    name      = "nginx-config"
    namespace = var.namespace
  }
  data = {
    "nginx.conf" = <<EOF
      worker_processes 4;
      pid        /tmp/nginx.pid;
      events { worker_connections 1024; }
      http {
          proxy_temp_path /tmp/proxy_temp;
          client_body_temp_path /tmp/client_temp;
          fastcgi_temp_path /tmp/fastcgi_temp;
          uwsgi_temp_path /tmp/uwsgi_temp;
          scgi_temp_path /tmp/scgi_temp;
          server {
              access_log /dev/stdout;
              error_log /dev/stdout;
              listen 8080;
              root  /usr/share/nginx/html;
              include /etc/nginx/mime.types;

              location / {
                  try_files $uri /index.html;
                  # kill cache
                  add_header Last-Modified $date_gmt;
                  add_header Cache-Control 'no-store, no-cache, must-revalidate, proxy-revalidate, max-age=0';
                  if_modified_since off;
                  expires off;
                  etag off;
              }

          }
          server {
              access_log /dev/stdout;
              error_log /dev/stdout;
              listen 8070;

              location / {
                  proxy_pass http://nuclio-dashboard:8070;
              }
          }
          server {
              access_log /dev/stdout;
              error_log /dev/stdout;
              listen 8081;

              location / {
                  proxy_pass http://mlrun-ui:80;
              }
          }
          server {
              access_log /dev/stdout;
              error_log /dev/stdout;
              listen 8082;

              location / {
                  proxy_pass http://mlrun-api:8080;
              }
          }
          server {
              access_log /dev/stdout;
              error_log /dev/stdout;
              listen 8083;

              location / {
                  proxy_pass http://ml-pipeline-ui:80;
              }
          }
      }
    EOF
  }
}

resource "kubernetes_service" "dashboard-service" {
  metadata {
    name      = "dashboard-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "dashboard-workspace"
      "app.kubernetes.io/instance" = "dashboard-workspace-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
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
    selector = {
      "app.kubernetes.io/name"     = "dashboard-workspace"
      "app.kubernetes.io/instance" = "dashboard-workspace-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
      "app.kubernetes.io/part-of"  = "coder"
      "app.kubernetes.io/type"     = "workspace"
    }
    port {
      port        = 8080
      target_port = 8080
      node_port   = var.service_type == "ClusterIP" ? null : var.node_port
    }
    type = var.service_type
  }
}

resource "kubernetes_deployment" "dashboard" {
  count = data.coder_workspace.me.start_count
  depends_on = [
    kubernetes_config_map.nginx-config,
    kubernetes_config_map.components-json
  ]
  wait_for_rollout = false
  metadata {
    name      = "coder-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "dashboard-workspace"
      "app.kubernetes.io/instance" = "dashboard-workspace-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
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
    selector {
      match_labels = {
        "app.kubernetes.io/name"     = "dashboard-workspace"
        "app.kubernetes.io/instance" = "dashboard-workspace-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
        "app.kubernetes.io/part-of"  = "coder"
        "app.kubernetes.io/type"     = "workspace"
      }
    }
    template {
      metadata {
        labels = {
          "app.kubernetes.io/name"     = "dashboard-workspace"
          "app.kubernetes.io/instance" = "dashboard-workspace-${lower(data.coder_workspace.me.owner)}-${lower(data.coder_workspace.me.name)}"
          "app.kubernetes.io/part-of"  = "coder"
          "app.kubernetes.io/type"     = "workspace"
        }
      }
      spec {
        security_context {
          run_as_user = 65532
          fs_group    = 65532
        }
        container {
          name              = "dashboard"
          image             = "smartcommunitylab/digitalhub-dashboard:with-coder-agent-v2.0.0"
          image_pull_policy = "IfNotPresent"
          command           = ["/bin/dash", "-c", "exec /bin/coder agent"]
          security_context {
            run_as_user = "65532"
          }
          env {
            name  = "CODER_AGENT_URL"
            value = "http://coder"
          }
          env {
            name  = "CODER_AGENT_AUTH"
            value = "token"
          }
          env {
            name  = "CODER_AGENT_TOKEN"
            value = coder_agent.dashboard.token
          }
          resources {
            requests = {
              "cpu"    = "250m"
              "memory" = "512Mi"
            }
            limits = {
              "cpu"    = "1000m"
              "memory" = "1024Gi"
            }
          }
          volume_mount {
            name       = "dashboard-components-json"
            mount_path = "/usr/share/nginx/html/components.json"
            sub_path   = "components.json"
          }
          volume_mount {
            name       = "nginx-config"
            mount_path = "/etc/nginx/nginx.conf"
            sub_path   = "nginx.conf"
          }
        }
        volume {
          name = "dashboard-components-json"
          config_map {
            name = "dashboard-components-json"
            items {
              key  = "components.json"
              path = "components.json"
            }
          }
        }
        volume {
          name = "nginx-config"
          config_map {
            name = "nginx-config"
            items {
              key  = "nginx.conf"
              path = "nginx.conf"
            }
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
