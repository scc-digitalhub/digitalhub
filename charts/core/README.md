<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# core

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/core/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=core*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.3.14](https://img.shields.io/badge/Version-0.3.14-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.11.0](https://img.shields.io/badge/AppVersion-0.11.0-informational?style=flat-square)

DigitalHub Core is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities.

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
| additionalConfig | object | `{"debug":{"enableLogs":true,"enableMetrics":false},"job":{"deadline":"604800","jobSuspend":false},"resources":{"cpuLim":"","cpuReq":"","gpuKey":"","memLim":"","memReq":"","pvcLim":"","pvcReq":""},"security":{"disableRoot":true},"service":{"type":"NodePort"}}` |  |
| additionalConfig.debug | object | `{"enableLogs":true,"enableMetrics":false}` |  |
| additionalConfig.debug.enableLogs | bool | `true` | Enable/disable logging |
| additionalConfig.debug.enableMetrics | bool | `false` | Enable/disable metrics |
| additionalConfig.job | object | `{"deadline":"604800","jobSuspend":false}` | Jobs configuration |
| additionalConfig.job.deadline | string | `"604800"` | Set deadline for jobs |
| additionalConfig.job.jobSuspend | bool | `false` | Suspend jobs |
| additionalConfig.resources | object | `{"cpuLim":"","cpuReq":"","gpuKey":"","memLim":"","memReq":"","pvcLim":"","pvcReq":""}` | Resources for the pods created by COre |
| additionalConfig.resources.cpuLim | string | `""` | CPU limit |
| additionalConfig.resources.cpuReq | string | `""` | CPU request |
| additionalConfig.resources.gpuKey | string | `""` | GPU key |
| additionalConfig.resources.memLim | string | `""` | Memory limit |
| additionalConfig.resources.memReq | string | `""` | Memory request |
| additionalConfig.resources.pvcLim | string | `""` | PVC storage limit |
| additionalConfig.resources.pvcReq | string | `""` | PVC storage request |
| additionalConfig.security | object | `{"disableRoot":true}` |  |
| additionalConfig.security.disableRoot | bool | `true` | Disable root for pods created by Core |
| additionalConfig.service | object | `{"type":"NodePort"}` |  |
| additionalConfig.service.type | string | `"NodePort"` | Service type for pods created by Core |
| affinity | object | `{}` | Affinity for pod assignment. |
| argoWorkflow | object | `{"configmap":"artifact-repositories","key":"default-artifact-repository","serviceAccount":"default","user":"1000"}` | Argoworkflow configuration |
| argoWorkflow.configmap | string | `"artifact-repositories"` | Name of the configmap containing the artifact repositories that the Argo Workflows should use  test test |
| argoWorkflow.key | string | `"default-artifact-repository"` | Key of the artifact repository in the configmap |
| argoWorkflow.serviceAccount | string | `"default"` | Service account name. |
| argoWorkflow.user | string | `"1000"` |  |
| authentication | object | `{"basic":{"enabled":true,"password":"","username":""},"openId":{"enabled":false,"externalSecret":{"key":"","name":""},"issuerUri":"","jwtAudience":"","jwtClaim":"","jwtUsername":"","oidcClientId":"","scope":""}}` | Authentication configuration |
| authentication.basic | object | `{"enabled":true,"password":"","username":""}` | Basic Auth values |
| authentication.basic.enabled | bool | `true` | Enable/disable basicAuth authentication |
| authentication.basic.password | string | `""` | BasicAuth password |
| authentication.basic.username | string | `""` | BasicAuth username |
| authentication.openId | object | `{"enabled":false,"externalSecret":{"key":"","name":""},"issuerUri":"","jwtAudience":"","jwtClaim":"","jwtUsername":"","oidcClientId":"","scope":""}` | OpenID Auth values |
| authentication.openId.enabled | bool | `false` | Enable/disable openId authentication |
| authentication.openId.externalSecret | object | `{"key":"","name":""}` | Reference to the Core OpenID Secret |
| authentication.openId.externalSecret.key | string | `""` | Key of the openId clientId |
| authentication.openId.externalSecret.name | string | `""` | OpenID secret name |
| authentication.openId.issuerUri | string | `""` | OpenId Issuer url |
| authentication.openId.jwtAudience | string | `""` | OpenId JWT Audience |
| authentication.openId.jwtClaim | string | `""` | OpenId JWT claims |
| authentication.openId.jwtUsername | string | `""` | OpenId JWT username |
| authentication.openId.oidcClientId | string | `""` | OpenId JWT clientID |
| authentication.openId.scope | string | `""` | OpenId JWT Scopes |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Adjusts the number of replicas in a workload to match observed resource utilization such as CPU or memory usage. |
| autoscaling.enabled | bool | `false` | Enable horizontal scaling |
| autoscaling.maxReplicas | int | `100` | Set max replicas for autoscaling |
| autoscaling.minReplicas | int | `1` | Set min replicas for autoscaling |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | Set CPU utilization percentage that trigger the autoscaling  |
| configmapAdditionalEnv | object | `{}` | Additional environment variables for the Core configmap, MUST be specified in key/value format |
| coreAuthCreds | object | `{"clientId":"","clientSecret":""}` |  |
| coreAuthCreds.clientId | string | `""` | Core clientId |
| coreAuthCreds.clientSecret | string | `""` | Core clientSecret |
| coreTokens | object | `{"accessTokenDuration":"43200","refreshTokenDuration":"86400"}` |  |
| coreTokens.accessTokenDuration | string | `"43200"` | Duration of the access token generated by Core in seconds |
| coreTokens.refreshTokenDuration | string | `"86400"` | Duration of the refresh token generated by Core in seconds |
| corsOrigin | string | `""` |  |
| databaseProvider | object | `{"database":"","host":"","port":""}` |  |
| databaseProvider.database | string | `""` | Name of the main database of the platform |
| databaseProvider.host | string | `""` | Host of the main database of the platform |
| databaseProvider.port | string | `""` | Port of the main database of the platform |
| defaultStorageClass | string | `""` | Default storage class that should be used |
| fullnameOverride | string | `""` | String to fully override `core.fullname` template. |
| global | object | `{"externalHostAddress":"","externalTls":false,"registry":{"email":"","password":"","secretName":"","url":"","username":""}}` |  |
| global.externalHostAddress | string | `""` |  |
| global.externalTls | bool | `false` |  |
| global.registry | object | `{"email":"","password":"","secretName":"","url":"","username":""}` | Values of your registry |
| global.registry.email | string | `""` | Registry email |
| global.registry.password | string | `""` | Registry password |
| global.registry.secretName | string | `""` | Name of the secret of your registry. It has higher priority. |
| global.registry.url | string | `""` | Registry url |
| global.registry.username | string | `""` | Registry username |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"ghcr.io/scc-digitalhub/digitalhub-core","tag":""}` |  |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.repository | string | `"ghcr.io/scc-digitalhub/digitalhub-core"` | Image repository |
| image.tag | string | `""` | Image tag |
| imagePullSecrets | list | `[]` |  |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"core.home","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"tls":[]}` | Ingress configurations. |
| ingress.annotations | object | `{}` | Ingress annotations (values are templated). |
| ingress.className | string | `""` | Ingress Class Name. MAY be required for Kubernetes versions >= 1.18- |
| ingress.enabled | bool | `false` | Enables Ingress. |
| ingress.hosts | list | `[{"host":"core.home","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | Ingress accepted hostnames. |
| ingress.tls | list | `[]` | Ingress TLS configuration. |
| initImage | object | `{"builderTool":{"image":"ghcr.io/scc-digitalhub/digitalhub-core-builder-tool","tag":"b95c095f"}}` |  |
| initImage.builderTool | object | `{"image":"ghcr.io/scc-digitalhub/digitalhub-core-builder-tool","tag":"b95c095f"}` |  |
| initImage.builderTool.image | string | `"ghcr.io/scc-digitalhub/digitalhub-core-builder-tool"` | Cpre builder repository |
| initImage.builderTool.tag | string | `"b95c095f"` | Core builder tag |
| kanikoArgs | string | `""` |  |
| keystore | object | `{"existingSecret":{"keyName":"","secretName":""},"keystoreKid":"","keystorePath":"/etc/keystore"}` |  |
| keystore.existingSecret | object | `{"keyName":"","secretName":""}` | Reference to the Keystore secret of Core |
| keystore.existingSecret.keyName | string | `""` |  |
| keystore.existingSecret.secretName | string | `""` | Name of the keystore secret |
| keystore.keystoreKid | string | `""` |  |
| keystore.keystorePath | string | `"/etc/keystore"` | Path in which the Keystore will be mounted |
| kubeai | object | `{"enabled":true,"port":"","serviceName":""}` |  |
| kubeai.enabled | bool | `true` | Enable/disable KubeAI |
| kubeai.port | string | `""` | KubeAi port |
| kubeai.serviceName | string | `""` | Kubei service name |
| lucene | object | `{"indexPath":false,"reindex":"never"}` |  |
| lucene.indexPath | bool | `false` | Set the path for Lucene and enables it |
| lucene.reindex | string | `"never"` | Reindex of Lucene |
| nameOverride | string | `""` | String to partially override `core.fullname` template (will maintain the release name) |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` | Annotations to add to each pod. |
| podLabels | object | `{}` | Labels to add to each pod. |
| podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | [Security context for pod](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/) |
| podSecurityContext.runAsNonRoot | bool | `true` | Pod allow run as root. |
| podSecurityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | Pod configure seccompProfile. |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` | Pod configure seccompProfile type. |
| postgres | object | `{"credentials":{"existingSecret":{"name":"","passwordKey":null,"usernameKey":null},"password":"","username":""},"database":"","host":"","port":"","schema":""}` |  |
| postgres.credentials | object | `{"existingSecret":{"name":"","passwordKey":null,"usernameKey":null},"password":"","username":""}` |  |
| postgres.credentials.existingSecret | object | `{"name":"","passwordKey":null,"usernameKey":null}` |  |
| postgres.credentials.existingSecret.name | string | `""` | Secret containing the Core database admin user credentials |
| postgres.credentials.existingSecret.passwordKey | string | `nil` | Core db admin password key |
| postgres.credentials.existingSecret.usernameKey | string | `nil` | Core db admin username key |
| postgres.credentials.password | string | `""` | Core db admin password |
| postgres.credentials.username | string | `""` | Core db admin username |
| postgres.database | string | `""` | Name of the Core database |
| postgres.host | string | `""` | Host of the Core database |
| postgres.port | string | `""` | Port of the Core database |
| postgres.schema | string | `""` | Schema of the Core database |
| registry | object | `{"kaniko":{"imagePrefix":""}}` |  |
| registry.kaniko | object | `{"imagePrefix":""}` |  |
| registry.kaniko.imagePrefix | string | `""` |  |
| replicaCount | int | `1` | Desired number of pods |
| resources | object | `{"limits":{"cpu":"1000m","memory":"512Mi"},"requests":{"cpu":"200m","memory":"256Mi"}}` | Pod resource requests and limits. |
| resources.limits | object | `{"cpu":"1000m","memory":"512Mi"}` |  |
| resources.limits.cpu | string | `"1000m"` | Max cpu request |
| resources.limits.memory | string | `"512Mi"` | Max memory request |
| resources.requests | object | `{"cpu":"200m","memory":"256Mi"}` |  |
| resources.requests.cpu | string | `"200m"` | Min cpu request |
| resources.requests.memory | string | `"256Mi"` | Max cpu request |
| runtime | object | `{"dbt":{"image":"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-dbt/wrapper-dbt","tag":"0.11.0"},"huggingFace":{"image":"kserve/huggingfaceserver","tag":"v0.14.0"},"kfp":{"image":"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-kfp/wrapper-kfp","tag":"0.11.0"},"python":{"image":"ghcr.io/scc-digitalhub/digitalhub-serverless/python-runtime","tag3_10":"3.10-0.11.0","tag3_11":"3.11-0.11.0","tag3_9":"3.9-0.11.0"}}` |  |
| runtime.dbt | object | `{"image":"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-dbt/wrapper-dbt","tag":"0.11.0"}` |  |
| runtime.dbt.image | string | `"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-dbt/wrapper-dbt"` | DBT wrapper repository |
| runtime.dbt.tag | string | `"0.11.0"` | DBT wrapper tag |
| runtime.huggingFace | object | `{"image":"kserve/huggingfaceserver","tag":"v0.14.0"}` |  |
| runtime.huggingFace.image | string | `"kserve/huggingfaceserver"` | HuggingFaceServer repository |
| runtime.huggingFace.tag | string | `"v0.14.0"` | HuggingFaceServer tag |
| runtime.kfp | object | `{"image":"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-kfp/wrapper-kfp","tag":"0.11.0"}` |  |
| runtime.kfp.image | string | `"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-kfp/wrapper-kfp"` | KFP wrapper repository |
| runtime.kfp.tag | string | `"0.11.0"` | KFP wrapper tag |
| runtime.python | object | `{"image":"ghcr.io/scc-digitalhub/digitalhub-serverless/python-runtime","tag3_10":"3.10-0.11.0","tag3_11":"3.11-0.11.0","tag3_9":"3.9-0.11.0"}` |  |
| runtime.python.image | string | `"ghcr.io/scc-digitalhub/digitalhub-serverless/python-runtime"` | Python runtime repository |
| runtime.python.tag3_10 | string | `"3.10-0.11.0"` | Python runtime 3.10  tag |
| runtime.python.tag3_11 | string | `"3.11-0.11.0"` | Python runtime 3.11 tag |
| runtime.python.tag3_9 | string | `"3.9-0.11.0"` | Python runtime 3.9 tag |
| s3 | object | `{"accessKey":"","bucket":"","dynamicCreds":{"enabled":false},"enabled":false,"endpoint":"","existingSecret":{"accessKeyKey":"","name":"","secretKeyKey":""},"port":"","protocol":"http","publicUrl":"","region":"","secretKey":""}` |  |
| s3.accessKey | string | `""` | Explicit declaration of the Access key of your S3 instance.  It has lower priority than the corresponding secret values. |
| s3.bucket | string | `""` | Bucket of your S3 instance |
| s3.dynamicCreds | object | `{"enabled":false}` |  |
| s3.dynamicCreds.enabled | bool | `false` | Set this to true if you want to use dynamic credentials for S3 communication |
| s3.enabled | bool | `false` | Enable this option if you have an S3 deployment that you want to use with Core |
| s3.endpoint | string | `""` | Endpoint of your S3 instance |
| s3.existingSecret | object | `{"accessKeyKey":"","name":"","secretKeyKey":""}` | Reference to the secret containing AccessKey and Secret key of your S3 instance.  These values have higher priority than the explicit declarations. |
| s3.existingSecret.accessKeyKey | string | `""` | Key corresponding to your accessKey in your secret  |
| s3.existingSecret.name | string | `""` | Secret containing accessKey and secretKey of your s3 instance |
| s3.existingSecret.secretKeyKey | string | `""` | Key corresponding to your secretKey in your secret  |
| s3.port | string | `""` | Port of your S3 instance |
| s3.protocol | string | `"http"` | Protocol of your S3 instance (http/https) |
| s3.publicUrl | string | `""` | Public url of your S3 instance |
| s3.region | string | `""` | Region used by your S3 instance |
| s3.secretKey | string | `""` | Explicit declaration of the Secret key of your S3 instance.  It has lower priority than the corresponding secret values. |
| securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | Core [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/) |
| securityContext.allowPrivilegeEscalation | bool | `false` | Core container allow privilege escalation. |
| securityContext.capabilities | object | `{"drop":["ALL"]}` | Core container configure capabilities. |
| securityContext.capabilities.drop | list | `["ALL"]` | Core container drop capabilities. |
| securityContext.runAsNonRoot | bool | `true` | Core container allow run as root. |
| securityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | Core container configure seccompProfile. |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` | Core container configure seccompProfile type. |
| service | object | `{"httpNodePort":"","port":"8080","type":"ClusterIP"}` | Service configurations. |
| service.httpNodePort | string | `""` | Service NodePort. |
| service.port | string | `"8080"` | Service port. |
| service.type | string | `"ClusterIP"` | Service type. |
| serviceAccount | object | `{"annotations":{},"automount":true,"create":true,"name":"core"}` | Service account configuration. |
| serviceAccount.annotations | object | `{}` | Additional Service Account annotations. |
| serviceAccount.automount | bool | `true` | Automount API credentials for a Service Account. |
| serviceAccount.create | bool | `true` | If `true` a Service Account will be created. |
| serviceAccount.name | string | `"core"` | Service account name. |
| solr | object | `{"collection":{"initialize":{"enabled":true,"image":"smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot","securityJsonSecret":""},"name":""},"enabled":false,"fullNameOverride":"","url":"","user":""}` | Solr configuration |
| solr.collection | object | `{"initialize":{"enabled":true,"image":"smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot","securityJsonSecret":""},"name":""}` | Solr collection configuration |
| solr.collection.initialize | object | `{"enabled":true,"image":"smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot","securityJsonSecret":""}` |  |
| solr.collection.initialize.enabled | bool | `true` | Enable/Disable Solr collection initialization by script, use it if you have set Basic Auth for Solr |
| solr.collection.initialize.image | string | `"smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot"` | Initialization image |
| solr.collection.initialize.securityJsonSecret | string | `""` | Name of the secret containing the Solr security.json |
| solr.collection.name | string | `""` | Name of the Solr collection |
| solr.enabled | bool | `false` | Set this value to true this value if you want to use Core with Solr |
| solr.fullNameOverride | string | `""` |  |
| solr.url | string | `""` |  |
| solr.user | string | `""` | Specify the solr user |
| sts | object | `{"affinity":{},"autoscaling":{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80},"client":{"clientId":"","clientSecret":"","existingSecret":{"clientIdKey":"","clientSecretKey":"","name":""}},"credentials":{"roles":""},"databaseProvider":{"credentials":{"existingSecret":{"name":"","passwordKey":"","usernameKey":""},"password":"","username":""},"enabled":true},"enabled":false,"fullnameOverride":"","image":{"pullPolicy":"IfNotPresent","repository":"ghcr.io/scc-digitalhub/db-sts","tag":"0.3.0"},"imagePullSecrets":[],"jwt":{"audience":"sts","claim":"db/role","issuerUri":"http://digitalhub-core:8080"},"nameOverride":"","nodeSelector":{},"podAnnotations":{},"podLabels":{},"podSecurityContext":{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"replicaCount":1,"resources":{"limits":{"cpu":"200m","memory":"256Mi"},"requests":{"cpu":"100m","memory":"128Mi"}},"securityContext":{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}},"service":{"port":8080,"type":"ClusterIP"},"serviceAccount":{"annotations":{},"automount":true,"create":true,"name":"core-sts"},"stsDb":{"credentials":{"existingSecret":{"name":"","passwordKey":"","usernameKey":""},"password":"","username":""},"database":"","driver":"","host":"","platform":"","port":"","schema":""},"tolerations":[],"volumeMounts":[],"volumes":[]}` |  |
| sts.affinity | object | `{}` | Affinity for pod assignment. |
| sts.autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Adjusts the number of replicas in a workload to match observed resource utilization such as CPU or memory usage. |
| sts.autoscaling.enabled | bool | `false` | Enable horizontal scaling |
| sts.autoscaling.maxReplicas | int | `100` | Set max replicas for autoscaling |
| sts.autoscaling.minReplicas | int | `1` | Set min replicas for autoscaling |
| sts.autoscaling.targetCPUUtilizationPercentage | int | `80` | Set CPU utilization percentage that trigger the autoscaling |
| sts.client | object | `{"clientId":"","clientSecret":"","existingSecret":{"clientIdKey":"","clientSecretKey":"","name":""}}` |  |
| sts.client.clientId | string | `""` | ClientID used by STS |
| sts.client.clientSecret | string | `""` | ClientSecret used by STS |
| sts.client.existingSecret | object | `{"clientIdKey":"","clientSecretKey":"","name":""}` |  |
| sts.client.existingSecret.clientIdKey | string | `""` | Key corresponding to the STS ClientID |
| sts.client.existingSecret.clientSecretKey | string | `""` | Key corresponding to the STS ClientSecret |
| sts.client.existingSecret.name | string | `""` | Name of the secret containing STS ClientID and ClientSecret |
| sts.credentials | object | `{"roles":""}` |  |
| sts.credentials.roles | string | `""` | Roles that will be mapped to the user for Database operations. Must correspond to the owner user of the Platform's main database. |
| sts.databaseProvider | object | `{"credentials":{"existingSecret":{"name":"","passwordKey":"","usernameKey":""},"password":"","username":""},"enabled":true}` | Values for the Platform's main database |
| sts.databaseProvider.credentials | object | `{"existingSecret":{"name":"","passwordKey":"","usernameKey":""},"password":"","username":""}` | Credentials of the Platform's main database |
| sts.databaseProvider.credentials.existingSecret | object | `{"name":"","passwordKey":"","usernameKey":""}` | Reference to the secret containing username and password of the Platform's main database owner user.  These values have higher priority than the explicit declarations. |
| sts.databaseProvider.credentials.existingSecret.name | string | `""` | Name of the secret containing username and password of the Platform's main database owner user |
| sts.databaseProvider.credentials.existingSecret.passwordKey | string | `""` | Key corresponding to the Platform's main database owner user password |
| sts.databaseProvider.credentials.existingSecret.usernameKey | string | `""` | Key corresponding to the Platform's main database owner user username |
| sts.databaseProvider.credentials.password | string | `""` | Explicit declaration of the Platform's main database owner user password.  It has lower priority than the corresponding secret values. |
| sts.databaseProvider.credentials.username | string | `""` | Explicit declaration of the Platform's main database owner user username.  It has lower priority than the corresponding secret values. |
| sts.databaseProvider.enabled | bool | `true` | Enable/Disable dynamic credentials for Postgres operations. |
| sts.enabled | bool | `false` | Enable/Disable STS component for dynamic credentials (Both for Postgres and S3 operations) |
| sts.fullnameOverride | string | `""` | String to fully override `core.fullname` template. |
| sts.image | object | `{"pullPolicy":"IfNotPresent","repository":"ghcr.io/scc-digitalhub/db-sts","tag":"0.3.0"}` |  |
| sts.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| sts.image.repository | string | `"ghcr.io/scc-digitalhub/db-sts"` | STS container image repository. |
| sts.image.tag | string | `"0.3.0"` | STS container image tag. |
| sts.imagePullSecrets | list | `[]` | Image pull secrets.  Optionally specify an array of imagePullSecrets.  Secrets must be manually created in the namespace.  ref: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/ |
| sts.jwt | object | `{"audience":"sts","claim":"db/role","issuerUri":"http://digitalhub-core:8080"}` |  |
| sts.jwt.audience | string | `"sts"` | JWT audience, must be sts. |
| sts.jwt.claim | string | `"db/role"` | JWT claim, must be db/role |
| sts.jwt.issuerUri | string | `"http://digitalhub-core:8080"` | URL of the JWT issuer. |
| sts.nameOverride | string | `""` | String to partially override `core.fullname` template (will maintain the release name) |
| sts.nodeSelector | object | `{}` | Node labels for pod assignment. Ref: https://kubernetes.io/docs/user-guide/node-selection/. |
| sts.podAnnotations | object | `{}` | Annotations to add to each pod. |
| sts.podLabels | object | `{}` | Labels to add to each pod. |
| sts.podSecurityContext | object | `{"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | [Security context for pod](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/) |
| sts.podSecurityContext.runAsNonRoot | bool | `true` | Pod allow run as root. |
| sts.podSecurityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | Pod configure seccompProfile. |
| sts.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` | Pod configure seccompProfile type. |
| sts.replicaCount | int | `1` | Desired number of pods. |
| sts.resources | object | `{"limits":{"cpu":"200m","memory":"256Mi"},"requests":{"cpu":"100m","memory":"128Mi"}}` | STS container resource requests and limits. |
| sts.resources.limits | object | `{"cpu":"200m","memory":"256Mi"}` | STS container imits |
| sts.resources.limits.cpu | string | `"200m"` | CPU limit |
| sts.resources.limits.memory | string | `"256Mi"` | Memory limit |
| sts.resources.requests | object | `{"cpu":"100m","memory":"128Mi"}` | STS container requests |
| sts.resources.requests.cpu | string | `"100m"` | CPU request |
| sts.resources.requests.memory | string | `"128Mi"` | Memory request |
| sts.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` | STS [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/) |
| sts.securityContext.allowPrivilegeEscalation | bool | `false` | STS allow privilege escalation |
| sts.securityContext.capabilities | object | `{"drop":["ALL"]}` | STS container configure capabilities |
| sts.securityContext.capabilities.drop | list | `["ALL"]` | STS container drop capabilities |
| sts.securityContext.runAsNonRoot | bool | `true` | STS container allow run as root |
| sts.securityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` | STS container configure seccompProfile |
| sts.securityContext.seccompProfile.type | string | `"RuntimeDefault"` | STS container configure seccompProfile type |
| sts.service | object | `{"port":8080,"type":"ClusterIP"}` | STS service configurations |
| sts.service.port | int | `8080` | STS service port |
| sts.service.type | string | `"ClusterIP"` | STS service type |
| sts.serviceAccount | object | `{"annotations":{},"automount":true,"create":true,"name":"core-sts"}` | STS service account configuration |
| sts.serviceAccount.annotations | object | `{}` | Additional STS Service Account annotations. |
| sts.serviceAccount.automount | bool | `true` | Automount API credentials for a STS Service Account. |
| sts.serviceAccount.create | bool | `true` | If `true` a STS Service Account will be created. |
| sts.serviceAccount.name | string | `"core-sts"` | STS service account name. |
| sts.stsDb | object | `{"credentials":{"existingSecret":{"name":"","passwordKey":"","usernameKey":""},"password":"","username":""},"database":"","driver":"","host":"","platform":"","port":"","schema":""}` | Values of the STS database |
| sts.stsDb.credentials | object | `{"existingSecret":{"name":"","passwordKey":"","usernameKey":""},"password":"","username":""}` | Credentials of the STS database |
| sts.stsDb.credentials.existingSecret | object | `{"name":"","passwordKey":"","usernameKey":""}` | Reference to the secret containing username and password of the STS database user.  These values have higher priority than the explicit declarations. |
| sts.stsDb.credentials.existingSecret.name | string | `""` | Name of the secret containing username and password of the STS database user |
| sts.stsDb.credentials.existingSecret.passwordKey | string | `""` | Key corresponding to the STS database user password |
| sts.stsDb.credentials.existingSecret.usernameKey | string | `""` | Key corresponding to the STS database user username |
| sts.stsDb.credentials.password | string | `""` | Explicit declaration of the STS database user password.  It has lower priority than the corresponding secret values. |
| sts.stsDb.credentials.username | string | `""` | Explicit declaration of the STS database user username.  It has lower priority than the corresponding secret values. |
| sts.stsDb.database | string | `""` | Name of the STS database |
| sts.stsDb.driver | string | `""` | Driver used by the STS database |
| sts.stsDb.host | string | `""` | Host of the STS database |
| sts.stsDb.platform | string | `""` | Which kind of database you are using for STS (For example, postgresql) |
| sts.stsDb.port | string | `""` | STS Database port |
| sts.stsDb.schema | string | `""` | STS database schema |
| sts.tolerations | list | `[]` | List of node taints to tolerate (requires Kubernetes >= 1.6). |
| sts.volumeMounts | list | `[]` | Additional volumes. |
| sts.volumes | list | `[]` | Additional volumes to mount. |
| templates | list | `[]` | Specify Core templates in list format.  Every template should correspond to a key in a configmap dedicated to the templates. |
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
