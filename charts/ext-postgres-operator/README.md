<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# ext-postgres-operator

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/dremio-rest-server-operator/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=ext-postgres-operator*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 1.2.6](https://img.shields.io/badge/Version-1.2.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.2.3](https://img.shields.io/badge/AppVersion-1.2.3-informational?style=flat-square)

A Helm chart for the External Postgres operator

helm repo add ext-postgres-operator https://movetokube.github.io/postgres-operator/
helm upgrade --install -n operators ext-postgres-operator  ext-postgres-operator/ext-postgres-operator --version 1.2.3

ext-postgres-operator is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities. To bootstrap the platform in its entirety please explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

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
5. Install ext-postgres-operator with Helm:
```sh
    helm upgrade ext-postgres-operator digitalhub/ext-postgres-operator -n ext-postgres-operator --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace ext-postgres-operator get pods
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | object | `{}` | Additional enviroment variable. |
| existingSecret | string | `""` | Additional environment variable mounted from an existing secret. |
| fullnameOverride | string | `""` | String to fully override `postgrest-operator.fullname` template. |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"ghcr.io/movetokube/postgres-operator","tag":"latest"}` | Container image configuration. |
| image.pullPolicy | string | `"IfNotPresent"` | Container image pull policy. |
| image.repository | string | `"ghcr.io/movetokube/postgres-operator"` | Container image repository. |
| image.tag | string | `"latest"` | Container image tag. |
| nameOverride | string | `""` | String to partially override `postgrest-operator.fullname` template (will maintain the release name). |
| namespaceValues | object | `{"namespace":"","namespaced":true}` | Configure operator scope clusterwide or namespaced. |
| namespaceValues.namespace | string | `""` | Namespace name where operator watch for CR. |
| namespaceValues.namespaced | bool | `true` | Enable/Disable Cluster wide mode. |
| nodeSelector | object | `{}` | Node labels for pod assignment. Ref: https://kubernetes.io/docs/user-guide/node-selection/. |
| podAnnotations | object | `{}` | Annotations to add to each pod. |
| podLabels | object | `{}` | Labels to add to each pod. |
| podSecurityContext | object | `{}` | [Security context for pod](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/) |
| postgres | object | `{"cloud_provider":"","default_database":"postgres","host":"localhost","password":"password","uri_args":"","user":"admin"}` |  |
| postgres.cloud_provider | string | `""` | Postgres cloud provider, could be AWS, Azure, GCP or empty (default) |
| postgres.default_database | string | `"postgres"` | Postgres default database to use |
| postgres.host | string | `"localhost"` | Postgres hostname |
| postgres.password | string | `"password"` | Postgres username |
| postgres.uri_args | string | `""` | Additional connection args to pg driver |
| postgres.user | string | `"admin"` | Postgres password |
| postgresCredsExistingSecrets | object | `{}` | Use existing secret for postgres server credentials |
| replicaCount | int | `1` | Desired number of pods. |
| resources | object | `{}` | Container resource requests and limits. |
| securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsNonRoot":true}` | [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/) |
| securityContext.allowPrivilegeEscalation | bool | `false` | Container allow privilege escalation |
| securityContext.capabilities | object | `{"drop":["ALL"]}` | Container configure capabilities. |
| securityContext.capabilities.drop | list | `["ALL"]` | Container drop capabilities. |
| securityContext.readOnlyRootFilesystem | bool | `true` | Container read only filesystem |
| securityContext.runAsNonRoot | bool | `true` | Container allow run as root. |
| serviceAccount | object | `{"annotations":{},"name":""}` | Service account configuration. |
| serviceAccount.annotations | object | `{}` | Additional Service Account annotations. |
| serviceAccount.name | string | `""` | Service account name. |
| tolerations | list | `[]` | List of node taints to tolerate (requires Kubernetes >= 1.6). |
| volumeMounts | list | `[]` | Additional volumes. |
| volumes | list | `[]` | Additional volumes to mount. |
| watchNamespace | string | `""` | Which namespace to watch in kubernetes, empty string means all namespaces. |

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
