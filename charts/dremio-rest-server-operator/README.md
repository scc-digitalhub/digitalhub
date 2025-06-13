# dremio-rest-server-operator

![Version: 0.1.6](https://img.shields.io/badge/Version-0.1.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.3](https://img.shields.io/badge/AppVersion-1.0.3-informational?style=flat-square)

A Helm chart for Kubernetes

**Homepage:** <https://github.com/scc-digitalhub/digitalhub/tree/main/charts/dremio-rest-server-operator>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ffais |  | <https://github.com/ffais> |
| calcagiara |  | <https://github.com/Calcagiara> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"kubernetes.io/arch"` |  |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"amd64"` |  |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[1] | string | `"arm64"` |  |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[2] | string | `"ppc64le"` |  |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[3] | string | `"s390x"` |  |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[1].key | string | `"kubernetes.io/os"` |  |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[1].operator | string | `"In"` |  |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[1].values[0] | string | `"linux"` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| conf.drsImage | string | `"ghcr.io/scc-digitalhub/dremio-rest-server"` |  |
| conf.drsImageTag | string | `"0.0.9"` |  |
| conf.drsServiceType | string | `"ClusterIP"` |  |
| deployment.image.pullPolicy | string | `"IfNotPresent"` |  |
| deployment.kubeRbacProxy.args[0] | string | `"--secure-listen-address=0.0.0.0:8443"` |  |
| deployment.kubeRbacProxy.args[1] | string | `"--upstream=http://127.0.0.1:8080/"` |  |
| deployment.kubeRbacProxy.args[2] | string | `"--logtostderr=true"` |  |
| deployment.kubeRbacProxy.args[3] | string | `"--v=0"` |  |
| deployment.kubeRbacProxy.image.repository | string | `"gcr.io/kubebuilder/kube-rbac-proxy"` |  |
| deployment.kubeRbacProxy.image.tag | string | `"v0.13.1"` |  |
| deployment.kubeRbacProxy.name | string | `"kube-rbac-proxy"` |  |
| deployment.kubeRbacProxy.ports.containerPort | int | `8443` |  |
| deployment.kubeRbacProxy.resources.limits.cpu | string | `"500m"` |  |
| deployment.kubeRbacProxy.resources.limits.memory | string | `"128Mi"` |  |
| deployment.kubeRbacProxy.resources.requests.cpu | string | `"5m"` |  |
| deployment.kubeRbacProxy.resources.requests.memory | string | `"64Mi"` |  |
| deployment.kubeRbacProxy.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| deployment.kubeRbacProxy.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| deployment.kubeRbacProxy.securityContext.runAsNonRoot | bool | `true` |  |
| deployment.kubeRbacProxy.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| deployment.manager.args[0] | string | `"--health-probe-bind-address=:8081"` |  |
| deployment.manager.args[1] | string | `"--metrics-bind-address=127.0.0.1:8080"` |  |
| deployment.manager.args[2] | string | `"--leader-elect"` |  |
| deployment.manager.command[0] | string | `"/manager"` |  |
| deployment.manager.image.repository | string | `"ghcr.io/scc-digitalhub/dremio-rest-server-operator"` |  |
| deployment.manager.image.tag | string | `""` |  |
| deployment.manager.name | string | `"manager"` |  |
| deployment.manager.resources.limits.cpu | string | `"500m"` |  |
| deployment.manager.resources.limits.memory | string | `"128Mi"` |  |
| deployment.manager.resources.requests.cpu | string | `"10m"` |  |
| deployment.manager.resources.requests.memory | string | `"64Mi"` |  |
| deployment.manager.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| deployment.manager.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| deployment.manager.securityContext.runAsNonRoot | bool | `true` |  |
| deployment.manager.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| namespaceValues.namespace | string | `""` |  |
| namespaceValues.namespaced | bool | `true` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations."kubectl.kubernetes.io/default-container" | string | `"manager"` |  |
| podLabels.control-plane | string | `"controller-manager"` |  |
| podSecurityContext.runAsNonRoot | bool | `true` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| service.port | int | `8443` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"dremio-rest-server-operator-controller-manager"` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |

