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
  },
  "solr": {
    "fullNameOverride": "digitalhub"
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
			<td id="global--s3"><a href="./values.yaml#L62">global.s3</a></td>
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
			<td id="global--s3--argo"><a href="./values.yaml#L64">global.s3.argo</a></td>
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
			<td id="global--s3--argo--accessKey"><a href="./values.yaml#L66">global.s3.argo.accessKey</a></td>
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
			<td id="global--s3--argo--bucket"><a href="./values.yaml#L68">global.s3.argo.bucket</a></td>
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
			<td id="global--s3--argo--existingSecret"><a href="./values.yaml#L69">global.s3.argo.existingSecret</a></td>
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
			<td id="global--s3--argo--existingSecret--secretName"><a href="./values.yaml#L75">global.s3.argo.existingSecret.secretName</a></td>
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
			<td id="global--s3--argo--secretKey"><a href="./values.yaml#L77">global.s3.argo.secretKey</a></td>
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
			<td id="global--s3--endpointPort"><a href="./values.yaml#L84">global.s3.endpointPort</a></td>
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
			<td id="global--s3--platform"><a href="./values.yaml#L86">global.s3.platform</a></td>
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
			<td id="global--s3--platform--accessKey"><a href="./values.yaml#L88">global.s3.platform.accessKey</a></td>
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
			<td id="global--s3--platform--bucket"><a href="./values.yaml#L90">global.s3.platform.bucket</a></td>
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
			<td id="global--s3--platform--existingSecret"><a href="./values.yaml#L92">global.s3.platform.existingSecret</a></td>
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
			<td id="global--s3--platform--existingSecret--secretName"><a href="./values.yaml#L98">global.s3.platform.existingSecret.secretName</a></td>
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
			<td id="global--s3--platform--platformUserSecret"><a href="./values.yaml#L100">global.s3.platform.platformUserSecret</a></td>
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
			<td id="global--s3--protocol"><a href="./values.yaml#L104">global.s3.protocol</a></td>
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
			<td id="global--s3--rootPassword"><a href="./values.yaml#L106">global.s3.rootPassword</a></td>
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
			<td id="global--s3--rootUser"><a href="./values.yaml#L108">global.s3.rootUser</a></td>
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
			<td id="global--s3--rootUserSecret"><a href="./values.yaml#L110">global.s3.rootUserSecret</a></td>
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
			<td id="global--securityContext"><a href="./values.yaml#L112">global.securityContext</a></td>
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
			<td id="global--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L114">global.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="global--securityContext--capabilities"><a href="./values.yaml#L116">global.securityContext.capabilities</a></td>
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
			<td id="global--securityContext--capabilities--drop"><a href="./values.yaml#L118">global.securityContext.capabilities.drop</a></td>
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
			<td id="global--securityContext--runAsNonRoot"><a href="./values.yaml#L121">global.securityContext.runAsNonRoot</a></td>
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
			<td id="global--securityContext--seccompProfile"><a href="./values.yaml#L123">global.securityContext.seccompProfile</a></td>
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
			<td id="global--securityContext--seccompProfile--type"><a href="./values.yaml#L125">global.securityContext.seccompProfile.type</a></td>
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
			<td id="global--service"><a href="./values.yaml#L127">global.service</a></td>
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
			<td id="global--service--type"><a href="./values.yaml#L129">global.service.type</a></td>
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
			<td id="global--solr"><a href="./values.yaml#L131">global.solr</a></td>
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
  "fullNameOverride": "digitalhub"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--solr--fullNameOverride"><a href="./values.yaml#L133">global.solr.fullNameOverride</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="apigw-operator"><a href="./values.yaml#L136">apigw-operator</a></td>
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
  "enabled": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="apigw-operator--enabled"><a href="./values.yaml#L138">apigw-operator.enabled</a></td>
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
			<td id="argo-workflows"><a href="./values.yaml#L142">argo-workflows</a></td>
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
        "serviceAccountName": "argo-workflow"
      }
    }
  },
  "crds": {
    "install": true
  },
  "enabled": true,
  "executor": {
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
			<td id="argo-workflows--enabled"><a href="./values.yaml#L144">argo-workflows.enabled</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef"><a href="./values.yaml#L146">argo-workflows.artifactRepositoryRef</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories"><a href="./values.yaml#L148">argo-workflows.artifactRepositoryRef.artifact-repositories</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--annotations"><a href="./values.yaml#L150">argo-workflows.artifactRepositoryRef.artifact-repositories.annotations</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository"><a href="./values.yaml#L154">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--archiveLogs"><a href="./values.yaml#L156">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.archiveLogs</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3"><a href="./values.yaml#L158">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--accessKeySecret"><a href="./values.yaml#L160">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--accessKeySecret--key"><a href="./values.yaml#L162">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret.key</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--accessKeySecret--name"><a href="./values.yaml#L164">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret.name</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--bucket"><a href="./values.yaml#L166">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.bucket</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--endpoint"><a href="./values.yaml#L168">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.endpoint</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--insecure"><a href="./values.yaml#L170">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.insecure</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--secretKeySecret"><a href="./values.yaml#L172">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--secretKeySecret--key"><a href="./values.yaml#L174">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret.key</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--secretKeySecret--name"><a href="./values.yaml#L176">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret.name</a></td>
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
			<td id="argo-workflows--controller"><a href="./values.yaml#L178">argo-workflows.controller</a></td>
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
      "serviceAccountName": "argo-workflow"
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--configMap"><a href="./values.yaml#L180">argo-workflows.controller.configMap</a></td>
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
			<td id="argo-workflows--controller--configMap--create"><a href="./values.yaml#L182">argo-workflows.controller.configMap.create</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext"><a href="./values.yaml#L184">argo-workflows.controller.podSecurityContext</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L186">argo-workflows.controller.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext--seccompProfile"><a href="./values.yaml#L188">argo-workflows.controller.podSecurityContext.seccompProfile</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L190">argo-workflows.controller.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="argo-workflows--controller--securityContext"><a href="./values.yaml#L192">argo-workflows.controller.securityContext</a></td>
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
			<td id="argo-workflows--controller--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L194">argo-workflows.controller.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="argo-workflows--controller--securityContext--capabilities"><a href="./values.yaml#L196">argo-workflows.controller.securityContext.capabilities</a></td>
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
			<td id="argo-workflows--controller--securityContext--capabilities--drop"><a href="./values.yaml#L198">argo-workflows.controller.securityContext.capabilities.drop</a></td>
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
			<td id="argo-workflows--controller--securityContext--runAsNonRoot"><a href="./values.yaml#L201">argo-workflows.controller.securityContext.runAsNonRoot</a></td>
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
			<td id="argo-workflows--controller--securityContext--seccompProfile"><a href="./values.yaml#L203">argo-workflows.controller.securityContext.seccompProfile</a></td>
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
			<td id="argo-workflows--controller--securityContext--seccompProfile--type"><a href="./values.yaml#L205">argo-workflows.controller.securityContext.seccompProfile.type</a></td>
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
			<td id="argo-workflows--controller--serviceAccount"><a href="./values.yaml#L207">argo-workflows.controller.serviceAccount</a></td>
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
			<td id="argo-workflows--controller--serviceAccount--name"><a href="./values.yaml#L209">argo-workflows.controller.serviceAccount.name</a></td>
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
			<td id="argo-workflows--controller--workflowDefaults"><a href="./values.yaml#L212">argo-workflows.controller.workflowDefaults</a></td>
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
    "serviceAccountName": "argo-workflow"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults--spec"><a href="./values.yaml#L214">argo-workflows.controller.workflowDefaults.spec</a></td>
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
  "serviceAccountName": "argo-workflow"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults--spec--serviceAccountName"><a href="./values.yaml#L216">argo-workflows.controller.workflowDefaults.spec.serviceAccountName</a></td>
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
			<td id="argo-workflows--crds"><a href="./values.yaml#L218">argo-workflows.crds</a></td>
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
			<td id="argo-workflows--crds--install"><a href="./values.yaml#L220">argo-workflows.crds.install</a></td>
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
			<td id="argo-workflows--executor"><a href="./values.yaml#L222">argo-workflows.executor</a></td>
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
			<td id="argo-workflows--executor--securityContext"><a href="./values.yaml#L224">argo-workflows.executor.securityContext</a></td>
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
			<td id="argo-workflows--executor--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L226">argo-workflows.executor.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="argo-workflows--executor--securityContext--capabilities"><a href="./values.yaml#L228">argo-workflows.executor.securityContext.capabilities</a></td>
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
			<td id="argo-workflows--executor--securityContext--capabilities--drop"><a href="./values.yaml#L230">argo-workflows.executor.securityContext.capabilities.drop</a></td>
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
			<td id="argo-workflows--executor--securityContext--runAsNonRoot"><a href="./values.yaml#L233">argo-workflows.executor.securityContext.runAsNonRoot</a></td>
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
			<td id="argo-workflows--executor--securityContext--seccompProfile"><a href="./values.yaml#L235">argo-workflows.executor.securityContext.seccompProfile</a></td>
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
			<td id="argo-workflows--executor--securityContext--seccompProfile--type"><a href="./values.yaml#L237">argo-workflows.executor.securityContext.seccompProfile.type</a></td>
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
			<td id="argo-workflows--server"><a href="./values.yaml#L239">argo-workflows.server</a></td>
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
			<td id="argo-workflows--server--enabled"><a href="./values.yaml#L241">argo-workflows.server.enabled</a></td>
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
			<td id="argo-workflows--singleNamespace"><a href="./values.yaml#L243">argo-workflows.singleNamespace</a></td>
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
			<td id="argo-workflows--workflow"><a href="./values.yaml#L245">argo-workflows.workflow</a></td>
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
			<td id="argo-workflows--workflow--serviceAccount"><a href="./values.yaml#L247">argo-workflows.workflow.serviceAccount</a></td>
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
			<td id="argo-workflows--workflow--serviceAccount--create"><a href="./values.yaml#L249">argo-workflows.workflow.serviceAccount.create</a></td>
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
			<td id="argo-workflows--workflow--serviceAccount--name"><a href="./values.yaml#L251">argo-workflows.workflow.serviceAccount.name</a></td>
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
			<td id="coder"><a href="./values.yaml#L255">coder</a></td>
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
      "tag": "v2.24.2"
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
        "image": "dremio/dremio-oss:24.1.0",
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
        "image": "smartcommunitylab/sqlpad:nonroot",
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
			<td id="coder--enabled"><a href="./values.yaml#L257">coder.enabled</a></td>
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
			<td id="coder--coder"><a href="./values.yaml#L259">coder.coder</a></td>
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
    "tag": "v2.24.2"
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
			<td id="coder--coder--env"><a href="./values.yaml#L261">coder.coder.env</a></td>
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
			<td id="coder--coder--image"><a href="./values.yaml#L276">coder.coder.image</a></td>
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
  "tag": "v2.24.2"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--image--tag"><a href="./values.yaml#L278">coder.coder.image.tag</a></td>
			<td>
string
</td>
			<td>Coder image tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"v2.24.2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--ingress"><a href="./values.yaml#L280">coder.coder.ingress</a></td>
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
			<td id="coder--coder--ingress--enable"><a href="./values.yaml#L282">coder.coder.ingress.enable</a></td>
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
			<td id="coder--coder--securityContext"><a href="./values.yaml#L284">coder.coder.securityContext</a></td>
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
			<td id="coder--coder--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L286">coder.coder.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="coder--coder--securityContext--capabilities"><a href="./values.yaml#L288">coder.coder.securityContext.capabilities</a></td>
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
			<td id="coder--coder--securityContext--capabilities--drop"><a href="./values.yaml#L290">coder.coder.securityContext.capabilities.drop</a></td>
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
			<td id="coder--coder--securityContext--runAsNonRoot"><a href="./values.yaml#L293">coder.coder.securityContext.runAsNonRoot</a></td>
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
			<td id="coder--coder--securityContext--seccompProfile"><a href="./values.yaml#L295">coder.coder.securityContext.seccompProfile</a></td>
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
			<td id="coder--coder--securityContext--seccompProfile--type"><a href="./values.yaml#L297">coder.coder.securityContext.seccompProfile.type</a></td>
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
			<td id="coder--coder--service"><a href="./values.yaml#L299">coder.coder.service</a></td>
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
			<td id="coder--coder--service--httpNodePort"><a href="./values.yaml#L301">coder.coder.service.httpNodePort</a></td>
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
			<td id="coder--coder--service--type"><a href="./values.yaml#L303">coder.coder.service.type</a></td>
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
			<td id="coder--email"><a href="./values.yaml#L305">coder.email</a></td>
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
			<td id="coder--existingSecrets"><a href="./values.yaml#L307">coder.existingSecrets</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret"><a href="./values.yaml#L309">coder.existingSecrets.adminUserExistingSecret</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret--emailKey"><a href="./values.yaml#L311">coder.existingSecrets.adminUserExistingSecret.emailKey</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret--passwordKey"><a href="./values.yaml#L313">coder.existingSecrets.adminUserExistingSecret.passwordKey</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret--secretName"><a href="./values.yaml#L315">coder.existingSecrets.adminUserExistingSecret.secretName</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret--usernameKey"><a href="./values.yaml#L317">coder.existingSecrets.adminUserExistingSecret.usernameKey</a></td>
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
			<td id="coder--existingSecrets--existingPostgresConnectionUrlSecret"><a href="./values.yaml#L319">coder.existingSecrets.existingPostgresConnectionUrlSecret</a></td>
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
			<td id="coder--existingSecrets--existingPostgresConnectionUrlSecret--enabled"><a href="./values.yaml#L322">coder.existingSecrets.existingPostgresConnectionUrlSecret.enabled</a></td>
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
			<td id="coder--password"><a href="./values.yaml#L324">coder.password</a></td>
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
			<td id="coder--template"><a href="./values.yaml#L326">coder.template</a></td>
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
      "image": "dremio/dremio-oss:24.1.0",
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
      "image": "smartcommunitylab/sqlpad:nonroot",
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
			<td id="coder--template--customTemplates"><a href="./values.yaml#L331">coder.template.customTemplates</a></td>
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
    "image": "dremio/dremio-oss:24.1.0",
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
    "image": "smartcommunitylab/sqlpad:nonroot",
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
			<td id="coder--template--upgrade"><a href="./values.yaml#L394">coder.template.upgrade</a></td>
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
			<td id="coder--template--upgrade--enabled"><a href="./values.yaml#L396">coder.template.upgrade.enabled</a></td>
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
			<td id="coder--template--upgrade--token"><a href="./values.yaml#L399">coder.template.upgrade.token</a></td>
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
			<td id="coder--username"><a href="./values.yaml#L401">coder.username</a></td>
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
			<td id="core"><a href="./values.yaml#L404">core</a></td>
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
      "memReq": "64m",
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
    "type": "NodePort"
  },
  "solr": {
    "collection": {
      "initialize": {
        "enabled": false,
        "image": "curlimages/curl:8.15.0",
        "securityJsonSecret": ""
      },
      "name": "dhcore"
    },
    "credentials": {
      "existingCollectionSecret": {
        "passwordKey": "",
        "secretName": ""
      },
      "existingSecurityJsonSecret": {
        "adminKey": "",
        "secretName": ""
      },
      "user": "user"
    },
    "enabled": false,
    "fullNameOverride": "digitalhub",
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
			<td id="core--enabled"><a href="./values.yaml#L406">core.enabled</a></td>
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
			<td id="core--additionalConfig"><a href="./values.yaml#L408">core.additionalConfig</a></td>
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
    "memReq": "64m",
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
			<td id="core--additionalConfig--debug"><a href="./values.yaml#L410">core.additionalConfig.debug</a></td>
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
			<td id="core--additionalConfig--debug--enableLogs"><a href="./values.yaml#L412">core.additionalConfig.debug.enableLogs</a></td>
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
			<td id="core--additionalConfig--debug--enableMetrics"><a href="./values.yaml#L414">core.additionalConfig.debug.enableMetrics</a></td>
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
			<td id="core--additionalConfig--resources"><a href="./values.yaml#L416">core.additionalConfig.resources</a></td>
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
  "memReq": "64m",
  "pvcLim": "",
  "pvcReq": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--resources--cpuLim"><a href="./values.yaml#L418">core.additionalConfig.resources.cpuLim</a></td>
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
			<td id="core--additionalConfig--resources--cpuReq"><a href="./values.yaml#L420">core.additionalConfig.resources.cpuReq</a></td>
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
			<td id="core--additionalConfig--resources--gpuKey"><a href="./values.yaml#L422">core.additionalConfig.resources.gpuKey</a></td>
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
			<td id="core--additionalConfig--resources--memLim"><a href="./values.yaml#L424">core.additionalConfig.resources.memLim</a></td>
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
			<td id="core--additionalConfig--resources--memReq"><a href="./values.yaml#L426">core.additionalConfig.resources.memReq</a></td>
			<td>
string
</td>
			<td>Memory request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"64m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--resources--pvcLim"><a href="./values.yaml#L428">core.additionalConfig.resources.pvcLim</a></td>
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
			<td id="core--additionalConfig--resources--pvcReq"><a href="./values.yaml#L430">core.additionalConfig.resources.pvcReq</a></td>
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
			<td id="core--additionalConfig--security"><a href="./values.yaml#L432">core.additionalConfig.security</a></td>
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
			<td id="core--additionalConfig--security--disableRoot"><a href="./values.yaml#L434">core.additionalConfig.security.disableRoot</a></td>
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
			<td id="core--argoWorkflow"><a href="./values.yaml#L436">core.argoWorkflow</a></td>
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
			<td id="core--argoWorkflow--configmap"><a href="./values.yaml#L438">core.argoWorkflow.configmap</a></td>
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
			<td id="core--argoWorkflow--key"><a href="./values.yaml#L440">core.argoWorkflow.key</a></td>
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
			<td id="core--argoWorkflow--serviceAccount"><a href="./values.yaml#L442">core.argoWorkflow.serviceAccount</a></td>
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
			<td id="core--argoWorkflow--user"><a href="./values.yaml#L444">core.argoWorkflow.user</a></td>
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
			<td id="core--authentication"><a href="./values.yaml#L446">core.authentication</a></td>
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
			<td id="core--authentication--openId"><a href="./values.yaml#L456">core.authentication.openId</a></td>
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
			<td id="core--authentication--openId--enabled"><a href="./values.yaml#L458">core.authentication.openId.enabled</a></td>
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
			<td id="core--commonCredsSecret"><a href="./values.yaml#L466">core.commonCredsSecret</a></td>
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
			<td id="core--commonCredsSecret--useExistingCommonCredsSecret"><a href="./values.yaml#L470">core.commonCredsSecret.useExistingCommonCredsSecret</a></td>
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
			<td id="core--coreAuthCreds"><a href="./values.yaml#L472">core.coreAuthCreds</a></td>
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
			<td id="core--coreAuthCreds--clientId"><a href="./values.yaml#L474">core.coreAuthCreds.clientId</a></td>
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
			<td id="core--coreAuthCreds--clientSecret"><a href="./values.yaml#L476">core.coreAuthCreds.clientSecret</a></td>
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
			<td id="core--coreAuthCreds--existingSecret"><a href="./values.yaml#L478">core.coreAuthCreds.existingSecret</a></td>
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
			<td id="core--coreAuthCreds--existingSecret--clientIdKey"><a href="./values.yaml#L480">core.coreAuthCreds.existingSecret.clientIdKey</a></td>
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
			<td id="core--coreAuthCreds--existingSecret--clientSecretKey"><a href="./values.yaml#L482">core.coreAuthCreds.existingSecret.clientSecretKey</a></td>
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
			<td id="core--coreAuthCreds--existingSecret--secretName"><a href="./values.yaml#L484">core.coreAuthCreds.existingSecret.secretName</a></td>
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
			<td id="core--databaseProvider"><a href="./values.yaml#L486">core.databaseProvider</a></td>
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
			<td id="core--databaseProvider--database"><a href="./values.yaml#L488">core.databaseProvider.database</a></td>
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
			<td id="core--databaseProvider--host"><a href="./values.yaml#L490">core.databaseProvider.host</a></td>
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
			<td id="core--databaseProvider--ownerSecret"><a href="./values.yaml#L492">core.databaseProvider.ownerSecret</a></td>
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
			<td id="core--databaseProvider--port"><a href="./values.yaml#L494">core.databaseProvider.port</a></td>
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
			<td id="core--kanikoArgs"><a href="./values.yaml#L496">core.kanikoArgs</a></td>
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
			<td id="core--kubeai"><a href="./values.yaml#L498">core.kubeai</a></td>
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
			<td id="core--kubeai--enabled"><a href="./values.yaml#L500">core.kubeai.enabled</a></td>
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
			<td id="core--kubeai--port"><a href="./values.yaml#L502">core.kubeai.port</a></td>
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
			<td id="core--kubeai--serviceName"><a href="./values.yaml#L504">core.kubeai.serviceName</a></td>
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
			<td id="core--postgres"><a href="./values.yaml#L506">core.postgres</a></td>
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
			<td id="core--postgres--credentials"><a href="./values.yaml#L508">core.postgres.credentials</a></td>
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
			<td id="core--postgres--credentials--existingSecret"><a href="./values.yaml#L510">core.postgres.credentials.existingSecret</a></td>
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
			<td id="core--postgres--credentials--existingSecret--name"><a href="./values.yaml#L512">core.postgres.credentials.existingSecret.name</a></td>
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
			<td id="core--postgres--credentials--existingSecret--passwordKey"><a href="./values.yaml#L514">core.postgres.credentials.existingSecret.passwordKey</a></td>
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
			<td id="core--postgres--credentials--existingSecret--usernameKey"><a href="./values.yaml#L516">core.postgres.credentials.existingSecret.usernameKey</a></td>
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
			<td id="core--postgres--credentials--password"><a href="./values.yaml#L518">core.postgres.credentials.password</a></td>
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
			<td id="core--postgres--credentials--username"><a href="./values.yaml#L520">core.postgres.credentials.username</a></td>
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
			<td id="core--postgres--database"><a href="./values.yaml#L522">core.postgres.database</a></td>
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
			<td id="core--postgres--host"><a href="./values.yaml#L524">core.postgres.host</a></td>
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
			<td id="core--postgres--port"><a href="./values.yaml#L526">core.postgres.port</a></td>
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
			<td id="core--postgres--schema"><a href="./values.yaml#L528">core.postgres.schema</a></td>
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
			<td id="core--s3"><a href="./values.yaml#L530">core.s3</a></td>
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
			<td id="core--s3--accessKey"><a href="./values.yaml#L535">core.s3.accessKey</a></td>
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
			<td id="core--s3--bucket"><a href="./values.yaml#L537">core.s3.bucket</a></td>
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
			<td id="core--s3--dynamicCreds"><a href="./values.yaml#L539">core.s3.dynamicCreds</a></td>
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
			<td id="core--s3--dynamicCreds--enabled"><a href="./values.yaml#L541">core.s3.dynamicCreds.enabled</a></td>
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
			<td id="core--s3--endpoint"><a href="./values.yaml#L543">core.s3.endpoint</a></td>
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
			<td id="core--s3--existingSecret"><a href="./values.yaml#L546">core.s3.existingSecret</a></td>
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
			<td id="core--s3--existingSecret--accessKeyKey"><a href="./values.yaml#L548">core.s3.existingSecret.accessKeyKey</a></td>
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
			<td id="core--s3--existingSecret--name"><a href="./values.yaml#L550">core.s3.existingSecret.name</a></td>
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
			<td id="core--s3--existingSecret--secretKeyKey"><a href="./values.yaml#L552">core.s3.existingSecret.secretKeyKey</a></td>
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
			<td id="core--s3--port"><a href="./values.yaml#L554">core.s3.port</a></td>
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
			<td id="core--s3--protocol"><a href="./values.yaml#L556">core.s3.protocol</a></td>
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
			<td id="core--s3--publicUrl"><a href="./values.yaml#L558">core.s3.publicUrl</a></td>
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
			<td id="core--s3--region"><a href="./values.yaml#L560">core.s3.region</a></td>
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
			<td id="core--s3--secretKey"><a href="./values.yaml#L563">core.s3.secretKey</a></td>
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
			<td id="core--service"><a href="./values.yaml#L565">core.service</a></td>
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
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--service--httpNodePort"><a href="./values.yaml#L567">core.service.httpNodePort</a></td>
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
			<td id="core--service--type"><a href="./values.yaml#L569">core.service.type</a></td>
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
			<td id="core--solr"><a href="./values.yaml#L571">core.solr</a></td>
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
  "collection": {
    "initialize": {
      "enabled": false,
      "image": "curlimages/curl:8.15.0",
      "securityJsonSecret": ""
    },
    "name": "dhcore"
  },
  "credentials": {
    "existingCollectionSecret": {
      "passwordKey": "",
      "secretName": ""
    },
    "existingSecurityJsonSecret": {
      "adminKey": "",
      "secretName": ""
    },
    "user": "user"
  },
  "enabled": false,
  "fullNameOverride": "digitalhub",
  "url": "http://digitalhub-solrcloud-common/solr"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--enabled"><a href="./values.yaml#L573">core.solr.enabled</a></td>
			<td>
bool
</td>
			<td>Set this value to true if you want to use Core with Solr</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection"><a href="./values.yaml#L575">core.solr.collection</a></td>
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
  "initialize": {
    "enabled": false,
    "image": "curlimages/curl:8.15.0",
    "securityJsonSecret": ""
  },
  "name": "dhcore"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--initialize"><a href="./values.yaml#L577">core.solr.collection.initialize</a></td>
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
  "image": "curlimages/curl:8.15.0",
  "securityJsonSecret": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--initialize--enabled"><a href="./values.yaml#L579">core.solr.collection.initialize.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Solr collection initialization by script, use it if you have set Basic Auth for Solr</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--initialize--image"><a href="./values.yaml#L581">core.solr.collection.initialize.image</a></td>
			<td>
string
</td>
			<td>Initialization image</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"curlimages/curl:8.15.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--initialize--securityJsonSecret"><a href="./values.yaml#L585">core.solr.collection.initialize.securityJsonSecret</a></td>
			<td>
string
</td>
			<td>Name of the secret containing the Solr security.json.  Specify the name of your secret here if you want the Platform installation to create a compatible secret for you.  WARNING: In production, choose either core.solr.credentials.existingCollectionSecret or core.solr.credentials.existingSecurityJsonSecret, depending on your use case, instead of this value.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--name"><a href="./values.yaml#L587">core.solr.collection.name</a></td>
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
			<td id="core--solr--credentials"><a href="./values.yaml#L589">core.solr.credentials</a></td>
			<td>
object
</td>
			<td>Credentials configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "existingCollectionSecret": {
    "passwordKey": "",
    "secretName": ""
  },
  "existingSecurityJsonSecret": {
    "adminKey": "",
    "secretName": ""
  },
  "user": "user"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--credentials--existingCollectionSecret"><a href="./values.yaml#L593">core.solr.credentials.existingCollectionSecret</a></td>
			<td>
object
</td>
			<td>Collection credentials secret configuration  WARNING: this feature is intended ONLY for instances in which you don't have access to the security.json secret.  Uses a secret that contains a user with access to a specific collection. (The user MUST be also present in the security.json secret)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "passwordKey": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--credentials--existingCollectionSecret--passwordKey"><a href="./values.yaml#L595">core.solr.credentials.existingCollectionSecret.passwordKey</a></td>
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
			<td id="core--solr--credentials--existingCollectionSecret--secretName"><a href="./values.yaml#L597">core.solr.credentials.existingCollectionSecret.secretName</a></td>
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
			<td id="core--solr--credentials--existingSecurityJsonSecret"><a href="./values.yaml#L599">core.solr.credentials.existingSecurityJsonSecret</a></td>
			<td>
object
</td>
			<td>Configuration for an existing security json secret for Solr</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "adminKey": "",
  "secretName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--credentials--existingSecurityJsonSecret--adminKey"><a href="./values.yaml#L601">core.solr.credentials.existingSecurityJsonSecret.adminKey</a></td>
			<td>
string
</td>
			<td>Key of the admin user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--credentials--existingSecurityJsonSecret--secretName"><a href="./values.yaml#L603">core.solr.credentials.existingSecurityJsonSecret.secretName</a></td>
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
			<td id="core--solr--credentials--user"><a href="./values.yaml#L605">core.solr.credentials.user</a></td>
			<td>
string
</td>
			<td>Specify the solr user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"user"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--fullNameOverride"><a href="./values.yaml#L607">core.solr.fullNameOverride</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--url"><a href="./values.yaml#L609">core.solr.url</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http://digitalhub-solrcloud-common/solr"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts"><a href="./values.yaml#L611">core.sts</a></td>
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
			<td id="core--sts--enabled"><a href="./values.yaml#L613">core.sts.enabled</a></td>
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
			<td id="core--sts--client"><a href="./values.yaml#L615">core.sts.client</a></td>
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
			<td id="core--sts--client--clientId"><a href="./values.yaml#L617">core.sts.client.clientId</a></td>
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
			<td id="core--sts--client--clientSecret"><a href="./values.yaml#L619">core.sts.client.clientSecret</a></td>
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
			<td id="core--sts--credentials"><a href="./values.yaml#L621">core.sts.credentials</a></td>
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
			<td id="core--sts--credentials--roles"><a href="./values.yaml#L624">core.sts.credentials.roles</a></td>
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
			<td id="core--sts--databaseProvider"><a href="./values.yaml#L626">core.sts.databaseProvider</a></td>
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
			<td id="core--sts--databaseProvider--enabled"><a href="./values.yaml#L628">core.sts.databaseProvider.enabled</a></td>
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
			<td id="core--sts--databaseProvider--credentials"><a href="./values.yaml#L630">core.sts.databaseProvider.credentials</a></td>
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
			<td id="core--sts--databaseProvider--credentials--existingSecret"><a href="./values.yaml#L633">core.sts.databaseProvider.credentials.existingSecret</a></td>
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
			<td id="core--sts--databaseProvider--credentials--existingSecret--name"><a href="./values.yaml#L635">core.sts.databaseProvider.credentials.existingSecret.name</a></td>
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
			<td id="core--sts--databaseProvider--credentials--existingSecret--passwordKey"><a href="./values.yaml#L637">core.sts.databaseProvider.credentials.existingSecret.passwordKey</a></td>
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
			<td id="core--sts--databaseProvider--credentials--existingSecret--usernameKey"><a href="./values.yaml#L639">core.sts.databaseProvider.credentials.existingSecret.usernameKey</a></td>
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
			<td id="core--sts--databaseProvider--credentials--password"><a href="./values.yaml#L642">core.sts.databaseProvider.credentials.password</a></td>
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
			<td id="core--sts--databaseProvider--credentials--username"><a href="./values.yaml#L645">core.sts.databaseProvider.credentials.username</a></td>
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
			<td id="core--sts--jwt"><a href="./values.yaml#L647">core.sts.jwt</a></td>
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
			<td id="core--sts--jwt--issuerUri"><a href="./values.yaml#L649">core.sts.jwt.issuerUri</a></td>
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
			<td id="core--sts--stsDb"><a href="./values.yaml#L651">core.sts.stsDb</a></td>
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
			<td id="core--sts--stsDb--credentials"><a href="./values.yaml#L653">core.sts.stsDb.credentials</a></td>
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
			<td id="core--sts--stsDb--credentials--existingSecret"><a href="./values.yaml#L656">core.sts.stsDb.credentials.existingSecret</a></td>
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
			<td id="core--sts--stsDb--credentials--existingSecret--name"><a href="./values.yaml#L658">core.sts.stsDb.credentials.existingSecret.name</a></td>
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
			<td id="core--sts--stsDb--credentials--existingSecret--passwordKey"><a href="./values.yaml#L660">core.sts.stsDb.credentials.existingSecret.passwordKey</a></td>
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
			<td id="core--sts--stsDb--credentials--existingSecret--usernameKey"><a href="./values.yaml#L662">core.sts.stsDb.credentials.existingSecret.usernameKey</a></td>
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
			<td id="core--sts--stsDb--database"><a href="./values.yaml#L664">core.sts.stsDb.database</a></td>
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
			<td id="core--sts--stsDb--driver"><a href="./values.yaml#L666">core.sts.stsDb.driver</a></td>
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
			<td id="core--sts--stsDb--host"><a href="./values.yaml#L668">core.sts.stsDb.host</a></td>
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
			<td id="core--sts--stsDb--platform"><a href="./values.yaml#L670">core.sts.stsDb.platform</a></td>
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
			<td id="core--sts--stsDb--port"><a href="./values.yaml#L672">core.sts.stsDb.port</a></td>
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
			<td id="core--sts--stsDb--schema"><a href="./values.yaml#L674">core.sts.stsDb.schema</a></td>
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
			<td id="dashboard"><a href="./values.yaml#L677">dashboard</a></td>
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
			<td id="dashboard--additional-components"><a href="./values.yaml#L679">dashboard.additional-components</a></td>
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
			<td id="dashboard--additional-components--enabled"><a href="./values.yaml#L681">dashboard.additional-components.enabled</a></td>
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
			<td id="dashboard--additional-components--apps"><a href="./values.yaml#L683">dashboard.additional-components.apps</a></td>
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
			<td id="dashboard--affinity"><a href="./values.yaml#L714">dashboard.affinity</a></td>
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
			<td id="dashboard--autoscaling"><a href="./values.yaml#L716">dashboard.autoscaling</a></td>
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
			<td id="dashboard--autoscaling--enabled"><a href="./values.yaml#L718">dashboard.autoscaling.enabled</a></td>
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
			<td id="dashboard--autoscaling--maxReplicas"><a href="./values.yaml#L720">dashboard.autoscaling.maxReplicas</a></td>
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
			<td id="dashboard--autoscaling--minReplicas"><a href="./values.yaml#L722">dashboard.autoscaling.minReplicas</a></td>
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
			<td id="dashboard--autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L724">dashboard.autoscaling.targetCPUUtilizationPercentage</a></td>
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
			<td id="dashboard--image"><a href="./values.yaml#L726">dashboard.image</a></td>
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
			<td id="dashboard--image--pullPolicy"><a href="./values.yaml#L728">dashboard.image.pullPolicy</a></td>
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
			<td id="dashboard--image--repository"><a href="./values.yaml#L730">dashboard.image.repository</a></td>
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
			<td id="dashboard--image--tag"><a href="./values.yaml#L732">dashboard.image.tag</a></td>
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
			<td id="dashboard--imagePullSecrets"><a href="./values.yaml#L737">dashboard.imagePullSecrets</a></td>
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
			<td id="dashboard--ingress"><a href="./values.yaml#L739">dashboard.ingress</a></td>
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
			<td id="dashboard--ingress--enabled"><a href="./values.yaml#L741">dashboard.ingress.enabled</a></td>
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
			<td id="dashboard--ingress--annotations"><a href="./values.yaml#L743">dashboard.ingress.annotations</a></td>
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
			<td id="dashboard--ingress--className"><a href="./values.yaml#L745">dashboard.ingress.className</a></td>
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
			<td id="dashboard--ingress--hosts"><a href="./values.yaml#L747">dashboard.ingress.hosts</a></td>
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
			<td id="dashboard--ingress--tls"><a href="./values.yaml#L753">dashboard.ingress.tls</a></td>
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
			<td id="dashboard--nodeSelector"><a href="./values.yaml#L758">dashboard.nodeSelector</a></td>
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
			<td id="dashboard--oidc"><a href="./values.yaml#L760">dashboard.oidc</a></td>
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
			<td id="dashboard--oidc--enabled"><a href="./values.yaml#L762">dashboard.oidc.enabled</a></td>
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
			<td id="dashboard--oidc--audience"><a href="./values.yaml#L764">dashboard.oidc.audience</a></td>
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
			<td id="dashboard--oidc--audience--clientId"><a href="./values.yaml#L767">dashboard.oidc.audience.clientId</a></td>
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
			<td id="dashboard--oidc--audience--externalSecret"><a href="./values.yaml#L769">dashboard.oidc.audience.externalSecret</a></td>
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
			<td id="dashboard--oidc--audience--externalSecret--key"><a href="./values.yaml#L771">dashboard.oidc.audience.externalSecret.key</a></td>
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
			<td id="dashboard--oidc--audience--externalSecret--name"><a href="./values.yaml#L773">dashboard.oidc.audience.externalSecret.name</a></td>
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
			<td id="dashboard--oidc--config"><a href="./values.yaml#L775">dashboard.oidc.config</a></td>
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
			<td id="dashboard--oidc--config--issuer"><a href="./values.yaml#L777">dashboard.oidc.config.issuer</a></td>
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
			<td id="dashboard--podAnnotations"><a href="./values.yaml#L779">dashboard.podAnnotations</a></td>
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
			<td id="dashboard--podLabels"><a href="./values.yaml#L781">dashboard.podLabels</a></td>
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
			<td id="dashboard--podSecurityContext"><a href="./values.yaml#L783">dashboard.podSecurityContext</a></td>
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
			<td id="dashboard--podSecurityContext--fsGroup"><a href="./values.yaml#L785">dashboard.podSecurityContext.fsGroup</a></td>
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
			<td id="dashboard--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L787">dashboard.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="dashboard--podSecurityContext--runAsUser"><a href="./values.yaml#L789">dashboard.podSecurityContext.runAsUser</a></td>
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
			<td id="dashboard--podSecurityContext--seccompProfile"><a href="./values.yaml#L791">dashboard.podSecurityContext.seccompProfile</a></td>
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
			<td id="dashboard--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L793">dashboard.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="dashboard--replicaCount"><a href="./values.yaml#L795">dashboard.replicaCount</a></td>
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
			<td id="dashboard--resources"><a href="./values.yaml#L797">dashboard.resources</a></td>
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
			<td id="dashboard--resources--limits"><a href="./values.yaml#L799">dashboard.resources.limits</a></td>
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
			<td id="dashboard--resources--limits--cpu"><a href="./values.yaml#L801">dashboard.resources.limits.cpu</a></td>
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
			<td id="dashboard--resources--limits--memory"><a href="./values.yaml#L803">dashboard.resources.limits.memory</a></td>
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
			<td id="dashboard--resources--requests"><a href="./values.yaml#L805">dashboard.resources.requests</a></td>
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
			<td id="dashboard--resources--requests--cpu"><a href="./values.yaml#L807">dashboard.resources.requests.cpu</a></td>
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
			<td id="dashboard--resources--requests--memory"><a href="./values.yaml#L809">dashboard.resources.requests.memory</a></td>
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
			<td id="dashboard--securityContext"><a href="./values.yaml#L811">dashboard.securityContext</a></td>
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
			<td id="dashboard--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L813">dashboard.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="dashboard--securityContext--capabilities"><a href="./values.yaml#L815">dashboard.securityContext.capabilities</a></td>
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
			<td id="dashboard--securityContext--capabilities--drop"><a href="./values.yaml#L817">dashboard.securityContext.capabilities.drop</a></td>
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
			<td id="dashboard--securityContext--runAsNonRoot"><a href="./values.yaml#L820">dashboard.securityContext.runAsNonRoot</a></td>
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
			<td id="dashboard--securityContext--runAsUser"><a href="./values.yaml#L822">dashboard.securityContext.runAsUser</a></td>
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
			<td id="dashboard--securityContext--seccompProfile"><a href="./values.yaml#L824">dashboard.securityContext.seccompProfile</a></td>
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
			<td id="dashboard--securityContext--seccompProfile--type"><a href="./values.yaml#L826">dashboard.securityContext.seccompProfile.type</a></td>
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
			<td id="dashboard--service"><a href="./values.yaml#L828">dashboard.service</a></td>
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
			<td id="dashboard--service--httpNodePort"><a href="./values.yaml#L830">dashboard.service.httpNodePort</a></td>
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
			<td id="dashboard--service--port"><a href="./values.yaml#L832">dashboard.service.port</a></td>
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
			<td id="dashboard--service--type"><a href="./values.yaml#L834">dashboard.service.type</a></td>
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
			<td id="dashboard--serviceAccount"><a href="./values.yaml#L836">dashboard.serviceAccount</a></td>
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
			<td id="dashboard--serviceAccount--annotations"><a href="./values.yaml#L838">dashboard.serviceAccount.annotations</a></td>
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
			<td id="dashboard--serviceAccount--automount"><a href="./values.yaml#L840">dashboard.serviceAccount.automount</a></td>
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
			<td id="dashboard--serviceAccount--create"><a href="./values.yaml#L842">dashboard.serviceAccount.create</a></td>
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
			<td id="dashboard--serviceAccount--name"><a href="./values.yaml#L844">dashboard.serviceAccount.name</a></td>
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
			<td id="dashboard--tolerations"><a href="./values.yaml#L846">dashboard.tolerations</a></td>
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
			<td id="dashboard--volumes"><a href="./values.yaml#L848">dashboard.volumes</a></td>
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
			<td id="docker-registry"><a href="./values.yaml#L851">docker-registry</a></td>
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
			<td id="docker-registry--enabled"><a href="./values.yaml#L853">docker-registry.enabled</a></td>
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
			<td id="docker-registry--className"><a href="./values.yaml#L855">docker-registry.className</a></td>
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
			<td id="docker-registry--containerSecurityContext"><a href="./values.yaml#L857">docker-registry.containerSecurityContext</a></td>
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
			<td id="docker-registry--fullnameOverride"><a href="./values.yaml#L872">docker-registry.fullnameOverride</a></td>
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
			<td id="docker-registry--ingress"><a href="./values.yaml#L874">docker-registry.ingress</a></td>
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
			<td id="docker-registry--ingress--enabled"><a href="./values.yaml#L876">docker-registry.ingress.enabled</a></td>
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
			<td id="docker-registry--ingress--hosts"><a href="./values.yaml#L878">docker-registry.ingress.hosts</a></td>
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
			<td id="docker-registry--ingress--path"><a href="./values.yaml#L881">docker-registry.ingress.path</a></td>
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
			<td id="docker-registry--persistence"><a href="./values.yaml#L883">docker-registry.persistence</a></td>
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
			<td id="docker-registry--persistence--enabled"><a href="./values.yaml#L885">docker-registry.persistence.enabled</a></td>
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
			<td id="docker-registry--persistence--accessMode"><a href="./values.yaml#L887">docker-registry.persistence.accessMode</a></td>
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
			<td id="docker-registry--persistence--size"><a href="./values.yaml#L889">docker-registry.persistence.size</a></td>
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
			<td id="docker-registry--securityContext"><a href="./values.yaml#L891">docker-registry.securityContext</a></td>
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
			<td id="docker-registry--service"><a href="./values.yaml#L899">docker-registry.service</a></td>
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
			<td id="docker-registry--service--nodePort"><a href="./values.yaml#L901">docker-registry.service.nodePort</a></td>
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
			<td id="docker-registry--service--type"><a href="./values.yaml#L903">docker-registry.service.type</a></td>
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
			<td id="docker-registry--updateStrategy"><a href="./values.yaml#L905">docker-registry.updateStrategy</a></td>
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
			<td id="docker-registry--updateStrategy--type"><a href="./values.yaml#L907">docker-registry.updateStrategy.type</a></td>
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
			<td id="dremio-rest-server-operator"><a href="./values.yaml#L910">dremio-rest-server-operator</a></td>
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
  "enabled": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dremio-rest-server-operator--enabled"><a href="./values.yaml#L912">dremio-rest-server-operator.enabled</a></td>
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
			<td id="ext-postgres-operator"><a href="./values.yaml#L915">ext-postgres-operator</a></td>
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
			<td id="ext-postgres-operator--enabled"><a href="./values.yaml#L917">ext-postgres-operator.enabled</a></td>
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
			<td id="ext-postgres-operator--image"><a href="./values.yaml#L919">ext-postgres-operator.image</a></td>
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
			<td id="ext-postgres-operator--image--tag"><a href="./values.yaml#L921">ext-postgres-operator.image.tag</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext"><a href="./values.yaml#L923">ext-postgres-operator.podSecurityContext</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L925">ext-postgres-operator.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--seccompProfile"><a href="./values.yaml#L927">ext-postgres-operator.podSecurityContext.seccompProfile</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L929">ext-postgres-operator.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="ext-postgres-operator--postgres"><a href="./values.yaml#L931">ext-postgres-operator.postgres</a></td>
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
			<td id="ext-postgres-operator--postgres--cloud_provider"><a href="./values.yaml#L933">ext-postgres-operator.postgres.cloud_provider</a></td>
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
			<td id="ext-postgres-operator--postgres--default_database"><a href="./values.yaml#L935">ext-postgres-operator.postgres.default_database</a></td>
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
			<td id="ext-postgres-operator--postgres--host"><a href="./values.yaml#L937">ext-postgres-operator.postgres.host</a></td>
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
			<td id="ext-postgres-operator--postgres--password"><a href="./values.yaml#L940">ext-postgres-operator.postgres.password</a></td>
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
			<td id="ext-postgres-operator--postgres--uri_args"><a href="./values.yaml#L942">ext-postgres-operator.postgres.uri_args</a></td>
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
			<td id="ext-postgres-operator--postgres--user"><a href="./values.yaml#L945">ext-postgres-operator.postgres.user</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets"><a href="./values.yaml#L948">ext-postgres-operator.postgresCredsExistingSecrets</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password"><a href="./values.yaml#L950">ext-postgres-operator.postgresCredsExistingSecrets.password</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password--secretKey"><a href="./values.yaml#L952">ext-postgres-operator.postgresCredsExistingSecrets.password.secretKey</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password--secretName"><a href="./values.yaml#L954">ext-postgres-operator.postgresCredsExistingSecrets.password.secretName</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username"><a href="./values.yaml#L956">ext-postgres-operator.postgresCredsExistingSecrets.username</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username--secretKey"><a href="./values.yaml#L958">ext-postgres-operator.postgresCredsExistingSecrets.username.secretKey</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username--secretName"><a href="./values.yaml#L960">ext-postgres-operator.postgresCredsExistingSecrets.username.secretName</a></td>
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
			<td id="ext-postgres-operator--securityContext"><a href="./values.yaml#L962">ext-postgres-operator.securityContext</a></td>
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
			<td id="ext-postgres-operator--securityContext--seccompProfile"><a href="./values.yaml#L964">ext-postgres-operator.securityContext.seccompProfile</a></td>
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
			<td id="ext-postgres-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L966">ext-postgres-operator.securityContext.seccompProfile.type</a></td>
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
			<td id="jobs"><a href="./values.yaml#L969">jobs</a></td>
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
			<td id="jobs--delete"><a href="./values.yaml#L971">jobs.delete</a></td>
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
			<td id="jobs--delete--securityContext"><a href="./values.yaml#L973">jobs.delete.securityContext</a></td>
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
			<td id="jobs--delete--securityContext--readOnlyRootFilesystem"><a href="./values.yaml#L975">jobs.delete.securityContext.readOnlyRootFilesystem</a></td>
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
			<td id="kubeai"><a href="./values.yaml#L979">kubeai</a></td>
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
			<td id="kubeai--enabled"><a href="./values.yaml#L981">kubeai.enabled</a></td>
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
			<td id="kubeai--crds"><a href="./values.yaml#L983">kubeai.crds</a></td>
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
			<td id="kubeai--crds--enabled"><a href="./values.yaml#L985">kubeai.crds.enabled</a></td>
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
			<td id="kubeai--open-webui"><a href="./values.yaml#L987">kubeai.open-webui</a></td>
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
			<td id="kubeai--open-webui--enabled"><a href="./values.yaml#L990">kubeai.open-webui.enabled</a></td>
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
			<td id="kubernetes-resource-manager"><a href="./values.yaml#L993">kubernetes-resource-manager</a></td>
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
			<td id="kubernetes-resource-manager--enabled"><a href="./values.yaml#L995">kubernetes-resource-manager.enabled</a></td>
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
			<td id="kubernetes-resource-manager--resourceSelectors"><a href="./values.yaml#L997">kubernetes-resource-manager.resourceSelectors</a></td>
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
			<td id="kubernetes-resource-manager--resourceSelectors--secrets"><a href="./values.yaml#L999">kubernetes-resource-manager.resourceSelectors.secrets</a></td>
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
			<td id="kubernetes-resource-manager--resourceSelectors--secrets--names"><a href="./values.yaml#L1001">kubernetes-resource-manager.resourceSelectors.secrets.names</a></td>
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
			<td id="kubernetes-resource-manager--service"><a href="./values.yaml#L1003">kubernetes-resource-manager.service</a></td>
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
			<td id="kubernetes-resource-manager--service--nodePort"><a href="./values.yaml#L1005">kubernetes-resource-manager.service.nodePort</a></td>
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
			<td id="kubernetes-resource-manager--service--type"><a href="./values.yaml#L1007">kubernetes-resource-manager.service.type</a></td>
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
			<td id="open-webui"><a href="./values.yaml#L1011">open-webui</a></td>
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
			<td id="open-webui--enabled"><a href="./values.yaml#L1013">open-webui.enabled</a></td>
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
			<td id="open-webui--extraEnvFrom"><a href="./values.yaml#L1029">open-webui.extraEnvFrom</a></td>
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
			<td id="open-webui--extraEnvVars"><a href="./values.yaml#L1031">open-webui.extraEnvVars</a></td>
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
			<td id="open-webui--ollama"><a href="./values.yaml#L1056">open-webui.ollama</a></td>
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
			<td id="open-webui--ollama--enabled"><a href="./values.yaml#L1058">open-webui.ollama.enabled</a></td>
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
			<td id="open-webui--openaiBaseApiUrl"><a href="./values.yaml#L1061">open-webui.openaiBaseApiUrl</a></td>
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
			<td id="open-webui--pipelines"><a href="./values.yaml#L1063">open-webui.pipelines</a></td>
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
			<td id="open-webui--pipelines--enabled"><a href="./values.yaml#L1065">open-webui.pipelines.enabled</a></td>
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
			<td id="open-webui--service"><a href="./values.yaml#L1072">open-webui.service</a></td>
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
			<td id="open-webui--service--nodePort"><a href="./values.yaml#L1074">open-webui.service.nodePort</a></td>
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
			<td id="open-webui--service--type"><a href="./values.yaml#L1076">open-webui.service.type</a></td>
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
			<td id="platformPackages"><a href="./values.yaml#L1082">platformPackages</a></td>
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
      "tag": "0.13.0"
    },
    {
      "name": "digitalhub-runtime-dbt",
      "tag": "0.13.0"
    },
    {
      "name": "digitalhub-runtime-hera",
      "tag": "0.13.0"
    },
    {
      "name": "digitalhub-runtime-kfp",
      "tag": "0.13.0"
    },
    {
      "name": "digitalhub-runtime-modelserve",
      "tag": "0.13.0"
    },
    {
      "name": "digitalhub-runtime-python",
      "tag": "0.13.0"
    },
    {
      "name": "digitalhub[full]",
      "tag": "0.13.0"
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
			<td id="platformPackages--deleteOnCompletion"><a href="./values.yaml#L1084">platformPackages.deleteOnCompletion</a></td>
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
			<td id="platformPackages--image"><a href="./values.yaml#L1086">platformPackages.image</a></td>
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
			<td id="platformPackages--packages"><a href="./values.yaml#L1090">platformPackages.packages</a></td>
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
    "tag": "0.13.0"
  },
  {
    "name": "digitalhub-runtime-dbt",
    "tag": "0.13.0"
  },
  {
    "name": "digitalhub-runtime-hera",
    "tag": "0.13.0"
  },
  {
    "name": "digitalhub-runtime-kfp",
    "tag": "0.13.0"
  },
  {
    "name": "digitalhub-runtime-modelserve",
    "tag": "0.13.0"
  },
  {
    "name": "digitalhub-runtime-python",
    "tag": "0.13.0"
  },
  {
    "name": "digitalhub[full]",
    "tag": "0.13.0"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="platformPackages--preRelease"><a href="./values.yaml#L1108">platformPackages.preRelease</a></td>
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
			<td id="platformPackages--tag"><a href="./values.yaml#L1110">platformPackages.tag</a></td>
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
			<td id="postgres-operator"><a href="./values.yaml#L1113">postgres-operator</a></td>
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
			<td id="postgres-operator--enabled"><a href="./values.yaml#L1115">postgres-operator.enabled</a></td>
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
			<td id="postgres-operator--databases"><a href="./values.yaml#L1117">postgres-operator.databases</a></td>
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
			<td id="postgres-operator--databases--coder"><a href="./values.yaml#L1119">postgres-operator.databases.coder</a></td>
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
			<td id="postgres-operator--databases--coder--enabled"><a href="./values.yaml#L1121">postgres-operator.databases.coder.enabled</a></td>
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
			<td id="postgres-operator--databases--coder--resources"><a href="./values.yaml#L1123">postgres-operator.databases.coder.resources</a></td>
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
			<td id="postgres-operator--databases--coder--resources--limits"><a href="./values.yaml#L1125">postgres-operator.databases.coder.resources.limits</a></td>
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
			<td id="postgres-operator--databases--coder--resources--limits--cpu"><a href="./values.yaml#L1127">postgres-operator.databases.coder.resources.limits.cpu</a></td>
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
			<td id="postgres-operator--databases--coder--resources--limits--memory"><a href="./values.yaml#L1129">postgres-operator.databases.coder.resources.limits.memory</a></td>
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
			<td id="postgres-operator--databases--coder--resources--requests"><a href="./values.yaml#L1131">postgres-operator.databases.coder.resources.requests</a></td>
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
			<td id="postgres-operator--databases--coder--resources--requests--cpu"><a href="./values.yaml#L1133">postgres-operator.databases.coder.resources.requests.cpu</a></td>
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
			<td id="postgres-operator--databases--coder--resources--requests--memory"><a href="./values.yaml#L1135">postgres-operator.databases.coder.resources.requests.memory</a></td>
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
			<td id="postgres-operator--databases--coder--volume"><a href="./values.yaml#L1137">postgres-operator.databases.coder.volume</a></td>
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
			<td id="postgres-operator--databases--coder--volume--size"><a href="./values.yaml#L1139">postgres-operator.databases.coder.volume.size</a></td>
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
			<td id="postgres-operator--databases--core"><a href="./values.yaml#L1141">postgres-operator.databases.core</a></td>
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
			<td id="postgres-operator--databases--core--enabled"><a href="./values.yaml#L1143">postgres-operator.databases.core.enabled</a></td>
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
			<td id="postgres-operator--databases--core--resources"><a href="./values.yaml#L1145">postgres-operator.databases.core.resources</a></td>
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
			<td id="postgres-operator--databases--core--resources--limits"><a href="./values.yaml#L1147">postgres-operator.databases.core.resources.limits</a></td>
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
			<td id="postgres-operator--databases--core--resources--limits--cpu"><a href="./values.yaml#L1149">postgres-operator.databases.core.resources.limits.cpu</a></td>
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
			<td id="postgres-operator--databases--core--resources--limits--memory"><a href="./values.yaml#L1151">postgres-operator.databases.core.resources.limits.memory</a></td>
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
			<td id="postgres-operator--databases--core--resources--requests"><a href="./values.yaml#L1153">postgres-operator.databases.core.resources.requests</a></td>
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
			<td id="postgres-operator--databases--core--resources--requests--cpu"><a href="./values.yaml#L1155">postgres-operator.databases.core.resources.requests.cpu</a></td>
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
			<td id="postgres-operator--databases--core--resources--requests--memory"><a href="./values.yaml#L1157">postgres-operator.databases.core.resources.requests.memory</a></td>
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
			<td id="postgres-operator--databases--core--volume"><a href="./values.yaml#L1159">postgres-operator.databases.core.volume</a></td>
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
			<td id="postgres-operator--databases--core--volume--size"><a href="./values.yaml#L1161">postgres-operator.databases.core.volume.size</a></td>
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
			<td id="postgres-operator--databases--digitalhub"><a href="./values.yaml#L1163">postgres-operator.databases.digitalhub</a></td>
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
			<td id="postgres-operator--databases--digitalhub--enabled"><a href="./values.yaml#L1165">postgres-operator.databases.digitalhub.enabled</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources"><a href="./values.yaml#L1167">postgres-operator.databases.digitalhub.resources</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--limits"><a href="./values.yaml#L1169">postgres-operator.databases.digitalhub.resources.limits</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--limits--cpu"><a href="./values.yaml#L1171">postgres-operator.databases.digitalhub.resources.limits.cpu</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--limits--memory"><a href="./values.yaml#L1173">postgres-operator.databases.digitalhub.resources.limits.memory</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--requests"><a href="./values.yaml#L1175">postgres-operator.databases.digitalhub.resources.requests</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--requests--cpu"><a href="./values.yaml#L1177">postgres-operator.databases.digitalhub.resources.requests.cpu</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--requests--memory"><a href="./values.yaml#L1179">postgres-operator.databases.digitalhub.resources.requests.memory</a></td>
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
			<td id="postgres-operator--databases--digitalhub--volume"><a href="./values.yaml#L1181">postgres-operator.databases.digitalhub.volume</a></td>
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
			<td id="postgres-operator--databases--digitalhub--volume--size"><a href="./values.yaml#L1183">postgres-operator.databases.digitalhub.volume.size</a></td>
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
			<td id="postgres-operator--securityContext"><a href="./values.yaml#L1185">postgres-operator.securityContext</a></td>
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
			<td id="postgres-operator--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1187">postgres-operator.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="postgres-operator--securityContext--capabilities"><a href="./values.yaml#L1189">postgres-operator.securityContext.capabilities</a></td>
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
			<td id="postgres-operator--securityContext--capabilities--drop"><a href="./values.yaml#L1191">postgres-operator.securityContext.capabilities.drop</a></td>
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
			<td id="postgres-operator--securityContext--runAsNonRoot"><a href="./values.yaml#L1194">postgres-operator.securityContext.runAsNonRoot</a></td>
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
			<td id="postgres-operator--securityContext--seccompProfile"><a href="./values.yaml#L1196">postgres-operator.securityContext.seccompProfile</a></td>
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
			<td id="postgres-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L1198">postgres-operator.securityContext.seccompProfile.type</a></td>
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
			<td id="postgrest-operator"><a href="./values.yaml#L1202">postgrest-operator</a></td>
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
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--enabled"><a href="./values.yaml#L1204">postgrest-operator.enabled</a></td>
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
			<td id="postgrest-operator--postgres"><a href="./values.yaml#L1206">postgrest-operator.postgres</a></td>
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
			<td id="postgrest-operator--postgres--default_database"><a href="./values.yaml#L1208">postgrest-operator.postgres.default_database</a></td>
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
			<td id="postgrest-operator--postgres--host"><a href="./values.yaml#L1210">postgrest-operator.postgres.host</a></td>
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
			<td id="postgrest-operator--postgres--port"><a href="./values.yaml#L1212">postgrest-operator.postgres.port</a></td>
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
			<td id="postgrest-operator--postgres--postgrest_service_type"><a href="./values.yaml#L1214">postgrest-operator.postgres.postgrest_service_type</a></td>
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
			<td id="postgrest-operator--postgres--uri_args"><a href="./values.yaml#L1216">postgrest-operator.postgres.uri_args</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets"><a href="./values.yaml#L1218">postgrest-operator.postgresCredsExistingSecrets</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets--password"><a href="./values.yaml#L1220">postgrest-operator.postgresCredsExistingSecrets.password</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets--password--secretKey"><a href="./values.yaml#L1222">postgrest-operator.postgresCredsExistingSecrets.password.secretKey</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets--password--secretName"><a href="./values.yaml#L1224">postgrest-operator.postgresCredsExistingSecrets.password.secretName</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets--username"><a href="./values.yaml#L1226">postgrest-operator.postgresCredsExistingSecrets.username</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets--username--secretKey"><a href="./values.yaml#L1228">postgrest-operator.postgresCredsExistingSecrets.username.secretKey</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets--username--secretName"><a href="./values.yaml#L1230">postgrest-operator.postgresCredsExistingSecrets.username.secretName</a></td>
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
			<td id="seaweedfs"><a href="./values.yaml#L1233">seaweedfs</a></td>
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
			<td id="seaweedfs--enabled"><a href="./values.yaml#L1235">seaweedfs.enabled</a></td>
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
			<td id="solr"><a href="./values.yaml#L1239">solr</a></td>
			<td>
object
</td>
			<td>Solr configuration  For a complete list of all the Values, as well as the specific documentation, please check the [Solr Helm Chart repository](https://github.com/apache/solr-operator/tree/main/helm/solr)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "creds": {
    "admin": {
      "password": "",
      "passwordSha": ""
    },
    "k8sOper": {
      "password": "",
      "passwordSha": ""
    },
    "solr": {
      "password": "",
      "passwordSha": ""
    },
    "user": {
      "password": "",
      "passwordSha": ""
    }
  },
  "dataStorage": {
    "capacity": "10Gi",
    "persistent": {
      "pvc": {
        "annotations": {},
        "labels": {},
        "name": "",
        "storageClassName": ""
      },
      "reclaimPolicy": "Delete"
    },
    "type": "ephemeral"
  },
  "enabled": false,
  "fullnameOverride": "digitalhub",
  "image": {
    "repository": "solr",
    "tag": "9.7"
  },
  "podOptions": {
    "containerSecurityContext": {
      "allowPrivilegeEscalation": false,
      "capabilities": {
        "drop": [
          "ALL"
        ]
      },
      "seccompProfile": {
        "type": "RuntimeDefault"
      }
    },
    "podSecurityContext": {
      "seccompProfile": {
        "type": "RuntimeDefault"
      }
    }
  },
  "replicas": 1,
  "solrOptions": {
    "security": {
      "authenticationType": "Basic",
      "basicAuthSecret": "",
      "bootstrapSecurityJson": {
        "key": "security.json",
        "name": ""
      },
      "probesRequireAuth": true
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--enabled"><a href="./values.yaml#L1241">solr.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Solr</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds"><a href="./values.yaml#L1243">solr.creds</a></td>
			<td>
object
</td>
			<td>Solr credentials, used to build the security.json</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "admin": {
    "password": "",
    "passwordSha": ""
  },
  "k8sOper": {
    "password": "",
    "passwordSha": ""
  },
  "solr": {
    "password": "",
    "passwordSha": ""
  },
  "user": {
    "password": "",
    "passwordSha": ""
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--admin"><a href="./values.yaml#L1245">solr.creds.admin</a></td>
			<td>
object
</td>
			<td>Admin credentials</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "password": "",
  "passwordSha": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--admin--password"><a href="./values.yaml#L1247">solr.creds.admin.password</a></td>
			<td>
string
</td>
			<td>Admin password (Base64)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--admin--passwordSha"><a href="./values.yaml#L1249">solr.creds.admin.passwordSha</a></td>
			<td>
string
</td>
			<td>Admin password (sha256(sha256(salt || password)))</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--k8sOper"><a href="./values.yaml#L1251">solr.creds.k8sOper</a></td>
			<td>
object
</td>
			<td>K8S Operator credentials</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "password": "",
  "passwordSha": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--k8sOper--password"><a href="./values.yaml#L1253">solr.creds.k8sOper.password</a></td>
			<td>
string
</td>
			<td>Operator password (Base64)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--k8sOper--passwordSha"><a href="./values.yaml#L1255">solr.creds.k8sOper.passwordSha</a></td>
			<td>
string
</td>
			<td>Operator password (sha256(sha256(salt || password)))</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--solr"><a href="./values.yaml#L1257">solr.creds.solr</a></td>
			<td>
object
</td>
			<td>Solr user credentials</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "password": "",
  "passwordSha": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--solr--password"><a href="./values.yaml#L1259">solr.creds.solr.password</a></td>
			<td>
string
</td>
			<td>Solr user password (Base64)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--solr--passwordSha"><a href="./values.yaml#L1261">solr.creds.solr.passwordSha</a></td>
			<td>
string
</td>
			<td>Solr user password (sha256(sha256(salt || password)))</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--user"><a href="./values.yaml#L1263">solr.creds.user</a></td>
			<td>
object
</td>
			<td>Unprivileged user credentials</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "password": "",
  "passwordSha": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--user--password"><a href="./values.yaml#L1265">solr.creds.user.password</a></td>
			<td>
string
</td>
			<td>Unprivileged user password (Base64)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--user--passwordSha"><a href="./values.yaml#L1267">solr.creds.user.passwordSha</a></td>
			<td>
string
</td>
			<td>Unprivileged user password (sha256(sha256(salt || password)))</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage"><a href="./values.yaml#L1269">solr.dataStorage</a></td>
			<td>
object
</td>
			<td>Solr storage configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "capacity": "10Gi",
  "persistent": {
    "pvc": {
      "annotations": {},
      "labels": {},
      "name": "",
      "storageClassName": ""
    },
    "reclaimPolicy": "Delete"
  },
  "type": "ephemeral"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage--capacity"><a href="./values.yaml#L1271">solr.dataStorage.capacity</a></td>
			<td>
string
</td>
			<td>Storage size</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"10Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage--persistent"><a href="./values.yaml#L1273">solr.dataStorage.persistent</a></td>
			<td>
object
</td>
			<td>Persistent storage configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "pvc": {
    "annotations": {},
    "labels": {},
    "name": "",
    "storageClassName": ""
  },
  "reclaimPolicy": "Delete"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage--persistent--pvc"><a href="./values.yaml#L1275">solr.dataStorage.persistent.pvc</a></td>
			<td>
object
</td>
			<td>Solr PVC configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "annotations": {},
  "labels": {},
  "name": "",
  "storageClassName": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage--persistent--pvc--annotations"><a href="./values.yaml#L1277">solr.dataStorage.persistent.pvc.annotations</a></td>
			<td>
object
</td>
			<td>PVC additional annotations</td>
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
			<td id="solr--dataStorage--persistent--pvc--labels"><a href="./values.yaml#L1279">solr.dataStorage.persistent.pvc.labels</a></td>
			<td>
object
</td>
			<td>PVC additional labels</td>
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
			<td id="solr--dataStorage--persistent--pvc--name"><a href="./values.yaml#L1281">solr.dataStorage.persistent.pvc.name</a></td>
			<td>
string
</td>
			<td>PVC name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage--persistent--pvc--storageClassName"><a href="./values.yaml#L1283">solr.dataStorage.persistent.pvc.storageClassName</a></td>
			<td>
string
</td>
			<td>PVC storage class</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage--persistent--reclaimPolicy"><a href="./values.yaml#L1285">solr.dataStorage.persistent.reclaimPolicy</a></td>
			<td>
string
</td>
			<td>Reclaim policy</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"Delete"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage--type"><a href="./values.yaml#L1287">solr.dataStorage.type</a></td>
			<td>
string
</td>
			<td>Type of storage (ephemeral/persistent)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ephemeral"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--fullnameOverride"><a href="./values.yaml#L1289">solr.fullnameOverride</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--image"><a href="./values.yaml#L1291">solr.image</a></td>
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
  "repository": "solr",
  "tag": "9.7"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--image--repository"><a href="./values.yaml#L1293">solr.image.repository</a></td>
			<td>
string
</td>
			<td>Solr image</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"solr"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--image--tag"><a href="./values.yaml#L1295">solr.image.tag</a></td>
			<td>
string
</td>
			<td>Solr image tag (Do not change it, this value must be aligned with the code of Core)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"9.7"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--podOptions"><a href="./values.yaml#L1297">solr.podOptions</a></td>
			<td>
object
</td>
			<td>Pod options</td>
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
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "podSecurityContext": {
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
			<td id="solr--podOptions--containerSecurityContext"><a href="./values.yaml#L1299">solr.podOptions.containerSecurityContext</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1301">solr.podOptions.containerSecurityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Pod allow privilege escalation.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--podOptions--containerSecurityContext--capabilities"><a href="./values.yaml#L1303">solr.podOptions.containerSecurityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Pod configure capabilities.</td>
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
			<td id="solr--podOptions--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L1305">solr.podOptions.containerSecurityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Pod drop capabilities.</td>
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
			<td id="solr--podOptions--containerSecurityContext--seccompProfile"><a href="./values.yaml#L1308">solr.podOptions.containerSecurityContext.seccompProfile</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L1310">solr.podOptions.containerSecurityContext.seccompProfile.type</a></td>
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
			<td id="solr--podOptions--podSecurityContext"><a href="./values.yaml#L1312">solr.podOptions.podSecurityContext</a></td>
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
			<td id="solr--podOptions--podSecurityContext--seccompProfile"><a href="./values.yaml#L1314">solr.podOptions.podSecurityContext.seccompProfile</a></td>
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
			<td id="solr--podOptions--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L1316">solr.podOptions.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="solr--replicas"><a href="./values.yaml#L1318">solr.replicas</a></td>
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
			<td id="solr--solrOptions"><a href="./values.yaml#L1320">solr.solrOptions</a></td>
			<td>
object
</td>
			<td>Options for Solr</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "security": {
    "authenticationType": "Basic",
    "basicAuthSecret": "",
    "bootstrapSecurityJson": {
      "key": "security.json",
      "name": ""
    },
    "probesRequireAuth": true
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security"><a href="./values.yaml#L1324">solr.solrOptions.security</a></td>
			<td>
object
</td>
			<td>Enable authentication for Solr  If you want to use these options, be sure to also set core.solr.collection.initialize to true in this values file.  More information can be found at https://apache.github.io/solr-operator/docs/solr-cloud/solr-cloud-crd.html#authentication-and-authorization</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "authenticationType": "Basic",
  "basicAuthSecret": "",
  "bootstrapSecurityJson": {
    "key": "security.json",
    "name": ""
  },
  "probesRequireAuth": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--authenticationType"><a href="./values.yaml#L1326">solr.solrOptions.security.authenticationType</a></td>
			<td>
string
</td>
			<td>Authentication type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"Basic"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--basicAuthSecret"><a href="./values.yaml#L1328">solr.solrOptions.security.basicAuthSecret</a></td>
			<td>
string
</td>
			<td>Specify the required basicAuth secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--bootstrapSecurityJson"><a href="./values.yaml#L1330">solr.solrOptions.security.bootstrapSecurityJson</a></td>
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
  "key": "security.json",
  "name": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--bootstrapSecurityJson--key"><a href="./values.yaml#L1332">solr.solrOptions.security.bootstrapSecurityJson.key</a></td>
			<td>
string
</td>
			<td>Key in the secret corresponding to the security.json</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"security.json"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--bootstrapSecurityJson--name"><a href="./values.yaml#L1334">solr.solrOptions.security.bootstrapSecurityJson.name</a></td>
			<td>
string
</td>
			<td>Name of the secret with the configured security.json</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--probesRequireAuth"><a href="./values.yaml#L1336">solr.solrOptions.security.probesRequireAuth</a></td>
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
			<td id="solr-operator"><a href="./values.yaml#L1340">solr-operator</a></td>
			<td>
object
</td>
			<td>Solr Operator configuration  For a complete list of all the Values, as well as the specific documentation, please check the [Solr Operator Helm Chart repository](https://github.com/apache/solr-operator/tree/main/helm/solr-operator)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
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
  },
  "zookeeper-operator": {
    "crd": {
      "create": true
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr-operator--enabled"><a href="./values.yaml#L1342">solr-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Solr Operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr-operator--securityContext"><a href="./values.yaml#L1344">solr-operator.securityContext</a></td>
			<td>
object
</td>
			<td>Solr Operator [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="solr-operator--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1346">solr-operator.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Solr Operator container allow privilege escalation.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr-operator--securityContext--capabilities"><a href="./values.yaml#L1348">solr-operator.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Solr Operator container configure capabilities.</td>
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
			<td id="solr-operator--securityContext--capabilities--drop"><a href="./values.yaml#L1350">solr-operator.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Solr Operator container drop capabilities.</td>
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
			<td id="solr-operator--securityContext--runAsNonRoot"><a href="./values.yaml#L1353">solr-operator.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Solr Operator container allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr-operator--securityContext--seccompProfile"><a href="./values.yaml#L1355">solr-operator.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Solr Operator container configure seccompProfile.</td>
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
			<td id="solr-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L1357">solr-operator.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Solr Operator container configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr-operator--zookeeper-operator"><a href="./values.yaml#L1359">solr-operator.zookeeper-operator</a></td>
			<td>
object
</td>
			<td>ZooKeeper Operator configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "crd": {
    "create": true
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr-operator--zookeeper-operator--crd"><a href="./values.yaml#L1361">solr-operator.zookeeper-operator.crd</a></td>
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
			<td id="solr-operator--zookeeper-operator--crd--create"><a href="./values.yaml#L1363">solr-operator.zookeeper-operator.crd.create</a></td>
			<td>
bool
</td>
			<td>Install Solr CRDs</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="template-controller"><a href="./values.yaml#L1367">template-controller</a></td>
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
			<td id="template-controller--enabled"><a href="./values.yaml#L1369">template-controller.enabled</a></td>
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
			<td id="template-controller--objectTemplate"><a href="./values.yaml#L1372">template-controller.objectTemplate</a></td>
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
			<td id="template-controller--objectTemplate--enabled"><a href="./values.yaml#L1374">template-controller.objectTemplate.enabled</a></td>
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
			<td id="template-controller--podSecurityContext"><a href="./values.yaml#L1376">template-controller.podSecurityContext</a></td>
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
			<td id="template-controller--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L1378">template-controller.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="template-controller--podSecurityContext--seccompProfile"><a href="./values.yaml#L1380">template-controller.podSecurityContext.seccompProfile</a></td>
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
			<td id="template-controller--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L1382">template-controller.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="template-controller--securityContext"><a href="./values.yaml#L1384">template-controller.securityContext</a></td>
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
			<td id="template-controller--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1386">template-controller.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="template-controller--securityContext--capabilities"><a href="./values.yaml#L1388">template-controller.securityContext.capabilities</a></td>
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
			<td id="template-controller--securityContext--capabilities--drop"><a href="./values.yaml#L1390">template-controller.securityContext.capabilities.drop</a></td>
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
			<td id="template-controller--securityContext--runAsNonRoot"><a href="./values.yaml#L1393">template-controller.securityContext.runAsNonRoot</a></td>
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
			<td id="template-controller--securityContext--seccompProfile"><a href="./values.yaml#L1395">template-controller.securityContext.seccompProfile</a></td>
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
			<td id="template-controller--securityContext--seccompProfile--type"><a href="./values.yaml#L1397">template-controller.securityContext.seccompProfile.type</a></td>
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
