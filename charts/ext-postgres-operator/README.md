<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# ext-postgres-operator

![Version: 1.2.6](https://img.shields.io/badge/Version-1.2.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.2.3](https://img.shields.io/badge/AppVersion-1.2.3-informational?style=flat-square)

A Helm chart for the External Postgres operator

helm repo add ext-postgres-operator https://movetokube.github.io/postgres-operator/
helm upgrade --install -n operators ext-postgres-operator  ext-postgres-operator/ext-postgres-operator --version 1.2.3

**Homepage:** <https://github.com/scc-digitalhub/digitalhub/tree/main/charts/dremio-rest-server-operator>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| env | object | `{}` |  |
| existingSecret | string | `""` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/movetokube/postgres-operator"` |  |
| image.tag | string | `"latest"` |  |
| nameOverride | string | `""` |  |
| namespaceValues.namespace | string | `""` |  |
| namespaceValues.namespaced | bool | `true` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| postgres.cloud_provider | string | `""` |  |
| postgres.default_database | string | `"postgres"` |  |
| postgres.host | string | `"localhost"` |  |
| postgres.password | string | `"password"` |  |
| postgres.uri_args | string | `""` |  |
| postgres.user | string | `"admin"` |  |
| postgresCredsExistingSecrets | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
| watchNamespace | string | `""` |  |

