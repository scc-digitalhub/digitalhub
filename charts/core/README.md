<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# core

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/core/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=core*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.3.14](https://img.shields.io/badge/Version-0.3.14-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.11.0](https://img.shields.io/badge/AppVersion-0.11.0-informational?style=flat-square)

Core backend application for DigitalHub.

core is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities. To bootstrap the platform in its entirety please explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

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
5. Install core with Helm:
```sh
    helm upgrade core digitalhub/core -n core --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace core get pods
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalConfig.debug.enableLogs | bool | `true` |  |
| additionalConfig.debug.enableMetrics | bool | `false` |  |
| additionalConfig.job.deadline | string | `"604800"` |  |
| additionalConfig.job.jobSuspend | bool | `false` |  |
| additionalConfig.resources.cpuLim | string | `""` |  |
| additionalConfig.resources.cpuReq | string | `""` |  |
| additionalConfig.resources.gpuKey | string | `""` |  |
| additionalConfig.resources.memLim | string | `""` |  |
| additionalConfig.resources.memReq | string | `""` |  |
| additionalConfig.resources.pvcLim | string | `""` |  |
| additionalConfig.resources.pvcReq | string | `""` |  |
| additionalConfig.security.disableRoot | bool | `true` |  |
| additionalConfig.service.type | string | `"NodePort"` |  |
| affinity | object | `{}` |  |
| argoWorkflow.configmap | string | `"artifact-repositories"` |  |
| argoWorkflow.key | string | `"default-artifact-repository"` |  |
| argoWorkflow.serviceAccount | string | `"default"` |  |
| argoWorkflow.user | string | `"1000"` |  |
| authentication.basic.enabled | bool | `true` |  |
| authentication.basic.password | string | `""` |  |
| authentication.basic.username | string | `""` |  |
| authentication.openId.enabled | bool | `false` |  |
| authentication.openId.externalSecret.key | string | `""` |  |
| authentication.openId.externalSecret.name | string | `""` |  |
| authentication.openId.issuerUri | string | `""` |  |
| authentication.openId.jwtAudience | string | `""` |  |
| authentication.openId.jwtClaim | string | `""` |  |
| authentication.openId.jwtUsername | string | `""` |  |
| authentication.openId.oidcClientId | string | `""` |  |
| authentication.openId.scope | string | `""` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| configmapAdditionalEnv | object | `{}` |  |
| coreAuthCreds.clientId | string | `""` |  |
| coreAuthCreds.clientSecret | string | `""` |  |
| coreTokens.accessTokenDuration | string | `"43200"` |  |
| coreTokens.refreshTokenDuration | string | `"86400"` |  |
| corsOrigin | string | `""` |  |
| databaseProvider.database | string | `""` |  |
| databaseProvider.host | string | `""` |  |
| databaseProvider.port | string | `""` |  |
| defaultStorageClass | string | `""` |  |
| events.enabled | string | `"false"` |  |
| events.rabbitmq.credentials.existingSecret.name | string | `""` |  |
| events.rabbitmq.credentials.existingSecret.passwordKey | string | `""` |  |
| events.rabbitmq.credentials.existingSecret.usernameKey | string | `""` |  |
| events.rabbitmq.credentials.password | string | `""` |  |
| events.rabbitmq.credentials.username | string | `""` |  |
| events.rabbitmq.enabled | bool | `false` |  |
| events.rabbitmq.host | string | `""` |  |
| events.rabbitmq.port | string | `""` |  |
| events.rabbitmq.queue | string | `""` |  |
| events.rabbitmq.routingKey | string | `""` |  |
| events.rabbitmq.topic | string | `""` |  |
| events.rabbitmq.vhost | string | `""` |  |
| fullnameOverride | string | `""` |  |
| global.externalHostAddress | string | `""` |  |
| global.externalTls | bool | `false` |  |
| global.registry.email | string | `""` |  |
| global.registry.password | string | `""` |  |
| global.registry.secretName | string | `""` |  |
| global.registry.url | string | `""` |  |
| global.registry.username | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/scc-digitalhub/digitalhub-core"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"core.home"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| initImage.builderTool.image | string | `"ghcr.io/scc-digitalhub/digitalhub-core-builder-tool"` |  |
| initImage.builderTool.tag | string | `"b95c095f"` |  |
| kanikoArgs | string | `""` |  |
| keystore.existingSecret.keyName | string | `""` |  |
| keystore.existingSecret.secretName | string | `""` |  |
| keystore.keystoreKid | string | `""` |  |
| keystore.keystorePath | string | `"/etc/keystore"` |  |
| kubeai.enabled | bool | `true` |  |
| kubeai.port | string | `""` |  |
| kubeai.serviceName | string | `""` |  |
| lucene.indexPath | bool | `false` |  |
| lucene.reindex | string | `"never"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext.runAsNonRoot | bool | `true` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| postgres.credentials.existingSecret.name | string | `""` |  |
| postgres.credentials.existingSecret.passwordKey | string | `nil` |  |
| postgres.credentials.existingSecret.usernameKey | string | `nil` |  |
| postgres.credentials.password | string | `""` |  |
| postgres.credentials.username | string | `""` |  |
| postgres.database | string | `""` |  |
| postgres.host | string | `""` |  |
| postgres.port | string | `""` |  |
| postgres.schema | string | `""` |  |
| registry.kaniko.imagePrefix | string | `""` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"1000m"` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| runtime.dbt.image | string | `"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-dbt/wrapper-dbt"` |  |
| runtime.dbt.tag | string | `"0.11.0"` |  |
| runtime.huggingFace.image | string | `"kserve/huggingfaceserver"` |  |
| runtime.huggingFace.tag | string | `"v0.14.0"` |  |
| runtime.kfp.image | string | `"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-kfp/wrapper-kfp"` |  |
| runtime.kfp.tag | string | `"0.11.0"` |  |
| runtime.python.image | string | `"ghcr.io/scc-digitalhub/digitalhub-serverless/python-runtime"` |  |
| runtime.python.tag3_10 | string | `"3.10-0.11.0"` |  |
| runtime.python.tag3_11 | string | `"3.11-0.11.0"` |  |
| runtime.python.tag3_9 | string | `"3.9-0.11.0"` |  |
| s3.accessKey | string | `""` |  |
| s3.bucket | string | `""` |  |
| s3.dynamicCreds.enabled | bool | `false` |  |
| s3.endpoint | string | `""` |  |
| s3.existingSecret.accessKeyKey | string | `""` |  |
| s3.existingSecret.name | string | `""` |  |
| s3.existingSecret.secretKeyKey | string | `""` |  |
| s3.port | string | `""` |  |
| s3.protocol | string | `"http"` |  |
| s3.publicUrl | string | `""` |  |
| s3.region | string | `""` |  |
| s3.secretKey | string | `""` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| service.httpNodePort | string | `""` |  |
| service.port | string | `"8080"` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"core"` |  |
| solr.collection.initialize.enabled | bool | `true` |  |
| solr.collection.initialize.image | string | `"smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot"` |  |
| solr.collection.initialize.securityJsonSecret | string | `""` |  |
| solr.collection.name | string | `""` |  |
| solr.enabled | bool | `false` |  |
| solr.fullNameOverride | string | `""` |  |
| solr.url | string | `""` |  |
| solr.user | string | `""` |  |
| sts.affinity | object | `{}` |  |
| sts.autoscaling.enabled | bool | `false` |  |
| sts.autoscaling.maxReplicas | int | `100` |  |
| sts.autoscaling.minReplicas | int | `1` |  |
| sts.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| sts.client.clientId | string | `""` |  |
| sts.client.clientSecret | string | `""` |  |
| sts.client.existingSecret.clientIdKey | string | `""` |  |
| sts.client.existingSecret.clientSecretKey | string | `""` |  |
| sts.client.existingSecret.name | string | `""` |  |
| sts.credentials.roles | string | `""` |  |
| sts.databaseProvider.credentials.existingSecret.name | string | `""` |  |
| sts.databaseProvider.credentials.existingSecret.passwordKey | string | `""` |  |
| sts.databaseProvider.credentials.existingSecret.usernameKey | string | `""` |  |
| sts.databaseProvider.credentials.password | string | `""` |  |
| sts.databaseProvider.credentials.username | string | `""` |  |
| sts.databaseProvider.enabled | bool | `true` |  |
| sts.enabled | bool | `false` |  |
| sts.fullnameOverride | string | `""` |  |
| sts.image.pullPolicy | string | `"IfNotPresent"` |  |
| sts.image.repository | string | `"ghcr.io/scc-digitalhub/db-sts"` |  |
| sts.image.tag | string | `"0.3.0"` |  |
| sts.imagePullSecrets | list | `[]` |  |
| sts.jwt.audience | string | `"sts"` |  |
| sts.jwt.claim | string | `"db/role"` |  |
| sts.jwt.issuerUri | string | `"http://digitalhub-core:8080"` |  |
| sts.nameOverride | string | `""` |  |
| sts.nodeSelector | object | `{}` |  |
| sts.podAnnotations | object | `{}` |  |
| sts.podLabels | object | `{}` |  |
| sts.podSecurityContext.runAsNonRoot | bool | `true` |  |
| sts.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| sts.replicaCount | int | `1` |  |
| sts.resources.limits.cpu | string | `"200m"` |  |
| sts.resources.limits.memory | string | `"256Mi"` |  |
| sts.resources.requests.cpu | string | `"100m"` |  |
| sts.resources.requests.memory | string | `"128Mi"` |  |
| sts.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| sts.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| sts.securityContext.runAsNonRoot | bool | `true` |  |
| sts.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| sts.service.port | int | `8080` |  |
| sts.service.type | string | `"ClusterIP"` |  |
| sts.serviceAccount.annotations | object | `{}` |  |
| sts.serviceAccount.automount | bool | `true` |  |
| sts.serviceAccount.create | bool | `true` |  |
| sts.serviceAccount.name | string | `"core-sts"` |  |
| sts.stsDb.credentials.existingSecret.name | string | `""` |  |
| sts.stsDb.credentials.existingSecret.passwordKey | string | `""` |  |
| sts.stsDb.credentials.existingSecret.usernameKey | string | `""` |  |
| sts.stsDb.credentials.password | string | `""` |  |
| sts.stsDb.credentials.username | string | `""` |  |
| sts.stsDb.database | string | `""` |  |
| sts.stsDb.driver | string | `""` |  |
| sts.stsDb.host | string | `""` |  |
| sts.stsDb.platform | string | `""` |  |
| sts.stsDb.port | string | `""` |  |
| sts.stsDb.schema | string | `""` |  |
| sts.tolerations | list | `[]` |  |
| sts.volumeMounts | list | `[]` |  |
| sts.volumes | list | `[]` |  |
| templates | list | `[]` |  |
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
