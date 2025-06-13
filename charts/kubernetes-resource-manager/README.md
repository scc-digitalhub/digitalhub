<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# kubernetes-resource-manager

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/kubernetes-resource-manager/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=kubernetes-resource-manager*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.2.8](https://img.shields.io/badge/Version-0.2.8-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.2.3](https://img.shields.io/badge/AppVersion-1.2.3-informational?style=flat-square)

A Helm chart for Kubernetes

kubernetes-resource-manager is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities. To bootstrap the platform in its entirety please explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

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
5. Install kubernetes-resource-manager with Helm:
```sh
    helm upgrade kubernetes-resource-manager digitalhub/kubernetes-resource-manager -n kubernetes-resource-manager --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace kubernetes-resource-manager get pods
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| env.additionalEnv | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| global.externalHostAddress | string | `""` |  |
| global.externalTls | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/scc-digitalhub/kubernetes-resource-manager"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| namespaceValues.defaultValue | string | `"*"` |  |
| namespaceValues.namespace | string | `""` |  |
| nodeSelector | object | `{}` |  |
| oidc.access.roles | list | `[]` |  |
| oidc.audience.clientId | string | `""` |  |
| oidc.audience.externalSecret.key | string | `""` |  |
| oidc.audience.externalSecret.name | string | `""` |  |
| oidc.authType | string | `""` |  |
| oidc.enabled | bool | `false` |  |
| oidc.issuer | string | `""` |  |
| oidc.redirectUrl | string | `""` |  |
| oidc.roleClaim | string | `""` |  |
| oidc.scope | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext.fsGroup | int | `65532` |  |
| podSecurityContext.runAsGroup | int | `65532` |  |
| podSecurityContext.runAsNonRoot | bool | `true` |  |
| podSecurityContext.runAsUser | int | `65532` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| rbac.clusterRole.create | bool | `true` |  |
| rbac.namespaced | bool | `true` |  |
| rbac.roles[0].apiGroups | string | `"db.movetokube.com"` |  |
| rbac.roles[0].crd | bool | `true` |  |
| rbac.roles[0].resources[0] | string | `"postgresusers"` |  |
| rbac.roles[0].resources[1] | string | `"postgres"` |  |
| rbac.roles[0].verbs[0] | string | `"get"` |  |
| rbac.roles[0].verbs[1] | string | `"list"` |  |
| rbac.roles[0].verbs[2] | string | `"create"` |  |
| rbac.roles[0].verbs[3] | string | `"delete"` |  |
| rbac.roles[0].verbs[4] | string | `"patch"` |  |
| rbac.roles[10].apiGroups | string | `""` |  |
| rbac.roles[10].resources[0] | string | `"pods"` |  |
| rbac.roles[10].resources[1] | string | `"pods/log"` |  |
| rbac.roles[10].verbs[0] | string | `"get"` |  |
| rbac.roles[10].verbs[1] | string | `"list"` |  |
| rbac.roles[10].verbs[2] | string | `"create"` |  |
| rbac.roles[11].apiGroups | string | `""` |  |
| rbac.roles[11].resources[0] | string | `"resourcequotas"` |  |
| rbac.roles[11].verbs[0] | string | `"get"` |  |
| rbac.roles[11].verbs[1] | string | `"list"` |  |
| rbac.roles[1].apiGroups | string | `"operator.dremiorestserver.com"` |  |
| rbac.roles[1].crd | bool | `true` |  |
| rbac.roles[1].resources[0] | string | `"dremiorestservers"` |  |
| rbac.roles[1].verbs[0] | string | `"get"` |  |
| rbac.roles[1].verbs[1] | string | `"list"` |  |
| rbac.roles[1].verbs[2] | string | `"create"` |  |
| rbac.roles[1].verbs[3] | string | `"delete"` |  |
| rbac.roles[1].verbs[4] | string | `"patch"` |  |
| rbac.roles[2].apiGroups | string | `"operator.postgrest.org"` |  |
| rbac.roles[2].crd | bool | `true` |  |
| rbac.roles[2].resources[0] | string | `"postgrests"` |  |
| rbac.roles[2].verbs[0] | string | `"get"` |  |
| rbac.roles[2].verbs[1] | string | `"list"` |  |
| rbac.roles[2].verbs[2] | string | `"create"` |  |
| rbac.roles[2].verbs[3] | string | `"delete"` |  |
| rbac.roles[2].verbs[4] | string | `"patch"` |  |
| rbac.roles[3].apiGroups | string | `"minio.scc-digitalhub.github.io"` |  |
| rbac.roles[3].crd | bool | `true` |  |
| rbac.roles[3].resources[0] | string | `"buckets"` |  |
| rbac.roles[3].resources[1] | string | `"policies"` |  |
| rbac.roles[3].resources[2] | string | `"users"` |  |
| rbac.roles[3].verbs[0] | string | `"get"` |  |
| rbac.roles[3].verbs[1] | string | `"list"` |  |
| rbac.roles[3].verbs[2] | string | `"create"` |  |
| rbac.roles[3].verbs[3] | string | `"delete"` |  |
| rbac.roles[3].verbs[4] | string | `"patch"` |  |
| rbac.roles[4].apiGroups | string | `"operator.scc-digitalhub.github.io"` |  |
| rbac.roles[4].crd | bool | `true` |  |
| rbac.roles[4].resources[0] | string | `"apigws"` |  |
| rbac.roles[4].verbs[0] | string | `"get"` |  |
| rbac.roles[4].verbs[1] | string | `"list"` |  |
| rbac.roles[4].verbs[2] | string | `"create"` |  |
| rbac.roles[4].verbs[3] | string | `"delete"` |  |
| rbac.roles[4].verbs[4] | string | `"patch"` |  |
| rbac.roles[5].apiGroups | string | `"batch"` |  |
| rbac.roles[5].crd | bool | `false` |  |
| rbac.roles[5].resources[0] | string | `"jobs"` |  |
| rbac.roles[5].verbs[0] | string | `"get"` |  |
| rbac.roles[5].verbs[1] | string | `"list"` |  |
| rbac.roles[5].verbs[2] | string | `"delete"` |  |
| rbac.roles[6].apiGroups | string | `"apps"` |  |
| rbac.roles[6].crd | bool | `false` |  |
| rbac.roles[6].resources[0] | string | `"deployments"` |  |
| rbac.roles[6].resources[1] | string | `"replicasets"` |  |
| rbac.roles[6].verbs[0] | string | `"get"` |  |
| rbac.roles[6].verbs[1] | string | `"list"` |  |
| rbac.roles[7].apiGroups | string | `""` |  |
| rbac.roles[7].crd | bool | `false` |  |
| rbac.roles[7].resources[0] | string | `"persistentvolumeclaims"` |  |
| rbac.roles[7].verbs[0] | string | `"get"` |  |
| rbac.roles[7].verbs[1] | string | `"list"` |  |
| rbac.roles[7].verbs[2] | string | `"create"` |  |
| rbac.roles[7].verbs[3] | string | `"delete"` |  |
| rbac.roles[7].verbs[4] | string | `"patch"` |  |
| rbac.roles[8].apiGroups | string | `""` |  |
| rbac.roles[8].crd | bool | `false` |  |
| rbac.roles[8].resources[0] | string | `"services"` |  |
| rbac.roles[8].verbs[0] | string | `"get"` |  |
| rbac.roles[8].verbs[1] | string | `"list"` |  |
| rbac.roles[9].apiGroups | string | `""` |  |
| rbac.roles[9].crd | bool | `false` |  |
| rbac.roles[9].resources[0] | string | `"secrets"` |  |
| rbac.roles[9].verbs[0] | string | `"get"` |  |
| rbac.roles[9].verbs[1] | string | `"list"` |  |
| replicaCount | int | `1` |  |
| resourceSelectors.deployments | string | `"app.kubernetes.io/managed-by=postgrest-operator|app.kubernetes.io/managed-by=dremiorestserver-operator|app.kubernetes.io/type=workspace|app.kubernetes.io/managed-by=dhcore"` |  |
| resourceSelectors.jobs | string | `"app.kubernetes.io/managed-by=dhcore"` |  |
| resourceSelectors.pvcs.labels | string | `"app.kubernetes.io/managed-by=krm"` |  |
| resourceSelectors.pvcs.managedBy | string | `"krm"` |  |
| resourceSelectors.secrets.labels | string | `""` |  |
| resourceSelectors.secrets.names | string | `"(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*"` |  |
| resourceSelectors.secrets.owners | string | `"db.movetokube.com/v1alpha1"` |  |
| resourceSelectors.services | string | `"app.kubernetes.io/type=service|app.kubernetes.io/managed-by=postgrest-operator|app.kubernetes.io/managed-by=dremiorestserver-operator|com.coder.resource=true|app.kubernetes.io/managed-by=dhcore"` |  |
| resources | object | `{}` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| service.nodePort | string | `"30160"` |  |
| service.port | int | `8080` |  |
| service.type | string | `"NodePort"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| storageClasses | string | `"default"` |  |
| tolerations | list | `[]` |  |

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
