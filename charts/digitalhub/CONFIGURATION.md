<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: AGPL-3.0-or-later
-->

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
			<td>Global values</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "basicAuth": {
    "enabled": false,
    "password": "",
    "secretName": "",
    "username": ""
  },
  "cleanup": {
    "deployments": false,
    "enabled": false,
    "ingress": false,
    "jobs": false,
    "persistentVolumeClaims": false,
    "pods": false,
    "statefulsets": false
  },
  "crd": {
    "enabled": true
  },
  "externalHostAddress": "192.168.49.2",
  "externalTls": false,
  "ociRegistry": {
    "email": "",
    "password": "",
    "secretName": "",
    "url": "192.168.49.2:30150",
    "username": ""
  },
  "podSecurityContext": {
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "priority": {
    "enabled": false,
    "highPriority": {
      "className": "",
      "existingClass": false,
      "value": 1000
    },
    "lowPriority": {
      "className": "",
      "existingClass": false,
      "value": 100
    }
  },
  "s3": {
    "argo": {
      "accessKey": "",
      "bucket": "argo",
      "existingSecret": {
        "accessKeyKey": "",
        "secretKeyKey": "",
        "secretName": ""
      },
      "secretKey": "",
      "secretName": ""
    },
    "endpoint": "",
    "endpointPort": "",
    "platform": {
      "accessKey": "",
      "bucket": "datalake",
      "existingSecret": {
        "accessKeyKey": "",
        "secretKeyKey": "",
        "secretName": ""
      },
      "platformUserSecret": "",
      "secretKey": ""
    },
    "protocol": "http",
    "rootPassword": "",
    "rootUser": "",
    "rootUserSecret": ""
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
    "type": "NodePort"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--basicAuth"><a href="./values.yaml#L8">global.basicAuth</a></td>
			<td>
object
</td>
			<td>Basic auth configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "password": "",
  "secretName": "",
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--basicAuth--enabled"><a href="./values.yaml#L10">global.basicAuth.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable basic auth</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--basicAuth--password"><a href="./values.yaml#L12">global.basicAuth.password</a></td>
			<td>
string
</td>
			<td>Basic auth secret password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--basicAuth--secretName"><a href="./values.yaml#L14">global.basicAuth.secretName</a></td>
			<td>
string
</td>
			<td>Basic auth secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--basicAuth--username"><a href="./values.yaml#L16">global.basicAuth.username</a></td>
			<td>
string
</td>
			<td>Basic auth username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--cleanup"><a href="./values.yaml#L18">global.cleanup</a></td>
			<td>
object
</td>
			<td>Clean up configuration (used for the helm uninstall command)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "deployments": false,
  "enabled": false,
  "ingress": false,
  "jobs": false,
  "persistentVolumeClaims": false,
  "pods": false,
  "statefulsets": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--cleanup--enabled"><a href="./values.yaml#L20">global.cleanup.enabled</a></td>
			<td>
bool
</td>
			<td>Enable cleanup Job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--cleanup--deployments"><a href="./values.yaml#L22">global.cleanup.deployments</a></td>
			<td>
bool
</td>
			<td>Enable/Disables Deployments deletion</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--cleanup--ingress"><a href="./values.yaml#L24">global.cleanup.ingress</a></td>
			<td>
bool
</td>
			<td>Enable/Disables Ingresses deletion</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--cleanup--jobs"><a href="./values.yaml#L26">global.cleanup.jobs</a></td>
			<td>
bool
</td>
			<td>Enable/Disables Jobs deletion</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--cleanup--persistentVolumeClaims"><a href="./values.yaml#L28">global.cleanup.persistentVolumeClaims</a></td>
			<td>
bool
</td>
			<td>Enable/Disables PVC deletion</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--cleanup--pods"><a href="./values.yaml#L30">global.cleanup.pods</a></td>
			<td>
bool
</td>
			<td>Enable/Disables Pods deletion</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--cleanup--statefulsets"><a href="./values.yaml#L32">global.cleanup.statefulsets</a></td>
			<td>
bool
</td>
			<td>Enable/Disables StatefulSets deletion</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--crd"><a href="./values.yaml#L34">global.crd</a></td>
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
  "enabled": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--crd--enabled"><a href="./values.yaml#L36">global.crd.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable CRDs installations</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--externalHostAddress"><a href="./values.yaml#L38">global.externalHostAddress</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"192.168.49.2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--externalTls"><a href="./values.yaml#L40">global.externalTls</a></td>
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
			<td id="global--ociRegistry"><a href="./values.yaml#L42">global.ociRegistry</a></td>
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
  "url": "192.168.49.2:30150",
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--ociRegistry--email"><a href="./values.yaml#L44">global.ociRegistry.email</a></td>
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
			<td id="global--ociRegistry--password"><a href="./values.yaml#L46">global.ociRegistry.password</a></td>
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
			<td id="global--ociRegistry--secretName"><a href="./values.yaml#L48">global.ociRegistry.secretName</a></td>
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
			<td id="global--ociRegistry--url"><a href="./values.yaml#L50">global.ociRegistry.url</a></td>
			<td>
string
</td>
			<td>Registry url</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"192.168.49.2:30150"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--ociRegistry--username"><a href="./values.yaml#L52">global.ociRegistry.username</a></td>
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
			<td id="global--podSecurityContext"><a href="./values.yaml#L54">global.podSecurityContext</a></td>
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
			<td id="global--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L56">global.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="global--podSecurityContext--seccompProfile"><a href="./values.yaml#L58">global.podSecurityContext.seccompProfile</a></td>
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
			<td id="global--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L60">global.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="global--priority"><a href="./values.yaml#L62">global.priority</a></td>
			<td>
object
</td>
			<td>Priority class configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "highPriority": {
    "className": "",
    "existingClass": false,
    "value": 1000
  },
  "lowPriority": {
    "className": "",
    "existingClass": false,
    "value": 100
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--priority--enabled"><a href="./values.yaml#L64">global.priority.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable priority classes</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--priority--highPriority"><a href="./values.yaml#L66">global.priority.highPriority</a></td>
			<td>
object
</td>
			<td>High priority class configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "className": "",
  "existingClass": false,
  "value": 1000
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--priority--highPriority--className"><a href="./values.yaml#L68">global.priority.highPriority.className</a></td>
			<td>
string
</td>
			<td>Name of the high priority class</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--priority--highPriority--existingClass"><a href="./values.yaml#L70">global.priority.highPriority.existingClass</a></td>
			<td>
bool
</td>
			<td>Set this to true if you have an existing priority class with the name specified in className</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--priority--highPriority--value"><a href="./values.yaml#L72">global.priority.highPriority.value</a></td>
			<td>
int
</td>
			<td>Value of the high priority class created by the chart</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
1000
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--priority--lowPriority"><a href="./values.yaml#L74">global.priority.lowPriority</a></td>
			<td>
object
</td>
			<td>Low priority class configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "className": "",
  "existingClass": false,
  "value": 100
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--priority--lowPriority--className"><a href="./values.yaml#L76">global.priority.lowPriority.className</a></td>
			<td>
string
</td>
			<td>Name of the low priority class</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--priority--lowPriority--existingClass"><a href="./values.yaml#L78">global.priority.lowPriority.existingClass</a></td>
			<td>
bool
</td>
			<td>Set this to true if you have an existing priority class with the name specified in className</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--priority--lowPriority--value"><a href="./values.yaml#L80">global.priority.lowPriority.value</a></td>
			<td>
int
</td>
			<td>Value of the low priority class created by the chart</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
100
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3"><a href="./values.yaml#L82">global.s3</a></td>
			<td>
object
</td>
			<td>S3 configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "argo": {
    "accessKey": "",
    "bucket": "argo",
    "existingSecret": {
      "accessKeyKey": "",
      "secretKeyKey": "",
      "secretName": ""
    },
    "secretKey": "",
    "secretName": ""
  },
  "endpoint": "",
  "endpointPort": "",
  "platform": {
    "accessKey": "",
    "bucket": "datalake",
    "existingSecret": {
      "accessKeyKey": "",
      "secretKeyKey": "",
      "secretName": ""
    },
    "platformUserSecret": "",
    "secretKey": ""
  },
  "protocol": "http",
  "rootPassword": "",
  "rootUser": "",
  "rootUserSecret": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--argo"><a href="./values.yaml#L84">global.s3.argo</a></td>
			<td>
object
</td>
			<td>S3 configuration for Argo</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessKey": "",
  "bucket": "argo",
  "existingSecret": {
    "accessKeyKey": "",
    "secretKeyKey": "",
    "secretName": ""
  },
  "secretKey": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--argo--accessKey"><a href="./values.yaml#L86">global.s3.argo.accessKey</a></td>
			<td>
string
</td>
			<td>Access key of the Argo bucket user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--argo--bucket"><a href="./values.yaml#L88">global.s3.argo.bucket</a></td>
			<td>
string
</td>
			<td>Name of the Argo bucket</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--argo--existingSecret"><a href="./values.yaml#L89">global.s3.argo.existingSecret</a></td>
			<td>
object
</td>
			<td>Set the keys that you use in your S3 Argo bucket user secret  global.s3.endpoint -- Endpoint of your S3 instance</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessKeyKey": "",
  "secretKeyKey": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--argo--existingSecret--secretName"><a href="./values.yaml#L95">global.s3.argo.existingSecret.secretName</a></td>
			<td>
string
</td>
			<td>Secret of the Argo bucket user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--argo--secretKey"><a href="./values.yaml#L97">global.s3.argo.secretKey</a></td>
			<td>
string
</td>
			<td>Secret key of the Argo bucket user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--endpointPort"><a href="./values.yaml#L104">global.s3.endpointPort</a></td>
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
			<td id="global--s3--platform"><a href="./values.yaml#L106">global.s3.platform</a></td>
			<td>
object
</td>
			<td>S3 configuration for the platform</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessKey": "",
  "bucket": "datalake",
  "existingSecret": {
    "accessKeyKey": "",
    "secretKeyKey": "",
    "secretName": ""
  },
  "platformUserSecret": "",
  "secretKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--platform--accessKey"><a href="./values.yaml#L108">global.s3.platform.accessKey</a></td>
			<td>
string
</td>
			<td>Access key of the Platform's main bucket user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--platform--bucket"><a href="./values.yaml#L110">global.s3.platform.bucket</a></td>
			<td>
string
</td>
			<td>Name of the Platform's main bucket</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"datalake"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--platform--existingSecret"><a href="./values.yaml#L112">global.s3.platform.existingSecret</a></td>
			<td>
object
</td>
			<td>Set the keys that you use in your S3 main bucket user secret</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessKeyKey": "",
  "secretKeyKey": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--platform--existingSecret--secretName"><a href="./values.yaml#L118">global.s3.platform.existingSecret.secretName</a></td>
			<td>
string
</td>
			<td>Secret of the Platform's main bucket user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--platform--platformUserSecret"><a href="./values.yaml#L120">global.s3.platform.platformUserSecret</a></td>
			<td>
string
</td>
			<td>Secret of the Platform's main bucket user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--protocol"><a href="./values.yaml#L124">global.s3.protocol</a></td>
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
			<td id="global--s3--rootPassword"><a href="./values.yaml#L126">global.s3.rootPassword</a></td>
			<td>
string
</td>
			<td>S3 admin password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--rootUser"><a href="./values.yaml#L128">global.s3.rootUser</a></td>
			<td>
string
</td>
			<td>S3 admin username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--s3--rootUserSecret"><a href="./values.yaml#L130">global.s3.rootUserSecret</a></td>
			<td>
string
</td>
			<td>S3 admin secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--securityContext"><a href="./values.yaml#L132">global.securityContext</a></td>
			<td>
object
</td>
			<td>Security Context passed to the delete-resources job and the coder init/upgrade templates jobs</td>
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
			<td id="global--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L134">global.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Container allow privilege escalation.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--securityContext--capabilities"><a href="./values.yaml#L136">global.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Container configure capabilities.</td>
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
			<td id="global--securityContext--capabilities--drop"><a href="./values.yaml#L138">global.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Container drop capabilities.</td>
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
			<td id="global--securityContext--runAsNonRoot"><a href="./values.yaml#L141">global.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Container allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--securityContext--seccompProfile"><a href="./values.yaml#L143">global.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Container configure seccompProfile.</td>
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
			<td id="global--securityContext--seccompProfile--type"><a href="./values.yaml#L145">global.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Container configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--service"><a href="./values.yaml#L147">global.service</a></td>
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
			<td id="global--service--type"><a href="./values.yaml#L149">global.service.type</a></td>
			<td>
string
</td>
			<td>Service type used by the Platform's applications</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"NodePort"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="apigw-operator"><a href="./values.yaml#L152">apigw-operator</a></td>
			<td>
object
</td>
			<td>[API Gateway Operator](https://github.com/scc-digitalhub/apigw-operator) configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": true,
  "priorityClassName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="apigw-operator--enabled"><a href="./values.yaml#L154">apigw-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable API Gateway Operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="apigw-operator--priorityClassName"><a href="./values.yaml#L156">apigw-operator.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the apigw-operator pod. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows"><a href="./values.yaml#L160">argo-workflows</a></td>
			<td>
object
</td>
			<td>Argo Workflows configuration.  For a complete list of all the Values, as well as the specific documentation, please check the [Argo Workflows Helm Chart repository](https://github.com/argoproj/argo-helm/tree/main/charts/argo-workflows)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "artifactRepositoryRef": {
    "artifact-repositories": {
      "annotations": {
        "workflows.argoproj.io/default-artifact-repository": "artifact-repository"
      },
      "artifact-repository": {
        "archiveLogs": false,
        "s3": {
          "accessKeySecret": {
            "key": "",
            "name": ""
          },
          "bucket": "argo",
          "endpoint": "",
          "insecure": true,
          "secretKeySecret": {
            "key": "",
            "name": ""
          }
        }
      }
    }
  },
  "controller": {
    "configMap": {
      "create": true
    },
    "podSecurityContext": {
      "runAsNonRoot": true,
      "seccompProfile": {
        "type": "RuntimeDefault"
      }
    },
    "priorityClassName": "",
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
    "serviceAccount": {
      "name": "argo-workflow-controller"
    },
    "workflowDefaults": {
      "spec": {
        "serviceAccountName": "argo-workflow",
        "templateDefaults": {
          "container": {
            "resources": {
              "limits": {
                "cpu": "500m",
                "memory": "256Mi"
              },
              "requests": {
                "cpu": "100m",
                "memory": "128Mi"
              }
            }
          }
        }
      }
    }
  },
  "crds": {
    "install": true
  },
  "enabled": true,
  "executor": {
    "resources": {
      "limits": {
        "cpu": "500m",
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
    }
  },
  "server": {
    "enabled": false
  },
  "singleNamespace": true,
  "workflow": {
    "serviceAccount": {
      "create": true,
      "name": "argo-workflow"
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--enabled"><a href="./values.yaml#L162">argo-workflows.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Argo Workflows</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef"><a href="./values.yaml#L164">argo-workflows.artifactRepositoryRef</a></td>
			<td>
object
</td>
			<td>Artifact repositories configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "artifact-repositories": {
    "annotations": {
      "workflows.argoproj.io/default-artifact-repository": "artifact-repository"
    },
    "artifact-repository": {
      "archiveLogs": false,
      "s3": {
        "accessKeySecret": {
          "key": "",
          "name": ""
        },
        "bucket": "argo",
        "endpoint": "",
        "insecure": true,
        "secretKeySecret": {
          "key": "",
          "name": ""
        }
      }
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories"><a href="./values.yaml#L166">argo-workflows.artifactRepositoryRef.artifact-repositories</a></td>
			<td>
object
</td>
			<td>This key will become the name of the ConfigMap containing the artifact repositories</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "annotations": {
    "workflows.argoproj.io/default-artifact-repository": "artifact-repository"
  },
  "artifact-repository": {
    "archiveLogs": false,
    "s3": {
      "accessKeySecret": {
        "key": "",
        "name": ""
      },
      "bucket": "argo",
      "endpoint": "",
      "insecure": true,
      "secretKeySecret": {
        "key": "",
        "name": ""
      }
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--annotations"><a href="./values.yaml#L168">argo-workflows.artifactRepositoryRef.artifact-repositories.annotations</a></td>
			<td>
object
</td>
			<td>Annotations to add to the artifact repositories ConfigMap</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "workflows.argoproj.io/default-artifact-repository": "artifact-repository"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository"><a href="./values.yaml#L172">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository</a></td>
			<td>
object
</td>
			<td>This key will become a key in the ConfigMap of the artifact repositories.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "archiveLogs": false,
  "s3": {
    "accessKeySecret": {
      "key": "",
      "name": ""
    },
    "bucket": "argo",
    "endpoint": "",
    "insecure": true,
    "secretKeySecret": {
      "key": "",
      "name": ""
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--archiveLogs"><a href="./values.yaml#L174">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.archiveLogs</a></td>
			<td>
bool
</td>
			<td>Archive the main container logs as an artifact</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3"><a href="./values.yaml#L176">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3</a></td>
			<td>
object
</td>
			<td>Store artifact in a S3-compliant object store</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessKeySecret": {
    "key": "",
    "name": ""
  },
  "bucket": "argo",
  "endpoint": "",
  "insecure": true,
  "secretKeySecret": {
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--accessKeySecret"><a href="./values.yaml#L178">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret</a></td>
			<td>
object
</td>
			<td>Reference to the secret containing your S3 accessKey for the Argo bucket</td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--accessKeySecret--key"><a href="./values.yaml#L180">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret.key</a></td>
			<td>
string
</td>
			<td>Key for the accesKey</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--accessKeySecret--name"><a href="./values.yaml#L182">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing your S3 accessKey for the Argo bucket</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--bucket"><a href="./values.yaml#L184">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.bucket</a></td>
			<td>
string
</td>
			<td>Name of your bucket for Argo</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--endpoint"><a href="./values.yaml#L186">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.endpoint</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--insecure"><a href="./values.yaml#L188">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.insecure</a></td>
			<td>
bool
</td>
			<td>Insecure will disable TLS. Primarily used for S3 installs not configured with TLS</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--secretKeySecret"><a href="./values.yaml#L190">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret</a></td>
			<td>
object
</td>
			<td>Reference to the secret containing your S3 secretKey for the Argo bucket</td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--secretKeySecret--key"><a href="./values.yaml#L192">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret.key</a></td>
			<td>
string
</td>
			<td>Key for the secretKey</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--secretKeySecret--name"><a href="./values.yaml#L194">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing your S3 secretKey for the Argo bucket</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller"><a href="./values.yaml#L196">argo-workflows.controller</a></td>
			<td>
object
</td>
			<td>Controller configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "configMap": {
    "create": true
  },
  "podSecurityContext": {
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "priorityClassName": "",
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
  "serviceAccount": {
    "name": "argo-workflow-controller"
  },
  "workflowDefaults": {
    "spec": {
      "serviceAccountName": "argo-workflow",
      "templateDefaults": {
        "container": {
          "resources": {
            "limits": {
              "cpu": "500m",
              "memory": "256Mi"
            },
            "requests": {
              "cpu": "100m",
              "memory": "128Mi"
            }
          }
        }
      }
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--configMap"><a href="./values.yaml#L198">argo-workflows.controller.configMap</a></td>
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
			<td id="argo-workflows--controller--configMap--create"><a href="./values.yaml#L200">argo-workflows.controller.configMap.create</a></td>
			<td>
bool
</td>
			<td>Create a ConfigMap for the controller</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--podSecurityContext"><a href="./values.yaml#L202">argo-workflows.controller.podSecurityContext</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L204">argo-workflows.controller.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext--seccompProfile"><a href="./values.yaml#L206">argo-workflows.controller.podSecurityContext.seccompProfile</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L208">argo-workflows.controller.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="argo-workflows--controller--priorityClassName"><a href="./values.yaml#L210">argo-workflows.controller.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the controller pod. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--securityContext"><a href="./values.yaml#L212">argo-workflows.controller.securityContext</a></td>
			<td>
object
</td>
			<td>Controller [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="argo-workflows--controller--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L214">argo-workflows.controller.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Controller container allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--securityContext--capabilities"><a href="./values.yaml#L216">argo-workflows.controller.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Controller container configure capabilities.</td>
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
			<td id="argo-workflows--controller--securityContext--capabilities--drop"><a href="./values.yaml#L218">argo-workflows.controller.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Controller container drop capabilities.</td>
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
			<td id="argo-workflows--controller--securityContext--runAsNonRoot"><a href="./values.yaml#L221">argo-workflows.controller.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Controller container allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--securityContext--seccompProfile"><a href="./values.yaml#L223">argo-workflows.controller.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Controller container configure seccompProfile.</td>
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
			<td id="argo-workflows--controller--securityContext--seccompProfile--type"><a href="./values.yaml#L225">argo-workflows.controller.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Controller container configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--serviceAccount"><a href="./values.yaml#L227">argo-workflows.controller.serviceAccount</a></td>
			<td>
object
</td>
			<td>Controller service account configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "name": "argo-workflow-controller"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--serviceAccount--name"><a href="./values.yaml#L229">argo-workflows.controller.serviceAccount.name</a></td>
			<td>
string
</td>
			<td>Controller service account name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-workflow-controller"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults"><a href="./values.yaml#L232">argo-workflows.controller.workflowDefaults</a></td>
			<td>
object
</td>
			<td>Default values that will apply to all Workflows from this controller, unless overridden on the Workflow-level.  See more: https://argo-workflows.readthedocs.io/en/stable/default-workflow-specs/</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "spec": {
    "serviceAccountName": "argo-workflow",
    "templateDefaults": {
      "container": {
        "resources": {
          "limits": {
            "cpu": "500m",
            "memory": "256Mi"
          },
          "requests": {
            "cpu": "100m",
            "memory": "128Mi"
          }
        }
      }
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults--spec"><a href="./values.yaml#L234">argo-workflows.controller.workflowDefaults.spec</a></td>
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
  "serviceAccountName": "argo-workflow",
  "templateDefaults": {
    "container": {
      "resources": {
        "limits": {
          "cpu": "500m",
          "memory": "256Mi"
        },
        "requests": {
          "cpu": "100m",
          "memory": "128Mi"
        }
      }
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults--spec--serviceAccountName"><a href="./values.yaml#L236">argo-workflows.controller.workflowDefaults.spec.serviceAccountName</a></td>
			<td>
string
</td>
			<td>Name of the service account that will be applied to all Workflows</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-workflow"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults--spec--templateDefaults"><a href="./values.yaml#L238">argo-workflows.controller.workflowDefaults.spec.templateDefaults</a></td>
			<td>
object
</td>
			<td>Default values that will apply to all templates in Workflows from this controller</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "container": {
    "resources": {
      "limits": {
        "cpu": "500m",
        "memory": "256Mi"
      },
      "requests": {
        "cpu": "100m",
        "memory": "128Mi"
      }
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults--spec--templateDefaults--container"><a href="./values.yaml#L240">argo-workflows.controller.workflowDefaults.spec.templateDefaults.container</a></td>
			<td>
object
</td>
			<td>Default container configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "resources": {
    "limits": {
      "cpu": "500m",
      "memory": "256Mi"
    },
    "requests": {
      "cpu": "100m",
      "memory": "128Mi"
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults--spec--templateDefaults--container--resources--limits"><a href="./values.yaml#L244">argo-workflows.controller.workflowDefaults.spec.templateDefaults.container.resources.limits</a></td>
			<td>
object
</td>
			<td>Resources limits</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "500m",
  "memory": "256Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults--spec--templateDefaults--container--resources--limits--cpu"><a href="./values.yaml#L246">argo-workflows.controller.workflowDefaults.spec.templateDefaults.container.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td>CPU limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"500m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults--spec--templateDefaults--container--resources--limits--memory"><a href="./values.yaml#L248">argo-workflows.controller.workflowDefaults.spec.templateDefaults.container.resources.limits.memory</a></td>
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
			<td id="argo-workflows--controller--workflowDefaults--spec--templateDefaults--container--resources--requests"><a href="./values.yaml#L250">argo-workflows.controller.workflowDefaults.spec.templateDefaults.container.resources.requests</a></td>
			<td>
object
</td>
			<td>Resources requests</td>
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
			<td id="argo-workflows--controller--workflowDefaults--spec--templateDefaults--container--resources--requests--cpu"><a href="./values.yaml#L252">argo-workflows.controller.workflowDefaults.spec.templateDefaults.container.resources.requests.cpu</a></td>
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
			<td id="argo-workflows--controller--workflowDefaults--spec--templateDefaults--container--resources--requests--memory"><a href="./values.yaml#L254">argo-workflows.controller.workflowDefaults.spec.templateDefaults.container.resources.requests.memory</a></td>
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
			<td id="argo-workflows--crds"><a href="./values.yaml#L256">argo-workflows.crds</a></td>
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
  "install": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--crds--install"><a href="./values.yaml#L258">argo-workflows.crds.install</a></td>
			<td>
bool
</td>
			<td>Enable/Disable crds installation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--executor"><a href="./values.yaml#L260">argo-workflows.executor</a></td>
			<td>
object
</td>
			<td>Executor configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "resources": {
    "limits": {
      "cpu": "500m",
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
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--executor--resources"><a href="./values.yaml#L262">argo-workflows.executor.resources</a></td>
			<td>
object
</td>
			<td>Resources configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": {
    "cpu": "500m",
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
			<td id="argo-workflows--executor--resources--limits"><a href="./values.yaml#L264">argo-workflows.executor.resources.limits</a></td>
			<td>
object
</td>
			<td>Resources limits</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "500m",
  "memory": "256Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--executor--resources--limits--cpu"><a href="./values.yaml#L266">argo-workflows.executor.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td>CPU limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"500m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--executor--resources--limits--memory"><a href="./values.yaml#L268">argo-workflows.executor.resources.limits.memory</a></td>
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
			<td id="argo-workflows--executor--resources--requests"><a href="./values.yaml#L270">argo-workflows.executor.resources.requests</a></td>
			<td>
object
</td>
			<td>Resources requests</td>
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
			<td id="argo-workflows--executor--resources--requests--cpu"><a href="./values.yaml#L272">argo-workflows.executor.resources.requests.cpu</a></td>
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
			<td id="argo-workflows--executor--resources--requests--memory"><a href="./values.yaml#L274">argo-workflows.executor.resources.requests.memory</a></td>
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
			<td id="argo-workflows--executor--securityContext"><a href="./values.yaml#L276">argo-workflows.executor.securityContext</a></td>
			<td>
object
</td>
			<td>sets security context for the wait and init containers created by the executor</td>
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
			<td id="argo-workflows--executor--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L278">argo-workflows.executor.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Executor containers allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--executor--securityContext--capabilities"><a href="./values.yaml#L280">argo-workflows.executor.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Executor containers configure capabilities.</td>
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
			<td id="argo-workflows--executor--securityContext--capabilities--drop"><a href="./values.yaml#L282">argo-workflows.executor.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Executor containers drop capabilities.</td>
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
			<td id="argo-workflows--executor--securityContext--runAsNonRoot"><a href="./values.yaml#L285">argo-workflows.executor.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Executor containers allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--executor--securityContext--seccompProfile"><a href="./values.yaml#L287">argo-workflows.executor.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Executor containers configure seccompProfile.</td>
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
			<td id="argo-workflows--executor--securityContext--seccompProfile--type"><a href="./values.yaml#L289">argo-workflows.executor.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Executor containers configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--server"><a href="./values.yaml#L291">argo-workflows.server</a></td>
			<td>
object
</td>
			<td>Argo Workflow server configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--server--enabled"><a href="./values.yaml#L293">argo-workflows.server.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Argo Workflow server</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--singleNamespace"><a href="./values.yaml#L295">argo-workflows.singleNamespace</a></td>
			<td>
bool
</td>
			<td>Restrict Argo to operate only in a single namespace</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--workflow"><a href="./values.yaml#L297">argo-workflows.workflow</a></td>
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
  "serviceAccount": {
    "create": true,
    "name": "argo-workflow"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--workflow--serviceAccount"><a href="./values.yaml#L299">argo-workflows.workflow.serviceAccount</a></td>
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
  "create": true,
  "name": "argo-workflow"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--workflow--serviceAccount--create"><a href="./values.yaml#L301">argo-workflows.workflow.serviceAccount.create</a></td>
			<td>
bool
</td>
			<td>Specifies whether a service account should be created</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--workflow--serviceAccount--name"><a href="./values.yaml#L303">argo-workflows.workflow.serviceAccount.name</a></td>
			<td>
string
</td>
			<td>Service account that is used to run workflows</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-workflow"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder"><a href="./values.yaml#L307">coder</a></td>
			<td>
object
</td>
			<td>Coder configuration.  For a complete list of all the Values, as well as the specific documentation, please check the [Coder ArtifactHub page](https://artifacthub.io/packages/helm/coder-v2/coder)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "coder": {
    "env": [
      {
        "name": "CODER_OAUTH2_GITHUB_DEFAULT_PROVIDER_ENABLE",
        "value": "false"
      },
      {
        "name": "CODER_PG_CONNECTION_URL",
        "valueFrom": {
          "secretKeyRef": {
            "key": "url",
            "name": ""
          }
        }
      },
      {
        "name": "CODER_TELEMETRY_ENABLE",
        "value": "false"
      }
    ],
    "image": {
      "tag": "v2.26.1"
    },
    "ingress": {
      "enable": false
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
      "httpNodePort": "30170",
      "type": "NodePort"
    }
  },
  "email": "",
  "enabled": true,
  "existingSecrets": {
    "adminUserExistingSecret": {
      "emailKey": "",
      "passwordKey": "",
      "secretName": "",
      "usernameKey": ""
    },
    "existingPostgresConnectionUrlSecret": {
      "enabled": false
    }
  },
  "password": "",
  "template": {
    "customTemplates": [
      {
        "extraLabels": {},
        "extraVars": [
          {
            "name": "GF_ANALYTICS_CHECK_FOR_UPDATES",
            "value": false
          },
          {
            "name": "GF_ANALYTICS_REPORTING_ENABLED",
            "value": false
          },
          {
            "name": "GF_PLUGINS_CHECK_FOR_PLUGIN_UPDATES",
            "value": false
          }
        ],
        "iconUrl": "https://cdn.iconscout.com/icon/free/png-256/free-grafana-logo-icon-download-in-svg-png-gif-file-formats--technology-social-media-company-vol-3-pack-logos-icons-3030088.png?f=webp",
        "image": "smartcommunitylab/grafana",
        "name": "grafana",
        "nodePort": "30130",
        "stopAfter": "0h"
      },
      {
        "extraLabels": {},
        "extraVars": [],
        "iconUrl": "https://cdn-icons-png.flaticon.com/512/7301/7301969.png",
        "name": "code-toolbox",
        "nodePort": "30050",
        "privileged": false,
        "stopAfter": "8h",
        "tolerations": []
      },
      {
        "extraLabels": {},
        "extraVars": [],
        "iconUrl": "https://cdn-images-1.medium.com/max/1200/1*2nGovT9tEnQva8NWfHLZxg.png",
        "image": "dremio/dremio-oss:24.2",
        "name": "dremio",
        "nodePort": "30120",
        "postgres": {
          "database": "digitalhub",
          "hostname": "",
          "ownerCredsSecret": {
            "passwordKey": "",
            "secretName": "",
            "usernameKey": ""
          }
        },
        "stopAfter": "0h"
      },
      {
        "extraLabels": {},
        "extraVars": [],
        "iconUrl": "https://i.ibb.co/TrBDsZM/sqlpad.png",
        "image": "ghcr.io/scc-digitalhub/digitalhub/images/sqlpad:7.5.3",
        "name": "sqlpad",
        "nodePort": "30140",
        "postgres": {
          "database": "digitalhub",
          "hostname": "",
          "ownerCredsSecret": {
            "passwordKey": "",
            "secretName": "",
            "usernameKey": ""
          }
        },
        "stopAfter": "8h"
      }
    ],
    "upgrade": {
      "enabled": false,
      "token": ""
    }
  },
  "username": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--enabled"><a href="./values.yaml#L309">coder.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Coder</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder"><a href="./values.yaml#L311">coder.coder</a></td>
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
  "env": [
    {
      "name": "CODER_OAUTH2_GITHUB_DEFAULT_PROVIDER_ENABLE",
      "value": "false"
    },
    {
      "name": "CODER_PG_CONNECTION_URL",
      "valueFrom": {
        "secretKeyRef": {
          "key": "url",
          "name": ""
        }
      }
    },
    {
      "name": "CODER_TELEMETRY_ENABLE",
      "value": "false"
    }
  ],
  "image": {
    "tag": "v2.26.1"
  },
  "ingress": {
    "enable": false
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
    "httpNodePort": "30170",
    "type": "NodePort"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--env"><a href="./values.yaml#L313">coder.coder.env</a></td>
			<td>
list
</td>
			<td>Additional environment variables for Coder</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "name": "CODER_OAUTH2_GITHUB_DEFAULT_PROVIDER_ENABLE",
    "value": "false"
  },
  {
    "name": "CODER_PG_CONNECTION_URL",
    "valueFrom": {
      "secretKeyRef": {
        "key": "url",
        "name": ""
      }
    }
  },
  {
    "name": "CODER_TELEMETRY_ENABLE",
    "value": "false"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--image"><a href="./values.yaml#L328">coder.coder.image</a></td>
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
  "tag": "v2.26.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--image--tag"><a href="./values.yaml#L330">coder.coder.image.tag</a></td>
			<td>
string
</td>
			<td>Coder image tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"v2.26.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--ingress"><a href="./values.yaml#L332">coder.coder.ingress</a></td>
			<td>
object
</td>
			<td>Coder ingress configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enable": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--ingress--enable"><a href="./values.yaml#L334">coder.coder.ingress.enable</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Coder ingress</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--securityContext"><a href="./values.yaml#L336">coder.coder.securityContext</a></td>
			<td>
object
</td>
			<td>Coder [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="coder--coder--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L338">coder.coder.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Coder container allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--securityContext--capabilities"><a href="./values.yaml#L340">coder.coder.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Coder container configure capabilities.</td>
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
			<td id="coder--coder--securityContext--capabilities--drop"><a href="./values.yaml#L342">coder.coder.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Coder container drop capabilities.</td>
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
			<td id="coder--coder--securityContext--runAsNonRoot"><a href="./values.yaml#L345">coder.coder.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Coder container allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--securityContext--seccompProfile"><a href="./values.yaml#L347">coder.coder.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Coder container configure seccompProfile.</td>
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
			<td id="coder--coder--securityContext--seccompProfile--type"><a href="./values.yaml#L349">coder.coder.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Coder container configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--service"><a href="./values.yaml#L351">coder.coder.service</a></td>
			<td>
object
</td>
			<td>Service configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "httpNodePort": "30170",
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--service--httpNodePort"><a href="./values.yaml#L353">coder.coder.service.httpNodePort</a></td>
			<td>
string
</td>
			<td>Service NodePort</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"30170"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--service--type"><a href="./values.yaml#L355">coder.coder.service.type</a></td>
			<td>
string
</td>
			<td>Service type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"NodePort"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--email"><a href="./values.yaml#L357">coder.email</a></td>
			<td>
string
</td>
			<td>Coder admin email</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--existingSecrets"><a href="./values.yaml#L359">coder.existingSecrets</a></td>
			<td>
object
</td>
			<td>Coder existing secrets configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "adminUserExistingSecret": {
    "emailKey": "",
    "passwordKey": "",
    "secretName": "",
    "usernameKey": ""
  },
  "existingPostgresConnectionUrlSecret": {
    "enabled": false
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--existingSecrets--adminUserExistingSecret"><a href="./values.yaml#L361">coder.existingSecrets.adminUserExistingSecret</a></td>
			<td>
object
</td>
			<td>Existing secret containing Coder's admin username, password and email</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "emailKey": "",
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
			<td id="coder--existingSecrets--adminUserExistingSecret--emailKey"><a href="./values.yaml#L363">coder.existingSecrets.adminUserExistingSecret.emailKey</a></td>
			<td>
string
</td>
			<td>Email key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--existingSecrets--adminUserExistingSecret--passwordKey"><a href="./values.yaml#L365">coder.existingSecrets.adminUserExistingSecret.passwordKey</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret--secretName"><a href="./values.yaml#L367">coder.existingSecrets.adminUserExistingSecret.secretName</a></td>
			<td>
string
</td>
			<td>Name of the secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--existingSecrets--adminUserExistingSecret--usernameKey"><a href="./values.yaml#L369">coder.existingSecrets.adminUserExistingSecret.usernameKey</a></td>
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
			<td id="coder--existingSecrets--existingPostgresConnectionUrlSecret"><a href="./values.yaml#L371">coder.existingSecrets.existingPostgresConnectionUrlSecret</a></td>
			<td>
object
</td>
			<td>Existing postgres connection secret configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--existingSecrets--existingPostgresConnectionUrlSecret--enabled"><a href="./values.yaml#L374">coder.existingSecrets.existingPostgresConnectionUrlSecret.enabled</a></td>
			<td>
bool
</td>
			<td>Set this to true if you have an existing secret with the connection url of the Coder postgres database.  To configure the secret, configure the variable CODER_PG_CONNECTION_URL in coder.coder.env</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--password"><a href="./values.yaml#L376">coder.password</a></td>
			<td>
string
</td>
			<td>Coder admin password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--template"><a href="./values.yaml#L378">coder.template</a></td>
			<td>
object
</td>
			<td>Coder Templates configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "customTemplates": [
    {
      "extraLabels": {},
      "extraVars": [
        {
          "name": "GF_ANALYTICS_CHECK_FOR_UPDATES",
          "value": false
        },
        {
          "name": "GF_ANALYTICS_REPORTING_ENABLED",
          "value": false
        },
        {
          "name": "GF_PLUGINS_CHECK_FOR_PLUGIN_UPDATES",
          "value": false
        }
      ],
      "iconUrl": "https://cdn.iconscout.com/icon/free/png-256/free-grafana-logo-icon-download-in-svg-png-gif-file-formats--technology-social-media-company-vol-3-pack-logos-icons-3030088.png?f=webp",
      "image": "smartcommunitylab/grafana",
      "name": "grafana",
      "nodePort": "30130",
      "stopAfter": "0h"
    },
    {
      "extraLabels": {},
      "extraVars": [],
      "iconUrl": "https://cdn-icons-png.flaticon.com/512/7301/7301969.png",
      "name": "code-toolbox",
      "nodePort": "30050",
      "privileged": false,
      "stopAfter": "8h",
      "tolerations": []
    },
    {
      "extraLabels": {},
      "extraVars": [],
      "iconUrl": "https://cdn-images-1.medium.com/max/1200/1*2nGovT9tEnQva8NWfHLZxg.png",
      "image": "dremio/dremio-oss:24.2",
      "name": "dremio",
      "nodePort": "30120",
      "postgres": {
        "database": "digitalhub",
        "hostname": "",
        "ownerCredsSecret": {
          "passwordKey": "",
          "secretName": "",
          "usernameKey": ""
        }
      },
      "stopAfter": "0h"
    },
    {
      "extraLabels": {},
      "extraVars": [],
      "iconUrl": "https://i.ibb.co/TrBDsZM/sqlpad.png",
      "image": "ghcr.io/scc-digitalhub/digitalhub/images/sqlpad:7.5.3",
      "name": "sqlpad",
      "nodePort": "30140",
      "postgres": {
        "database": "digitalhub",
        "hostname": "",
        "ownerCredsSecret": {
          "passwordKey": "",
          "secretName": "",
          "usernameKey": ""
        }
      },
      "stopAfter": "8h"
    }
  ],
  "upgrade": {
    "enabled": false,
    "token": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--template--customTemplates"><a href="./values.yaml#L383">coder.template.customTemplates</a></td>
			<td>
list
</td>
			<td>Coder custom templates configuration, specify your templates in list format.  For every template you can pass the container images, icon, name, nodePort and extraVariables that you can pass to the containers.  For Code-Toolbox, you can also pass the Tolerations in order to use the GPU resources.  Use the stopAfter value to stop every workspace after a certain amount of time.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "extraLabels": {},
    "extraVars": [
      {
        "name": "GF_ANALYTICS_CHECK_FOR_UPDATES",
        "value": false
      },
      {
        "name": "GF_ANALYTICS_REPORTING_ENABLED",
        "value": false
      },
      {
        "name": "GF_PLUGINS_CHECK_FOR_PLUGIN_UPDATES",
        "value": false
      }
    ],
    "iconUrl": "https://cdn.iconscout.com/icon/free/png-256/free-grafana-logo-icon-download-in-svg-png-gif-file-formats--technology-social-media-company-vol-3-pack-logos-icons-3030088.png?f=webp",
    "image": "smartcommunitylab/grafana",
    "name": "grafana",
    "nodePort": "30130",
    "stopAfter": "0h"
  },
  {
    "extraLabels": {},
    "extraVars": [],
    "iconUrl": "https://cdn-icons-png.flaticon.com/512/7301/7301969.png",
    "name": "code-toolbox",
    "nodePort": "30050",
    "privileged": false,
    "stopAfter": "8h",
    "tolerations": []
  },
  {
    "extraLabels": {},
    "extraVars": [],
    "iconUrl": "https://cdn-images-1.medium.com/max/1200/1*2nGovT9tEnQva8NWfHLZxg.png",
    "image": "dremio/dremio-oss:24.2",
    "name": "dremio",
    "nodePort": "30120",
    "postgres": {
      "database": "digitalhub",
      "hostname": "",
      "ownerCredsSecret": {
        "passwordKey": "",
        "secretName": "",
        "usernameKey": ""
      }
    },
    "stopAfter": "0h"
  },
  {
    "extraLabels": {},
    "extraVars": [],
    "iconUrl": "https://i.ibb.co/TrBDsZM/sqlpad.png",
    "image": "ghcr.io/scc-digitalhub/digitalhub/images/sqlpad:7.5.3",
    "name": "sqlpad",
    "nodePort": "30140",
    "postgres": {
      "database": "digitalhub",
      "hostname": "",
      "ownerCredsSecret": {
        "passwordKey": "",
        "secretName": "",
        "usernameKey": ""
      }
    },
    "stopAfter": "8h"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--template--upgrade"><a href="./values.yaml#L446">coder.template.upgrade</a></td>
			<td>
object
</td>
			<td>Coder templates upgrade process configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "token": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--template--upgrade--enabled"><a href="./values.yaml#L448">coder.template.upgrade.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable the upgrade job for the Coder templates</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--template--upgrade--token"><a href="./values.yaml#L451">coder.template.upgrade.token</a></td>
			<td>
string
</td>
			<td>A token that will grant you permission to edit the templates of your instance.  Must be generated in Coder with the admin account.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--username"><a href="./values.yaml#L453">coder.username</a></td>
			<td>
string
</td>
			<td>Username of the Coder admin user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core"><a href="./values.yaml#L456">core</a></td>
			<td>
object
</td>
			<td>Core configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "additionalConfig": {
    "debug": {
      "enableLogs": true,
      "enableMetrics": false
    },
    "resources": {
      "cpuLim": "",
      "cpuReq": "100m",
      "gpuKey": "nvidia.com/gpu",
      "memLim": "",
      "memReq": "256Mi",
      "pvcLim": "",
      "pvcReq": "2Gi"
    },
    "security": {
      "disableRoot": true
    }
  },
  "argoWorkflow": {
    "configmap": "artifact-repositories",
    "key": "artifact-repository",
    "serviceAccount": "argo-workflow",
    "user": "8877"
  },
  "authentication": {
    "basic": {
      "enabled": true,
      "password": "",
      "username": ""
    },
    "openId": {
      "enabled": false
    }
  },
  "commonCredsSecret": {
    "secretName": "",
    "useExistingCommonCredsSecret": false
  },
  "coreAuthCreds": {
    "clientId": "",
    "clientSecret": "",
    "existingSecret": {
      "clientIdKey": "",
      "clientSecretKey": "",
      "secretName": ""
    }
  },
  "databaseProvider": {
    "database": "digitalhub",
    "host": "",
    "ownerSecret": "",
    "port": "5432"
  },
  "enabled": true,
  "kanikoArgs": "",
  "kubeai": {
    "enabled": true,
    "port": "80",
    "serviceName": "kubeai"
  },
  "lucene": {
    "indexPath": "/lucene/",
    "persistence": {
      "accessMode": "ReadWriteOnce",
      "enabled": true,
      "size": "10Gi",
      "storageClass": ""
    },
    "reindex": "always"
  },
  "postgres": {
    "credentials": {
      "existingSecret": {
        "name": "",
        "passwordKey": "",
        "usernameKey": ""
      },
      "password": "",
      "username": ""
    },
    "database": "core",
    "host": "",
    "port": "5432",
    "schema": "public"
  },
  "priorityClassName": "",
  "s3": {
    "accessKey": "",
    "bucket": "datalake",
    "dynamicCreds": {
      "enabled": false
    },
    "enabled": true,
    "endpoint": "",
    "existingSecret": {
      "accessKeyKey": "",
      "name": "",
      "secretKeyKey": ""
    },
    "port": "",
    "protocol": "http",
    "publicUrl": "",
    "region": "us-east-1",
    "secretKey": ""
  },
  "service": {
    "httpNodePort": "30180",
    "port": "8080",
    "type": "NodePort"
  },
  "solr": {
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
      "name": "dhcore"
    },
    "enabled": false,
    "url": "http://digitalhub-solrcloud-common/solr"
  },
  "sts": {
    "client": {
      "clientId": "",
      "clientSecret": ""
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
    "jwt": {
      "issuerUri": "http://digitalhub-core:8080"
    },
    "priorityClassName": "",
    "stsDb": {
      "credentials": {
        "existingSecret": {
          "name": "",
          "passwordKey": "",
          "usernameKey": ""
        }
      },
      "database": "sts",
      "driver": "org.postgresql.Driver",
      "host": "",
      "platform": "postgresql",
      "port": "5432",
      "schema": "public"
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--enabled"><a href="./values.yaml#L458">core.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Core</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig"><a href="./values.yaml#L460">core.additionalConfig</a></td>
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
  "debug": {
    "enableLogs": true,
    "enableMetrics": false
  },
  "resources": {
    "cpuLim": "",
    "cpuReq": "100m",
    "gpuKey": "nvidia.com/gpu",
    "memLim": "",
    "memReq": "256Mi",
    "pvcLim": "",
    "pvcReq": "2Gi"
  },
  "security": {
    "disableRoot": true
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--debug"><a href="./values.yaml#L462">core.additionalConfig.debug</a></td>
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
			<td id="core--additionalConfig--debug--enableLogs"><a href="./values.yaml#L464">core.additionalConfig.debug.enableLogs</a></td>
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
			<td id="core--additionalConfig--debug--enableMetrics"><a href="./values.yaml#L466">core.additionalConfig.debug.enableMetrics</a></td>
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
			<td id="core--additionalConfig--resources"><a href="./values.yaml#L468">core.additionalConfig.resources</a></td>
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
  "cpuReq": "100m",
  "gpuKey": "nvidia.com/gpu",
  "memLim": "",
  "memReq": "256Mi",
  "pvcLim": "",
  "pvcReq": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--resources--cpuLim"><a href="./values.yaml#L470">core.additionalConfig.resources.cpuLim</a></td>
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
			<td id="core--additionalConfig--resources--cpuReq"><a href="./values.yaml#L472">core.additionalConfig.resources.cpuReq</a></td>
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
			<td id="core--additionalConfig--resources--gpuKey"><a href="./values.yaml#L474">core.additionalConfig.resources.gpuKey</a></td>
			<td>
string
</td>
			<td>GPU key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"nvidia.com/gpu"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--resources--memLim"><a href="./values.yaml#L476">core.additionalConfig.resources.memLim</a></td>
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
			<td id="core--additionalConfig--resources--memReq"><a href="./values.yaml#L478">core.additionalConfig.resources.memReq</a></td>
			<td>
string
</td>
			<td>Memory request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"256Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--resources--pvcLim"><a href="./values.yaml#L480">core.additionalConfig.resources.pvcLim</a></td>
			<td>
string
</td>
			<td>PVC storage limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--resources--pvcReq"><a href="./values.yaml#L482">core.additionalConfig.resources.pvcReq</a></td>
			<td>
string
</td>
			<td>PVC storage request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--security"><a href="./values.yaml#L484">core.additionalConfig.security</a></td>
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
			<td id="core--additionalConfig--security--disableRoot"><a href="./values.yaml#L486">core.additionalConfig.security.disableRoot</a></td>
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
			<td id="core--argoWorkflow"><a href="./values.yaml#L488">core.argoWorkflow</a></td>
			<td>
object
</td>
			<td>Core Argoworkflow configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "configmap": "artifact-repositories",
  "key": "artifact-repository",
  "serviceAccount": "argo-workflow",
  "user": "8877"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--argoWorkflow--configmap"><a href="./values.yaml#L490">core.argoWorkflow.configmap</a></td>
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
			<td id="core--argoWorkflow--key"><a href="./values.yaml#L492">core.argoWorkflow.key</a></td>
			<td>
string
</td>
			<td>Key of the artifact repository in the configmap</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"artifact-repository"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--argoWorkflow--serviceAccount"><a href="./values.yaml#L494">core.argoWorkflow.serviceAccount</a></td>
			<td>
string
</td>
			<td>Service account name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-workflow"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--argoWorkflow--user"><a href="./values.yaml#L496">core.argoWorkflow.user</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8877"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--authentication"><a href="./values.yaml#L498">core.authentication</a></td>
			<td>
object
</td>
			<td>Core authentication configuration</td>
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
    "enabled": false
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--authentication--openId"><a href="./values.yaml#L508">core.authentication.openId</a></td>
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
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--authentication--openId--enabled"><a href="./values.yaml#L510">core.authentication.openId.enabled</a></td>
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
			<td id="core--commonCredsSecret"><a href="./values.yaml#L518">core.commonCredsSecret</a></td>
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
  "secretName": "",
  "useExistingCommonCredsSecret": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--commonCredsSecret--useExistingCommonCredsSecret"><a href="./values.yaml#L522">core.commonCredsSecret.useExistingCommonCredsSecret</a></td>
			<td>
bool
</td>
			<td>Set this to true if you are using an existing secret.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--coreAuthCreds"><a href="./values.yaml#L524">core.coreAuthCreds</a></td>
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
			<td id="core--coreAuthCreds--clientId"><a href="./values.yaml#L526">core.coreAuthCreds.clientId</a></td>
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
			<td id="core--coreAuthCreds--clientSecret"><a href="./values.yaml#L528">core.coreAuthCreds.clientSecret</a></td>
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
			<td id="core--coreAuthCreds--existingSecret"><a href="./values.yaml#L530">core.coreAuthCreds.existingSecret</a></td>
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
			<td id="core--coreAuthCreds--existingSecret--clientIdKey"><a href="./values.yaml#L532">core.coreAuthCreds.existingSecret.clientIdKey</a></td>
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
			<td id="core--coreAuthCreds--existingSecret--clientSecretKey"><a href="./values.yaml#L534">core.coreAuthCreds.existingSecret.clientSecretKey</a></td>
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
			<td id="core--coreAuthCreds--existingSecret--secretName"><a href="./values.yaml#L536">core.coreAuthCreds.existingSecret.secretName</a></td>
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
			<td id="core--databaseProvider"><a href="./values.yaml#L538">core.databaseProvider</a></td>
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
  "database": "digitalhub",
  "host": "",
  "ownerSecret": "",
  "port": "5432"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider--database"><a href="./values.yaml#L540">core.databaseProvider.database</a></td>
			<td>
string
</td>
			<td>Name of the main database of the platform</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider--host"><a href="./values.yaml#L542">core.databaseProvider.host</a></td>
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
			<td id="core--databaseProvider--ownerSecret"><a href="./values.yaml#L544">core.databaseProvider.ownerSecret</a></td>
			<td>
string
</td>
			<td>Secret of the main database of the platform containing the owner user credentials</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider--port"><a href="./values.yaml#L546">core.databaseProvider.port</a></td>
			<td>
string
</td>
			<td>Port of the main database of the platform</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"5432"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--kanikoArgs"><a href="./values.yaml#L548">core.kanikoArgs</a></td>
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
			<td id="core--kubeai"><a href="./values.yaml#L550">core.kubeai</a></td>
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
  "port": "80",
  "serviceName": "kubeai"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--kubeai--enabled"><a href="./values.yaml#L552">core.kubeai.enabled</a></td>
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
			<td id="core--kubeai--port"><a href="./values.yaml#L554">core.kubeai.port</a></td>
			<td>
string
</td>
			<td>KubeAi port</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"80"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--kubeai--serviceName"><a href="./values.yaml#L556">core.kubeai.serviceName</a></td>
			<td>
string
</td>
			<td>Kubei service name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"kubeai"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--lucene"><a href="./values.yaml#L558">core.lucene</a></td>
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
			<td id="core--lucene--indexPath"><a href="./values.yaml#L560">core.lucene.indexPath</a></td>
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
			<td id="core--lucene--persistence"><a href="./values.yaml#L562">core.lucene.persistence</a></td>
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
			<td id="core--lucene--persistence--enabled"><a href="./values.yaml#L564">core.lucene.persistence.enabled</a></td>
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
			<td id="core--lucene--persistence--accessMode"><a href="./values.yaml#L566">core.lucene.persistence.accessMode</a></td>
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
			<td id="core--lucene--persistence--size"><a href="./values.yaml#L568">core.lucene.persistence.size</a></td>
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
			<td id="core--lucene--persistence--storageClass"><a href="./values.yaml#L570">core.lucene.persistence.storageClass</a></td>
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
			<td id="core--lucene--reindex"><a href="./values.yaml#L572">core.lucene.reindex</a></td>
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
			<td id="core--postgres"><a href="./values.yaml#L574">core.postgres</a></td>
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
      "passwordKey": "",
      "usernameKey": ""
    },
    "password": "",
    "username": ""
  },
  "database": "core",
  "host": "",
  "port": "5432",
  "schema": "public"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials"><a href="./values.yaml#L576">core.postgres.credentials</a></td>
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
			<td id="core--postgres--credentials--existingSecret"><a href="./values.yaml#L578">core.postgres.credentials.existingSecret</a></td>
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
  "passwordKey": "",
  "usernameKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--existingSecret--name"><a href="./values.yaml#L580">core.postgres.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Secret containing the Core database admin user credentials</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--existingSecret--passwordKey"><a href="./values.yaml#L582">core.postgres.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Core db user password key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--existingSecret--usernameKey"><a href="./values.yaml#L584">core.postgres.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Core db user username key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--password"><a href="./values.yaml#L586">core.postgres.credentials.password</a></td>
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
			<td id="core--postgres--credentials--username"><a href="./values.yaml#L588">core.postgres.credentials.username</a></td>
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
			<td id="core--postgres--database"><a href="./values.yaml#L590">core.postgres.database</a></td>
			<td>
string
</td>
			<td>Name of the Core database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"core"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--host"><a href="./values.yaml#L592">core.postgres.host</a></td>
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
			<td id="core--postgres--port"><a href="./values.yaml#L594">core.postgres.port</a></td>
			<td>
string
</td>
			<td>Port of the Core database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"5432"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--schema"><a href="./values.yaml#L596">core.postgres.schema</a></td>
			<td>
string
</td>
			<td>Schema of the Core database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"public"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--priorityClassName"><a href="./values.yaml#L598">core.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the core pods. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3"><a href="./values.yaml#L600">core.s3</a></td>
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
  "accessKey": "",
  "bucket": "datalake",
  "dynamicCreds": {
    "enabled": false
  },
  "enabled": true,
  "endpoint": "",
  "existingSecret": {
    "accessKeyKey": "",
    "name": "",
    "secretKeyKey": ""
  },
  "port": "",
  "protocol": "http",
  "publicUrl": "",
  "region": "us-east-1",
  "secretKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--accessKey"><a href="./values.yaml#L605">core.s3.accessKey</a></td>
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
			<td id="core--s3--bucket"><a href="./values.yaml#L607">core.s3.bucket</a></td>
			<td>
string
</td>
			<td>Bucket of your S3 instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"datalake"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--dynamicCreds"><a href="./values.yaml#L609">core.s3.dynamicCreds</a></td>
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
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--dynamicCreds--enabled"><a href="./values.yaml#L611">core.s3.dynamicCreds.enabled</a></td>
			<td>
bool
</td>
			<td>Set this to true if you want to use dynamic credentials for S3 communication</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--endpoint"><a href="./values.yaml#L613">core.s3.endpoint</a></td>
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
			<td id="core--s3--existingSecret"><a href="./values.yaml#L616">core.s3.existingSecret</a></td>
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
			<td id="core--s3--existingSecret--accessKeyKey"><a href="./values.yaml#L618">core.s3.existingSecret.accessKeyKey</a></td>
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
			<td id="core--s3--existingSecret--name"><a href="./values.yaml#L620">core.s3.existingSecret.name</a></td>
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
			<td id="core--s3--existingSecret--secretKeyKey"><a href="./values.yaml#L622">core.s3.existingSecret.secretKeyKey</a></td>
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
			<td id="core--s3--port"><a href="./values.yaml#L624">core.s3.port</a></td>
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
			<td id="core--s3--protocol"><a href="./values.yaml#L626">core.s3.protocol</a></td>
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
			<td id="core--s3--publicUrl"><a href="./values.yaml#L628">core.s3.publicUrl</a></td>
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
			<td id="core--s3--region"><a href="./values.yaml#L630">core.s3.region</a></td>
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
			<td id="core--s3--secretKey"><a href="./values.yaml#L633">core.s3.secretKey</a></td>
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
			<td id="core--service"><a href="./values.yaml#L635">core.service</a></td>
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
  "httpNodePort": "30180",
  "port": "8080",
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--service--httpNodePort"><a href="./values.yaml#L637">core.service.httpNodePort</a></td>
			<td>
string
</td>
			<td>Service NodePort.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"30180"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--service--port"><a href="./values.yaml#L639">core.service.port</a></td>
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
			<td id="core--service--type"><a href="./values.yaml#L641">core.service.type</a></td>
			<td>
string
</td>
			<td>Service type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"NodePort"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr"><a href="./values.yaml#L643">core.solr</a></td>
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
    "name": "dhcore"
  },
  "enabled": false,
  "url": "http://digitalhub-solrcloud-common/solr"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--enabled"><a href="./values.yaml#L645">core.solr.enabled</a></td>
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
			<td id="core--solr--basicAuth"><a href="./values.yaml#L647">core.solr.basicAuth</a></td>
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
			<td id="core--solr--basicAuth--enabled"><a href="./values.yaml#L649">core.solr.basicAuth.enabled</a></td>
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
			<td id="core--solr--basicAuth--credentials--existingSecrets"><a href="./values.yaml#L653">core.solr.basicAuth.credentials.existingSecrets</a></td>
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
			<td id="core--solr--basicAuth--credentials--existingSecrets--admin"><a href="./values.yaml#L655">core.solr.basicAuth.credentials.existingSecrets.admin</a></td>
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
			<td id="core--solr--basicAuth--credentials--existingSecrets--admin--passwordKey"><a href="./values.yaml#L657">core.solr.basicAuth.credentials.existingSecrets.admin.passwordKey</a></td>
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
			<td id="core--solr--basicAuth--credentials--existingSecrets--admin--secretName"><a href="./values.yaml#L659">core.solr.basicAuth.credentials.existingSecrets.admin.secretName</a></td>
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
			<td id="core--solr--basicAuth--credentials--existingSecrets--admin--usernameKey"><a href="./values.yaml#L661">core.solr.basicAuth.credentials.existingSecrets.admin.usernameKey</a></td>
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
			<td id="core--solr--basicAuth--credentials--existingSecrets--user"><a href="./values.yaml#L663">core.solr.basicAuth.credentials.existingSecrets.user</a></td>
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
			<td id="core--solr--basicAuth--credentials--existingSecrets--user--passwordKey"><a href="./values.yaml#L665">core.solr.basicAuth.credentials.existingSecrets.user.passwordKey</a></td>
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
			<td id="core--solr--basicAuth--credentials--existingSecrets--user--secretName"><a href="./values.yaml#L667">core.solr.basicAuth.credentials.existingSecrets.user.secretName</a></td>
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
			<td id="core--solr--basicAuth--credentials--existingSecrets--user--usernameKey"><a href="./values.yaml#L669">core.solr.basicAuth.credentials.existingSecrets.user.usernameKey</a></td>
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
			<td id="core--solr--collection"><a href="./values.yaml#L671">core.solr.collection</a></td>
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
  "name": "dhcore"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--name"><a href="./values.yaml#L673">core.solr.collection.name</a></td>
			<td>
string
</td>
			<td>Name of the Solr collection</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"dhcore"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--url"><a href="./values.yaml#L675">core.solr.url</a></td>
			<td>
string
</td>
			<td>URL of your Solr instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http://digitalhub-solrcloud-common/solr"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts"><a href="./values.yaml#L677">core.sts</a></td>
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
  "client": {
    "clientId": "",
    "clientSecret": ""
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
  "jwt": {
    "issuerUri": "http://digitalhub-core:8080"
  },
  "priorityClassName": "",
  "stsDb": {
    "credentials": {
      "existingSecret": {
        "name": "",
        "passwordKey": "",
        "usernameKey": ""
      }
    },
    "database": "sts",
    "driver": "org.postgresql.Driver",
    "host": "",
    "platform": "postgresql",
    "port": "5432",
    "schema": "public"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--enabled"><a href="./values.yaml#L679">core.sts.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable STS component for dynamic credentials (Both for Postgres and S3 operations)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--client"><a href="./values.yaml#L681">core.sts.client</a></td>
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
  "clientSecret": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--client--clientId"><a href="./values.yaml#L683">core.sts.client.clientId</a></td>
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
			<td id="core--sts--client--clientSecret"><a href="./values.yaml#L685">core.sts.client.clientSecret</a></td>
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
			<td id="core--sts--credentials"><a href="./values.yaml#L687">core.sts.credentials</a></td>
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
			<td id="core--sts--credentials--roles"><a href="./values.yaml#L690">core.sts.credentials.roles</a></td>
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
			<td id="core--sts--databaseProvider"><a href="./values.yaml#L692">core.sts.databaseProvider</a></td>
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
			<td id="core--sts--databaseProvider--enabled"><a href="./values.yaml#L694">core.sts.databaseProvider.enabled</a></td>
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
			<td id="core--sts--databaseProvider--credentials"><a href="./values.yaml#L696">core.sts.databaseProvider.credentials</a></td>
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
			<td id="core--sts--databaseProvider--credentials--existingSecret"><a href="./values.yaml#L699">core.sts.databaseProvider.credentials.existingSecret</a></td>
			<td>
object
</td>
			<td>Reference to the secret containing username and password of the Platform's main database admin user.  These values have higher priority than the explicit declarations.</td>
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
			<td id="core--sts--databaseProvider--credentials--existingSecret--name"><a href="./values.yaml#L701">core.sts.databaseProvider.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing username and password of the Platform's main database admin user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--databaseProvider--credentials--existingSecret--passwordKey"><a href="./values.yaml#L703">core.sts.databaseProvider.credentials.existingSecret.passwordKey</a></td>
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
			<td id="core--sts--databaseProvider--credentials--existingSecret--usernameKey"><a href="./values.yaml#L705">core.sts.databaseProvider.credentials.existingSecret.usernameKey</a></td>
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
			<td id="core--sts--databaseProvider--credentials--password"><a href="./values.yaml#L708">core.sts.databaseProvider.credentials.password</a></td>
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
			<td id="core--sts--databaseProvider--credentials--username"><a href="./values.yaml#L711">core.sts.databaseProvider.credentials.username</a></td>
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
			<td id="core--sts--jwt"><a href="./values.yaml#L713">core.sts.jwt</a></td>
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
  "issuerUri": "http://digitalhub-core:8080"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--jwt--issuerUri"><a href="./values.yaml#L715">core.sts.jwt.issuerUri</a></td>
			<td>
string
</td>
			<td>URL of the JWT issuer, set this to your Core endpoint.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http://digitalhub-core:8080"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--priorityClassName"><a href="./values.yaml#L717">core.sts.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the STS pod. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb"><a href="./values.yaml#L719">core.sts.stsDb</a></td>
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
    }
  },
  "database": "sts",
  "driver": "org.postgresql.Driver",
  "host": "",
  "platform": "postgresql",
  "port": "5432",
  "schema": "public"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--credentials"><a href="./values.yaml#L721">core.sts.stsDb.credentials</a></td>
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
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--credentials--existingSecret"><a href="./values.yaml#L724">core.sts.stsDb.credentials.existingSecret</a></td>
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
			<td id="core--sts--stsDb--credentials--existingSecret--name"><a href="./values.yaml#L726">core.sts.stsDb.credentials.existingSecret.name</a></td>
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
			<td id="core--sts--stsDb--credentials--existingSecret--passwordKey"><a href="./values.yaml#L728">core.sts.stsDb.credentials.existingSecret.passwordKey</a></td>
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
			<td id="core--sts--stsDb--credentials--existingSecret--usernameKey"><a href="./values.yaml#L730">core.sts.stsDb.credentials.existingSecret.usernameKey</a></td>
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
			<td id="core--sts--stsDb--database"><a href="./values.yaml#L732">core.sts.stsDb.database</a></td>
			<td>
string
</td>
			<td>Name of the STS database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sts"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--driver"><a href="./values.yaml#L734">core.sts.stsDb.driver</a></td>
			<td>
string
</td>
			<td>Driver used by the STS database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"org.postgresql.Driver"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--host"><a href="./values.yaml#L736">core.sts.stsDb.host</a></td>
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
			<td id="core--sts--stsDb--platform"><a href="./values.yaml#L738">core.sts.stsDb.platform</a></td>
			<td>
string
</td>
			<td>Which kind of database you are using for STS (For example, postgresql)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"postgresql"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--port"><a href="./values.yaml#L740">core.sts.stsDb.port</a></td>
			<td>
string
</td>
			<td>STS Database port</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"5432"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--schema"><a href="./values.yaml#L742">core.sts.stsDb.schema</a></td>
			<td>
string
</td>
			<td>STS database schema</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"public"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard"><a href="./values.yaml#L745">dashboard</a></td>
			<td>
object
</td>
			<td>Platform's dashboard configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "additional-components": {
    "apps": [
      {
        "description": "",
        "existingSecret": {
          "clientId": "",
          "name": "",
          "secretKey": ""
        },
        "ingress": {
          "annotations": {},
          "enabled": false,
          "hosts": [],
          "ingressClassName": "",
          "path": "/",
          "tls": []
        },
        "name": "",
        "oidcIssuerUrl": "",
        "redirectUrl": "",
        "service": {
          "name": "",
          "port": ""
        }
      }
    ],
    "enabled": false
  },
  "affinity": {},
  "autoscaling": {
    "enabled": false,
    "maxReplicas": 100,
    "minReplicas": 1,
    "targetCPUUtilizationPercentage": 80
  },
  "image": {
    "pullPolicy": "IfNotPresent",
    "repository": "ghcr.io/scc-digitalhub/dh-dashboard",
    "tag": "0.1.4"
  },
  "imagePullSecrets": [],
  "ingress": {
    "annotations": {},
    "className": "",
    "enabled": false,
    "hosts": [
      {
        "host": "",
        "paths": [
          {
            "path": "/",
            "pathType": "ImplementationSpecific"
          }
        ]
      }
    ],
    "tls": [
      {
        "hosts": [
          ""
        ],
        "secretName": ""
      }
    ]
  },
  "nodeSelector": {},
  "oidc": {
    "audience": {
      "clientId": "",
      "externalSecret": {
        "key": "",
        "name": ""
      }
    },
    "config": {
      "issuer": ""
    },
    "enabled": false
  },
  "podAnnotations": {},
  "podLabels": {},
  "podSecurityContext": {
    "fsGroup": 65532,
    "runAsNonRoot": true,
    "runAsUser": 65532,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "priorityClassName": "",
  "replicaCount": 1,
  "resources": {
    "limits": {
      "cpu": "1000m",
      "memory": "512Mi"
    },
    "requests": {
      "cpu": "250m",
      "memory": "256Mi"
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
    "runAsUser": 65532,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "service": {
    "httpNodePort": "30110",
    "port": "8080",
    "type": "NodePort"
  },
  "serviceAccount": {
    "annotations": {},
    "automount": true,
    "create": true,
    "name": "digitalhub-dashboard"
  },
  "tolerations": [],
  "volumes": null
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--additional-components"><a href="./values.yaml#L747">dashboard.additional-components</a></td>
			<td>
object
</td>
			<td>Additional components that you wish to add to your Dashboard</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "apps": [
    {
      "description": "",
      "existingSecret": {
        "clientId": "",
        "name": "",
        "secretKey": ""
      },
      "ingress": {
        "annotations": {},
        "enabled": false,
        "hosts": [],
        "ingressClassName": "",
        "path": "/",
        "tls": []
      },
      "name": "",
      "oidcIssuerUrl": "",
      "redirectUrl": "",
      "service": {
        "name": "",
        "port": ""
      }
    }
  ],
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--additional-components--enabled"><a href="./values.yaml#L749">dashboard.additional-components.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable additional components for the Dashboard</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--additional-components--apps"><a href="./values.yaml#L751">dashboard.additional-components.apps</a></td>
			<td>
list
</td>
			<td>Components to add in list format</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "description": "",
    "existingSecret": {
      "clientId": "",
      "name": "",
      "secretKey": ""
    },
    "ingress": {
      "annotations": {},
      "enabled": false,
      "hosts": [],
      "ingressClassName": "",
      "path": "/",
      "tls": []
    },
    "name": "",
    "oidcIssuerUrl": "",
    "redirectUrl": "",
    "service": {
      "name": "",
      "port": ""
    }
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--affinity"><a href="./values.yaml#L782">dashboard.affinity</a></td>
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
			<td id="dashboard--autoscaling"><a href="./values.yaml#L784">dashboard.autoscaling</a></td>
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
			<td id="dashboard--autoscaling--enabled"><a href="./values.yaml#L786">dashboard.autoscaling.enabled</a></td>
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
			<td id="dashboard--autoscaling--maxReplicas"><a href="./values.yaml#L788">dashboard.autoscaling.maxReplicas</a></td>
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
			<td id="dashboard--autoscaling--minReplicas"><a href="./values.yaml#L790">dashboard.autoscaling.minReplicas</a></td>
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
			<td id="dashboard--autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L792">dashboard.autoscaling.targetCPUUtilizationPercentage</a></td>
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
			<td id="dashboard--image"><a href="./values.yaml#L794">dashboard.image</a></td>
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
  "repository": "ghcr.io/scc-digitalhub/dh-dashboard",
  "tag": "0.1.4"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--image--pullPolicy"><a href="./values.yaml#L796">dashboard.image.pullPolicy</a></td>
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
			<td id="dashboard--image--repository"><a href="./values.yaml#L798">dashboard.image.repository</a></td>
			<td>
string
</td>
			<td>Dashboard container image repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/dh-dashboard"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--image--tag"><a href="./values.yaml#L800">dashboard.image.tag</a></td>
			<td>
string
</td>
			<td>Dashboard container image tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.1.4"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--imagePullSecrets"><a href="./values.yaml#L805">dashboard.imagePullSecrets</a></td>
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
			<td id="dashboard--ingress"><a href="./values.yaml#L807">dashboard.ingress</a></td>
			<td>
object
</td>
			<td>Ingress configurations.</td>
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
      "host": "",
      "paths": [
        {
          "path": "/",
          "pathType": "ImplementationSpecific"
        }
      ]
    }
  ],
  "tls": [
    {
      "hosts": [
        ""
      ],
      "secretName": ""
    }
  ]
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--ingress--enabled"><a href="./values.yaml#L809">dashboard.ingress.enabled</a></td>
			<td>
bool
</td>
			<td>Enables Ingress.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--ingress--annotations"><a href="./values.yaml#L811">dashboard.ingress.annotations</a></td>
			<td>
object
</td>
			<td>Ingress annotations (values are templated).</td>
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
			<td id="dashboard--ingress--className"><a href="./values.yaml#L813">dashboard.ingress.className</a></td>
			<td>
string
</td>
			<td>Ingress Class Name. MAY be required for Kubernetes versions >= 1.18-</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--ingress--hosts"><a href="./values.yaml#L815">dashboard.ingress.hosts</a></td>
			<td>
list
</td>
			<td>Ingress accepted hostnames.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "host": "",
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
			<td id="dashboard--ingress--tls"><a href="./values.yaml#L821">dashboard.ingress.tls</a></td>
			<td>
list
</td>
			<td>Ingress TLS configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "hosts": [
      ""
    ],
    "secretName": ""
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--nodeSelector"><a href="./values.yaml#L826">dashboard.nodeSelector</a></td>
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
			<td id="dashboard--oidc"><a href="./values.yaml#L828">dashboard.oidc</a></td>
			<td>
object
</td>
			<td>Oidc authentication configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "audience": {
    "clientId": "",
    "externalSecret": {
      "key": "",
      "name": ""
    }
  },
  "config": {
    "issuer": ""
  },
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--oidc--enabled"><a href="./values.yaml#L830">dashboard.oidc.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable oidc authentication</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--oidc--audience"><a href="./values.yaml#L832">dashboard.oidc.audience</a></td>
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
			<td id="dashboard--oidc--audience--clientId"><a href="./values.yaml#L835">dashboard.oidc.audience.clientId</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the clientID for the dashboard authentication.  #  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--oidc--audience--externalSecret"><a href="./values.yaml#L837">dashboard.oidc.audience.externalSecret</a></td>
			<td>
object
</td>
			<td>Secret containing the clientID for the Dashboard's authentication</td>
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
			<td id="dashboard--oidc--audience--externalSecret--key"><a href="./values.yaml#L839">dashboard.oidc.audience.externalSecret.key</a></td>
			<td>
string
</td>
			<td>Key for the clientID</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--oidc--audience--externalSecret--name"><a href="./values.yaml#L841">dashboard.oidc.audience.externalSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--oidc--config"><a href="./values.yaml#L843">dashboard.oidc.config</a></td>
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
  "issuer": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--oidc--config--issuer"><a href="./values.yaml#L845">dashboard.oidc.config.issuer</a></td>
			<td>
string
</td>
			<td>Url of the issuer you are using</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--podAnnotations"><a href="./values.yaml#L847">dashboard.podAnnotations</a></td>
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
			<td id="dashboard--podLabels"><a href="./values.yaml#L849">dashboard.podLabels</a></td>
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
			<td id="dashboard--podSecurityContext"><a href="./values.yaml#L851">dashboard.podSecurityContext</a></td>
			<td>
object
</td>
			<td>Dashboard [Security context for pod](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "fsGroup": 65532,
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
			<td id="dashboard--podSecurityContext--fsGroup"><a href="./values.yaml#L853">dashboard.podSecurityContext.fsGroup</a></td>
			<td>
int
</td>
			<td>Pod's FSGroup</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
65532
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L855">dashboard.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="dashboard--podSecurityContext--runAsUser"><a href="./values.yaml#L857">dashboard.podSecurityContext.runAsUser</a></td>
			<td>
int
</td>
			<td>Pod's user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
65532
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--podSecurityContext--seccompProfile"><a href="./values.yaml#L859">dashboard.podSecurityContext.seccompProfile</a></td>
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
			<td id="dashboard--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L861">dashboard.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="dashboard--priorityClassName"><a href="./values.yaml#L863">dashboard.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the dashboard pods. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--replicaCount"><a href="./values.yaml#L865">dashboard.replicaCount</a></td>
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
			<td id="dashboard--resources"><a href="./values.yaml#L867">dashboard.resources</a></td>
			<td>
object
</td>
			<td>Dashboard container resource requests and limits.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": {
    "cpu": "1000m",
    "memory": "512Mi"
  },
  "requests": {
    "cpu": "250m",
    "memory": "256Mi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--limits"><a href="./values.yaml#L869">dashboard.resources.limits</a></td>
			<td>
object
</td>
			<td>Limits</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "1000m",
  "memory": "512Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--limits--cpu"><a href="./values.yaml#L871">dashboard.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td>CPU limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1000m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--limits--memory"><a href="./values.yaml#L873">dashboard.resources.limits.memory</a></td>
			<td>
string
</td>
			<td>Memory limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"512Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--requests"><a href="./values.yaml#L875">dashboard.resources.requests</a></td>
			<td>
object
</td>
			<td>Requests</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "250m",
  "memory": "256Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--requests--cpu"><a href="./values.yaml#L877">dashboard.resources.requests.cpu</a></td>
			<td>
string
</td>
			<td>CPU request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"250m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--requests--memory"><a href="./values.yaml#L879">dashboard.resources.requests.memory</a></td>
			<td>
string
</td>
			<td>Memory request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"256Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--securityContext"><a href="./values.yaml#L881">dashboard.securityContext</a></td>
			<td>
object
</td>
			<td>Dashboard [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="dashboard--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L883">dashboard.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Dashboard allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--securityContext--capabilities"><a href="./values.yaml#L885">dashboard.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Dashboard container configure capabilities</td>
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
			<td id="dashboard--securityContext--capabilities--drop"><a href="./values.yaml#L887">dashboard.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Dashboard container drop capabilities</td>
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
			<td id="dashboard--securityContext--runAsNonRoot"><a href="./values.yaml#L890">dashboard.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Dashboard container allow run as root</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--securityContext--runAsUser"><a href="./values.yaml#L892">dashboard.securityContext.runAsUser</a></td>
			<td>
int
</td>
			<td>Container's user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
65532
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--securityContext--seccompProfile"><a href="./values.yaml#L894">dashboard.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Dashboard container configure seccompProfile</td>
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
			<td id="dashboard--securityContext--seccompProfile--type"><a href="./values.yaml#L896">dashboard.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Dashboard container configure seccompProfile type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--service"><a href="./values.yaml#L898">dashboard.service</a></td>
			<td>
object
</td>
			<td>Dashboard service configurations</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "httpNodePort": "30110",
  "port": "8080",
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--service--httpNodePort"><a href="./values.yaml#L900">dashboard.service.httpNodePort</a></td>
			<td>
string
</td>
			<td>Service NodePort</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"30110"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--service--port"><a href="./values.yaml#L902">dashboard.service.port</a></td>
			<td>
string
</td>
			<td>Service port</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8080"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--service--type"><a href="./values.yaml#L904">dashboard.service.type</a></td>
			<td>
string
</td>
			<td>Service type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"NodePort"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--serviceAccount"><a href="./values.yaml#L906">dashboard.serviceAccount</a></td>
			<td>
object
</td>
			<td>Dashboard service account configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "annotations": {},
  "automount": true,
  "create": true,
  "name": "digitalhub-dashboard"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--serviceAccount--annotations"><a href="./values.yaml#L908">dashboard.serviceAccount.annotations</a></td>
			<td>
object
</td>
			<td>Additional Dashboard Service Account annotations.</td>
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
			<td id="dashboard--serviceAccount--automount"><a href="./values.yaml#L910">dashboard.serviceAccount.automount</a></td>
			<td>
bool
</td>
			<td>Automount API credentials for a Dashboard Service Account.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--serviceAccount--create"><a href="./values.yaml#L912">dashboard.serviceAccount.create</a></td>
			<td>
bool
</td>
			<td>If `true` a Dashboard Service Account will be created.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--serviceAccount--name"><a href="./values.yaml#L914">dashboard.serviceAccount.name</a></td>
			<td>
string
</td>
			<td>Dashboard service account name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-dashboard"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--tolerations"><a href="./values.yaml#L916">dashboard.tolerations</a></td>
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
			<td id="dashboard--volumes"><a href="./values.yaml#L918">dashboard.volumes</a></td>
			<td>
string
</td>
			<td>Additional volumes to mount.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry"><a href="./values.yaml#L921">docker-registry</a></td>
			<td>
object
</td>
			<td>Docker registry configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "className": "nginx",
  "containerSecurityContext": {
    "allowPrivilegeEscalation": false,
    "capabilities": {
      "drop": [
        "ALL"
      ]
    },
    "enabled": true,
    "privileged": false,
    "readOnlyRootFilesystem": true,
    "runAsGroup": 1000,
    "runAsNonRoot": true,
    "runAsUser": 1000,
    "seLinuxOptions": {},
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "enabled": true,
  "fullnameOverride": "digitalhub-docker-registry",
  "ingress": {
    "enabled": false,
    "hosts": [
      "registry.digitalhub.test"
    ],
    "path": "/"
  },
  "persistence": {
    "accessMode": "ReadWriteOnce",
    "enabled": true,
    "size": "128Gi"
  },
  "priorityClassName": "",
  "securityContext": {
    "enabled": true,
    "fsGroup": 1000,
    "fsGroupChangePolicy": "Always",
    "runAsUser": 1000,
    "supplementalGroups": [],
    "sysctls": []
  },
  "service": {
    "nodePort": 30150,
    "type": "NodePort"
  },
  "updateStrategy": {
    "type": "Recreate"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--enabled"><a href="./values.yaml#L923">docker-registry.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable docker registry</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--className"><a href="./values.yaml#L925">docker-registry.className</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"nginx"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--containerSecurityContext"><a href="./values.yaml#L927">docker-registry.containerSecurityContext</a></td>
			<td>
object
</td>
			<td>[Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
  "enabled": true,
  "privileged": false,
  "readOnlyRootFilesystem": true,
  "runAsGroup": 1000,
  "runAsNonRoot": true,
  "runAsUser": 1000,
  "seLinuxOptions": {},
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
			<td id="docker-registry--fullnameOverride"><a href="./values.yaml#L942">docker-registry.fullnameOverride</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-docker-registry"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--ingress"><a href="./values.yaml#L944">docker-registry.ingress</a></td>
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
  "hosts": [
    "registry.digitalhub.test"
  ],
  "path": "/"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--ingress--enabled"><a href="./values.yaml#L946">docker-registry.ingress.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable ingress</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--ingress--hosts"><a href="./values.yaml#L948">docker-registry.ingress.hosts</a></td>
			<td>
list
</td>
			<td>Ingress accepted hostnames.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  "registry.digitalhub.test"
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--ingress--path"><a href="./values.yaml#L951">docker-registry.ingress.path</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"/"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--persistence"><a href="./values.yaml#L953">docker-registry.persistence</a></td>
			<td>
object
</td>
			<td>Persistance and PVC configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "accessMode": "ReadWriteOnce",
  "enabled": true,
  "size": "128Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--persistence--enabled"><a href="./values.yaml#L955">docker-registry.persistence.enabled</a></td>
			<td>
bool
</td>
			<td>Enables persistence</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--persistence--accessMode"><a href="./values.yaml#L957">docker-registry.persistence.accessMode</a></td>
			<td>
string
</td>
			<td>PVC access mode</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ReadWriteOnce"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--persistence--size"><a href="./values.yaml#L959">docker-registry.persistence.size</a></td>
			<td>
string
</td>
			<td>PVC size</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"128Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--priorityClassName"><a href="./values.yaml#L961">docker-registry.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the docker-registry pods. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--securityContext"><a href="./values.yaml#L963">docker-registry.securityContext</a></td>
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
  "enabled": true,
  "fsGroup": 1000,
  "fsGroupChangePolicy": "Always",
  "runAsUser": 1000,
  "supplementalGroups": [],
  "sysctls": []
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--service"><a href="./values.yaml#L971">docker-registry.service</a></td>
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
  "nodePort": 30150,
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--service--nodePort"><a href="./values.yaml#L973">docker-registry.service.nodePort</a></td>
			<td>
int
</td>
			<td>Service NodePort.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
30150
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--service--type"><a href="./values.yaml#L975">docker-registry.service.type</a></td>
			<td>
string
</td>
			<td>Service type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"NodePort"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--updateStrategy"><a href="./values.yaml#L977">docker-registry.updateStrategy</a></td>
			<td>
object
</td>
			<td>[Deployment update strategy](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#strategy)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "type": "Recreate"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--updateStrategy--type"><a href="./values.yaml#L979">docker-registry.updateStrategy.type</a></td>
			<td>
string
</td>
			<td>Strategy type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"Recreate"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dremio-rest-server-operator"><a href="./values.yaml#L982">dremio-rest-server-operator</a></td>
			<td>
object
</td>
			<td>Dremio rest server operator configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": true,
  "priorityClassName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dremio-rest-server-operator--enabled"><a href="./values.yaml#L984">dremio-rest-server-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Dremio rest server operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dremio-rest-server-operator--priorityClassName"><a href="./values.yaml#L986">dremio-rest-server-operator.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the dremio-rest-server-operator pods. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator"><a href="./values.yaml#L989">ext-postgres-operator</a></td>
			<td>
object
</td>
			<td>External Postgres Operator configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "image": {
    "tag": "1.3.5"
  },
  "podSecurityContext": {
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "postgres": {
    "cloud_provider": "",
    "default_database": "postgres",
    "host": "",
    "password": "",
    "uri_args": " ",
    "user": ""
  },
  "postgresCredsExistingSecrets": {
    "password": {
      "secretKey": "",
      "secretName": ""
    },
    "username": {
      "secretKey": "",
      "secretName": ""
    }
  },
  "priorityClassName": "",
  "securityContext": {
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--enabled"><a href="./values.yaml#L991">ext-postgres-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable the external Postgres operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--image"><a href="./values.yaml#L993">ext-postgres-operator.image</a></td>
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
  "tag": "1.3.5"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--image--tag"><a href="./values.yaml#L995">ext-postgres-operator.image.tag</a></td>
			<td>
string
</td>
			<td>Container image tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1.3.5"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--podSecurityContext"><a href="./values.yaml#L997">ext-postgres-operator.podSecurityContext</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L999">ext-postgres-operator.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--seccompProfile"><a href="./values.yaml#L1001">ext-postgres-operator.podSecurityContext.seccompProfile</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L1003">ext-postgres-operator.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="ext-postgres-operator--postgres"><a href="./values.yaml#L1005">ext-postgres-operator.postgres</a></td>
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
  "cloud_provider": "",
  "default_database": "postgres",
  "host": "",
  "password": "",
  "uri_args": " ",
  "user": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgres--cloud_provider"><a href="./values.yaml#L1007">ext-postgres-operator.postgres.cloud_provider</a></td>
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
			<td id="ext-postgres-operator--postgres--default_database"><a href="./values.yaml#L1009">ext-postgres-operator.postgres.default_database</a></td>
			<td>
string
</td>
			<td>Name of the default database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"postgres"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgres--host"><a href="./values.yaml#L1011">ext-postgres-operator.postgres.host</a></td>
			<td>
string
</td>
			<td>Host of the platform's main database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgres--password"><a href="./values.yaml#L1014">ext-postgres-operator.postgres.password</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the Platform's main database admin user password.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgres--uri_args"><a href="./values.yaml#L1016">ext-postgres-operator.postgres.uri_args</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
" "
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgres--user"><a href="./values.yaml#L1019">ext-postgres-operator.postgres.user</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the Platform's main database admin user username.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets"><a href="./values.yaml#L1022">ext-postgres-operator.postgresCredsExistingSecrets</a></td>
			<td>
object
</td>
			<td>Reference to the secret containing username and password of the Platform's main database admin user.  These values have higher priority than the explicit declarations.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "password": {
    "secretKey": "",
    "secretName": ""
  },
  "username": {
    "secretKey": "",
    "secretName": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password"><a href="./values.yaml#L1024">ext-postgres-operator.postgresCredsExistingSecrets.password</a></td>
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
  "secretKey": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password--secretKey"><a href="./values.yaml#L1026">ext-postgres-operator.postgresCredsExistingSecrets.password.secretKey</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password--secretName"><a href="./values.yaml#L1028">ext-postgres-operator.postgresCredsExistingSecrets.password.secretName</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username"><a href="./values.yaml#L1030">ext-postgres-operator.postgresCredsExistingSecrets.username</a></td>
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
  "secretKey": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username--secretKey"><a href="./values.yaml#L1032">ext-postgres-operator.postgresCredsExistingSecrets.username.secretKey</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username--secretName"><a href="./values.yaml#L1034">ext-postgres-operator.postgresCredsExistingSecrets.username.secretName</a></td>
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
			<td id="ext-postgres-operator--priorityClassName"><a href="./values.yaml#L1036">ext-postgres-operator.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the ext-postgres-operator pods. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--securityContext"><a href="./values.yaml#L1038">ext-postgres-operator.securityContext</a></td>
			<td>
object
</td>
			<td>[Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
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
			<td id="ext-postgres-operator--securityContext--seccompProfile"><a href="./values.yaml#L1040">ext-postgres-operator.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Container configure seccompProfile.</td>
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
			<td id="ext-postgres-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L1042">ext-postgres-operator.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Container configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="jobs"><a href="./values.yaml#L1045">jobs</a></td>
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
  "delete": {
    "securityContext": {
      "readOnlyRootFilesystem": true
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="jobs--delete"><a href="./values.yaml#L1047">jobs.delete</a></td>
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
  "securityContext": {
    "readOnlyRootFilesystem": true
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="jobs--delete--securityContext"><a href="./values.yaml#L1049">jobs.delete.securityContext</a></td>
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
  "readOnlyRootFilesystem": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="jobs--delete--securityContext--readOnlyRootFilesystem"><a href="./values.yaml#L1051">jobs.delete.securityContext.readOnlyRootFilesystem</a></td>
			<td>
bool
</td>
			<td>Used by the delete-resources job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai"><a href="./values.yaml#L1055">kubeai</a></td>
			<td>
object
</td>
			<td>KubeAI configuration.  For a complete list of all the Values, as well as the specific documentation, please check the [KubeAI chart repository](https://github.com/substratusai/kubeai/tree/main/charts/kubeai)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "crds": {
    "enabled": true
  },
  "enabled": true,
  "open-webui": {
    "enabled": false
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--enabled"><a href="./values.yaml#L1057">kubeai.enabled</a></td>
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
			<td id="kubeai--crds"><a href="./values.yaml#L1059">kubeai.crds</a></td>
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
  "enabled": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--crds--enabled"><a href="./values.yaml#L1061">kubeai.crds.enabled</a></td>
			<td>
bool
</td>
			<td>Install KubeAI CRDs</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--open-webui"><a href="./values.yaml#L1063">kubeai.open-webui</a></td>
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
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--open-webui--enabled"><a href="./values.yaml#L1066">kubeai.open-webui.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable integrated OpenWebUI.  If you wish to use it, please configure the appriopriate open-webui section in the values file.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager"><a href="./values.yaml#L1069">kubernetes-resource-manager</a></td>
			<td>
object
</td>
			<td>Kubernetes Resource Manager (KRM) configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": true,
  "priorityClassName": "",
  "resourceSelectors": {
    "secrets": {
      "names": ""
    }
  },
  "service": {
    "nodePort": "30220",
    "type": "NodePort"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--enabled"><a href="./values.yaml#L1071">kubernetes-resource-manager.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable KRM</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--priorityClassName"><a href="./values.yaml#L1073">kubernetes-resource-manager.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the KRM pods. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--resourceSelectors"><a href="./values.yaml#L1075">kubernetes-resource-manager.resourceSelectors</a></td>
			<td>
object
</td>
			<td>Configure the resources that you want to see in your KRM instance</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "secrets": {
    "names": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--resourceSelectors--secrets"><a href="./values.yaml#L1077">kubernetes-resource-manager.resourceSelectors.secrets</a></td>
			<td>
object
</td>
			<td>Secrets configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "names": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--resourceSelectors--secrets--names"><a href="./values.yaml#L1079">kubernetes-resource-manager.resourceSelectors.secrets.names</a></td>
			<td>
string
</td>
			<td>A filter for the secrets that you want to see based on their name pattern</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--service"><a href="./values.yaml#L1081">kubernetes-resource-manager.service</a></td>
			<td>
object
</td>
			<td>KRM service configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "nodePort": "30220",
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--service--nodePort"><a href="./values.yaml#L1083">kubernetes-resource-manager.service.nodePort</a></td>
			<td>
string
</td>
			<td>Service nodePort</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"30220"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--service--type"><a href="./values.yaml#L1085">kubernetes-resource-manager.service.type</a></td>
			<td>
string
</td>
			<td>Service type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"NodePort"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui"><a href="./values.yaml#L1089">open-webui</a></td>
			<td>
object
</td>
			<td>OpenWebUI configuration  For a complete list of all the Values, as well as the specific documentation, please check the [OpenWebUI chart repository](https://github.com/open-webui/helm-charts/tree/main/charts/open-webui)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "containerSecurityContext": {
    "allowPrivilegeEscalation": false,
    "capabilities": {
      "drop": [
        "ALL"
      ]
    },
    "privileged": false,
    "readOnlyRootFilesystem": false,
    "runAsGroup": 1001,
    "runAsNonRoot": true,
    "runAsUser": 1001,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "enabled": true,
  "extraEnvFrom": [],
  "extraEnvVars": [
    {
      "name": "WEBUI_SECRET_KEY",
      "value": "WEBUI_SECRET_KEY"
    },
    {
      "name": "ADMIN_USER_EMAIL",
      "value": ""
    },
    {
      "name": "ADMIN_USER_PASSWORD",
      "value": ""
    },
    {
      "name": "DEFAULT_USER_ROLE",
      "value": "user"
    },
    {
      "name": "ENABLE_API_KEY",
      "value": "False"
    },
    {
      "name": "ENABLE_EVALUATION_ARENA_MODELS",
      "value": "False"
    },
    {
      "name": "ENABLE_LOGIN_FORM",
      "value": "True"
    },
    {
      "name": "OPENAI_API_KEYS",
      "value": "not-used"
    },
    {
      "name": "SAFE_MODE",
      "value": "True"
    },
    {
      "name": "SPACE_ID",
      "value": "test"
    }
  ],
  "ollama": {
    "enabled": false
  },
  "openaiBaseApiUrl": "http://kubeai/openai/v1",
  "pipelines": {
    "enabled": false
  },
  "podSecurityContext": {
    "fsGroup": 1001,
    "fsGroupChangePolicy": "Always",
    "supplementalGroups": [],
    "sysctls": []
  },
  "priorityClassName": "",
  "service": {
    "nodePort": "30210",
    "type": "NodePort"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--enabled"><a href="./values.yaml#L1091">open-webui.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable OpenWebUI</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--extraEnvFrom"><a href="./values.yaml#L1107">open-webui.extraEnvFrom</a></td>
			<td>
list
</td>
			<td>Additional variables that will be passed to OpenWebUI from secrets or configmap  - secretRef:     name: my-secret</td>
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
			<td id="open-webui--extraEnvVars"><a href="./values.yaml#L1109">open-webui.extraEnvVars</a></td>
			<td>
list
</td>
			<td>Additional variables that will be passed to OpenWebUI</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "name": "WEBUI_SECRET_KEY",
    "value": "WEBUI_SECRET_KEY"
  },
  {
    "name": "ADMIN_USER_EMAIL",
    "value": ""
  },
  {
    "name": "ADMIN_USER_PASSWORD",
    "value": ""
  },
  {
    "name": "DEFAULT_USER_ROLE",
    "value": "user"
  },
  {
    "name": "ENABLE_API_KEY",
    "value": "False"
  },
  {
    "name": "ENABLE_EVALUATION_ARENA_MODELS",
    "value": "False"
  },
  {
    "name": "ENABLE_LOGIN_FORM",
    "value": "True"
  },
  {
    "name": "OPENAI_API_KEYS",
    "value": "not-used"
  },
  {
    "name": "SAFE_MODE",
    "value": "True"
  },
  {
    "name": "SPACE_ID",
    "value": "test"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--ollama"><a href="./values.yaml#L1134">open-webui.ollama</a></td>
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
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--ollama--enabled"><a href="./values.yaml#L1136">open-webui.ollama.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable ollama for OpenWebUI</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--openaiBaseApiUrl"><a href="./values.yaml#L1139">open-webui.openaiBaseApiUrl</a></td>
			<td>
string
</td>
			<td>OpenAI base API URL to use.  Defaults to the Pipelines service endpoint when Pipelines are enabled, and "https://api.openai.com/v1" if Pipelines are not enabled and this value is blank</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http://kubeai/openai/v1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--pipelines"><a href="./values.yaml#L1141">open-webui.pipelines</a></td>
			<td>
object
</td>
			<td>Pipelines configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--pipelines--enabled"><a href="./values.yaml#L1143">open-webui.pipelines.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable pipelines</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--priorityClassName"><a href="./values.yaml#L1150">open-webui.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the open-webui pods. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--service"><a href="./values.yaml#L1152">open-webui.service</a></td>
			<td>
object
</td>
			<td>Service configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "nodePort": "30210",
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--service--nodePort"><a href="./values.yaml#L1154">open-webui.service.nodePort</a></td>
			<td>
string
</td>
			<td>Service nodePort</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"30210"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--service--type"><a href="./values.yaml#L1156">open-webui.service.type</a></td>
			<td>
string
</td>
			<td>Service type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"NodePort"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="platformPackages"><a href="./values.yaml#L1162">platformPackages</a></td>
			<td>
object
</td>
			<td>Platform's packages configuration.  Used for the tests and Code-Toolbox Coder template.  WARNING:  These values are mainly for development only and, for a stable and tested experience with the Platform, they should NOT be modified.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "deleteOnCompletion": true,
  "image": "",
  "packages": [
    {
      "name": "digitalhub-runtime-container",
      "tag": "0.14.0"
    },
    {
      "name": "digitalhub-runtime-dbt",
      "tag": "0.14.0"
    },
    {
      "name": "digitalhub-runtime-flower",
      "tag": "0.14.0"
    },
    {
      "name": "digitalhub-runtime-hera",
      "tag": "0.14.0"
    },
    {
      "name": "digitalhub-runtime-kfp",
      "tag": "0.14.0"
    },
    {
      "name": "digitalhub-runtime-modelserve",
      "tag": "0.14.0"
    },
    {
      "name": "digitalhub-runtime-python",
      "tag": "0.14.0"
    },
    {
      "name": "digitalhub[full]",
      "tag": "0.14.0"
    }
  ],
  "preRelease": false,
  "tag": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="platformPackages--deleteOnCompletion"><a href="./values.yaml#L1164">platformPackages.deleteOnCompletion</a></td>
			<td>
bool
</td>
			<td>Enable/Disable project deletion on Core when the tests are over.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="platformPackages--image"><a href="./values.yaml#L1166">platformPackages.image</a></td>
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
			<td id="platformPackages--packages"><a href="./values.yaml#L1170">platformPackages.packages</a></td>
			<td>
list
</td>
			<td>Packages used by the platform in list format.  WARNING:  For the most stable experience, these values should NOT be modified.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "name": "digitalhub-runtime-container",
    "tag": "0.14.0"
  },
  {
    "name": "digitalhub-runtime-dbt",
    "tag": "0.14.0"
  },
  {
    "name": "digitalhub-runtime-flower",
    "tag": "0.14.0"
  },
  {
    "name": "digitalhub-runtime-hera",
    "tag": "0.14.0"
  },
  {
    "name": "digitalhub-runtime-kfp",
    "tag": "0.14.0"
  },
  {
    "name": "digitalhub-runtime-modelserve",
    "tag": "0.14.0"
  },
  {
    "name": "digitalhub-runtime-python",
    "tag": "0.14.0"
  },
  {
    "name": "digitalhub[full]",
    "tag": "0.14.0"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="platformPackages--preRelease"><a href="./values.yaml#L1190">platformPackages.preRelease</a></td>
			<td>
bool
</td>
			<td>If set to true, the latest version of the packages will be used (even beta ones).  WARNING:  For the most stable experience, this value should NOT be modified.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="platformPackages--tag"><a href="./values.yaml#L1192">platformPackages.tag</a></td>
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
			<td id="postgres-operator"><a href="./values.yaml#L1195">postgres-operator</a></td>
			<td>
object
</td>
			<td>Postgres operator configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "databases": {
    "coder": {
      "enabled": false,
      "resources": {
        "limits": {
          "cpu": "2",
          "memory": "2Gi"
        },
        "requests": {
          "cpu": "512m",
          "memory": "1000Mi"
        }
      },
      "volume": {
        "size": "8Gi"
      }
    },
    "core": {
      "enabled": false,
      "resources": {
        "limits": {
          "cpu": "2",
          "memory": "2Gi"
        },
        "requests": {
          "cpu": "512m",
          "memory": "1000Mi"
        }
      },
      "volume": {
        "size": "8Gi"
      }
    },
    "digitalhub": {
      "enabled": false,
      "resources": {
        "limits": {
          "cpu": "2",
          "memory": "2Gi"
        },
        "requests": {
          "cpu": "512m",
          "memory": "1000Mi"
        }
      },
      "volume": {
        "size": "8Gi"
      }
    }
  },
  "enabled": false,
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
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--enabled"><a href="./values.yaml#L1197">postgres-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable the Postgres operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases"><a href="./values.yaml#L1199">postgres-operator.databases</a></td>
			<td>
object
</td>
			<td>The databases that will be created with the Postgres operator</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "coder": {
    "enabled": false,
    "resources": {
      "limits": {
        "cpu": "2",
        "memory": "2Gi"
      },
      "requests": {
        "cpu": "512m",
        "memory": "1000Mi"
      }
    },
    "volume": {
      "size": "8Gi"
    }
  },
  "core": {
    "enabled": false,
    "resources": {
      "limits": {
        "cpu": "2",
        "memory": "2Gi"
      },
      "requests": {
        "cpu": "512m",
        "memory": "1000Mi"
      }
    },
    "volume": {
      "size": "8Gi"
    }
  },
  "digitalhub": {
    "enabled": false,
    "resources": {
      "limits": {
        "cpu": "2",
        "memory": "2Gi"
      },
      "requests": {
        "cpu": "512m",
        "memory": "1000Mi"
      }
    },
    "volume": {
      "size": "8Gi"
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder"><a href="./values.yaml#L1201">postgres-operator.databases.coder</a></td>
			<td>
object
</td>
			<td>Coder database configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "resources": {
    "limits": {
      "cpu": "2",
      "memory": "2Gi"
    },
    "requests": {
      "cpu": "512m",
      "memory": "1000Mi"
    }
  },
  "volume": {
    "size": "8Gi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--enabled"><a href="./values.yaml#L1203">postgres-operator.databases.coder.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Coder database creation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources"><a href="./values.yaml#L1205">postgres-operator.databases.coder.resources</a></td>
			<td>
object
</td>
			<td>Resources for the Coder database cluster</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": {
    "cpu": "2",
    "memory": "2Gi"
  },
  "requests": {
    "cpu": "512m",
    "memory": "1000Mi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--limits"><a href="./values.yaml#L1207">postgres-operator.databases.coder.resources.limits</a></td>
			<td>
object
</td>
			<td>Limits</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "2",
  "memory": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--limits--cpu"><a href="./values.yaml#L1209">postgres-operator.databases.coder.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td>CPU limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--limits--memory"><a href="./values.yaml#L1211">postgres-operator.databases.coder.resources.limits.memory</a></td>
			<td>
string
</td>
			<td>Memory limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--requests"><a href="./values.yaml#L1213">postgres-operator.databases.coder.resources.requests</a></td>
			<td>
object
</td>
			<td>Rqeuests</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "512m",
  "memory": "1000Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--requests--cpu"><a href="./values.yaml#L1215">postgres-operator.databases.coder.resources.requests.cpu</a></td>
			<td>
string
</td>
			<td>CPU request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"512m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--requests--memory"><a href="./values.yaml#L1217">postgres-operator.databases.coder.resources.requests.memory</a></td>
			<td>
string
</td>
			<td>Memory request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1000Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--volume"><a href="./values.yaml#L1219">postgres-operator.databases.coder.volume</a></td>
			<td>
object
</td>
			<td>Coder postgres cluster PVC configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "size": "8Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--volume--size"><a href="./values.yaml#L1221">postgres-operator.databases.coder.volume.size</a></td>
			<td>
string
</td>
			<td>PVC size</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core"><a href="./values.yaml#L1223">postgres-operator.databases.core</a></td>
			<td>
object
</td>
			<td>Core database configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "resources": {
    "limits": {
      "cpu": "2",
      "memory": "2Gi"
    },
    "requests": {
      "cpu": "512m",
      "memory": "1000Mi"
    }
  },
  "volume": {
    "size": "8Gi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--enabled"><a href="./values.yaml#L1225">postgres-operator.databases.core.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Core database creation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources"><a href="./values.yaml#L1227">postgres-operator.databases.core.resources</a></td>
			<td>
object
</td>
			<td>Resources for the Core database cluster</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": {
    "cpu": "2",
    "memory": "2Gi"
  },
  "requests": {
    "cpu": "512m",
    "memory": "1000Mi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--limits"><a href="./values.yaml#L1229">postgres-operator.databases.core.resources.limits</a></td>
			<td>
object
</td>
			<td>Limits</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "2",
  "memory": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--limits--cpu"><a href="./values.yaml#L1231">postgres-operator.databases.core.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td>CPU limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--limits--memory"><a href="./values.yaml#L1233">postgres-operator.databases.core.resources.limits.memory</a></td>
			<td>
string
</td>
			<td>Memory limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--requests"><a href="./values.yaml#L1235">postgres-operator.databases.core.resources.requests</a></td>
			<td>
object
</td>
			<td>Requests</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "512m",
  "memory": "1000Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--requests--cpu"><a href="./values.yaml#L1237">postgres-operator.databases.core.resources.requests.cpu</a></td>
			<td>
string
</td>
			<td>CPU request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"512m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--requests--memory"><a href="./values.yaml#L1239">postgres-operator.databases.core.resources.requests.memory</a></td>
			<td>
string
</td>
			<td>Memory request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1000Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--volume"><a href="./values.yaml#L1241">postgres-operator.databases.core.volume</a></td>
			<td>
object
</td>
			<td>Core postgres cluster PVC configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "size": "8Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--volume--size"><a href="./values.yaml#L1243">postgres-operator.databases.core.volume.size</a></td>
			<td>
string
</td>
			<td>PVC size</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub"><a href="./values.yaml#L1245">postgres-operator.databases.digitalhub</a></td>
			<td>
object
</td>
			<td>Platform database configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "resources": {
    "limits": {
      "cpu": "2",
      "memory": "2Gi"
    },
    "requests": {
      "cpu": "512m",
      "memory": "1000Mi"
    }
  },
  "volume": {
    "size": "8Gi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--enabled"><a href="./values.yaml#L1247">postgres-operator.databases.digitalhub.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Platform database creation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources"><a href="./values.yaml#L1249">postgres-operator.databases.digitalhub.resources</a></td>
			<td>
object
</td>
			<td>Resources for the Platform database cluster</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": {
    "cpu": "2",
    "memory": "2Gi"
  },
  "requests": {
    "cpu": "512m",
    "memory": "1000Mi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--limits"><a href="./values.yaml#L1251">postgres-operator.databases.digitalhub.resources.limits</a></td>
			<td>
object
</td>
			<td>Limits</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "2",
  "memory": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--limits--cpu"><a href="./values.yaml#L1253">postgres-operator.databases.digitalhub.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td>CPU limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--limits--memory"><a href="./values.yaml#L1255">postgres-operator.databases.digitalhub.resources.limits.memory</a></td>
			<td>
string
</td>
			<td>Memory limit</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--requests"><a href="./values.yaml#L1257">postgres-operator.databases.digitalhub.resources.requests</a></td>
			<td>
object
</td>
			<td>Requests</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpu": "512m",
  "memory": "1000Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--requests--cpu"><a href="./values.yaml#L1259">postgres-operator.databases.digitalhub.resources.requests.cpu</a></td>
			<td>
string
</td>
			<td>CPU request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"512m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--requests--memory"><a href="./values.yaml#L1261">postgres-operator.databases.digitalhub.resources.requests.memory</a></td>
			<td>
string
</td>
			<td>Memory request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1000Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--volume"><a href="./values.yaml#L1263">postgres-operator.databases.digitalhub.volume</a></td>
			<td>
object
</td>
			<td>Database postgres cluster PVC configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "size": "8Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--volume--size"><a href="./values.yaml#L1265">postgres-operator.databases.digitalhub.volume.size</a></td>
			<td>
string
</td>
			<td>PVC size</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--securityContext"><a href="./values.yaml#L1267">postgres-operator.securityContext</a></td>
			<td>
object
</td>
			<td>Container allow privilege escalation.</td>
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
			<td id="postgres-operator--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1269">postgres-operator.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Container allow privilege escalation.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--securityContext--capabilities"><a href="./values.yaml#L1271">postgres-operator.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Container configure capabilities.</td>
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
			<td id="postgres-operator--securityContext--capabilities--drop"><a href="./values.yaml#L1273">postgres-operator.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Container drop capabilities.</td>
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
			<td id="postgres-operator--securityContext--runAsNonRoot"><a href="./values.yaml#L1276">postgres-operator.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Container allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--securityContext--seccompProfile"><a href="./values.yaml#L1278">postgres-operator.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Container configure seccompProfile.</td>
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
			<td id="postgres-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L1280">postgres-operator.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Container configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator"><a href="./values.yaml#L1284">postgrest-operator</a></td>
			<td>
object
</td>
			<td>Postgrest Operator configuration  For a complete list of all the Values, as well as the specific documentation, please check the [Postgres Operator Helm Chart repository](https://github.com/zalando/postgres-operator/tree/master/charts/postgres-operator)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false,
  "postgres": {
    "default_database": "",
    "host": "",
    "port": 5432,
    "postgrest_service_type": "NodePort",
    "uri_args": "sslmode=disable"
  },
  "postgresCredsExistingSecrets": {
    "password": {
      "secretKey": "",
      "secretName": ""
    },
    "username": {
      "secretKey": "",
      "secretName": ""
    }
  },
  "priorityClassName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--enabled"><a href="./values.yaml#L1286">postgrest-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Postgrest Operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres"><a href="./values.yaml#L1288">postgrest-operator.postgres</a></td>
			<td>
object
</td>
			<td>Postgres instance configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "default_database": "",
  "host": "",
  "port": 5432,
  "postgrest_service_type": "NodePort",
  "uri_args": "sslmode=disable"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres--default_database"><a href="./values.yaml#L1290">postgrest-operator.postgres.default_database</a></td>
			<td>
string
</td>
			<td>Default postgres database name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres--host"><a href="./values.yaml#L1292">postgrest-operator.postgres.host</a></td>
			<td>
string
</td>
			<td>Postgres server host</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres--port"><a href="./values.yaml#L1294">postgrest-operator.postgres.port</a></td>
			<td>
int
</td>
			<td>Postgres server port</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
5432
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres--postgrest_service_type"><a href="./values.yaml#L1296">postgrest-operator.postgres.postgrest_service_type</a></td>
			<td>
string
</td>
			<td>Postgrest service type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"NodePort"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres--uri_args"><a href="./values.yaml#L1298">postgrest-operator.postgres.uri_args</a></td>
			<td>
string
</td>
			<td>Postgrest additional arguments</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sslmode=disable"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets"><a href="./values.yaml#L1300">postgrest-operator.postgresCredsExistingSecrets</a></td>
			<td>
object
</td>
			<td>Use existing secret for postgres server credentials</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "password": {
    "secretKey": "",
    "secretName": ""
  },
  "username": {
    "secretKey": "",
    "secretName": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--password"><a href="./values.yaml#L1302">postgrest-operator.postgresCredsExistingSecrets.password</a></td>
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
  "secretKey": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--password--secretKey"><a href="./values.yaml#L1304">postgrest-operator.postgresCredsExistingSecrets.password.secretKey</a></td>
			<td>
string
</td>
			<td>Password secret key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--password--secretName"><a href="./values.yaml#L1306">postgrest-operator.postgresCredsExistingSecrets.password.secretName</a></td>
			<td>
string
</td>
			<td>Password secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--username"><a href="./values.yaml#L1308">postgrest-operator.postgresCredsExistingSecrets.username</a></td>
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
  "secretKey": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--username--secretKey"><a href="./values.yaml#L1310">postgrest-operator.postgresCredsExistingSecrets.username.secretKey</a></td>
			<td>
string
</td>
			<td>Username secret key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--username--secretName"><a href="./values.yaml#L1312">postgrest-operator.postgresCredsExistingSecrets.username.secretName</a></td>
			<td>
string
</td>
			<td>Username secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--priorityClassName"><a href="./values.yaml#L1314">postgrest-operator.priorityClassName</a></td>
			<td>
string
</td>
			<td>Name of the priority class to use for the postgrest-operator pods. If not set, no priority class will be used.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="seaweedfs"><a href="./values.yaml#L1317">seaweedfs</a></td>
			<td>
object
</td>
			<td>SeaweedFS configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="seaweedfs--enabled"><a href="./values.yaml#L1319">seaweedfs.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable SeaweedFS</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="template-controller"><a href="./values.yaml#L1323">template-controller</a></td>
			<td>
object
</td>
			<td>Template Controller configuration  For a complete list of all the Values, as well as the specific documentation, please check the [Template Controller Helm Chart repository](https://github.com/kluctl/template-controller/tree/main/deploy/charts/template-controller)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": true,
  "objectTemplate": {
    "enabled": true
  },
  "podSecurityContext": {
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
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
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="template-controller--enabled"><a href="./values.yaml#L1325">template-controller.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Template Controller</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="template-controller--objectTemplate"><a href="./values.yaml#L1328">template-controller.objectTemplate</a></td>
			<td>
object
</td>
			<td>ObjectTemplate resources configuration.  This will affect the the common-creds secret and the dashboard oidc configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="template-controller--objectTemplate--enabled"><a href="./values.yaml#L1330">template-controller.objectTemplate.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable objectTemplate resources creation.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="template-controller--podSecurityContext"><a href="./values.yaml#L1332">template-controller.podSecurityContext</a></td>
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
			<td id="template-controller--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L1334">template-controller.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="template-controller--podSecurityContext--seccompProfile"><a href="./values.yaml#L1336">template-controller.podSecurityContext.seccompProfile</a></td>
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
			<td id="template-controller--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L1338">template-controller.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="template-controller--securityContext"><a href="./values.yaml#L1340">template-controller.securityContext</a></td>
			<td>
object
</td>
			<td>Template Controller [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="template-controller--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1342">template-controller.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Template Controller container allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="template-controller--securityContext--capabilities"><a href="./values.yaml#L1344">template-controller.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Template Controller container configure capabilities.</td>
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
			<td id="template-controller--securityContext--capabilities--drop"><a href="./values.yaml#L1346">template-controller.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Template Controller container drop capabilities.</td>
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
			<td id="template-controller--securityContext--runAsNonRoot"><a href="./values.yaml#L1349">template-controller.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Template Controller container allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="template-controller--securityContext--seccompProfile"><a href="./values.yaml#L1351">template-controller.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Template Controller container configure seccompProfile.</td>
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
			<td id="template-controller--securityContext--seccompProfile--type"><a href="./values.yaml#L1353">template-controller.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Template Controller container configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
	</tbody>
</table>
