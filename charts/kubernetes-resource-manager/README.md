<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# A manager for resources in Kubernetes. The tool allows for monitoring and managing some of the standard Kubernetes resources (PersistentVolumeClaim, Services, Deployments, Jobs, and Secrets) as well as for managing a selection of Custom Resources.

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/kubernetes-resource-manager/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=A manager for resources in Kubernetes. The tool allows for monitoring and managing some of the standard Kubernetes resources (PersistentVolumeClaim, Services, Deployments, Jobs, and Secrets) as well as for managing a selection of Custom Resources.*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.2.8](https://img.shields.io/badge/Version-0.2.8-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.2.3](https://img.shields.io/badge/AppVersion-1.2.3-informational?style=flat-square)

A Helm chart for Kubernetes

A manager for resources in Kubernetes. The tool allows for monitoring and managing some of the standard Kubernetes resources (PersistentVolumeClaim, Services, Deployments, Jobs, and Secrets) as well as for managing a selection of Custom Resources. is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities. To bootstrap the platform in its entirety please explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

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
5. Install A manager for resources in Kubernetes. The tool allows for monitoring and managing some of the standard Kubernetes resources (PersistentVolumeClaim, Services, Deployments, Jobs, and Secrets) as well as for managing a selection of Custom Resources. with Helm:
```sh
    helm upgrade A manager for resources in Kubernetes. The tool allows for monitoring and managing some of the standard Kubernetes resources (PersistentVolumeClaim, Services, Deployments, Jobs, and Secrets) as well as for managing a selection of Custom Resources. digitalhub/A manager for resources in Kubernetes. The tool allows for monitoring and managing some of the standard Kubernetes resources (PersistentVolumeClaim, Services, Deployments, Jobs, and Secrets) as well as for managing a selection of Custom Resources. -n A manager for resources in Kubernetes. The tool allows for monitoring and managing some of the standard Kubernetes resources (PersistentVolumeClaim, Services, Deployments, Jobs, and Secrets) as well as for managing a selection of Custom Resources. --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace A manager for resources in Kubernetes. The tool allows for monitoring and managing some of the standard Kubernetes resources (PersistentVolumeClaim, Services, Deployments, Jobs, and Secrets) as well as for managing a selection of Custom Resources. get pods
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| env | object | `{"additionalEnv":{}}` |  |
| env.additionalEnv | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| global | object | `{"externalHostAddress":"","externalTls":false}` |  |
| global.externalHostAddress | string | `""` |  |
| global.externalTls | bool | `false` |  |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"ghcr.io/scc-digitalhub/kubernetes-resource-manager","tag":""}` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/scc-digitalhub/kubernetes-resource-manager"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"tls":[]}` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts | list | `[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| namespaceValues | object | `{"defaultValue":"*","namespace":""}` |  |
| namespaceValues.defaultValue | string | `"*"` |  |
| namespaceValues.namespace | string | `""` |  |
| nodeSelector | object | `{}` |  |
| oidc | object | `{"access":{"roles":[]},"audience":{"clientId":"","externalSecret":{"key":"","name":""}},"authType":"","enabled":false,"issuer":"","redirectUrl":"","roleClaim":"","scope":""}` |  |
| oidc.access | object | `{"roles":[]}` |  |
| oidc.access.roles | list | `[]` |  |
| oidc.audience | object | `{"clientId":"","externalSecret":{"key":"","name":""}}` |  |
| oidc.audience.clientId | string | `""` |  |
| oidc.audience.externalSecret | object | `{"key":"","name":""}` |  |
| oidc.audience.externalSecret.key | string | `""` |  |
| oidc.audience.externalSecret.name | string | `""` |  |
| oidc.authType | string | `""` |  |
| oidc.enabled | bool | `false` |  |
| oidc.issuer | string | `""` |  |
| oidc.redirectUrl | string | `""` |  |
| oidc.roleClaim | string | `""` |  |
| oidc.scope | string | `""` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{"fsGroup":65532,"runAsGroup":65532,"runAsNonRoot":true,"runAsUser":65532,"seccompProfile":{"type":"RuntimeDefault"}}` |  |
| podSecurityContext.fsGroup | int | `65532` |  |
| podSecurityContext.runAsGroup | int | `65532` |  |
| podSecurityContext.runAsNonRoot | bool | `true` |  |
| podSecurityContext.runAsUser | int | `65532` |  |
| podSecurityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| rbac | object | `{"clusterRole":{"create":true},"namespaced":true,"roles":[{"apiGroups":"db.movetokube.com","crd":true,"resources":["postgresusers","postgres"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"operator.dremiorestserver.com","crd":true,"resources":["dremiorestservers"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"operator.postgrest.org","crd":true,"resources":["postgrests"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"minio.scc-digitalhub.github.io","crd":true,"resources":["buckets","policies","users"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"operator.scc-digitalhub.github.io","crd":true,"resources":["apigws"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"batch","crd":false,"resources":["jobs"],"verbs":["get","list","delete"]},{"apiGroups":"apps","crd":false,"resources":["deployments","replicasets"],"verbs":["get","list"]},{"apiGroups":"","crd":false,"resources":["persistentvolumeclaims"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"","crd":false,"resources":["services"],"verbs":["get","list"]},{"apiGroups":"","crd":false,"resources":["secrets"],"verbs":["get","list"]},{"apiGroups":"","resources":["pods","pods/log"],"verbs":["get","list","create"]},{"apiGroups":"","resources":["resourcequotas"],"verbs":["get","list"]}]}` |  |
| rbac.clusterRole | object | `{"create":true}` |  |
| rbac.clusterRole.create | bool | `true` |  |
| rbac.namespaced | bool | `true` |  |
| rbac.roles | list | `[{"apiGroups":"db.movetokube.com","crd":true,"resources":["postgresusers","postgres"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"operator.dremiorestserver.com","crd":true,"resources":["dremiorestservers"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"operator.postgrest.org","crd":true,"resources":["postgrests"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"minio.scc-digitalhub.github.io","crd":true,"resources":["buckets","policies","users"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"operator.scc-digitalhub.github.io","crd":true,"resources":["apigws"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"batch","crd":false,"resources":["jobs"],"verbs":["get","list","delete"]},{"apiGroups":"apps","crd":false,"resources":["deployments","replicasets"],"verbs":["get","list"]},{"apiGroups":"","crd":false,"resources":["persistentvolumeclaims"],"verbs":["get","list","create","delete","patch"]},{"apiGroups":"","crd":false,"resources":["services"],"verbs":["get","list"]},{"apiGroups":"","crd":false,"resources":["secrets"],"verbs":["get","list"]},{"apiGroups":"","resources":["pods","pods/log"],"verbs":["get","list","create"]},{"apiGroups":"","resources":["resourcequotas"],"verbs":["get","list"]}]` |  |
| replicaCount | int | `1` |  |
| resourceSelectors | object | `{"deployments":"app.kubernetes.io/managed-by=postgrest-operator|app.kubernetes.io/managed-by=dremiorestserver-operator|app.kubernetes.io/type=workspace|app.kubernetes.io/managed-by=dhcore","jobs":"app.kubernetes.io/managed-by=dhcore","pvcs":{"labels":"app.kubernetes.io/managed-by=krm","managedBy":"krm"},"secrets":{"labels":"","names":"(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*","owners":"db.movetokube.com/v1alpha1"},"services":"app.kubernetes.io/type=service|app.kubernetes.io/managed-by=postgrest-operator|app.kubernetes.io/managed-by=dremiorestserver-operator|com.coder.resource=true|app.kubernetes.io/managed-by=dhcore"}` |  |
| resourceSelectors.deployments | string | `"app.kubernetes.io/managed-by=postgrest-operator|app.kubernetes.io/managed-by=dremiorestserver-operator|app.kubernetes.io/type=workspace|app.kubernetes.io/managed-by=dhcore"` |  |
| resourceSelectors.jobs | string | `"app.kubernetes.io/managed-by=dhcore"` |  |
| resourceSelectors.pvcs | object | `{"labels":"app.kubernetes.io/managed-by=krm","managedBy":"krm"}` |  |
| resourceSelectors.pvcs.labels | string | `"app.kubernetes.io/managed-by=krm"` |  |
| resourceSelectors.pvcs.managedBy | string | `"krm"` |  |
| resourceSelectors.secrets | object | `{"labels":"","names":"(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*","owners":"db.movetokube.com/v1alpha1"}` |  |
| resourceSelectors.secrets.labels | string | `""` |  |
| resourceSelectors.secrets.names | string | `"(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*"` |  |
| resourceSelectors.secrets.owners | string | `"db.movetokube.com/v1alpha1"` |  |
| resourceSelectors.services | string | `"app.kubernetes.io/type=service|app.kubernetes.io/managed-by=postgrest-operator|app.kubernetes.io/managed-by=dremiorestserver-operator|com.coder.resource=true|app.kubernetes.io/managed-by=dhcore"` |  |
| resources | object | `{}` |  |
| securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"runAsNonRoot":true,"seccompProfile":{"type":"RuntimeDefault"}}` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities | object | `{"drop":["ALL"]}` |  |
| securityContext.capabilities.drop | list | `["ALL"]` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.seccompProfile | object | `{"type":"RuntimeDefault"}` |  |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| service | object | `{"nodePort":"30160","port":8080,"type":"NodePort"}` |  |
| service.nodePort | string | `"30160"` |  |
| service.port | int | `8080` |  |
| service.type | string | `"NodePort"` |  |
| serviceAccount | object | `{"annotations":{},"create":true,"name":""}` |  |
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
