<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# core

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/core/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=core*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 1.0.4](https://img.shields.io/badge/Version-1.0.4-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.15.1](https://img.shields.io/badge/AppVersion-0.15.1-informational?style=flat-square)

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

<table>
	<thead>
		<th>Key</th>
		<th>Type</th>
    <th>Description</th>
		<th>Default</th>
	</thead>
	<tbody>
		<tr>
			<td id="global"><a href="./values.yaml#L6">global</a></td>
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
  "externalTls": false,
  "logLevel": "INFO",
  "ociRegistry": {
    "email": "",
    "password": "",
    "secretName": "",
    "url": "",
    "username": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--externalHostAddress"><a href="./values.yaml#L8">global.externalHostAddress</a></td>
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
			<td id="global--externalTls"><a href="./values.yaml#L10">global.externalTls</a></td>
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
			<td id="global--ociRegistry"><a href="./values.yaml#L13">global.ociRegistry</a></td>
			<td>
object
</td>
			<td>Values of your registry</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "email": "",
  "password": "",
  "secretName": "",
  "url": "",
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--ociRegistry--email"><a href="./values.yaml#L15">global.ociRegistry.email</a></td>
			<td>
string
</td>
			<td>Registry email</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--ociRegistry--password"><a href="./values.yaml#L17">global.ociRegistry.password</a></td>
			<td>
string
</td>
			<td>Registry password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--ociRegistry--secretName"><a href="./values.yaml#L19">global.ociRegistry.secretName</a></td>
			<td>
string
</td>
			<td>Name of the secret of your registry. It has higher priority.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--ociRegistry--url"><a href="./values.yaml#L21">global.ociRegistry.url</a></td>
			<td>
string
</td>
			<td>Registry url</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--ociRegistry--username"><a href="./values.yaml#L23">global.ociRegistry.username</a></td>
			<td>
string
</td>
			<td>Registry username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig"><a href="./values.yaml#L26">additionalConfig</a></td>
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
  "customApiGroups": "kubeai.org/v1",
  "debug": {
    "enableLogs": true,
    "enableMetrics": false
  },
  "ephemeralVolume": {
    "limits": "",
    "requests": "",
    "storageClass": ""
  },
  "image": {
    "pullPolicy": "IfNotPresent"
  },
  "job": {
    "deadline": "604800",
    "jobSuspend": false
  },
  "persistenVolumeClaim": {
    "limits": "",
    "requests": "",
    "storageClass": ""
  },
  "resources": {
    "cpuLim": "",
    "cpuReq": "",
    "gpuKey": "",
    "memLim": "",
    "memReq": ""
  },
  "security": {
    "disableRoot": true
  },
  "service": {
    "type": "NodePort"
  },
  "workflow": {
    "volume": {
      "accessMode": "ReadWriteMany",
      "storageClassName": ""
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--customApiGroups"><a href="./values.yaml#L28">additionalConfig.customApiGroups</a></td>
			<td>
string
</td>
			<td>Custom API groups that Core should be aware of, specified as a comma separated list of group/version</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"kubeai.org/v1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--debug"><a href="./values.yaml#L30">additionalConfig.debug</a></td>
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
  "enableLogs": true,
  "enableMetrics": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--debug--enableLogs"><a href="./values.yaml#L32">additionalConfig.debug.enableLogs</a></td>
			<td>
bool
</td>
			<td>Enable/disable logging</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--debug--enableMetrics"><a href="./values.yaml#L34">additionalConfig.debug.enableMetrics</a></td>
			<td>
bool
</td>
			<td>Enable/disable metrics</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--ephemeralVolume"><a href="./values.yaml#L36">additionalConfig.ephemeralVolume</a></td>
			<td>
object
</td>
			<td>Ephemeral Volumes configurations</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": "",
  "requests": "",
  "storageClass": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--image"><a href="./values.yaml#L44">additionalConfig.image</a></td>
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
  "pullPolicy": "IfNotPresent"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--image--pullPolicy"><a href="./values.yaml#L46">additionalConfig.image.pullPolicy</a></td>
			<td>
string
</td>
			<td>Configure pull image pull policy for workload scheduled by core</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"IfNotPresent"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--job"><a href="./values.yaml#L48">additionalConfig.job</a></td>
			<td>
object
</td>
			<td>Jobs configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "deadline": "604800",
  "jobSuspend": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--job--deadline"><a href="./values.yaml#L50">additionalConfig.job.deadline</a></td>
			<td>
string
</td>
			<td>Set deadline for jobs</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"604800"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--job--jobSuspend"><a href="./values.yaml#L52">additionalConfig.job.jobSuspend</a></td>
			<td>
bool
</td>
			<td>Suspend jobs</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--persistenVolumeClaim"><a href="./values.yaml#L54">additionalConfig.persistenVolumeClaim</a></td>
			<td>
object
</td>
			<td>Persisten Volume Claim configurations</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": "",
  "requests": "",
  "storageClass": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--persistenVolumeClaim--limits"><a href="./values.yaml#L56">additionalConfig.persistenVolumeClaim.limits</a></td>
			<td>
string
</td>
			<td>Configure max size for the Persisten Volume Claim volumes</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--persistenVolumeClaim--requests"><a href="./values.yaml#L58">additionalConfig.persistenVolumeClaim.requests</a></td>
			<td>
string
</td>
			<td>Configure the default size for all Persisten Volume Claim volumes can be overrided by users</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--persistenVolumeClaim--storageClass"><a href="./values.yaml#L60">additionalConfig.persistenVolumeClaim.storageClass</a></td>
			<td>
string
</td>
			<td>Specify the storage class for Persisten Volume Claim</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--resources"><a href="./values.yaml#L62">additionalConfig.resources</a></td>
			<td>
object
</td>
			<td>Resources for the pods created by Core</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpuLim": "",
  "cpuReq": "",
  "gpuKey": "",
  "memLim": "",
  "memReq": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--resources--cpuLim"><a href="./values.yaml#L64">additionalConfig.resources.cpuLim</a></td>
			<td>
string
</td>
			<td>CPU limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--resources--cpuReq"><a href="./values.yaml#L66">additionalConfig.resources.cpuReq</a></td>
			<td>
string
</td>
			<td>CPU request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--resources--gpuKey"><a href="./values.yaml#L68">additionalConfig.resources.gpuKey</a></td>
			<td>
string
</td>
			<td>GPU key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--resources--memLim"><a href="./values.yaml#L70">additionalConfig.resources.memLim</a></td>
			<td>
string
</td>
			<td>Memory limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--resources--memReq"><a href="./values.yaml#L72">additionalConfig.resources.memReq</a></td>
			<td>
string
</td>
			<td>Memory request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--security"><a href="./values.yaml#L74">additionalConfig.security</a></td>
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
  "disableRoot": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--security--disableRoot"><a href="./values.yaml#L76">additionalConfig.security.disableRoot</a></td>
			<td>
bool
</td>
			<td>Disable root for pods created by Core</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--service"><a href="./values.yaml#L78">additionalConfig.service</a></td>
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
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--service--type"><a href="./values.yaml#L80">additionalConfig.service.type</a></td>
			<td>
string
</td>
			<td>Service type for pods created by Core</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"NodePort"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--workflow--volume"><a href="./values.yaml#L84">additionalConfig.workflow.volume</a></td>
			<td>
object
</td>
			<td>Workflow volume configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessMode": "ReadWriteMany",
  "storageClassName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--workflow--volume--accessMode"><a href="./values.yaml#L86">additionalConfig.workflow.volume.accessMode</a></td>
			<td>
string
</td>
			<td>Access mode for the workflow volume</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ReadWriteMany"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="affinity"><a href="./values.yaml#L91">affinity</a></td>
			<td>
object
</td>
			<td>Affinity for pod assignment.</td>
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
			<td id="annotations"><a href="./values.yaml#L94">annotations</a></td>
			<td>
object
</td>
			<td>Annotations to add to all resources.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "configmap": {},
  "deployment": {},
  "global": {},
  "secret": {},
  "service": {}
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="annotations--global"><a href="./values.yaml#L96">annotations.global</a></td>
			<td>
object
</td>
			<td>Annotations to add to all resources.</td>
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
			<td id="annotations--configmap"><a href="./values.yaml#L98">annotations.configmap</a></td>
			<td>
object
</td>
			<td>Annotations for configmaps</td>
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
			<td id="annotations--deployment"><a href="./values.yaml#L100">annotations.deployment</a></td>
			<td>
object
</td>
			<td>Annotations for deployments</td>
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
			<td id="annotations--secret"><a href="./values.yaml#L102">annotations.secret</a></td>
			<td>
object
</td>
			<td>Annotations for secrets</td>
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
			<td id="annotations--service"><a href="./values.yaml#L104">annotations.service</a></td>
			<td>
object
</td>
			<td>Annotations for services</td>
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
			<td id="argoWorkflow"><a href="./values.yaml#L107">argoWorkflow</a></td>
			<td>
object
</td>
			<td>Argoworkflow configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "configmap": "artifact-repositories",
  "key": "default-artifact-repository",
  "serviceAccount": "default",
  "user": "1000"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argoWorkflow--configmap"><a href="./values.yaml#L109">argoWorkflow.configmap</a></td>
			<td>
string
</td>
			<td>Name of the configmap containing the artifact repositories that the Argo Workflows should use</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"artifact-repositories"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argoWorkflow--key"><a href="./values.yaml#L111">argoWorkflow.key</a></td>
			<td>
string
</td>
			<td>Key of the artifact repository in the configmap</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"default-artifact-repository"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argoWorkflow--serviceAccount"><a href="./values.yaml#L113">argoWorkflow.serviceAccount</a></td>
			<td>
string
</td>
			<td>Service account name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"default"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argoWorkflow--user"><a href="./values.yaml#L115">argoWorkflow.user</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1000"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication"><a href="./values.yaml#L118">authentication</a></td>
			<td>
object
</td>
			<td>Authentication configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "basic": {
    "enabled": true,
    "password": "",
    "username": ""
  },
  "openId": {
    "enabled": false,
    "externalSecret": {
      "key": "",
      "name": ""
    },
    "issuerUri": "",
    "jwtAudience": "",
    "jwtClaim": "",
    "jwtUsername": "",
    "oidcClientId": "",
    "scope": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--basic"><a href="./values.yaml#L120">authentication.basic</a></td>
			<td>
object
</td>
			<td>Basic Auth values</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": true,
  "password": "",
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--basic--enabled"><a href="./values.yaml#L122">authentication.basic.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/disable basicAuth authentication</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--basic--password"><a href="./values.yaml#L124">authentication.basic.password</a></td>
			<td>
string
</td>
			<td>BasicAuth password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--basic--username"><a href="./values.yaml#L126">authentication.basic.username</a></td>
			<td>
string
</td>
			<td>BasicAuth username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId"><a href="./values.yaml#L128">authentication.openId</a></td>
			<td>
object
</td>
			<td>OpenID Auth values</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "externalSecret": {
    "key": "",
    "name": ""
  },
  "issuerUri": "",
  "jwtAudience": "",
  "jwtClaim": "",
  "jwtUsername": "",
  "oidcClientId": "",
  "scope": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--enabled"><a href="./values.yaml#L130">authentication.openId.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/disable openId authentication</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--externalSecret"><a href="./values.yaml#L132">authentication.openId.externalSecret</a></td>
			<td>
object
</td>
			<td>Reference to the Core OpenID Secret</td>
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
			<td id="authentication--openId--externalSecret--key"><a href="./values.yaml#L134">authentication.openId.externalSecret.key</a></td>
			<td>
string
</td>
			<td>Key of the openId clientId</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--externalSecret--name"><a href="./values.yaml#L136">authentication.openId.externalSecret.name</a></td>
			<td>
string
</td>
			<td>OpenID secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--issuerUri"><a href="./values.yaml#L138">authentication.openId.issuerUri</a></td>
			<td>
string
</td>
			<td>OpenId Issuer url</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--jwtAudience"><a href="./values.yaml#L140">authentication.openId.jwtAudience</a></td>
			<td>
string
</td>
			<td>OpenId JWT Audience</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--jwtClaim"><a href="./values.yaml#L142">authentication.openId.jwtClaim</a></td>
			<td>
string
</td>
			<td>OpenId JWT claims</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--jwtUsername"><a href="./values.yaml#L144">authentication.openId.jwtUsername</a></td>
			<td>
string
</td>
			<td>OpenId JWT username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--oidcClientId"><a href="./values.yaml#L146">authentication.openId.oidcClientId</a></td>
			<td>
string
</td>
			<td>OpenId JWT clientID</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--scope"><a href="./values.yaml#L148">authentication.openId.scope</a></td>
			<td>
string
</td>
			<td>OpenId JWT Scopes</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="autoscaling"><a href="./values.yaml#L151">autoscaling</a></td>
			<td>
object
</td>
			<td>Adjusts the number of replicas in a workload to match observed resource utilization such as CPU or memory usage.</td>
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
			<td id="autoscaling--enabled"><a href="./values.yaml#L153">autoscaling.enabled</a></td>
			<td>
bool
</td>
			<td>Enable horizontal scaling</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="autoscaling--maxReplicas"><a href="./values.yaml#L155">autoscaling.maxReplicas</a></td>
			<td>
int
</td>
			<td>Set max replicas for autoscaling</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
100
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="autoscaling--minReplicas"><a href="./values.yaml#L157">autoscaling.minReplicas</a></td>
			<td>
int
</td>
			<td>Set min replicas for autoscaling</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L159">autoscaling.targetCPUUtilizationPercentage</a></td>
			<td>
int
</td>
			<td>Set CPU utilization percentage that trigger the autoscaling</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
80
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder"><a href="./values.yaml#L162">builder</a></td>
			<td>
object
</td>
			<td>Configure OCI image builder</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "framework": {
    "args": "",
    "client-secret": {
      "mount-path": "",
      "name": ""
    },
    "command": "",
    "image": "gcr.io/kaniko-project/executor:latest",
    "image-prefix": "",
    "name": "kaniko",
    "secret": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--framework--args"><a href="./values.yaml#L165">builder.framework.args</a></td>
			<td>
string
</td>
			<td>Override/append arguments defined in the builder image</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--framework--client-secret"><a href="./values.yaml#L167">builder.framework.client-secret</a></td>
			<td>
object
</td>
			<td>Specify mTLS client secret used by buildkit cli to authenticate to a remote buildkit deamon</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "mount-path": "",
  "name": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--framework--client-secret--name"><a href="./values.yaml#L171">builder.framework.client-secret.name</a></td>
			<td>
string
</td>
			<td>Client certificate secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--framework--command"><a href="./values.yaml#L173">builder.framework.command</a></td>
			<td>
string
</td>
			<td>Override command defined in the builder image</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--framework--image"><a href="./values.yaml#L175">builder.framework.image</a></td>
			<td>
string
</td>
			<td>Set builder image</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"gcr.io/kaniko-project/executor:latest"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--framework--image-prefix"><a href="./values.yaml#L177">builder.framework.image-prefix</a></td>
			<td>
string
</td>
			<td>Sets the prefix that will be added to the image name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--framework--name"><a href="./values.yaml#L179">builder.framework.name</a></td>
			<td>
string
</td>
			<td>Configure which builder use to build OCI image (kaniko or buildkit)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"kaniko"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--framework--secret"><a href="./values.yaml#L181">builder.framework.secret</a></td>
			<td>
string
</td>
			<td>Specify the name of the secret that contains the registry credentials</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="commonCredsSecret"><a href="./values.yaml#L190">commonCredsSecret</a></td>
			<td>
object
</td>
			<td>A secret that should be used when not using STS. It should contain the following populated keys:  DB_USERNAME: Username of the Postgres main db owner  DB_PASSWORD: Password of the Postgres main db owner  AWS_ACCESS_KEY_ID: Access key of the S3 Platform's main bucket user  AWS_SECRET_ACCESS_KEY: Secret key of the S3 Platform's main bucket user  DB_URL: Connection string to the platform's main db  DHCORE_CLIENT_ID: Core clientId</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="configmapAdditionalEnv"><a href="./values.yaml#L195">configmapAdditionalEnv</a></td>
			<td>
object
</td>
			<td>Additional environment variables for the Core configmap, MUST be specified in key/value format</td>
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
			<td id="console"><a href="./values.yaml#L198">console</a></td>
			<td>
object
</td>
			<td>Console configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "containerImagesRegistry": {
    "existingSecret": {
      "name": "",
      "passwordKey": "",
      "usernameKey": ""
    },
    "password": "",
    "registryUrl": "",
    "username": ""
  },
  "metrics": {
    "instance": null,
    "project": null,
    "run": null,
    "user": null
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry"><a href="./values.yaml#L200">console.containerImagesRegistry</a></td>
			<td>
object
</td>
			<td>Registry configuration used by the console</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "existingSecret": {
    "name": "",
    "passwordKey": "",
    "usernameKey": ""
  },
  "password": "",
  "registryUrl": "",
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--existingSecret--name"><a href="./values.yaml#L203">console.containerImagesRegistry.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing the credentials for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--existingSecret--passwordKey"><a href="./values.yaml#L205">console.containerImagesRegistry.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Password key of the secret containing the credentials for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--existingSecret--usernameKey"><a href="./values.yaml#L207">console.containerImagesRegistry.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Username key of the secret containing the credentials for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--password"><a href="./values.yaml#L209">console.containerImagesRegistry.password</a></td>
			<td>
string
</td>
			<td>Password for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--registryUrl"><a href="./values.yaml#L211">console.containerImagesRegistry.registryUrl</a></td>
			<td>
string
</td>
			<td>Registry url used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--username"><a href="./values.yaml#L213">console.containerImagesRegistry.username</a></td>
			<td>
string
</td>
			<td>Username for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--metrics"><a href="./values.yaml#L215">console.metrics</a></td>
			<td>
object
</td>
			<td>Metrics configuration used for the console</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "instance": null,
  "project": null,
  "run": null,
  "user": null
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--metrics--instance"><a href="./values.yaml#L217">console.metrics.instance</a></td>
			<td>
string
</td>
			<td>Metrics configuration used for display metrics in the console aggregated for instances</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--metrics--project"><a href="./values.yaml#L219">console.metrics.project</a></td>
			<td>
string
</td>
			<td>Metrics configuration used for display metrics in the console aggregated for projects</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--metrics--run"><a href="./values.yaml#L221">console.metrics.run</a></td>
			<td>
string
</td>
			<td>Metrics configuration used for display metrics in the console aggregated for runs</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--metrics--user"><a href="./values.yaml#L223">console.metrics.user</a></td>
			<td>
string
</td>
			<td>Metrics configuration used for display metrics in the console aggregated for users</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreAuthCreds"><a href="./values.yaml#L226">coreAuthCreds</a></td>
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
  "clientSecret": "",
  "existingSecret": {
    "clientIdKey": "",
    "clientSecretKey": "",
    "secretName": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreAuthCreds--clientId"><a href="./values.yaml#L228">coreAuthCreds.clientId</a></td>
			<td>
string
</td>
			<td>Core clientId</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreAuthCreds--clientSecret"><a href="./values.yaml#L230">coreAuthCreds.clientSecret</a></td>
			<td>
string
</td>
			<td>Core clientSecret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreAuthCreds--existingSecret"><a href="./values.yaml#L232">coreAuthCreds.existingSecret</a></td>
			<td>
object
</td>
			<td>Existing secret containing Core clientID and clientSecret</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "clientIdKey": "",
  "clientSecretKey": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreAuthCreds--existingSecret--clientIdKey"><a href="./values.yaml#L234">coreAuthCreds.existingSecret.clientIdKey</a></td>
			<td>
string
</td>
			<td>Key of the clientID</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreAuthCreds--existingSecret--clientSecretKey"><a href="./values.yaml#L236">coreAuthCreds.existingSecret.clientSecretKey</a></td>
			<td>
string
</td>
			<td>Key of the clientSecret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreAuthCreds--existingSecret--secretName"><a href="./values.yaml#L238">coreAuthCreds.existingSecret.secretName</a></td>
			<td>
string
</td>
			<td>Name of the secret with Core clientId and clientSecret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreTokens"><a href="./values.yaml#L241">coreTokens</a></td>
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
  "accessTokenDuration": "43200",
  "refreshTokenDuration": "86400"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreTokens--accessTokenDuration"><a href="./values.yaml#L243">coreTokens.accessTokenDuration</a></td>
			<td>
string
</td>
			<td>Duration of the access token generated by Core in seconds</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"43200"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreTokens--refreshTokenDuration"><a href="./values.yaml#L245">coreTokens.refreshTokenDuration</a></td>
			<td>
string
</td>
			<td>Duration of the refresh token generated by Core in seconds</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"86400"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="corsOrigin"><a href="./values.yaml#L248">corsOrigin</a></td>
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
			<td id="databaseProvider"><a href="./values.yaml#L251">databaseProvider</a></td>
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
  "database": "",
  "host": "",
  "port": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="databaseProvider--database"><a href="./values.yaml#L253">databaseProvider.database</a></td>
			<td>
string
</td>
			<td>Name of the main database of the platform</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="databaseProvider--host"><a href="./values.yaml#L255">databaseProvider.host</a></td>
			<td>
string
</td>
			<td>Host of the main database of the platform</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="databaseProvider--port"><a href="./values.yaml#L257">databaseProvider.port</a></td>
			<td>
string
</td>
			<td>Port of the main database of the platform</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="defaultStorageClass"><a href="./values.yaml#L260">defaultStorageClass</a></td>
			<td>
string
</td>
			<td>Default storage class that should be used</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway"><a href="./values.yaml#L265">envoyGateway</a></td>
			<td>
object
</td>
			<td>Envoy Gateway integration configuration.  Configure the following settings only if you use Envoy/EnvoyAI Gateway in your environment.  Utilization with any other gateway is not supported..</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "aiGateway": {
    "enabled": false,
    "endpoint": "",
    "name": ""
  },
  "enabled": false,
  "genericGateway": {
    "enabled": false,
    "endpoint": "",
    "name": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--enabled"><a href="./values.yaml#L267">envoyGateway.enabled</a></td>
			<td>
bool
</td>
			<td>Set this value to true if you want to enable the integration between Core and an Envoy Gateway</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--aiGateway"><a href="./values.yaml#L269">envoyGateway.aiGateway</a></td>
			<td>
object
</td>
			<td>Configuration for an Envoy AI Gateway</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "endpoint": "",
  "name": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--aiGateway--enabled"><a href="./values.yaml#L271">envoyGateway.aiGateway.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable the integration between Core and an Envoy AI Gateway</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--aiGateway--endpoint"><a href="./values.yaml#L273">envoyGateway.aiGateway.endpoint</a></td>
			<td>
string
</td>
			<td>Endpoint of the Envoy AI Gateway, in the format "servicename:port"</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--aiGateway--name"><a href="./values.yaml#L275">envoyGateway.aiGateway.name</a></td>
			<td>
string
</td>
			<td>Name of the Envoy AI Gateway</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--genericGateway"><a href="./values.yaml#L277">envoyGateway.genericGateway</a></td>
			<td>
object
</td>
			<td>Configuration for a generic Envoy Gateway</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "endpoint": "",
  "name": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--genericGateway--enabled"><a href="./values.yaml#L279">envoyGateway.genericGateway.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable the integration between Core and a generic Envoy Gateway</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--genericGateway--endpoint"><a href="./values.yaml#L281">envoyGateway.genericGateway.endpoint</a></td>
			<td>
string
</td>
			<td>Endpoint of the generic Envoy Gateway, in the format "servicename:port"</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--genericGateway--name"><a href="./values.yaml#L283">envoyGateway.genericGateway.name</a></td>
			<td>
string
</td>
			<td>Name of the generic Envoy Gateway</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="fullnameOverride"><a href="./values.yaml#L286">fullnameOverride</a></td>
			<td>
string
</td>
			<td>String to fully override `core.fullname` template.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck"><a href="./values.yaml#L289">healthcheck</a></td>
			<td>
object
</td>
			<td>Core healthcheck configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": true,
  "livenessProbe": {
    "path": "/health",
    "periodSeconds": 60
  },
  "readinessProbe": {
    "path": "/health",
    "periodSeconds": 60
  },
  "service": {
    "port": 8081,
    "portName": "management",
    "protocol": "TCP"
  },
  "startupProbe": {
    "failureThreshold": 12,
    "path": "/health",
    "periodSeconds": 10
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--enabled"><a href="./values.yaml#L291">healthcheck.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable healthcheck for Core</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--livenessProbe"><a href="./values.yaml#L293">healthcheck.livenessProbe</a></td>
			<td>
object
</td>
			<td>Liveness probe for Core</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "path": "/health",
  "periodSeconds": 60
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--livenessProbe--path"><a href="./values.yaml#L295">healthcheck.livenessProbe.path</a></td>
			<td>
string
</td>
			<td>Handler path for liveness probe</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/health"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--livenessProbe--periodSeconds"><a href="./values.yaml#L297">healthcheck.livenessProbe.periodSeconds</a></td>
			<td>
int
</td>
			<td>Period seconds for liveness probe</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
60
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--readinessProbe--path"><a href="./values.yaml#L301">healthcheck.readinessProbe.path</a></td>
			<td>
string
</td>
			<td>Handler path for readiness probe</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/health"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--readinessProbe--periodSeconds"><a href="./values.yaml#L303">healthcheck.readinessProbe.periodSeconds</a></td>
			<td>
int
</td>
			<td>Period seconds for readiness probe</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
60
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--service"><a href="./values.yaml#L305">healthcheck.service</a></td>
			<td>
object
</td>
			<td>Service configuration for healthcheck.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "port": 8081,
  "portName": "management",
  "protocol": "TCP"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--service--port"><a href="./values.yaml#L307">healthcheck.service.port</a></td>
			<td>
int
</td>
			<td>Port used by healthcheck service</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
8081
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--service--portName"><a href="./values.yaml#L309">healthcheck.service.portName</a></td>
			<td>
string
</td>
			<td>Port name used by healthcheck service</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"management"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--service--protocol"><a href="./values.yaml#L311">healthcheck.service.protocol</a></td>
			<td>
string
</td>
			<td>Protocol used by healthcheck service</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"TCP"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--startupProbe"><a href="./values.yaml#L313">healthcheck.startupProbe</a></td>
			<td>
object
</td>
			<td>Startup probe for Core</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "failureThreshold": 12,
  "path": "/health",
  "periodSeconds": 10
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--startupProbe--failureThreshold"><a href="./values.yaml#L315">healthcheck.startupProbe.failureThreshold</a></td>
			<td>
int
</td>
			<td>Failure threshold for startup probe</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
12
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--startupProbe--path"><a href="./values.yaml#L317">healthcheck.startupProbe.path</a></td>
			<td>
string
</td>
			<td>Handler path for startup probe</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/health"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="healthcheck--startupProbe--periodSeconds"><a href="./values.yaml#L319">healthcheck.startupProbe.periodSeconds</a></td>
			<td>
int
</td>
			<td>Period seconds for startup probe</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
10
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="image"><a href="./values.yaml#L322">image</a></td>
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
  "repository": "ghcr.io/scc-digitalhub/digitalhub-core",
  "tag": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="image--pullPolicy"><a href="./values.yaml#L324">image.pullPolicy</a></td>
			<td>
string
</td>
			<td>Image pull policy</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"IfNotPresent"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="image--repository"><a href="./values.yaml#L326">image.repository</a></td>
			<td>
string
</td>
			<td>Image repository</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/digitalhub-core"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="image--tag"><a href="./values.yaml#L328">image.tag</a></td>
			<td>
string
</td>
			<td>Image tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="imagePullSecrets"><a href="./values.yaml#L331">imagePullSecrets</a></td>
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
			<td id="ingress"><a href="./values.yaml#L334">ingress</a></td>
			<td>
object
</td>
			<td>Ingress configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "annotations": {},
  "className": "",
  "enabled": false,
  "hosts": [],
  "tls": []
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ingress--enabled"><a href="./values.yaml#L336">ingress.enabled</a></td>
			<td>
bool
</td>
			<td>If set to true, the chart will be configured for Ingress utilization.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ingress--annotations"><a href="./values.yaml#L338">ingress.annotations</a></td>
			<td>
object
</td>
			<td>Annotations to add to the Ingress resource.</td>
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
			<td id="ingress--className"><a href="./values.yaml#L340">ingress.className</a></td>
			<td>
string
</td>
			<td>Ingress class name to use in the Ingress resource.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ingress--hosts"><a href="./values.yaml#L342">ingress.hosts</a></td>
			<td>
list
</td>
			<td>List of hostnames in the Ingress rules.</td>
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
			<td id="ingress--tls"><a href="./values.yaml#L344">ingress.tls</a></td>
			<td>
list
</td>
			<td>TLS configuration for the Ingress resource.</td>
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
			<td id="initImage"><a href="./values.yaml#L347">initImage</a></td>
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
  "builderTool": {
    "image": "ghcr.io/scc-digitalhub/digitalhub-core-builder-tool",
    "tag": "38f928d9"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="initImage--builderTool"><a href="./values.yaml#L349">initImage.builderTool</a></td>
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
  "image": "ghcr.io/scc-digitalhub/digitalhub-core-builder-tool",
  "tag": "38f928d9"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="initImage--builderTool--image"><a href="./values.yaml#L351">initImage.builderTool.image</a></td>
			<td>
string
</td>
			<td>Cpre builder repository</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/digitalhub-core-builder-tool"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="initImage--builderTool--tag"><a href="./values.yaml#L353">initImage.builderTool.tag</a></td>
			<td>
string
</td>
			<td>Core builder tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"38f928d9"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="keystore"><a href="./values.yaml#L356">keystore</a></td>
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
  "existingSecret": {
    "keyName": "",
    "secretName": ""
  },
  "keystoreKid": "",
  "keystorePath": "/etc/keystore"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="keystore--existingSecret"><a href="./values.yaml#L358">keystore.existingSecret</a></td>
			<td>
object
</td>
			<td>Reference to the Keystore secret of Core</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "keyName": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="keystore--existingSecret--keyName"><a href="./values.yaml#L360">keystore.existingSecret.keyName</a></td>
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
			<td id="keystore--existingSecret--secretName"><a href="./values.yaml#L362">keystore.existingSecret.secretName</a></td>
			<td>
string
</td>
			<td>Name of the keystore secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="keystore--keystoreKid"><a href="./values.yaml#L364">keystore.keystoreKid</a></td>
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
			<td id="keystore--keystorePath"><a href="./values.yaml#L366">keystore.keystorePath</a></td>
			<td>
string
</td>
			<td>Path in which the Keystore will be mounted</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/etc/keystore"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai"><a href="./values.yaml#L369">kubeai</a></td>
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
  "enabled": true,
  "port": "",
  "serviceName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--enabled"><a href="./values.yaml#L371">kubeai.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable KubeAI</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--port"><a href="./values.yaml#L373">kubeai.port</a></td>
			<td>
string
</td>
			<td>KubeAi port</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--serviceName"><a href="./values.yaml#L375">kubeai.serviceName</a></td>
			<td>
string
</td>
			<td>Kubei service name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki"><a href="./values.yaml#L378">loki</a></td>
			<td>
object
</td>
			<td>Configure Core with an existing Loki instance. It is used to filter the logs of Core resources in Loki.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "credentials": {
    "existingSecret": {
      "name": "",
      "passwordKey": "",
      "usernameKey": ""
    },
    "password": "",
    "username": ""
  },
  "enabled": false,
  "endpoint": "",
  "labels": {
    "applicationName": "",
    "project": "dhcore_project",
    "run": "dhcore_run",
    "user": "dhcore_user"
  },
  "mapWithPrefix": true,
  "organizationId": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--enabled"><a href="./values.yaml#L380">loki.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Loki integration</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--credentials"><a href="./values.yaml#L382">loki.credentials</a></td>
			<td>
object
</td>
			<td>Credentials for the Loki instance. It can be specified either by using an existing secret or by providing the username and password directly.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "existingSecret": {
    "name": "",
    "passwordKey": "",
    "usernameKey": ""
  },
  "password": "",
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--credentials--existingSecret"><a href="./values.yaml#L384">loki.credentials.existingSecret</a></td>
			<td>
object
</td>
			<td>Reference to the secret containing the credentials for the Loki instance</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "name": "",
  "passwordKey": "",
  "usernameKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--credentials--existingSecret--name"><a href="./values.yaml#L386">loki.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing the credentials for the Loki instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--credentials--existingSecret--passwordKey"><a href="./values.yaml#L388">loki.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the password in the secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--credentials--existingSecret--usernameKey"><a href="./values.yaml#L390">loki.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the username in the secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--credentials--password"><a href="./values.yaml#L392">loki.credentials.password</a></td>
			<td>
string
</td>
			<td>Password for the Loki instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--credentials--username"><a href="./values.yaml#L394">loki.credentials.username</a></td>
			<td>
string
</td>
			<td>Username for the Loki instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--endpoint"><a href="./values.yaml#L396">loki.endpoint</a></td>
			<td>
string
</td>
			<td>Endpoint of the Loki instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--labels"><a href="./values.yaml#L398">loki.labels</a></td>
			<td>
object
</td>
			<td>Labels that will have to match the ones set in Loki for filtering Core resources</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "applicationName": "",
  "project": "dhcore_project",
  "run": "dhcore_run",
  "user": "dhcore_user"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--mapWithPrefix"><a href="./values.yaml#L404">loki.mapWithPrefix</a></td>
			<td>
bool
</td>
			<td>Whether to map labels with a prefix or not. If set to true, the labels will be mapped with the name of the tenant name as a prefix. If set to false, the labels will be mapped without any prefix.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--organizationId"><a href="./values.yaml#L406">loki.organizationId</a></td>
			<td>
string
</td>
			<td>Organization ID of the Loki instance.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="lucene"><a href="./values.yaml#L409">lucene</a></td>
			<td>
object
</td>
			<td>Values for Lucene configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "indexPath": "/lucene/",
  "persistence": {
    "accessMode": "ReadWriteOnce",
    "enabled": true,
    "size": "10Gi",
    "storageClass": ""
  },
  "reindex": "always"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="lucene--indexPath"><a href="./values.yaml#L411">lucene.indexPath</a></td>
			<td>
string
</td>
			<td>Set the path for Lucene and enables it</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/lucene/"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="lucene--persistence"><a href="./values.yaml#L413">lucene.persistence</a></td>
			<td>
object
</td>
			<td>Lucene persistence configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessMode": "ReadWriteOnce",
  "enabled": true,
  "size": "10Gi",
  "storageClass": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="lucene--persistence--enabled"><a href="./values.yaml#L415">lucene.persistence.enabled</a></td>
			<td>
bool
</td>
			<td>Enable persistence for Lucene</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="lucene--persistence--accessMode"><a href="./values.yaml#L417">lucene.persistence.accessMode</a></td>
			<td>
string
</td>
			<td>Access mode for the Lucene persistent volume claim</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ReadWriteOnce"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="lucene--persistence--size"><a href="./values.yaml#L419">lucene.persistence.size</a></td>
			<td>
string
</td>
			<td>Size for the Lucene persistent volume claim</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"10Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="lucene--persistence--storageClass"><a href="./values.yaml#L421">lucene.persistence.storageClass</a></td>
			<td>
string
</td>
			<td>Storage class for the Lucene persistent volume claim</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="lucene--reindex"><a href="./values.yaml#L423">lucene.reindex</a></td>
			<td>
string
</td>
			<td>Reindex of Lucene</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"always"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="nameOverride"><a href="./values.yaml#L426">nameOverride</a></td>
			<td>
string
</td>
			<td>String to partially override `core.fullname` template (will maintain the release name)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="nodeSelector"><a href="./values.yaml#L429">nodeSelector</a></td>
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
			<td id="podAnnotations"><a href="./values.yaml#L432">podAnnotations</a></td>
			<td>
object
</td>
			<td>Annotations to add to each pod.</td>
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
			<td id="podLabels"><a href="./values.yaml#L435">podLabels</a></td>
			<td>
object
</td>
			<td>Labels to add to each pod.</td>
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
			<td id="podSecurityContext"><a href="./values.yaml#L438">podSecurityContext</a></td>
			<td>
object
</td>
			<td>[Security context for pod](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "fsGroup": 65532,
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
			<td id="podSecurityContext--fsGroup"><a href="./values.yaml#L440">podSecurityContext.fsGroup</a></td>
			<td>
int
</td>
			<td>Configure group id used to mount volumes</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
65532
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="podSecurityContext--runAsNonRoot"><a href="./values.yaml#L442">podSecurityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Pod allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="podSecurityContext--seccompProfile"><a href="./values.yaml#L444">podSecurityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Pod configure seccompProfile.</td>
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
			<td id="podSecurityContext--seccompProfile--type"><a href="./values.yaml#L446">podSecurityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Pod configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres"><a href="./values.yaml#L449">postgres</a></td>
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
  "credentials": {
    "existingSecret": {
      "name": "",
      "passwordKey": null,
      "usernameKey": null
    },
    "password": "",
    "username": ""
  },
  "database": "",
  "host": "",
  "port": "",
  "schema": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--credentials"><a href="./values.yaml#L451">postgres.credentials</a></td>
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
  "existingSecret": {
    "name": "",
    "passwordKey": null,
    "usernameKey": null
  },
  "password": "",
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--credentials--existingSecret"><a href="./values.yaml#L453">postgres.credentials.existingSecret</a></td>
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
  "name": "",
  "passwordKey": null,
  "usernameKey": null
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--credentials--existingSecret--name"><a href="./values.yaml#L455">postgres.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Secret containing the Core database user credentials</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--credentials--existingSecret--passwordKey"><a href="./values.yaml#L457">postgres.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Core db user password key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--credentials--existingSecret--usernameKey"><a href="./values.yaml#L459">postgres.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Core db user username key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--credentials--password"><a href="./values.yaml#L461">postgres.credentials.password</a></td>
			<td>
string
</td>
			<td>Core db user password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--credentials--username"><a href="./values.yaml#L463">postgres.credentials.username</a></td>
			<td>
string
</td>
			<td>Core db user username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--database"><a href="./values.yaml#L465">postgres.database</a></td>
			<td>
string
</td>
			<td>Name of the Core database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--host"><a href="./values.yaml#L467">postgres.host</a></td>
			<td>
string
</td>
			<td>Host of the Core database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--port"><a href="./values.yaml#L469">postgres.port</a></td>
			<td>
string
</td>
			<td>Port of the Core database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--schema"><a href="./values.yaml#L471">postgres.schema</a></td>
			<td>
string
</td>
			<td>Schema of the Core database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="priorityClassName"><a href="./values.yaml#L474">priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class, leave empty to not set any.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--enabled"><a href="./values.yaml#L478">prometheus.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Prometheus integration</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--credentials"><a href="./values.yaml#L480">prometheus.credentials</a></td>
			<td>
object
</td>
			<td>Credentials for the Prometheus instance</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "existingSecret": {
    "name": "",
    "passwordKey": "",
    "usernameKey": ""
  },
  "password": "",
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--credentials--existingSecret"><a href="./values.yaml#L482">prometheus.credentials.existingSecret</a></td>
			<td>
object
</td>
			<td>Reference to the secret containing the credentials for the Prometheus instance</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "name": "",
  "passwordKey": "",
  "usernameKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--credentials--existingSecret--name"><a href="./values.yaml#L484">prometheus.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing the credentials for the Prometheus instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--credentials--existingSecret--passwordKey"><a href="./values.yaml#L486">prometheus.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the password in the secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--credentials--existingSecret--usernameKey"><a href="./values.yaml#L488">prometheus.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the username in the secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--credentials--password"><a href="./values.yaml#L490">prometheus.credentials.password</a></td>
			<td>
string
</td>
			<td>Password for the Prometheus instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--credentials--username"><a href="./values.yaml#L492">prometheus.credentials.username</a></td>
			<td>
string
</td>
			<td>Username for the Prometheus instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--endpoint"><a href="./values.yaml#L495">prometheus.endpoint</a></td>
			<td>
string
</td>
			<td>Endpoint of the Prometheus instance  prometheus.endpoint -- Endpoint of the Prometheus instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--labels"><a href="./values.yaml#L497">prometheus.labels</a></td>
			<td>
object
</td>
			<td>Labels that will have to match the ones set in Prometheus for filtering Core resources</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "instance": "",
  "namespace": "namespace",
  "project": "dhcore_project",
  "run": "dhcore_run",
  "user": "dhcore_user"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--labels--instance"><a href="./values.yaml#L499">prometheus.labels.instance</a></td>
			<td>
string
</td>
			<td>Instance label used to filter Core resources in Prometheus</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--labels--namespace"><a href="./values.yaml#L501">prometheus.labels.namespace</a></td>
			<td>
string
</td>
			<td>Namespace label used to filter Core resources in Prometheus</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"namespace"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--labels--project"><a href="./values.yaml#L503">prometheus.labels.project</a></td>
			<td>
string
</td>
			<td>Project label used to filter Core resources in Prometheus</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"dhcore_project"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--labels--run"><a href="./values.yaml#L505">prometheus.labels.run</a></td>
			<td>
string
</td>
			<td>Run label used to filter Core resources in Prometheus</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"dhcore_run"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--labels--user"><a href="./values.yaml#L507">prometheus.labels.user</a></td>
			<td>
string
</td>
			<td>User label used to filter Core resources in Prometheus</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"dhcore_user"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--lazyFilter"><a href="./values.yaml#L509">prometheus.lazyFilter</a></td>
			<td>
bool
</td>
			<td>Whether to enable lazy filtering on Prometheus queries</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics"><a href="./values.yaml#L511">prometheus.metrics</a></td>
			<td>
object
</td>
			<td>Metrics configuration used for Prometheus queries</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": {
    "groupBy": "container",
    "label": "cpu",
    "name": "container_cpu_usage_seconds_total",
    "operation": "rate",
    "quota": "",
    "unit": "seconds",
    "window": "2m"
  },
  "cpuRequested": {
    "groupBy": "container",
    "label": "cpu-requested",
    "name": "",
    "operation": "rate",
    "quota": "",
    "unit": "seconds",
    "window": "2m"
  },
  "disk": {
    "groupBy": "container",
    "label": "disk-{device}",
    "name": "container_fs_writes_bytes_total",
    "operation": "",
    "quota": "",
    "unit": "bytes",
    "window": ""
  },
  "gpu": {
    "groupBy": "",
    "label": "gpu-utilization",
    "name": "",
    "operation": "",
    "quota": "",
    "unit": "",
    "window": ""
  },
  "gpuCount": {
    "groupBy": "",
    "label": "gpu-count",
    "name": "",
    "operation": "",
    "quota": "",
    "unit": "",
    "window": ""
  },
  "gpuMemory": {
    "groupBy": "",
    "label": "gpu-memory",
    "name": "",
    "operation": "",
    "quota": "",
    "unit": "bytes",
    "window": ""
  },
  "memory": {
    "groupBy": "container",
    "label": "memory",
    "name": "container_memory_working_set_bytes",
    "operation": "",
    "quota": "",
    "unit": "bytes",
    "window": ""
  },
  "memoryRequested": {
    "groupBy": "container",
    "label": "memory-requested",
    "name": "",
    "operation": "",
    "quota": "",
    "unit": "bytes",
    "window": ""
  },
  "networkReceive": {
    "groupBy": "pod",
    "label": "{interface}-receive",
    "name": "container_network_receive_bytes_total",
    "operation": "rate",
    "quota": "",
    "unit": "bytes",
    "window": "2m"
  },
  "networkSend": {
    "groupBy": "pod",
    "label": "{interface}-send",
    "name": "container_network_transmit_bytes_total",
    "operation": "rate",
    "quota": "",
    "unit": "bytes",
    "window": "2m"
  },
  "volumes": {
    "groupBy": "",
    "label": "volume-{persistentvolumeclaim}",
    "name": "kubelet_volume_stats_used_bytes",
    "operation": "",
    "quota": "",
    "unit": "bytes",
    "window": ""
  },
  "volumesCount": {
    "groupBy": "",
    "label": "volumes-count",
    "name": "",
    "operation": "",
    "quota": "",
    "unit": "",
    "window": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpu"><a href="./values.yaml#L513">prometheus.metrics.cpu</a></td>
			<td>
object
</td>
			<td>CPU metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "container",
  "label": "cpu",
  "name": "container_cpu_usage_seconds_total",
  "operation": "rate",
  "quota": "",
  "unit": "seconds",
  "window": "2m"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpu--groupBy"><a href="./values.yaml#L515">prometheus.metrics.cpu.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"container"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpu--label"><a href="./values.yaml#L517">prometheus.metrics.cpu.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"cpu"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpu--name"><a href="./values.yaml#L519">prometheus.metrics.cpu.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"container_cpu_usage_seconds_total"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpu--operation"><a href="./values.yaml#L521">prometheus.metrics.cpu.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"rate"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpu--quota"><a href="./values.yaml#L523">prometheus.metrics.cpu.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpu--unit"><a href="./values.yaml#L525">prometheus.metrics.cpu.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"seconds"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpu--window"><a href="./values.yaml#L527">prometheus.metrics.cpu.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpuRequested"><a href="./values.yaml#L529">prometheus.metrics.cpuRequested</a></td>
			<td>
object
</td>
			<td>CPU requested metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "container",
  "label": "cpu-requested",
  "name": "",
  "operation": "rate",
  "quota": "",
  "unit": "seconds",
  "window": "2m"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpuRequested--groupBy"><a href="./values.yaml#L531">prometheus.metrics.cpuRequested.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"container"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpuRequested--label"><a href="./values.yaml#L533">prometheus.metrics.cpuRequested.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"cpu-requested"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpuRequested--name"><a href="./values.yaml#L535">prometheus.metrics.cpuRequested.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpuRequested--operation"><a href="./values.yaml#L537">prometheus.metrics.cpuRequested.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"rate"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpuRequested--quota"><a href="./values.yaml#L539">prometheus.metrics.cpuRequested.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpuRequested--unit"><a href="./values.yaml#L541">prometheus.metrics.cpuRequested.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"seconds"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpuRequested--window"><a href="./values.yaml#L543">prometheus.metrics.cpuRequested.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--disk"><a href="./values.yaml#L545">prometheus.metrics.disk</a></td>
			<td>
object
</td>
			<td>Disk metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "container",
  "label": "disk-{device}",
  "name": "container_fs_writes_bytes_total",
  "operation": "",
  "quota": "",
  "unit": "bytes",
  "window": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--disk--groupBy"><a href="./values.yaml#L547">prometheus.metrics.disk.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"container"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--disk--label"><a href="./values.yaml#L549">prometheus.metrics.disk.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"disk-{device}"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--disk--name"><a href="./values.yaml#L551">prometheus.metrics.disk.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"container_fs_writes_bytes_total"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--disk--operation"><a href="./values.yaml#L553">prometheus.metrics.disk.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--disk--quota"><a href="./values.yaml#L555">prometheus.metrics.disk.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--disk--unit"><a href="./values.yaml#L557">prometheus.metrics.disk.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"bytes"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--disk--window"><a href="./values.yaml#L559">prometheus.metrics.disk.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpu"><a href="./values.yaml#L561">prometheus.metrics.gpu</a></td>
			<td>
object
</td>
			<td>GPU metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "",
  "label": "gpu-utilization",
  "name": "",
  "operation": "",
  "quota": "",
  "unit": "",
  "window": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpu--groupBy"><a href="./values.yaml#L563">prometheus.metrics.gpu.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpu--label"><a href="./values.yaml#L565">prometheus.metrics.gpu.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"gpu-utilization"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpu--name"><a href="./values.yaml#L567">prometheus.metrics.gpu.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpu--operation"><a href="./values.yaml#L569">prometheus.metrics.gpu.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpu--quota"><a href="./values.yaml#L571">prometheus.metrics.gpu.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpu--unit"><a href="./values.yaml#L573">prometheus.metrics.gpu.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpu--window"><a href="./values.yaml#L575">prometheus.metrics.gpu.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuCount"><a href="./values.yaml#L577">prometheus.metrics.gpuCount</a></td>
			<td>
object
</td>
			<td>GPU count metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "",
  "label": "gpu-count",
  "name": "",
  "operation": "",
  "quota": "",
  "unit": "",
  "window": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuCount--groupBy"><a href="./values.yaml#L579">prometheus.metrics.gpuCount.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuCount--label"><a href="./values.yaml#L581">prometheus.metrics.gpuCount.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"gpu-count"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuCount--name"><a href="./values.yaml#L583">prometheus.metrics.gpuCount.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuCount--operation"><a href="./values.yaml#L585">prometheus.metrics.gpuCount.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuCount--quota"><a href="./values.yaml#L587">prometheus.metrics.gpuCount.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuCount--unit"><a href="./values.yaml#L589">prometheus.metrics.gpuCount.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuCount--window"><a href="./values.yaml#L591">prometheus.metrics.gpuCount.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuMemory"><a href="./values.yaml#L593">prometheus.metrics.gpuMemory</a></td>
			<td>
object
</td>
			<td>GPU memory metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "",
  "label": "gpu-memory",
  "name": "",
  "operation": "",
  "quota": "",
  "unit": "bytes",
  "window": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuMemory--groupBy"><a href="./values.yaml#L595">prometheus.metrics.gpuMemory.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuMemory--label"><a href="./values.yaml#L597">prometheus.metrics.gpuMemory.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"gpu-memory"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuMemory--name"><a href="./values.yaml#L599">prometheus.metrics.gpuMemory.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuMemory--operation"><a href="./values.yaml#L601">prometheus.metrics.gpuMemory.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuMemory--quota"><a href="./values.yaml#L603">prometheus.metrics.gpuMemory.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuMemory--unit"><a href="./values.yaml#L605">prometheus.metrics.gpuMemory.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"bytes"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuMemory--window"><a href="./values.yaml#L607">prometheus.metrics.gpuMemory.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memory"><a href="./values.yaml#L609">prometheus.metrics.memory</a></td>
			<td>
object
</td>
			<td>Memory metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "container",
  "label": "memory",
  "name": "container_memory_working_set_bytes",
  "operation": "",
  "quota": "",
  "unit": "bytes",
  "window": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memory--groupBy"><a href="./values.yaml#L611">prometheus.metrics.memory.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"container"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memory--label"><a href="./values.yaml#L613">prometheus.metrics.memory.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"memory"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memory--name"><a href="./values.yaml#L615">prometheus.metrics.memory.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"container_memory_working_set_bytes"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memory--operation"><a href="./values.yaml#L617">prometheus.metrics.memory.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memory--quota"><a href="./values.yaml#L619">prometheus.metrics.memory.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memory--unit"><a href="./values.yaml#L621">prometheus.metrics.memory.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"bytes"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memory--window"><a href="./values.yaml#L623">prometheus.metrics.memory.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memoryRequested"><a href="./values.yaml#L625">prometheus.metrics.memoryRequested</a></td>
			<td>
object
</td>
			<td>Memory requested metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "container",
  "label": "memory-requested",
  "name": "",
  "operation": "",
  "quota": "",
  "unit": "bytes",
  "window": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memoryRequested--groupBy"><a href="./values.yaml#L627">prometheus.metrics.memoryRequested.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"container"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memoryRequested--label"><a href="./values.yaml#L629">prometheus.metrics.memoryRequested.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"memory-requested"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memoryRequested--name"><a href="./values.yaml#L631">prometheus.metrics.memoryRequested.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memoryRequested--operation"><a href="./values.yaml#L633">prometheus.metrics.memoryRequested.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memoryRequested--quota"><a href="./values.yaml#L635">prometheus.metrics.memoryRequested.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memoryRequested--unit"><a href="./values.yaml#L637">prometheus.metrics.memoryRequested.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"bytes"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memoryRequested--window"><a href="./values.yaml#L639">prometheus.metrics.memoryRequested.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkReceive"><a href="./values.yaml#L641">prometheus.metrics.networkReceive</a></td>
			<td>
object
</td>
			<td>Network receive metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "pod",
  "label": "{interface}-receive",
  "name": "container_network_receive_bytes_total",
  "operation": "rate",
  "quota": "",
  "unit": "bytes",
  "window": "2m"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkReceive--groupBy"><a href="./values.yaml#L643">prometheus.metrics.networkReceive.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"pod"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkReceive--label"><a href="./values.yaml#L645">prometheus.metrics.networkReceive.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"{interface}-receive"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkReceive--name"><a href="./values.yaml#L647">prometheus.metrics.networkReceive.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"container_network_receive_bytes_total"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkReceive--operation"><a href="./values.yaml#L649">prometheus.metrics.networkReceive.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"rate"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkReceive--quota"><a href="./values.yaml#L651">prometheus.metrics.networkReceive.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkReceive--unit"><a href="./values.yaml#L653">prometheus.metrics.networkReceive.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"bytes"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkReceive--window"><a href="./values.yaml#L655">prometheus.metrics.networkReceive.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkSend"><a href="./values.yaml#L657">prometheus.metrics.networkSend</a></td>
			<td>
object
</td>
			<td>Network send metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "pod",
  "label": "{interface}-send",
  "name": "container_network_transmit_bytes_total",
  "operation": "rate",
  "quota": "",
  "unit": "bytes",
  "window": "2m"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkSend--groupBy"><a href="./values.yaml#L659">prometheus.metrics.networkSend.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"pod"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkSend--label"><a href="./values.yaml#L661">prometheus.metrics.networkSend.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"{interface}-send"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkSend--name"><a href="./values.yaml#L663">prometheus.metrics.networkSend.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"container_network_transmit_bytes_total"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkSend--operation"><a href="./values.yaml#L665">prometheus.metrics.networkSend.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"rate"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkSend--quota"><a href="./values.yaml#L667">prometheus.metrics.networkSend.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkSend--unit"><a href="./values.yaml#L669">prometheus.metrics.networkSend.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"bytes"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkSend--window"><a href="./values.yaml#L671">prometheus.metrics.networkSend.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumes"><a href="./values.yaml#L673">prometheus.metrics.volumes</a></td>
			<td>
object
</td>
			<td>Volumes metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "",
  "label": "volume-{persistentvolumeclaim}",
  "name": "kubelet_volume_stats_used_bytes",
  "operation": "",
  "quota": "",
  "unit": "bytes",
  "window": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumes--groupBy"><a href="./values.yaml#L675">prometheus.metrics.volumes.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumes--label"><a href="./values.yaml#L677">prometheus.metrics.volumes.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"volume-{persistentvolumeclaim}"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumes--name"><a href="./values.yaml#L679">prometheus.metrics.volumes.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"kubelet_volume_stats_used_bytes"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumes--operation"><a href="./values.yaml#L681">prometheus.metrics.volumes.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumes--quota"><a href="./values.yaml#L683">prometheus.metrics.volumes.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumes--unit"><a href="./values.yaml#L685">prometheus.metrics.volumes.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"bytes"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumes--window"><a href="./values.yaml#L687">prometheus.metrics.volumes.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumesCount"><a href="./values.yaml#L689">prometheus.metrics.volumesCount</a></td>
			<td>
object
</td>
			<td>Volumes count metric configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupBy": "",
  "label": "volumes-count",
  "name": "",
  "operation": "",
  "quota": "",
  "unit": "",
  "window": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumesCount--groupBy"><a href="./values.yaml#L691">prometheus.metrics.volumesCount.groupBy</a></td>
			<td>
string
</td>
			<td>Dimension used to group metric values</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumesCount--label"><a href="./values.yaml#L693">prometheus.metrics.volumesCount.label</a></td>
			<td>
string
</td>
			<td>Label name used for metric exposure</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"volumes-count"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumesCount--name"><a href="./values.yaml#L695">prometheus.metrics.volumesCount.name</a></td>
			<td>
string
</td>
			<td>Prometheus metric name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumesCount--operation"><a href="./values.yaml#L697">prometheus.metrics.volumesCount.operation</a></td>
			<td>
string
</td>
			<td>Prometheus operation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumesCount--quota"><a href="./values.yaml#L699">prometheus.metrics.volumesCount.quota</a></td>
			<td>
string
</td>
			<td>Quota for the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumesCount--unit"><a href="./values.yaml#L701">prometheus.metrics.volumesCount.unit</a></td>
			<td>
string
</td>
			<td>Metric unit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumesCount--window"><a href="./values.yaml#L703">prometheus.metrics.volumesCount.window</a></td>
			<td>
string
</td>
			<td>Time window used by the metric operation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--rateInterval"><a href="./values.yaml#L705">prometheus.rateInterval</a></td>
			<td>
int
</td>
			<td>Rate interval in seconds used in Prometheus rate operations</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
120
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="registry"><a href="./values.yaml#L708">registry</a></td>
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
  "kaniko": {
    "imagePrefix": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="registry--kaniko"><a href="./values.yaml#L710">registry.kaniko</a></td>
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
  "imagePrefix": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="registry--kaniko--imagePrefix"><a href="./values.yaml#L712">registry.kaniko.imagePrefix</a></td>
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
			<td id="replicaCount"><a href="./values.yaml#L715">replicaCount</a></td>
			<td>
int
</td>
			<td>Desired number of pods</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resources"><a href="./values.yaml#L718">resources</a></td>
			<td>
object
</td>
			<td>Pod resource requests and limits.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": {
    "cpu": "2000m",
    "memory": "2048Mi"
  },
  "requests": {
    "cpu": "200m",
    "memory": "512Mi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="resources--limits"><a href="./values.yaml#L720">resources.limits</a></td>
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
  "cpu": "2000m",
  "memory": "2048Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="resources--limits--cpu"><a href="./values.yaml#L722">resources.limits.cpu</a></td>
			<td>
string
</td>
			<td>Max cpu request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2000m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resources--limits--memory"><a href="./values.yaml#L724">resources.limits.memory</a></td>
			<td>
string
</td>
			<td>Max memory request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2048Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resources--requests"><a href="./values.yaml#L726">resources.requests</a></td>
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
  "cpu": "200m",
  "memory": "512Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="resources--requests--cpu"><a href="./values.yaml#L728">resources.requests.cpu</a></td>
			<td>
string
</td>
			<td>Min cpu request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"200m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="resources--requests--memory"><a href="./values.yaml#L730">resources.requests.memory</a></td>
			<td>
string
</td>
			<td>Max cpu request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"512Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="route"><a href="./values.yaml#L733">route</a></td>
			<td>
object
</td>
			<td>HTTPRoute configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "main": {
    "additionalRules": [],
    "annotations": {},
    "apiVersion": "gateway.networking.k8s.io/v1",
    "enabled": false,
    "filters": [],
    "hostnames": [],
    "httpsRedirect": false,
    "kind": "HTTPRoute",
    "labels": {},
    "matches": [
      {
        "path": {
          "type": "PathPrefix",
          "value": "/"
        }
      }
    ],
    "parentRefs": [],
    "timeouts": {}
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="route--main"><a href="./values.yaml#L735">route.main</a></td>
			<td>
object
</td>
			<td>Main HTTPRoute configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "additionalRules": [],
  "annotations": {},
  "apiVersion": "gateway.networking.k8s.io/v1",
  "enabled": false,
  "filters": [],
  "hostnames": [],
  "httpsRedirect": false,
  "kind": "HTTPRoute",
  "labels": {},
  "matches": [
    {
      "path": {
        "type": "PathPrefix",
        "value": "/"
      }
    }
  ],
  "parentRefs": [],
  "timeouts": {}
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="route--main--enabled"><a href="./values.yaml#L737">route.main.enabled</a></td>
			<td>
bool
</td>
			<td>If set to true, the chart will be configured for HTTPRoute utilization.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="route--main--additionalRules"><a href="./values.yaml#L739">route.main.additionalRules</a></td>
			<td>
list
</td>
			<td>Additional rules for the HTTPRoute resource.</td>
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
			<td id="route--main--annotations"><a href="./values.yaml#L741">route.main.annotations</a></td>
			<td>
object
</td>
			<td>Annotations to add to the HTTPRoute resource.</td>
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
			<td id="route--main--apiVersion"><a href="./values.yaml#L743">route.main.apiVersion</a></td>
			<td>
string
</td>
			<td>API version to use in the HTTPRoute resource.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"gateway.networking.k8s.io/v1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="route--main--filters"><a href="./values.yaml#L745">route.main.filters</a></td>
			<td>
list
</td>
			<td>List of filters for the HTTPRoute resource.</td>
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
			<td id="route--main--hostnames"><a href="./values.yaml#L747">route.main.hostnames</a></td>
			<td>
list
</td>
			<td>List of hostnames for the HTTPRoute resource.</td>
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
			<td id="route--main--httpsRedirect"><a href="./values.yaml#L749">route.main.httpsRedirect</a></td>
			<td>
bool
</td>
			<td>If set to true, the HTTPRoute will be configured to redirect HTTP traffic to HTTPS.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="route--main--kind"><a href="./values.yaml#L751">route.main.kind</a></td>
			<td>
string
</td>
			<td>Kind to use in the HTTPRoute resource.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"HTTPRoute"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="route--main--labels"><a href="./values.yaml#L753">route.main.labels</a></td>
			<td>
object
</td>
			<td>Labels to add to the HTTPRoute resource.</td>
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
			<td id="route--main--matches"><a href="./values.yaml#L755">route.main.matches</a></td>
			<td>
list
</td>
			<td>List of matches for the HTTPRoute resource.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "path": {
      "type": "PathPrefix",
      "value": "/"
    }
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="route--main--parentRefs"><a href="./values.yaml#L763">route.main.parentRefs</a></td>
			<td>
list
</td>
			<td>ParentRefs to use in the HTTPRoute resource.</td>
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
			<td id="route--main--timeouts"><a href="./values.yaml#L765">route.main.timeouts</a></td>
			<td>
object
</td>
			<td>Timeouts for the HTTPRoute resource.</td>
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
			<td id="runtime"><a href="./values.yaml#L768">runtime</a></td>
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
  "dbt": {
    "image": "ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-dbt/wrapper-dbt",
    "tag": "0.15.1"
  },
  "hera": {
    "image": "ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-hera/wrapper-hera",
    "tag": "0.15.1"
  },
  "huggingFace": {
    "image": "kserve/huggingfaceserver",
    "tag": "v0.14.0"
  },
  "python": {
    "image": "ghcr.io/scc-digitalhub/digitalhub-serverless/python-runtime",
    "installDependencies": true,
    "tag3_10": "3.10-0.15.2",
    "tag3_11": "3.11-0.15.2",
    "tag3_12": "3.12-0.15.2",
    "tag3_13": "3.13-0.15.2"
  },
  "vllm": {
    "cpu": {
      "image": "vllm/vllm-openai-cpu",
      "tag": "v0.19.1"
    },
    "default": {
      "image": "vllm/vllm-openai",
      "tag": "v0.19.1"
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--dbt"><a href="./values.yaml#L770">runtime.dbt</a></td>
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
  "image": "ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-dbt/wrapper-dbt",
  "tag": "0.15.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--dbt--image"><a href="./values.yaml#L772">runtime.dbt.image</a></td>
			<td>
string
</td>
			<td>DBT wrapper repository</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-dbt/wrapper-dbt"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--dbt--tag"><a href="./values.yaml#L774">runtime.dbt.tag</a></td>
			<td>
string
</td>
			<td>DBT wrapper tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.15.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hera"><a href="./values.yaml#L776">runtime.hera</a></td>
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
  "image": "ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-hera/wrapper-hera",
  "tag": "0.15.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hera--image"><a href="./values.yaml#L778">runtime.hera.image</a></td>
			<td>
string
</td>
			<td>hera wrapper repository</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-hera/wrapper-hera"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hera--tag"><a href="./values.yaml#L780">runtime.hera.tag</a></td>
			<td>
string
</td>
			<td>hera wrapper tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.15.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--huggingFace"><a href="./values.yaml#L782">runtime.huggingFace</a></td>
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
  "image": "kserve/huggingfaceserver",
  "tag": "v0.14.0"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--huggingFace--image"><a href="./values.yaml#L784">runtime.huggingFace.image</a></td>
			<td>
string
</td>
			<td>HuggingFaceServer repository</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"kserve/huggingfaceserver"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--huggingFace--tag"><a href="./values.yaml#L786">runtime.huggingFace.tag</a></td>
			<td>
string
</td>
			<td>HuggingFaceServer tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"v0.14.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python"><a href="./values.yaml#L788">runtime.python</a></td>
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
  "image": "ghcr.io/scc-digitalhub/digitalhub-serverless/python-runtime",
  "installDependencies": true,
  "tag3_10": "3.10-0.15.2",
  "tag3_11": "3.11-0.15.2",
  "tag3_12": "3.12-0.15.2",
  "tag3_13": "3.13-0.15.2"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--image"><a href="./values.yaml#L790">runtime.python.image</a></td>
			<td>
string
</td>
			<td>Python runtime repository</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/digitalhub-serverless/python-runtime"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--installDependencies"><a href="./values.yaml#L792">runtime.python.installDependencies</a></td>
			<td>
bool
</td>
			<td>Whether the Python runtime should install the dependencies at runtime.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--tag3_10"><a href="./values.yaml#L794">runtime.python.tag3_10</a></td>
			<td>
string
</td>
			<td>Python runtime 3.10  tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.10-0.15.2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--tag3_11"><a href="./values.yaml#L796">runtime.python.tag3_11</a></td>
			<td>
string
</td>
			<td>Python runtime 3.11 tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.11-0.15.2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--tag3_12"><a href="./values.yaml#L798">runtime.python.tag3_12</a></td>
			<td>
string
</td>
			<td>Python runtime 3.12 tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.12-0.15.2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--tag3_13"><a href="./values.yaml#L800">runtime.python.tag3_13</a></td>
			<td>
string
</td>
			<td>Python runtime 3.13 tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.13-0.15.2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm"><a href="./values.yaml#L802">runtime.vllm</a></td>
			<td>
object
</td>
			<td>VLLM Server configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": {
    "image": "vllm/vllm-openai-cpu",
    "tag": "v0.19.1"
  },
  "default": {
    "image": "vllm/vllm-openai",
    "tag": "v0.19.1"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--cpu"><a href="./values.yaml#L804">runtime.vllm.cpu</a></td>
			<td>
object
</td>
			<td>VLLM Server CPU configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "vllm/vllm-openai-cpu",
  "tag": "v0.19.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--cpu--image"><a href="./values.yaml#L806">runtime.vllm.cpu.image</a></td>
			<td>
string
</td>
			<td>VLLM Server CPU repository</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"vllm/vllm-openai-cpu"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--cpu--tag"><a href="./values.yaml#L808">runtime.vllm.cpu.tag</a></td>
			<td>
string
</td>
			<td>VLLM Server CPU tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"v0.19.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--default"><a href="./values.yaml#L810">runtime.vllm.default</a></td>
			<td>
object
</td>
			<td>VLLM Server default configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "vllm/vllm-openai",
  "tag": "v0.19.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--default--image"><a href="./values.yaml#L812">runtime.vllm.default.image</a></td>
			<td>
string
</td>
			<td>VLLM Server repository</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"vllm/vllm-openai"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--default--tag"><a href="./values.yaml#L814">runtime.vllm.default.tag</a></td>
			<td>
string
</td>
			<td>VLLM Server tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"v0.19.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3"><a href="./values.yaml#L817">s3</a></td>
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
  "bucket": "",
  "credentials": {
    "accessKey": "",
    "claimPrefix": "",
    "duration": "3600",
    "existingSecret": {
      "accessKeyKey": "",
      "name": "",
      "secretKeyKey": ""
    },
    "policy": "",
    "roleArn": "",
    "secretKey": ""
  },
  "enabled": false,
  "endpoint": "",
  "pathStyleAccess": true,
  "port": "",
  "protocol": "http",
  "publicUrl": "",
  "region": "us-east-1",
  "signatureVersion": "s3v4"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--enabled"><a href="./values.yaml#L819">s3.enabled</a></td>
			<td>
bool
</td>
			<td>Enable this option if you have an S3 deployment that you want to use with Core</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--bucket"><a href="./values.yaml#L821">s3.bucket</a></td>
			<td>
string
</td>
			<td>Bucket of your S3 instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials"><a href="./values.yaml#L823">s3.credentials</a></td>
			<td>
object
</td>
			<td>S3 credentials configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessKey": "",
  "claimPrefix": "",
  "duration": "3600",
  "existingSecret": {
    "accessKeyKey": "",
    "name": "",
    "secretKeyKey": ""
  },
  "policy": "",
  "roleArn": "",
  "secretKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--accessKey"><a href="./values.yaml#L826">s3.credentials.accessKey</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the Access key of your S3 instance.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--claimPrefix"><a href="./values.yaml#L828">s3.credentials.claimPrefix</a></td>
			<td>
string
</td>
			<td>Prefix for the claims related to S3 credentials</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--duration"><a href="./values.yaml#L830">s3.credentials.duration</a></td>
			<td>
string
</td>
			<td>Duration in seconds for the credentials.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3600"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--existingSecret"><a href="./values.yaml#L833">s3.credentials.existingSecret</a></td>
			<td>
object
</td>
			<td>Reference to the secret containing AccessKey and Secret key of your S3 instance.  These values have higher priority than the explicit declarations.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessKeyKey": "",
  "name": "",
  "secretKeyKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--existingSecret--accessKeyKey"><a href="./values.yaml#L835">s3.credentials.existingSecret.accessKeyKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to your accessKey in your secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--existingSecret--name"><a href="./values.yaml#L837">s3.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Secret containing accessKey and secretKey of your s3 instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--existingSecret--secretKeyKey"><a href="./values.yaml#L839">s3.credentials.existingSecret.secretKeyKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to your secretKey in your secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--policy"><a href="./values.yaml#L842">s3.credentials.policy</a></td>
			<td>
string
</td>
			<td>Policy that the credentials for S3 operations will have.  It should be a JSON string in-line.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--roleArn"><a href="./values.yaml#L844">s3.credentials.roleArn</a></td>
			<td>
string
</td>
			<td>Role ARN to assume to get access to the S3 instance.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--secretKey"><a href="./values.yaml#L847">s3.credentials.secretKey</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the Secret key of your S3 instance.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--endpoint"><a href="./values.yaml#L849">s3.endpoint</a></td>
			<td>
string
</td>
			<td>Endpoint of your S3 instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--pathStyleAccess"><a href="./values.yaml#L852">s3.pathStyleAccess</a></td>
			<td>
bool
</td>
			<td>Whether to use path style access for S3 operations.  Set this to true if your S3 instance is any non AWS provider that requires path style access.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--port"><a href="./values.yaml#L854">s3.port</a></td>
			<td>
string
</td>
			<td>Port of your S3 instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--protocol"><a href="./values.yaml#L856">s3.protocol</a></td>
			<td>
string
</td>
			<td>Protocol of your S3 instance (http/https)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--publicUrl"><a href="./values.yaml#L858">s3.publicUrl</a></td>
			<td>
string
</td>
			<td>Public url of your S3 instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--region"><a href="./values.yaml#L860">s3.region</a></td>
			<td>
string
</td>
			<td>Region used by your S3 instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"us-east-1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--signatureVersion"><a href="./values.yaml#L862">s3.signatureVersion</a></td>
			<td>
string
</td>
			<td>Signature version used by your S3 instance.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"s3v4"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext"><a href="./values.yaml#L865">securityContext</a></td>
			<td>
object
</td>
			<td>Core [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L867">securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Core container allow privilege escalation.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext--capabilities"><a href="./values.yaml#L869">securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Core container configure capabilities.</td>
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
			<td id="securityContext--capabilities--drop"><a href="./values.yaml#L871">securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Core container drop capabilities.</td>
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
			<td id="securityContext--runAsNonRoot"><a href="./values.yaml#L874">securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Core container allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext--seccompProfile"><a href="./values.yaml#L876">securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Core container configure seccompProfile.</td>
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
			<td id="securityContext--seccompProfile--type"><a href="./values.yaml#L878">securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Core container configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="service"><a href="./values.yaml#L881">service</a></td>
			<td>
object
</td>
			<td>Service configurations.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "httpNodePort": "",
  "port": "8080",
  "type": "ClusterIP"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="service--httpNodePort"><a href="./values.yaml#L883">service.httpNodePort</a></td>
			<td>
string
</td>
			<td>Service NodePort.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="service--port"><a href="./values.yaml#L885">service.port</a></td>
			<td>
string
</td>
			<td>Service port.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8080"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="service--type"><a href="./values.yaml#L887">service.type</a></td>
			<td>
string
</td>
			<td>Service type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ClusterIP"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount"><a href="./values.yaml#L890">serviceAccount</a></td>
			<td>
object
</td>
			<td>Service account configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "annotations": {},
  "automount": true,
  "create": true,
  "name": "core"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount--annotations"><a href="./values.yaml#L892">serviceAccount.annotations</a></td>
			<td>
object
</td>
			<td>Additional Service Account annotations.</td>
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
			<td id="serviceAccount--automount"><a href="./values.yaml#L894">serviceAccount.automount</a></td>
			<td>
bool
</td>
			<td>Automount API credentials for a Service Account.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount--create"><a href="./values.yaml#L896">serviceAccount.create</a></td>
			<td>
bool
</td>
			<td>If `true` a Service Account will be created.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount--name"><a href="./values.yaml#L898">serviceAccount.name</a></td>
			<td>
string
</td>
			<td>Service account name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"core"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr"><a href="./values.yaml#L901">solr</a></td>
			<td>
object
</td>
			<td>Solr configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "basicAuth": {
    "credentials": {
      "existingSecrets": {
        "admin": {
          "passwordKey": "",
          "secretName": "",
          "usernameKey": ""
        },
        "user": {
          "passwordKey": "",
          "secretName": "",
          "usernameKey": ""
        }
      }
    },
    "enabled": false
  },
  "collection": {
    "name": ""
  },
  "enabled": false,
  "url": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--enabled"><a href="./values.yaml#L903">solr.enabled</a></td>
			<td>
bool
</td>
			<td>Set this value to true if you want to use Core with an existing Solr instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth"><a href="./values.yaml#L905">solr.basicAuth</a></td>
			<td>
object
</td>
			<td>Basic Auth configuration of Solr</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "credentials": {
    "existingSecrets": {
      "admin": {
        "passwordKey": "",
        "secretName": "",
        "usernameKey": ""
      },
      "user": {
        "passwordKey": "",
        "secretName": "",
        "usernameKey": ""
      }
    }
  },
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth--enabled"><a href="./values.yaml#L907">solr.basicAuth.enabled</a></td>
			<td>
bool
</td>
			<td>Set this value to true if you use BasicAuth in your Solr instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth--credentials--existingSecrets"><a href="./values.yaml#L911">solr.basicAuth.credentials.existingSecrets</a></td>
			<td>
object
</td>
			<td>Existing secrets for Solr Basic Auth configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "admin": {
    "passwordKey": "",
    "secretName": "",
    "usernameKey": ""
  },
  "user": {
    "passwordKey": "",
    "secretName": "",
    "usernameKey": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth--credentials--existingSecrets--admin"><a href="./values.yaml#L913">solr.basicAuth.credentials.existingSecrets.admin</a></td>
			<td>
object
</td>
			<td>Existing secret for Solr Basic Auth admin user</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "passwordKey": "",
  "secretName": "",
  "usernameKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth--credentials--existingSecrets--admin--passwordKey"><a href="./values.yaml#L915">solr.basicAuth.credentials.existingSecrets.admin.passwordKey</a></td>
			<td>
string
</td>
			<td>Password key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth--credentials--existingSecrets--admin--secretName"><a href="./values.yaml#L917">solr.basicAuth.credentials.existingSecrets.admin.secretName</a></td>
			<td>
string
</td>
			<td>Secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth--credentials--existingSecrets--admin--usernameKey"><a href="./values.yaml#L919">solr.basicAuth.credentials.existingSecrets.admin.usernameKey</a></td>
			<td>
string
</td>
			<td>Username key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth--credentials--existingSecrets--user"><a href="./values.yaml#L921">solr.basicAuth.credentials.existingSecrets.user</a></td>
			<td>
object
</td>
			<td>Existing secret for Solr Basic Auth user</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "passwordKey": "",
  "secretName": "",
  "usernameKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth--credentials--existingSecrets--user--passwordKey"><a href="./values.yaml#L923">solr.basicAuth.credentials.existingSecrets.user.passwordKey</a></td>
			<td>
string
</td>
			<td>Password key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth--credentials--existingSecrets--user--secretName"><a href="./values.yaml#L925">solr.basicAuth.credentials.existingSecrets.user.secretName</a></td>
			<td>
string
</td>
			<td>Secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--basicAuth--credentials--existingSecrets--user--usernameKey"><a href="./values.yaml#L927">solr.basicAuth.credentials.existingSecrets.user.usernameKey</a></td>
			<td>
string
</td>
			<td>Username key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--collection"><a href="./values.yaml#L929">solr.collection</a></td>
			<td>
object
</td>
			<td>Solr collection configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "name": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--collection--name"><a href="./values.yaml#L931">solr.collection.name</a></td>
			<td>
string
</td>
			<td>Name of the Solr collection</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--url"><a href="./values.yaml#L933">solr.url</a></td>
			<td>
string
</td>
			<td>URL of your Solr instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts"><a href="./values.yaml#L936">sts</a></td>
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
  "affinity": {},
  "autoscaling": {
    "enabled": false,
    "maxReplicas": 100,
    "minReplicas": 1,
    "targetCPUUtilizationPercentage": 80
  },
  "client": {
    "clientId": "",
    "clientSecret": "",
    "existingSecret": {
      "clientIdKey": "",
      "clientSecretKey": "",
      "name": ""
    }
  },
  "credentials": {
    "roles": ""
  },
  "databaseProvider": {
    "credentials": {
      "existingSecret": {
        "name": "",
        "passwordKey": "",
        "usernameKey": ""
      },
      "password": "",
      "username": ""
    },
    "enabled": true
  },
  "enabled": false,
  "fullnameOverride": "",
  "image": {
    "pullPolicy": "IfNotPresent",
    "repository": "ghcr.io/scc-digitalhub/db-sts",
    "tag": "0.3.0"
  },
  "imagePullSecrets": [],
  "jwt": {
    "audience": "sts",
    "claim": "db/role",
    "issuerUri": "http://digitalhub-core.namespace.svc.cluster.local:8080"
  },
  "nameOverride": "",
  "nodeSelector": {},
  "podAnnotations": {},
  "podLabels": {},
  "podSecurityContext": {
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "priorityClassName": "",
  "replicaCount": 1,
  "resources": {
    "limits": {
      "cpu": "200m",
      "memory": "256Mi"
    },
    "requests": {
      "cpu": "100m",
      "memory": "128Mi"
    }
  },
  "securityContext": {
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
  },
  "service": {
    "port": 8080,
    "type": "ClusterIP"
  },
  "serviceAccount": {
    "annotations": {},
    "automount": true,
    "create": true,
    "name": "core-sts"
  },
  "stsDb": {
    "credentials": {
      "existingSecret": {
        "name": "",
        "passwordKey": "",
        "usernameKey": ""
      },
      "password": "",
      "username": ""
    },
    "database": "",
    "driver": "",
    "host": "",
    "platform": "",
    "port": "",
    "schema": ""
  },
  "tolerations": [],
  "volumeMounts": [],
  "volumes": []
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--enabled"><a href="./values.yaml#L938">sts.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable STS component for dynamic credentials</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--affinity"><a href="./values.yaml#L940">sts.affinity</a></td>
			<td>
object
</td>
			<td>Affinity for pod assignment.</td>
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
			<td id="sts--autoscaling"><a href="./values.yaml#L942">sts.autoscaling</a></td>
			<td>
object
</td>
			<td>Adjusts the number of replicas in a workload to match observed resource utilization such as CPU or memory usage.</td>
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
			<td id="sts--autoscaling--enabled"><a href="./values.yaml#L944">sts.autoscaling.enabled</a></td>
			<td>
bool
</td>
			<td>Enable horizontal scaling</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--autoscaling--maxReplicas"><a href="./values.yaml#L946">sts.autoscaling.maxReplicas</a></td>
			<td>
int
</td>
			<td>Set max replicas for autoscaling</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
100
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--autoscaling--minReplicas"><a href="./values.yaml#L948">sts.autoscaling.minReplicas</a></td>
			<td>
int
</td>
			<td>Set min replicas for autoscaling</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L950">sts.autoscaling.targetCPUUtilizationPercentage</a></td>
			<td>
int
</td>
			<td>Set CPU utilization percentage that trigger the autoscaling</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
80
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--client"><a href="./values.yaml#L952">sts.client</a></td>
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
  "clientSecret": "",
  "existingSecret": {
    "clientIdKey": "",
    "clientSecretKey": "",
    "name": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--client--clientId"><a href="./values.yaml#L954">sts.client.clientId</a></td>
			<td>
string
</td>
			<td>ClientID used by STS</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--client--clientSecret"><a href="./values.yaml#L956">sts.client.clientSecret</a></td>
			<td>
string
</td>
			<td>ClientSecret used by STS</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--client--existingSecret"><a href="./values.yaml#L958">sts.client.existingSecret</a></td>
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
  "clientIdKey": "",
  "clientSecretKey": "",
  "name": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--client--existingSecret--clientIdKey"><a href="./values.yaml#L960">sts.client.existingSecret.clientIdKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the STS ClientID</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--client--existingSecret--clientSecretKey"><a href="./values.yaml#L962">sts.client.existingSecret.clientSecretKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the STS ClientSecret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--client--existingSecret--name"><a href="./values.yaml#L964">sts.client.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing STS ClientID and ClientSecret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--credentials"><a href="./values.yaml#L966">sts.credentials</a></td>
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
  "roles": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--credentials--roles"><a href="./values.yaml#L969">sts.credentials.roles</a></td>
			<td>
string
</td>
			<td>Roles that will be mapped to the user for Database operations.  Must correspond to the owner user of the Platform's main database.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--databaseProvider"><a href="./values.yaml#L971">sts.databaseProvider</a></td>
			<td>
object
</td>
			<td>Values of the Platform's main database</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "credentials": {
    "existingSecret": {
      "name": "",
      "passwordKey": "",
      "usernameKey": ""
    },
    "password": "",
    "username": ""
  },
  "enabled": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--databaseProvider--enabled"><a href="./values.yaml#L973">sts.databaseProvider.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable dynamic credentials for Postgres operations.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--databaseProvider--credentials"><a href="./values.yaml#L975">sts.databaseProvider.credentials</a></td>
			<td>
object
</td>
			<td>Credentials of the Platform's main database</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "existingSecret": {
    "name": "",
    "passwordKey": "",
    "usernameKey": ""
  },
  "password": "",
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--databaseProvider--credentials--existingSecret"><a href="./values.yaml#L978">sts.databaseProvider.credentials.existingSecret</a></td>
			<td>
object
</td>
			<td>Reference to the secret containing username and password of the Platform's main database owner user.  These values have higher priority than the explicit declarations.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "name": "",
  "passwordKey": "",
  "usernameKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--databaseProvider--credentials--existingSecret--name"><a href="./values.yaml#L980">sts.databaseProvider.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing username and password of the Platform's main database owner user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--databaseProvider--credentials--existingSecret--passwordKey"><a href="./values.yaml#L982">sts.databaseProvider.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the Platform's main database owner user password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--databaseProvider--credentials--existingSecret--usernameKey"><a href="./values.yaml#L984">sts.databaseProvider.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the Platform's main database owner user username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--databaseProvider--credentials--password"><a href="./values.yaml#L987">sts.databaseProvider.credentials.password</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the Platform's main database owner user password.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--databaseProvider--credentials--username"><a href="./values.yaml#L990">sts.databaseProvider.credentials.username</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the Platform's main database owner user username.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--fullnameOverride"><a href="./values.yaml#L992">sts.fullnameOverride</a></td>
			<td>
string
</td>
			<td>String to fully override `core.fullname` template.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--image"><a href="./values.yaml#L994">sts.image</a></td>
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
  "repository": "ghcr.io/scc-digitalhub/db-sts",
  "tag": "0.3.0"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--image--pullPolicy"><a href="./values.yaml#L996">sts.image.pullPolicy</a></td>
			<td>
string
</td>
			<td>Image pull policy</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"IfNotPresent"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--image--repository"><a href="./values.yaml#L998">sts.image.repository</a></td>
			<td>
string
</td>
			<td>STS container image repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/db-sts"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--image--tag"><a href="./values.yaml#L1000">sts.image.tag</a></td>
			<td>
string
</td>
			<td>STS container image tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.3.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--imagePullSecrets"><a href="./values.yaml#L1005">sts.imagePullSecrets</a></td>
			<td>
list
</td>
			<td>Image pull secrets.  Optionally specify an array of imagePullSecrets.  Secrets must be manually created in the namespace.  ref: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/</td>
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
			<td id="sts--jwt"><a href="./values.yaml#L1007">sts.jwt</a></td>
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
  "audience": "sts",
  "claim": "db/role",
  "issuerUri": "http://digitalhub-core.namespace.svc.cluster.local:8080"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--jwt--audience"><a href="./values.yaml#L1009">sts.jwt.audience</a></td>
			<td>
string
</td>
			<td>JWT audience, must be sts.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sts"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--jwt--claim"><a href="./values.yaml#L1011">sts.jwt.claim</a></td>
			<td>
string
</td>
			<td>JWT claim, must be db/role</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"db/role"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--jwt--issuerUri"><a href="./values.yaml#L1013">sts.jwt.issuerUri</a></td>
			<td>
string
</td>
			<td>URL of the JWT issuer.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http://digitalhub-core.namespace.svc.cluster.local:8080"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--nameOverride"><a href="./values.yaml#L1015">sts.nameOverride</a></td>
			<td>
string
</td>
			<td>String to partially override `core.fullname` template (will maintain the release name)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--nodeSelector"><a href="./values.yaml#L1017">sts.nodeSelector</a></td>
			<td>
object
</td>
			<td>Node labels for pod assignment. Ref: https://kubernetes.io/docs/user-guide/node-selection/.</td>
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
			<td id="sts--podAnnotations"><a href="./values.yaml#L1019">sts.podAnnotations</a></td>
			<td>
object
</td>
			<td>Annotations to add to each pod.</td>
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
			<td id="sts--podLabels"><a href="./values.yaml#L1021">sts.podLabels</a></td>
			<td>
object
</td>
			<td>Labels to add to each pod.</td>
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
			<td id="sts--podSecurityContext"><a href="./values.yaml#L1023">sts.podSecurityContext</a></td>
			<td>
object
</td>
			<td>[Security context for pod](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
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
			<td id="sts--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L1025">sts.podSecurityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Pod allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--podSecurityContext--seccompProfile"><a href="./values.yaml#L1027">sts.podSecurityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Pod configure seccompProfile.</td>
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
			<td id="sts--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L1029">sts.podSecurityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Pod configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--priorityClassName"><a href="./values.yaml#L1031">sts.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class, leave empty to not set any.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--replicaCount"><a href="./values.yaml#L1033">sts.replicaCount</a></td>
			<td>
int
</td>
			<td>Desired number of pods.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--resources"><a href="./values.yaml#L1035">sts.resources</a></td>
			<td>
object
</td>
			<td>STS container resource requests and limits.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": {
    "cpu": "200m",
    "memory": "256Mi"
  },
  "requests": {
    "cpu": "100m",
    "memory": "128Mi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--resources--limits"><a href="./values.yaml#L1037">sts.resources.limits</a></td>
			<td>
object
</td>
			<td>STS container imits</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "200m",
  "memory": "256Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--resources--limits--cpu"><a href="./values.yaml#L1039">sts.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td>CPU limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"200m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--resources--limits--memory"><a href="./values.yaml#L1041">sts.resources.limits.memory</a></td>
			<td>
string
</td>
			<td>Memory limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"256Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--resources--requests"><a href="./values.yaml#L1043">sts.resources.requests</a></td>
			<td>
object
</td>
			<td>STS container requests</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "100m",
  "memory": "128Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--resources--requests--cpu"><a href="./values.yaml#L1045">sts.resources.requests.cpu</a></td>
			<td>
string
</td>
			<td>CPU request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"100m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--resources--requests--memory"><a href="./values.yaml#L1047">sts.resources.requests.memory</a></td>
			<td>
string
</td>
			<td>Memory request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"128Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--securityContext"><a href="./values.yaml#L1049">sts.securityContext</a></td>
			<td>
object
</td>
			<td>STS [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="sts--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1051">sts.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>STS container allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--securityContext--capabilities"><a href="./values.yaml#L1053">sts.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>STS container configure capabilities</td>
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
			<td id="sts--securityContext--capabilities--drop"><a href="./values.yaml#L1055">sts.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>STS container drop capabilities</td>
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
			<td id="sts--securityContext--runAsNonRoot"><a href="./values.yaml#L1058">sts.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>STS container allow run as root</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--securityContext--seccompProfile"><a href="./values.yaml#L1060">sts.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>STS container configure seccompProfile</td>
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
			<td id="sts--securityContext--seccompProfile--type"><a href="./values.yaml#L1062">sts.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>STS container configure seccompProfile type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--service"><a href="./values.yaml#L1064">sts.service</a></td>
			<td>
object
</td>
			<td>STS service configurations</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "port": 8080,
  "type": "ClusterIP"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--service--port"><a href="./values.yaml#L1066">sts.service.port</a></td>
			<td>
int
</td>
			<td>STS service port</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
8080
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--service--type"><a href="./values.yaml#L1068">sts.service.type</a></td>
			<td>
string
</td>
			<td>STS service type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ClusterIP"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--serviceAccount"><a href="./values.yaml#L1070">sts.serviceAccount</a></td>
			<td>
object
</td>
			<td>STS service account configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "annotations": {},
  "automount": true,
  "create": true,
  "name": "core-sts"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--serviceAccount--annotations"><a href="./values.yaml#L1072">sts.serviceAccount.annotations</a></td>
			<td>
object
</td>
			<td>Additional STS Service Account annotations.</td>
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
			<td id="sts--serviceAccount--automount"><a href="./values.yaml#L1074">sts.serviceAccount.automount</a></td>
			<td>
bool
</td>
			<td>Automount API credentials for a STS Service Account.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--serviceAccount--create"><a href="./values.yaml#L1076">sts.serviceAccount.create</a></td>
			<td>
bool
</td>
			<td>If `true` a STS Service Account will be created.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--serviceAccount--name"><a href="./values.yaml#L1078">sts.serviceAccount.name</a></td>
			<td>
string
</td>
			<td>STS service account name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"core-sts"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb"><a href="./values.yaml#L1080">sts.stsDb</a></td>
			<td>
object
</td>
			<td>Values of the STS database</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "credentials": {
    "existingSecret": {
      "name": "",
      "passwordKey": "",
      "usernameKey": ""
    },
    "password": "",
    "username": ""
  },
  "database": "",
  "driver": "",
  "host": "",
  "platform": "",
  "port": "",
  "schema": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--credentials"><a href="./values.yaml#L1082">sts.stsDb.credentials</a></td>
			<td>
object
</td>
			<td>Credentials of the STS database</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "existingSecret": {
    "name": "",
    "passwordKey": "",
    "usernameKey": ""
  },
  "password": "",
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--credentials--existingSecret"><a href="./values.yaml#L1085">sts.stsDb.credentials.existingSecret</a></td>
			<td>
object
</td>
			<td>Reference to the secret containing username and password of the STS database user.  These values have higher priority than the explicit declarations.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "name": "",
  "passwordKey": "",
  "usernameKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--credentials--existingSecret--name"><a href="./values.yaml#L1087">sts.stsDb.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing username and password of the STS database user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--credentials--existingSecret--passwordKey"><a href="./values.yaml#L1089">sts.stsDb.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the STS database user password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--credentials--existingSecret--usernameKey"><a href="./values.yaml#L1091">sts.stsDb.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the STS database user username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--credentials--password"><a href="./values.yaml#L1094">sts.stsDb.credentials.password</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the STS database user password.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--credentials--username"><a href="./values.yaml#L1097">sts.stsDb.credentials.username</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the STS database user username.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--database"><a href="./values.yaml#L1099">sts.stsDb.database</a></td>
			<td>
string
</td>
			<td>Name of the STS database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--driver"><a href="./values.yaml#L1101">sts.stsDb.driver</a></td>
			<td>
string
</td>
			<td>Driver used by the STS database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--host"><a href="./values.yaml#L1103">sts.stsDb.host</a></td>
			<td>
string
</td>
			<td>Host of the STS database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--platform"><a href="./values.yaml#L1105">sts.stsDb.platform</a></td>
			<td>
string
</td>
			<td>Which kind of database you are using for STS (For example, postgresql)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--port"><a href="./values.yaml#L1107">sts.stsDb.port</a></td>
			<td>
string
</td>
			<td>STS Database port</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--stsDb--schema"><a href="./values.yaml#L1109">sts.stsDb.schema</a></td>
			<td>
string
</td>
			<td>STS database schema</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="sts--tolerations"><a href="./values.yaml#L1111">sts.tolerations</a></td>
			<td>
list
</td>
			<td>List of node taints to tolerate (requires Kubernetes >= 1.6).</td>
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
			<td id="sts--volumeMounts"><a href="./values.yaml#L1113">sts.volumeMounts</a></td>
			<td>
list
</td>
			<td>Additional volumes.</td>
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
			<td id="sts--volumes"><a href="./values.yaml#L1115">sts.volumes</a></td>
			<td>
list
</td>
			<td>Additional volumes to mount.</td>
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
			<td id="templates"><a href="./values.yaml#L1119">templates</a></td>
			<td>
list
</td>
			<td>Specify Core templates in list format.  Every template should correspond to a key in a configmap dedicated to the templates.</td>
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
			<td id="tolerations"><a href="./values.yaml#L1122">tolerations</a></td>
			<td>
list
</td>
			<td>List of node taints to tolerate (requires Kubernetes >= 1.6).</td>
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
			<td id="volumeMounts"><a href="./values.yaml#L1125">volumeMounts</a></td>
			<td>
list
</td>
			<td>Additional volumes.</td>
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
			<td id="volumes"><a href="./values.yaml#L1128">volumes</a></td>
			<td>
list
</td>
			<td>Additional volumes to mount.</td>
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
