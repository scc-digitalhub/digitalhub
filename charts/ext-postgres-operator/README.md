<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# ext-postgres-operator

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/dremio-rest-server-operator/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=ext-postgres-operator*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 1.2.7](https://img.shields.io/badge/Version-1.2.7-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.2.3](https://img.shields.io/badge/AppVersion-1.2.3-informational?style=flat-square)

A Helm chart for the External Postgres operator

helm repo add ext-postgres-operator https://movetokube.github.io/postgres-operator/
helm upgrade --install -n operators ext-postgres-operator  ext-postgres-operator/ext-postgres-operator --version 1.2.3

ext-postgres-operator is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities. To bootstrap the platform in its entirety please explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

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
5. Install ext-postgres-operator with Helm:
```sh
    helm upgrade ext-postgres-operator digitalhub/ext-postgres-operator -n ext-postgres-operator --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace ext-postgres-operator get pods
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
			<td id="env"><a href="./values.yaml#L6">env</a></td>
			<td>
object
</td>
			<td>Additional enviroment variable.</td>
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
			<td id="existingSecret"><a href="./values.yaml#L9">existingSecret</a></td>
			<td>
string
</td>
			<td>Additional environment variable mounted from an existing secret.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="fullnameOverride"><a href="./values.yaml#L12">fullnameOverride</a></td>
			<td>
string
</td>
			<td>String to fully override `postgrest-operator.fullname` template.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="image"><a href="./values.yaml#L15">image</a></td>
			<td>
object
</td>
			<td>Container image configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "pullPolicy": "IfNotPresent",
  "repository": "ghcr.io/movetokube/postgres-operator",
  "tag": "latest"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="image--pullPolicy"><a href="./values.yaml#L17">image.pullPolicy</a></td>
			<td>
string
</td>
			<td>Container image pull policy.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"IfNotPresent"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="image--repository"><a href="./values.yaml#L19">image.repository</a></td>
			<td>
string
</td>
			<td>Container image repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/movetokube/postgres-operator"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="image--tag"><a href="./values.yaml#L21">image.tag</a></td>
			<td>
string
</td>
			<td>Container image tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"latest"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="nameOverride"><a href="./values.yaml#L24">nameOverride</a></td>
			<td>
string
</td>
			<td>String to partially override `postgrest-operator.fullname` template (will maintain the release name).</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="namespaceValues"><a href="./values.yaml#L27">namespaceValues</a></td>
			<td>
object
</td>
			<td>Configure operator scope clusterwide or namespaced.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "namespace": "",
  "namespaced": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="namespaceValues--namespace"><a href="./values.yaml#L29">namespaceValues.namespace</a></td>
			<td>
string
</td>
			<td>Namespace name where operator watch for CR.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="namespaceValues--namespaced"><a href="./values.yaml#L31">namespaceValues.namespaced</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Cluster wide mode.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="nodeSelector"><a href="./values.yaml#L34">nodeSelector</a></td>
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
			<td id="podAnnotations"><a href="./values.yaml#L37">podAnnotations</a></td>
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
			<td id="podLabels"><a href="./values.yaml#L40">podLabels</a></td>
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
			<td id="podSecurityContext"><a href="./values.yaml#L43">podSecurityContext</a></td>
			<td>
object
</td>
			<td>[Security context for pod](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="postgres"><a href="./values.yaml#L46">postgres</a></td>
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
  "host": "localhost",
  "password": "password",
  "uri_args": "",
  "user": "admin"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--cloud_provider"><a href="./values.yaml#L48">postgres.cloud_provider</a></td>
			<td>
string
</td>
			<td>Postgres cloud provider, could be AWS, Azure, GCP or empty (default)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--default_database"><a href="./values.yaml#L50">postgres.default_database</a></td>
			<td>
string
</td>
			<td>Postgres default database to use</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"postgres"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--host"><a href="./values.yaml#L52">postgres.host</a></td>
			<td>
string
</td>
			<td>Postgres hostname</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"localhost"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--password"><a href="./values.yaml#L54">postgres.password</a></td>
			<td>
string
</td>
			<td>Postgres username</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--uri_args"><a href="./values.yaml#L56">postgres.uri_args</a></td>
			<td>
string
</td>
			<td>Additional connection args to pg driver</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--user"><a href="./values.yaml#L58">postgres.user</a></td>
			<td>
string
</td>
			<td>Postgres password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"admin"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgresCredsExistingSecrets"><a href="./values.yaml#L61">postgresCredsExistingSecrets</a></td>
			<td>
object
</td>
			<td>Use existing secret for postgres server credentials</td>
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
			<td id="replicaCount"><a href="./values.yaml#L64">replicaCount</a></td>
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
			<td id="resources"><a href="./values.yaml#L67">resources</a></td>
			<td>
object
</td>
			<td>Container resource requests and limits.</td>
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
			<td id="securityContext"><a href="./values.yaml#L70">securityContext</a></td>
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
  "readOnlyRootFilesystem": true,
  "runAsNonRoot": true
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L72">securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="securityContext--capabilities"><a href="./values.yaml#L74">securityContext.capabilities</a></td>
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
			<td id="securityContext--capabilities--drop"><a href="./values.yaml#L76">securityContext.capabilities.drop</a></td>
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
			<td id="securityContext--readOnlyRootFilesystem"><a href="./values.yaml#L79">securityContext.readOnlyRootFilesystem</a></td>
			<td>
bool
</td>
			<td>Container read only filesystem</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext--runAsNonRoot"><a href="./values.yaml#L81">securityContext.runAsNonRoot</a></td>
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
			<td id="serviceAccount"><a href="./values.yaml#L84">serviceAccount</a></td>
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
  "name": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount--annotations"><a href="./values.yaml#L86">serviceAccount.annotations</a></td>
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
			<td id="serviceAccount--name"><a href="./values.yaml#L88">serviceAccount.name</a></td>
			<td>
string
</td>
			<td>Service account name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="tolerations"><a href="./values.yaml#L91">tolerations</a></td>
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
			<td id="volumeMounts"><a href="./values.yaml#L94">volumeMounts</a></td>
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
			<td id="volumes"><a href="./values.yaml#L97">volumes</a></td>
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
			<td id="watchNamespace"><a href="./values.yaml#L100">watchNamespace</a></td>
			<td>
string
</td>
			<td>Which namespace to watch in kubernetes, empty string means all namespaces.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
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
