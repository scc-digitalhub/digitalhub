<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# resources-profile-generator

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=resources-profile-generator*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

Helm chart to generate resource profile templates in a ConfigMap

resources-profile-generator is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities. To bootstrap the platform in its entirety please explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

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
			<td id="configmapName"><a href="./values.yaml#L2">configmapName</a></td>
			<td>
string
</td>
			<td>Name of the generated ConfigMap containing all computed profile templates.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"resources-profile-templates"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="profiles"><a href="./values.yaml#L5">profiles</a></td>
			<td>
list
</td>
			<td>List of profile families used to generate template-<n>x<profile>.yaml entries.</td>
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
			<td id="queueName"><a href="./values.yaml#L27">queueName</a></td>
			<td>
string
</td>
			<td>Value used for kueue.x-k8s.io/queue-name label in every generated template.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="requests"><a href="./values.yaml#L30">requests</a></td>
			<td>
object
</td>
			<td>Configure the percentage used to compute requests from limits.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "cpuPercent": 67,
  "memoryPercent": 67
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="requests--cpuPercent"><a href="./values.yaml#L32">requests.cpuPercent</a></td>
			<td>
int
</td>
			<td>CPU request percentage derived from computed CPU limit for non-max variants.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
67
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="requests--memoryPercent"><a href="./values.yaml#L34">requests.memoryPercent</a></td>
			<td>
int
</td>
			<td>Memory request percentage derived from computed memory limit for non-max variants.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
67
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
