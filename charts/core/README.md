<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# core

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/core/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=core*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 1.1.3](https://img.shields.io/badge/Version-1.1.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.16.0](https://img.shields.io/badge/AppVersion-0.16.0-informational?style=flat-square)

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
    "enableMetrics": false,
    "enableResults": "default"
  },
  "emptyDir": {
    "medium": "",
    "size": "128Mi"
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
  "monitorsDelay": 10,
  "persistenVolumeClaim": {
    "limits": "",
    "requests": "",
    "storageClass": ""
  },
  "registrySecret": "",
  "resources": {
    "cpuLim": "",
    "cpuReq": "",
    "gpuKey": "",
    "memLim": "",
    "memReq": "",
    "memToleration": 1.1
  },
  "security": {
    "disableRoot": true,
    "group": "",
    "seccompProfile": "RuntimeDefault",
    "user": ""
  },
  "service": {
    "type": "NodePort"
  },
  "sharedVolume": {
    "accessMode": "",
    "storageClass": ""
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
  "enableMetrics": false,
  "enableResults": "default"
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
			<td id="additionalConfig--debug--enableResults"><a href="./values.yaml#L36">additionalConfig.debug.enableResults</a></td>
			<td>
string
</td>
			<td>Result collection mode.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"default"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--emptyDir"><a href="./values.yaml#L38">additionalConfig.emptyDir</a></td>
			<td>
object
</td>
			<td>Empty directory volume configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "medium": "",
  "size": "128Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--emptyDir--medium"><a href="./values.yaml#L40">additionalConfig.emptyDir.medium</a></td>
			<td>
string
</td>
			<td>Storage medium for empty directory volumes.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--emptyDir--size"><a href="./values.yaml#L42">additionalConfig.emptyDir.size</a></td>
			<td>
string
</td>
			<td>Maximum empty directory size.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"128Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--ephemeralVolume"><a href="./values.yaml#L44">additionalConfig.ephemeralVolume</a></td>
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
			<td id="additionalConfig--image"><a href="./values.yaml#L52">additionalConfig.image</a></td>
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
			<td id="additionalConfig--image--pullPolicy"><a href="./values.yaml#L54">additionalConfig.image.pullPolicy</a></td>
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
			<td id="additionalConfig--job"><a href="./values.yaml#L56">additionalConfig.job</a></td>
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
			<td id="additionalConfig--job--deadline"><a href="./values.yaml#L58">additionalConfig.job.deadline</a></td>
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
			<td id="additionalConfig--job--jobSuspend"><a href="./values.yaml#L60">additionalConfig.job.jobSuspend</a></td>
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
			<td id="additionalConfig--monitorsDelay"><a href="./values.yaml#L62">additionalConfig.monitorsDelay</a></td>
			<td>
int
</td>
			<td>Monitor polling delay in seconds.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
10
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--persistenVolumeClaim"><a href="./values.yaml#L64">additionalConfig.persistenVolumeClaim</a></td>
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
			<td id="additionalConfig--persistenVolumeClaim--limits"><a href="./values.yaml#L66">additionalConfig.persistenVolumeClaim.limits</a></td>
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
			<td id="additionalConfig--persistenVolumeClaim--requests"><a href="./values.yaml#L68">additionalConfig.persistenVolumeClaim.requests</a></td>
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
			<td id="additionalConfig--persistenVolumeClaim--storageClass"><a href="./values.yaml#L70">additionalConfig.persistenVolumeClaim.storageClass</a></td>
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
			<td id="additionalConfig--registrySecret"><a href="./values.yaml#L72">additionalConfig.registrySecret</a></td>
			<td>
string
</td>
			<td>Image registry secret; empty inherits the global registry secret.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--resources"><a href="./values.yaml#L74">additionalConfig.resources</a></td>
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
  "memReq": "",
  "memToleration": 1.1
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--resources--cpuLim"><a href="./values.yaml#L76">additionalConfig.resources.cpuLim</a></td>
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
			<td id="additionalConfig--resources--cpuReq"><a href="./values.yaml#L78">additionalConfig.resources.cpuReq</a></td>
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
			<td id="additionalConfig--resources--gpuKey"><a href="./values.yaml#L80">additionalConfig.resources.gpuKey</a></td>
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
			<td id="additionalConfig--resources--memLim"><a href="./values.yaml#L82">additionalConfig.resources.memLim</a></td>
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
			<td id="additionalConfig--resources--memReq"><a href="./values.yaml#L84">additionalConfig.resources.memReq</a></td>
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
			<td id="additionalConfig--resources--memToleration"><a href="./values.yaml#L86">additionalConfig.resources.memToleration</a></td>
			<td>
float
</td>
			<td>Memory resource tolerance multiplier.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1.1
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--security"><a href="./values.yaml#L88">additionalConfig.security</a></td>
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
  "disableRoot": true,
  "group": "",
  "seccompProfile": "RuntimeDefault",
  "user": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--security--disableRoot"><a href="./values.yaml#L90">additionalConfig.security.disableRoot</a></td>
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
			<td id="additionalConfig--security--group"><a href="./values.yaml#L92">additionalConfig.security.group</a></td>
			<td>
string
</td>
			<td>Group ID for workload containers.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--security--seccompProfile"><a href="./values.yaml#L94">additionalConfig.security.seccompProfile</a></td>
			<td>
string
</td>
			<td>Seccomp profile for workload containers.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--security--user"><a href="./values.yaml#L96">additionalConfig.security.user</a></td>
			<td>
string
</td>
			<td>User ID for workload containers.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--service"><a href="./values.yaml#L98">additionalConfig.service</a></td>
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
			<td id="additionalConfig--service--type"><a href="./values.yaml#L100">additionalConfig.service.type</a></td>
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
			<td id="additionalConfig--sharedVolume"><a href="./values.yaml#L102">additionalConfig.sharedVolume</a></td>
			<td>
object
</td>
			<td>Shared volume configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessMode": "",
  "storageClass": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--sharedVolume--accessMode"><a href="./values.yaml#L104">additionalConfig.sharedVolume.accessMode</a></td>
			<td>
string
</td>
			<td>Access mode for the shared volume</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--sharedVolume--storageClass"><a href="./values.yaml#L106">additionalConfig.sharedVolume.storageClass</a></td>
			<td>
string
</td>
			<td>Storage class for the shared volume</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="additionalConfig--workflow--volume"><a href="./values.yaml#L110">additionalConfig.workflow.volume</a></td>
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
			<td id="additionalConfig--workflow--volume--accessMode"><a href="./values.yaml#L112">additionalConfig.workflow.volume.accessMode</a></td>
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
			<td id="affinity"><a href="./values.yaml#L117">affinity</a></td>
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
			<td id="annotations"><a href="./values.yaml#L120">annotations</a></td>
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
			<td id="annotations--global"><a href="./values.yaml#L122">annotations.global</a></td>
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
			<td id="annotations--configmap"><a href="./values.yaml#L124">annotations.configmap</a></td>
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
			<td id="annotations--deployment"><a href="./values.yaml#L126">annotations.deployment</a></td>
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
			<td id="annotations--secret"><a href="./values.yaml#L128">annotations.secret</a></td>
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
			<td id="annotations--service"><a href="./values.yaml#L130">annotations.service</a></td>
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
			<td id="application"><a href="./values.yaml#L133">application</a></td>
			<td>
object
</td>
			<td>Core application metadata.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "apiLevel": "",
  "contacts": {
    "email": "",
    "link": "https://github.com/scc-digitalhub/digitalhub-core",
    "name": "@project.name@"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="application--apiLevel"><a href="./values.yaml#L135">application.apiLevel</a></td>
			<td>
string
</td>
			<td>API level.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="application--contacts"><a href="./values.yaml#L137">application.contacts</a></td>
			<td>
object
</td>
			<td>Application contact information.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "email": "",
  "link": "https://github.com/scc-digitalhub/digitalhub-core",
  "name": "@project.name@"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="application--contacts--email"><a href="./values.yaml#L139">application.contacts.email</a></td>
			<td>
string
</td>
			<td>Contact email address.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="application--contacts--link"><a href="./values.yaml#L141">application.contacts.link</a></td>
			<td>
string
</td>
			<td>Contact URL.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"https://github.com/scc-digitalhub/digitalhub-core"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="application--contacts--name"><a href="./values.yaml#L143">application.contacts.name</a></td>
			<td>
string
</td>
			<td>Contact name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"@project.name@"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argoWorkflow"><a href="./values.yaml#L146">argoWorkflow</a></td>
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
			<td id="argoWorkflow--configmap"><a href="./values.yaml#L148">argoWorkflow.configmap</a></td>
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
			<td id="argoWorkflow--key"><a href="./values.yaml#L150">argoWorkflow.key</a></td>
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
			<td id="argoWorkflow--serviceAccount"><a href="./values.yaml#L152">argoWorkflow.serviceAccount</a></td>
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
			<td id="argoWorkflow--user"><a href="./values.yaml#L154">argoWorkflow.user</a></td>
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
			<td id="authentication"><a href="./values.yaml#L157">authentication</a></td>
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
    "claim": "",
    "clientName": "",
    "clientSecret": "",
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
    "scope": "",
    "username": "preferred_username"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--basic"><a href="./values.yaml#L159">authentication.basic</a></td>
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
			<td id="authentication--basic--enabled"><a href="./values.yaml#L161">authentication.basic.enabled</a></td>
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
			<td id="authentication--basic--password"><a href="./values.yaml#L163">authentication.basic.password</a></td>
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
			<td id="authentication--basic--username"><a href="./values.yaml#L165">authentication.basic.username</a></td>
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
			<td id="authentication--openId"><a href="./values.yaml#L167">authentication.openId</a></td>
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
  "claim": "",
  "clientName": "",
  "clientSecret": "",
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
  "scope": "",
  "username": "preferred_username"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--enabled"><a href="./values.yaml#L169">authentication.openId.enabled</a></td>
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
			<td id="authentication--openId--claim"><a href="./values.yaml#L171">authentication.openId.claim</a></td>
			<td>
string
</td>
			<td>OIDC claim; empty inherits the JWT claim.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--clientName"><a href="./values.yaml#L173">authentication.openId.clientName</a></td>
			<td>
string
</td>
			<td>OIDC client name; empty uses the release name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--clientSecret"><a href="./values.yaml#L175">authentication.openId.clientSecret</a></td>
			<td>
string
</td>
			<td>OIDC client secret, stored in the ConfigMap when configured.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="authentication--openId--externalSecret"><a href="./values.yaml#L177">authentication.openId.externalSecret</a></td>
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
			<td id="authentication--openId--externalSecret--key"><a href="./values.yaml#L179">authentication.openId.externalSecret.key</a></td>
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
			<td id="authentication--openId--externalSecret--name"><a href="./values.yaml#L181">authentication.openId.externalSecret.name</a></td>
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
			<td id="authentication--openId--issuerUri"><a href="./values.yaml#L183">authentication.openId.issuerUri</a></td>
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
			<td id="authentication--openId--jwtAudience"><a href="./values.yaml#L185">authentication.openId.jwtAudience</a></td>
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
			<td id="authentication--openId--jwtClaim"><a href="./values.yaml#L187">authentication.openId.jwtClaim</a></td>
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
			<td id="authentication--openId--jwtUsername"><a href="./values.yaml#L189">authentication.openId.jwtUsername</a></td>
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
			<td id="authentication--openId--oidcClientId"><a href="./values.yaml#L191">authentication.openId.oidcClientId</a></td>
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
			<td id="authentication--openId--scope"><a href="./values.yaml#L193">authentication.openId.scope</a></td>
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
			<td id="authentication--openId--username"><a href="./values.yaml#L195">authentication.openId.username</a></td>
			<td>
string
</td>
			<td>OIDC username attribute.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"preferred_username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="autoscaling"><a href="./values.yaml#L198">autoscaling</a></td>
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
			<td id="autoscaling--enabled"><a href="./values.yaml#L200">autoscaling.enabled</a></td>
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
			<td id="autoscaling--maxReplicas"><a href="./values.yaml#L202">autoscaling.maxReplicas</a></td>
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
			<td id="autoscaling--minReplicas"><a href="./values.yaml#L204">autoscaling.minReplicas</a></td>
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
			<td id="autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L206">autoscaling.targetCPUUtilizationPercentage</a></td>
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
			<td id="builder"><a href="./values.yaml#L209">builder</a></td>
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
  "buildkit": {
    "imagePrefix": "",
    "imageRegistry": "",
    "registryInsecure": false
  },
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
  },
  "kaniko": {
    "imagePrefix": "",
    "imageRegistry": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--buildkit"><a href="./values.yaml#L211">builder.buildkit</a></td>
			<td>
object
</td>
			<td>BuildKit image registry configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "imagePrefix": "",
  "imageRegistry": "",
  "registryInsecure": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--buildkit--imagePrefix"><a href="./values.yaml#L213">builder.buildkit.imagePrefix</a></td>
			<td>
string
</td>
			<td>Image prefix; empty inherits the framework image prefix.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--buildkit--imageRegistry"><a href="./values.yaml#L215">builder.buildkit.imageRegistry</a></td>
			<td>
string
</td>
			<td>Registry; empty inherits the global registry URL.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--buildkit--registryInsecure"><a href="./values.yaml#L217">builder.buildkit.registryInsecure</a></td>
			<td>
bool
</td>
			<td>Allow an insecure registry.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--framework--args"><a href="./values.yaml#L220">builder.framework.args</a></td>
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
			<td id="builder--framework--client-secret"><a href="./values.yaml#L222">builder.framework.client-secret</a></td>
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
			<td id="builder--framework--client-secret--name"><a href="./values.yaml#L226">builder.framework.client-secret.name</a></td>
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
			<td id="builder--framework--command"><a href="./values.yaml#L228">builder.framework.command</a></td>
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
			<td id="builder--framework--image"><a href="./values.yaml#L230">builder.framework.image</a></td>
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
			<td id="builder--framework--image-prefix"><a href="./values.yaml#L232">builder.framework.image-prefix</a></td>
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
			<td id="builder--framework--name"><a href="./values.yaml#L234">builder.framework.name</a></td>
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
			<td id="builder--framework--secret"><a href="./values.yaml#L236">builder.framework.secret</a></td>
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
			<td id="builder--kaniko"><a href="./values.yaml#L238">builder.kaniko</a></td>
			<td>
object
</td>
			<td>Kaniko image registry configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "imagePrefix": "",
  "imageRegistry": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--kaniko--imagePrefix"><a href="./values.yaml#L240">builder.kaniko.imagePrefix</a></td>
			<td>
string
</td>
			<td>Image prefix; empty inherits the framework image prefix.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="builder--kaniko--imageRegistry"><a href="./values.yaml#L242">builder.kaniko.imageRegistry</a></td>
			<td>
string
</td>
			<td>Registry; empty inherits the global registry URL.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="cache"><a href="./values.yaml#L245">cache</a></td>
			<td>
object
</td>
			<td>Cache configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "caffeineSpec": "maximumSize=10000,expireAfterWrite=600s"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="cache--caffeineSpec"><a href="./values.yaml#L247">cache.caffeineSpec</a></td>
			<td>
string
</td>
			<td>Caffeine cache specification.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"maximumSize=10000,expireAfterWrite=600s"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="commonCredsSecret"><a href="./values.yaml#L256">commonCredsSecret</a></td>
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
			<td id="configmapAdditionalEnv"><a href="./values.yaml#L261">configmapAdditionalEnv</a></td>
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
			<td id="console"><a href="./values.yaml#L264">console</a></td>
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
  "clarityKey": "",
  "containerImagesRegistry": {
    "admin": {
      "existingSecret": {
        "name": "",
        "passwordKey": "",
        "usernameKey": ""
      },
      "password": "",
      "username": ""
    },
    "registryUrl": "",
    "user": {
      "existingSecret": {
        "name": "",
        "passwordKey": "",
        "usernameKey": ""
      },
      "password": "",
      "username": ""
    }
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
			<td id="console--clarityKey"><a href="./values.yaml#L266">console.clarityKey</a></td>
			<td>
string
</td>
			<td>Frontend Clarity integration key.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry"><a href="./values.yaml#L268">console.containerImagesRegistry</a></td>
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
  "admin": {
    "existingSecret": {
      "name": "",
      "passwordKey": "",
      "usernameKey": ""
    },
    "password": "",
    "username": ""
  },
  "registryUrl": "",
  "user": {
    "existingSecret": {
      "name": "",
      "passwordKey": "",
      "usernameKey": ""
    },
    "password": "",
    "username": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--admin"><a href="./values.yaml#L270">console.containerImagesRegistry.admin</a></td>
			<td>
object
</td>
			<td>Registry admin configuration</td>
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
			<td id="console--containerImagesRegistry--admin--existingSecret"><a href="./values.yaml#L272">console.containerImagesRegistry.admin.existingSecret</a></td>
			<td>
object
</td>
			<td>Existing secret containing the admin credentials for the registry used by the console.</td>
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
			<td id="console--containerImagesRegistry--admin--existingSecret--name"><a href="./values.yaml#L274">console.containerImagesRegistry.admin.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing the admin credentials for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--admin--existingSecret--passwordKey"><a href="./values.yaml#L276">console.containerImagesRegistry.admin.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Password key of the secret containing the admin credentials for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--admin--existingSecret--usernameKey"><a href="./values.yaml#L278">console.containerImagesRegistry.admin.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Username key of the secret containing the admin credentials for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--admin--password"><a href="./values.yaml#L280">console.containerImagesRegistry.admin.password</a></td>
			<td>
string
</td>
			<td>Password for the registry admin used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--admin--username"><a href="./values.yaml#L282">console.containerImagesRegistry.admin.username</a></td>
			<td>
string
</td>
			<td>Username for the registry admin used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--registryUrl"><a href="./values.yaml#L284">console.containerImagesRegistry.registryUrl</a></td>
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
			<td id="console--containerImagesRegistry--user"><a href="./values.yaml#L286">console.containerImagesRegistry.user</a></td>
			<td>
object
</td>
			<td>Registry user configuration</td>
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
			<td id="console--containerImagesRegistry--user--existingSecret"><a href="./values.yaml#L288">console.containerImagesRegistry.user.existingSecret</a></td>
			<td>
object
</td>
			<td>Existing secret containing the user credentials for the registry used by the console.</td>
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
			<td id="console--containerImagesRegistry--user--existingSecret--name"><a href="./values.yaml#L290">console.containerImagesRegistry.user.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing the user credentials for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--user--existingSecret--passwordKey"><a href="./values.yaml#L292">console.containerImagesRegistry.user.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Password key of the secret containing the user credentials for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--user--existingSecret--usernameKey"><a href="./values.yaml#L294">console.containerImagesRegistry.user.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Username key of the secret containing the user credentials for the registry used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--user--password"><a href="./values.yaml#L296">console.containerImagesRegistry.user.password</a></td>
			<td>
string
</td>
			<td>Password for the registry user used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--containerImagesRegistry--user--username"><a href="./values.yaml#L298">console.containerImagesRegistry.user.username</a></td>
			<td>
string
</td>
			<td>Username for the registry user used by the console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="console--metrics"><a href="./values.yaml#L300">console.metrics</a></td>
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
			<td id="console--metrics--instance"><a href="./values.yaml#L302">console.metrics.instance</a></td>
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
			<td id="console--metrics--project"><a href="./values.yaml#L304">console.metrics.project</a></td>
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
			<td id="console--metrics--run"><a href="./values.yaml#L306">console.metrics.run</a></td>
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
			<td id="console--metrics--user"><a href="./values.yaml#L308">console.metrics.user</a></td>
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
			<td id="coreAuthCreds"><a href="./values.yaml#L311">coreAuthCreds</a></td>
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
			<td id="coreAuthCreds--clientId"><a href="./values.yaml#L313">coreAuthCreds.clientId</a></td>
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
			<td id="coreAuthCreds--clientSecret"><a href="./values.yaml#L315">coreAuthCreds.clientSecret</a></td>
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
			<td id="coreAuthCreds--existingSecret"><a href="./values.yaml#L317">coreAuthCreds.existingSecret</a></td>
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
			<td id="coreAuthCreds--existingSecret--clientIdKey"><a href="./values.yaml#L319">coreAuthCreds.existingSecret.clientIdKey</a></td>
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
			<td id="coreAuthCreds--existingSecret--clientSecretKey"><a href="./values.yaml#L321">coreAuthCreds.existingSecret.clientSecretKey</a></td>
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
			<td id="coreAuthCreds--existingSecret--secretName"><a href="./values.yaml#L323">coreAuthCreds.existingSecret.secretName</a></td>
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
			<td id="coreTokens"><a href="./values.yaml#L326">coreTokens</a></td>
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
  "jwksCacheControl": "public, max-age=900, must-revalidate, no-transform",
  "redirectUris": "",
  "refreshTokenDuration": "86400",
  "webIdentityTokenDuration": "2592000"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreTokens--accessTokenDuration"><a href="./values.yaml#L328">coreTokens.accessTokenDuration</a></td>
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
			<td id="coreTokens--jwksCacheControl"><a href="./values.yaml#L330">coreTokens.jwksCacheControl</a></td>
			<td>
string
</td>
			<td>JWKS response cache-control header.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"public, max-age=900, must-revalidate, no-transform"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreTokens--redirectUris"><a href="./values.yaml#L332">coreTokens.redirectUris</a></td>
			<td>
string
</td>
			<td>Allowed redirect URIs; empty uses localhost and the Core callback endpoint.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coreTokens--refreshTokenDuration"><a href="./values.yaml#L334">coreTokens.refreshTokenDuration</a></td>
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
			<td id="coreTokens--webIdentityTokenDuration"><a href="./values.yaml#L336">coreTokens.webIdentityTokenDuration</a></td>
			<td>
string
</td>
			<td>Duration of the web identity token generated by Core in seconds</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2592000"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="corsOrigin"><a href="./values.yaml#L339">corsOrigin</a></td>
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
			<td id="customRoles"><a href="./values.yaml#L342">customRoles</a></td>
			<td>
list
</td>
			<td>Custom roles that can be used to grant access to Core resources.</td>
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
			<td id="databaseProvider"><a href="./values.yaml#L345">databaseProvider</a></td>
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
  "platform": "postgresql",
  "port": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="databaseProvider--database"><a href="./values.yaml#L347">databaseProvider.database</a></td>
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
			<td id="databaseProvider--host"><a href="./values.yaml#L349">databaseProvider.host</a></td>
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
			<td id="databaseProvider--platform"><a href="./values.yaml#L351">databaseProvider.platform</a></td>
			<td>
string
</td>
			<td>Platform database engine.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"postgresql"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="databaseProvider--port"><a href="./values.yaml#L353">databaseProvider.port</a></td>
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
			<td id="dbBaseline"><a href="./values.yaml#L356">dbBaseline</a></td>
			<td>
string
</td>
			<td>Database baseline version. It is used to determine if the database needs to be upgraded or not.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"15"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="defaultStorageClass"><a href="./values.yaml#L359">defaultStorageClass</a></td>
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
			<td id="envoyGateway"><a href="./values.yaml#L364">envoyGateway</a></td>
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
  },
  "payloadLogger": {
    "host": "",
    "port": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--enabled"><a href="./values.yaml#L366">envoyGateway.enabled</a></td>
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
			<td id="envoyGateway--aiGateway"><a href="./values.yaml#L368">envoyGateway.aiGateway</a></td>
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
			<td id="envoyGateway--aiGateway--enabled"><a href="./values.yaml#L370">envoyGateway.aiGateway.enabled</a></td>
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
			<td id="envoyGateway--aiGateway--endpoint"><a href="./values.yaml#L372">envoyGateway.aiGateway.endpoint</a></td>
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
			<td id="envoyGateway--aiGateway--name"><a href="./values.yaml#L374">envoyGateway.aiGateway.name</a></td>
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
			<td id="envoyGateway--genericGateway"><a href="./values.yaml#L376">envoyGateway.genericGateway</a></td>
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
			<td id="envoyGateway--genericGateway--enabled"><a href="./values.yaml#L378">envoyGateway.genericGateway.enabled</a></td>
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
			<td id="envoyGateway--genericGateway--endpoint"><a href="./values.yaml#L380">envoyGateway.genericGateway.endpoint</a></td>
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
			<td id="envoyGateway--genericGateway--name"><a href="./values.yaml#L382">envoyGateway.genericGateway.name</a></td>
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
			<td id="envoyGateway--payloadLogger"><a href="./values.yaml#L384">envoyGateway.payloadLogger</a></td>
			<td>
object
</td>
			<td>Payload logger configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "host": "",
  "port": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--payloadLogger--host"><a href="./values.yaml#L386">envoyGateway.payloadLogger.host</a></td>
			<td>
string
</td>
			<td>Payload logger host.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="envoyGateway--payloadLogger--port"><a href="./values.yaml#L388">envoyGateway.payloadLogger.port</a></td>
			<td>
string
</td>
			<td>Payload logger port.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="extensions"><a href="./values.yaml#L391">extensions</a></td>
			<td>
object
</td>
			<td>Core extensions configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "path": "classpath:/extensions/"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="extensions--path"><a href="./values.yaml#L393">extensions.path</a></td>
			<td>
string
</td>
			<td>Extension discovery path.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"classpath:/extensions/"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="files"><a href="./values.yaml#L396">files</a></td>
			<td>
object
</td>
			<td>File processing configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "maxColumnSize": 2097152
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="files--maxColumnSize"><a href="./values.yaml#L398">files.maxColumnSize</a></td>
			<td>
int
</td>
			<td>Maximum file column size in bytes.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
2097152
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="fullnameOverride"><a href="./values.yaml#L401">fullnameOverride</a></td>
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
			<td id="healthcheck"><a href="./values.yaml#L404">healthcheck</a></td>
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
			<td id="healthcheck--enabled"><a href="./values.yaml#L406">healthcheck.enabled</a></td>
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
			<td id="healthcheck--livenessProbe"><a href="./values.yaml#L408">healthcheck.livenessProbe</a></td>
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
			<td id="healthcheck--livenessProbe--path"><a href="./values.yaml#L410">healthcheck.livenessProbe.path</a></td>
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
			<td id="healthcheck--livenessProbe--periodSeconds"><a href="./values.yaml#L412">healthcheck.livenessProbe.periodSeconds</a></td>
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
			<td id="healthcheck--readinessProbe--path"><a href="./values.yaml#L416">healthcheck.readinessProbe.path</a></td>
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
			<td id="healthcheck--readinessProbe--periodSeconds"><a href="./values.yaml#L418">healthcheck.readinessProbe.periodSeconds</a></td>
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
			<td id="healthcheck--service"><a href="./values.yaml#L420">healthcheck.service</a></td>
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
			<td id="healthcheck--service--port"><a href="./values.yaml#L422">healthcheck.service.port</a></td>
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
			<td id="healthcheck--service--portName"><a href="./values.yaml#L424">healthcheck.service.portName</a></td>
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
			<td id="healthcheck--service--protocol"><a href="./values.yaml#L426">healthcheck.service.protocol</a></td>
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
			<td id="healthcheck--startupProbe"><a href="./values.yaml#L428">healthcheck.startupProbe</a></td>
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
			<td id="healthcheck--startupProbe--failureThreshold"><a href="./values.yaml#L430">healthcheck.startupProbe.failureThreshold</a></td>
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
			<td id="healthcheck--startupProbe--path"><a href="./values.yaml#L432">healthcheck.startupProbe.path</a></td>
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
			<td id="healthcheck--startupProbe--periodSeconds"><a href="./values.yaml#L434">healthcheck.startupProbe.periodSeconds</a></td>
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
			<td id="huggingface"><a href="./values.yaml#L437">huggingface</a></td>
			<td>
object
</td>
			<td>HuggingFace integration configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "apiUrl": "https://huggingface.co",
  "metadata": "author,pipeline_tag,library_name,tags,cardData,config,safetensors,sha"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="huggingface--apiUrl"><a href="./values.yaml#L439">huggingface.apiUrl</a></td>
			<td>
string
</td>
			<td>HuggingFace API URL</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"https://huggingface.co"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="huggingface--metadata"><a href="./values.yaml#L441">huggingface.metadata</a></td>
			<td>
string
</td>
			<td>Metadata to be retrieved from HuggingFace models. It is a comma separated list of metadata fields.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"author,pipeline_tag,library_name,tags,cardData,config,safetensors,sha"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="image"><a href="./values.yaml#L444">image</a></td>
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
			<td id="image--pullPolicy"><a href="./values.yaml#L446">image.pullPolicy</a></td>
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
			<td id="image--repository"><a href="./values.yaml#L448">image.repository</a></td>
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
			<td id="image--tag"><a href="./values.yaml#L450">image.tag</a></td>
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
			<td id="imagePullSecrets"><a href="./values.yaml#L453">imagePullSecrets</a></td>
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
			<td id="ingress"><a href="./values.yaml#L456">ingress</a></td>
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
			<td id="ingress--enabled"><a href="./values.yaml#L458">ingress.enabled</a></td>
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
			<td id="ingress--annotations"><a href="./values.yaml#L460">ingress.annotations</a></td>
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
			<td id="ingress--className"><a href="./values.yaml#L462">ingress.className</a></td>
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
			<td id="ingress--hosts"><a href="./values.yaml#L464">ingress.hosts</a></td>
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
			<td id="ingress--tls"><a href="./values.yaml#L466">ingress.tls</a></td>
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
			<td id="initImage"><a href="./values.yaml#L469">initImage</a></td>
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
			<td id="initImage--builderTool"><a href="./values.yaml#L471">initImage.builderTool</a></td>
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
			<td id="initImage--builderTool--image"><a href="./values.yaml#L473">initImage.builderTool.image</a></td>
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
			<td id="initImage--builderTool--tag"><a href="./values.yaml#L475">initImage.builderTool.tag</a></td>
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
			<td id="keystore"><a href="./values.yaml#L478">keystore</a></td>
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
			<td id="keystore--existingSecret"><a href="./values.yaml#L480">keystore.existingSecret</a></td>
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
			<td id="keystore--existingSecret--keyName"><a href="./values.yaml#L482">keystore.existingSecret.keyName</a></td>
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
			<td id="keystore--existingSecret--secretName"><a href="./values.yaml#L484">keystore.existingSecret.secretName</a></td>
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
			<td id="keystore--keystoreKid"><a href="./values.yaml#L486">keystore.keystoreKid</a></td>
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
			<td id="keystore--keystorePath"><a href="./values.yaml#L488">keystore.keystorePath</a></td>
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
			<td id="kubeai"><a href="./values.yaml#L491">kubeai</a></td>
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
			<td id="kubeai--enabled"><a href="./values.yaml#L493">kubeai.enabled</a></td>
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
			<td id="kubeai--port"><a href="./values.yaml#L495">kubeai.port</a></td>
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
			<td id="kubeai--serviceName"><a href="./values.yaml#L497">kubeai.serviceName</a></td>
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
			<td id="logs"><a href="./values.yaml#L500">logs</a></td>
			<td>
object
</td>
			<td>Core logging configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "kubernetesLevel": "INFO",
  "maxLength": 2097152
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="logs--kubernetesLevel"><a href="./values.yaml#L502">logs.kubernetesLevel</a></td>
			<td>
string
</td>
			<td>Kubernetes framework log level.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"INFO"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="logs--maxLength"><a href="./values.yaml#L504">logs.maxLength</a></td>
			<td>
int
</td>
			<td>Maximum log length in bytes.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
2097152
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki"><a href="./values.yaml#L507">loki</a></td>
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
    "namespace": "namespace",
    "project": "dhcore_project",
    "run": "dhcore_run",
    "user": "dhcore_user"
  },
  "limit": "",
  "mapWithPrefix": true,
  "organizationId": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--enabled"><a href="./values.yaml#L509">loki.enabled</a></td>
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
			<td id="loki--credentials"><a href="./values.yaml#L511">loki.credentials</a></td>
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
			<td id="loki--credentials--existingSecret"><a href="./values.yaml#L513">loki.credentials.existingSecret</a></td>
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
			<td id="loki--credentials--existingSecret--name"><a href="./values.yaml#L515">loki.credentials.existingSecret.name</a></td>
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
			<td id="loki--credentials--existingSecret--passwordKey"><a href="./values.yaml#L517">loki.credentials.existingSecret.passwordKey</a></td>
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
			<td id="loki--credentials--existingSecret--usernameKey"><a href="./values.yaml#L519">loki.credentials.existingSecret.usernameKey</a></td>
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
			<td id="loki--credentials--password"><a href="./values.yaml#L521">loki.credentials.password</a></td>
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
			<td id="loki--credentials--username"><a href="./values.yaml#L523">loki.credentials.username</a></td>
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
			<td id="loki--endpoint"><a href="./values.yaml#L525">loki.endpoint</a></td>
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
			<td id="loki--labels"><a href="./values.yaml#L527">loki.labels</a></td>
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
			<td id="loki--labels--namespace"><a href="./values.yaml#L530">loki.labels.namespace</a></td>
			<td>
string
</td>
			<td>Namespace label used to filter logs.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"namespace"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--limit"><a href="./values.yaml#L535">loki.limit</a></td>
			<td>
string
</td>
			<td>Limit for the number of logs to be retrieved from Loki</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="loki--mapWithPrefix"><a href="./values.yaml#L537">loki.mapWithPrefix</a></td>
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
			<td id="loki--organizationId"><a href="./values.yaml#L539">loki.organizationId</a></td>
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
			<td id="lucene"><a href="./values.yaml#L542">lucene</a></td>
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
  "bufferSizeMb": "64",
  "commitIntervalS": "60",
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
			<td id="lucene--bufferSizeMb"><a href="./values.yaml#L544">lucene.bufferSizeMb</a></td>
			<td>
string
</td>
			<td>Buffer size in MB for Lucene</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"64"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="lucene--commitIntervalS"><a href="./values.yaml#L546">lucene.commitIntervalS</a></td>
			<td>
string
</td>
			<td>Commit interval in seconds for Lucene</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"60"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="lucene--indexPath"><a href="./values.yaml#L548">lucene.indexPath</a></td>
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
			<td id="lucene--persistence"><a href="./values.yaml#L550">lucene.persistence</a></td>
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
			<td id="lucene--persistence--enabled"><a href="./values.yaml#L552">lucene.persistence.enabled</a></td>
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
			<td id="lucene--persistence--accessMode"><a href="./values.yaml#L554">lucene.persistence.accessMode</a></td>
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
			<td id="lucene--persistence--size"><a href="./values.yaml#L556">lucene.persistence.size</a></td>
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
			<td id="lucene--persistence--storageClass"><a href="./values.yaml#L558">lucene.persistence.storageClass</a></td>
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
			<td id="lucene--reindex"><a href="./values.yaml#L560">lucene.reindex</a></td>
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
			<td id="nameOverride"><a href="./values.yaml#L563">nameOverride</a></td>
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
			<td id="nodeSelector"><a href="./values.yaml#L566">nodeSelector</a></td>
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
			<td id="podAnnotations"><a href="./values.yaml#L569">podAnnotations</a></td>
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
			<td id="podLabels"><a href="./values.yaml#L572">podLabels</a></td>
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
			<td id="podSecurityContext"><a href="./values.yaml#L575">podSecurityContext</a></td>
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
			<td id="podSecurityContext--fsGroup"><a href="./values.yaml#L577">podSecurityContext.fsGroup</a></td>
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
			<td id="podSecurityContext--runAsNonRoot"><a href="./values.yaml#L579">podSecurityContext.runAsNonRoot</a></td>
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
			<td id="podSecurityContext--seccompProfile"><a href="./values.yaml#L581">podSecurityContext.seccompProfile</a></td>
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
			<td id="podSecurityContext--seccompProfile--type"><a href="./values.yaml#L583">podSecurityContext.seccompProfile.type</a></td>
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
			<td id="postgres"><a href="./values.yaml#L586">postgres</a></td>
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
  "dialect": "",
  "h2Console": false,
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
			<td id="postgres--credentials"><a href="./values.yaml#L588">postgres.credentials</a></td>
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
			<td id="postgres--credentials--existingSecret"><a href="./values.yaml#L590">postgres.credentials.existingSecret</a></td>
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
			<td id="postgres--credentials--existingSecret--name"><a href="./values.yaml#L592">postgres.credentials.existingSecret.name</a></td>
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
			<td id="postgres--credentials--existingSecret--passwordKey"><a href="./values.yaml#L594">postgres.credentials.existingSecret.passwordKey</a></td>
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
			<td id="postgres--credentials--existingSecret--usernameKey"><a href="./values.yaml#L596">postgres.credentials.existingSecret.usernameKey</a></td>
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
			<td id="postgres--credentials--password"><a href="./values.yaml#L598">postgres.credentials.password</a></td>
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
			<td id="postgres--credentials--username"><a href="./values.yaml#L600">postgres.credentials.username</a></td>
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
			<td id="postgres--database"><a href="./values.yaml#L602">postgres.database</a></td>
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
			<td id="postgres--dialect"><a href="./values.yaml#L604">postgres.dialect</a></td>
			<td>
string
</td>
			<td>Optional Hibernate dialect override; empty preserves dialect detection for PostgreSQL.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--h2Console"><a href="./values.yaml#L606">postgres.h2Console</a></td>
			<td>
bool
</td>
			<td>Enable the H2 console.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--host"><a href="./values.yaml#L608">postgres.host</a></td>
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
			<td id="postgres--port"><a href="./values.yaml#L610">postgres.port</a></td>
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
			<td id="postgres--schema"><a href="./values.yaml#L612">postgres.schema</a></td>
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
			<td id="priorityClassName"><a href="./values.yaml#L615">priorityClassName</a></td>
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
			<td id="prometheus--enabled"><a href="./values.yaml#L619">prometheus.enabled</a></td>
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
			<td id="prometheus--credentials"><a href="./values.yaml#L621">prometheus.credentials</a></td>
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
			<td id="prometheus--credentials--existingSecret"><a href="./values.yaml#L623">prometheus.credentials.existingSecret</a></td>
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
			<td id="prometheus--credentials--existingSecret--name"><a href="./values.yaml#L625">prometheus.credentials.existingSecret.name</a></td>
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
			<td id="prometheus--credentials--existingSecret--passwordKey"><a href="./values.yaml#L627">prometheus.credentials.existingSecret.passwordKey</a></td>
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
			<td id="prometheus--credentials--existingSecret--usernameKey"><a href="./values.yaml#L629">prometheus.credentials.existingSecret.usernameKey</a></td>
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
			<td id="prometheus--credentials--password"><a href="./values.yaml#L631">prometheus.credentials.password</a></td>
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
			<td id="prometheus--credentials--username"><a href="./values.yaml#L633">prometheus.credentials.username</a></td>
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
			<td id="prometheus--endpoint"><a href="./values.yaml#L636">prometheus.endpoint</a></td>
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
			<td id="prometheus--labels"><a href="./values.yaml#L638">prometheus.labels</a></td>
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
			<td id="prometheus--labels--instance"><a href="./values.yaml#L640">prometheus.labels.instance</a></td>
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
			<td id="prometheus--labels--namespace"><a href="./values.yaml#L642">prometheus.labels.namespace</a></td>
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
			<td id="prometheus--labels--project"><a href="./values.yaml#L644">prometheus.labels.project</a></td>
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
			<td id="prometheus--labels--run"><a href="./values.yaml#L646">prometheus.labels.run</a></td>
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
			<td id="prometheus--labels--user"><a href="./values.yaml#L648">prometheus.labels.user</a></td>
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
			<td id="prometheus--lazyFilter"><a href="./values.yaml#L650">prometheus.lazyFilter</a></td>
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
			<td id="prometheus--metrics"><a href="./values.yaml#L652">prometheus.metrics</a></td>
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
    "aggregation": "sum",
    "groupBy": "container",
    "label": "cpu",
    "name": "container_cpu_usage_seconds_total",
    "operation": "rate",
    "quota": "",
    "unit": "seconds",
    "window": "2m"
  },
  "cpuRequested": {
    "aggregation": "sum",
    "groupBy": "container",
    "label": "cpu-requested",
    "name": "",
    "operation": "rate",
    "quota": "",
    "unit": "seconds",
    "window": "2m"
  },
  "disk": {
    "aggregation": "sum",
    "groupBy": "container",
    "label": "disk-{device}",
    "name": "container_fs_writes_bytes_total",
    "operation": "",
    "quota": "",
    "unit": "bytes",
    "window": ""
  },
  "gpu": {
    "aggregation": "sum",
    "groupBy": "",
    "label": "gpu-utilization",
    "name": "",
    "operation": "",
    "quota": "",
    "unit": "",
    "window": ""
  },
  "gpuCount": {
    "aggregation": "sum",
    "groupBy": "",
    "label": "gpu-count",
    "name": "",
    "operation": "",
    "quota": "",
    "unit": "",
    "window": ""
  },
  "gpuMemory": {
    "aggregation": "sum",
    "groupBy": "",
    "label": "gpu-memory",
    "name": "",
    "operation": "",
    "quota": "",
    "unit": "bytes",
    "window": ""
  },
  "memory": {
    "aggregation": "sum",
    "groupBy": "container",
    "label": "memory",
    "name": "container_memory_working_set_bytes",
    "operation": "",
    "quota": "",
    "unit": "bytes",
    "window": ""
  },
  "memoryRequested": {
    "aggregation": "sum",
    "groupBy": "container",
    "label": "memory-requested",
    "name": "",
    "operation": "",
    "quota": "",
    "unit": "bytes",
    "window": ""
  },
  "networkReceive": {
    "aggregation": "sum",
    "groupBy": "pod",
    "label": "{interface}-receive",
    "name": "container_network_receive_bytes_total",
    "operation": "rate",
    "quota": "",
    "unit": "bytes",
    "window": "2m"
  },
  "networkSend": {
    "aggregation": "sum",
    "groupBy": "pod",
    "label": "{interface}-send",
    "name": "container_network_transmit_bytes_total",
    "operation": "rate",
    "quota": "",
    "unit": "bytes",
    "window": "2m"
  },
  "volumes": {
    "aggregation": "sum",
    "groupBy": "",
    "label": "volume-{persistentvolumeclaim}",
    "name": "kubelet_volume_stats_used_bytes",
    "operation": "",
    "quota": "",
    "unit": "bytes",
    "window": ""
  },
  "volumesCount": {
    "aggregation": "sum",
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
			<td id="prometheus--metrics--cpu"><a href="./values.yaml#L654">prometheus.metrics.cpu</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--cpu--aggregation"><a href="./values.yaml#L656">prometheus.metrics.cpu.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpu--groupBy"><a href="./values.yaml#L658">prometheus.metrics.cpu.groupBy</a></td>
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
			<td id="prometheus--metrics--cpu--label"><a href="./values.yaml#L660">prometheus.metrics.cpu.label</a></td>
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
			<td id="prometheus--metrics--cpu--name"><a href="./values.yaml#L662">prometheus.metrics.cpu.name</a></td>
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
			<td id="prometheus--metrics--cpu--operation"><a href="./values.yaml#L664">prometheus.metrics.cpu.operation</a></td>
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
			<td id="prometheus--metrics--cpu--quota"><a href="./values.yaml#L666">prometheus.metrics.cpu.quota</a></td>
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
			<td id="prometheus--metrics--cpu--unit"><a href="./values.yaml#L668">prometheus.metrics.cpu.unit</a></td>
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
			<td id="prometheus--metrics--cpu--window"><a href="./values.yaml#L670">prometheus.metrics.cpu.window</a></td>
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
			<td id="prometheus--metrics--cpuRequested"><a href="./values.yaml#L672">prometheus.metrics.cpuRequested</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--cpuRequested--aggregation"><a href="./values.yaml#L674">prometheus.metrics.cpuRequested.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--cpuRequested--groupBy"><a href="./values.yaml#L676">prometheus.metrics.cpuRequested.groupBy</a></td>
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
			<td id="prometheus--metrics--cpuRequested--label"><a href="./values.yaml#L678">prometheus.metrics.cpuRequested.label</a></td>
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
			<td id="prometheus--metrics--cpuRequested--name"><a href="./values.yaml#L680">prometheus.metrics.cpuRequested.name</a></td>
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
			<td id="prometheus--metrics--cpuRequested--operation"><a href="./values.yaml#L682">prometheus.metrics.cpuRequested.operation</a></td>
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
			<td id="prometheus--metrics--cpuRequested--quota"><a href="./values.yaml#L684">prometheus.metrics.cpuRequested.quota</a></td>
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
			<td id="prometheus--metrics--cpuRequested--unit"><a href="./values.yaml#L686">prometheus.metrics.cpuRequested.unit</a></td>
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
			<td id="prometheus--metrics--cpuRequested--window"><a href="./values.yaml#L688">prometheus.metrics.cpuRequested.window</a></td>
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
			<td id="prometheus--metrics--disk"><a href="./values.yaml#L690">prometheus.metrics.disk</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--disk--aggregation"><a href="./values.yaml#L692">prometheus.metrics.disk.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--disk--groupBy"><a href="./values.yaml#L694">prometheus.metrics.disk.groupBy</a></td>
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
			<td id="prometheus--metrics--disk--label"><a href="./values.yaml#L696">prometheus.metrics.disk.label</a></td>
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
			<td id="prometheus--metrics--disk--name"><a href="./values.yaml#L698">prometheus.metrics.disk.name</a></td>
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
			<td id="prometheus--metrics--disk--operation"><a href="./values.yaml#L700">prometheus.metrics.disk.operation</a></td>
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
			<td id="prometheus--metrics--disk--quota"><a href="./values.yaml#L702">prometheus.metrics.disk.quota</a></td>
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
			<td id="prometheus--metrics--disk--unit"><a href="./values.yaml#L704">prometheus.metrics.disk.unit</a></td>
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
			<td id="prometheus--metrics--disk--window"><a href="./values.yaml#L706">prometheus.metrics.disk.window</a></td>
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
			<td id="prometheus--metrics--gpu"><a href="./values.yaml#L708">prometheus.metrics.gpu</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--gpu--aggregation"><a href="./values.yaml#L710">prometheus.metrics.gpu.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpu--groupBy"><a href="./values.yaml#L712">prometheus.metrics.gpu.groupBy</a></td>
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
			<td id="prometheus--metrics--gpu--label"><a href="./values.yaml#L714">prometheus.metrics.gpu.label</a></td>
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
			<td id="prometheus--metrics--gpu--name"><a href="./values.yaml#L716">prometheus.metrics.gpu.name</a></td>
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
			<td id="prometheus--metrics--gpu--operation"><a href="./values.yaml#L718">prometheus.metrics.gpu.operation</a></td>
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
			<td id="prometheus--metrics--gpu--quota"><a href="./values.yaml#L720">prometheus.metrics.gpu.quota</a></td>
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
			<td id="prometheus--metrics--gpu--unit"><a href="./values.yaml#L722">prometheus.metrics.gpu.unit</a></td>
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
			<td id="prometheus--metrics--gpu--window"><a href="./values.yaml#L724">prometheus.metrics.gpu.window</a></td>
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
			<td id="prometheus--metrics--gpuCount"><a href="./values.yaml#L726">prometheus.metrics.gpuCount</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--gpuCount--aggregation"><a href="./values.yaml#L728">prometheus.metrics.gpuCount.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuCount--groupBy"><a href="./values.yaml#L730">prometheus.metrics.gpuCount.groupBy</a></td>
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
			<td id="prometheus--metrics--gpuCount--label"><a href="./values.yaml#L732">prometheus.metrics.gpuCount.label</a></td>
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
			<td id="prometheus--metrics--gpuCount--name"><a href="./values.yaml#L734">prometheus.metrics.gpuCount.name</a></td>
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
			<td id="prometheus--metrics--gpuCount--operation"><a href="./values.yaml#L736">prometheus.metrics.gpuCount.operation</a></td>
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
			<td id="prometheus--metrics--gpuCount--quota"><a href="./values.yaml#L738">prometheus.metrics.gpuCount.quota</a></td>
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
			<td id="prometheus--metrics--gpuCount--unit"><a href="./values.yaml#L740">prometheus.metrics.gpuCount.unit</a></td>
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
			<td id="prometheus--metrics--gpuCount--window"><a href="./values.yaml#L742">prometheus.metrics.gpuCount.window</a></td>
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
			<td id="prometheus--metrics--gpuMemory"><a href="./values.yaml#L744">prometheus.metrics.gpuMemory</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--gpuMemory--aggregation"><a href="./values.yaml#L746">prometheus.metrics.gpuMemory.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--gpuMemory--groupBy"><a href="./values.yaml#L748">prometheus.metrics.gpuMemory.groupBy</a></td>
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
			<td id="prometheus--metrics--gpuMemory--label"><a href="./values.yaml#L750">prometheus.metrics.gpuMemory.label</a></td>
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
			<td id="prometheus--metrics--gpuMemory--name"><a href="./values.yaml#L752">prometheus.metrics.gpuMemory.name</a></td>
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
			<td id="prometheus--metrics--gpuMemory--operation"><a href="./values.yaml#L754">prometheus.metrics.gpuMemory.operation</a></td>
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
			<td id="prometheus--metrics--gpuMemory--quota"><a href="./values.yaml#L756">prometheus.metrics.gpuMemory.quota</a></td>
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
			<td id="prometheus--metrics--gpuMemory--unit"><a href="./values.yaml#L758">prometheus.metrics.gpuMemory.unit</a></td>
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
			<td id="prometheus--metrics--gpuMemory--window"><a href="./values.yaml#L760">prometheus.metrics.gpuMemory.window</a></td>
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
			<td id="prometheus--metrics--memory"><a href="./values.yaml#L762">prometheus.metrics.memory</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--memory--aggregation"><a href="./values.yaml#L764">prometheus.metrics.memory.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memory--groupBy"><a href="./values.yaml#L766">prometheus.metrics.memory.groupBy</a></td>
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
			<td id="prometheus--metrics--memory--label"><a href="./values.yaml#L768">prometheus.metrics.memory.label</a></td>
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
			<td id="prometheus--metrics--memory--name"><a href="./values.yaml#L770">prometheus.metrics.memory.name</a></td>
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
			<td id="prometheus--metrics--memory--operation"><a href="./values.yaml#L772">prometheus.metrics.memory.operation</a></td>
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
			<td id="prometheus--metrics--memory--quota"><a href="./values.yaml#L774">prometheus.metrics.memory.quota</a></td>
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
			<td id="prometheus--metrics--memory--unit"><a href="./values.yaml#L776">prometheus.metrics.memory.unit</a></td>
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
			<td id="prometheus--metrics--memory--window"><a href="./values.yaml#L778">prometheus.metrics.memory.window</a></td>
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
			<td id="prometheus--metrics--memoryRequested"><a href="./values.yaml#L780">prometheus.metrics.memoryRequested</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--memoryRequested--aggregation"><a href="./values.yaml#L782">prometheus.metrics.memoryRequested.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--memoryRequested--groupBy"><a href="./values.yaml#L784">prometheus.metrics.memoryRequested.groupBy</a></td>
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
			<td id="prometheus--metrics--memoryRequested--label"><a href="./values.yaml#L786">prometheus.metrics.memoryRequested.label</a></td>
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
			<td id="prometheus--metrics--memoryRequested--name"><a href="./values.yaml#L788">prometheus.metrics.memoryRequested.name</a></td>
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
			<td id="prometheus--metrics--memoryRequested--operation"><a href="./values.yaml#L790">prometheus.metrics.memoryRequested.operation</a></td>
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
			<td id="prometheus--metrics--memoryRequested--quota"><a href="./values.yaml#L792">prometheus.metrics.memoryRequested.quota</a></td>
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
			<td id="prometheus--metrics--memoryRequested--unit"><a href="./values.yaml#L794">prometheus.metrics.memoryRequested.unit</a></td>
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
			<td id="prometheus--metrics--memoryRequested--window"><a href="./values.yaml#L796">prometheus.metrics.memoryRequested.window</a></td>
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
			<td id="prometheus--metrics--networkReceive"><a href="./values.yaml#L798">prometheus.metrics.networkReceive</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--networkReceive--aggregation"><a href="./values.yaml#L800">prometheus.metrics.networkReceive.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkReceive--groupBy"><a href="./values.yaml#L802">prometheus.metrics.networkReceive.groupBy</a></td>
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
			<td id="prometheus--metrics--networkReceive--label"><a href="./values.yaml#L804">prometheus.metrics.networkReceive.label</a></td>
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
			<td id="prometheus--metrics--networkReceive--name"><a href="./values.yaml#L806">prometheus.metrics.networkReceive.name</a></td>
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
			<td id="prometheus--metrics--networkReceive--operation"><a href="./values.yaml#L808">prometheus.metrics.networkReceive.operation</a></td>
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
			<td id="prometheus--metrics--networkReceive--quota"><a href="./values.yaml#L810">prometheus.metrics.networkReceive.quota</a></td>
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
			<td id="prometheus--metrics--networkReceive--unit"><a href="./values.yaml#L812">prometheus.metrics.networkReceive.unit</a></td>
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
			<td id="prometheus--metrics--networkReceive--window"><a href="./values.yaml#L814">prometheus.metrics.networkReceive.window</a></td>
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
			<td id="prometheus--metrics--networkSend"><a href="./values.yaml#L816">prometheus.metrics.networkSend</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--networkSend--aggregation"><a href="./values.yaml#L818">prometheus.metrics.networkSend.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--networkSend--groupBy"><a href="./values.yaml#L820">prometheus.metrics.networkSend.groupBy</a></td>
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
			<td id="prometheus--metrics--networkSend--label"><a href="./values.yaml#L822">prometheus.metrics.networkSend.label</a></td>
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
			<td id="prometheus--metrics--networkSend--name"><a href="./values.yaml#L824">prometheus.metrics.networkSend.name</a></td>
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
			<td id="prometheus--metrics--networkSend--operation"><a href="./values.yaml#L826">prometheus.metrics.networkSend.operation</a></td>
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
			<td id="prometheus--metrics--networkSend--quota"><a href="./values.yaml#L828">prometheus.metrics.networkSend.quota</a></td>
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
			<td id="prometheus--metrics--networkSend--unit"><a href="./values.yaml#L830">prometheus.metrics.networkSend.unit</a></td>
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
			<td id="prometheus--metrics--networkSend--window"><a href="./values.yaml#L832">prometheus.metrics.networkSend.window</a></td>
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
			<td id="prometheus--metrics--volumes"><a href="./values.yaml#L834">prometheus.metrics.volumes</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--volumes--aggregation"><a href="./values.yaml#L836">prometheus.metrics.volumes.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumes--groupBy"><a href="./values.yaml#L838">prometheus.metrics.volumes.groupBy</a></td>
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
			<td id="prometheus--metrics--volumes--label"><a href="./values.yaml#L840">prometheus.metrics.volumes.label</a></td>
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
			<td id="prometheus--metrics--volumes--name"><a href="./values.yaml#L842">prometheus.metrics.volumes.name</a></td>
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
			<td id="prometheus--metrics--volumes--operation"><a href="./values.yaml#L844">prometheus.metrics.volumes.operation</a></td>
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
			<td id="prometheus--metrics--volumes--quota"><a href="./values.yaml#L846">prometheus.metrics.volumes.quota</a></td>
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
			<td id="prometheus--metrics--volumes--unit"><a href="./values.yaml#L848">prometheus.metrics.volumes.unit</a></td>
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
			<td id="prometheus--metrics--volumes--window"><a href="./values.yaml#L850">prometheus.metrics.volumes.window</a></td>
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
			<td id="prometheus--metrics--volumesCount"><a href="./values.yaml#L852">prometheus.metrics.volumesCount</a></td>
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
  "aggregation": "sum",
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
			<td id="prometheus--metrics--volumesCount--aggregation"><a href="./values.yaml#L854">prometheus.metrics.volumesCount.aggregation</a></td>
			<td>
string
</td>
			<td>Prometheus aggregation applied to the metric</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sum"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="prometheus--metrics--volumesCount--groupBy"><a href="./values.yaml#L856">prometheus.metrics.volumesCount.groupBy</a></td>
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
			<td id="prometheus--metrics--volumesCount--label"><a href="./values.yaml#L858">prometheus.metrics.volumesCount.label</a></td>
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
			<td id="prometheus--metrics--volumesCount--name"><a href="./values.yaml#L860">prometheus.metrics.volumesCount.name</a></td>
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
			<td id="prometheus--metrics--volumesCount--operation"><a href="./values.yaml#L862">prometheus.metrics.volumesCount.operation</a></td>
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
			<td id="prometheus--metrics--volumesCount--quota"><a href="./values.yaml#L864">prometheus.metrics.volumesCount.quota</a></td>
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
			<td id="prometheus--metrics--volumesCount--unit"><a href="./values.yaml#L866">prometheus.metrics.volumesCount.unit</a></td>
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
			<td id="prometheus--metrics--volumesCount--window"><a href="./values.yaml#L868">prometheus.metrics.volumesCount.window</a></td>
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
			<td id="prometheus--rateInterval"><a href="./values.yaml#L870">prometheus.rateInterval</a></td>
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
			<td id="proxy"><a href="./values.yaml#L873">proxy</a></td>
			<td>
object
</td>
			<td>Core proxy configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "url": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="proxy--url"><a href="./values.yaml#L875">proxy.url</a></td>
			<td>
string
</td>
			<td>Proxy URL.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rabbitmq"><a href="./values.yaml#L878">rabbitmq</a></td>
			<td>
object
</td>
			<td>RabbitMQ event publishing configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "host": "",
  "password": "",
  "port": "",
  "queue": "",
  "routingKey": "entityRoutingKey",
  "topic": "entityTopic",
  "username": "",
  "vhost": "/"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="rabbitmq--enabled"><a href="./values.yaml#L880">rabbitmq.enabled</a></td>
			<td>
bool
</td>
			<td>Enable RabbitMQ publishing.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rabbitmq--host"><a href="./values.yaml#L882">rabbitmq.host</a></td>
			<td>
string
</td>
			<td>RabbitMQ host.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rabbitmq--password"><a href="./values.yaml#L884">rabbitmq.password</a></td>
			<td>
string
</td>
			<td>RabbitMQ password, stored in the ConfigMap.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rabbitmq--port"><a href="./values.yaml#L886">rabbitmq.port</a></td>
			<td>
string
</td>
			<td>RabbitMQ port.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rabbitmq--queue"><a href="./values.yaml#L888">rabbitmq.queue</a></td>
			<td>
string
</td>
			<td>RabbitMQ queue.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rabbitmq--routingKey"><a href="./values.yaml#L890">rabbitmq.routingKey</a></td>
			<td>
string
</td>
			<td>Event routing key.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"entityRoutingKey"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rabbitmq--topic"><a href="./values.yaml#L892">rabbitmq.topic</a></td>
			<td>
string
</td>
			<td>Event topic.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"entityTopic"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rabbitmq--username"><a href="./values.yaml#L894">rabbitmq.username</a></td>
			<td>
string
</td>
			<td>RabbitMQ username.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="rabbitmq--vhost"><a href="./values.yaml#L896">rabbitmq.vhost</a></td>
			<td>
string
</td>
			<td>RabbitMQ virtual host.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray"><a href="./values.yaml#L899">ray</a></td>
			<td>
object
</td>
			<td>Ray configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "apiGroup": "ray.io",
  "apiVersion": "v1",
  "enabled": false,
  "headServiceType": "ClusterIP",
  "job": {
    "activeDeadlineSeconds": 259200,
    "resources": {
      "cpu": {
        "limits": 2,
        "requests": 1
      },
      "ephemeralStorage": {
        "limits": "4Gi",
        "requests": "2Gi"
      },
      "memory": {
        "limits": "2Gi",
        "requests": "2Gi",
        "toleration": "1.1"
      }
    },
    "suspend": false
  },
  "serviceAccount": "default"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--enabled"><a href="./values.yaml#L901">ray.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Ray integration for Core with an existing Ray instance.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--apiGroup"><a href="./values.yaml#L903">ray.apiGroup</a></td>
			<td>
string
</td>
			<td>API group for the Ray resources</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ray.io"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--apiVersion"><a href="./values.yaml#L905">ray.apiVersion</a></td>
			<td>
string
</td>
			<td>API version for the Ray resources</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"v1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--headServiceType"><a href="./values.yaml#L907">ray.headServiceType</a></td>
			<td>
string
</td>
			<td>Service type for the Ray head service</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ClusterIP"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job"><a href="./values.yaml#L909">ray.job</a></td>
			<td>
object
</td>
			<td>Job configuration for Ray</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "activeDeadlineSeconds": 259200,
  "resources": {
    "cpu": {
      "limits": 2,
      "requests": 1
    },
    "ephemeralStorage": {
      "limits": "4Gi",
      "requests": "2Gi"
    },
    "memory": {
      "limits": "2Gi",
      "requests": "2Gi",
      "toleration": "1.1"
    }
  },
  "suspend": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--activeDeadlineSeconds"><a href="./values.yaml#L911">ray.job.activeDeadlineSeconds</a></td>
			<td>
int
</td>
			<td>Active deadline seconds for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
259200
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources"><a href="./values.yaml#L913">ray.job.resources</a></td>
			<td>
object
</td>
			<td>Resource requests and limits for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": {
    "limits": 2,
    "requests": 1
  },
  "ephemeralStorage": {
    "limits": "4Gi",
    "requests": "2Gi"
  },
  "memory": {
    "limits": "2Gi",
    "requests": "2Gi",
    "toleration": "1.1"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources--cpu"><a href="./values.yaml#L915">ray.job.resources.cpu</a></td>
			<td>
object
</td>
			<td>CPU requests and limits for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": 2,
  "requests": 1
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources--cpu--limits"><a href="./values.yaml#L917">ray.job.resources.cpu.limits</a></td>
			<td>
int
</td>
			<td>CPU limits for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
2
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources--cpu--requests"><a href="./values.yaml#L919">ray.job.resources.cpu.requests</a></td>
			<td>
int
</td>
			<td>CPU requests for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources--ephemeralStorage"><a href="./values.yaml#L921">ray.job.resources.ephemeralStorage</a></td>
			<td>
object
</td>
			<td>Ephemeral storage requests and limits for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": "4Gi",
  "requests": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources--ephemeralStorage--limits"><a href="./values.yaml#L923">ray.job.resources.ephemeralStorage.limits</a></td>
			<td>
string
</td>
			<td>Ephemeral storage limits for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"4Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources--ephemeralStorage--requests"><a href="./values.yaml#L925">ray.job.resources.ephemeralStorage.requests</a></td>
			<td>
string
</td>
			<td>Ephemeral storage requests for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources--memory"><a href="./values.yaml#L927">ray.job.resources.memory</a></td>
			<td>
object
</td>
			<td>Memory requests and limits for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": "2Gi",
  "requests": "2Gi",
  "toleration": "1.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources--memory--limits"><a href="./values.yaml#L929">ray.job.resources.memory.limits</a></td>
			<td>
string
</td>
			<td>Memory limits for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources--memory--requests"><a href="./values.yaml#L931">ray.job.resources.memory.requests</a></td>
			<td>
string
</td>
			<td>Memory requests for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--resources--memory--toleration"><a href="./values.yaml#L933">ray.job.resources.memory.toleration</a></td>
			<td>
string
</td>
			<td>Memory tolerance for the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--job--suspend"><a href="./values.yaml#L935">ray.job.suspend</a></td>
			<td>
bool
</td>
			<td>Suspend the Ray job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ray--serviceAccount"><a href="./values.yaml#L937">ray.serviceAccount</a></td>
			<td>
string
</td>
			<td>Service account for the Ray resources</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"default"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="registry"><a href="./values.yaml#L940">registry</a></td>
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
			<td id="registry--kaniko"><a href="./values.yaml#L942">registry.kaniko</a></td>
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
			<td id="registry--kaniko--imagePrefix"><a href="./values.yaml#L944">registry.kaniko.imagePrefix</a></td>
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
			<td id="replicaCount"><a href="./values.yaml#L947">replicaCount</a></td>
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
			<td id="resources"><a href="./values.yaml#L950">resources</a></td>
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
			<td id="resources--limits"><a href="./values.yaml#L952">resources.limits</a></td>
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
			<td id="resources--limits--cpu"><a href="./values.yaml#L954">resources.limits.cpu</a></td>
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
			<td id="resources--limits--memory"><a href="./values.yaml#L956">resources.limits.memory</a></td>
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
			<td id="resources--requests"><a href="./values.yaml#L958">resources.requests</a></td>
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
			<td id="resources--requests--cpu"><a href="./values.yaml#L960">resources.requests.cpu</a></td>
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
			<td id="resources--requests--memory"><a href="./values.yaml#L962">resources.requests.memory</a></td>
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
			<td id="route"><a href="./values.yaml#L965">route</a></td>
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
			<td id="route--main"><a href="./values.yaml#L967">route.main</a></td>
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
			<td id="route--main--enabled"><a href="./values.yaml#L969">route.main.enabled</a></td>
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
			<td id="route--main--additionalRules"><a href="./values.yaml#L971">route.main.additionalRules</a></td>
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
			<td id="route--main--annotations"><a href="./values.yaml#L973">route.main.annotations</a></td>
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
			<td id="route--main--apiVersion"><a href="./values.yaml#L975">route.main.apiVersion</a></td>
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
			<td id="route--main--filters"><a href="./values.yaml#L977">route.main.filters</a></td>
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
			<td id="route--main--hostnames"><a href="./values.yaml#L979">route.main.hostnames</a></td>
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
			<td id="route--main--httpsRedirect"><a href="./values.yaml#L981">route.main.httpsRedirect</a></td>
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
			<td id="route--main--kind"><a href="./values.yaml#L983">route.main.kind</a></td>
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
			<td id="route--main--labels"><a href="./values.yaml#L985">route.main.labels</a></td>
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
			<td id="route--main--matches"><a href="./values.yaml#L987">route.main.matches</a></td>
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
			<td id="route--main--parentRefs"><a href="./values.yaml#L995">route.main.parentRefs</a></td>
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
			<td id="route--main--timeouts"><a href="./values.yaml#L997">route.main.timeouts</a></td>
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
			<td id="runtime"><a href="./values.yaml#L1000">runtime</a></td>
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
    "tag": "0.16.0"
  },
  "flower": {
    "client": {
      "image": "flwr/supernode",
      "tag": "1.20.0-py3.12-ubuntu24.04"
    },
    "groupId": "",
    "runner": {
      "image": "flwr/clientapp",
      "tag": "1.20.0-py3.12-ubuntu24.04"
    },
    "server": {
      "image": "flwr/superlink",
      "tag": "1.20.0-py3.12-ubuntu24.04"
    },
    "tls": {
      "caCert": "",
      "caKey": "",
      "conf": "classpath:/runtime-flower/docker/certificate.conf",
      "externalDomain": "",
      "internalDomain": ""
    },
    "userId": ""
  },
  "guardrail": {
    "baseImage": {
      "image": "",
      "tag3_10": "",
      "tag3_11": "",
      "tag3_12": "",
      "tag3_13": ""
    },
    "command": "",
    "dependencies": "digitalhub[full],digitalhub-runtime-python",
    "groupId": "",
    "homeDir": "",
    "image": "",
    "installDependencies": null,
    "serverless": {
      "image": "",
      "tag3_10": "",
      "tag3_11": "",
      "tag3_12": "",
      "tag3_13": ""
    },
    "tag3_10": "",
    "tag3_11": "",
    "tag3_12": "",
    "tag3_13": "",
    "useBetaDependencies": null,
    "userId": "",
    "volumeSize": ""
  },
  "hera": {
    "duration": "",
    "image": "ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-hera/wrapper-hera",
    "tag": "0.16.0"
  },
  "huggingFace": {
    "groupId": "",
    "image": "kserve/huggingfaceserver",
    "tag": "v0.14.0",
    "userId": "",
    "volumeSize": "10Gi"
  },
  "hydra": {
    "base": {
      "image": "",
      "tag3_10": "",
      "tag3_11": "",
      "tag3_12": "",
      "tag3_13": ""
    },
    "command": "",
    "dependencies": "digitalhub-runtime-hydra==0.16.1b1",
    "groupId": "",
    "homeDir": "",
    "image": "",
    "installDependencies": "",
    "serverless": {
      "image": "",
      "tag3_10": "",
      "tag3_11": "",
      "tag3_12": "",
      "tag3_13": ""
    },
    "tag3_10": "",
    "tag3_11": "",
    "tag3_12": "",
    "tag3_13": "",
    "useBetaDependencies": "",
    "userId": "",
    "volumeSize": ""
  },
  "kfp": {
    "duration": "",
    "image": "ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-kfp/wrapper-kfp",
    "tag": "0.16.0"
  },
  "llmOtelEndpoint": "",
  "mlflow": {
    "groupId": "",
    "image": "seldonio/mlserver",
    "tag": "1.6.0-mlflow",
    "userId": "",
    "volumeSize": "2Gi"
  },
  "openInference": {
    "baseImage": {
      "image": "",
      "tag3_10": "",
      "tag3_11": "",
      "tag3_12": "",
      "tag3_13": ""
    },
    "command": "",
    "dependencies": "digitalhub[full],digitalhub-runtime-python",
    "groupId": "",
    "homeDir": "",
    "image": "",
    "installDependencies": null,
    "serverless": {
      "image": "",
      "tag3_10": "",
      "tag3_11": "",
      "tag3_12": "",
      "tag3_13": ""
    },
    "tag3_10": "",
    "tag3_11": "",
    "tag3_12": "",
    "tag3_13": "",
    "useBetaDependencies": null,
    "userId": "",
    "volumeSize": ""
  },
  "python": {
    "baseImage": {
      "image": "python",
      "tag3_10": "3.10-slim",
      "tag3_11": "3.11-slim",
      "tag3_12": "3.12-slim",
      "tag3_13": "3.13-slim",
      "tag3_14": "3.14-slim"
    },
    "command": "/opt/nuclio/processor",
    "dependencies": "digitalhub[full],digitalhub-runtime-python",
    "groupId": "",
    "homeDir": "/shared",
    "image": "ghcr.io/scc-digitalhub/digitalhub-serverless/python-runtime",
    "installDependencies": true,
    "serverless": {
      "image": "ghcr.io/scc-digitalhub/digitalhub-serverless/digitalhub-serverless",
      "tag3_10": "3.10-0.16.1",
      "tag3_11": "3.11-0.16.1",
      "tag3_12": "3.12-0.16.1",
      "tag3_13": "3.13-0.16.1",
      "tag3_14": "3.14-0.16.1"
    },
    "tag3_10": "3.10-0.16.0",
    "tag3_11": "3.11-0.16.0",
    "tag3_12": "3.12-0.16.0",
    "tag3_13": "3.13-0.16.0",
    "tag3_14": "3.14-0.16.0",
    "tag3_9": "3.9-0.16.0",
    "useBetaDependencies": false,
    "userId": "",
    "volumeSize": "1Gi"
  },
  "ray": {
    "backoffLimit": "0",
    "dependencies": "digitalhub-runtime-python==0.16.0b9,digitalhub-runtime-ray==0.16.0b10",
    "dependencyFormat": "pip",
    "duration": "",
    "groupId": "100",
    "head": {
      "cpu": "2",
      "diskSize": "2Gi",
      "memory": "8Gi",
      "profile": ""
    },
    "homeDir": "/shared",
    "image": "rayproject/ray",
    "preRunningDeadlineSeconds": 300,
    "shutdownAfterJobFinishes": "true",
    "tag": "2.55.1",
    "ttlSecondsAfterFinished": 600,
    "userId": "1000",
    "version": "2.55.1",
    "workerGroupName": "workers",
    "workerImage": "",
    "workerProfile": "",
    "workerTag": ""
  },
  "servicegraph": {
    "command": "/app/servicegraph",
    "groupId": "",
    "image": "ghcr.io/scc-digitalhub/digitalhub-servicegraph",
    "tag": "0.16.0",
    "userId": "",
    "volumeSize": "1Gi"
  },
  "sklearn": {
    "groupId": "",
    "image": "seldonio/mlserver",
    "tag": "1.6.0-sklearn",
    "userId": "",
    "volumeSize": "1Gi"
  },
  "tvm": {
    "builder": {
      "onnx": {
        "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
        "tag": "0.26.0-r2"
      },
      "tflite": {
        "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
        "tag": "0.26.0-r2"
      }
    },
    "compiler": {
      "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
      "tag": "0.26.0-r2"
    },
    "groupId": "",
    "homeDir": "/shared",
    "serve": {
      "image": "ghcr.io/scc-digitalhub/tvm-runtime-go",
      "tag": "0.26.0-r3"
    },
    "userId": "",
    "volumeSize": "4Gi"
  },
  "vllm": {
    "cpu": {
      "audioImage": "",
      "audioTag": "",
      "image": "vllm/vllm-openai-cpu",
      "tag": "v0.19.1"
    },
    "default": {
      "audioImage": "",
      "audioTag": "",
      "image": "vllm/vllm-openai",
      "tag": "v0.19.1"
    },
    "groupId": "",
    "homeDir": "/shared",
    "memSize": "16Gi",
    "userId": "",
    "volumeSize": "10Gi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--dbt"><a href="./values.yaml#L1002">runtime.dbt</a></td>
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
  "tag": "0.16.0"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--dbt--image"><a href="./values.yaml#L1004">runtime.dbt.image</a></td>
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
			<td id="runtime--dbt--tag"><a href="./values.yaml#L1006">runtime.dbt.tag</a></td>
			<td>
string
</td>
			<td>DBT wrapper tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.16.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower"><a href="./values.yaml#L1008">runtime.flower</a></td>
			<td>
object
</td>
			<td>Flower federated learning runtime.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "client": {
    "image": "flwr/supernode",
    "tag": "1.20.0-py3.12-ubuntu24.04"
  },
  "groupId": "",
  "runner": {
    "image": "flwr/clientapp",
    "tag": "1.20.0-py3.12-ubuntu24.04"
  },
  "server": {
    "image": "flwr/superlink",
    "tag": "1.20.0-py3.12-ubuntu24.04"
  },
  "tls": {
    "caCert": "",
    "caKey": "",
    "conf": "classpath:/runtime-flower/docker/certificate.conf",
    "externalDomain": "",
    "internalDomain": ""
  },
  "userId": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--client"><a href="./values.yaml#L1010">runtime.flower.client</a></td>
			<td>
object
</td>
			<td>Flower client image.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "flwr/supernode",
  "tag": "1.20.0-py3.12-ubuntu24.04"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--client--image"><a href="./values.yaml#L1012">runtime.flower.client.image</a></td>
			<td>
string
</td>
			<td>Flower client repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"flwr/supernode"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--client--tag"><a href="./values.yaml#L1014">runtime.flower.client.tag</a></td>
			<td>
string
</td>
			<td>Flower client tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1.20.0-py3.12-ubuntu24.04"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--groupId"><a href="./values.yaml#L1016">runtime.flower.groupId</a></td>
			<td>
string
</td>
			<td>Container group ID.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--runner"><a href="./values.yaml#L1018">runtime.flower.runner</a></td>
			<td>
object
</td>
			<td>Flower runner image.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "flwr/clientapp",
  "tag": "1.20.0-py3.12-ubuntu24.04"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--runner--image"><a href="./values.yaml#L1020">runtime.flower.runner.image</a></td>
			<td>
string
</td>
			<td>Flower runner repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"flwr/clientapp"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--runner--tag"><a href="./values.yaml#L1022">runtime.flower.runner.tag</a></td>
			<td>
string
</td>
			<td>Flower runner tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1.20.0-py3.12-ubuntu24.04"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--server"><a href="./values.yaml#L1024">runtime.flower.server</a></td>
			<td>
object
</td>
			<td>Flower server image.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "flwr/superlink",
  "tag": "1.20.0-py3.12-ubuntu24.04"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--server--image"><a href="./values.yaml#L1026">runtime.flower.server.image</a></td>
			<td>
string
</td>
			<td>Flower server repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"flwr/superlink"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--server--tag"><a href="./values.yaml#L1028">runtime.flower.server.tag</a></td>
			<td>
string
</td>
			<td>Flower server tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1.20.0-py3.12-ubuntu24.04"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--tls"><a href="./values.yaml#L1030">runtime.flower.tls</a></td>
			<td>
object
</td>
			<td>Flower TLS configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "caCert": "",
  "caKey": "",
  "conf": "classpath:/runtime-flower/docker/certificate.conf",
  "externalDomain": "",
  "internalDomain": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--tls--caCert"><a href="./values.yaml#L1032">runtime.flower.tls.caCert</a></td>
			<td>
string
</td>
			<td>CA certificate.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--tls--caKey"><a href="./values.yaml#L1034">runtime.flower.tls.caKey</a></td>
			<td>
string
</td>
			<td>CA private key, stored in the ConfigMap.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--tls--conf"><a href="./values.yaml#L1036">runtime.flower.tls.conf</a></td>
			<td>
string
</td>
			<td>Certificate configuration path.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"classpath:/runtime-flower/docker/certificate.conf"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--tls--externalDomain"><a href="./values.yaml#L1038">runtime.flower.tls.externalDomain</a></td>
			<td>
string
</td>
			<td>External TLS domain.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--tls--internalDomain"><a href="./values.yaml#L1040">runtime.flower.tls.internalDomain</a></td>
			<td>
string
</td>
			<td>Internal TLS domain; empty uses the release namespace.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--flower--userId"><a href="./values.yaml#L1042">runtime.flower.userId</a></td>
			<td>
string
</td>
			<td>Container user ID.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail"><a href="./values.yaml#L1044">runtime.guardrail</a></td>
			<td>
object
</td>
			<td>Guardrail runtime; empty image fields inherit Python settings.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "baseImage": {
    "image": "",
    "tag3_10": "",
    "tag3_11": "",
    "tag3_12": "",
    "tag3_13": ""
  },
  "command": "",
  "dependencies": "digitalhub[full],digitalhub-runtime-python",
  "groupId": "",
  "homeDir": "",
  "image": "",
  "installDependencies": null,
  "serverless": {
    "image": "",
    "tag3_10": "",
    "tag3_11": "",
    "tag3_12": "",
    "tag3_13": ""
  },
  "tag3_10": "",
  "tag3_11": "",
  "tag3_12": "",
  "tag3_13": "",
  "useBetaDependencies": null,
  "userId": "",
  "volumeSize": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--baseImage"><a href="./values.yaml#L1046">runtime.guardrail.baseImage</a></td>
			<td>
object
</td>
			<td>Base image overrides.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "",
  "tag3_10": "",
  "tag3_11": "",
  "tag3_12": "",
  "tag3_13": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--baseImage--image"><a href="./values.yaml#L1048">runtime.guardrail.baseImage.image</a></td>
			<td>
string
</td>
			<td>Base repository; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--baseImage--tag3_10"><a href="./values.yaml#L1050">runtime.guardrail.baseImage.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--baseImage--tag3_11"><a href="./values.yaml#L1052">runtime.guardrail.baseImage.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--baseImage--tag3_12"><a href="./values.yaml#L1054">runtime.guardrail.baseImage.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--baseImage--tag3_13"><a href="./values.yaml#L1056">runtime.guardrail.baseImage.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--command"><a href="./values.yaml#L1058">runtime.guardrail.command</a></td>
			<td>
string
</td>
			<td>Command; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--dependencies"><a href="./values.yaml#L1060">runtime.guardrail.dependencies</a></td>
			<td>
string
</td>
			<td>Runtime dependencies.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub[full],digitalhub-runtime-python"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--groupId"><a href="./values.yaml#L1062">runtime.guardrail.groupId</a></td>
			<td>
string
</td>
			<td>Group ID; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--homeDir"><a href="./values.yaml#L1064">runtime.guardrail.homeDir</a></td>
			<td>
string
</td>
			<td>Home directory; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--image"><a href="./values.yaml#L1066">runtime.guardrail.image</a></td>
			<td>
string
</td>
			<td>Runtime repository; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--installDependencies"><a href="./values.yaml#L1068">runtime.guardrail.installDependencies</a></td>
			<td>
string
</td>
			<td>Install dependencies; null inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--serverless"><a href="./values.yaml#L1070">runtime.guardrail.serverless</a></td>
			<td>
object
</td>
			<td>Serverless image overrides.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "",
  "tag3_10": "",
  "tag3_11": "",
  "tag3_12": "",
  "tag3_13": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--serverless--image"><a href="./values.yaml#L1072">runtime.guardrail.serverless.image</a></td>
			<td>
string
</td>
			<td>Serverless repository; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--serverless--tag3_10"><a href="./values.yaml#L1074">runtime.guardrail.serverless.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--serverless--tag3_11"><a href="./values.yaml#L1076">runtime.guardrail.serverless.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--serverless--tag3_12"><a href="./values.yaml#L1078">runtime.guardrail.serverless.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--serverless--tag3_13"><a href="./values.yaml#L1080">runtime.guardrail.serverless.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--tag3_10"><a href="./values.yaml#L1082">runtime.guardrail.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--tag3_11"><a href="./values.yaml#L1084">runtime.guardrail.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--tag3_12"><a href="./values.yaml#L1086">runtime.guardrail.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--tag3_13"><a href="./values.yaml#L1088">runtime.guardrail.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--useBetaDependencies"><a href="./values.yaml#L1090">runtime.guardrail.useBetaDependencies</a></td>
			<td>
string
</td>
			<td>Use beta dependencies; null inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--userId"><a href="./values.yaml#L1092">runtime.guardrail.userId</a></td>
			<td>
string
</td>
			<td>User ID; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--guardrail--volumeSize"><a href="./values.yaml#L1094">runtime.guardrail.volumeSize</a></td>
			<td>
string
</td>
			<td>Volume size; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hera"><a href="./values.yaml#L1096">runtime.hera</a></td>
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
  "duration": "",
  "image": "ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-hera/wrapper-hera",
  "tag": "0.16.0"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hera--duration"><a href="./values.yaml#L1098">runtime.hera.duration</a></td>
			<td>
string
</td>
			<td>Credential duration; empty inherits the refresh-token duration.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hera--image"><a href="./values.yaml#L1100">runtime.hera.image</a></td>
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
			<td id="runtime--hera--tag"><a href="./values.yaml#L1102">runtime.hera.tag</a></td>
			<td>
string
</td>
			<td>hera wrapper tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.16.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--huggingFace"><a href="./values.yaml#L1104">runtime.huggingFace</a></td>
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
  "groupId": "",
  "image": "kserve/huggingfaceserver",
  "tag": "v0.14.0",
  "userId": "",
  "volumeSize": "10Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--huggingFace--groupId"><a href="./values.yaml#L1106">runtime.huggingFace.groupId</a></td>
			<td>
string
</td>
			<td>Group ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--huggingFace--image"><a href="./values.yaml#L1108">runtime.huggingFace.image</a></td>
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
			<td id="runtime--huggingFace--tag"><a href="./values.yaml#L1110">runtime.huggingFace.tag</a></td>
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
			<td id="runtime--huggingFace--userId"><a href="./values.yaml#L1112">runtime.huggingFace.userId</a></td>
			<td>
string
</td>
			<td>User ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--huggingFace--volumeSize"><a href="./values.yaml#L1114">runtime.huggingFace.volumeSize</a></td>
			<td>
string
</td>
			<td>Model volume size.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"10Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra"><a href="./values.yaml#L1116">runtime.hydra</a></td>
			<td>
object
</td>
			<td>Hydra runtime settings</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "base": {
    "image": "",
    "tag3_10": "",
    "tag3_11": "",
    "tag3_12": "",
    "tag3_13": ""
  },
  "command": "",
  "dependencies": "digitalhub-runtime-hydra==0.16.1b1",
  "groupId": "",
  "homeDir": "",
  "image": "",
  "installDependencies": "",
  "serverless": {
    "image": "",
    "tag3_10": "",
    "tag3_11": "",
    "tag3_12": "",
    "tag3_13": ""
  },
  "tag3_10": "",
  "tag3_11": "",
  "tag3_12": "",
  "tag3_13": "",
  "useBetaDependencies": "",
  "userId": "",
  "volumeSize": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--base"><a href="./values.yaml#L1118">runtime.hydra.base</a></td>
			<td>
object
</td>
			<td>Hydra base image overrides.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "",
  "tag3_10": "",
  "tag3_11": "",
  "tag3_12": "",
  "tag3_13": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--base--image"><a href="./values.yaml#L1120">runtime.hydra.base.image</a></td>
			<td>
string
</td>
			<td>Base repository; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--base--tag3_10"><a href="./values.yaml#L1122">runtime.hydra.base.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--base--tag3_11"><a href="./values.yaml#L1124">runtime.hydra.base.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--base--tag3_12"><a href="./values.yaml#L1126">runtime.hydra.base.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--base--tag3_13"><a href="./values.yaml#L1128">runtime.hydra.base.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--dependencies"><a href="./values.yaml#L1131">runtime.hydra.dependencies</a></td>
			<td>
string
</td>
			<td>Hydra runtime dependencies</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-runtime-hydra==0.16.1b1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--groupId"><a href="./values.yaml#L1133">runtime.hydra.groupId</a></td>
			<td>
string
</td>
			<td>Group ID; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--homeDir"><a href="./values.yaml#L1135">runtime.hydra.homeDir</a></td>
			<td>
string
</td>
			<td>Home directory; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--image"><a href="./values.yaml#L1137">runtime.hydra.image</a></td>
			<td>
string
</td>
			<td>Hydra runtime repository; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--installDependencies"><a href="./values.yaml#L1139">runtime.hydra.installDependencies</a></td>
			<td>
string
</td>
			<td>Install dependencies; null inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--serverless"><a href="./values.yaml#L1141">runtime.hydra.serverless</a></td>
			<td>
object
</td>
			<td>Serverless image overrides.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "",
  "tag3_10": "",
  "tag3_11": "",
  "tag3_12": "",
  "tag3_13": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--serverless--image"><a href="./values.yaml#L1143">runtime.hydra.serverless.image</a></td>
			<td>
string
</td>
			<td>Serverless repository; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--serverless--tag3_10"><a href="./values.yaml#L1145">runtime.hydra.serverless.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--serverless--tag3_11"><a href="./values.yaml#L1147">runtime.hydra.serverless.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--serverless--tag3_12"><a href="./values.yaml#L1149">runtime.hydra.serverless.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--serverless--tag3_13"><a href="./values.yaml#L1151">runtime.hydra.serverless.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--tag3_10"><a href="./values.yaml#L1153">runtime.hydra.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--tag3_11"><a href="./values.yaml#L1155">runtime.hydra.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--tag3_12"><a href="./values.yaml#L1157">runtime.hydra.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--tag3_13"><a href="./values.yaml#L1159">runtime.hydra.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--useBetaDependencies"><a href="./values.yaml#L1161">runtime.hydra.useBetaDependencies</a></td>
			<td>
string
</td>
			<td>Use beta dependencies; null inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--userId"><a href="./values.yaml#L1163">runtime.hydra.userId</a></td>
			<td>
string
</td>
			<td>User ID; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--hydra--volumeSize"><a href="./values.yaml#L1165">runtime.hydra.volumeSize</a></td>
			<td>
string
</td>
			<td>Volume size; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--kfp"><a href="./values.yaml#L1167">runtime.kfp</a></td>
			<td>
object
</td>
			<td>Kubeflow Pipelines runtime.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "duration": "",
  "image": "ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-kfp/wrapper-kfp",
  "tag": "0.16.0"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--kfp--duration"><a href="./values.yaml#L1169">runtime.kfp.duration</a></td>
			<td>
string
</td>
			<td>Credential duration; empty inherits the refresh-token duration.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--kfp--image"><a href="./values.yaml#L1171">runtime.kfp.image</a></td>
			<td>
string
</td>
			<td>KFP wrapper repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/digitalhub-sdk-wrapper-kfp/wrapper-kfp"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--kfp--tag"><a href="./values.yaml#L1173">runtime.kfp.tag</a></td>
			<td>
string
</td>
			<td>KFP wrapper tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.16.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--llmOtelEndpoint"><a href="./values.yaml#L1175">runtime.llmOtelEndpoint</a></td>
			<td>
string
</td>
			<td>OpenTelemetry endpoint for model serving.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--mlflow"><a href="./values.yaml#L1177">runtime.mlflow</a></td>
			<td>
object
</td>
			<td>MLflow model serving runtime.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupId": "",
  "image": "seldonio/mlserver",
  "tag": "1.6.0-mlflow",
  "userId": "",
  "volumeSize": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--mlflow--groupId"><a href="./values.yaml#L1179">runtime.mlflow.groupId</a></td>
			<td>
string
</td>
			<td>Group ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--mlflow--image"><a href="./values.yaml#L1181">runtime.mlflow.image</a></td>
			<td>
string
</td>
			<td>MLflow serving repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"seldonio/mlserver"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--mlflow--tag"><a href="./values.yaml#L1183">runtime.mlflow.tag</a></td>
			<td>
string
</td>
			<td>MLflow serving tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1.6.0-mlflow"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--mlflow--userId"><a href="./values.yaml#L1185">runtime.mlflow.userId</a></td>
			<td>
string
</td>
			<td>User ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--mlflow--volumeSize"><a href="./values.yaml#L1187">runtime.mlflow.volumeSize</a></td>
			<td>
string
</td>
			<td>Model volume size.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference"><a href="./values.yaml#L1189">runtime.openInference</a></td>
			<td>
object
</td>
			<td>OpenInference runtime; empty image fields inherit Python settings.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "baseImage": {
    "image": "",
    "tag3_10": "",
    "tag3_11": "",
    "tag3_12": "",
    "tag3_13": ""
  },
  "command": "",
  "dependencies": "digitalhub[full],digitalhub-runtime-python",
  "groupId": "",
  "homeDir": "",
  "image": "",
  "installDependencies": null,
  "serverless": {
    "image": "",
    "tag3_10": "",
    "tag3_11": "",
    "tag3_12": "",
    "tag3_13": ""
  },
  "tag3_10": "",
  "tag3_11": "",
  "tag3_12": "",
  "tag3_13": "",
  "useBetaDependencies": null,
  "userId": "",
  "volumeSize": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--baseImage"><a href="./values.yaml#L1191">runtime.openInference.baseImage</a></td>
			<td>
object
</td>
			<td>Base image overrides.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "",
  "tag3_10": "",
  "tag3_11": "",
  "tag3_12": "",
  "tag3_13": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--baseImage--image"><a href="./values.yaml#L1193">runtime.openInference.baseImage.image</a></td>
			<td>
string
</td>
			<td>Base repository; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--baseImage--tag3_10"><a href="./values.yaml#L1195">runtime.openInference.baseImage.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--baseImage--tag3_11"><a href="./values.yaml#L1197">runtime.openInference.baseImage.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--baseImage--tag3_12"><a href="./values.yaml#L1199">runtime.openInference.baseImage.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--baseImage--tag3_13"><a href="./values.yaml#L1201">runtime.openInference.baseImage.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 base tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--command"><a href="./values.yaml#L1203">runtime.openInference.command</a></td>
			<td>
string
</td>
			<td>Command; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--dependencies"><a href="./values.yaml#L1205">runtime.openInference.dependencies</a></td>
			<td>
string
</td>
			<td>Runtime dependencies.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub[full],digitalhub-runtime-python"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--groupId"><a href="./values.yaml#L1207">runtime.openInference.groupId</a></td>
			<td>
string
</td>
			<td>Group ID; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--homeDir"><a href="./values.yaml#L1209">runtime.openInference.homeDir</a></td>
			<td>
string
</td>
			<td>Home directory; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--image"><a href="./values.yaml#L1211">runtime.openInference.image</a></td>
			<td>
string
</td>
			<td>Runtime repository; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--installDependencies"><a href="./values.yaml#L1213">runtime.openInference.installDependencies</a></td>
			<td>
string
</td>
			<td>Install dependencies; null inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--serverless"><a href="./values.yaml#L1215">runtime.openInference.serverless</a></td>
			<td>
object
</td>
			<td>Serverless image overrides.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "",
  "tag3_10": "",
  "tag3_11": "",
  "tag3_12": "",
  "tag3_13": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--serverless--image"><a href="./values.yaml#L1217">runtime.openInference.serverless.image</a></td>
			<td>
string
</td>
			<td>Serverless repository; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--serverless--tag3_10"><a href="./values.yaml#L1219">runtime.openInference.serverless.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--serverless--tag3_11"><a href="./values.yaml#L1221">runtime.openInference.serverless.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--serverless--tag3_12"><a href="./values.yaml#L1223">runtime.openInference.serverless.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--serverless--tag3_13"><a href="./values.yaml#L1225">runtime.openInference.serverless.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 serverless tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--tag3_10"><a href="./values.yaml#L1227">runtime.openInference.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--tag3_11"><a href="./values.yaml#L1229">runtime.openInference.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--tag3_12"><a href="./values.yaml#L1231">runtime.openInference.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--tag3_13"><a href="./values.yaml#L1233">runtime.openInference.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 runtime tag override.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--useBetaDependencies"><a href="./values.yaml#L1235">runtime.openInference.useBetaDependencies</a></td>
			<td>
string
</td>
			<td>Use beta dependencies; null inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--userId"><a href="./values.yaml#L1237">runtime.openInference.userId</a></td>
			<td>
string
</td>
			<td>User ID; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--openInference--volumeSize"><a href="./values.yaml#L1239">runtime.openInference.volumeSize</a></td>
			<td>
string
</td>
			<td>Volume size; empty inherits Python.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python"><a href="./values.yaml#L1241">runtime.python</a></td>
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
  "baseImage": {
    "image": "python",
    "tag3_10": "3.10-slim",
    "tag3_11": "3.11-slim",
    "tag3_12": "3.12-slim",
    "tag3_13": "3.13-slim",
    "tag3_14": "3.14-slim"
  },
  "command": "/opt/nuclio/processor",
  "dependencies": "digitalhub[full],digitalhub-runtime-python",
  "groupId": "",
  "homeDir": "/shared",
  "image": "ghcr.io/scc-digitalhub/digitalhub-serverless/python-runtime",
  "installDependencies": true,
  "serverless": {
    "image": "ghcr.io/scc-digitalhub/digitalhub-serverless/digitalhub-serverless",
    "tag3_10": "3.10-0.16.1",
    "tag3_11": "3.11-0.16.1",
    "tag3_12": "3.12-0.16.1",
    "tag3_13": "3.13-0.16.1",
    "tag3_14": "3.14-0.16.1"
  },
  "tag3_10": "3.10-0.16.0",
  "tag3_11": "3.11-0.16.0",
  "tag3_12": "3.12-0.16.0",
  "tag3_13": "3.13-0.16.0",
  "tag3_14": "3.14-0.16.0",
  "tag3_9": "3.9-0.16.0",
  "useBetaDependencies": false,
  "userId": "",
  "volumeSize": "1Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--baseImage"><a href="./values.yaml#L1243">runtime.python.baseImage</a></td>
			<td>
object
</td>
			<td>Python base images.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "python",
  "tag3_10": "3.10-slim",
  "tag3_11": "3.11-slim",
  "tag3_12": "3.12-slim",
  "tag3_13": "3.13-slim",
  "tag3_14": "3.14-slim"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--baseImage--image"><a href="./values.yaml#L1245">runtime.python.baseImage.image</a></td>
			<td>
string
</td>
			<td>Python base repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"python"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--baseImage--tag3_10"><a href="./values.yaml#L1247">runtime.python.baseImage.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 base tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.10-slim"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--baseImage--tag3_11"><a href="./values.yaml#L1249">runtime.python.baseImage.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 base tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.11-slim"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--baseImage--tag3_12"><a href="./values.yaml#L1251">runtime.python.baseImage.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 base tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.12-slim"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--baseImage--tag3_13"><a href="./values.yaml#L1253">runtime.python.baseImage.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 base tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.13-slim"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--baseImage--tag3_14"><a href="./values.yaml#L1255">runtime.python.baseImage.tag3_14</a></td>
			<td>
string
</td>
			<td>Python 3.14 base tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.14-slim"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--command"><a href="./values.yaml#L1257">runtime.python.command</a></td>
			<td>
string
</td>
			<td>Python runtime command.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/opt/nuclio/processor"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--dependencies"><a href="./values.yaml#L1259">runtime.python.dependencies</a></td>
			<td>
string
</td>
			<td>Python runtime dependencies.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub[full],digitalhub-runtime-python"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--groupId"><a href="./values.yaml#L1261">runtime.python.groupId</a></td>
			<td>
string
</td>
			<td>Group ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--homeDir"><a href="./values.yaml#L1263">runtime.python.homeDir</a></td>
			<td>
string
</td>
			<td>Runtime home directory.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/shared"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--image"><a href="./values.yaml#L1265">runtime.python.image</a></td>
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
			<td id="runtime--python--installDependencies"><a href="./values.yaml#L1267">runtime.python.installDependencies</a></td>
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
			<td id="runtime--python--serverless"><a href="./values.yaml#L1269">runtime.python.serverless</a></td>
			<td>
object
</td>
			<td>Python serverless images.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "ghcr.io/scc-digitalhub/digitalhub-serverless/digitalhub-serverless",
  "tag3_10": "3.10-0.16.1",
  "tag3_11": "3.11-0.16.1",
  "tag3_12": "3.12-0.16.1",
  "tag3_13": "3.13-0.16.1",
  "tag3_14": "3.14-0.16.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--serverless--image"><a href="./values.yaml#L1271">runtime.python.serverless.image</a></td>
			<td>
string
</td>
			<td>Serverless repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/digitalhub-serverless/digitalhub-serverless"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--serverless--tag3_10"><a href="./values.yaml#L1273">runtime.python.serverless.tag3_10</a></td>
			<td>
string
</td>
			<td>Python 3.10 serverless tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.10-0.16.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--serverless--tag3_11"><a href="./values.yaml#L1275">runtime.python.serverless.tag3_11</a></td>
			<td>
string
</td>
			<td>Python 3.11 serverless tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.11-0.16.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--serverless--tag3_12"><a href="./values.yaml#L1277">runtime.python.serverless.tag3_12</a></td>
			<td>
string
</td>
			<td>Python 3.12 serverless tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.12-0.16.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--serverless--tag3_13"><a href="./values.yaml#L1279">runtime.python.serverless.tag3_13</a></td>
			<td>
string
</td>
			<td>Python 3.13 serverless tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.13-0.16.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--serverless--tag3_14"><a href="./values.yaml#L1281">runtime.python.serverless.tag3_14</a></td>
			<td>
string
</td>
			<td>Python 3.14 serverless tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.14-0.16.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--tag3_10"><a href="./values.yaml#L1283">runtime.python.tag3_10</a></td>
			<td>
string
</td>
			<td>Python runtime 3.10  tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.10-0.16.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--tag3_11"><a href="./values.yaml#L1285">runtime.python.tag3_11</a></td>
			<td>
string
</td>
			<td>Python runtime 3.11 tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.11-0.16.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--tag3_12"><a href="./values.yaml#L1287">runtime.python.tag3_12</a></td>
			<td>
string
</td>
			<td>Python runtime 3.12 tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.12-0.16.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--tag3_13"><a href="./values.yaml#L1289">runtime.python.tag3_13</a></td>
			<td>
string
</td>
			<td>Python runtime 3.13 tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.13-0.16.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--tag3_14"><a href="./values.yaml#L1291">runtime.python.tag3_14</a></td>
			<td>
string
</td>
			<td>Python 3.14 runtime tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.14-0.16.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--tag3_9"><a href="./values.yaml#L1293">runtime.python.tag3_9</a></td>
			<td>
string
</td>
			<td>Python 3.9 runtime tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3.9-0.16.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--useBetaDependencies"><a href="./values.yaml#L1295">runtime.python.useBetaDependencies</a></td>
			<td>
bool
</td>
			<td>Allow beta dependencies.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--userId"><a href="./values.yaml#L1297">runtime.python.userId</a></td>
			<td>
string
</td>
			<td>User ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--python--volumeSize"><a href="./values.yaml#L1299">runtime.python.volumeSize</a></td>
			<td>
string
</td>
			<td>Runtime volume size.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray"><a href="./values.yaml#L1301">runtime.ray</a></td>
			<td>
object
</td>
			<td>Ray runtime settings</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "backoffLimit": "0",
  "dependencies": "digitalhub-runtime-python==0.16.0b9,digitalhub-runtime-ray==0.16.0b10",
  "dependencyFormat": "pip",
  "duration": "",
  "groupId": "100",
  "head": {
    "cpu": "2",
    "diskSize": "2Gi",
    "memory": "8Gi",
    "profile": ""
  },
  "homeDir": "/shared",
  "image": "rayproject/ray",
  "preRunningDeadlineSeconds": 300,
  "shutdownAfterJobFinishes": "true",
  "tag": "2.55.1",
  "ttlSecondsAfterFinished": 600,
  "userId": "1000",
  "version": "2.55.1",
  "workerGroupName": "workers",
  "workerImage": "",
  "workerProfile": "",
  "workerTag": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--backoffLimit"><a href="./values.yaml#L1303">runtime.ray.backoffLimit</a></td>
			<td>
string
</td>
			<td>Ray job backoff limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--dependencies"><a href="./values.yaml#L1305">runtime.ray.dependencies</a></td>
			<td>
string
</td>
			<td>Ray runtime dependencies</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-runtime-python==0.16.0b9,digitalhub-runtime-ray==0.16.0b10"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--dependencyFormat"><a href="./values.yaml#L1307">runtime.ray.dependencyFormat</a></td>
			<td>
string
</td>
			<td>Ray runtime dependency format</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"pip"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--duration"><a href="./values.yaml#L1309">runtime.ray.duration</a></td>
			<td>
string
</td>
			<td>Ray job duration</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--groupId"><a href="./values.yaml#L1311">runtime.ray.groupId</a></td>
			<td>
string
</td>
			<td>Ray job group ID</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"100"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--head"><a href="./values.yaml#L1313">runtime.ray.head</a></td>
			<td>
object
</td>
			<td>Ray head configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "2",
  "diskSize": "2Gi",
  "memory": "8Gi",
  "profile": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--head--cpu"><a href="./values.yaml#L1315">runtime.ray.head.cpu</a></td>
			<td>
string
</td>
			<td>Ray head CPU configuration</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--head--diskSize"><a href="./values.yaml#L1317">runtime.ray.head.diskSize</a></td>
			<td>
string
</td>
			<td>Ray head disk size</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--head--memory"><a href="./values.yaml#L1319">runtime.ray.head.memory</a></td>
			<td>
string
</td>
			<td>Ray head memory configuration</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--head--profile"><a href="./values.yaml#L1321">runtime.ray.head.profile</a></td>
			<td>
string
</td>
			<td>Ray head profile</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--homeDir"><a href="./values.yaml#L1323">runtime.ray.homeDir</a></td>
			<td>
string
</td>
			<td>Ray home directory</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/shared"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--image"><a href="./values.yaml#L1325">runtime.ray.image</a></td>
			<td>
string
</td>
			<td>Ray repository</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"rayproject/ray"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--preRunningDeadlineSeconds"><a href="./values.yaml#L1327">runtime.ray.preRunningDeadlineSeconds</a></td>
			<td>
int
</td>
			<td>Ray job pre-running deadline seconds</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
300
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--shutdownAfterJobFinishes"><a href="./values.yaml#L1329">runtime.ray.shutdownAfterJobFinishes</a></td>
			<td>
string
</td>
			<td>Ray job shutdown after job finishes</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"true"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--tag"><a href="./values.yaml#L1331">runtime.ray.tag</a></td>
			<td>
string
</td>
			<td>Ray tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2.55.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--ttlSecondsAfterFinished"><a href="./values.yaml#L1333">runtime.ray.ttlSecondsAfterFinished</a></td>
			<td>
int
</td>
			<td>Ray job TTL seconds after finished</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
600
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--userId"><a href="./values.yaml#L1335">runtime.ray.userId</a></td>
			<td>
string
</td>
			<td>Ray job user ID</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1000"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--version"><a href="./values.yaml#L1337">runtime.ray.version</a></td>
			<td>
string
</td>
			<td>Ray version</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2.55.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--workerGroupName"><a href="./values.yaml#L1339">runtime.ray.workerGroupName</a></td>
			<td>
string
</td>
			<td>Ray worker group name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"workers"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--workerImage"><a href="./values.yaml#L1341">runtime.ray.workerImage</a></td>
			<td>
string
</td>
			<td>Ray worker repository</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--workerProfile"><a href="./values.yaml#L1343">runtime.ray.workerProfile</a></td>
			<td>
string
</td>
			<td>Ray worker profile</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--ray--workerTag"><a href="./values.yaml#L1345">runtime.ray.workerTag</a></td>
			<td>
string
</td>
			<td>Ray worker tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--servicegraph"><a href="./values.yaml#L1347">runtime.servicegraph</a></td>
			<td>
object
</td>
			<td>ServiceGraph runtime.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "command": "/app/servicegraph",
  "groupId": "",
  "image": "ghcr.io/scc-digitalhub/digitalhub-servicegraph",
  "tag": "0.16.0",
  "userId": "",
  "volumeSize": "1Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--servicegraph--command"><a href="./values.yaml#L1349">runtime.servicegraph.command</a></td>
			<td>
string
</td>
			<td>ServiceGraph command.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/app/servicegraph"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--servicegraph--groupId"><a href="./values.yaml#L1351">runtime.servicegraph.groupId</a></td>
			<td>
string
</td>
			<td>Group ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--servicegraph--image"><a href="./values.yaml#L1353">runtime.servicegraph.image</a></td>
			<td>
string
</td>
			<td>ServiceGraph repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/digitalhub-servicegraph"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--servicegraph--tag"><a href="./values.yaml#L1355">runtime.servicegraph.tag</a></td>
			<td>
string
</td>
			<td>ServiceGraph tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.16.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--servicegraph--userId"><a href="./values.yaml#L1357">runtime.servicegraph.userId</a></td>
			<td>
string
</td>
			<td>User ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--servicegraph--volumeSize"><a href="./values.yaml#L1359">runtime.servicegraph.volumeSize</a></td>
			<td>
string
</td>
			<td>Runtime volume size.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--sklearn"><a href="./values.yaml#L1361">runtime.sklearn</a></td>
			<td>
object
</td>
			<td>Scikit-learn model serving runtime.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "groupId": "",
  "image": "seldonio/mlserver",
  "tag": "1.6.0-sklearn",
  "userId": "",
  "volumeSize": "1Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--sklearn--groupId"><a href="./values.yaml#L1363">runtime.sklearn.groupId</a></td>
			<td>
string
</td>
			<td>Group ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--sklearn--image"><a href="./values.yaml#L1365">runtime.sklearn.image</a></td>
			<td>
string
</td>
			<td>Scikit-learn serving repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"seldonio/mlserver"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--sklearn--tag"><a href="./values.yaml#L1367">runtime.sklearn.tag</a></td>
			<td>
string
</td>
			<td>Scikit-learn serving tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1.6.0-sklearn"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--sklearn--userId"><a href="./values.yaml#L1369">runtime.sklearn.userId</a></td>
			<td>
string
</td>
			<td>User ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--sklearn--volumeSize"><a href="./values.yaml#L1371">runtime.sklearn.volumeSize</a></td>
			<td>
string
</td>
			<td>Model volume size.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm"><a href="./values.yaml#L1373">runtime.tvm</a></td>
			<td>
object
</td>
			<td>TVM runtime settings</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "builder": {
    "onnx": {
      "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
      "tag": "0.26.0-r2"
    },
    "tflite": {
      "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
      "tag": "0.26.0-r2"
    }
  },
  "compiler": {
    "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
    "tag": "0.26.0-r2"
  },
  "groupId": "",
  "homeDir": "/shared",
  "serve": {
    "image": "ghcr.io/scc-digitalhub/tvm-runtime-go",
    "tag": "0.26.0-r3"
  },
  "userId": "",
  "volumeSize": "4Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--builder"><a href="./values.yaml#L1375">runtime.tvm.builder</a></td>
			<td>
object
</td>
			<td>TVM builder settings</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "onnx": {
    "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
    "tag": "0.26.0-r2"
  },
  "tflite": {
    "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
    "tag": "0.26.0-r2"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--builder--onnx"><a href="./values.yaml#L1377">runtime.tvm.builder.onnx</a></td>
			<td>
object
</td>
			<td>ONNX builder settings</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
  "tag": "0.26.0-r2"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--builder--onnx--image"><a href="./values.yaml#L1379">runtime.tvm.builder.onnx.image</a></td>
			<td>
string
</td>
			<td>ONNX builder image</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/tvm-toolkit"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--builder--onnx--tag"><a href="./values.yaml#L1381">runtime.tvm.builder.onnx.tag</a></td>
			<td>
string
</td>
			<td>ONNX builder tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.26.0-r2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--builder--tflite"><a href="./values.yaml#L1383">runtime.tvm.builder.tflite</a></td>
			<td>
object
</td>
			<td>TFLite builder settings</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
  "tag": "0.26.0-r2"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--builder--tflite--image"><a href="./values.yaml#L1385">runtime.tvm.builder.tflite.image</a></td>
			<td>
string
</td>
			<td>TFLite builder image</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/tvm-toolkit"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--builder--tflite--tag"><a href="./values.yaml#L1387">runtime.tvm.builder.tflite.tag</a></td>
			<td>
string
</td>
			<td>TFLite builder tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.26.0-r2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--compiler"><a href="./values.yaml#L1389">runtime.tvm.compiler</a></td>
			<td>
object
</td>
			<td>TVM compiler settings</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": "ghcr.io/scc-digitalhub/tvm-toolkit",
  "tag": "0.26.0-r2"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--compiler--image"><a href="./values.yaml#L1391">runtime.tvm.compiler.image</a></td>
			<td>
string
</td>
			<td>TVM compiler image</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/tvm-toolkit"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--compiler--tag"><a href="./values.yaml#L1393">runtime.tvm.compiler.tag</a></td>
			<td>
string
</td>
			<td>TVM compiler tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.26.0-r2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--groupId"><a href="./values.yaml#L1395">runtime.tvm.groupId</a></td>
			<td>
string
</td>
			<td>Group ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--homeDir"><a href="./values.yaml#L1397">runtime.tvm.homeDir</a></td>
			<td>
string
</td>
			<td>Runtime home directory.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/shared"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--userId"><a href="./values.yaml#L1405">runtime.tvm.userId</a></td>
			<td>
string
</td>
			<td>User ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--tvm--volumeSize"><a href="./values.yaml#L1407">runtime.tvm.volumeSize</a></td>
			<td>
string
</td>
			<td>Model volume size.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"4Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm"><a href="./values.yaml#L1409">runtime.vllm</a></td>
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
    "audioImage": "",
    "audioTag": "",
    "image": "vllm/vllm-openai-cpu",
    "tag": "v0.19.1"
  },
  "default": {
    "audioImage": "",
    "audioTag": "",
    "image": "vllm/vllm-openai",
    "tag": "v0.19.1"
  },
  "groupId": "",
  "homeDir": "/shared",
  "memSize": "16Gi",
  "userId": "",
  "volumeSize": "10Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--cpu"><a href="./values.yaml#L1411">runtime.vllm.cpu</a></td>
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
  "audioImage": "",
  "audioTag": "",
  "image": "vllm/vllm-openai-cpu",
  "tag": "v0.19.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--cpu--audioImage"><a href="./values.yaml#L1413">runtime.vllm.cpu.audioImage</a></td>
			<td>
string
</td>
			<td>Audio repository; empty inherits the CPU repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--cpu--audioTag"><a href="./values.yaml#L1415">runtime.vllm.cpu.audioTag</a></td>
			<td>
string
</td>
			<td>Audio tag; empty inherits the CPU tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--cpu--image"><a href="./values.yaml#L1417">runtime.vllm.cpu.image</a></td>
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
			<td id="runtime--vllm--cpu--tag"><a href="./values.yaml#L1419">runtime.vllm.cpu.tag</a></td>
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
			<td id="runtime--vllm--default"><a href="./values.yaml#L1421">runtime.vllm.default</a></td>
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
  "audioImage": "",
  "audioTag": "",
  "image": "vllm/vllm-openai",
  "tag": "v0.19.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--default--audioImage"><a href="./values.yaml#L1423">runtime.vllm.default.audioImage</a></td>
			<td>
string
</td>
			<td>Audio repository; empty inherits the default repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--default--audioTag"><a href="./values.yaml#L1425">runtime.vllm.default.audioTag</a></td>
			<td>
string
</td>
			<td>Audio tag; empty inherits the default tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--default--image"><a href="./values.yaml#L1427">runtime.vllm.default.image</a></td>
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
			<td id="runtime--vllm--default--tag"><a href="./values.yaml#L1429">runtime.vllm.default.tag</a></td>
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
			<td id="runtime--vllm--groupId"><a href="./values.yaml#L1431">runtime.vllm.groupId</a></td>
			<td>
string
</td>
			<td>Group ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--homeDir"><a href="./values.yaml#L1433">runtime.vllm.homeDir</a></td>
			<td>
string
</td>
			<td>Runtime home directory.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/shared"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--memSize"><a href="./values.yaml#L1435">runtime.vllm.memSize</a></td>
			<td>
string
</td>
			<td>Runtime shared memory size.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"16Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--userId"><a href="./values.yaml#L1437">runtime.vllm.userId</a></td>
			<td>
string
</td>
			<td>User ID; empty inherits workload security settings.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="runtime--vllm--volumeSize"><a href="./values.yaml#L1439">runtime.vllm.volumeSize</a></td>
			<td>
string
</td>
			<td>Model volume size.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"10Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3"><a href="./values.yaml#L1442">s3</a></td>
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
    "policyTemplate": "",
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
			<td id="s3--enabled"><a href="./values.yaml#L1444">s3.enabled</a></td>
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
			<td id="s3--bucket"><a href="./values.yaml#L1446">s3.bucket</a></td>
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
			<td id="s3--credentials"><a href="./values.yaml#L1448">s3.credentials</a></td>
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
  "policyTemplate": "",
  "roleArn": "",
  "secretKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--accessKey"><a href="./values.yaml#L1451">s3.credentials.accessKey</a></td>
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
			<td id="s3--credentials--claimPrefix"><a href="./values.yaml#L1453">s3.credentials.claimPrefix</a></td>
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
			<td id="s3--credentials--duration"><a href="./values.yaml#L1455">s3.credentials.duration</a></td>
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
			<td id="s3--credentials--existingSecret"><a href="./values.yaml#L1458">s3.credentials.existingSecret</a></td>
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
			<td id="s3--credentials--existingSecret--accessKeyKey"><a href="./values.yaml#L1460">s3.credentials.existingSecret.accessKeyKey</a></td>
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
			<td id="s3--credentials--existingSecret--name"><a href="./values.yaml#L1462">s3.credentials.existingSecret.name</a></td>
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
			<td id="s3--credentials--existingSecret--secretKeyKey"><a href="./values.yaml#L1464">s3.credentials.existingSecret.secretKeyKey</a></td>
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
			<td id="s3--credentials--policy"><a href="./values.yaml#L1467">s3.credentials.policy</a></td>
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
			<td id="s3--credentials--policyTemplate"><a href="./values.yaml#L1469">s3.credentials.policyTemplate</a></td>
			<td>
string
</td>
			<td>Template used to generate credential policies.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="s3--credentials--roleArn"><a href="./values.yaml#L1471">s3.credentials.roleArn</a></td>
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
			<td id="s3--credentials--secretKey"><a href="./values.yaml#L1474">s3.credentials.secretKey</a></td>
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
			<td id="s3--endpoint"><a href="./values.yaml#L1476">s3.endpoint</a></td>
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
			<td id="s3--pathStyleAccess"><a href="./values.yaml#L1479">s3.pathStyleAccess</a></td>
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
			<td id="s3--port"><a href="./values.yaml#L1481">s3.port</a></td>
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
			<td id="s3--protocol"><a href="./values.yaml#L1483">s3.protocol</a></td>
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
			<td id="s3--publicUrl"><a href="./values.yaml#L1485">s3.publicUrl</a></td>
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
			<td id="s3--region"><a href="./values.yaml#L1487">s3.region</a></td>
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
			<td id="s3--signatureVersion"><a href="./values.yaml#L1489">s3.signatureVersion</a></td>
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
			<td id="securityContext"><a href="./values.yaml#L1492">securityContext</a></td>
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
			<td id="securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1494">securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="securityContext--capabilities"><a href="./values.yaml#L1496">securityContext.capabilities</a></td>
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
			<td id="securityContext--capabilities--drop"><a href="./values.yaml#L1498">securityContext.capabilities.drop</a></td>
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
			<td id="securityContext--runAsNonRoot"><a href="./values.yaml#L1501">securityContext.runAsNonRoot</a></td>
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
			<td id="securityContext--seccompProfile"><a href="./values.yaml#L1503">securityContext.seccompProfile</a></td>
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
			<td id="securityContext--seccompProfile--type"><a href="./values.yaml#L1505">securityContext.seccompProfile.type</a></td>
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
			<td id="server"><a href="./values.yaml#L1508">server</a></td>
			<td>
object
</td>
			<td>Core HTTP server configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "context": "/",
  "host": "localhost",
  "managementPort": 8081,
  "port": 8080,
  "tomcat": {
    "protocolHeader": "x-forwarded-proto",
    "remoteIpHeader": "x-forwarded-for"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="server--context"><a href="./values.yaml#L1510">server.context</a></td>
			<td>
string
</td>
			<td>Servlet context path.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="server--host"><a href="./values.yaml#L1512">server.host</a></td>
			<td>
string
</td>
			<td>Server host.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"localhost"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="server--managementPort"><a href="./values.yaml#L1514">server.managementPort</a></td>
			<td>
int
</td>
			<td>Management endpoint port.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
8081
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="server--port"><a href="./values.yaml#L1516">server.port</a></td>
			<td>
int
</td>
			<td>HTTP server port.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
8080
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="server--tomcat"><a href="./values.yaml#L1518">server.tomcat</a></td>
			<td>
object
</td>
			<td>Forwarded request header configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "protocolHeader": "x-forwarded-proto",
  "remoteIpHeader": "x-forwarded-for"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="server--tomcat--protocolHeader"><a href="./values.yaml#L1520">server.tomcat.protocolHeader</a></td>
			<td>
string
</td>
			<td>Forwarded protocol header.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"x-forwarded-proto"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="server--tomcat--remoteIpHeader"><a href="./values.yaml#L1522">server.tomcat.remoteIpHeader</a></td>
			<td>
string
</td>
			<td>Forwarded remote IP header.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"x-forwarded-for"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="service"><a href="./values.yaml#L1525">service</a></td>
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
			<td id="service--httpNodePort"><a href="./values.yaml#L1527">service.httpNodePort</a></td>
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
			<td id="service--port"><a href="./values.yaml#L1529">service.port</a></td>
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
			<td id="service--type"><a href="./values.yaml#L1531">service.type</a></td>
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
			<td id="serviceAccount"><a href="./values.yaml#L1534">serviceAccount</a></td>
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
			<td id="serviceAccount--annotations"><a href="./values.yaml#L1536">serviceAccount.annotations</a></td>
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
			<td id="serviceAccount--automount"><a href="./values.yaml#L1538">serviceAccount.automount</a></td>
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
			<td id="serviceAccount--create"><a href="./values.yaml#L1540">serviceAccount.create</a></td>
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
			<td id="serviceAccount--name"><a href="./values.yaml#L1542">serviceAccount.name</a></td>
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
			<td id="solr"><a href="./values.yaml#L1545">solr</a></td>
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
    "name": "",
    "replication": 1,
    "shards": 1
  },
  "enabled": false,
  "reindex": "never",
  "timeout": 5000,
  "url": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--enabled"><a href="./values.yaml#L1547">solr.enabled</a></td>
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
			<td id="solr--basicAuth"><a href="./values.yaml#L1549">solr.basicAuth</a></td>
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
			<td id="solr--basicAuth--enabled"><a href="./values.yaml#L1551">solr.basicAuth.enabled</a></td>
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
			<td id="solr--basicAuth--credentials--existingSecrets"><a href="./values.yaml#L1555">solr.basicAuth.credentials.existingSecrets</a></td>
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
			<td id="solr--basicAuth--credentials--existingSecrets--admin"><a href="./values.yaml#L1557">solr.basicAuth.credentials.existingSecrets.admin</a></td>
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
			<td id="solr--basicAuth--credentials--existingSecrets--admin--passwordKey"><a href="./values.yaml#L1559">solr.basicAuth.credentials.existingSecrets.admin.passwordKey</a></td>
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
			<td id="solr--basicAuth--credentials--existingSecrets--admin--secretName"><a href="./values.yaml#L1561">solr.basicAuth.credentials.existingSecrets.admin.secretName</a></td>
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
			<td id="solr--basicAuth--credentials--existingSecrets--admin--usernameKey"><a href="./values.yaml#L1563">solr.basicAuth.credentials.existingSecrets.admin.usernameKey</a></td>
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
			<td id="solr--basicAuth--credentials--existingSecrets--user"><a href="./values.yaml#L1565">solr.basicAuth.credentials.existingSecrets.user</a></td>
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
			<td id="solr--basicAuth--credentials--existingSecrets--user--passwordKey"><a href="./values.yaml#L1567">solr.basicAuth.credentials.existingSecrets.user.passwordKey</a></td>
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
			<td id="solr--basicAuth--credentials--existingSecrets--user--secretName"><a href="./values.yaml#L1569">solr.basicAuth.credentials.existingSecrets.user.secretName</a></td>
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
			<td id="solr--basicAuth--credentials--existingSecrets--user--usernameKey"><a href="./values.yaml#L1571">solr.basicAuth.credentials.existingSecrets.user.usernameKey</a></td>
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
			<td id="solr--collection"><a href="./values.yaml#L1573">solr.collection</a></td>
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
  "name": "",
  "replication": 1,
  "shards": 1
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--collection--name"><a href="./values.yaml#L1575">solr.collection.name</a></td>
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
			<td id="solr--collection--replication"><a href="./values.yaml#L1577">solr.collection.replication</a></td>
			<td>
int
</td>
			<td>Collection replication factor.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--collection--shards"><a href="./values.yaml#L1579">solr.collection.shards</a></td>
			<td>
int
</td>
			<td>Number of collection shards.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--reindex"><a href="./values.yaml#L1581">solr.reindex</a></td>
			<td>
string
</td>
			<td>Reindex policy.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"never"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--timeout"><a href="./values.yaml#L1583">solr.timeout</a></td>
			<td>
int
</td>
			<td>Request timeout in milliseconds.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
5000
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--url"><a href="./values.yaml#L1585">solr.url</a></td>
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
			<td id="sts"><a href="./values.yaml#L1588">sts</a></td>
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
			<td id="sts--enabled"><a href="./values.yaml#L1590">sts.enabled</a></td>
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
			<td id="sts--affinity"><a href="./values.yaml#L1592">sts.affinity</a></td>
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
			<td id="sts--autoscaling"><a href="./values.yaml#L1594">sts.autoscaling</a></td>
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
			<td id="sts--autoscaling--enabled"><a href="./values.yaml#L1596">sts.autoscaling.enabled</a></td>
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
			<td id="sts--autoscaling--maxReplicas"><a href="./values.yaml#L1598">sts.autoscaling.maxReplicas</a></td>
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
			<td id="sts--autoscaling--minReplicas"><a href="./values.yaml#L1600">sts.autoscaling.minReplicas</a></td>
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
			<td id="sts--autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L1602">sts.autoscaling.targetCPUUtilizationPercentage</a></td>
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
			<td id="sts--client"><a href="./values.yaml#L1604">sts.client</a></td>
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
			<td id="sts--client--clientId"><a href="./values.yaml#L1606">sts.client.clientId</a></td>
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
			<td id="sts--client--clientSecret"><a href="./values.yaml#L1608">sts.client.clientSecret</a></td>
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
			<td id="sts--client--existingSecret"><a href="./values.yaml#L1610">sts.client.existingSecret</a></td>
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
			<td id="sts--client--existingSecret--clientIdKey"><a href="./values.yaml#L1612">sts.client.existingSecret.clientIdKey</a></td>
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
			<td id="sts--client--existingSecret--clientSecretKey"><a href="./values.yaml#L1614">sts.client.existingSecret.clientSecretKey</a></td>
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
			<td id="sts--client--existingSecret--name"><a href="./values.yaml#L1616">sts.client.existingSecret.name</a></td>
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
			<td id="sts--credentials"><a href="./values.yaml#L1618">sts.credentials</a></td>
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
			<td id="sts--credentials--roles"><a href="./values.yaml#L1621">sts.credentials.roles</a></td>
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
			<td id="sts--databaseProvider"><a href="./values.yaml#L1623">sts.databaseProvider</a></td>
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
			<td id="sts--databaseProvider--enabled"><a href="./values.yaml#L1625">sts.databaseProvider.enabled</a></td>
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
			<td id="sts--databaseProvider--credentials"><a href="./values.yaml#L1627">sts.databaseProvider.credentials</a></td>
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
			<td id="sts--databaseProvider--credentials--existingSecret"><a href="./values.yaml#L1630">sts.databaseProvider.credentials.existingSecret</a></td>
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
			<td id="sts--databaseProvider--credentials--existingSecret--name"><a href="./values.yaml#L1632">sts.databaseProvider.credentials.existingSecret.name</a></td>
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
			<td id="sts--databaseProvider--credentials--existingSecret--passwordKey"><a href="./values.yaml#L1634">sts.databaseProvider.credentials.existingSecret.passwordKey</a></td>
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
			<td id="sts--databaseProvider--credentials--existingSecret--usernameKey"><a href="./values.yaml#L1636">sts.databaseProvider.credentials.existingSecret.usernameKey</a></td>
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
			<td id="sts--databaseProvider--credentials--password"><a href="./values.yaml#L1639">sts.databaseProvider.credentials.password</a></td>
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
			<td id="sts--databaseProvider--credentials--username"><a href="./values.yaml#L1642">sts.databaseProvider.credentials.username</a></td>
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
			<td id="sts--fullnameOverride"><a href="./values.yaml#L1644">sts.fullnameOverride</a></td>
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
			<td id="sts--image"><a href="./values.yaml#L1646">sts.image</a></td>
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
			<td id="sts--image--pullPolicy"><a href="./values.yaml#L1648">sts.image.pullPolicy</a></td>
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
			<td id="sts--image--repository"><a href="./values.yaml#L1650">sts.image.repository</a></td>
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
			<td id="sts--image--tag"><a href="./values.yaml#L1652">sts.image.tag</a></td>
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
			<td id="sts--imagePullSecrets"><a href="./values.yaml#L1657">sts.imagePullSecrets</a></td>
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
			<td id="sts--jwt"><a href="./values.yaml#L1659">sts.jwt</a></td>
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
			<td id="sts--jwt--audience"><a href="./values.yaml#L1661">sts.jwt.audience</a></td>
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
			<td id="sts--jwt--claim"><a href="./values.yaml#L1663">sts.jwt.claim</a></td>
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
			<td id="sts--jwt--issuerUri"><a href="./values.yaml#L1665">sts.jwt.issuerUri</a></td>
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
			<td id="sts--nameOverride"><a href="./values.yaml#L1667">sts.nameOverride</a></td>
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
			<td id="sts--nodeSelector"><a href="./values.yaml#L1669">sts.nodeSelector</a></td>
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
			<td id="sts--podAnnotations"><a href="./values.yaml#L1671">sts.podAnnotations</a></td>
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
			<td id="sts--podLabels"><a href="./values.yaml#L1673">sts.podLabels</a></td>
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
			<td id="sts--podSecurityContext"><a href="./values.yaml#L1675">sts.podSecurityContext</a></td>
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
			<td id="sts--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L1677">sts.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="sts--podSecurityContext--seccompProfile"><a href="./values.yaml#L1679">sts.podSecurityContext.seccompProfile</a></td>
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
			<td id="sts--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L1681">sts.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="sts--priorityClassName"><a href="./values.yaml#L1683">sts.priorityClassName</a></td>
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
			<td id="sts--replicaCount"><a href="./values.yaml#L1685">sts.replicaCount</a></td>
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
			<td id="sts--resources"><a href="./values.yaml#L1687">sts.resources</a></td>
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
			<td id="sts--resources--limits"><a href="./values.yaml#L1689">sts.resources.limits</a></td>
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
			<td id="sts--resources--limits--cpu"><a href="./values.yaml#L1691">sts.resources.limits.cpu</a></td>
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
			<td id="sts--resources--limits--memory"><a href="./values.yaml#L1693">sts.resources.limits.memory</a></td>
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
			<td id="sts--resources--requests"><a href="./values.yaml#L1695">sts.resources.requests</a></td>
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
			<td id="sts--resources--requests--cpu"><a href="./values.yaml#L1697">sts.resources.requests.cpu</a></td>
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
			<td id="sts--resources--requests--memory"><a href="./values.yaml#L1699">sts.resources.requests.memory</a></td>
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
			<td id="sts--securityContext"><a href="./values.yaml#L1701">sts.securityContext</a></td>
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
			<td id="sts--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1703">sts.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="sts--securityContext--capabilities"><a href="./values.yaml#L1705">sts.securityContext.capabilities</a></td>
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
			<td id="sts--securityContext--capabilities--drop"><a href="./values.yaml#L1707">sts.securityContext.capabilities.drop</a></td>
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
			<td id="sts--securityContext--runAsNonRoot"><a href="./values.yaml#L1710">sts.securityContext.runAsNonRoot</a></td>
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
			<td id="sts--securityContext--seccompProfile"><a href="./values.yaml#L1712">sts.securityContext.seccompProfile</a></td>
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
			<td id="sts--securityContext--seccompProfile--type"><a href="./values.yaml#L1714">sts.securityContext.seccompProfile.type</a></td>
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
			<td id="sts--service"><a href="./values.yaml#L1716">sts.service</a></td>
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
			<td id="sts--service--port"><a href="./values.yaml#L1718">sts.service.port</a></td>
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
			<td id="sts--service--type"><a href="./values.yaml#L1720">sts.service.type</a></td>
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
			<td id="sts--serviceAccount"><a href="./values.yaml#L1722">sts.serviceAccount</a></td>
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
			<td id="sts--serviceAccount--annotations"><a href="./values.yaml#L1724">sts.serviceAccount.annotations</a></td>
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
			<td id="sts--serviceAccount--automount"><a href="./values.yaml#L1726">sts.serviceAccount.automount</a></td>
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
			<td id="sts--serviceAccount--create"><a href="./values.yaml#L1728">sts.serviceAccount.create</a></td>
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
			<td id="sts--serviceAccount--name"><a href="./values.yaml#L1730">sts.serviceAccount.name</a></td>
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
			<td id="sts--stsDb"><a href="./values.yaml#L1732">sts.stsDb</a></td>
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
			<td id="sts--stsDb--credentials"><a href="./values.yaml#L1734">sts.stsDb.credentials</a></td>
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
			<td id="sts--stsDb--credentials--existingSecret"><a href="./values.yaml#L1737">sts.stsDb.credentials.existingSecret</a></td>
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
			<td id="sts--stsDb--credentials--existingSecret--name"><a href="./values.yaml#L1739">sts.stsDb.credentials.existingSecret.name</a></td>
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
			<td id="sts--stsDb--credentials--existingSecret--passwordKey"><a href="./values.yaml#L1741">sts.stsDb.credentials.existingSecret.passwordKey</a></td>
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
			<td id="sts--stsDb--credentials--existingSecret--usernameKey"><a href="./values.yaml#L1743">sts.stsDb.credentials.existingSecret.usernameKey</a></td>
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
			<td id="sts--stsDb--credentials--password"><a href="./values.yaml#L1746">sts.stsDb.credentials.password</a></td>
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
			<td id="sts--stsDb--credentials--username"><a href="./values.yaml#L1749">sts.stsDb.credentials.username</a></td>
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
			<td id="sts--stsDb--database"><a href="./values.yaml#L1751">sts.stsDb.database</a></td>
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
			<td id="sts--stsDb--driver"><a href="./values.yaml#L1753">sts.stsDb.driver</a></td>
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
			<td id="sts--stsDb--host"><a href="./values.yaml#L1755">sts.stsDb.host</a></td>
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
			<td id="sts--stsDb--platform"><a href="./values.yaml#L1757">sts.stsDb.platform</a></td>
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
			<td id="sts--stsDb--port"><a href="./values.yaml#L1759">sts.stsDb.port</a></td>
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
			<td id="sts--stsDb--schema"><a href="./values.yaml#L1761">sts.stsDb.schema</a></td>
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
			<td id="sts--tolerations"><a href="./values.yaml#L1763">sts.tolerations</a></td>
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
			<td id="sts--volumeMounts"><a href="./values.yaml#L1765">sts.volumeMounts</a></td>
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
			<td id="sts--volumes"><a href="./values.yaml#L1767">sts.volumes</a></td>
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
			<td id="templates"><a href="./values.yaml#L1771">templates</a></td>
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
			<td id="templatesPath"><a href="./values.yaml#L1774">templatesPath</a></td>
			<td>
string
</td>
			<td>Template discovery path.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"classpath:/templates"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="tolerations"><a href="./values.yaml#L1777">tolerations</a></td>
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
			<td id="trinodb"><a href="./values.yaml#L1780">trinodb</a></td>
			<td>
object
</td>
			<td>Trino database provider configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "catalog": "",
  "enabled": false,
  "host": "",
  "password": "",
  "port": "",
  "scheme": "",
  "url": "",
  "useCoreCredentials": false,
  "useJwtToken": null,
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="trinodb--enabled"><a href="./values.yaml#L1782">trinodb.enabled</a></td>
			<td>
bool
</td>
			<td>Enable the Trino provider.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trinodb--catalog"><a href="./values.yaml#L1784">trinodb.catalog</a></td>
			<td>
string
</td>
			<td>Trino catalog.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trinodb--host"><a href="./values.yaml#L1786">trinodb.host</a></td>
			<td>
string
</td>
			<td>Trino host.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trinodb--password"><a href="./values.yaml#L1788">trinodb.password</a></td>
			<td>
string
</td>
			<td>Trino password, stored in the ConfigMap.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trinodb--port"><a href="./values.yaml#L1790">trinodb.port</a></td>
			<td>
string
</td>
			<td>Trino port.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trinodb--scheme"><a href="./values.yaml#L1792">trinodb.scheme</a></td>
			<td>
string
</td>
			<td>Trino connection scheme.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trinodb--url"><a href="./values.yaml#L1794">trinodb.url</a></td>
			<td>
string
</td>
			<td>Trino connection URL.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trinodb--useCoreCredentials"><a href="./values.yaml#L1796">trinodb.useCoreCredentials</a></td>
			<td>
bool
</td>
			<td>Use Core credentials for Trino.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trinodb--useJwtToken"><a href="./values.yaml#L1798">trinodb.useJwtToken</a></td>
			<td>
string
</td>
			<td>Use a JWT token; null inherits useCoreCredentials.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trinodb--username"><a href="./values.yaml#L1800">trinodb.username</a></td>
			<td>
string
</td>
			<td>Trino username.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trivy--image"><a href="./values.yaml#L1803">trivy.image</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"aquasec/trivy"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="trivy--tag"><a href="./values.yaml#L1804">trivy.tag</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"latest"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="volumeMounts"><a href="./values.yaml#L1807">volumeMounts</a></td>
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
			<td id="volumes"><a href="./values.yaml#L1810">volumes</a></td>
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
