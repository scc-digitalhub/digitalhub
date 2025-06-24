# aac

![Version: 0.1.15](https://img.shields.io/badge/Version-0.1.15-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 5.3.0](https://img.shields.io/badge/AppVersion-5.3.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ffais |  | <https://github.com/ffais> |
| calcagiara |  | <https://github.com/Calcagiara> |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| adminCreds.password | string | `"admin"` |  |
| adminCreds.username | string | `"admin"` |  |
| adminExistingCreds.existingSecret | string | `""` |  |
| adminExistingCreds.passKey | string | `""` |  |
| adminExistingCreds.userKey | string | `""` |  |
| affinity | object | `{}` |  |
| appCreds.existingSecret | string | `""` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| bootstrap | list | `[]` |  |
| bootstrapCreds.existingSecret | string | `""` |  |
| config.applicationExtUrl | string | `""` |  |
| config.bootstrap | string | `"file:///home/aac/bootstrap.yaml"` |  |
| config.bootstrapApply | string | `"true"` |  |
| config.cacheJwks | string | `"public, max-age=3600, must-revalidate, no-transform"` |  |
| config.jdbcDialect | string | `"org.hibernate.dialect.H2Dialect"` |  |
| config.jdbcDriver | string | `"org.h2.Driver"` |  |
| config.jdbcUrl | string | `"jdbc:h2:file:./data/db"` |  |
| config.keystorePath | string | `""` |  |
| config.logLevel | string | `"DEBUG"` |  |
| config.mailDebug | string | `"false"` |  |
| config.mailHost | string | `""` |  |
| config.mailPort | int | `465` |  |
| config.mailProtocol | string | `"smtps"` |  |
| config.mailSender | string | `""` |  |
| config.mailTls | string | `"false"` |  |
| fullnameOverride | string | `""` |  |
| global.externalHostAddress | string | `""` |  |
| image.aacCommand1 | string | `"java"` |  |
| image.aacCommand2 | string | `"org.springframework.boot.loader.JarLauncher"` |  |
| image.aacCommand3 | string | `"-Dspring-boot.run.arguments=--logging.level.ROOT=DEBUG"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/scc-digitalhub/aac"` |  |
| image.tag | string | `"5.3.0-beta1"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `""` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls[0].hosts[0] | string | `""` |  |
| ingress.tls[0].secretName | string | `""` |  |
| jdbcExistingCreds.existingSecret | string | `""` |  |
| jdbcExistingCreds.passwordKey | string | `""` |  |
| jdbcExistingCreds.userKey | string | `""` |  |
| jdbcH2creds.password | string | `""` |  |
| jdbcH2creds.user | string | `""` |  |
| keystore.keyName | string | `""` |  |
| keystore.secretName | string | `""` |  |
| mailCreds.existingSecret | string | `""` |  |
| mailCreds.passwordKey | string | `""` |  |
| mailCreds.usernameKey | string | `""` |  |
| mailSecret.password | string | `"testPassword"` |  |
| mailSecret.user | string | `"test@user.it"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| podSecurityContext.fsGroup | int | `805` |  |
| podSecurityContext.runAsGroup | int | `805` |  |
| podSecurityContext.runAsUser | int | `805` |  |
| postgresOperator.adminUser | string | `""` |  |
| postgresOperator.database | string | `""` |  |
| postgresOperator.installed | bool | `false` |  |
| postgresOperator.psqlClusterName | string | `""` |  |
| postgresOperator.user | string | `""` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"1000m"` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"256Mi"` |  |
| secrets.annotations | object | `{}` |  |
| secrets.reflector.enabled | bool | `false` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `805` |  |
| service.httpNodePort | string | `""` |  |
| service.port | string | `"8080"` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `"aac"` |  |
| tolerations | list | `[]` |  |
| volumeMounts[0].mountPath | string | `"/home/aac/bootstrap.yaml"` |  |
| volumeMounts[0].name | string | `"aac-volume"` |  |
| volumeMounts[0].subPath | string | `"bootstrap.yaml"` |  |
| volumes[0].name | string | `"aac-volume"` |  |
| volumes[0].secret.secretName | string | `"aac-bootstrap-secret"` |  |

