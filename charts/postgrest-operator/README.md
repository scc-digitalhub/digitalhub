<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# postgrest-operator

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/postgrest-operator/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=postgrest-operator*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.1.8](https://img.shields.io/badge/Version-0.1.8-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.0.5](https://img.shields.io/badge/AppVersion-2.0.5-informational?style=flat-square)

A Helm chart for Kubernetes

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
| deployment.kubeRbacProxy.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| deployment.kubeRbacProxy.securityContext.runAsNonRoot | bool | `true` |  |
| deployment.kubeRbacProxy.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| deployment.manager.args[0] | string | `"--health-probe-bind-address=:8081"` |  |
| deployment.manager.args[1] | string | `"--metrics-bind-address=127.0.0.1:8080"` |  |
| deployment.manager.args[2] | string | `"--leader-elect"` |  |
| deployment.manager.command[0] | string | `"/manager"` |  |
| deployment.manager.image.repository | string | `"ghcr.io/scc-digitalhub/postgrest-operator"` |  |
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
| deployment.podSecurityContext.runAsNonRoot | bool | `true` |  |
| deployment.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| deployment.replicaCount | int | `1` |  |
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| nameOverride | string | `""` |  |
| namespaceValues.namespace | string | `""` |  |
| namespaceValues.namespaced | bool | `true` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations."kubectl.kubernetes.io/default-container" | string | `"manager"` |  |
| podLabels.control-plane | string | `"controller-manager"` |  |
| postgres.default_database | string | `"postgres"` |  |
| postgres.host | string | `"localhost"` |  |
| postgres.port | int | `5432` |  |
| postgres.postgrest_image | string | `"postgrest/postgrest"` |  |
| postgres.postgrest_image_tag | string | `"v11.1.0"` |  |
| postgres.postgrest_service_type | string | `"ClusterIP"` |  |
| postgres.uri_args | string | `"sslmode=disable"` |  |
| postgresCreds.password | string | `"password"` |  |
| postgresCreds.username | string | `"username"` |  |
| postgresCredsExistingSecrets.password.secretKey | string | `""` |  |
| postgresCredsExistingSecrets.password.secretName | string | `""` |  |
| postgresCredsExistingSecrets.username.secretKey | string | `""` |  |
| postgresCredsExistingSecrets.username.secretName | string | `""` |  |
| postgrestString.databaseUrlKey | string | `""` |  |
| postgrestString.existingSecret | string | `""` |  |
| service.port | int | `8443` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"postgrest-operator-controller-manager"` |  |
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

This project is licensed under the Apache License, Version 2.0.
You may not use this file except in compliance with the License. Ownership of contributions remains with the original authors and is governed by the terms of the Apache 2.0 License, including the requirement to grant a license to the project.
