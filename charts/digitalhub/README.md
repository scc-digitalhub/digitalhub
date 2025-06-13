<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: AGPL-3.0-or-later
-->

# digitalhub

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-AGPL%20V3-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/digitalhub/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=digitalhub*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.12.0-beta2](https://img.shields.io/badge/Version-0.12.0--beta2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.12.0](https://img.shields.io/badge/AppVersion-0.12.0-informational?style=flat-square)

The Digital Hub is an open-source platform for interoperability of data and services, built by integrating several open-source projects to manage, elaborate, expose and serve data through modern standards.

Explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

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
5. Install digitalhub with Helm:
```sh
    helm upgrade digitalhub digitalhub/digitalhub -n digitalhub --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace digitalhub get pods
```
7. Retrieve database and S3 secrets
```sh
    kubectl --namespace digitalhub get secret minio -o yaml
    kubectl --namespace digitalhub get secret digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do -o yaml
```
8. Decode secret values
```sh
    echo -n "<BASE64_VALUES_FROM_SECRET>" | base64 -d
```
9. Create secret with previously decoded values
```
    kubectl -n digitalhub create secret generic digitalhub-common-creds --from-literal=POSTGRES_USER=<DECODED_VALUE> --from-literal=POSTGRES_PASSWORD=<DECODED_VALUE> --from-literal=AWS_ACCESS_KEY_ID=<DECODED_VALUE> --from-literal=AWS_SECRET_ACCESS_KEY=<DECODED_VALUE>
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| apigw-operator.enabled | bool | `true` |  |
| argo-workflows.artifactRepositoryRef.artifact-repositories.annotations."workflows.argoproj.io/default-artifact-repository" | string | `"artifact-repository"` |  |
| argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.archiveLogs | bool | `false` |  |
| argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret.key | string | `"accesskey"` |  |
| argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret.name | string | `"argo-minio-creds"` |  |
| argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.bucket | string | `"argo"` |  |
| argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.endpoint | string | `"minio:9000"` |  |
| argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.insecure | bool | `true` |  |
| argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret.key | string | `"secretkey"` |  |
| argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret.name | string | `"argo-minio-creds"` |  |
| argo-workflows.controller.configMap.create | bool | `true` |  |
| argo-workflows.controller.podSecurityContext.runAsNonRoot | bool | `true` |  |
| argo-workflows.controller.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| argo-workflows.controller.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| argo-workflows.controller.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| argo-workflows.controller.securityContext.runAsNonRoot | bool | `true` |  |
| argo-workflows.controller.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| argo-workflows.controller.serviceAccount.name | string | `"argo-workflow-controller"` |  |
| argo-workflows.controller.workflowDefaults.spec.serviceAccountName | string | `"argo-workflow"` |  |
| argo-workflows.crds.install | bool | `true` |  |
| argo-workflows.enabled | bool | `true` |  |
| argo-workflows.server.enabled | bool | `false` |  |
| argo-workflows.singleNamespace | bool | `true` |  |
| argo-workflows.workflow.serviceAccount.create | bool | `true` |  |
| argo-workflows.workflow.serviceAccount.name | string | `"argo-workflow"` |  |
| coder.coder.env[0].name | string | `"CODER_TELEMETRY"` |  |
| coder.coder.env[0].value | string | `"false"` |  |
| coder.coder.env[1].name | string | `"CODER_PG_USERNAME"` |  |
| coder.coder.env[1].valueFrom.secretKeyRef.key | string | `"username"` |  |
| coder.coder.env[1].valueFrom.secretKeyRef.name | string | `"coder.coder-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| coder.coder.env[2].name | string | `"CODER_PG_PASSWORD"` |  |
| coder.coder.env[2].valueFrom.secretKeyRef.key | string | `"password"` |  |
| coder.coder.env[2].valueFrom.secretKeyRef.name | string | `"coder.coder-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| coder.coder.env[3].name | string | `"CODER_PG_CONNECTION_URL"` |  |
| coder.coder.env[3].value | string | `"postgres://$(CODER_PG_USERNAME):$(CODER_PG_PASSWORD)@coder-postgres-cluster:5432/coder"` |  |
| coder.coder.env[4].name | string | `"CODER_OAUTH2_GITHUB_DEFAULT_PROVIDER_ENABLE"` |  |
| coder.coder.env[4].value | string | `"false"` |  |
| coder.coder.image.tag | string | `"v2.21.3"` |  |
| coder.coder.ingress.enable | bool | `false` |  |
| coder.coder.service.httpNodePort | string | `"30170"` |  |
| coder.coder.service.type | string | `"NodePort"` |  |
| coder.email | string | `"test@digitalhub.test"` |  |
| coder.enabled | bool | `true` |  |
| coder.password | string | `"Test12456@!"` |  |
| coder.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| coder.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| coder.securityContext.runAsNonRoot | bool | `true` |  |
| coder.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| coder.template.customTemplates[0].extraVars | list | `[]` |  |
| coder.template.customTemplates[0].iconUrl | string | `"https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/1200px-Jupyter_logo.svg.png"` |  |
| coder.template.customTemplates[0].image | string | `"ghcr.io/scc-digitalhub/jupyter-3-10:0.11.0"` |  |
| coder.template.customTemplates[0].image311 | string | `"ghcr.io/scc-digitalhub/jupyter-3-11:0.11.0"` |  |
| coder.template.customTemplates[0].image39 | string | `"ghcr.io/scc-digitalhub/jupyter-3-9:0.11.0"` |  |
| coder.template.customTemplates[0].name | string | `"jupyter"` |  |
| coder.template.customTemplates[0].nodePort | string | `"30040"` |  |
| coder.template.customTemplates[0].privileged | bool | `false` |  |
| coder.template.customTemplates[0].stopAfter | string | `"8h"` |  |
| coder.template.customTemplates[1].extraVars | list | `[]` |  |
| coder.template.customTemplates[1].iconUrl | string | `"https://cdn-icons-png.flaticon.com/512/7301/7301969.png"` |  |
| coder.template.customTemplates[1].name | string | `"code-toolbox-experimental"` |  |
| coder.template.customTemplates[1].nodePort | string | `"30050"` |  |
| coder.template.customTemplates[1].privileged | bool | `false` |  |
| coder.template.customTemplates[1].stopAfter | string | `"8h"` |  |
| coder.template.customTemplates[1].tolerations | list | `[]` |  |
| coder.template.customTemplates[2].extraVars | list | `[]` |  |
| coder.template.customTemplates[2].iconUrl | string | `"https://cdn-images-1.medium.com/max/1200/1*2nGovT9tEnQva8NWfHLZxg.png"` |  |
| coder.template.customTemplates[2].image | string | `"dremio/dremio-oss:24.1.0"` |  |
| coder.template.customTemplates[2].name | string | `"dremio"` |  |
| coder.template.customTemplates[2].nodePort | string | `"30120"` |  |
| coder.template.customTemplates[2].postgres.database | string | `"digitalhub"` |  |
| coder.template.customTemplates[2].postgres.hostname | string | `"database-postgres-cluster"` |  |
| coder.template.customTemplates[2].postgres.ownerCredsSecret | string | `"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| coder.template.customTemplates[2].stopAfter | string | `"0h"` |  |
| coder.template.customTemplates[3].extraVars | list | `[]` |  |
| coder.template.customTemplates[3].iconUrl | string | `"https://i.ibb.co/TrBDsZM/sqlpad.png"` |  |
| coder.template.customTemplates[3].image | string | `"smartcommunitylab/sqlpad:nonroot"` |  |
| coder.template.customTemplates[3].name | string | `"sqlpad"` |  |
| coder.template.customTemplates[3].nodePort | string | `"30140"` |  |
| coder.template.customTemplates[3].postgres.database | string | `"digitalhub"` |  |
| coder.template.customTemplates[3].postgres.hostname | string | `"database-postgres-cluster"` |  |
| coder.template.customTemplates[3].postgres.ownerCredsSecret | string | `"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| coder.template.customTemplates[3].stopAfter | string | `"8h"` |  |
| coder.template.customTemplates[4].extraVars[0].name | string | `"GF_PLUGINS_CHECK_FOR_PLUGIN_UPDATES"` |  |
| coder.template.customTemplates[4].extraVars[0].value | bool | `false` |  |
| coder.template.customTemplates[4].extraVars[1].name | string | `"GF_ANALYTICS_CHECK_FOR_UPDATES"` |  |
| coder.template.customTemplates[4].extraVars[1].value | bool | `false` |  |
| coder.template.customTemplates[4].extraVars[2].name | string | `"GF_ANALYTICS_REPORTING_ENABLED"` |  |
| coder.template.customTemplates[4].extraVars[2].value | bool | `false` |  |
| coder.template.customTemplates[4].iconUrl | string | `"https://cdn.iconscout.com/icon/free/png-256/free-grafana-logo-icon-download-in-svg-png-gif-file-formats--technology-social-media-company-vol-3-pack-logos-icons-3030088.png?f=webp"` |  |
| coder.template.customTemplates[4].image | string | `"smartcommunitylab/grafana"` |  |
| coder.template.customTemplates[4].name | string | `"grafana"` |  |
| coder.template.customTemplates[4].nodePort | string | `"30130"` |  |
| coder.template.customTemplates[4].stopAfter | string | `"0h"` |  |
| coder.template.upgrade.enabled | bool | `false` |  |
| coder.template.upgrade.token | string | `""` |  |
| coder.username | string | `"test"` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| containerSecurityContext.enabled | bool | `true` |  |
| containerSecurityContext.runAsNonRoot | bool | `true` |  |
| containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| core.additionalConfig.debug.enableLogs | bool | `true` |  |
| core.additionalConfig.debug.enableMetrics | bool | `false` |  |
| core.additionalConfig.resources.cpuLim | string | `""` |  |
| core.additionalConfig.resources.cpuReq | string | `"100m"` |  |
| core.additionalConfig.resources.gpuKey | string | `"nvidia.com/gpu"` |  |
| core.additionalConfig.resources.memLim | string | `""` |  |
| core.additionalConfig.resources.memReq | string | `"64m"` |  |
| core.additionalConfig.resources.pvcLim | string | `""` |  |
| core.additionalConfig.resources.pvcReq | string | `"2Gi"` |  |
| core.additionalConfig.security.disableRoot | bool | `true` |  |
| core.argoWorkflow.configmap | string | `"artifact-repositories"` |  |
| core.argoWorkflow.key | string | `"artifact-repository"` |  |
| core.argoWorkflow.serviceAccount | string | `"argo-workflow"` |  |
| core.argoWorkflow.user | string | `"8877"` |  |
| core.authentication.openId.enabled | bool | `false` |  |
| core.coreAuthCreds.clientId | string | `"m04bfbmd03m8sf4u9ucz54ti"` |  |
| core.coreAuthCreds.clientSecret | string | `"9rb5215z0aqd7fadzxuoyqe3"` |  |
| core.databaseProvider.database | string | `"digitalhub"` |  |
| core.databaseProvider.host | string | `"database-postgres-cluster"` |  |
| core.databaseProvider.ownerSecret | string | `"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| core.databaseProvider.port | string | `"5432"` |  |
| core.databaseProvider.schema | string | `"public"` |  |
| core.enabled | bool | `true` |  |
| core.events.enabled | bool | `false` |  |
| core.events.rabbitmq.credentials.existingSecret.name | string | `"digitalhub-rabbitmq-default-user"` |  |
| core.events.rabbitmq.credentials.existingSecret.passwordKey | string | `"password"` |  |
| core.events.rabbitmq.credentials.existingSecret.usernameKey | string | `"username"` |  |
| core.events.rabbitmq.enabled | bool | `false` |  |
| core.events.rabbitmq.host | string | `"digitalhub-rabbitmq"` |  |
| core.events.rabbitmq.port | string | `"5672"` |  |
| core.events.rabbitmq.queue | string | `"dhCoreQueue"` |  |
| core.events.rabbitmq.routingKey | string | `"entityRoutingKey"` |  |
| core.events.rabbitmq.topic | string | `"entityTopic"` |  |
| core.events.rabbitmq.vhost | string | `"/"` |  |
| core.kanikoArgs | string | `""` |  |
| core.kubeai.enabled | bool | `true` |  |
| core.kubeai.port | string | `"80"` |  |
| core.kubeai.serviceName | string | `"kubeai"` |  |
| core.postgres.credentials.existingSecret.name | string | `"coreuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| core.postgres.credentials.existingSecret.passwordKey | string | `"password"` |  |
| core.postgres.credentials.existingSecret.usernameKey | string | `"username"` |  |
| core.postgres.credentials.password | string | `""` |  |
| core.postgres.credentials.username | string | `""` |  |
| core.postgres.database | string | `"core"` |  |
| core.postgres.host | string | `"core-postgres-cluster"` |  |
| core.postgres.port | string | `"5432"` |  |
| core.postgres.schema | string | `"public"` |  |
| core.s3.accessKey | string | `""` |  |
| core.s3.bucket | string | `"datalake"` |  |
| core.s3.dynamicCreds.enabled | bool | `false` |  |
| core.s3.endpoint | string | `"minio"` |  |
| core.s3.existingSecret.accessKeyKey | string | `"digitalhubUser"` |  |
| core.s3.existingSecret.name | string | `"digitalhub-minio-creds"` |  |
| core.s3.existingSecret.secretKeyKey | string | `"digitalhubPassword"` |  |
| core.s3.port | string | `"9000"` |  |
| core.s3.protocol | string | `"http"` |  |
| core.s3.publicUrl | string | `"http://192.168.49.2:30080"` |  |
| core.s3.region | string | `"us-west-1"` |  |
| core.s3.secretKey | string | `""` |  |
| core.service.httpNodePort | string | `"30180"` |  |
| core.service.type | string | `"NodePort"` |  |
| core.solr.collection.initialize.enabled | bool | `true` |  |
| core.solr.collection.initialize.image | string | `"smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot"` |  |
| core.solr.collection.initialize.securityJsonSecret | string | `"digitalhub-solrcloud-security-bootstrap"` |  |
| core.solr.collection.name | string | `"dhcore"` |  |
| core.solr.enabled | bool | `true` |  |
| core.solr.fullNameOverride | string | `"digitalhub"` |  |
| core.solr.url | string | `"http://digitalhub-solrcloud-common/solr"` |  |
| core.solr.user | string | `"user"` |  |
| core.sts.client.clientId | string | `""` |  |
| core.sts.client.clientSecret | string | `""` |  |
| core.sts.credentials.roles | string | `"digitalhub_owner_user"` |  |
| core.sts.databaseProvider.credentials.existingSecret.name | string | `"digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| core.sts.databaseProvider.credentials.existingSecret.passwordKey | string | `"password"` |  |
| core.sts.databaseProvider.credentials.existingSecret.usernameKey | string | `"username"` |  |
| core.sts.databaseProvider.credentials.password | string | `""` |  |
| core.sts.databaseProvider.credentials.username | string | `""` |  |
| core.sts.databaseProvider.enabled | bool | `true` |  |
| core.sts.enabled | bool | `false` |  |
| core.sts.jwt.issuerUri | string | `"http://digitalhub-core:8080"` |  |
| core.sts.stsDb.credentials.existingSecret.name | string | `"stsuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| core.sts.stsDb.credentials.existingSecret.passwordKey | string | `"password"` |  |
| core.sts.stsDb.credentials.existingSecret.usernameKey | string | `"username"` |  |
| core.sts.stsDb.database | string | `"sts"` |  |
| core.sts.stsDb.driver | string | `"org.postgresql.Driver"` |  |
| core.sts.stsDb.host | string | `"core-postgres-cluster"` |  |
| core.sts.stsDb.platform | string | `"postgresql"` |  |
| core.sts.stsDb.port | string | `"5432"` |  |
| core.sts.stsDb.schema | string | `"public"` |  |
| dashboard.additional-components.apps[0].description | string | `""` |  |
| dashboard.additional-components.apps[0].existingSecret.clientId | string | `""` |  |
| dashboard.additional-components.apps[0].existingSecret.name | string | `""` |  |
| dashboard.additional-components.apps[0].existingSecret.secretKey | string | `""` |  |
| dashboard.additional-components.apps[0].ingress.annotations | object | `{}` |  |
| dashboard.additional-components.apps[0].ingress.enabled | bool | `false` |  |
| dashboard.additional-components.apps[0].ingress.hosts | list | `[]` |  |
| dashboard.additional-components.apps[0].ingress.ingressClassName | string | `""` |  |
| dashboard.additional-components.apps[0].ingress.path | string | `"/"` |  |
| dashboard.additional-components.apps[0].ingress.tls | list | `[]` |  |
| dashboard.additional-components.apps[0].name | string | `""` |  |
| dashboard.additional-components.apps[0].oidcIssuerUrl | string | `""` |  |
| dashboard.additional-components.apps[0].redirectUrl | string | `""` |  |
| dashboard.additional-components.apps[0].service.name | string | `""` |  |
| dashboard.additional-components.apps[0].service.port | string | `""` |  |
| dashboard.additional-components.enabled | bool | `false` |  |
| dashboard.affinity | object | `{}` |  |
| dashboard.autoscaling.enabled | bool | `false` |  |
| dashboard.autoscaling.maxReplicas | int | `100` |  |
| dashboard.autoscaling.minReplicas | int | `1` |  |
| dashboard.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| dashboard.fullnameOverride | string | `""` |  |
| dashboard.image.pullPolicy | string | `"IfNotPresent"` |  |
| dashboard.image.repository | string | `"ghcr.io/scc-digitalhub/dh-dashboard"` |  |
| dashboard.image.tag | string | `"0.1.4"` |  |
| dashboard.imagePullSecrets | list | `[]` |  |
| dashboard.ingress.annotations | object | `{}` |  |
| dashboard.ingress.className | string | `""` |  |
| dashboard.ingress.enabled | bool | `false` |  |
| dashboard.ingress.hosts[0].host | string | `""` |  |
| dashboard.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| dashboard.ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| dashboard.ingress.tls[0].hosts[0] | string | `""` |  |
| dashboard.ingress.tls[0].secretName | string | `""` |  |
| dashboard.nameOverride | string | `""` |  |
| dashboard.nodeSelector | object | `{}` |  |
| dashboard.oidc.audience.clientId | string | `""` |  |
| dashboard.oidc.audience.externalSecret.key | string | `""` |  |
| dashboard.oidc.audience.externalSecret.name | string | `""` |  |
| dashboard.oidc.config.issuer | string | `""` |  |
| dashboard.oidc.enabled | bool | `false` |  |
| dashboard.podAnnotations | object | `{}` |  |
| dashboard.podLabels | object | `{}` |  |
| dashboard.podSecurityContext.fsGroup | int | `65532` |  |
| dashboard.podSecurityContext.runAsNonRoot | bool | `true` |  |
| dashboard.podSecurityContext.runAsUser | int | `65532` |  |
| dashboard.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| dashboard.replicaCount | int | `1` |  |
| dashboard.resources.limits.cpu | string | `"1000m"` |  |
| dashboard.resources.limits.memory | string | `"512Mi"` |  |
| dashboard.resources.requests.cpu | string | `"250m"` |  |
| dashboard.resources.requests.memory | string | `"256Mi"` |  |
| dashboard.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| dashboard.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| dashboard.securityContext.runAsNonRoot | bool | `true` |  |
| dashboard.securityContext.runAsUser | int | `65532` |  |
| dashboard.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| dashboard.service.httpNodePort | string | `"30110"` |  |
| dashboard.service.port | string | `"8080"` |  |
| dashboard.service.type | string | `"NodePort"` |  |
| dashboard.serviceAccount.annotations | object | `{}` |  |
| dashboard.serviceAccount.automount | bool | `true` |  |
| dashboard.serviceAccount.create | bool | `true` |  |
| dashboard.serviceAccount.name | string | `"digitalhub-dashboard"` |  |
| dashboard.tolerations | list | `[]` |  |
| dashboard.volumes | string | `nil` |  |
| docker-registry.className | string | `"nginx"` |  |
| docker-registry.enabled | bool | `true` |  |
| docker-registry.fullnameOverride | string | `"digitalhub-docker-registry"` |  |
| docker-registry.ingress.enabled | bool | `false` |  |
| docker-registry.ingress.hosts[0] | string | `"registry.digitalhub.test"` |  |
| docker-registry.ingress.path | string | `"/"` |  |
| docker-registry.persistence.accessMode | string | `"ReadWriteOnce"` |  |
| docker-registry.persistence.enabled | bool | `true` |  |
| docker-registry.persistence.size | string | `"128Gi"` |  |
| docker-registry.service.nodePort | int | `30150` |  |
| docker-registry.service.type | string | `"NodePort"` |  |
| docker-registry.updateStrategy.type | string | `"Recreate"` |  |
| dremio-rest-server-operator.enabled | bool | `true` |  |
| ext-postgres-operator.enabled | bool | `true` |  |
| ext-postgres-operator.image.tag | string | `"1.3.5"` |  |
| ext-postgres-operator.podSecurityContext.runAsNonRoot | bool | `true` |  |
| ext-postgres-operator.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| ext-postgres-operator.postgres.cloud_provider | string | `""` |  |
| ext-postgres-operator.postgres.default_database | string | `"postgres"` |  |
| ext-postgres-operator.postgres.host | string | `"database-postgres-cluster"` |  |
| ext-postgres-operator.postgres.password | string | `""` |  |
| ext-postgres-operator.postgres.uri_args | string | `" "` |  |
| ext-postgres-operator.postgres.user | string | `""` |  |
| ext-postgres-operator.postgresCredsExistingSecrets.password.secretKey | string | `"password"` |  |
| ext-postgres-operator.postgresCredsExistingSecrets.password.secretName | string | `"digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| ext-postgres-operator.postgresCredsExistingSecrets.username.secretKey | string | `"username"` |  |
| ext-postgres-operator.postgresCredsExistingSecrets.username.secretName | string | `"digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| ext-postgres-operator.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| global.basicAuth.enabled | bool | `false` |  |
| global.basicAuth.password | string | `""` |  |
| global.basicAuth.secretName | string | `""` |  |
| global.basicAuth.username | string | `""` |  |
| global.cleanup.deployments | bool | `false` |  |
| global.cleanup.ingress | bool | `false` |  |
| global.cleanup.jobs | bool | `false` |  |
| global.cleanup.persistentVolumeClaims | bool | `false` |  |
| global.cleanup.pods | bool | `false` |  |
| global.cleanup.statefulsets | bool | `false` |  |
| global.crd.enabled | bool | `true` |  |
| global.externalHostAddress | string | `"192.168.49.2"` |  |
| global.externalTls | bool | `false` |  |
| global.minio.argoBucket | string | `"argo"` |  |
| global.minio.argoPassword | string | `"argo1234"` |  |
| global.minio.argoSecret | string | `"argo-minio-creds"` |  |
| global.minio.argoUser | string | `"argo"` |  |
| global.minio.bucket | string | `"datalake"` |  |
| global.minio.digitalhubPassword | string | `"digitalhub"` |  |
| global.minio.digitalhubUser | string | `"digitalhub"` |  |
| global.minio.digitalhubUserSecret | string | `"digitalhub-minio-creds"` |  |
| global.minio.endpoint | string | `"minio"` |  |
| global.minio.endpointPort | string | `"9000"` |  |
| global.minio.protocol | string | `"http"` |  |
| global.minio.rootPassword | string | `"minio123"` |  |
| global.minio.rootUser | string | `"minio"` |  |
| global.minio.rootUserSecret | string | `"minio"` |  |
| global.registry.email | string | `""` |  |
| global.registry.password | string | `""` |  |
| global.registry.secretName | string | `""` |  |
| global.registry.url | string | `"192.168.49.2:30150"` |  |
| global.registry.username | string | `""` |  |
| global.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| global.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| global.securityContext.runAsNonRoot | bool | `true` |  |
| global.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| global.service.type | string | `"NodePort"` |  |
| global.solr.fullNameOverride | string | `"digitalhub"` |  |
| jobs.delete.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| kubeai.crds.enabled | bool | `true` |  |
| kubeai.enabled | bool | `true` |  |
| kubeai.open-webui.enabled | bool | `false` |  |
| kubeai.resourceProfiles.cpu.imageName | string | `"cpu"` |  |
| kubeai.resourceProfiles.cpu.requests.cpu | int | `1` |  |
| kubeai.resourceProfiles.cpu.requests.memory | string | `"2Gi"` |  |
| kubernetes-resource-manager.enabled | bool | `true` |  |
| kubernetes-resource-manager.resourceSelectors.secrets.names | string | `"(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*"` |  |
| kubernetes-resource-manager.service.nodePort | string | `"30220"` |  |
| kubernetes-resource-manager.service.type | string | `"NodePort"` |  |
| minio-operator.enabled | bool | `true` |  |
| minio-operator.minio.accessKey | string | `"minio"` |  |
| minio-operator.minio.bucket | string | `"datalake"` |  |
| minio-operator.minio.endpoint | string | `"minio"` |  |
| minio-operator.minio.endpointPort | string | `"9000"` |  |
| minio-operator.minio.protocol | string | `"http"` |  |
| minio-operator.minio.secretKey | string | `"minio123"` |  |
| minio.buckets[0].name | string | `"datalake"` |  |
| minio.buckets[0].policy | string | `"none"` |  |
| minio.buckets[0].purge | bool | `false` |  |
| minio.buckets[1].name | string | `"argo"` |  |
| minio.buckets[1].policy | string | `"none"` |  |
| minio.buckets[1].purge | bool | `false` |  |
| minio.consoleService.nodePort | int | `30090` |  |
| minio.consoleService.port | int | `9001` |  |
| minio.consoleService.type | string | `"NodePort"` |  |
| minio.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| minio.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| minio.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| minio.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| minio.deploymentUpdate.type | string | `"Recreate"` |  |
| minio.enabled | bool | `true` |  |
| minio.fullnameOverride | string | `"minio"` |  |
| minio.ingress.enabled | bool | `false` |  |
| minio.makeBucketJob.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| minio.makeBucketJob.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| minio.makeBucketJob.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| minio.makeBucketJob.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| minio.makeBucketJob.securityContext.enabled | bool | `true` |  |
| minio.makePolicyJob.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| minio.makePolicyJob.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| minio.makePolicyJob.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| minio.makePolicyJob.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| minio.makePolicyJob.securityContext.enabled | bool | `true` |  |
| minio.makeUserJob.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| minio.makeUserJob.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| minio.makeUserJob.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| minio.makeUserJob.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| minio.makeUserJob.securityContext.enabled | bool | `true` |  |
| minio.mode | string | `"standalone"` |  |
| minio.oidc.claimName | string | `""` |  |
| minio.oidc.claimPrefix | string | `""` |  |
| minio.oidc.clientId | string | `""` |  |
| minio.oidc.clientSecret | string | `""` |  |
| minio.oidc.comment | string | `""` |  |
| minio.oidc.configUrl | string | `""` |  |
| minio.oidc.displayName | string | `""` |  |
| minio.oidc.enabled | bool | `false` |  |
| minio.oidc.existingClientIdKey | string | `""` |  |
| minio.oidc.existingClientSecretKey | string | `""` |  |
| minio.oidc.existingClientSecretName | string | `""` |  |
| minio.oidc.redirectUri | string | `""` |  |
| minio.oidc.scopes | string | `""` |  |
| minio.persistence.enabled | bool | `true` |  |
| minio.persistence.size | string | `"128Gi"` |  |
| minio.policies[0].name | string | `"readwritedigitalhub"` |  |
| minio.policies[0].statements[0].actions[0] | string | `"s3:*"` |  |
| minio.policies[0].statements[0].effect | string | `"Allow"` |  |
| minio.policies[0].statements[0].resources[0] | string | `"arn:aws:s3:::datalake/*"` |  |
| minio.policies[1].name | string | `"readwriteargo"` |  |
| minio.policies[1].statements[0].actions[0] | string | `"s3:*"` |  |
| minio.policies[1].statements[0].effect | string | `"Allow"` |  |
| minio.policies[1].statements[0].resources[0] | string | `"arn:aws:s3:::argo/*"` |  |
| minio.postJob.securityContext.enabled | bool | `true` |  |
| minio.postJob.securityContext.runAsNonRoot | bool | `true` |  |
| minio.postJob.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| minio.replicas | int | `1` |  |
| minio.resources.requests.memory | string | `"0.5Gi"` |  |
| minio.rootPassword | string | `"minio123"` |  |
| minio.rootUser | string | `"minio"` |  |
| minio.securityContext.runAsNonRoot | bool | `true` |  |
| minio.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| minio.service.nodePort | int | `30080` |  |
| minio.service.port | int | `9000` |  |
| minio.service.type | string | `"NodePort"` |  |
| minio.users[0].accessKey | string | `"digitalhub"` |  |
| minio.users[0].policy | string | `"readwritedigitalhub"` |  |
| minio.users[0].secretKey | string | `"digitalhub"` |  |
| minio.users[1].accessKey | string | `"argo"` |  |
| minio.users[1].policy | string | `"readwriteargo"` |  |
| minio.users[1].secretKey | string | `"argo1234"` |  |
| mysql-operator.enabled | bool | `false` |  |
| nakamasato-mysql-operator.enabled | bool | `false` |  |
| open-webui.enabled | bool | `true` |  |
| open-webui.extraEnvVars[0].name | string | `"ENABLE_LOGIN_FORM"` |  |
| open-webui.extraEnvVars[0].value | string | `"True"` |  |
| open-webui.extraEnvVars[1].name | string | `"OPENAI_API_KEYS"` |  |
| open-webui.extraEnvVars[1].value | string | `"not-used"` |  |
| open-webui.extraEnvVars[2].name | string | `"SAFE_MODE"` |  |
| open-webui.extraEnvVars[2].value | string | `"True"` |  |
| open-webui.extraEnvVars[3].name | string | `"ENABLE_EVALUATION_ARENA_MODELS"` |  |
| open-webui.extraEnvVars[3].value | string | `"False"` |  |
| open-webui.extraEnvVars[4].name | string | `"DEFAULT_USER_ROLE"` |  |
| open-webui.extraEnvVars[4].value | string | `"user"` |  |
| open-webui.extraEnvVars[5].name | string | `"ENABLE_API_KEY"` |  |
| open-webui.extraEnvVars[5].value | string | `"False"` |  |
| open-webui.initialize.admin.existingSecret.name | string | `""` |  |
| open-webui.initialize.admin.existingSecret.passwordKey | string | `""` |  |
| open-webui.initialize.admin.existingSecret.usernameKey | string | `""` |  |
| open-webui.initialize.admin.password | string | `"Test12456@!"` |  |
| open-webui.initialize.admin.username | string | `"test@test.local"` |  |
| open-webui.initialize.enabled | bool | `true` |  |
| open-webui.initialize.image | string | `"smartcommunitylab/k8s-ansible-clusterctl:1.32.5-1.10.1"` |  |
| open-webui.ollama.enabled | bool | `false` |  |
| open-webui.openaiBaseApiUrl | string | `"http://kubeai/openai/v1"` |  |
| open-webui.pipelines.enabled | bool | `false` |  |
| open-webui.service.nodePort | string | `"30160"` |  |
| open-webui.service.type | string | `"NodePort"` |  |
| platformPackages.deleteOnCompletion | bool | `true` |  |
| platformPackages.image | string | `""` |  |
| platformPackages.packages[0].name | string | `"digitalhub[full]"` |  |
| platformPackages.packages[0].tag | string | `"0.11.0"` |  |
| platformPackages.packages[1].name | string | `"digitalhub-runtime-python"` |  |
| platformPackages.packages[1].tag | string | `"0.11.0"` |  |
| platformPackages.packages[2].name | string | `"digitalhub-runtime-container"` |  |
| platformPackages.packages[2].tag | string | `"0.11.0"` |  |
| platformPackages.packages[3].name | string | `"digitalhub-runtime-dbt"` |  |
| platformPackages.packages[3].tag | string | `"0.11.0"` |  |
| platformPackages.packages[4].name | string | `"digitalhub-runtime-kfp"` |  |
| platformPackages.packages[4].tag | string | `"0.11.0"` |  |
| platformPackages.packages[5].name | string | `"digitalhub-runtime-modelserve"` |  |
| platformPackages.packages[5].tag | string | `"0.11.0"` |  |
| platformPackages.preRelease | bool | `false` |  |
| platformPackages.tag | string | `""` |  |
| postgres-operator.databases.coder.enabled | bool | `true` |  |
| postgres-operator.databases.coder.resources.limits.cpu | string | `"2"` |  |
| postgres-operator.databases.coder.resources.limits.memory | string | `"2Gi"` |  |
| postgres-operator.databases.coder.resources.requests.cpu | string | `"512m"` |  |
| postgres-operator.databases.coder.resources.requests.memory | string | `"1000Mi"` |  |
| postgres-operator.databases.coder.volume.size | string | `"8Gi"` |  |
| postgres-operator.databases.core.enabled | bool | `true` |  |
| postgres-operator.databases.core.resources.limits.cpu | string | `"2"` |  |
| postgres-operator.databases.core.resources.limits.memory | string | `"2Gi"` |  |
| postgres-operator.databases.core.resources.requests.cpu | string | `"512m"` |  |
| postgres-operator.databases.core.resources.requests.memory | string | `"1000Mi"` |  |
| postgres-operator.databases.core.volume.size | string | `"8Gi"` |  |
| postgres-operator.databases.digitalhub.enabled | bool | `true` |  |
| postgres-operator.databases.digitalhub.resources.limits.cpu | string | `"2"` |  |
| postgres-operator.databases.digitalhub.resources.limits.memory | string | `"2Gi"` |  |
| postgres-operator.databases.digitalhub.resources.requests.cpu | string | `"512m"` |  |
| postgres-operator.databases.digitalhub.resources.requests.memory | string | `"1000Mi"` |  |
| postgres-operator.databases.digitalhub.volume.size | string | `"8Gi"` |  |
| postgres-operator.enabled | bool | `true` |  |
| postgres-operator.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| postgres-operator.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| postgres-operator.securityContext.runAsNonRoot | bool | `true` |  |
| postgres-operator.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| postgrest-operator.enabled | bool | `true` |  |
| postgrest-operator.postgres.default_database | string | `"digitalhub"` |  |
| postgrest-operator.postgres.host | string | `"database-postgres-cluster"` |  |
| postgrest-operator.postgres.port | int | `5432` |  |
| postgrest-operator.postgres.postgrest_service_type | string | `"NodePort"` |  |
| postgrest-operator.postgres.uri_args | string | `"sslmode=disable"` |  |
| postgrest-operator.postgresCredsExistingSecrets.password.secretKey | string | `"password"` |  |
| postgrest-operator.postgresCredsExistingSecrets.password.secretName | string | `"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| postgrest-operator.postgresCredsExistingSecrets.username.secretKey | string | `"username"` |  |
| postgrest-operator.postgresCredsExistingSecrets.username.secretName | string | `"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"` |  |
| securityContext.enabled | bool | `true` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| solr-operator.enabled | bool | `true` |  |
| solr-operator.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| solr-operator.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| solr-operator.securityContext.runAsNonRoot | bool | `true` |  |
| solr-operator.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| solr-operator.zookeeper-operator.crd.create | bool | `true` |  |
| solr.creds.admin.password | string | `"thi4iegheeX7euthe7di"` |  |
| solr.creds.admin.passwordSha | string | `"C8QrTZf6jpu+cPKTsLtyEhv1XVXAYZGmStTKXzB80sg= MW5pNXZlaGIyaWhkdW5w"` |  |
| solr.creds.k8sOper.password | string | `"imPBf@tU(asx9%TZ"` |  |
| solr.creds.k8sOper.passwordSha | string | `"3iPc1JWet22a05UZXCFfo/qRUqwg2iVULyv5RBEqPdM= LSpnG/l2j8AA9vrryMGkkFLO+bYeN7ZUvrU270WAfyA="` |  |
| solr.creds.solr.password | string | `"aed0ohBie3hai6jo7sho"` |  |
| solr.creds.solr.passwordSha | string | `"i61TpZKyvff3CHnyZ0kMTzkNezkxkilCre93wLkz7jQ= NzlyN3k1cm0xZGt3eWR1MA=="` |  |
| solr.creds.user.password | string | `"soogh8aiy6vah6Aecai6"` |  |
| solr.creds.user.passwordSha | string | `"ps9jK0qKXJqZawtFS+SxhB2CdCu90Qgz4riZ0XwzYd4= YWxxZXV3enB1YmE2c2gwdg=="` |  |
| solr.dataStorage.capacity | string | `"10Gi"` |  |
| solr.dataStorage.persistent.pvc.annotations | object | `{}` |  |
| solr.dataStorage.persistent.pvc.labels | object | `{}` |  |
| solr.dataStorage.persistent.pvc.name | string | `""` |  |
| solr.dataStorage.persistent.pvc.storageClassName | string | `""` |  |
| solr.dataStorage.persistent.reclaimPolicy | string | `"Delete"` |  |
| solr.dataStorage.type | string | `"ephemeral"` |  |
| solr.enabled | bool | `true` |  |
| solr.fullnameOverride | string | `"digitalhub"` |  |
| solr.image.repository | string | `"solr"` |  |
| solr.image.tag | string | `"9.7"` |  |
| solr.podOptions.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| solr.podOptions.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| solr.podOptions.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| solr.podOptions.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| solr.replicas | int | `1` |  |
| solr.solrOptions.security.authenticationType | string | `"Basic"` |  |
| solr.solrOptions.security.basicAuthSecret | string | `"digitalhub-solrcloud-basic-auth"` |  |
| solr.solrOptions.security.bootstrapSecurityJson.key | string | `"security.json"` |  |
| solr.solrOptions.security.bootstrapSecurityJson.name | string | `"digitalhub-solrcloud-security-bootstrap"` |  |
| solr.solrOptions.security.probesRequireAuth | bool | `true` |  |
| solr.useExistingSecurityJson | bool | `false` |  |
| template-controller.enabled | bool | `true` |  |
| template-controller.objectTemplate.enabled | bool | `true` |  |
| template-controller.podSecurityContext.runAsNonRoot | bool | `true` |  |
| template-controller.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| template-controller.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| template-controller.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| template-controller.securityContext.runAsNonRoot | bool | `true` |  |
| template-controller.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |

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
