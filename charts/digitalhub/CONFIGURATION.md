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
  "podSecurityContext": {
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "registry": {
    "email": "",
    "password": "",
    "secretName": "",
    "url": "192.168.49.2:30150",
    "username": ""
  },
  "s3": {
    "argo": {
      "accessKey": "argo",
      "bucket": "argo",
      "existingSecret": {
        "accessKeyKey": "",
        "secretKeyKey": "",
        "secretName": ""
      },
      "secretKey": "argo1234",
      "secretName": "argo-s3-creds"
    },
    "endpoint": "minio",
    "endpointPort": "9000",
    "platform": {
      "accessKey": "digitalhub",
      "bucket": "datalake",
      "existingSecret": {
        "accessKeyKey": "",
        "secretKeyKey": "",
        "secretName": ""
      },
      "platformUserSecret": "platform-s3-creds",
      "secretKey": "digitalhub"
    },
    "protocol": "http",
    "rootPassword": "minio123",
    "rootUser": "minio",
    "rootUserSecret": "minio"
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
			<td id="global--podSecurityContext"><a href="./values.yaml#L42">global.podSecurityContext</a></td>
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
			<td id="global--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L44">global.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="global--podSecurityContext--seccompProfile"><a href="./values.yaml#L46">global.podSecurityContext.seccompProfile</a></td>
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
			<td id="global--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L48">global.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="global--registry"><a href="./values.yaml#L50">global.registry</a></td>
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
			<td id="global--registry--email"><a href="./values.yaml#L52">global.registry.email</a></td>
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
			<td id="global--registry--password"><a href="./values.yaml#L54">global.registry.password</a></td>
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
			<td id="global--registry--secretName"><a href="./values.yaml#L56">global.registry.secretName</a></td>
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
			<td id="global--registry--url"><a href="./values.yaml#L58">global.registry.url</a></td>
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
			<td id="global--registry--username"><a href="./values.yaml#L60">global.registry.username</a></td>
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
    "accessKey": "argo",
    "bucket": "argo",
    "existingSecret": {
      "accessKeyKey": "",
      "secretKeyKey": "",
      "secretName": ""
    },
    "secretKey": "argo1234",
    "secretName": "argo-s3-creds"
  },
  "endpoint": "minio",
  "endpointPort": "9000",
  "platform": {
    "accessKey": "digitalhub",
    "bucket": "datalake",
    "existingSecret": {
      "accessKeyKey": "",
      "secretKeyKey": "",
      "secretName": ""
    },
    "platformUserSecret": "platform-s3-creds",
    "secretKey": "digitalhub"
  },
  "protocol": "http",
  "rootPassword": "minio123",
  "rootUser": "minio",
  "rootUserSecret": "minio"
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
  "accessKey": "argo",
  "bucket": "argo",
  "existingSecret": {
    "accessKeyKey": "",
    "secretKeyKey": "",
    "secretName": ""
  },
  "secretKey": "argo1234",
  "secretName": "argo-s3-creds"
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
"argo"
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
"argo1234"
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
"9000"
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
  "accessKey": "digitalhub",
  "bucket": "datalake",
  "existingSecret": {
    "accessKeyKey": "",
    "secretKeyKey": "",
    "secretName": ""
  },
  "platformUserSecret": "platform-s3-creds",
  "secretKey": "digitalhub"
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
"digitalhub"
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
"platform-s3-creds"
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
"minio123"
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
"minio"
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
"minio"
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
            "key": "accesskey",
            "name": "argo-s3-creds"
          },
          "bucket": "argo",
          "endpoint": "minio:9000",
          "insecure": true,
          "secretKeySecret": {
            "key": "secretkey",
            "name": "argo-s3-creds"
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
          "key": "accesskey",
          "name": "argo-s3-creds"
        },
        "bucket": "argo",
        "endpoint": "minio:9000",
        "insecure": true,
        "secretKeySecret": {
          "key": "secretkey",
          "name": "argo-s3-creds"
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
        "key": "accesskey",
        "name": "argo-s3-creds"
      },
      "bucket": "argo",
      "endpoint": "minio:9000",
      "insecure": true,
      "secretKeySecret": {
        "key": "secretkey",
        "name": "argo-s3-creds"
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
      "key": "accesskey",
      "name": "argo-s3-creds"
    },
    "bucket": "argo",
    "endpoint": "minio:9000",
    "insecure": true,
    "secretKeySecret": {
      "key": "secretkey",
      "name": "argo-s3-creds"
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
    "key": "accesskey",
    "name": "argo-s3-creds"
  },
  "bucket": "argo",
  "endpoint": "minio:9000",
  "insecure": true,
  "secretKeySecret": {
    "key": "secretkey",
    "name": "argo-s3-creds"
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
  "key": "accesskey",
  "name": "argo-s3-creds"
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
"accesskey"
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
"argo-s3-creds"
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
"minio:9000"
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
  "key": "secretkey",
  "name": "argo-s3-creds"
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
"secretkey"
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
"argo-s3-creds"
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
			<td id="argo-workflows--server"><a href="./values.yaml#L222">argo-workflows.server</a></td>
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
			<td id="argo-workflows--server--enabled"><a href="./values.yaml#L224">argo-workflows.server.enabled</a></td>
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
			<td id="argo-workflows--singleNamespace"><a href="./values.yaml#L226">argo-workflows.singleNamespace</a></td>
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
			<td id="argo-workflows--workflow"><a href="./values.yaml#L228">argo-workflows.workflow</a></td>
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
			<td id="argo-workflows--workflow--serviceAccount"><a href="./values.yaml#L230">argo-workflows.workflow.serviceAccount</a></td>
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
			<td id="argo-workflows--workflow--serviceAccount--create"><a href="./values.yaml#L232">argo-workflows.workflow.serviceAccount.create</a></td>
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
			<td id="argo-workflows--workflow--serviceAccount--name"><a href="./values.yaml#L234">argo-workflows.workflow.serviceAccount.name</a></td>
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
			<td id="coder"><a href="./values.yaml#L238">coder</a></td>
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
            "name": "coder-db-url"
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
    "service": {
      "httpNodePort": "30170",
      "type": "NodePort"
    }
  },
  "email": "test@digitalhub.test",
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
  "password": "Test12456@!",
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
  "template": {
    "customTemplates": [
      {
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
        "extraVars": [],
        "iconUrl": "https://cdn-icons-png.flaticon.com/512/7301/7301969.png",
        "name": "code-toolbox-experimental",
        "nodePort": "30050",
        "privileged": false,
        "stopAfter": "8h",
        "tolerations": []
      },
      {
        "extraVars": [],
        "iconUrl": "https://cdn-images-1.medium.com/max/1200/1*2nGovT9tEnQva8NWfHLZxg.png",
        "image": "dremio/dremio-oss:24.1.0",
        "name": "dremio",
        "nodePort": "30120",
        "postgres": {
          "database": "digitalhub",
          "hostname": "database-postgres-cluster",
          "ownerCredsSecret": {
            "passwordKey": "password",
            "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
            "usernameKey": "username"
          }
        },
        "stopAfter": "0h"
      },
      {
        "extraVars": [],
        "iconUrl": "https://i.ibb.co/TrBDsZM/sqlpad.png",
        "image": "smartcommunitylab/sqlpad:nonroot",
        "name": "sqlpad",
        "nodePort": "30140",
        "postgres": {
          "database": "digitalhub",
          "hostname": "database-postgres-cluster",
          "ownerCredsSecret": {
            "passwordKey": "password",
            "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
            "usernameKey": "username"
          }
        },
        "stopAfter": "8h"
      },
      {
        "extraVars": [],
        "iconUrl": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/1200px-Jupyter_logo.svg.png",
        "image": "ghcr.io/scc-digitalhub/jupyter-3-10:0.12.0",
        "image311": "ghcr.io/scc-digitalhub/jupyter-3-11:0.12.0",
        "image39": "ghcr.io/scc-digitalhub/jupyter-3-9:0.12.0",
        "name": "jupyter",
        "nodePort": "30040",
        "privileged": false,
        "stopAfter": "8h"
      }
    ],
    "upgrade": {
      "enabled": false,
      "token": ""
    }
  },
  "username": "test"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--enabled"><a href="./values.yaml#L240">coder.enabled</a></td>
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
			<td id="coder--coder"><a href="./values.yaml#L242">coder.coder</a></td>
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
          "name": "coder-db-url"
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
			<td id="coder--coder--env"><a href="./values.yaml#L244">coder.coder.env</a></td>
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
        "name": "coder-db-url"
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
			<td id="coder--coder--image"><a href="./values.yaml#L259">coder.coder.image</a></td>
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
			<td id="coder--coder--image--tag"><a href="./values.yaml#L261">coder.coder.image.tag</a></td>
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
			<td id="coder--coder--ingress"><a href="./values.yaml#L263">coder.coder.ingress</a></td>
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
			<td id="coder--coder--ingress--enable"><a href="./values.yaml#L265">coder.coder.ingress.enable</a></td>
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
			<td id="coder--coder--service"><a href="./values.yaml#L267">coder.coder.service</a></td>
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
			<td id="coder--coder--service--httpNodePort"><a href="./values.yaml#L269">coder.coder.service.httpNodePort</a></td>
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
			<td id="coder--coder--service--type"><a href="./values.yaml#L271">coder.coder.service.type</a></td>
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
			<td id="coder--email"><a href="./values.yaml#L273">coder.email</a></td>
			<td>
string
</td>
			<td>Coder admin email</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"test@digitalhub.test"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--existingSecrets"><a href="./values.yaml#L275">coder.existingSecrets</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret"><a href="./values.yaml#L277">coder.existingSecrets.adminUserExistingSecret</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret--emailKey"><a href="./values.yaml#L279">coder.existingSecrets.adminUserExistingSecret.emailKey</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret--passwordKey"><a href="./values.yaml#L281">coder.existingSecrets.adminUserExistingSecret.passwordKey</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret--secretName"><a href="./values.yaml#L283">coder.existingSecrets.adminUserExistingSecret.secretName</a></td>
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
			<td id="coder--existingSecrets--adminUserExistingSecret--usernameKey"><a href="./values.yaml#L285">coder.existingSecrets.adminUserExistingSecret.usernameKey</a></td>
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
			<td id="coder--existingSecrets--existingPostgresConnectionUrlSecret"><a href="./values.yaml#L287">coder.existingSecrets.existingPostgresConnectionUrlSecret</a></td>
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
			<td id="coder--existingSecrets--existingPostgresConnectionUrlSecret--enabled"><a href="./values.yaml#L290">coder.existingSecrets.existingPostgresConnectionUrlSecret.enabled</a></td>
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
			<td id="coder--password"><a href="./values.yaml#L292">coder.password</a></td>
			<td>
string
</td>
			<td>Coder admin password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"Test12456@!"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--securityContext"><a href="./values.yaml#L294">coder.securityContext</a></td>
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
			<td id="coder--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L296">coder.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="coder--securityContext--capabilities"><a href="./values.yaml#L298">coder.securityContext.capabilities</a></td>
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
			<td id="coder--securityContext--capabilities--drop"><a href="./values.yaml#L300">coder.securityContext.capabilities.drop</a></td>
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
			<td id="coder--securityContext--runAsNonRoot"><a href="./values.yaml#L303">coder.securityContext.runAsNonRoot</a></td>
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
			<td id="coder--securityContext--seccompProfile"><a href="./values.yaml#L305">coder.securityContext.seccompProfile</a></td>
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
			<td id="coder--securityContext--seccompProfile--type"><a href="./values.yaml#L307">coder.securityContext.seccompProfile.type</a></td>
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
			<td id="coder--template"><a href="./values.yaml#L309">coder.template</a></td>
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
      "extraVars": [],
      "iconUrl": "https://cdn-icons-png.flaticon.com/512/7301/7301969.png",
      "name": "code-toolbox-experimental",
      "nodePort": "30050",
      "privileged": false,
      "stopAfter": "8h",
      "tolerations": []
    },
    {
      "extraVars": [],
      "iconUrl": "https://cdn-images-1.medium.com/max/1200/1*2nGovT9tEnQva8NWfHLZxg.png",
      "image": "dremio/dremio-oss:24.1.0",
      "name": "dremio",
      "nodePort": "30120",
      "postgres": {
        "database": "digitalhub",
        "hostname": "database-postgres-cluster",
        "ownerCredsSecret": {
          "passwordKey": "password",
          "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
          "usernameKey": "username"
        }
      },
      "stopAfter": "0h"
    },
    {
      "extraVars": [],
      "iconUrl": "https://i.ibb.co/TrBDsZM/sqlpad.png",
      "image": "smartcommunitylab/sqlpad:nonroot",
      "name": "sqlpad",
      "nodePort": "30140",
      "postgres": {
        "database": "digitalhub",
        "hostname": "database-postgres-cluster",
        "ownerCredsSecret": {
          "passwordKey": "password",
          "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
          "usernameKey": "username"
        }
      },
      "stopAfter": "8h"
    },
    {
      "extraVars": [],
      "iconUrl": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/1200px-Jupyter_logo.svg.png",
      "image": "ghcr.io/scc-digitalhub/jupyter-3-10:0.12.0",
      "image311": "ghcr.io/scc-digitalhub/jupyter-3-11:0.12.0",
      "image39": "ghcr.io/scc-digitalhub/jupyter-3-9:0.12.0",
      "name": "jupyter",
      "nodePort": "30040",
      "privileged": false,
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
			<td id="coder--template--customTemplates"><a href="./values.yaml#L314">coder.template.customTemplates</a></td>
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
    "extraVars": [],
    "iconUrl": "https://cdn-icons-png.flaticon.com/512/7301/7301969.png",
    "name": "code-toolbox-experimental",
    "nodePort": "30050",
    "privileged": false,
    "stopAfter": "8h",
    "tolerations": []
  },
  {
    "extraVars": [],
    "iconUrl": "https://cdn-images-1.medium.com/max/1200/1*2nGovT9tEnQva8NWfHLZxg.png",
    "image": "dremio/dremio-oss:24.1.0",
    "name": "dremio",
    "nodePort": "30120",
    "postgres": {
      "database": "digitalhub",
      "hostname": "database-postgres-cluster",
      "ownerCredsSecret": {
        "passwordKey": "password",
        "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
        "usernameKey": "username"
      }
    },
    "stopAfter": "0h"
  },
  {
    "extraVars": [],
    "iconUrl": "https://i.ibb.co/TrBDsZM/sqlpad.png",
    "image": "smartcommunitylab/sqlpad:nonroot",
    "name": "sqlpad",
    "nodePort": "30140",
    "postgres": {
      "database": "digitalhub",
      "hostname": "database-postgres-cluster",
      "ownerCredsSecret": {
        "passwordKey": "password",
        "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
        "usernameKey": "username"
      }
    },
    "stopAfter": "8h"
  },
  {
    "extraVars": [],
    "iconUrl": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/1200px-Jupyter_logo.svg.png",
    "image": "ghcr.io/scc-digitalhub/jupyter-3-10:0.12.0",
    "image311": "ghcr.io/scc-digitalhub/jupyter-3-11:0.12.0",
    "image39": "ghcr.io/scc-digitalhub/jupyter-3-9:0.12.0",
    "name": "jupyter",
    "nodePort": "30040",
    "privileged": false,
    "stopAfter": "8h"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--template--upgrade"><a href="./values.yaml#L382">coder.template.upgrade</a></td>
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
			<td id="coder--template--upgrade--enabled"><a href="./values.yaml#L384">coder.template.upgrade.enabled</a></td>
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
			<td id="coder--template--upgrade--token"><a href="./values.yaml#L387">coder.template.upgrade.token</a></td>
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
			<td id="coder--username"><a href="./values.yaml#L389">coder.username</a></td>
			<td>
string
</td>
			<td>Username of the Coder admin user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"test"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core"><a href="./values.yaml#L392">core</a></td>
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
      "password": "corepwd",
      "username": "coreuser"
    },
    "openId": {
      "enabled": false
    }
  },
  "commonCredsSecret": {
    "secretName": "digitalhub-common-creds",
    "useExistingCommonCredsSecret": false
  },
  "coreAuthCreds": {
    "clientId": "m04bfbmd03m8sf4u9ucz54ti",
    "clientSecret": "9rb5215z0aqd7fadzxuoyqe3",
    "existingSecret": {
      "clientIdKey": "",
      "clientSecretKey": "",
      "secretName": ""
    }
  },
  "databaseProvider": {
    "database": "digitalhub",
    "host": "database-postgres-cluster",
    "ownerSecret": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
    "port": "5432"
  },
  "enabled": true,
  "image": {
    "tag": "0.13.0-beta5"
  },
  "kanikoArgs": "",
  "kubeai": {
    "enabled": true,
    "port": "80",
    "serviceName": "kubeai"
  },
  "postgres": {
    "credentials": {
      "existingSecret": {
        "name": "coreuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do",
        "passwordKey": "password",
        "usernameKey": "username"
      },
      "password": "",
      "username": ""
    },
    "database": "core",
    "host": "core-postgres-cluster",
    "port": "5432",
    "schema": "public"
  },
  "s3": {
    "accessKey": "digitalhub",
    "bucket": "datalake",
    "dynamicCreds": {
      "enabled": false
    },
    "enabled": true,
    "endpoint": "minio",
    "existingSecret": {
      "accessKeyKey": "",
      "name": "",
      "secretKeyKey": ""
    },
    "port": "9000",
    "protocol": "http",
    "publicUrl": "http://192.168.49.2:30080",
    "region": "us-east-1",
    "secretKey": "digitalhub"
  },
  "service": {
    "httpNodePort": "30180",
    "type": "NodePort"
  },
  "solr": {
    "collection": {
      "initialize": {
        "enabled": true,
        "image": "curlimages/curl:8.15.0",
        "securityJsonSecret": "digitalhub-solrcloud-security-bootstrap"
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
    "enabled": true,
    "fullNameOverride": "digitalhub",
    "url": "http://digitalhub-solrcloud-common/solr"
  },
  "sts": {
    "client": {
      "clientId": "",
      "clientSecret": ""
    },
    "credentials": {
      "roles": "digitalhub_owner_user"
    },
    "databaseProvider": {
      "credentials": {
        "existingSecret": {
          "name": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
          "passwordKey": "password",
          "usernameKey": "username"
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
          "name": "stsuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do",
          "passwordKey": "password",
          "usernameKey": "username"
        }
      },
      "database": "sts",
      "driver": "org.postgresql.Driver",
      "host": "core-postgres-cluster",
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
			<td id="core--enabled"><a href="./values.yaml#L394">core.enabled</a></td>
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
			<td id="core--additionalConfig"><a href="./values.yaml#L396">core.additionalConfig</a></td>
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
			<td id="core--additionalConfig--debug"><a href="./values.yaml#L398">core.additionalConfig.debug</a></td>
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
			<td id="core--additionalConfig--debug--enableLogs"><a href="./values.yaml#L400">core.additionalConfig.debug.enableLogs</a></td>
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
			<td id="core--additionalConfig--debug--enableMetrics"><a href="./values.yaml#L402">core.additionalConfig.debug.enableMetrics</a></td>
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
			<td id="core--additionalConfig--resources"><a href="./values.yaml#L404">core.additionalConfig.resources</a></td>
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
			<td id="core--additionalConfig--resources--cpuLim"><a href="./values.yaml#L406">core.additionalConfig.resources.cpuLim</a></td>
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
			<td id="core--additionalConfig--resources--cpuReq"><a href="./values.yaml#L408">core.additionalConfig.resources.cpuReq</a></td>
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
			<td id="core--additionalConfig--resources--gpuKey"><a href="./values.yaml#L410">core.additionalConfig.resources.gpuKey</a></td>
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
			<td id="core--additionalConfig--resources--memLim"><a href="./values.yaml#L412">core.additionalConfig.resources.memLim</a></td>
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
			<td id="core--additionalConfig--resources--memReq"><a href="./values.yaml#L414">core.additionalConfig.resources.memReq</a></td>
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
			<td id="core--additionalConfig--resources--pvcLim"><a href="./values.yaml#L416">core.additionalConfig.resources.pvcLim</a></td>
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
			<td id="core--additionalConfig--resources--pvcReq"><a href="./values.yaml#L418">core.additionalConfig.resources.pvcReq</a></td>
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
			<td id="core--additionalConfig--security"><a href="./values.yaml#L420">core.additionalConfig.security</a></td>
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
			<td id="core--additionalConfig--security--disableRoot"><a href="./values.yaml#L422">core.additionalConfig.security.disableRoot</a></td>
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
			<td id="core--argoWorkflow"><a href="./values.yaml#L424">core.argoWorkflow</a></td>
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
			<td id="core--argoWorkflow--configmap"><a href="./values.yaml#L426">core.argoWorkflow.configmap</a></td>
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
			<td id="core--argoWorkflow--key"><a href="./values.yaml#L428">core.argoWorkflow.key</a></td>
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
			<td id="core--argoWorkflow--serviceAccount"><a href="./values.yaml#L430">core.argoWorkflow.serviceAccount</a></td>
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
			<td id="core--argoWorkflow--user"><a href="./values.yaml#L432">core.argoWorkflow.user</a></td>
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
			<td id="core--authentication"><a href="./values.yaml#L434">core.authentication</a></td>
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
    "password": "corepwd",
    "username": "coreuser"
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
			<td id="core--authentication--openId"><a href="./values.yaml#L444">core.authentication.openId</a></td>
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
			<td id="core--authentication--openId--enabled"><a href="./values.yaml#L446">core.authentication.openId.enabled</a></td>
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
			<td id="core--commonCredsSecret"><a href="./values.yaml#L454">core.commonCredsSecret</a></td>
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
  "secretName": "digitalhub-common-creds",
  "useExistingCommonCredsSecret": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--commonCredsSecret--useExistingCommonCredsSecret"><a href="./values.yaml#L458">core.commonCredsSecret.useExistingCommonCredsSecret</a></td>
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
			<td id="core--coreAuthCreds"><a href="./values.yaml#L460">core.coreAuthCreds</a></td>
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
  "clientId": "m04bfbmd03m8sf4u9ucz54ti",
  "clientSecret": "9rb5215z0aqd7fadzxuoyqe3",
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
			<td id="core--coreAuthCreds--clientId"><a href="./values.yaml#L462">core.coreAuthCreds.clientId</a></td>
			<td>
string
</td>
			<td>Core clientId</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"m04bfbmd03m8sf4u9ucz54ti"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--coreAuthCreds--clientSecret"><a href="./values.yaml#L464">core.coreAuthCreds.clientSecret</a></td>
			<td>
string
</td>
			<td>Core clientSecret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"9rb5215z0aqd7fadzxuoyqe3"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--coreAuthCreds--existingSecret"><a href="./values.yaml#L466">core.coreAuthCreds.existingSecret</a></td>
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
			<td id="core--coreAuthCreds--existingSecret--clientIdKey"><a href="./values.yaml#L468">core.coreAuthCreds.existingSecret.clientIdKey</a></td>
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
			<td id="core--coreAuthCreds--existingSecret--clientSecretKey"><a href="./values.yaml#L470">core.coreAuthCreds.existingSecret.clientSecretKey</a></td>
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
			<td id="core--coreAuthCreds--existingSecret--secretName"><a href="./values.yaml#L472">core.coreAuthCreds.existingSecret.secretName</a></td>
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
			<td id="core--databaseProvider"><a href="./values.yaml#L474">core.databaseProvider</a></td>
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
  "host": "database-postgres-cluster",
  "ownerSecret": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
  "port": "5432"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider--database"><a href="./values.yaml#L476">core.databaseProvider.database</a></td>
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
			<td id="core--databaseProvider--host"><a href="./values.yaml#L478">core.databaseProvider.host</a></td>
			<td>
string
</td>
			<td>Host of the main database of the platform</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"database-postgres-cluster"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider--ownerSecret"><a href="./values.yaml#L480">core.databaseProvider.ownerSecret</a></td>
			<td>
string
</td>
			<td>Secret of the main database of the platform containing the owner user credentials</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider--port"><a href="./values.yaml#L482">core.databaseProvider.port</a></td>
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
			<td id="core--image"><a href="./values.yaml#L484">core.image</a></td>
			<td>
object
</td>
			<td>Core image configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "tag": "0.13.0-beta5"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--image--tag"><a href="./values.yaml#L486">core.image.tag</a></td>
			<td>
string
</td>
			<td>Image tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.13.0-beta5"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--kanikoArgs"><a href="./values.yaml#L488">core.kanikoArgs</a></td>
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
			<td id="core--kubeai"><a href="./values.yaml#L490">core.kubeai</a></td>
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
			<td id="core--kubeai--enabled"><a href="./values.yaml#L492">core.kubeai.enabled</a></td>
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
			<td id="core--kubeai--port"><a href="./values.yaml#L494">core.kubeai.port</a></td>
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
			<td id="core--kubeai--serviceName"><a href="./values.yaml#L496">core.kubeai.serviceName</a></td>
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
			<td id="core--postgres"><a href="./values.yaml#L498">core.postgres</a></td>
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
      "name": "coreuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do",
      "passwordKey": "password",
      "usernameKey": "username"
    },
    "password": "",
    "username": ""
  },
  "database": "core",
  "host": "core-postgres-cluster",
  "port": "5432",
  "schema": "public"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials"><a href="./values.yaml#L500">core.postgres.credentials</a></td>
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
    "name": "coreuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do",
    "passwordKey": "password",
    "usernameKey": "username"
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
			<td id="core--postgres--credentials--existingSecret"><a href="./values.yaml#L502">core.postgres.credentials.existingSecret</a></td>
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
  "name": "coreuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do",
  "passwordKey": "password",
  "usernameKey": "username"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--existingSecret--name"><a href="./values.yaml#L504">core.postgres.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Secret containing the Core database admin user credentials</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"coreuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--existingSecret--passwordKey"><a href="./values.yaml#L506">core.postgres.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Core db user password key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--existingSecret--usernameKey"><a href="./values.yaml#L508">core.postgres.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Core db user username key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--password"><a href="./values.yaml#L510">core.postgres.credentials.password</a></td>
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
			<td id="core--postgres--credentials--username"><a href="./values.yaml#L512">core.postgres.credentials.username</a></td>
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
			<td id="core--postgres--database"><a href="./values.yaml#L514">core.postgres.database</a></td>
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
			<td id="core--postgres--host"><a href="./values.yaml#L516">core.postgres.host</a></td>
			<td>
string
</td>
			<td>Host of the Core database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"core-postgres-cluster"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--port"><a href="./values.yaml#L518">core.postgres.port</a></td>
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
			<td id="core--postgres--schema"><a href="./values.yaml#L520">core.postgres.schema</a></td>
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
			<td id="core--s3"><a href="./values.yaml#L522">core.s3</a></td>
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
  "accessKey": "digitalhub",
  "bucket": "datalake",
  "dynamicCreds": {
    "enabled": false
  },
  "enabled": true,
  "endpoint": "minio",
  "existingSecret": {
    "accessKeyKey": "",
    "name": "",
    "secretKeyKey": ""
  },
  "port": "9000",
  "protocol": "http",
  "publicUrl": "http://192.168.49.2:30080",
  "region": "us-east-1",
  "secretKey": "digitalhub"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--accessKey"><a href="./values.yaml#L527">core.s3.accessKey</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the Access key of your S3 instance.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--bucket"><a href="./values.yaml#L529">core.s3.bucket</a></td>
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
			<td id="core--s3--dynamicCreds"><a href="./values.yaml#L531">core.s3.dynamicCreds</a></td>
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
			<td id="core--s3--dynamicCreds--enabled"><a href="./values.yaml#L533">core.s3.dynamicCreds.enabled</a></td>
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
			<td id="core--s3--endpoint"><a href="./values.yaml#L535">core.s3.endpoint</a></td>
			<td>
string
</td>
			<td>Endpoint of your S3 instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--existingSecret"><a href="./values.yaml#L538">core.s3.existingSecret</a></td>
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
			<td id="core--s3--existingSecret--accessKeyKey"><a href="./values.yaml#L540">core.s3.existingSecret.accessKeyKey</a></td>
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
			<td id="core--s3--existingSecret--name"><a href="./values.yaml#L542">core.s3.existingSecret.name</a></td>
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
			<td id="core--s3--existingSecret--secretKeyKey"><a href="./values.yaml#L544">core.s3.existingSecret.secretKeyKey</a></td>
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
			<td id="core--s3--port"><a href="./values.yaml#L546">core.s3.port</a></td>
			<td>
string
</td>
			<td>Port of your S3 instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"9000"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--protocol"><a href="./values.yaml#L548">core.s3.protocol</a></td>
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
			<td id="core--s3--publicUrl"><a href="./values.yaml#L550">core.s3.publicUrl</a></td>
			<td>
string
</td>
			<td>Public url of your S3 instance</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http://192.168.49.2:30080"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--region"><a href="./values.yaml#L552">core.s3.region</a></td>
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
			<td id="core--s3--secretKey"><a href="./values.yaml#L555">core.s3.secretKey</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the Secret key of your S3 instance.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--service"><a href="./values.yaml#L557">core.service</a></td>
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
			<td id="core--service--httpNodePort"><a href="./values.yaml#L559">core.service.httpNodePort</a></td>
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
			<td id="core--service--type"><a href="./values.yaml#L561">core.service.type</a></td>
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
			<td id="core--solr"><a href="./values.yaml#L563">core.solr</a></td>
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
      "enabled": true,
      "image": "curlimages/curl:8.15.0",
      "securityJsonSecret": "digitalhub-solrcloud-security-bootstrap"
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
  "enabled": true,
  "fullNameOverride": "digitalhub",
  "url": "http://digitalhub-solrcloud-common/solr"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--enabled"><a href="./values.yaml#L565">core.solr.enabled</a></td>
			<td>
bool
</td>
			<td>Set this value to true if you want to use Core with Solr</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection"><a href="./values.yaml#L567">core.solr.collection</a></td>
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
    "enabled": true,
    "image": "curlimages/curl:8.15.0",
    "securityJsonSecret": "digitalhub-solrcloud-security-bootstrap"
  },
  "name": "dhcore"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--initialize"><a href="./values.yaml#L569">core.solr.collection.initialize</a></td>
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
  "image": "curlimages/curl:8.15.0",
  "securityJsonSecret": "digitalhub-solrcloud-security-bootstrap"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--initialize--enabled"><a href="./values.yaml#L571">core.solr.collection.initialize.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Solr collection initialization by script, use it if you have set Basic Auth for Solr</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--initialize--image"><a href="./values.yaml#L573">core.solr.collection.initialize.image</a></td>
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
			<td id="core--solr--collection--initialize--securityJsonSecret"><a href="./values.yaml#L577">core.solr.collection.initialize.securityJsonSecret</a></td>
			<td>
string
</td>
			<td>Name of the secret containing the Solr security.json.  Specify the name of your secret here if you want the Platform installation to create a compatible secret for you.  WARNING: In production, choose either core.solr.credentials.existingCollectionSecret or core.solr.credentials.existingSecurityJsonSecret, depending on your use case, instead of this value.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-solrcloud-security-bootstrap"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--name"><a href="./values.yaml#L579">core.solr.collection.name</a></td>
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
			<td id="core--solr--credentials"><a href="./values.yaml#L581">core.solr.credentials</a></td>
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
			<td id="core--solr--credentials--existingCollectionSecret"><a href="./values.yaml#L585">core.solr.credentials.existingCollectionSecret</a></td>
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
			<td id="core--solr--credentials--existingCollectionSecret--passwordKey"><a href="./values.yaml#L587">core.solr.credentials.existingCollectionSecret.passwordKey</a></td>
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
			<td id="core--solr--credentials--existingCollectionSecret--secretName"><a href="./values.yaml#L589">core.solr.credentials.existingCollectionSecret.secretName</a></td>
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
			<td id="core--solr--credentials--existingSecurityJsonSecret"><a href="./values.yaml#L591">core.solr.credentials.existingSecurityJsonSecret</a></td>
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
			<td id="core--solr--credentials--existingSecurityJsonSecret--adminKey"><a href="./values.yaml#L593">core.solr.credentials.existingSecurityJsonSecret.adminKey</a></td>
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
			<td id="core--solr--credentials--existingSecurityJsonSecret--secretName"><a href="./values.yaml#L595">core.solr.credentials.existingSecurityJsonSecret.secretName</a></td>
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
			<td id="core--solr--credentials--user"><a href="./values.yaml#L597">core.solr.credentials.user</a></td>
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
			<td id="core--solr--fullNameOverride"><a href="./values.yaml#L599">core.solr.fullNameOverride</a></td>
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
			<td id="core--solr--url"><a href="./values.yaml#L601">core.solr.url</a></td>
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
			<td id="core--sts"><a href="./values.yaml#L603">core.sts</a></td>
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
    "roles": "digitalhub_owner_user"
  },
  "databaseProvider": {
    "credentials": {
      "existingSecret": {
        "name": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
        "passwordKey": "password",
        "usernameKey": "username"
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
        "name": "stsuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do",
        "passwordKey": "password",
        "usernameKey": "username"
      }
    },
    "database": "sts",
    "driver": "org.postgresql.Driver",
    "host": "core-postgres-cluster",
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
			<td id="core--sts--enabled"><a href="./values.yaml#L605">core.sts.enabled</a></td>
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
			<td id="core--sts--client"><a href="./values.yaml#L607">core.sts.client</a></td>
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
			<td id="core--sts--client--clientId"><a href="./values.yaml#L609">core.sts.client.clientId</a></td>
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
			<td id="core--sts--client--clientSecret"><a href="./values.yaml#L611">core.sts.client.clientSecret</a></td>
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
			<td id="core--sts--credentials"><a href="./values.yaml#L613">core.sts.credentials</a></td>
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
  "roles": "digitalhub_owner_user"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--credentials--roles"><a href="./values.yaml#L616">core.sts.credentials.roles</a></td>
			<td>
string
</td>
			<td>Roles that will be mapped to the user for Database operations.  Must correspond to the owner user of the Platform's main database.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub_owner_user"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--databaseProvider"><a href="./values.yaml#L618">core.sts.databaseProvider</a></td>
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
      "name": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
      "passwordKey": "password",
      "usernameKey": "username"
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
			<td id="core--sts--databaseProvider--enabled"><a href="./values.yaml#L620">core.sts.databaseProvider.enabled</a></td>
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
			<td id="core--sts--databaseProvider--credentials"><a href="./values.yaml#L622">core.sts.databaseProvider.credentials</a></td>
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
    "name": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
    "passwordKey": "password",
    "usernameKey": "username"
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
			<td id="core--sts--databaseProvider--credentials--existingSecret"><a href="./values.yaml#L625">core.sts.databaseProvider.credentials.existingSecret</a></td>
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
  "name": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
  "passwordKey": "password",
  "usernameKey": "username"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--databaseProvider--credentials--existingSecret--name"><a href="./values.yaml#L627">core.sts.databaseProvider.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing username and password of the Platform's main database admin user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--databaseProvider--credentials--existingSecret--passwordKey"><a href="./values.yaml#L629">core.sts.databaseProvider.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the Platform's main database owner user password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--databaseProvider--credentials--existingSecret--usernameKey"><a href="./values.yaml#L631">core.sts.databaseProvider.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the Platform's main database owner user username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--databaseProvider--credentials--password"><a href="./values.yaml#L634">core.sts.databaseProvider.credentials.password</a></td>
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
			<td id="core--sts--databaseProvider--credentials--username"><a href="./values.yaml#L637">core.sts.databaseProvider.credentials.username</a></td>
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
			<td id="core--sts--jwt"><a href="./values.yaml#L639">core.sts.jwt</a></td>
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
			<td id="core--sts--jwt--issuerUri"><a href="./values.yaml#L641">core.sts.jwt.issuerUri</a></td>
			<td>
string
</td>
			<td>URL of the JWT issuer.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http://digitalhub-core:8080"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb"><a href="./values.yaml#L643">core.sts.stsDb</a></td>
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
      "name": "stsuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do",
      "passwordKey": "password",
      "usernameKey": "username"
    }
  },
  "database": "sts",
  "driver": "org.postgresql.Driver",
  "host": "core-postgres-cluster",
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
			<td id="core--sts--stsDb--credentials"><a href="./values.yaml#L645">core.sts.stsDb.credentials</a></td>
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
    "name": "stsuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do",
    "passwordKey": "password",
    "usernameKey": "username"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--credentials--existingSecret"><a href="./values.yaml#L648">core.sts.stsDb.credentials.existingSecret</a></td>
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
  "name": "stsuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do",
  "passwordKey": "password",
  "usernameKey": "username"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--credentials--existingSecret--name"><a href="./values.yaml#L650">core.sts.stsDb.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td>Name of the secret containing username and password of the STS database user</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"stsuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--credentials--existingSecret--passwordKey"><a href="./values.yaml#L652">core.sts.stsDb.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the STS database user password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--credentials--existingSecret--usernameKey"><a href="./values.yaml#L654">core.sts.stsDb.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td>Key corresponding to the STS database user username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--database"><a href="./values.yaml#L656">core.sts.stsDb.database</a></td>
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
			<td id="core--sts--stsDb--driver"><a href="./values.yaml#L658">core.sts.stsDb.driver</a></td>
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
			<td id="core--sts--stsDb--host"><a href="./values.yaml#L660">core.sts.stsDb.host</a></td>
			<td>
string
</td>
			<td>Host of the STS database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"core-postgres-cluster"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--platform"><a href="./values.yaml#L662">core.sts.stsDb.platform</a></td>
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
			<td id="core--sts--stsDb--port"><a href="./values.yaml#L664">core.sts.stsDb.port</a></td>
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
			<td id="core--sts--stsDb--schema"><a href="./values.yaml#L666">core.sts.stsDb.schema</a></td>
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
			<td id="dashboard"><a href="./values.yaml#L669">dashboard</a></td>
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
			<td id="dashboard--additional-components"><a href="./values.yaml#L671">dashboard.additional-components</a></td>
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
			<td id="dashboard--additional-components--enabled"><a href="./values.yaml#L673">dashboard.additional-components.enabled</a></td>
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
			<td id="dashboard--additional-components--apps"><a href="./values.yaml#L675">dashboard.additional-components.apps</a></td>
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
			<td id="dashboard--affinity"><a href="./values.yaml#L706">dashboard.affinity</a></td>
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
			<td id="dashboard--autoscaling"><a href="./values.yaml#L708">dashboard.autoscaling</a></td>
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
			<td id="dashboard--autoscaling--enabled"><a href="./values.yaml#L710">dashboard.autoscaling.enabled</a></td>
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
			<td id="dashboard--autoscaling--maxReplicas"><a href="./values.yaml#L712">dashboard.autoscaling.maxReplicas</a></td>
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
			<td id="dashboard--autoscaling--minReplicas"><a href="./values.yaml#L714">dashboard.autoscaling.minReplicas</a></td>
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
			<td id="dashboard--autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L716">dashboard.autoscaling.targetCPUUtilizationPercentage</a></td>
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
			<td id="dashboard--image"><a href="./values.yaml#L718">dashboard.image</a></td>
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
			<td id="dashboard--image--pullPolicy"><a href="./values.yaml#L720">dashboard.image.pullPolicy</a></td>
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
			<td id="dashboard--image--repository"><a href="./values.yaml#L722">dashboard.image.repository</a></td>
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
			<td id="dashboard--image--tag"><a href="./values.yaml#L724">dashboard.image.tag</a></td>
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
			<td id="dashboard--imagePullSecrets"><a href="./values.yaml#L729">dashboard.imagePullSecrets</a></td>
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
			<td id="dashboard--ingress"><a href="./values.yaml#L731">dashboard.ingress</a></td>
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
			<td id="dashboard--ingress--enabled"><a href="./values.yaml#L733">dashboard.ingress.enabled</a></td>
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
			<td id="dashboard--ingress--annotations"><a href="./values.yaml#L735">dashboard.ingress.annotations</a></td>
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
			<td id="dashboard--ingress--className"><a href="./values.yaml#L737">dashboard.ingress.className</a></td>
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
			<td id="dashboard--ingress--hosts"><a href="./values.yaml#L739">dashboard.ingress.hosts</a></td>
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
			<td id="dashboard--ingress--tls"><a href="./values.yaml#L745">dashboard.ingress.tls</a></td>
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
			<td id="dashboard--nodeSelector"><a href="./values.yaml#L750">dashboard.nodeSelector</a></td>
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
			<td id="dashboard--oidc"><a href="./values.yaml#L752">dashboard.oidc</a></td>
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
			<td id="dashboard--oidc--enabled"><a href="./values.yaml#L754">dashboard.oidc.enabled</a></td>
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
			<td id="dashboard--oidc--audience"><a href="./values.yaml#L756">dashboard.oidc.audience</a></td>
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
			<td id="dashboard--oidc--audience--clientId"><a href="./values.yaml#L759">dashboard.oidc.audience.clientId</a></td>
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
			<td id="dashboard--oidc--audience--externalSecret"><a href="./values.yaml#L761">dashboard.oidc.audience.externalSecret</a></td>
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
			<td id="dashboard--oidc--audience--externalSecret--key"><a href="./values.yaml#L763">dashboard.oidc.audience.externalSecret.key</a></td>
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
			<td id="dashboard--oidc--audience--externalSecret--name"><a href="./values.yaml#L765">dashboard.oidc.audience.externalSecret.name</a></td>
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
			<td id="dashboard--oidc--config"><a href="./values.yaml#L767">dashboard.oidc.config</a></td>
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
			<td id="dashboard--oidc--config--issuer"><a href="./values.yaml#L769">dashboard.oidc.config.issuer</a></td>
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
			<td id="dashboard--podAnnotations"><a href="./values.yaml#L771">dashboard.podAnnotations</a></td>
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
			<td id="dashboard--podLabels"><a href="./values.yaml#L773">dashboard.podLabels</a></td>
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
			<td id="dashboard--podSecurityContext"><a href="./values.yaml#L775">dashboard.podSecurityContext</a></td>
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
			<td id="dashboard--podSecurityContext--fsGroup"><a href="./values.yaml#L777">dashboard.podSecurityContext.fsGroup</a></td>
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
			<td id="dashboard--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L779">dashboard.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="dashboard--podSecurityContext--runAsUser"><a href="./values.yaml#L781">dashboard.podSecurityContext.runAsUser</a></td>
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
			<td id="dashboard--podSecurityContext--seccompProfile"><a href="./values.yaml#L783">dashboard.podSecurityContext.seccompProfile</a></td>
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
			<td id="dashboard--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L785">dashboard.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="dashboard--replicaCount"><a href="./values.yaml#L787">dashboard.replicaCount</a></td>
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
			<td id="dashboard--resources"><a href="./values.yaml#L789">dashboard.resources</a></td>
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
			<td id="dashboard--resources--limits"><a href="./values.yaml#L791">dashboard.resources.limits</a></td>
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
			<td id="dashboard--resources--limits--cpu"><a href="./values.yaml#L793">dashboard.resources.limits.cpu</a></td>
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
			<td id="dashboard--resources--limits--memory"><a href="./values.yaml#L795">dashboard.resources.limits.memory</a></td>
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
			<td id="dashboard--resources--requests"><a href="./values.yaml#L797">dashboard.resources.requests</a></td>
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
			<td id="dashboard--resources--requests--cpu"><a href="./values.yaml#L799">dashboard.resources.requests.cpu</a></td>
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
			<td id="dashboard--resources--requests--memory"><a href="./values.yaml#L801">dashboard.resources.requests.memory</a></td>
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
			<td id="dashboard--securityContext"><a href="./values.yaml#L803">dashboard.securityContext</a></td>
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
			<td id="dashboard--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L805">dashboard.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="dashboard--securityContext--capabilities"><a href="./values.yaml#L807">dashboard.securityContext.capabilities</a></td>
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
			<td id="dashboard--securityContext--capabilities--drop"><a href="./values.yaml#L809">dashboard.securityContext.capabilities.drop</a></td>
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
			<td id="dashboard--securityContext--runAsNonRoot"><a href="./values.yaml#L812">dashboard.securityContext.runAsNonRoot</a></td>
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
			<td id="dashboard--securityContext--runAsUser"><a href="./values.yaml#L814">dashboard.securityContext.runAsUser</a></td>
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
			<td id="dashboard--securityContext--seccompProfile"><a href="./values.yaml#L816">dashboard.securityContext.seccompProfile</a></td>
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
			<td id="dashboard--securityContext--seccompProfile--type"><a href="./values.yaml#L818">dashboard.securityContext.seccompProfile.type</a></td>
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
			<td id="dashboard--service"><a href="./values.yaml#L820">dashboard.service</a></td>
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
			<td id="dashboard--service--httpNodePort"><a href="./values.yaml#L822">dashboard.service.httpNodePort</a></td>
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
			<td id="dashboard--service--port"><a href="./values.yaml#L824">dashboard.service.port</a></td>
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
			<td id="dashboard--service--type"><a href="./values.yaml#L826">dashboard.service.type</a></td>
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
			<td id="dashboard--serviceAccount"><a href="./values.yaml#L828">dashboard.serviceAccount</a></td>
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
			<td id="dashboard--serviceAccount--annotations"><a href="./values.yaml#L830">dashboard.serviceAccount.annotations</a></td>
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
			<td id="dashboard--serviceAccount--automount"><a href="./values.yaml#L832">dashboard.serviceAccount.automount</a></td>
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
			<td id="dashboard--serviceAccount--create"><a href="./values.yaml#L834">dashboard.serviceAccount.create</a></td>
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
			<td id="dashboard--serviceAccount--name"><a href="./values.yaml#L836">dashboard.serviceAccount.name</a></td>
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
			<td id="dashboard--tolerations"><a href="./values.yaml#L838">dashboard.tolerations</a></td>
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
			<td id="dashboard--volumes"><a href="./values.yaml#L840">dashboard.volumes</a></td>
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
			<td id="docker-registry"><a href="./values.yaml#L843">docker-registry</a></td>
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
			<td id="docker-registry--enabled"><a href="./values.yaml#L845">docker-registry.enabled</a></td>
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
			<td id="docker-registry--className"><a href="./values.yaml#L847">docker-registry.className</a></td>
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
			<td id="docker-registry--fullnameOverride"><a href="./values.yaml#L849">docker-registry.fullnameOverride</a></td>
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
			<td id="docker-registry--ingress"><a href="./values.yaml#L851">docker-registry.ingress</a></td>
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
			<td id="docker-registry--ingress--enabled"><a href="./values.yaml#L853">docker-registry.ingress.enabled</a></td>
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
			<td id="docker-registry--ingress--hosts"><a href="./values.yaml#L855">docker-registry.ingress.hosts</a></td>
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
			<td id="docker-registry--ingress--path"><a href="./values.yaml#L858">docker-registry.ingress.path</a></td>
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
			<td id="docker-registry--persistence"><a href="./values.yaml#L860">docker-registry.persistence</a></td>
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
			<td id="docker-registry--persistence--enabled"><a href="./values.yaml#L862">docker-registry.persistence.enabled</a></td>
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
			<td id="docker-registry--persistence--accessMode"><a href="./values.yaml#L864">docker-registry.persistence.accessMode</a></td>
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
			<td id="docker-registry--persistence--size"><a href="./values.yaml#L866">docker-registry.persistence.size</a></td>
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
			<td id="docker-registry--service"><a href="./values.yaml#L868">docker-registry.service</a></td>
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
			<td id="docker-registry--service--nodePort"><a href="./values.yaml#L870">docker-registry.service.nodePort</a></td>
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
			<td id="docker-registry--service--type"><a href="./values.yaml#L872">docker-registry.service.type</a></td>
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
			<td id="docker-registry--updateStrategy"><a href="./values.yaml#L874">docker-registry.updateStrategy</a></td>
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
			<td id="docker-registry--updateStrategy--type"><a href="./values.yaml#L876">docker-registry.updateStrategy.type</a></td>
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
			<td id="dremio-rest-server-operator"><a href="./values.yaml#L879">dremio-rest-server-operator</a></td>
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
			<td id="dremio-rest-server-operator--enabled"><a href="./values.yaml#L881">dremio-rest-server-operator.enabled</a></td>
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
			<td id="ext-postgres-operator"><a href="./values.yaml#L884">ext-postgres-operator</a></td>
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
  "enabled": true,
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
    "host": "database-postgres-cluster",
    "password": "",
    "uri_args": " ",
    "user": ""
  },
  "postgresCredsExistingSecrets": {
    "password": {
      "secretKey": "password",
      "secretName": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
    },
    "username": {
      "secretKey": "username",
      "secretName": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
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
			<td id="ext-postgres-operator--enabled"><a href="./values.yaml#L886">ext-postgres-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable the external Postgres operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--image"><a href="./values.yaml#L888">ext-postgres-operator.image</a></td>
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
			<td id="ext-postgres-operator--image--tag"><a href="./values.yaml#L890">ext-postgres-operator.image.tag</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext"><a href="./values.yaml#L892">ext-postgres-operator.podSecurityContext</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L894">ext-postgres-operator.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--seccompProfile"><a href="./values.yaml#L896">ext-postgres-operator.podSecurityContext.seccompProfile</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L898">ext-postgres-operator.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="ext-postgres-operator--postgres"><a href="./values.yaml#L900">ext-postgres-operator.postgres</a></td>
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
  "host": "database-postgres-cluster",
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
			<td id="ext-postgres-operator--postgres--cloud_provider"><a href="./values.yaml#L902">ext-postgres-operator.postgres.cloud_provider</a></td>
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
			<td id="ext-postgres-operator--postgres--default_database"><a href="./values.yaml#L904">ext-postgres-operator.postgres.default_database</a></td>
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
			<td id="ext-postgres-operator--postgres--host"><a href="./values.yaml#L906">ext-postgres-operator.postgres.host</a></td>
			<td>
string
</td>
			<td>Host of the platform's main database</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"database-postgres-cluster"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgres--password"><a href="./values.yaml#L909">ext-postgres-operator.postgres.password</a></td>
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
			<td id="ext-postgres-operator--postgres--uri_args"><a href="./values.yaml#L911">ext-postgres-operator.postgres.uri_args</a></td>
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
			<td id="ext-postgres-operator--postgres--user"><a href="./values.yaml#L914">ext-postgres-operator.postgres.user</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets"><a href="./values.yaml#L917">ext-postgres-operator.postgresCredsExistingSecrets</a></td>
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
    "secretKey": "password",
    "secretName": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
  },
  "username": {
    "secretKey": "username",
    "secretName": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password"><a href="./values.yaml#L919">ext-postgres-operator.postgresCredsExistingSecrets.password</a></td>
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
  "secretKey": "password",
  "secretName": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password--secretKey"><a href="./values.yaml#L921">ext-postgres-operator.postgresCredsExistingSecrets.password.secretKey</a></td>
			<td>
string
</td>
			<td>Password key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password--secretName"><a href="./values.yaml#L923">ext-postgres-operator.postgresCredsExistingSecrets.password.secretName</a></td>
			<td>
string
</td>
			<td>Secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username"><a href="./values.yaml#L925">ext-postgres-operator.postgresCredsExistingSecrets.username</a></td>
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
  "secretKey": "username",
  "secretName": "digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username--secretKey"><a href="./values.yaml#L927">ext-postgres-operator.postgresCredsExistingSecrets.username.secretKey</a></td>
			<td>
string
</td>
			<td>Username key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username--secretName"><a href="./values.yaml#L929">ext-postgres-operator.postgresCredsExistingSecrets.username.secretName</a></td>
			<td>
string
</td>
			<td>Secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--securityContext"><a href="./values.yaml#L931">ext-postgres-operator.securityContext</a></td>
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
			<td id="ext-postgres-operator--securityContext--seccompProfile"><a href="./values.yaml#L933">ext-postgres-operator.securityContext.seccompProfile</a></td>
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
			<td id="ext-postgres-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L935">ext-postgres-operator.securityContext.seccompProfile.type</a></td>
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
			<td id="jobs"><a href="./values.yaml#L938">jobs</a></td>
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
			<td id="jobs--delete"><a href="./values.yaml#L940">jobs.delete</a></td>
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
			<td id="jobs--delete--securityContext"><a href="./values.yaml#L942">jobs.delete.securityContext</a></td>
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
			<td id="jobs--delete--securityContext--readOnlyRootFilesystem"><a href="./values.yaml#L944">jobs.delete.securityContext.readOnlyRootFilesystem</a></td>
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
			<td id="kubeai"><a href="./values.yaml#L948">kubeai</a></td>
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
			<td id="kubeai--enabled"><a href="./values.yaml#L950">kubeai.enabled</a></td>
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
			<td id="kubeai--crds"><a href="./values.yaml#L952">kubeai.crds</a></td>
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
			<td id="kubeai--crds--enabled"><a href="./values.yaml#L954">kubeai.crds.enabled</a></td>
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
			<td id="kubeai--open-webui"><a href="./values.yaml#L956">kubeai.open-webui</a></td>
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
			<td id="kubeai--open-webui--enabled"><a href="./values.yaml#L959">kubeai.open-webui.enabled</a></td>
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
			<td id="kubernetes-resource-manager"><a href="./values.yaml#L962">kubernetes-resource-manager</a></td>
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
      "names": "(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*"
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
			<td id="kubernetes-resource-manager--enabled"><a href="./values.yaml#L964">kubernetes-resource-manager.enabled</a></td>
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
			<td id="kubernetes-resource-manager--resourceSelectors"><a href="./values.yaml#L966">kubernetes-resource-manager.resourceSelectors</a></td>
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
    "names": "(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--resourceSelectors--secrets"><a href="./values.yaml#L968">kubernetes-resource-manager.resourceSelectors.secrets</a></td>
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
  "names": "(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--resourceSelectors--secrets--names"><a href="./values.yaml#L970">kubernetes-resource-manager.resourceSelectors.secrets.names</a></td>
			<td>
string
</td>
			<td>A filter for the secrets that you want to see based on their name pattern</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--service"><a href="./values.yaml#L972">kubernetes-resource-manager.service</a></td>
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
			<td id="kubernetes-resource-manager--service--nodePort"><a href="./values.yaml#L974">kubernetes-resource-manager.service.nodePort</a></td>
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
			<td id="kubernetes-resource-manager--service--type"><a href="./values.yaml#L976">kubernetes-resource-manager.service.type</a></td>
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
			<td id="minio"><a href="./values.yaml#L980">minio</a></td>
			<td>
object
</td>
			<td>MinIO configuration.  For a complete list of all the Values, as well as the specific documentation, please check the [MinIO chart repository](https://github.com/minio/minio/tree/master/helm/minio)</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "buckets": [
    {
      "name": "argo",
      "policy": "none",
      "purge": false
    },
    {
      "name": "datalake",
      "policy": "none",
      "purge": false
    }
  ],
  "consoleService": {
    "nodePort": 30090,
    "port": 9001,
    "type": "NodePort"
  },
  "containerSecurityContext": {
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
  "deploymentUpdate": {
    "type": "Recreate"
  },
  "enabled": true,
  "fullnameOverride": "minio",
  "ingress": {
    "enabled": false
  },
  "makeBucketJob": {
    "containerSecurityContext": {
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
    "securityContext": {
      "enabled": true
    }
  },
  "makePolicyJob": {
    "containerSecurityContext": {
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
    "securityContext": {
      "enabled": true
    }
  },
  "makeUserJob": {
    "containerSecurityContext": {
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
    "securityContext": {
      "enabled": true
    }
  },
  "mode": "standalone",
  "oidc": {
    "claimName": "",
    "claimPrefix": "",
    "clientId": "",
    "clientSecret": "",
    "comment": "",
    "configUrl": "",
    "displayName": "",
    "enabled": false,
    "existingClientIdKey": "",
    "existingClientSecretKey": "",
    "existingClientSecretName": "",
    "redirectUri": "",
    "scopes": ""
  },
  "persistence": {
    "enabled": true,
    "size": "128Gi"
  },
  "policies": [
    {
      "name": "readwriteargo",
      "statements": [
        {
          "actions": [
            "s3:*"
          ],
          "effect": "Allow",
          "resources": [
            "arn:aws:s3:::argo/*"
          ]
        }
      ]
    },
    {
      "name": "readwritedigitalhub",
      "statements": [
        {
          "actions": [
            "s3:*"
          ],
          "effect": "Allow",
          "resources": [
            "arn:aws:s3:::datalake/*"
          ]
        }
      ]
    }
  ],
  "postJob": {
    "securityContext": {
      "enabled": true,
      "runAsNonRoot": true,
      "seccompProfile": {
        "type": "RuntimeDefault"
      }
    }
  },
  "replicas": 1,
  "resources": {
    "requests": {
      "memory": "0.5Gi"
    }
  },
  "rootPassword": "minio123",
  "rootUser": "minio",
  "securityContext": {
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "service": {
    "nodePort": 30080,
    "port": 9000,
    "type": "NodePort"
  },
  "users": [
    {
      "accessKey": "argo",
      "policy": "readwriteargo",
      "secretKey": "argo1234"
    },
    {
      "accessKey": "digitalhub",
      "policy": "readwritedigitalhub",
      "secretKey": "digitalhub"
    }
  ]
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--enabled"><a href="./values.yaml#L982">minio.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable MinIO</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--buckets"><a href="./values.yaml#L984">minio.buckets</a></td>
			<td>
list
</td>
			<td>List of buckets</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "name": "argo",
    "policy": "none",
    "purge": false
  },
  {
    "name": "datalake",
    "policy": "none",
    "purge": false
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--consoleService"><a href="./values.yaml#L992">minio.consoleService</a></td>
			<td>
object
</td>
			<td>MinIO console service configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "nodePort": 30090,
  "port": 9001,
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--consoleService--nodePort"><a href="./values.yaml#L994">minio.consoleService.nodePort</a></td>
			<td>
int
</td>
			<td>Service nodePort</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
30090
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--consoleService--port"><a href="./values.yaml#L996">minio.consoleService.port</a></td>
			<td>
int
</td>
			<td>Service port</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
9001
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--consoleService--type"><a href="./values.yaml#L998">minio.consoleService.type</a></td>
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
			<td id="minio--containerSecurityContext"><a href="./values.yaml#L1000">minio.containerSecurityContext</a></td>
			<td>
object
</td>
			<td>MinIO [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="minio--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1002">minio.containerSecurityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>MinIO container allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--containerSecurityContext--capabilities"><a href="./values.yaml#L1004">minio.containerSecurityContext.capabilities</a></td>
			<td>
object
</td>
			<td>MinIO container configure capabilities</td>
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
			<td id="minio--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L1006">minio.containerSecurityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>MinIO container drop capabilities</td>
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
			<td id="minio--containerSecurityContext--runAsNonRoot"><a href="./values.yaml#L1009">minio.containerSecurityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>MinIO container allow run as root</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--containerSecurityContext--seccompProfile"><a href="./values.yaml#L1011">minio.containerSecurityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>MinIO container configure seccompProfile</td>
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
			<td id="minio--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L1013">minio.containerSecurityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>MinIO container configure seccompProfile type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--deploymentUpdate"><a href="./values.yaml#L1015">minio.deploymentUpdate</a></td>
			<td>
object
</td>
			<td>MinIO [Deployment update strategy](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#strategy)</td>
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
			<td id="minio--deploymentUpdate--type"><a href="./values.yaml#L1017">minio.deploymentUpdate.type</a></td>
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
			<td id="minio--fullnameOverride"><a href="./values.yaml#L1019">minio.fullnameOverride</a></td>
			<td>
string
</td>
			<td>Name of the MinIO resources</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--ingress"><a href="./values.yaml#L1021">minio.ingress</a></td>
			<td>
object
</td>
			<td>MinIO ingress configuration</td>
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
			<td id="minio--ingress--enabled"><a href="./values.yaml#L1023">minio.ingress.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable MinIO ingress</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makeBucketJob"><a href="./values.yaml#L1025">minio.makeBucketJob</a></td>
			<td>
object
</td>
			<td>Security context for the bucket creation Job</td>
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
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "securityContext": {
    "enabled": true
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makeBucketJob--containerSecurityContext"><a href="./values.yaml#L1027">minio.makeBucketJob.containerSecurityContext</a></td>
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
			<td id="minio--makeBucketJob--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1029">minio.makeBucketJob.containerSecurityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Container allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makeBucketJob--containerSecurityContext--capabilities"><a href="./values.yaml#L1031">minio.makeBucketJob.containerSecurityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Container configure capabilities</td>
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
			<td id="minio--makeBucketJob--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L1033">minio.makeBucketJob.containerSecurityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Container drop capabilities</td>
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
			<td id="minio--makeBucketJob--containerSecurityContext--runAsNonRoot"><a href="./values.yaml#L1036">minio.makeBucketJob.containerSecurityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Container allow run as root</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makeBucketJob--containerSecurityContext--seccompProfile"><a href="./values.yaml#L1038">minio.makeBucketJob.containerSecurityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Container configure seccompProfile</td>
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
			<td id="minio--makeBucketJob--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L1040">minio.makeBucketJob.containerSecurityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Container configure seccompProfile type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makeBucketJob--securityContext"><a href="./values.yaml#L1042">minio.makeBucketJob.securityContext</a></td>
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
			<td id="minio--makeBucketJob--securityContext--enabled"><a href="./values.yaml#L1044">minio.makeBucketJob.securityContext.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable custom security context for the Job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makePolicyJob"><a href="./values.yaml#L1046">minio.makePolicyJob</a></td>
			<td>
object
</td>
			<td>Security context for the policy creation Job</td>
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
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "securityContext": {
    "enabled": true
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makePolicyJob--containerSecurityContext"><a href="./values.yaml#L1048">minio.makePolicyJob.containerSecurityContext</a></td>
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
			<td id="minio--makePolicyJob--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1050">minio.makePolicyJob.containerSecurityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Container allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makePolicyJob--containerSecurityContext--capabilities"><a href="./values.yaml#L1052">minio.makePolicyJob.containerSecurityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Container configure capabilities</td>
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
			<td id="minio--makePolicyJob--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L1054">minio.makePolicyJob.containerSecurityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Container drop capabilities</td>
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
			<td id="minio--makePolicyJob--containerSecurityContext--runAsNonRoot"><a href="./values.yaml#L1057">minio.makePolicyJob.containerSecurityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Container allow run as root</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makePolicyJob--containerSecurityContext--seccompProfile"><a href="./values.yaml#L1059">minio.makePolicyJob.containerSecurityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Container configure seccompProfile</td>
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
			<td id="minio--makePolicyJob--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L1061">minio.makePolicyJob.containerSecurityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Container configure seccompProfile type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makePolicyJob--securityContext"><a href="./values.yaml#L1063">minio.makePolicyJob.securityContext</a></td>
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
			<td id="minio--makePolicyJob--securityContext--enabled"><a href="./values.yaml#L1065">minio.makePolicyJob.securityContext.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable custom security context for the Job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makeUserJob"><a href="./values.yaml#L1067">minio.makeUserJob</a></td>
			<td>
object
</td>
			<td>Security context for the user creation Job</td>
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
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "securityContext": {
    "enabled": true
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makeUserJob--containerSecurityContext"><a href="./values.yaml#L1069">minio.makeUserJob.containerSecurityContext</a></td>
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
			<td id="minio--makeUserJob--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1071">minio.makeUserJob.containerSecurityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Container allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makeUserJob--containerSecurityContext--capabilities"><a href="./values.yaml#L1073">minio.makeUserJob.containerSecurityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Container configure capabilities</td>
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
			<td id="minio--makeUserJob--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L1075">minio.makeUserJob.containerSecurityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Container drop capabilities</td>
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
			<td id="minio--makeUserJob--containerSecurityContext--runAsNonRoot"><a href="./values.yaml#L1078">minio.makeUserJob.containerSecurityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Container allow run as root</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makeUserJob--containerSecurityContext--seccompProfile"><a href="./values.yaml#L1080">minio.makeUserJob.containerSecurityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Container configure seccompProfile</td>
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
			<td id="minio--makeUserJob--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L1082">minio.makeUserJob.containerSecurityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Container configure seccompProfile type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--makeUserJob--securityContext"><a href="./values.yaml#L1084">minio.makeUserJob.securityContext</a></td>
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
			<td id="minio--makeUserJob--securityContext--enabled"><a href="./values.yaml#L1086">minio.makeUserJob.securityContext.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable custom security context for the Job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--mode"><a href="./values.yaml#L1088">minio.mode</a></td>
			<td>
string
</td>
			<td>Deployment mode for minio (standalone/distributed)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"standalone"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc"><a href="./values.yaml#L1090">minio.oidc</a></td>
			<td>
object
</td>
			<td>MinIO oidc authentication configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "claimName": "",
  "claimPrefix": "",
  "clientId": "",
  "clientSecret": "",
  "comment": "",
  "configUrl": "",
  "displayName": "",
  "enabled": false,
  "existingClientIdKey": "",
  "existingClientSecretKey": "",
  "existingClientSecretName": "",
  "redirectUri": "",
  "scopes": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc--enabled"><a href="./values.yaml#L1092">minio.oidc.enabled</a></td>
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
			<td id="minio--oidc--claimName"><a href="./values.yaml#L1094">minio.oidc.claimName</a></td>
			<td>
string
</td>
			<td>Claim name, set it to policy</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc--claimPrefix"><a href="./values.yaml#L1096">minio.oidc.claimPrefix</a></td>
			<td>
Optional
</td>
			<td>Claim prefix</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc--clientId"><a href="./values.yaml#L1099">minio.oidc.clientId</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the clientID.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc--clientSecret"><a href="./values.yaml#L1102">minio.oidc.clientSecret</a></td>
			<td>
string
</td>
			<td>Explicit declaration of the clientSecret.  It has lower priority than the corresponding secret values.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc--comment"><a href="./values.yaml#L1104">minio.oidc.comment</a></td>
			<td>
Optional
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
			<td id="minio--oidc--configUrl"><a href="./values.yaml#L1106">minio.oidc.configUrl</a></td>
			<td>
string
</td>
			<td>URL of the issuer</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc--displayName"><a href="./values.yaml#L1108">minio.oidc.displayName</a></td>
			<td>
Optional
</td>
			<td>Name that will be displayed in the MinIO login page, set this to your OAuth provider's name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc--existingClientIdKey"><a href="./values.yaml#L1110">minio.oidc.existingClientIdKey</a></td>
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
			<td id="minio--oidc--existingClientSecretKey"><a href="./values.yaml#L1112">minio.oidc.existingClientSecretKey</a></td>
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
			<td id="minio--oidc--existingClientSecretName"><a href="./values.yaml#L1114">minio.oidc.existingClientSecretName</a></td>
			<td>
string
</td>
			<td>Name of the secret containing clientID and clientSecret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc--redirectUri"><a href="./values.yaml#L1116">minio.oidc.redirectUri</a></td>
			<td>
string
</td>
			<td>Must be equal to https://console-endpoint-url/oauth_callback"</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc--scopes"><a href="./values.yaml#L1118">minio.oidc.scopes</a></td>
			<td>
string
</td>
			<td>Scopes</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--persistence"><a href="./values.yaml#L1120">minio.persistence</a></td>
			<td>
object
</td>
			<td>MinIO persistence configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": true,
  "size": "128Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--persistence--enabled"><a href="./values.yaml#L1122">minio.persistence.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/disable MinIO persistence</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--persistence--size"><a href="./values.yaml#L1124">minio.persistence.size</a></td>
			<td>
string
</td>
			<td>MinIO PVC size</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"128Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--policies"><a href="./values.yaml#L1126">minio.policies</a></td>
			<td>
list
</td>
			<td>List of MinIO policies</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "name": "readwriteargo",
    "statements": [
      {
        "actions": [
          "s3:*"
        ],
        "effect": "Allow",
        "resources": [
          "arn:aws:s3:::argo/*"
        ]
      }
    ]
  },
  {
    "name": "readwritedigitalhub",
    "statements": [
      {
        "actions": [
          "s3:*"
        ],
        "effect": "Allow",
        "resources": [
          "arn:aws:s3:::datalake/*"
        ]
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
			<td id="minio--postJob"><a href="./values.yaml#L1142">minio.postJob</a></td>
			<td>
object
</td>
			<td>Security context for the post-install/upgrade Job</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "securityContext": {
    "enabled": true,
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
			<td id="minio--postJob--securityContext"><a href="./values.yaml#L1144">minio.postJob.securityContext</a></td>
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
			<td id="minio--postJob--securityContext--enabled"><a href="./values.yaml#L1146">minio.postJob.securityContext.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable custom security context for the Job</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--postJob--securityContext--runAsNonRoot"><a href="./values.yaml#L1148">minio.postJob.securityContext.runAsNonRoot</a></td>
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
			<td id="minio--postJob--securityContext--seccompProfile"><a href="./values.yaml#L1150">minio.postJob.securityContext.seccompProfile</a></td>
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
			<td id="minio--postJob--securityContext--seccompProfile--type"><a href="./values.yaml#L1152">minio.postJob.securityContext.seccompProfile.type</a></td>
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
			<td id="minio--replicas"><a href="./values.yaml#L1154">minio.replicas</a></td>
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
			<td id="minio--resources"><a href="./values.yaml#L1156">minio.resources</a></td>
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
  "requests": {
    "memory": "0.5Gi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--resources--requests"><a href="./values.yaml#L1158">minio.resources.requests</a></td>
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
  "memory": "0.5Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--resources--requests--memory"><a href="./values.yaml#L1160">minio.resources.requests.memory</a></td>
			<td>
string
</td>
			<td>Memory request</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.5Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--rootPassword"><a href="./values.yaml#L1162">minio.rootPassword</a></td>
			<td>
string
</td>
			<td>MinIO admin password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio123"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--rootUser"><a href="./values.yaml#L1164">minio.rootUser</a></td>
			<td>
string
</td>
			<td>MinIO admin username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--securityContext"><a href="./values.yaml#L1166">minio.securityContext</a></td>
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
			<td id="minio--securityContext--runAsNonRoot"><a href="./values.yaml#L1168">minio.securityContext.runAsNonRoot</a></td>
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
			<td id="minio--securityContext--seccompProfile"><a href="./values.yaml#L1170">minio.securityContext.seccompProfile</a></td>
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
			<td id="minio--securityContext--seccompProfile--type"><a href="./values.yaml#L1172">minio.securityContext.seccompProfile.type</a></td>
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
			<td id="minio--service"><a href="./values.yaml#L1174">minio.service</a></td>
			<td>
object
</td>
			<td>MinIO service configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "nodePort": 30080,
  "port": 9000,
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--service--nodePort"><a href="./values.yaml#L1176">minio.service.nodePort</a></td>
			<td>
int
</td>
			<td>Service nodePort</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
30080
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--service--port"><a href="./values.yaml#L1178">minio.service.port</a></td>
			<td>
int
</td>
			<td>Service port</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
9000
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--service--type"><a href="./values.yaml#L1180">minio.service.type</a></td>
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
			<td id="minio--users"><a href="./values.yaml#L1182">minio.users</a></td>
			<td>
list
</td>
			<td>Users that will be created in MinIO in list format</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "accessKey": "argo",
    "policy": "readwriteargo",
    "secretKey": "argo1234"
  },
  {
    "accessKey": "digitalhub",
    "policy": "readwritedigitalhub",
    "secretKey": "digitalhub"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator"><a href="./values.yaml#L1191">minio-operator</a></td>
			<td>
object
</td>
			<td>MinIO operator (for KRM) configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "enabled": true,
  "minio": {
    "accessKey": "minio",
    "bucket": "datalake",
    "endpoint": "minio",
    "endpointPort": "9000",
    "protocol": "http",
    "secretKey": "minio123"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--enabled"><a href="./values.yaml#L1193">minio-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable MinIO operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio"><a href="./values.yaml#L1195">minio-operator.minio</a></td>
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
  "accessKey": "minio",
  "bucket": "datalake",
  "endpoint": "minio",
  "endpointPort": "9000",
  "protocol": "http",
  "secretKey": "minio123"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--accessKey"><a href="./values.yaml#L1197">minio-operator.minio.accessKey</a></td>
			<td>
string
</td>
			<td>MinIO admin accessKey</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--bucket"><a href="./values.yaml#L1199">minio-operator.minio.bucket</a></td>
			<td>
string
</td>
			<td>MinIO bucket name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"datalake"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--endpoint"><a href="./values.yaml#L1201">minio-operator.minio.endpoint</a></td>
			<td>
string
</td>
			<td>MinIO endpoint</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--endpointPort"><a href="./values.yaml#L1203">minio-operator.minio.endpointPort</a></td>
			<td>
string
</td>
			<td>MinIO endpoint port</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"9000"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--protocol"><a href="./values.yaml#L1205">minio-operator.minio.protocol</a></td>
			<td>
string
</td>
			<td>MinIO protocol (http/https)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--secretKey"><a href="./values.yaml#L1207">minio-operator.minio.secretKey</a></td>
			<td>
string
</td>
			<td>MinIO admin secret key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio123"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui"><a href="./values.yaml#L1211">open-webui</a></td>
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
      "value": "admin@cluster.local"
    },
    {
      "name": "ADMIN_USER_PASSWORD",
      "value": "admin"
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
			<td id="open-webui--enabled"><a href="./values.yaml#L1213">open-webui.enabled</a></td>
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
			<td id="open-webui--extraEnvFrom"><a href="./values.yaml#L1229">open-webui.extraEnvFrom</a></td>
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
			<td id="open-webui--extraEnvVars"><a href="./values.yaml#L1231">open-webui.extraEnvVars</a></td>
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
    "value": "admin@cluster.local"
  },
  {
    "name": "ADMIN_USER_PASSWORD",
    "value": "admin"
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
			<td id="open-webui--ollama"><a href="./values.yaml#L1256">open-webui.ollama</a></td>
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
			<td id="open-webui--ollama--enabled"><a href="./values.yaml#L1258">open-webui.ollama.enabled</a></td>
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
			<td id="open-webui--openaiBaseApiUrl"><a href="./values.yaml#L1261">open-webui.openaiBaseApiUrl</a></td>
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
			<td id="open-webui--pipelines"><a href="./values.yaml#L1263">open-webui.pipelines</a></td>
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
			<td id="open-webui--pipelines--enabled"><a href="./values.yaml#L1265">open-webui.pipelines.enabled</a></td>
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
			<td id="open-webui--service"><a href="./values.yaml#L1272">open-webui.service</a></td>
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
			<td id="open-webui--service--nodePort"><a href="./values.yaml#L1274">open-webui.service.nodePort</a></td>
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
			<td id="open-webui--service--type"><a href="./values.yaml#L1276">open-webui.service.type</a></td>
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
			<td id="platformPackages"><a href="./values.yaml#L1282">platformPackages</a></td>
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
      "tag": "0.12.0"
    },
    {
      "name": "digitalhub-runtime-dbt",
      "tag": "0.12.0"
    },
    {
      "name": "digitalhub-runtime-kfp",
      "tag": "0.12.0"
    },
    {
      "name": "digitalhub-runtime-modelserve",
      "tag": "0.12.0"
    },
    {
      "name": "digitalhub-runtime-python",
      "tag": "0.12.0"
    },
    {
      "name": "digitalhub[full]",
      "tag": "0.12.0"
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
			<td id="platformPackages--deleteOnCompletion"><a href="./values.yaml#L1284">platformPackages.deleteOnCompletion</a></td>
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
			<td id="platformPackages--image"><a href="./values.yaml#L1286">platformPackages.image</a></td>
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
			<td id="platformPackages--packages"><a href="./values.yaml#L1290">platformPackages.packages</a></td>
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
    "tag": "0.12.0"
  },
  {
    "name": "digitalhub-runtime-dbt",
    "tag": "0.12.0"
  },
  {
    "name": "digitalhub-runtime-kfp",
    "tag": "0.12.0"
  },
  {
    "name": "digitalhub-runtime-modelserve",
    "tag": "0.12.0"
  },
  {
    "name": "digitalhub-runtime-python",
    "tag": "0.12.0"
  },
  {
    "name": "digitalhub[full]",
    "tag": "0.12.0"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="platformPackages--preRelease"><a href="./values.yaml#L1306">platformPackages.preRelease</a></td>
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
			<td id="platformPackages--tag"><a href="./values.yaml#L1308">platformPackages.tag</a></td>
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
			<td id="postgres-operator"><a href="./values.yaml#L1311">postgres-operator</a></td>
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
      "enabled": true,
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
      "enabled": true,
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
      "enabled": true,
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
  "enabled": true,
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
			<td id="postgres-operator--enabled"><a href="./values.yaml#L1313">postgres-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable the Postgres operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases"><a href="./values.yaml#L1315">postgres-operator.databases</a></td>
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
    "enabled": true,
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
    "enabled": true,
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
    "enabled": true,
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
			<td id="postgres-operator--databases--coder"><a href="./values.yaml#L1317">postgres-operator.databases.coder</a></td>
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
  "enabled": true,
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
			<td id="postgres-operator--databases--coder--enabled"><a href="./values.yaml#L1319">postgres-operator.databases.coder.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Coder database creation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources"><a href="./values.yaml#L1321">postgres-operator.databases.coder.resources</a></td>
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
			<td id="postgres-operator--databases--coder--resources--limits"><a href="./values.yaml#L1323">postgres-operator.databases.coder.resources.limits</a></td>
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
			<td id="postgres-operator--databases--coder--resources--limits--cpu"><a href="./values.yaml#L1325">postgres-operator.databases.coder.resources.limits.cpu</a></td>
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
			<td id="postgres-operator--databases--coder--resources--limits--memory"><a href="./values.yaml#L1327">postgres-operator.databases.coder.resources.limits.memory</a></td>
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
			<td id="postgres-operator--databases--coder--resources--requests"><a href="./values.yaml#L1329">postgres-operator.databases.coder.resources.requests</a></td>
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
			<td id="postgres-operator--databases--coder--resources--requests--cpu"><a href="./values.yaml#L1331">postgres-operator.databases.coder.resources.requests.cpu</a></td>
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
			<td id="postgres-operator--databases--coder--resources--requests--memory"><a href="./values.yaml#L1333">postgres-operator.databases.coder.resources.requests.memory</a></td>
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
			<td id="postgres-operator--databases--coder--volume"><a href="./values.yaml#L1335">postgres-operator.databases.coder.volume</a></td>
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
			<td id="postgres-operator--databases--coder--volume--size"><a href="./values.yaml#L1337">postgres-operator.databases.coder.volume.size</a></td>
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
			<td id="postgres-operator--databases--core"><a href="./values.yaml#L1339">postgres-operator.databases.core</a></td>
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
  "enabled": true,
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
			<td id="postgres-operator--databases--core--enabled"><a href="./values.yaml#L1341">postgres-operator.databases.core.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Core database creation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources"><a href="./values.yaml#L1343">postgres-operator.databases.core.resources</a></td>
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
			<td id="postgres-operator--databases--core--resources--limits"><a href="./values.yaml#L1345">postgres-operator.databases.core.resources.limits</a></td>
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
			<td id="postgres-operator--databases--core--resources--limits--cpu"><a href="./values.yaml#L1347">postgres-operator.databases.core.resources.limits.cpu</a></td>
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
			<td id="postgres-operator--databases--core--resources--limits--memory"><a href="./values.yaml#L1349">postgres-operator.databases.core.resources.limits.memory</a></td>
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
			<td id="postgres-operator--databases--core--resources--requests"><a href="./values.yaml#L1351">postgres-operator.databases.core.resources.requests</a></td>
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
			<td id="postgres-operator--databases--core--resources--requests--cpu"><a href="./values.yaml#L1353">postgres-operator.databases.core.resources.requests.cpu</a></td>
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
			<td id="postgres-operator--databases--core--resources--requests--memory"><a href="./values.yaml#L1355">postgres-operator.databases.core.resources.requests.memory</a></td>
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
			<td id="postgres-operator--databases--core--volume"><a href="./values.yaml#L1357">postgres-operator.databases.core.volume</a></td>
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
			<td id="postgres-operator--databases--core--volume--size"><a href="./values.yaml#L1359">postgres-operator.databases.core.volume.size</a></td>
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
			<td id="postgres-operator--databases--digitalhub"><a href="./values.yaml#L1361">postgres-operator.databases.digitalhub</a></td>
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
  "enabled": true,
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
			<td id="postgres-operator--databases--digitalhub--enabled"><a href="./values.yaml#L1363">postgres-operator.databases.digitalhub.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Platform database creation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources"><a href="./values.yaml#L1365">postgres-operator.databases.digitalhub.resources</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--limits"><a href="./values.yaml#L1367">postgres-operator.databases.digitalhub.resources.limits</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--limits--cpu"><a href="./values.yaml#L1369">postgres-operator.databases.digitalhub.resources.limits.cpu</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--limits--memory"><a href="./values.yaml#L1371">postgres-operator.databases.digitalhub.resources.limits.memory</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--requests"><a href="./values.yaml#L1373">postgres-operator.databases.digitalhub.resources.requests</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--requests--cpu"><a href="./values.yaml#L1375">postgres-operator.databases.digitalhub.resources.requests.cpu</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--requests--memory"><a href="./values.yaml#L1377">postgres-operator.databases.digitalhub.resources.requests.memory</a></td>
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
			<td id="postgres-operator--databases--digitalhub--volume"><a href="./values.yaml#L1379">postgres-operator.databases.digitalhub.volume</a></td>
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
			<td id="postgres-operator--databases--digitalhub--volume--size"><a href="./values.yaml#L1381">postgres-operator.databases.digitalhub.volume.size</a></td>
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
			<td id="postgres-operator--securityContext"><a href="./values.yaml#L1383">postgres-operator.securityContext</a></td>
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
			<td id="postgres-operator--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1385">postgres-operator.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="postgres-operator--securityContext--capabilities"><a href="./values.yaml#L1387">postgres-operator.securityContext.capabilities</a></td>
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
			<td id="postgres-operator--securityContext--capabilities--drop"><a href="./values.yaml#L1389">postgres-operator.securityContext.capabilities.drop</a></td>
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
			<td id="postgres-operator--securityContext--runAsNonRoot"><a href="./values.yaml#L1392">postgres-operator.securityContext.runAsNonRoot</a></td>
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
			<td id="postgres-operator--securityContext--seccompProfile"><a href="./values.yaml#L1394">postgres-operator.securityContext.seccompProfile</a></td>
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
			<td id="postgres-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L1396">postgres-operator.securityContext.seccompProfile.type</a></td>
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
			<td id="postgrest-operator"><a href="./values.yaml#L1400">postgrest-operator</a></td>
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
  "enabled": true,
  "postgres": {
    "default_database": "digitalhub",
    "host": "database-postgres-cluster",
    "port": 5432,
    "postgrest_service_type": "NodePort",
    "uri_args": "sslmode=disable"
  },
  "postgresCredsExistingSecrets": {
    "password": {
      "secretKey": "password",
      "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
    },
    "username": {
      "secretKey": "username",
      "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--enabled"><a href="./values.yaml#L1402">postgrest-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Postgrest Operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres"><a href="./values.yaml#L1404">postgrest-operator.postgres</a></td>
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
  "default_database": "digitalhub",
  "host": "database-postgres-cluster",
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
			<td id="postgrest-operator--postgres--default_database"><a href="./values.yaml#L1406">postgrest-operator.postgres.default_database</a></td>
			<td>
string
</td>
			<td>Default postgres database name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres--host"><a href="./values.yaml#L1408">postgrest-operator.postgres.host</a></td>
			<td>
string
</td>
			<td>Postgres server host</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"database-postgres-cluster"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres--port"><a href="./values.yaml#L1410">postgrest-operator.postgres.port</a></td>
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
			<td id="postgrest-operator--postgres--postgrest_service_type"><a href="./values.yaml#L1412">postgrest-operator.postgres.postgrest_service_type</a></td>
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
			<td id="postgrest-operator--postgres--uri_args"><a href="./values.yaml#L1414">postgrest-operator.postgres.uri_args</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets"><a href="./values.yaml#L1416">postgrest-operator.postgresCredsExistingSecrets</a></td>
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
    "secretKey": "password",
    "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
  },
  "username": {
    "secretKey": "username",
    "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--password"><a href="./values.yaml#L1418">postgrest-operator.postgresCredsExistingSecrets.password</a></td>
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
  "secretKey": "password",
  "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--password--secretKey"><a href="./values.yaml#L1420">postgrest-operator.postgresCredsExistingSecrets.password.secretKey</a></td>
			<td>
string
</td>
			<td>Password secret key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--password--secretName"><a href="./values.yaml#L1422">postgrest-operator.postgresCredsExistingSecrets.password.secretName</a></td>
			<td>
string
</td>
			<td>Password secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--username"><a href="./values.yaml#L1424">postgrest-operator.postgresCredsExistingSecrets.username</a></td>
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
  "secretKey": "username",
  "secretName": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--username--secretKey"><a href="./values.yaml#L1426">postgrest-operator.postgresCredsExistingSecrets.username.secretKey</a></td>
			<td>
string
</td>
			<td>Username secret key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--username--secretName"><a href="./values.yaml#L1428">postgrest-operator.postgresCredsExistingSecrets.username.secretName</a></td>
			<td>
string
</td>
			<td>Username secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr"><a href="./values.yaml#L1432">solr</a></td>
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
      "password": "thi4iegheeX7euthe7di",
      "passwordSha": "C8QrTZf6jpu+cPKTsLtyEhv1XVXAYZGmStTKXzB80sg= MW5pNXZlaGIyaWhkdW5w"
    },
    "k8sOper": {
      "password": "imPBf@tU(asx9%TZ",
      "passwordSha": "3iPc1JWet22a05UZXCFfo/qRUqwg2iVULyv5RBEqPdM= LSpnG/l2j8AA9vrryMGkkFLO+bYeN7ZUvrU270WAfyA="
    },
    "solr": {
      "password": "aed0ohBie3hai6jo7sho",
      "passwordSha": "i61TpZKyvff3CHnyZ0kMTzkNezkxkilCre93wLkz7jQ= NzlyN3k1cm0xZGt3eWR1MA=="
    },
    "user": {
      "password": "soogh8aiy6vah6Aecai6",
      "passwordSha": "ps9jK0qKXJqZawtFS+SxhB2CdCu90Qgz4riZ0XwzYd4= YWxxZXV3enB1YmE2c2gwdg=="
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
  "enabled": true,
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
      "basicAuthSecret": "digitalhub-solrcloud-basic-auth",
      "bootstrapSecurityJson": {
        "key": "security.json",
        "name": "digitalhub-solrcloud-security-bootstrap"
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
			<td id="solr--enabled"><a href="./values.yaml#L1434">solr.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Solr</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds"><a href="./values.yaml#L1436">solr.creds</a></td>
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
    "password": "thi4iegheeX7euthe7di",
    "passwordSha": "C8QrTZf6jpu+cPKTsLtyEhv1XVXAYZGmStTKXzB80sg= MW5pNXZlaGIyaWhkdW5w"
  },
  "k8sOper": {
    "password": "imPBf@tU(asx9%TZ",
    "passwordSha": "3iPc1JWet22a05UZXCFfo/qRUqwg2iVULyv5RBEqPdM= LSpnG/l2j8AA9vrryMGkkFLO+bYeN7ZUvrU270WAfyA="
  },
  "solr": {
    "password": "aed0ohBie3hai6jo7sho",
    "passwordSha": "i61TpZKyvff3CHnyZ0kMTzkNezkxkilCre93wLkz7jQ= NzlyN3k1cm0xZGt3eWR1MA=="
  },
  "user": {
    "password": "soogh8aiy6vah6Aecai6",
    "passwordSha": "ps9jK0qKXJqZawtFS+SxhB2CdCu90Qgz4riZ0XwzYd4= YWxxZXV3enB1YmE2c2gwdg=="
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--admin"><a href="./values.yaml#L1438">solr.creds.admin</a></td>
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
  "password": "thi4iegheeX7euthe7di",
  "passwordSha": "C8QrTZf6jpu+cPKTsLtyEhv1XVXAYZGmStTKXzB80sg= MW5pNXZlaGIyaWhkdW5w"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--admin--password"><a href="./values.yaml#L1440">solr.creds.admin.password</a></td>
			<td>
string
</td>
			<td>Admin password (Base64)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"thi4iegheeX7euthe7di"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--admin--passwordSha"><a href="./values.yaml#L1442">solr.creds.admin.passwordSha</a></td>
			<td>
string
</td>
			<td>Admin password (sha256(sha256(salt || password)))</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"C8QrTZf6jpu+cPKTsLtyEhv1XVXAYZGmStTKXzB80sg= MW5pNXZlaGIyaWhkdW5w"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--k8sOper"><a href="./values.yaml#L1444">solr.creds.k8sOper</a></td>
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
  "password": "imPBf@tU(asx9%TZ",
  "passwordSha": "3iPc1JWet22a05UZXCFfo/qRUqwg2iVULyv5RBEqPdM= LSpnG/l2j8AA9vrryMGkkFLO+bYeN7ZUvrU270WAfyA="
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--k8sOper--password"><a href="./values.yaml#L1446">solr.creds.k8sOper.password</a></td>
			<td>
string
</td>
			<td>Operator password (Base64)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"imPBf@tU(asx9%TZ"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--k8sOper--passwordSha"><a href="./values.yaml#L1448">solr.creds.k8sOper.passwordSha</a></td>
			<td>
string
</td>
			<td>Operator password (sha256(sha256(salt || password)))</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3iPc1JWet22a05UZXCFfo/qRUqwg2iVULyv5RBEqPdM= LSpnG/l2j8AA9vrryMGkkFLO+bYeN7ZUvrU270WAfyA="
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--solr"><a href="./values.yaml#L1450">solr.creds.solr</a></td>
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
  "password": "aed0ohBie3hai6jo7sho",
  "passwordSha": "i61TpZKyvff3CHnyZ0kMTzkNezkxkilCre93wLkz7jQ= NzlyN3k1cm0xZGt3eWR1MA=="
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--solr--password"><a href="./values.yaml#L1452">solr.creds.solr.password</a></td>
			<td>
string
</td>
			<td>Solr user password (Base64)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"aed0ohBie3hai6jo7sho"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--solr--passwordSha"><a href="./values.yaml#L1454">solr.creds.solr.passwordSha</a></td>
			<td>
string
</td>
			<td>Solr user password (sha256(sha256(salt || password)))</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"i61TpZKyvff3CHnyZ0kMTzkNezkxkilCre93wLkz7jQ= NzlyN3k1cm0xZGt3eWR1MA=="
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--user"><a href="./values.yaml#L1456">solr.creds.user</a></td>
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
  "password": "soogh8aiy6vah6Aecai6",
  "passwordSha": "ps9jK0qKXJqZawtFS+SxhB2CdCu90Qgz4riZ0XwzYd4= YWxxZXV3enB1YmE2c2gwdg=="
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--user--password"><a href="./values.yaml#L1458">solr.creds.user.password</a></td>
			<td>
string
</td>
			<td>Unprivileged user password (Base64)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"soogh8aiy6vah6Aecai6"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--user--passwordSha"><a href="./values.yaml#L1460">solr.creds.user.passwordSha</a></td>
			<td>
string
</td>
			<td>Unprivileged user password (sha256(sha256(salt || password)))</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ps9jK0qKXJqZawtFS+SxhB2CdCu90Qgz4riZ0XwzYd4= YWxxZXV3enB1YmE2c2gwdg=="
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage"><a href="./values.yaml#L1462">solr.dataStorage</a></td>
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
			<td id="solr--dataStorage--capacity"><a href="./values.yaml#L1464">solr.dataStorage.capacity</a></td>
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
			<td id="solr--dataStorage--persistent"><a href="./values.yaml#L1466">solr.dataStorage.persistent</a></td>
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
			<td id="solr--dataStorage--persistent--pvc"><a href="./values.yaml#L1468">solr.dataStorage.persistent.pvc</a></td>
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
			<td id="solr--dataStorage--persistent--pvc--annotations"><a href="./values.yaml#L1470">solr.dataStorage.persistent.pvc.annotations</a></td>
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
			<td id="solr--dataStorage--persistent--pvc--labels"><a href="./values.yaml#L1472">solr.dataStorage.persistent.pvc.labels</a></td>
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
			<td id="solr--dataStorage--persistent--pvc--name"><a href="./values.yaml#L1474">solr.dataStorage.persistent.pvc.name</a></td>
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
			<td id="solr--dataStorage--persistent--pvc--storageClassName"><a href="./values.yaml#L1476">solr.dataStorage.persistent.pvc.storageClassName</a></td>
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
			<td id="solr--dataStorage--persistent--reclaimPolicy"><a href="./values.yaml#L1478">solr.dataStorage.persistent.reclaimPolicy</a></td>
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
			<td id="solr--dataStorage--type"><a href="./values.yaml#L1480">solr.dataStorage.type</a></td>
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
			<td id="solr--fullnameOverride"><a href="./values.yaml#L1482">solr.fullnameOverride</a></td>
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
			<td id="solr--image"><a href="./values.yaml#L1484">solr.image</a></td>
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
			<td id="solr--image--repository"><a href="./values.yaml#L1486">solr.image.repository</a></td>
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
			<td id="solr--image--tag"><a href="./values.yaml#L1488">solr.image.tag</a></td>
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
			<td id="solr--podOptions"><a href="./values.yaml#L1490">solr.podOptions</a></td>
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
			<td id="solr--podOptions--containerSecurityContext"><a href="./values.yaml#L1492">solr.podOptions.containerSecurityContext</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1494">solr.podOptions.containerSecurityContext.allowPrivilegeEscalation</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--capabilities"><a href="./values.yaml#L1496">solr.podOptions.containerSecurityContext.capabilities</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L1498">solr.podOptions.containerSecurityContext.capabilities.drop</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--seccompProfile"><a href="./values.yaml#L1501">solr.podOptions.containerSecurityContext.seccompProfile</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L1503">solr.podOptions.containerSecurityContext.seccompProfile.type</a></td>
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
			<td id="solr--podOptions--podSecurityContext"><a href="./values.yaml#L1505">solr.podOptions.podSecurityContext</a></td>
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
			<td id="solr--podOptions--podSecurityContext--seccompProfile"><a href="./values.yaml#L1507">solr.podOptions.podSecurityContext.seccompProfile</a></td>
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
			<td id="solr--podOptions--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L1509">solr.podOptions.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="solr--replicas"><a href="./values.yaml#L1511">solr.replicas</a></td>
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
			<td id="solr--solrOptions"><a href="./values.yaml#L1513">solr.solrOptions</a></td>
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
    "basicAuthSecret": "digitalhub-solrcloud-basic-auth",
    "bootstrapSecurityJson": {
      "key": "security.json",
      "name": "digitalhub-solrcloud-security-bootstrap"
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
			<td id="solr--solrOptions--security"><a href="./values.yaml#L1517">solr.solrOptions.security</a></td>
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
  "basicAuthSecret": "digitalhub-solrcloud-basic-auth",
  "bootstrapSecurityJson": {
    "key": "security.json",
    "name": "digitalhub-solrcloud-security-bootstrap"
  },
  "probesRequireAuth": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--authenticationType"><a href="./values.yaml#L1519">solr.solrOptions.security.authenticationType</a></td>
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
			<td id="solr--solrOptions--security--basicAuthSecret"><a href="./values.yaml#L1521">solr.solrOptions.security.basicAuthSecret</a></td>
			<td>
string
</td>
			<td>Specify the required basicAuth secret</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-solrcloud-basic-auth"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--bootstrapSecurityJson"><a href="./values.yaml#L1523">solr.solrOptions.security.bootstrapSecurityJson</a></td>
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
  "name": "digitalhub-solrcloud-security-bootstrap"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--bootstrapSecurityJson--key"><a href="./values.yaml#L1525">solr.solrOptions.security.bootstrapSecurityJson.key</a></td>
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
			<td id="solr--solrOptions--security--bootstrapSecurityJson--name"><a href="./values.yaml#L1527">solr.solrOptions.security.bootstrapSecurityJson.name</a></td>
			<td>
string
</td>
			<td>Name of the secret with the configured security.json</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-solrcloud-security-bootstrap"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--probesRequireAuth"><a href="./values.yaml#L1529">solr.solrOptions.security.probesRequireAuth</a></td>
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
			<td id="solr-operator"><a href="./values.yaml#L1533">solr-operator</a></td>
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
  "enabled": true,
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
			<td id="solr-operator--enabled"><a href="./values.yaml#L1535">solr-operator.enabled</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Solr Operator</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr-operator--securityContext"><a href="./values.yaml#L1537">solr-operator.securityContext</a></td>
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
			<td id="solr-operator--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1539">solr-operator.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="solr-operator--securityContext--capabilities"><a href="./values.yaml#L1541">solr-operator.securityContext.capabilities</a></td>
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
			<td id="solr-operator--securityContext--capabilities--drop"><a href="./values.yaml#L1543">solr-operator.securityContext.capabilities.drop</a></td>
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
			<td id="solr-operator--securityContext--runAsNonRoot"><a href="./values.yaml#L1546">solr-operator.securityContext.runAsNonRoot</a></td>
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
			<td id="solr-operator--securityContext--seccompProfile"><a href="./values.yaml#L1548">solr-operator.securityContext.seccompProfile</a></td>
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
			<td id="solr-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L1550">solr-operator.securityContext.seccompProfile.type</a></td>
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
			<td id="solr-operator--zookeeper-operator"><a href="./values.yaml#L1552">solr-operator.zookeeper-operator</a></td>
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
			<td id="solr-operator--zookeeper-operator--crd"><a href="./values.yaml#L1554">solr-operator.zookeeper-operator.crd</a></td>
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
			<td id="solr-operator--zookeeper-operator--crd--create"><a href="./values.yaml#L1556">solr-operator.zookeeper-operator.crd.create</a></td>
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
			<td id="template-controller"><a href="./values.yaml#L1560">template-controller</a></td>
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
			<td id="template-controller--enabled"><a href="./values.yaml#L1562">template-controller.enabled</a></td>
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
			<td id="template-controller--objectTemplate"><a href="./values.yaml#L1565">template-controller.objectTemplate</a></td>
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
			<td id="template-controller--objectTemplate--enabled"><a href="./values.yaml#L1567">template-controller.objectTemplate.enabled</a></td>
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
			<td id="template-controller--podSecurityContext"><a href="./values.yaml#L1569">template-controller.podSecurityContext</a></td>
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
			<td id="template-controller--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L1571">template-controller.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="template-controller--podSecurityContext--seccompProfile"><a href="./values.yaml#L1573">template-controller.podSecurityContext.seccompProfile</a></td>
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
			<td id="template-controller--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L1575">template-controller.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="template-controller--securityContext"><a href="./values.yaml#L1577">template-controller.securityContext</a></td>
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
			<td id="template-controller--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1579">template-controller.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="template-controller--securityContext--capabilities"><a href="./values.yaml#L1581">template-controller.securityContext.capabilities</a></td>
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
			<td id="template-controller--securityContext--capabilities--drop"><a href="./values.yaml#L1583">template-controller.securityContext.capabilities.drop</a></td>
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
			<td id="template-controller--securityContext--runAsNonRoot"><a href="./values.yaml#L1586">template-controller.securityContext.runAsNonRoot</a></td>
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
			<td id="template-controller--securityContext--seccompProfile"><a href="./values.yaml#L1588">template-controller.securityContext.seccompProfile</a></td>
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
			<td id="template-controller--securityContext--seccompProfile--type"><a href="./values.yaml#L1590">template-controller.securityContext.seccompProfile.type</a></td>
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
