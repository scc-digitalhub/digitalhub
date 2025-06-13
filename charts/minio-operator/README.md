<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: AGPL-3.0-or-later
-->

# minio-operator

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-AGPL%20V3-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/minio-operator/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=minio-operator*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.1.6](https://img.shields.io/badge/Version-0.1.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.1](https://img.shields.io/badge/AppVersion-1.0.1-informational?style=flat-square)

A Kubernetes operator to handle instances of buckets, users and policies on MinIO.

minio-operator is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities. To bootstrap the platform in its entirety please explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

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
5. Install minio-operator with Helm:
```sh
    helm upgrade minio-operator digitalhub/minio-operator -n minio-operator --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace minio-operator get pods
```

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
| deployment.manager.image.repository | string | `"ghcr.io/scc-digitalhub/minio-operator"` |  |
| deployment.manager.image.tag | string | `""` |  |
| deployment.manager.name | string | `"manager"` |  |
| deployment.manager.resources.limits.cpu | string | `"500m"` |  |
| deployment.manager.resources.limits.memory | string | `"512Mi"` |  |
| deployment.manager.resources.requests.cpu | string | `"10m"` |  |
| deployment.manager.resources.requests.memory | string | `"64Mi"` |  |
| deployment.manager.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| deployment.manager.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| deployment.manager.securityContext.runAsNonRoot | bool | `true` |  |
| deployment.manager.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| fullnameOverride | string | `""` |  |
| global.externalHostAddress | string | `""` |  |
| global.minio.rootUserSecret | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"nginx"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| minio.bucket | string | `"datalake"` |  |
| minio.emptyBucketOnDelete | bool | `true` |  |
| minio.endpoint | string | `"minio"` |  |
| minio.endpointPort | string | `"9000"` |  |
| minio.minioCredsExistingSecret.password.secretKey | string | `""` |  |
| minio.minioCredsExistingSecret.password.secretName | string | `""` |  |
| minio.minioCredsExistingSecret.username.secretKey | string | `""` |  |
| minio.minioCredsExistingSecret.username.secretName | string | `""` |  |
| minio.protocol | string | `"http"` |  |
| nameOverride | string | `""` |  |
| namespaceValues.namespace | string | `""` |  |
| namespaceValues.namespaced | bool | `true` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext.runAsNonRoot | bool | `true` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| service.port | int | `8443` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"minio-operator-controller-manager"` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |

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

This project is licensed under the  GNU AGPL License, Version 3.0.
You may not use this file except in compliance with the License. Ownership of contributions remains with the original authors and is governed by the terms of the GNU AGPL v3.0 License, including the requirement to grant a license to the project.
