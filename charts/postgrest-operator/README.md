<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# postgrest-operator

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/postgrest-operator/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=postgrest-operator*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.1.8](https://img.shields.io/badge/Version-0.1.8-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.0.5](https://img.shields.io/badge/AppVersion-2.0.5-informational?style=flat-square)

A Kubernetes operator to start instances of PostgREST.

postgrest-operator is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities. To bootstrap the platform in its entirety please explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

## Quick start

### Prerequisites
- [Helm](https://helm.sh/docs/intro/install/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
- [Minikube](https://minikube.sigs.k8s.io/docs/start/)

1. Start minikube (change 192.168.49.0 if your network setup is different):
```sh
    minikube start --insecure-registry "192.168.49.0/24" --memory 8192 --cpus 4
```
2. Get minikube external IP:
```sh
    minikube ip
```
4. Add Digitalhub repository:
```sh
helm repo add digitalhub https://scc-digitalhub.github.io/digitalhub/
```
5. Install postgrest-operator with Helm:
```sh
    helm upgrade postgrest-operator digitalhub/postgrest-operator -n postgrest-operator --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace postgrest-operator get pods
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{"nodeAffinity":{"requiredDuringSchedulingIgnoredDuringExecution":{"nodeSelectorTerms":[{"matchExpressions":[{"key":"kubernetes.io/arch","operator":"In","values":["amd64"]},{"key":"kubernetes.io/os","operator":"In","values":["linux"]}]}]}}}` | Affinity for pod assignment. # Ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#affinity-and-anti-affinity |
| affinity.nodeAffinity | object | `{"requiredDuringSchedulingIgnoredDuringExecution":{"nodeSelectorTerms":[{"matchExpressions":[{"key":"kubernetes.io/arch","operator":"In","values":["amd64"]},{"key":"kubernetes.io/os","operator":"In","values":["linux"]}]}]}}` | Constrain which nodes your Pod can be scheduled on based on node labels. |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution | object | `{"nodeSelectorTerms":[{"matchExpressions":[{"key":"kubernetes.io/arch","operator":"In","values":["amd64"]},{"key":"kubernetes.io/os","operator":"In","values":["linux"]}]}]}` | The scheduler can't schedule the Pod unless the rule is met. This functions like nodeSelector, but with a more expressive syntax. |
| affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms | list | `[{"matchExpressions":[{"key":"kubernetes.io/arch","operator":"In","values":["amd64"]},{"key":"kubernetes.io/os","operator":"In","values":["linux"]}]}]` | Kubernetes only schedules the Pod onto nodes that have each of the labels you specify. |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Adjusts the number of replicas in a workload to match observed resource utilization such as CPU or memory usage. |
| autoscaling.enabled | bool | `false` | Enable horizontal scaling |
| autoscaling.maxReplicas | int | `100` | Set max replicas for autoscaling |
| autoscaling.minReplicas | int | `1` | Set min replicas for autoscaling |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | Set CPU utilization percentage that trigger the autoscaling  |
| deployment | object | `{"image":{"pullPolicy":"IfNotPresent"},"kubeRbacProxy":{"args":["--secure-listen-address=0.0.0.0:8443","--upstream=http://127.0.0.1:8080/","--logtostderr=true","--v=0"],"image":{"repository":"gcr.io/kubebuilder/kube-rbac-proxy","tag":"v0.13.1"},"name":"kube-rbac-proxy","ports":{"containerPort":8443},"resources":{"limits":{"cpu":"500m","memory":"128Mi"},"requests":{"cpu":"5m","memory":"64Mi"}},"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}},"manager":{"args":["--health-probe-bind-address=:8081","--metrics-bind-address=127.0.0.1:8080","--leader-elect"],"command":["/manager"],"image":{"repository":"ghcr.io/scc-digitalhub/postgrest-operator","tag":""},"name":"manager","resources":{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"64Mi"}},"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}},"podSecurityContext":{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"replicaCount":1}` | Set containers properties |
| deployment.image | object | `{"pullPolicy":"IfNotPresent"}` | Pod image configuration |
| deployment.image.pullPolicy | string | `"IfNotPresent"` | Pod image pullPolicy applied to all containers |
| deployment.kubeRbacProxy | object | `{"args":["--secure-listen-address=0.0.0.0:8443","--upstream=http://127.0.0.1:8080/","--logtostderr=true","--v=0"],"image":{"repository":"gcr.io/kubebuilder/kube-rbac-proxy","tag":"v0.13.1"},"name":"kube-rbac-proxy","ports":{"containerPort":8443},"resources":{"limits":{"cpu":"500m","memory":"128Mi"},"requests":{"cpu":"5m","memory":"64Mi"}},"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}}` | DEPRECATED Kube-rbac-proxy secures /metrics endpoint as a manager sidecar, using the service account token mounted into the Pod by default corrects this problem. |
| deployment.kubeRbacProxy.args | list | `["--secure-listen-address=0.0.0.0:8443","--upstream=http://127.0.0.1:8080/","--logtostderr=true","--v=0"]` | DEPRECATED kube-rbac-proxy configure additional arguments to pass to kube-rbac-proxy sidecar container. |
| deployment.kubeRbacProxy.image | object | `{"repository":"gcr.io/kubebuilder/kube-rbac-proxy","tag":"v0.13.1"}` | DEPRECATED kube-rbac-proxy container image configuration. |
| deployment.kubeRbacProxy.image.repository | string | `"gcr.io/kubebuilder/kube-rbac-proxy"` | DEPRECATED kube-rbac-proxy container image repository. |
| deployment.kubeRbacProxy.image.tag | string | `"v0.13.1"` | DEPRECATED kube-rbac-proxy container image tag. |
| deployment.kubeRbacProxy.name | string | `"kube-rbac-proxy"` | DEPRECATED kube-rbac-proxy container name. |
| deployment.kubeRbacProxy.ports | object | `{"containerPort":8443}` | DEPRECATED kube-rbac-proxy container port. |
| deployment.kubeRbacProxy.ports.containerPort | int | `8443` | DEPRECATED kube-rbac-proxy container port. |
| deployment.kubeRbacProxy.resources | object | `{"limits":{"cpu":"500m","memory":"128Mi"},"requests":{"cpu":"5m","memory":"64Mi"}}` | DEPRECATED kube-rbac-proxy container resource requests and limits. |
| deployment.kubeRbacProxy.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | DEPRECATED kube-rbac-proxy [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/) |
| deployment.kubeRbacProxy.securityContext.allowPrivilegeEscalation | bool | `false` | DEPRECATED kube-rbac-proxy container allow privilege escalation. |
| deployment.kubeRbacProxy.securityContext.capabilities | object | `{"drop":["ALL"]}` | DEPRECATED kube-rbac-proxy container configure capabilities. |
| deployment.kubeRbacProxy.securityContext.capabilities.drop | list | `["ALL"]` | DEPRECATED kube-rbac-proxy container drop capabilities. |
| deployment.kubeRbacProxy.securityContext.readOnlyRootFilesystem | bool | `true` | DEPRECATED kube-rbac-proxy container read only filesystem |
| deployment.kubeRbacProxy.securityContext.runAsNonRoot | bool | `true` |  |
| deployment.kubeRbacProxy.securityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | DEPRECATED kube-rbac-proxy container configure seccompProfile. |
| deployment.kubeRbacProxy.securityContext.seccompProfile.type | string | `"RuntimeDefault"` | DEPRECATED kube-rbac-proxy container configure seccompProfile type. |
| deployment.manager | object | `{"args":["--health-probe-bind-address=:8081","--metrics-bind-address=127.0.0.1:8080","--leader-elect"],"command":["/manager"],"image":{"repository":"ghcr.io/scc-digitalhub/postgrest-operator","tag":""},"name":"manager","resources":{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"64Mi"}},"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}}` | Manager container is responsible to reconcile minio-operator CR. |
| deployment.manager.args | list | `["--health-probe-bind-address=:8081","--metrics-bind-address=127.0.0.1:8080","--leader-elect"]` | Manager configure additional arguments |
| deployment.manager.command | list | `["/manager"]` | Ovveride image entrypoint |
| deployment.manager.image | object | `{"repository":"ghcr.io/scc-digitalhub/postgrest-operator","tag":""}` | Manager container image configuration. |
| deployment.manager.image.repository | string | `"ghcr.io/scc-digitalhub/postgrest-operator"` | Manager container image repository. |
| deployment.manager.image.tag | string | `""` | Manager container image tag. |
| deployment.manager.name | string | `"manager"` | Manager container name. |
| deployment.manager.resources | object | `{"limits":{"cpu":"500m","memory":"512Mi"},"requests":{"cpu":"10m","memory":"64Mi"}}` | Manager container resource requests and limits. |
| deployment.manager.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | Manager [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/) |
| deployment.manager.securityContext.allowPrivilegeEscalation | bool | `false` | Manager container allow privilege escalation |
| deployment.manager.securityContext.capabilities | object | `{"drop":["ALL"]}` | Manager container configure capabilities. |
| deployment.manager.securityContext.capabilities.drop | list | `["ALL"]` | Manager container drop capabilities. |
| deployment.manager.securityContext.runAsNonRoot | bool | `true` | Manager container allow run as root. |
| deployment.manager.securityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | Manager container configure seccompProfile. |
| deployment.manager.securityContext.seccompProfile.type | string | `"RuntimeDefault"` | Manager container configure seccompProfile. |
| deployment.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | [Security context for pod](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/) |
| deployment.podSecurityContext.runAsNonRoot | bool | `true` | Pod allow run as root. |
| deployment.podSecurityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | Pod configure seccompProfile. |
| deployment.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` | Pod configure seccompProfile type. |
| deployment.replicaCount | int | `1` | Desired number of pods. |
| fullnameOverride | string | `""` | String to fully override `postgrest-operator.fullname` template. |
| imagePullSecrets | list | `[]` | Image pull secrets  Optionally specify an array of imagePullSecrets.  Secrets must be manually created in the namespace.  ref: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/ |
| nameOverride | string | `""` | String to partially override `postgrest-operator.fullname` template (will maintain the release name) |
| namespaceValues | object | `{"namespace":"","namespaced":true}` | Configure operator scope clusterwide or namespaced. |
| namespaceValues.namespace | string | `""` | Namespace name where operator watch for CR. |
| namespaceValues.namespaced | bool | `true` | Enable/Disable Cluster wide mode. |
| nodeSelector | object | `{}` | Node labels for pod assignment. Ref: https://kubernetes.io/docs/user-guide/node-selection/. |
| podAnnotations | object | `{"kubectl.kubernetes.io/default-container":"manager"}` | Annotations to add to each pod. |
| podLabels | object | `{"control-plane":"controller-manager"}` | Labels to add to each pod. |
| postgres | object | `{"default_database":"postgres","host":"localhost","port":5432,"postgrest_image":"postgrest/postgrest","postgrest_image_tag":"v11.1.0","postgrest_service_type":"ClusterIP","uri_args":"sslmode=disable"}` | Postgres instance configuration |
| postgres.default_database | string | `"postgres"` | Default postgres database name |
| postgres.host | string | `"localhost"` | Postgres server host |
| postgres.port | int | `5432` | Postgres server port |
| postgres.postgrest_image | string | `"postgrest/postgrest"` | Postgrest image url |
| postgres.postgrest_image_tag | string | `"v11.1.0"` | Postgrest image tag |
| postgres.postgrest_service_type | string | `"ClusterIP"` | Postgrest service type |
| postgres.uri_args | string | `"sslmode=disable"` | Postgrest additional arguments |
| postgresCreds | object | `{"password":"password","username":"username"}` | Postgres root credentials |
| postgresCreds.password | string | `"password"` | Postgres root password |
| postgresCreds.username | string | `"username"` | Postgres root password |
| postgresCredsExistingSecrets | object | `{"password":{"secretKey":"","secretName":""},"username":{"secretKey":"","secretName":""}}` | Use existing secret for postgres server credentials |
| postgresCredsExistingSecrets.password.secretKey | string | `""` | Password secret key |
| postgresCredsExistingSecrets.password.secretName | string | `""` | Password secret name |
| postgresCredsExistingSecrets.username.secretKey | string | `""` | Username secret key |
| postgresCredsExistingSecrets.username.secretName | string | `""` | Username secret name |
| postgrestString | object | `{"databaseUrlKey":"","existingSecret":""}` | Use connection uri (postgres[ql]://[username[:password]@][host[:port],]/database[?parameter_list]) |
| postgrestString.databaseUrlKey | string | `""` | URI secret key |
| postgrestString.existingSecret | string | `""` | URI secret name |
| service | object | `{"port":8443}` |  |
| service.port | int | `8443` | Service port. |
| serviceAccount | object | `{"annotations":{},"automount":true,"create":true,"name":"postgrest-operator-controller-manager"}` |  |
| serviceAccount.annotations | object | `{}` | Additional Service Account annotations. |
| serviceAccount.automount | bool | `true` | Automount API credentials for a Service Account. |
| serviceAccount.create | bool | `true` | If `true` a Service Account will be created. |
| serviceAccount.name | string | `"postgrest-operator-controller-manager"` | Service account name. |
| tolerations | list | `[]` | List of node taints to tolerate (requires Kubernetes >= 1.6). |
| volumeMounts | list | `[]` | Additional volumes. |
| volumes | list | `[]` | Additional volumes to mount. |

## Security Policy

The current release is the supported version. Security fixes are released together with all other fixes in each new release.

If you discover a security vulnerability in this project, please do not open a public issue.

Instead, report it privately by emailing us at digitalhub@fbk.eu. Include as much detail as possible to help us understand and address the issue quickly and responsibly.

## Contributing

To report a bug or request a feature, please first check the existing issues to avoid duplicates. If none exist, open a new issue with a clear title and a detailed description, including any steps to reproduce if it's a bug.

To contribute code, start by forking the repository. Clone your fork locally and create a new branch for your changes. Make sure your commits follow the [Conventional Commits v1.0](https://www.conventionalcommits.org/en/v1.0.0/) specification to keep history readable and consistent.

Once your changes are ready, push your branch to your fork and open a pull request against the main branch. Be sure to include a summary of what you changed and why. If your pull request addresses an issue, mention it in the description (e.g., “Closes #123”).

Please note that new contributors may be asked to sign a Contributor License Agreement (CLA) before their pull requests can be merged. This helps us ensure compliance with open source licensing standards.

We appreciate contributions and help in improving the project!

## Authors

This project is developed and maintained by **DSLab – Fondazione Bruno Kessler**, with contributions from the open source community. A complete list of contributors is available in the project’s commit history and pull requests.

For questions or inquiries, please contact: [digitalhub@fbk.eu](mailto:digitalhub@fbk.eu)

## Copyright and license

Copyright © 2025 DSLab – Fondazione Bruno Kessler and individual contributors.

This project is licensed under the Apache License, Version 2.0.
You may not use this file except in compliance with the License. Ownership of contributions remains with the original authors and is governed by the terms of the Apache 2.0 License, including the requirement to grant a license to the project.
