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

<table>
	<thead>
		<th>Key</th>
		<th>Type</th>
    <th>Description</th>
		<th>Default</th>
	</thead>
	<tbody>
		<tr>
			<td id="affinity"><a href="./values.yaml#L6">affinity</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="autoscaling"><a href="./values.yaml#L9">autoscaling</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "maxReplicas": 100,
  "minReplicas": 1,
  "targetCPUUtilizationPercentage": 80
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="autoscaling--enabled"><a href="./values.yaml#L11">autoscaling.enabled</a></td>
			<td>
bool
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="autoscaling--maxReplicas"><a href="./values.yaml#L13">autoscaling.maxReplicas</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
100
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="autoscaling--minReplicas"><a href="./values.yaml#L15">autoscaling.minReplicas</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L17">autoscaling.targetCPUUtilizationPercentage</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
80
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="env"><a href="./values.yaml#L20">env</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "additionalEnv": {}
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="env--additionalEnv"><a href="./values.yaml#L22">env.additionalEnv</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="fullnameOverride"><a href="./values.yaml#L25">fullnameOverride</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global"><a href="./values.yaml#L28">global</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "externalHostAddress": "",
  "externalTls": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--externalHostAddress"><a href="./values.yaml#L30">global.externalHostAddress</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--externalTls"><a href="./values.yaml#L32">global.externalTls</a></td>
			<td>
bool
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="image"><a href="./values.yaml#L35">image</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "pullPolicy": "IfNotPresent",
  "repository": "ghcr.io/scc-digitalhub/kubernetes-resource-manager",
  "tag": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="image--pullPolicy"><a href="./values.yaml#L37">image.pullPolicy</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"IfNotPresent"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="image--repository"><a href="./values.yaml#L39">image.repository</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/kubernetes-resource-manager"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="image--tag"><a href="./values.yaml#L41">image.tag</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="imagePullSecrets"><a href="./values.yaml#L44">imagePullSecrets</a></td>
			<td>
list
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ingress"><a href="./values.yaml#L47">ingress</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "annotations": {},
  "className": "",
  "enabled": false,
  "hosts": [
    {
      "host": "chart-example.local",
      "paths": [
        {
          "path": "/",
          "pathType": "ImplementationSpecific"
        }
      ]
    }
  ],
  "tls": []
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ingress--annotations"><a href="./values.yaml#L49">ingress.annotations</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ingress--className"><a href="./values.yaml#L51">ingress.className</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ingress--enabled"><a href="./values.yaml#L53">ingress.enabled</a></td>
			<td>
bool
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ingress--hosts"><a href="./values.yaml#L55">ingress.hosts</a></td>
			<td>
list
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "host": "chart-example.local",
    "paths": [
      {
        "path": "/",
        "pathType": "ImplementationSpecific"
      }
    ]
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ingress--tls"><a href="./values.yaml#L61">ingress.tls</a></td>
			<td>
list
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="nameOverride"><a href="./values.yaml#L64">nameOverride</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="namespaceValues"><a href="./values.yaml#L67">namespaceValues</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "defaultValue": "*",
  "namespace": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="namespaceValues--defaultValue"><a href="./values.yaml#L69">namespaceValues.defaultValue</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"*"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="namespaceValues--namespace"><a href="./values.yaml#L71">namespaceValues.namespace</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="nodeSelector"><a href="./values.yaml#L74">nodeSelector</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc"><a href="./values.yaml#L77">oidc</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "access": {
    "roles": []
  },
  "audience": {
    "clientId": "",
    "externalSecret": {
      "key": "",
      "name": ""
    }
  },
  "authType": "",
  "enabled": false,
  "issuer": "",
  "redirectUrl": "",
  "roleClaim": "",
  "scope": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--access"><a href="./values.yaml#L79">oidc.access</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "roles": []
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--access--roles"><a href="./values.yaml#L81">oidc.access.roles</a></td>
			<td>
list
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--audience"><a href="./values.yaml#L83">oidc.audience</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "clientId": "",
  "externalSecret": {
    "key": "",
    "name": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--audience--clientId"><a href="./values.yaml#L85">oidc.audience.clientId</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--audience--externalSecret"><a href="./values.yaml#L87">oidc.audience.externalSecret</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "key": "",
  "name": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--audience--externalSecret--key"><a href="./values.yaml#L89">oidc.audience.externalSecret.key</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--audience--externalSecret--name"><a href="./values.yaml#L91">oidc.audience.externalSecret.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--authType"><a href="./values.yaml#L93">oidc.authType</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--enabled"><a href="./values.yaml#L95">oidc.enabled</a></td>
			<td>
bool
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--issuer"><a href="./values.yaml#L97">oidc.issuer</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--redirectUrl"><a href="./values.yaml#L99">oidc.redirectUrl</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--roleClaim"><a href="./values.yaml#L101">oidc.roleClaim</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="oidc--scope"><a href="./values.yaml#L103">oidc.scope</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="podAnnotations"><a href="./values.yaml#L106">podAnnotations</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="podSecurityContext"><a href="./values.yaml#L109">podSecurityContext</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "fsGroup": 65532,
  "runAsGroup": 65532,
  "runAsNonRoot": true,
  "runAsUser": 65532,
  "seccompProfile": {
    "type": "RuntimeDefault"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="podSecurityContext--fsGroup"><a href="./values.yaml#L111">podSecurityContext.fsGroup</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
65532
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="podSecurityContext--runAsGroup"><a href="./values.yaml#L113">podSecurityContext.runAsGroup</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
65532
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="podSecurityContext--runAsNonRoot"><a href="./values.yaml#L115">podSecurityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="podSecurityContext--runAsUser"><a href="./values.yaml#L117">podSecurityContext.runAsUser</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
65532
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="podSecurityContext--seccompProfile"><a href="./values.yaml#L119">podSecurityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "type": "RuntimeDefault"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="podSecurityContext--seccompProfile--type"><a href="./values.yaml#L121">podSecurityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rbac"><a href="./values.yaml#L124">rbac</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "clusterRole": {
    "create": true
  },
  "namespaced": true,
  "roles": [
    {
      "apiGroups": "db.movetokube.com",
      "crd": true,
      "resources": [
        "postgresusers",
        "postgres"
      ],
      "verbs": [
        "get",
        "list",
        "create",
        "delete",
        "patch"
      ]
    },
    {
      "apiGroups": "operator.dremiorestserver.com",
      "crd": true,
      "resources": [
        "dremiorestservers"
      ],
      "verbs": [
        "get",
        "list",
        "create",
        "delete",
        "patch"
      ]
    },
    {
      "apiGroups": "operator.postgrest.org",
      "crd": true,
      "resources": [
        "postgrests"
      ],
      "verbs": [
        "get",
        "list",
        "create",
        "delete",
        "patch"
      ]
    },
    {
      "apiGroups": "minio.scc-digitalhub.github.io",
      "crd": true,
      "resources": [
        "buckets",
        "policies",
        "users"
      ],
      "verbs": [
        "get",
        "list",
        "create",
        "delete",
        "patch"
      ]
    },
    {
      "apiGroups": "operator.scc-digitalhub.github.io",
      "crd": true,
      "resources": [
        "apigws"
      ],
      "verbs": [
        "get",
        "list",
        "create",
        "delete",
        "patch"
      ]
    },
    {
      "apiGroups": "batch",
      "crd": false,
      "resources": [
        "jobs"
      ],
      "verbs": [
        "get",
        "list",
        "delete"
      ]
    },
    {
      "apiGroups": "apps",
      "crd": false,
      "resources": [
        "deployments",
        "replicasets"
      ],
      "verbs": [
        "get",
        "list"
      ]
    },
    {
      "apiGroups": "",
      "crd": false,
      "resources": [
        "persistentvolumeclaims"
      ],
      "verbs": [
        "get",
        "list",
        "create",
        "delete",
        "patch"
      ]
    },
    {
      "apiGroups": "",
      "crd": false,
      "resources": [
        "services"
      ],
      "verbs": [
        "get",
        "list"
      ]
    },
    {
      "apiGroups": "",
      "crd": false,
      "resources": [
        "secrets"
      ],
      "verbs": [
        "get",
        "list"
      ]
    },
    {
      "apiGroups": "",
      "resources": [
        "pods",
        "pods/log"
      ],
      "verbs": [
        "get",
        "list",
        "create"
      ]
    },
    {
      "apiGroups": "",
      "resources": [
        "resourcequotas"
      ],
      "verbs": [
        "get",
        "list"
      ]
    }
  ]
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="rbac--clusterRole"><a href="./values.yaml#L126">rbac.clusterRole</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "create": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="rbac--clusterRole--create"><a href="./values.yaml#L128">rbac.clusterRole.create</a></td>
			<td>
bool
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rbac--namespaced"><a href="./values.yaml#L130">rbac.namespaced</a></td>
			<td>
bool
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rbac--roles"><a href="./values.yaml#L132">rbac.roles</a></td>
			<td>
list
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "apiGroups": "db.movetokube.com",
    "crd": true,
    "resources": [
      "postgresusers",
      "postgres"
    ],
    "verbs": [
      "get",
      "list",
      "create",
      "delete",
      "patch"
    ]
  },
  {
    "apiGroups": "operator.dremiorestserver.com",
    "crd": true,
    "resources": [
      "dremiorestservers"
    ],
    "verbs": [
      "get",
      "list",
      "create",
      "delete",
      "patch"
    ]
  },
  {
    "apiGroups": "operator.postgrest.org",
    "crd": true,
    "resources": [
      "postgrests"
    ],
    "verbs": [
      "get",
      "list",
      "create",
      "delete",
      "patch"
    ]
  },
  {
    "apiGroups": "minio.scc-digitalhub.github.io",
    "crd": true,
    "resources": [
      "buckets",
      "policies",
      "users"
    ],
    "verbs": [
      "get",
      "list",
      "create",
      "delete",
      "patch"
    ]
  },
  {
    "apiGroups": "operator.scc-digitalhub.github.io",
    "crd": true,
    "resources": [
      "apigws"
    ],
    "verbs": [
      "get",
      "list",
      "create",
      "delete",
      "patch"
    ]
  },
  {
    "apiGroups": "batch",
    "crd": false,
    "resources": [
      "jobs"
    ],
    "verbs": [
      "get",
      "list",
      "delete"
    ]
  },
  {
    "apiGroups": "apps",
    "crd": false,
    "resources": [
      "deployments",
      "replicasets"
    ],
    "verbs": [
      "get",
      "list"
    ]
  },
  {
    "apiGroups": "",
    "crd": false,
    "resources": [
      "persistentvolumeclaims"
    ],
    "verbs": [
      "get",
      "list",
      "create",
      "delete",
      "patch"
    ]
  },
  {
    "apiGroups": "",
    "crd": false,
    "resources": [
      "services"
    ],
    "verbs": [
      "get",
      "list"
    ]
  },
  {
    "apiGroups": "",
    "crd": false,
    "resources": [
      "secrets"
    ],
    "verbs": [
      "get",
      "list"
    ]
  },
  {
    "apiGroups": "",
    "resources": [
      "pods",
      "pods/log"
    ],
    "verbs": [
      "get",
      "list",
      "create"
    ]
  },
  {
    "apiGroups": "",
    "resources": [
      "resourcequotas"
    ],
    "verbs": [
      "get",
      "list"
    ]
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="replicaCount"><a href="./values.yaml#L242">replicaCount</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors"><a href="./values.yaml#L245">resourceSelectors</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "deployments": "app.kubernetes.io/managed-by=postgrest-operator|app.kubernetes.io/managed-by=dremiorestserver-operator|app.kubernetes.io/type=workspace|app.kubernetes.io/managed-by=dhcore",
  "jobs": "app.kubernetes.io/managed-by=dhcore",
  "pvcs": {
    "labels": "app.kubernetes.io/managed-by=krm",
    "managedBy": "krm"
  },
  "secrets": {
    "labels": "",
    "names": "(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*",
    "owners": "db.movetokube.com/v1alpha1"
  },
  "services": "app.kubernetes.io/type=service|app.kubernetes.io/managed-by=postgrest-operator|app.kubernetes.io/managed-by=dremiorestserver-operator|com.coder.resource=true|app.kubernetes.io/managed-by=dhcore"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors--deployments"><a href="./values.yaml#L247">resourceSelectors.deployments</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"app.kubernetes.io/managed-by=postgrest-operator|app.kubernetes.io/managed-by=dremiorestserver-operator|app.kubernetes.io/type=workspace|app.kubernetes.io/managed-by=dhcore"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors--jobs"><a href="./values.yaml#L249">resourceSelectors.jobs</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"app.kubernetes.io/managed-by=dhcore"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors--pvcs"><a href="./values.yaml#L251">resourceSelectors.pvcs</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "labels": "app.kubernetes.io/managed-by=krm",
  "managedBy": "krm"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors--pvcs--labels"><a href="./values.yaml#L253">resourceSelectors.pvcs.labels</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"app.kubernetes.io/managed-by=krm"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors--pvcs--managedBy"><a href="./values.yaml#L255">resourceSelectors.pvcs.managedBy</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"krm"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors--secrets"><a href="./values.yaml#L257">resourceSelectors.secrets</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "labels": "",
  "names": "(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*",
  "owners": "db.movetokube.com/v1alpha1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors--secrets--labels"><a href="./values.yaml#L259">resourceSelectors.secrets.labels</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors--secrets--names"><a href="./values.yaml#L261">resourceSelectors.secrets.names</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors--secrets--owners"><a href="./values.yaml#L263">resourceSelectors.secrets.owners</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"db.movetokube.com/v1alpha1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resourceSelectors--services"><a href="./values.yaml#L265">resourceSelectors.services</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"app.kubernetes.io/type=service|app.kubernetes.io/managed-by=postgrest-operator|app.kubernetes.io/managed-by=dremiorestserver-operator|com.coder.resource=true|app.kubernetes.io/managed-by=dhcore"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resources"><a href="./values.yaml#L268">resources</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext"><a href="./values.yaml#L271">securityContext</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "allowPrivilegeEscalation": false,
  "capabilities": {
    "drop": [
      "ALL"
    ]
  },
  "runAsNonRoot": true,
  "seccompProfile": {
    "type": "RuntimeDefault"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L273">securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext--capabilities"><a href="./values.yaml#L275">securityContext.capabilities</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "drop": [
    "ALL"
  ]
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext--capabilities--drop"><a href="./values.yaml#L277">securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  "ALL"
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext--runAsNonRoot"><a href="./values.yaml#L280">securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext--seccompProfile"><a href="./values.yaml#L282">securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "type": "RuntimeDefault"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext--seccompProfile--type"><a href="./values.yaml#L284">securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="service"><a href="./values.yaml#L287">service</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "nodePort": "30160",
  "port": 8080,
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="service--nodePort"><a href="./values.yaml#L289">service.nodePort</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"30160"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="service--port"><a href="./values.yaml#L291">service.port</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
8080
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="service--type"><a href="./values.yaml#L293">service.type</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"NodePort"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount"><a href="./values.yaml#L296">serviceAccount</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "annotations": {},
  "create": true,
  "name": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount--annotations"><a href="./values.yaml#L298">serviceAccount.annotations</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount--create"><a href="./values.yaml#L300">serviceAccount.create</a></td>
			<td>
bool
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount--name"><a href="./values.yaml#L302">serviceAccount.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="storageClasses"><a href="./values.yaml#L305">storageClasses</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"default"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="tolerations"><a href="./values.yaml#L308">tolerations</a></td>
			<td>
list
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[]
</pre>
</details>
</div>
			</td>
		</tr>
	</tbody>
</table>

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
