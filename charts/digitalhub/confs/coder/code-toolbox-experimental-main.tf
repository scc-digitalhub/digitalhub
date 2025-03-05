terraform {
  required_providers {
    coder = {
      source  = "coder/coder"
      version = "~> 2.2.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.36.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.5"
    }
  }
}

provider "coder" {
}

provider "http" {
}

locals {
  code_toolbox_url = "%{if var.https == true}https://%{else}http://%{endif}%{if var.service_type == "ClusterIP"}code-toolbox--code-toolbox--${data.coder_workspace.me.name}--${data.coder_workspace_owner.me.name}.${var.external_url}%{else}${var.external_url}:${var.node_port}%{endif}"
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
  default = "30040"
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

data "coder_parameter" "gpu" {
  name         = "gpu"
  display_name = "GPU"
  description  = "Enable GPU usage for this workspace?"
  default      = false
  mutable      = true
  option {
    name  = "Yes"
    value = true
  }
  option {
    name  = "No"
    value = false
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

data "coder_parameter" "image" {
  name         = "image"
  display_name = "Image"
  description  = "Select the image for this workspace"
  icon         = "https://cdn-icons-png.flaticon.com/512/438/438524.png"
  mutable      = true
  default      = "python"

  option {
    name  = "Python3"
    value = "python"
    icon = "/icon/python.svg"
  }
  option {
    name  = "CUDA"
    value = "nvcr.io/nvidia/cuda"
    icon = "https://static-00.iconduck.com/assets.00/file-type-cuda-icon-512x339-1bcw8fyl.png"
  }
  option {
    name  = "PyTorch"
    value = "nvcr.io/nvidia/pytorch"
    icon = "https://static-00.iconduck.com/assets.00/pytorch-icon-1694x2048-jgwjy3ne.png"
  }
  option {
    name  = "TensorFlow"
    value = "nvcr.io/nvidia/tensorflow"
    icon = "https://static-00.iconduck.com/assets.00/tensorflow-icon-1911x2048-1m2s54vn.png"
  }
}

data "coder_parameter" "python_version" {
  name         = "python_version"
  display_name = "Python Version"
  description  = "Select the Python version for this workspace"
  default      = "3.10"
  icon         = "/icon/python.svg"
  mutable      = true
  option {
    name  = "3.10"
    value = "3.10"
  }
  option {
    name  = "3.12"
    value = "3.12"
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

locals {
  core_access_token  = data.coder_workspace_owner.me.oidc_access_token != "" ? jsondecode(data.http.exchange_token[0].response_body)["access_token"] : null
  core_refresh_token = data.coder_workspace_owner.me.oidc_access_token != "" ? lookup(jsondecode(data.http.exchange_token[0].response_body),"refresh_token",null) : null

  # Image selection
  pytorch_tag = "%{ if data.coder_parameter.python_version.value == "3.10" }24.12-py3%{ else }%{ if data.coder_parameter.python_version.value == "3.12" }25.02-py3%{ endif }%{ endif }"
  tensorflow_tag = "%{ if data.coder_parameter.python_version.value == "3.10" }24.12-tf2-py3%{ else }%{ if data.coder_parameter.python_version.value == "3.12" }25.02-tf2-py3%{ endif }%{ endif }"
  final_image = "${data.coder_parameter.image.value}:%{ if data.coder_parameter.image.value == "python" }3%{ else }%{ if data.coder_parameter.image.value == "nvcr.io/nvidia/cuda" }12.8.0-cudnn-runtime-ubuntu22.04%{ else }%{ if data.coder_parameter.image.value == "nvcr.io/nvidia/pytorch"}${local.pytorch_tag}%{ else }%{ if data.coder_parameter.image.value == "nvcr.io/nvidia/tensorflow"}${local.tensorflow_tag}%{ endif }%{ endif }%{ endif }%{ endif }"
  testino = [{"effect": "NoSchedule", "key": "nvidia.com/gpu", "operator": "Equal", "value": "a100"},{"effect": "NoSchedule", "key": "nvidia.com/gpu", "operator": "Equal", "value": "a100"}]
  tolerations = jsondecode(data.kubernetes_config_map.workspace_config.data["tolerations.json"])
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

module "vscode-web" {
  count          = data.coder_workspace.me.start_count
  source         = "registry.coder.com/modules/vscode-web/coder"
  version        = "1.0.30"
  agent_id       = coder_agent.code_toolbox.id
  accept_license = true
  folder         = "/home/${data.coder_workspace_owner.me.name}"
  install_prefix = "/home/${data.coder_workspace_owner.me.name}/vscode-web"
}

module "personalize" {
  count    = data.coder_workspace.me.start_count
  source   = "registry.coder.com/modules/personalize/coder"
  version  = "1.0.2"
  agent_id = coder_agent.code_toolbox.id
  path     = "/scripts/run.sh"
  log_path = "/tmp/personalize.log"
}

module "jetbrains_gateway" {
  source         = "registry.coder.com/modules/jetbrains-gateway/coder"
  version        = "1.0.28"
  agent_id       = coder_agent.code_toolbox.id
  agent_name     = "code_toolbox"
  folder         = "/home/${data.coder_workspace_owner.me.name}"
  jetbrains_ides = ["CL", "GO", "IU", "PY", "WS"]
  default        = "PY"
  latest = true
}

resource "coder_agent" "code_toolbox" {
  os             = "linux"
  arch           = "amd64"
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
    vscode_insiders        = true
    web_terminal           = false
    port_forwarding_helper = true
    ssh_helper             = true
  }
}

resource "coder_metadata" "code_toolbox" {
  count       = data.coder_workspace.me.start_count
  resource_id = kubernetes_deployment.code-toolbox[0].id
  item {
    key   = "URL"
    value = local.code_toolbox_url
  }
}

resource "coder_app" "jupyter" {
  agent_id     = coder_agent.code_toolbox.id
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

data "kubernetes_config_map" "workspace_config" {
  metadata {
    name      = "code-toolbox-init"
    namespace = var.namespace
  }
}

resource "kubernetes_persistent_volume_claim" "home" {
  metadata {
    name      = "code-toolbox-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}-home"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "code-toolbox-pvc"
      "app.kubernetes.io/instance" = "code-toolbox-pvc-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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

resource "kubernetes_service" "code-toolbox-service" {
  metadata {
    name      = "code-toolbox-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "code-toolbox-workspace"
      "app.kubernetes.io/instance" = "code-toolbox-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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
      "app.kubernetes.io/name"     = "code-toolbox-workspace"
      "app.kubernetes.io/instance" = "code-toolbox-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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

resource "kubernetes_deployment" "code-toolbox" {
  count = data.coder_workspace.me.start_count
  depends_on = [
    kubernetes_persistent_volume_claim.home
  ]
  wait_for_rollout = false
  metadata {
    name      = "code-toolbox-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
    namespace = var.namespace
    labels = {
      "app.kubernetes.io/name"     = "code-toolbox-workspace"
      "app.kubernetes.io/instance" = "code-toolbox-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
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
        "app.kubernetes.io/name"     = "code-toolbox-workspace"
        "app.kubernetes.io/instance" = "code-toolbox-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
        "app.kubernetes.io/part-of"  = "coder"
        "app.kubernetes.io/type"     = "workspace"
      }
    }
    template {
      metadata {
        labels = {
          "app.kubernetes.io/name"     = "code-toolbox-workspace"
          "app.kubernetes.io/instance" = "code-toolbox-workspace-${lower(data.coder_workspace_owner.me.name)}-${lower(data.coder_workspace.me.name)}"
          "app.kubernetes.io/part-of"  = "coder"
          "app.kubernetes.io/type"     = "workspace"
        }
      }
      spec {
        dynamic "toleration" {
          for_each = data.coder_parameter.gpu.value != "false" ? local.tolerations : []
          content {
            key      = toleration.value["key"]
            operator = toleration.value["operator"]
            value    = toleration.value["value"]
            effect   = toleration.value["effect"]
          }
        }
        security_context {
          run_as_user  = "10000"
          fs_group     = "10000"
          run_as_group = "10000"
        }
        init_container {
          name              = "copy-users-file"
          image             = local.final_image
          image_pull_policy = "Always"
          command           = ["bash", "-c", "groupadd -g 10000 ${data.coder_workspace_owner.me.name} && useradd -m -u 10000 -g 10000 ${data.coder_workspace_owner.me.name} && cp /etc/passwd /etc/shadow /etc/group /etc/gshadow /etc-backup/ && cp -raTp /home/${data.coder_workspace_owner.me.name}/ /home/${data.coder_workspace_owner.me.name}-backup/"]
          volume_mount {
            mount_path = "/home/${data.coder_workspace_owner.me.name}-backup"
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
            allow_privilege_escalation = true
          }
        }
        container {
          name        = "code-toolbox"
          image       = local.final_image
          command     = ["sh", "-c", coder_agent.code_toolbox.init_script]
          working_dir = "/home/${data.coder_workspace_owner.me.name}"
          security_context {
            run_as_user                = "10000"
            allow_privilege_escalation = var.privileged
          }
          env {
            name  = "HOME"
            value = "/home/${data.coder_workspace_owner.me.name}"
          }
          env {
            name  = "CODER_AGENT_TOKEN"
            value = coder_agent.code_toolbox.token
          }
          env {
            name  = "DHCORE_ACCESS_TOKEN"
            value = local.core_access_token
          }
          env {
            name  = "DHCORE_REFRESH_TOKEN"
            value = local.core_refresh_token
          }
          env {
            name  = "PYTHON_VERSION"
            value = data.coder_parameter.python_version.value
          }
          env {
            name  = "JUPYTER_PORT"
            value = 8888
          }
          env {
            name  = "JUPYTER_LOG_PATH"
            value = "/tmp/jupyter.log"
          }
          env {
            name  = "SHELL"
            value = "/bin/bash"
          }
          env {
            name = "DHCORE_CLIENT_ID"
            value_from {
              secret_key_ref {
                name = var.core_auth_creds
                key  = "clientId"
              }
            }
          }
          env_from {
            secret_ref {
              name = "digitalhub-common-creds"
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
              "nvidia.com/gpu" = data.coder_parameter.gpu.value ? 1 : null
            }
            limits = {
              "cpu"    = "${data.coder_parameter.cpu.value}"
              "memory" = "${data.coder_parameter.memory.value}Gi"
              "nvidia.com/gpu" = data.coder_parameter.gpu.value ? 1 : null
            }
          }
          volume_mount {
            mount_path = "/home/${data.coder_workspace_owner.me.name}"
            name       = "home"
            sub_path   = data.coder_workspace_owner.me.name
            read_only  = false
          }
          volume_mount {
            name       = "init-packages"
            mount_path = "/scripts/run.sh"
            sub_path   = "run.sh"
            read_only  = false
          }
          volume_mount {
            mount_path = "/etc/passwd"
            name       = "user"
            sub_path   = "passwd"
            read_only  = true
          }
          volume_mount {
            mount_path = "/etc/shadow"
            name       = "user"
            sub_path   = "shadow"
            read_only  = true
          }
          volume_mount {
            mount_path = "/etc/group"
            name       = "user"
            sub_path   = "group"
            read_only  = true
          }
          volume_mount {
            mount_path = "/etc/gshadow"
            name       = "user"
            sub_path   = "gshadow"
            read_only  = true
          }
        }
        volume {
          name = "init-packages"
          config_map {
            name = "code-toolbox-init"
            default_mode = "0755"
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
