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
			<td id="apigw-operator"><a href="./values.yaml#L6">apigw-operator</a></td>
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
			<td id="apigw-operator--enabled"><a href="./values.yaml#L8">apigw-operator.enabled</a></td>
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
			<td id="argo-workflows"><a href="./values.yaml#L11">argo-workflows</a></td>
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
            "name": "argo-minio-creds"
          },
          "bucket": "argo",
          "endpoint": "minio:9000",
          "insecure": true,
          "secretKeySecret": {
            "key": "secretkey",
            "name": "argo-minio-creds"
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
			<td id="argo-workflows--artifactRepositoryRef"><a href="./values.yaml#L13">argo-workflows.artifactRepositoryRef</a></td>
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
  "artifact-repositories": {
    "annotations": {
      "workflows.argoproj.io/default-artifact-repository": "artifact-repository"
    },
    "artifact-repository": {
      "archiveLogs": false,
      "s3": {
        "accessKeySecret": {
          "key": "accesskey",
          "name": "argo-minio-creds"
        },
        "bucket": "argo",
        "endpoint": "minio:9000",
        "insecure": true,
        "secretKeySecret": {
          "key": "secretkey",
          "name": "argo-minio-creds"
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories"><a href="./values.yaml#L15">argo-workflows.artifactRepositoryRef.artifact-repositories</a></td>
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
  "annotations": {
    "workflows.argoproj.io/default-artifact-repository": "artifact-repository"
  },
  "artifact-repository": {
    "archiveLogs": false,
    "s3": {
      "accessKeySecret": {
        "key": "accesskey",
        "name": "argo-minio-creds"
      },
      "bucket": "argo",
      "endpoint": "minio:9000",
      "insecure": true,
      "secretKeySecret": {
        "key": "secretkey",
        "name": "argo-minio-creds"
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--annotations"><a href="./values.yaml#L17">argo-workflows.artifactRepositoryRef.artifact-repositories.annotations</a></td>
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
  "workflows.argoproj.io/default-artifact-repository": "artifact-repository"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository"><a href="./values.yaml#L21">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository</a></td>
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
  "archiveLogs": false,
  "s3": {
    "accessKeySecret": {
      "key": "accesskey",
      "name": "argo-minio-creds"
    },
    "bucket": "argo",
    "endpoint": "minio:9000",
    "insecure": true,
    "secretKeySecret": {
      "key": "secretkey",
      "name": "argo-minio-creds"
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--archiveLogs"><a href="./values.yaml#L23">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.archiveLogs</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3"><a href="./values.yaml#L25">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3</a></td>
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
  "accessKeySecret": {
    "key": "accesskey",
    "name": "argo-minio-creds"
  },
  "bucket": "argo",
  "endpoint": "minio:9000",
  "insecure": true,
  "secretKeySecret": {
    "key": "secretkey",
    "name": "argo-minio-creds"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--accessKeySecret"><a href="./values.yaml#L27">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret</a></td>
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
  "key": "accesskey",
  "name": "argo-minio-creds"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--accessKeySecret--key"><a href="./values.yaml#L29">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret.key</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"accesskey"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--accessKeySecret--name"><a href="./values.yaml#L31">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.accessKeySecret.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-minio-creds"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--bucket"><a href="./values.yaml#L33">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.bucket</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--endpoint"><a href="./values.yaml#L35">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.endpoint</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio:9000"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--insecure"><a href="./values.yaml#L37">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.insecure</a></td>
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
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--secretKeySecret"><a href="./values.yaml#L39">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret</a></td>
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
  "key": "secretkey",
  "name": "argo-minio-creds"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--secretKeySecret--key"><a href="./values.yaml#L41">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret.key</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"secretkey"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--artifactRepositoryRef--artifact-repositories--artifact-repository--s3--secretKeySecret--name"><a href="./values.yaml#L43">argo-workflows.artifactRepositoryRef.artifact-repositories.artifact-repository.s3.secretKeySecret.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-minio-creds"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller"><a href="./values.yaml#L45">argo-workflows.controller</a></td>
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
			<td id="argo-workflows--controller--configMap"><a href="./values.yaml#L47">argo-workflows.controller.configMap</a></td>
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
			<td id="argo-workflows--controller--configMap--create"><a href="./values.yaml#L49">argo-workflows.controller.configMap.create</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext"><a href="./values.yaml#L51">argo-workflows.controller.podSecurityContext</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L53">argo-workflows.controller.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext--seccompProfile"><a href="./values.yaml#L55">argo-workflows.controller.podSecurityContext.seccompProfile</a></td>
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
			<td id="argo-workflows--controller--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L57">argo-workflows.controller.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="argo-workflows--controller--securityContext"><a href="./values.yaml#L59">argo-workflows.controller.securityContext</a></td>
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
			<td id="argo-workflows--controller--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L61">argo-workflows.controller.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="argo-workflows--controller--securityContext--capabilities"><a href="./values.yaml#L63">argo-workflows.controller.securityContext.capabilities</a></td>
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
			<td id="argo-workflows--controller--securityContext--capabilities--drop"><a href="./values.yaml#L65">argo-workflows.controller.securityContext.capabilities.drop</a></td>
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
			<td id="argo-workflows--controller--securityContext--runAsNonRoot"><a href="./values.yaml#L68">argo-workflows.controller.securityContext.runAsNonRoot</a></td>
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
			<td id="argo-workflows--controller--securityContext--seccompProfile"><a href="./values.yaml#L70">argo-workflows.controller.securityContext.seccompProfile</a></td>
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
			<td id="argo-workflows--controller--securityContext--seccompProfile--type"><a href="./values.yaml#L72">argo-workflows.controller.securityContext.seccompProfile.type</a></td>
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
			<td id="argo-workflows--controller--serviceAccount"><a href="./values.yaml#L74">argo-workflows.controller.serviceAccount</a></td>
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
  "name": "argo-workflow-controller"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--serviceAccount--name"><a href="./values.yaml#L76">argo-workflows.controller.serviceAccount.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-workflow-controller"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--controller--workflowDefaults"><a href="./values.yaml#L78">argo-workflows.controller.workflowDefaults</a></td>
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
			<td id="argo-workflows--controller--workflowDefaults--spec"><a href="./values.yaml#L80">argo-workflows.controller.workflowDefaults.spec</a></td>
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
			<td id="argo-workflows--controller--workflowDefaults--spec--serviceAccountName"><a href="./values.yaml#L82">argo-workflows.controller.workflowDefaults.spec.serviceAccountName</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-workflow"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="argo-workflows--crds"><a href="./values.yaml#L84">argo-workflows.crds</a></td>
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
			<td id="argo-workflows--crds--install"><a href="./values.yaml#L86">argo-workflows.crds.install</a></td>
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
			<td id="argo-workflows--enabled"><a href="./values.yaml#L88">argo-workflows.enabled</a></td>
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
			<td id="argo-workflows--server"><a href="./values.yaml#L90">argo-workflows.server</a></td>
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
			<td id="argo-workflows--server--enabled"><a href="./values.yaml#L92">argo-workflows.server.enabled</a></td>
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
			<td id="argo-workflows--singleNamespace"><a href="./values.yaml#L94">argo-workflows.singleNamespace</a></td>
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
			<td id="argo-workflows--workflow"><a href="./values.yaml#L96">argo-workflows.workflow</a></td>
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
			<td id="argo-workflows--workflow--serviceAccount"><a href="./values.yaml#L98">argo-workflows.workflow.serviceAccount</a></td>
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
			<td id="argo-workflows--workflow--serviceAccount--create"><a href="./values.yaml#L100">argo-workflows.workflow.serviceAccount.create</a></td>
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
			<td id="argo-workflows--workflow--serviceAccount--name"><a href="./values.yaml#L102">argo-workflows.workflow.serviceAccount.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-workflow"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder"><a href="./values.yaml#L105">coder</a></td>
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
  "coder": {
    "env": [
      {
        "name": "CODER_TELEMETRY",
        "value": "false"
      },
      {
        "name": "CODER_PG_USERNAME",
        "valueFrom": {
          "secretKeyRef": {
            "key": "username",
            "name": "coder.coder-postgres-cluster.credentials.postgresql.acid.zalan.do"
          }
        }
      },
      {
        "name": "CODER_PG_PASSWORD",
        "valueFrom": {
          "secretKeyRef": {
            "key": "password",
            "name": "coder.coder-postgres-cluster.credentials.postgresql.acid.zalan.do"
          }
        }
      },
      {
        "name": "CODER_PG_CONNECTION_URL",
        "value": "postgres://$(CODER_PG_USERNAME):$(CODER_PG_PASSWORD)@coder-postgres-cluster:5432/coder"
      },
      {
        "name": "CODER_OAUTH2_GITHUB_DEFAULT_PROVIDER_ENABLE",
        "value": "false"
      }
    ],
    "image": {
      "tag": "v2.21.3"
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
        "extraVars": [],
        "iconUrl": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/1200px-Jupyter_logo.svg.png",
        "image": "ghcr.io/scc-digitalhub/jupyter-3-10:0.11.0",
        "image311": "ghcr.io/scc-digitalhub/jupyter-3-11:0.11.0",
        "image39": "ghcr.io/scc-digitalhub/jupyter-3-9:0.11.0",
        "name": "jupyter",
        "nodePort": "30040",
        "privileged": false,
        "stopAfter": "8h"
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
          "ownerCredsSecret": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
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
          "ownerCredsSecret": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
        },
        "stopAfter": "8h"
      },
      {
        "extraVars": [
          {
            "name": "GF_PLUGINS_CHECK_FOR_PLUGIN_UPDATES",
            "value": false
          },
          {
            "name": "GF_ANALYTICS_CHECK_FOR_UPDATES",
            "value": false
          },
          {
            "name": "GF_ANALYTICS_REPORTING_ENABLED",
            "value": false
          }
        ],
        "iconUrl": "https://cdn.iconscout.com/icon/free/png-256/free-grafana-logo-icon-download-in-svg-png-gif-file-formats--technology-social-media-company-vol-3-pack-logos-icons-3030088.png?f=webp",
        "image": "smartcommunitylab/grafana",
        "name": "grafana",
        "nodePort": "30130",
        "stopAfter": "0h"
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
			<td id="coder--coder"><a href="./values.yaml#L107">coder.coder</a></td>
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
      "name": "CODER_TELEMETRY",
      "value": "false"
    },
    {
      "name": "CODER_PG_USERNAME",
      "valueFrom": {
        "secretKeyRef": {
          "key": "username",
          "name": "coder.coder-postgres-cluster.credentials.postgresql.acid.zalan.do"
        }
      }
    },
    {
      "name": "CODER_PG_PASSWORD",
      "valueFrom": {
        "secretKeyRef": {
          "key": "password",
          "name": "coder.coder-postgres-cluster.credentials.postgresql.acid.zalan.do"
        }
      }
    },
    {
      "name": "CODER_PG_CONNECTION_URL",
      "value": "postgres://$(CODER_PG_USERNAME):$(CODER_PG_PASSWORD)@coder-postgres-cluster:5432/coder"
    },
    {
      "name": "CODER_OAUTH2_GITHUB_DEFAULT_PROVIDER_ENABLE",
      "value": "false"
    }
  ],
  "image": {
    "tag": "v2.21.3"
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
			<td id="coder--coder--env"><a href="./values.yaml#L109">coder.coder.env</a></td>
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
    "name": "CODER_TELEMETRY",
    "value": "false"
  },
  {
    "name": "CODER_PG_USERNAME",
    "valueFrom": {
      "secretKeyRef": {
        "key": "username",
        "name": "coder.coder-postgres-cluster.credentials.postgresql.acid.zalan.do"
      }
    }
  },
  {
    "name": "CODER_PG_PASSWORD",
    "valueFrom": {
      "secretKeyRef": {
        "key": "password",
        "name": "coder.coder-postgres-cluster.credentials.postgresql.acid.zalan.do"
      }
    }
  },
  {
    "name": "CODER_PG_CONNECTION_URL",
    "value": "postgres://$(CODER_PG_USERNAME):$(CODER_PG_PASSWORD)@coder-postgres-cluster:5432/coder"
  },
  {
    "name": "CODER_OAUTH2_GITHUB_DEFAULT_PROVIDER_ENABLE",
    "value": "false"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--image"><a href="./values.yaml#L133">coder.coder.image</a></td>
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
  "tag": "v2.21.3"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--image--tag"><a href="./values.yaml#L135">coder.coder.image.tag</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"v2.21.3"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--ingress"><a href="./values.yaml#L137">coder.coder.ingress</a></td>
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
  "enable": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--ingress--enable"><a href="./values.yaml#L139">coder.coder.ingress.enable</a></td>
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
			<td id="coder--coder--service"><a href="./values.yaml#L141">coder.coder.service</a></td>
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
  "httpNodePort": "30170",
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--service--httpNodePort"><a href="./values.yaml#L143">coder.coder.service.httpNodePort</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"30170"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--coder--service--type"><a href="./values.yaml#L145">coder.coder.service.type</a></td>
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
			<td id="coder--email"><a href="./values.yaml#L147">coder.email</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"test@digitalhub.test"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--enabled"><a href="./values.yaml#L149">coder.enabled</a></td>
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
			<td id="coder--password"><a href="./values.yaml#L151">coder.password</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"Test12456@!"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--securityContext"><a href="./values.yaml#L153">coder.securityContext</a></td>
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
			<td id="coder--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L155">coder.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="coder--securityContext--capabilities"><a href="./values.yaml#L157">coder.securityContext.capabilities</a></td>
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
			<td id="coder--securityContext--capabilities--drop"><a href="./values.yaml#L159">coder.securityContext.capabilities.drop</a></td>
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
			<td id="coder--securityContext--runAsNonRoot"><a href="./values.yaml#L162">coder.securityContext.runAsNonRoot</a></td>
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
			<td id="coder--securityContext--seccompProfile"><a href="./values.yaml#L164">coder.securityContext.seccompProfile</a></td>
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
			<td id="coder--securityContext--seccompProfile--type"><a href="./values.yaml#L166">coder.securityContext.seccompProfile.type</a></td>
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
			<td id="coder--template"><a href="./values.yaml#L168">coder.template</a></td>
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
  "customTemplates": [
    {
      "extraVars": [],
      "iconUrl": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/1200px-Jupyter_logo.svg.png",
      "image": "ghcr.io/scc-digitalhub/jupyter-3-10:0.11.0",
      "image311": "ghcr.io/scc-digitalhub/jupyter-3-11:0.11.0",
      "image39": "ghcr.io/scc-digitalhub/jupyter-3-9:0.11.0",
      "name": "jupyter",
      "nodePort": "30040",
      "privileged": false,
      "stopAfter": "8h"
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
        "ownerCredsSecret": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
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
        "ownerCredsSecret": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
      },
      "stopAfter": "8h"
    },
    {
      "extraVars": [
        {
          "name": "GF_PLUGINS_CHECK_FOR_PLUGIN_UPDATES",
          "value": false
        },
        {
          "name": "GF_ANALYTICS_CHECK_FOR_UPDATES",
          "value": false
        },
        {
          "name": "GF_ANALYTICS_REPORTING_ENABLED",
          "value": false
        }
      ],
      "iconUrl": "https://cdn.iconscout.com/icon/free/png-256/free-grafana-logo-icon-download-in-svg-png-gif-file-formats--technology-social-media-company-vol-3-pack-logos-icons-3030088.png?f=webp",
      "image": "smartcommunitylab/grafana",
      "name": "grafana",
      "nodePort": "30130",
      "stopAfter": "0h"
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
			<td id="coder--template--customTemplates"><a href="./values.yaml#L170">coder.template.customTemplates</a></td>
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
    "extraVars": [],
    "iconUrl": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/1200px-Jupyter_logo.svg.png",
    "image": "ghcr.io/scc-digitalhub/jupyter-3-10:0.11.0",
    "image311": "ghcr.io/scc-digitalhub/jupyter-3-11:0.11.0",
    "image39": "ghcr.io/scc-digitalhub/jupyter-3-9:0.11.0",
    "name": "jupyter",
    "nodePort": "30040",
    "privileged": false,
    "stopAfter": "8h"
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
      "ownerCredsSecret": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
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
      "ownerCredsSecret": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
    },
    "stopAfter": "8h"
  },
  {
    "extraVars": [
      {
        "name": "GF_PLUGINS_CHECK_FOR_PLUGIN_UPDATES",
        "value": false
      },
      {
        "name": "GF_ANALYTICS_CHECK_FOR_UPDATES",
        "value": false
      },
      {
        "name": "GF_ANALYTICS_REPORTING_ENABLED",
        "value": false
      }
    ],
    "iconUrl": "https://cdn.iconscout.com/icon/free/png-256/free-grafana-logo-icon-download-in-svg-png-gif-file-formats--technology-social-media-company-vol-3-pack-logos-icons-3030088.png?f=webp",
    "image": "smartcommunitylab/grafana",
    "name": "grafana",
    "nodePort": "30130",
    "stopAfter": "0h"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--template--upgrade"><a href="./values.yaml#L226">coder.template.upgrade</a></td>
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
  "token": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="coder--template--upgrade--enabled"><a href="./values.yaml#L228">coder.template.upgrade.enabled</a></td>
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
			<td id="coder--template--upgrade--token"><a href="./values.yaml#L230">coder.template.upgrade.token</a></td>
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
			<td id="coder--username"><a href="./values.yaml#L232">coder.username</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"test"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="containerSecurityContext"><a href="./values.yaml#L235">containerSecurityContext</a></td>
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
			<td id="containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L237">containerSecurityContext.allowPrivilegeEscalation</a></td>
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
			<td id="containerSecurityContext--capabilities"><a href="./values.yaml#L239">containerSecurityContext.capabilities</a></td>
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
			<td id="containerSecurityContext--capabilities--drop"><a href="./values.yaml#L241">containerSecurityContext.capabilities.drop</a></td>
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
			<td id="containerSecurityContext--enabled"><a href="./values.yaml#L244">containerSecurityContext.enabled</a></td>
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
			<td id="containerSecurityContext--runAsNonRoot"><a href="./values.yaml#L246">containerSecurityContext.runAsNonRoot</a></td>
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
			<td id="containerSecurityContext--seccompProfile"><a href="./values.yaml#L248">containerSecurityContext.seccompProfile</a></td>
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
			<td id="containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L250">containerSecurityContext.seccompProfile.type</a></td>
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
			<td id="core"><a href="./values.yaml#L253">core</a></td>
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
    "openId": {
      "enabled": false
    }
  },
  "coreAuthCreds": {
    "clientId": "m04bfbmd03m8sf4u9ucz54ti",
    "clientSecret": "9rb5215z0aqd7fadzxuoyqe3"
  },
  "databaseProvider": {
    "database": "digitalhub",
    "host": "database-postgres-cluster",
    "ownerSecret": "digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do",
    "port": "5432",
    "schema": "public"
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
    "accessKey": "",
    "bucket": "datalake",
    "dynamicCreds": {
      "enabled": false
    },
    "endpoint": "minio",
    "existingSecret": {
      "accessKeyKey": "digitalhubUser",
      "name": "digitalhub-minio-creds",
      "secretKeyKey": "digitalhubPassword"
    },
    "port": "9000",
    "protocol": "http",
    "publicUrl": "http://192.168.49.2:30080",
    "region": "us-west-1",
    "secretKey": ""
  },
  "service": {
    "httpNodePort": "30180",
    "type": "NodePort"
  },
  "solr": {
    "collection": {
      "initialize": {
        "enabled": true,
        "image": "smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot",
        "securityJsonSecret": "digitalhub-solrcloud-security-bootstrap"
      },
      "name": "dhcore"
    },
    "enabled": true,
    "fullNameOverride": "digitalhub",
    "url": "http://digitalhub-solrcloud-common/solr",
    "user": "user"
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
			<td id="core--additionalConfig"><a href="./values.yaml#L255">core.additionalConfig</a></td>
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
			<td id="core--additionalConfig--debug"><a href="./values.yaml#L257">core.additionalConfig.debug</a></td>
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
			<td id="core--additionalConfig--debug--enableLogs"><a href="./values.yaml#L259">core.additionalConfig.debug.enableLogs</a></td>
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
			<td id="core--additionalConfig--debug--enableMetrics"><a href="./values.yaml#L261">core.additionalConfig.debug.enableMetrics</a></td>
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
			<td id="core--additionalConfig--resources"><a href="./values.yaml#L263">core.additionalConfig.resources</a></td>
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
			<td id="core--additionalConfig--resources--cpuLim"><a href="./values.yaml#L265">core.additionalConfig.resources.cpuLim</a></td>
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
			<td id="core--additionalConfig--resources--cpuReq"><a href="./values.yaml#L267">core.additionalConfig.resources.cpuReq</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"100m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--resources--gpuKey"><a href="./values.yaml#L269">core.additionalConfig.resources.gpuKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"nvidia.com/gpu"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--resources--memLim"><a href="./values.yaml#L271">core.additionalConfig.resources.memLim</a></td>
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
			<td id="core--additionalConfig--resources--memReq"><a href="./values.yaml#L273">core.additionalConfig.resources.memReq</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"64m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--resources--pvcLim"><a href="./values.yaml#L275">core.additionalConfig.resources.pvcLim</a></td>
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
			<td id="core--additionalConfig--resources--pvcReq"><a href="./values.yaml#L277">core.additionalConfig.resources.pvcReq</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--additionalConfig--security"><a href="./values.yaml#L279">core.additionalConfig.security</a></td>
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
			<td id="core--additionalConfig--security--disableRoot"><a href="./values.yaml#L281">core.additionalConfig.security.disableRoot</a></td>
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
			<td id="core--argoWorkflow"><a href="./values.yaml#L283">core.argoWorkflow</a></td>
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
			<td id="core--argoWorkflow--configmap"><a href="./values.yaml#L285">core.argoWorkflow.configmap</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"artifact-repositories"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--argoWorkflow--key"><a href="./values.yaml#L287">core.argoWorkflow.key</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"artifact-repository"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--argoWorkflow--serviceAccount"><a href="./values.yaml#L289">core.argoWorkflow.serviceAccount</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-workflow"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--argoWorkflow--user"><a href="./values.yaml#L291">core.argoWorkflow.user</a></td>
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
			<td id="core--authentication"><a href="./values.yaml#L293">core.authentication</a></td>
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
			<td id="core--authentication--openId"><a href="./values.yaml#L295">core.authentication.openId</a></td>
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
			<td id="core--authentication--openId--enabled"><a href="./values.yaml#L297">core.authentication.openId.enabled</a></td>
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
			<td id="core--coreAuthCreds"><a href="./values.yaml#L299">core.coreAuthCreds</a></td>
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
  "clientSecret": "9rb5215z0aqd7fadzxuoyqe3"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--coreAuthCreds--clientId"><a href="./values.yaml#L301">core.coreAuthCreds.clientId</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"m04bfbmd03m8sf4u9ucz54ti"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--coreAuthCreds--clientSecret"><a href="./values.yaml#L303">core.coreAuthCreds.clientSecret</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"9rb5215z0aqd7fadzxuoyqe3"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider"><a href="./values.yaml#L305">core.databaseProvider</a></td>
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
  "port": "5432",
  "schema": "public"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider--database"><a href="./values.yaml#L307">core.databaseProvider.database</a></td>
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
			<td id="core--databaseProvider--host"><a href="./values.yaml#L309">core.databaseProvider.host</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"database-postgres-cluster"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider--ownerSecret"><a href="./values.yaml#L311">core.databaseProvider.ownerSecret</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider--port"><a href="./values.yaml#L313">core.databaseProvider.port</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"5432"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--databaseProvider--schema"><a href="./values.yaml#L315">core.databaseProvider.schema</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"public"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--enabled"><a href="./values.yaml#L317">core.enabled</a></td>
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
			<td id="core--kanikoArgs"><a href="./values.yaml#L319">core.kanikoArgs</a></td>
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
			<td id="core--kubeai"><a href="./values.yaml#L321">core.kubeai</a></td>
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
			<td id="core--kubeai--enabled"><a href="./values.yaml#L323">core.kubeai.enabled</a></td>
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
			<td id="core--kubeai--port"><a href="./values.yaml#L325">core.kubeai.port</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"80"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--kubeai--serviceName"><a href="./values.yaml#L327">core.kubeai.serviceName</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"kubeai"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres"><a href="./values.yaml#L329">core.postgres</a></td>
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
			<td id="core--postgres--credentials"><a href="./values.yaml#L331">core.postgres.credentials</a></td>
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
			<td id="core--postgres--credentials--existingSecret"><a href="./values.yaml#L333">core.postgres.credentials.existingSecret</a></td>
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
			<td id="core--postgres--credentials--existingSecret--name"><a href="./values.yaml#L335">core.postgres.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"coreuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--existingSecret--passwordKey"><a href="./values.yaml#L337">core.postgres.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--existingSecret--usernameKey"><a href="./values.yaml#L339">core.postgres.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--credentials--password"><a href="./values.yaml#L341">core.postgres.credentials.password</a></td>
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
			<td id="core--postgres--credentials--username"><a href="./values.yaml#L343">core.postgres.credentials.username</a></td>
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
			<td id="core--postgres--database"><a href="./values.yaml#L345">core.postgres.database</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"core"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--host"><a href="./values.yaml#L347">core.postgres.host</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"core-postgres-cluster"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--port"><a href="./values.yaml#L349">core.postgres.port</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"5432"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--postgres--schema"><a href="./values.yaml#L351">core.postgres.schema</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"public"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3"><a href="./values.yaml#L353">core.s3</a></td>
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
  "endpoint": "minio",
  "existingSecret": {
    "accessKeyKey": "digitalhubUser",
    "name": "digitalhub-minio-creds",
    "secretKeyKey": "digitalhubPassword"
  },
  "port": "9000",
  "protocol": "http",
  "publicUrl": "http://192.168.49.2:30080",
  "region": "us-west-1",
  "secretKey": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--accessKey"><a href="./values.yaml#L355">core.s3.accessKey</a></td>
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
			<td id="core--s3--bucket"><a href="./values.yaml#L357">core.s3.bucket</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"datalake"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--dynamicCreds"><a href="./values.yaml#L359">core.s3.dynamicCreds</a></td>
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
			<td id="core--s3--dynamicCreds--enabled"><a href="./values.yaml#L361">core.s3.dynamicCreds.enabled</a></td>
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
			<td id="core--s3--endpoint"><a href="./values.yaml#L363">core.s3.endpoint</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--existingSecret"><a href="./values.yaml#L365">core.s3.existingSecret</a></td>
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
  "accessKeyKey": "digitalhubUser",
  "name": "digitalhub-minio-creds",
  "secretKeyKey": "digitalhubPassword"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--existingSecret--accessKeyKey"><a href="./values.yaml#L367">core.s3.existingSecret.accessKeyKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhubUser"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--existingSecret--name"><a href="./values.yaml#L369">core.s3.existingSecret.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-minio-creds"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--existingSecret--secretKeyKey"><a href="./values.yaml#L371">core.s3.existingSecret.secretKeyKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhubPassword"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--port"><a href="./values.yaml#L373">core.s3.port</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"9000"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--protocol"><a href="./values.yaml#L375">core.s3.protocol</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--publicUrl"><a href="./values.yaml#L377">core.s3.publicUrl</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http://192.168.49.2:30080"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--region"><a href="./values.yaml#L379">core.s3.region</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"us-west-1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--s3--secretKey"><a href="./values.yaml#L381">core.s3.secretKey</a></td>
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
			<td id="core--service"><a href="./values.yaml#L383">core.service</a></td>
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
  "httpNodePort": "30180",
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--service--httpNodePort"><a href="./values.yaml#L385">core.service.httpNodePort</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"30180"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--service--type"><a href="./values.yaml#L387">core.service.type</a></td>
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
			<td id="core--solr"><a href="./values.yaml#L389">core.solr</a></td>
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
  "collection": {
    "initialize": {
      "enabled": true,
      "image": "smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot",
      "securityJsonSecret": "digitalhub-solrcloud-security-bootstrap"
    },
    "name": "dhcore"
  },
  "enabled": true,
  "fullNameOverride": "digitalhub",
  "url": "http://digitalhub-solrcloud-common/solr",
  "user": "user"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection"><a href="./values.yaml#L391">core.solr.collection</a></td>
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
  "initialize": {
    "enabled": true,
    "image": "smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot",
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
			<td id="core--solr--collection--initialize"><a href="./values.yaml#L393">core.solr.collection.initialize</a></td>
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
  "image": "smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot",
  "securityJsonSecret": "digitalhub-solrcloud-security-bootstrap"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--initialize--enabled"><a href="./values.yaml#L395">core.solr.collection.initialize.enabled</a></td>
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
			<td id="core--solr--collection--initialize--image"><a href="./values.yaml#L397">core.solr.collection.initialize.image</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"smartcommunitylab/k8s-ansible:1.30.0-1.7.0-nonroot"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--initialize--securityJsonSecret"><a href="./values.yaml#L399">core.solr.collection.initialize.securityJsonSecret</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-solrcloud-security-bootstrap"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--collection--name"><a href="./values.yaml#L401">core.solr.collection.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"dhcore"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--solr--enabled"><a href="./values.yaml#L403">core.solr.enabled</a></td>
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
			<td id="core--solr--fullNameOverride"><a href="./values.yaml#L405">core.solr.fullNameOverride</a></td>
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
			<td id="core--solr--url"><a href="./values.yaml#L407">core.solr.url</a></td>
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
			<td id="core--solr--user"><a href="./values.yaml#L409">core.solr.user</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"user"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts"><a href="./values.yaml#L411">core.sts</a></td>
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
			<td id="core--sts--client"><a href="./values.yaml#L413">core.sts.client</a></td>
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
			<td id="core--sts--client--clientId"><a href="./values.yaml#L415">core.sts.client.clientId</a></td>
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
			<td id="core--sts--client--clientSecret"><a href="./values.yaml#L417">core.sts.client.clientSecret</a></td>
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
			<td id="core--sts--credentials"><a href="./values.yaml#L419">core.sts.credentials</a></td>
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
			<td id="core--sts--credentials--roles"><a href="./values.yaml#L421">core.sts.credentials.roles</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub_owner_user"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--databaseProvider"><a href="./values.yaml#L423">core.sts.databaseProvider</a></td>
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
			<td id="core--sts--databaseProvider--credentials"><a href="./values.yaml#L425">core.sts.databaseProvider.credentials</a></td>
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
			<td id="core--sts--databaseProvider--credentials--existingSecret"><a href="./values.yaml#L427">core.sts.databaseProvider.credentials.existingSecret</a></td>
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
			<td id="core--sts--databaseProvider--credentials--existingSecret--name"><a href="./values.yaml#L429">core.sts.databaseProvider.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--databaseProvider--credentials--existingSecret--passwordKey"><a href="./values.yaml#L431">core.sts.databaseProvider.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--databaseProvider--credentials--existingSecret--usernameKey"><a href="./values.yaml#L433">core.sts.databaseProvider.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--databaseProvider--credentials--password"><a href="./values.yaml#L435">core.sts.databaseProvider.credentials.password</a></td>
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
			<td id="core--sts--databaseProvider--credentials--username"><a href="./values.yaml#L437">core.sts.databaseProvider.credentials.username</a></td>
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
			<td id="core--sts--databaseProvider--enabled"><a href="./values.yaml#L439">core.sts.databaseProvider.enabled</a></td>
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
			<td id="core--sts--enabled"><a href="./values.yaml#L441">core.sts.enabled</a></td>
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
			<td id="core--sts--jwt"><a href="./values.yaml#L443">core.sts.jwt</a></td>
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
			<td id="core--sts--jwt--issuerUri"><a href="./values.yaml#L445">core.sts.jwt.issuerUri</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http://digitalhub-core:8080"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb"><a href="./values.yaml#L447">core.sts.stsDb</a></td>
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
			<td id="core--sts--stsDb--credentials"><a href="./values.yaml#L449">core.sts.stsDb.credentials</a></td>
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
			<td id="core--sts--stsDb--credentials--existingSecret"><a href="./values.yaml#L451">core.sts.stsDb.credentials.existingSecret</a></td>
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
			<td id="core--sts--stsDb--credentials--existingSecret--name"><a href="./values.yaml#L453">core.sts.stsDb.credentials.existingSecret.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"stsuser.core-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--credentials--existingSecret--passwordKey"><a href="./values.yaml#L455">core.sts.stsDb.credentials.existingSecret.passwordKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--credentials--existingSecret--usernameKey"><a href="./values.yaml#L457">core.sts.stsDb.credentials.existingSecret.usernameKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--database"><a href="./values.yaml#L459">core.sts.stsDb.database</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sts"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--driver"><a href="./values.yaml#L461">core.sts.stsDb.driver</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"org.postgresql.Driver"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--host"><a href="./values.yaml#L463">core.sts.stsDb.host</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"core-postgres-cluster"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--platform"><a href="./values.yaml#L465">core.sts.stsDb.platform</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"postgresql"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--port"><a href="./values.yaml#L467">core.sts.stsDb.port</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"5432"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="core--sts--stsDb--schema"><a href="./values.yaml#L469">core.sts.stsDb.schema</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"public"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard"><a href="./values.yaml#L472">dashboard</a></td>
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
  "fullnameOverride": "",
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
  "nameOverride": "",
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
			<td id="dashboard--additional-components"><a href="./values.yaml#L474">dashboard.additional-components</a></td>
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
			<td id="dashboard--additional-components--apps"><a href="./values.yaml#L476">dashboard.additional-components.apps</a></td>
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
			<td id="dashboard--additional-components--enabled"><a href="./values.yaml#L507">dashboard.additional-components.enabled</a></td>
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
			<td id="dashboard--affinity"><a href="./values.yaml#L509">dashboard.affinity</a></td>
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
			<td id="dashboard--autoscaling"><a href="./values.yaml#L511">dashboard.autoscaling</a></td>
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
			<td id="dashboard--autoscaling--enabled"><a href="./values.yaml#L513">dashboard.autoscaling.enabled</a></td>
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
			<td id="dashboard--autoscaling--maxReplicas"><a href="./values.yaml#L515">dashboard.autoscaling.maxReplicas</a></td>
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
			<td id="dashboard--autoscaling--minReplicas"><a href="./values.yaml#L517">dashboard.autoscaling.minReplicas</a></td>
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
			<td id="dashboard--autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L519">dashboard.autoscaling.targetCPUUtilizationPercentage</a></td>
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
			<td id="dashboard--fullnameOverride"><a href="./values.yaml#L521">dashboard.fullnameOverride</a></td>
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
			<td id="dashboard--image"><a href="./values.yaml#L523">dashboard.image</a></td>
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
			<td id="dashboard--image--pullPolicy"><a href="./values.yaml#L525">dashboard.image.pullPolicy</a></td>
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
			<td id="dashboard--image--repository"><a href="./values.yaml#L527">dashboard.image.repository</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/dh-dashboard"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--image--tag"><a href="./values.yaml#L529">dashboard.image.tag</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.1.4"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--imagePullSecrets"><a href="./values.yaml#L531">dashboard.imagePullSecrets</a></td>
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
			<td id="dashboard--ingress"><a href="./values.yaml#L533">dashboard.ingress</a></td>
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
			<td id="dashboard--ingress--annotations"><a href="./values.yaml#L535">dashboard.ingress.annotations</a></td>
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
			<td id="dashboard--ingress--className"><a href="./values.yaml#L537">dashboard.ingress.className</a></td>
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
			<td id="dashboard--ingress--enabled"><a href="./values.yaml#L539">dashboard.ingress.enabled</a></td>
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
			<td id="dashboard--ingress--hosts"><a href="./values.yaml#L541">dashboard.ingress.hosts</a></td>
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
			<td id="dashboard--ingress--tls"><a href="./values.yaml#L547">dashboard.ingress.tls</a></td>
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
			<td id="dashboard--nameOverride"><a href="./values.yaml#L552">dashboard.nameOverride</a></td>
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
			<td id="dashboard--nodeSelector"><a href="./values.yaml#L554">dashboard.nodeSelector</a></td>
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
			<td id="dashboard--oidc"><a href="./values.yaml#L556">dashboard.oidc</a></td>
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
			<td id="dashboard--oidc--audience"><a href="./values.yaml#L558">dashboard.oidc.audience</a></td>
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
			<td id="dashboard--oidc--audience--clientId"><a href="./values.yaml#L560">dashboard.oidc.audience.clientId</a></td>
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
			<td id="dashboard--oidc--audience--externalSecret"><a href="./values.yaml#L562">dashboard.oidc.audience.externalSecret</a></td>
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
			<td id="dashboard--oidc--audience--externalSecret--key"><a href="./values.yaml#L564">dashboard.oidc.audience.externalSecret.key</a></td>
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
			<td id="dashboard--oidc--audience--externalSecret--name"><a href="./values.yaml#L566">dashboard.oidc.audience.externalSecret.name</a></td>
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
			<td id="dashboard--oidc--config"><a href="./values.yaml#L568">dashboard.oidc.config</a></td>
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
			<td id="dashboard--oidc--config--issuer"><a href="./values.yaml#L570">dashboard.oidc.config.issuer</a></td>
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
			<td id="dashboard--oidc--enabled"><a href="./values.yaml#L572">dashboard.oidc.enabled</a></td>
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
			<td id="dashboard--podAnnotations"><a href="./values.yaml#L574">dashboard.podAnnotations</a></td>
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
			<td id="dashboard--podLabels"><a href="./values.yaml#L576">dashboard.podLabels</a></td>
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
			<td id="dashboard--podSecurityContext"><a href="./values.yaml#L578">dashboard.podSecurityContext</a></td>
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
			<td id="dashboard--podSecurityContext--fsGroup"><a href="./values.yaml#L580">dashboard.podSecurityContext.fsGroup</a></td>
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
			<td id="dashboard--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L582">dashboard.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="dashboard--podSecurityContext--runAsUser"><a href="./values.yaml#L584">dashboard.podSecurityContext.runAsUser</a></td>
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
			<td id="dashboard--podSecurityContext--seccompProfile"><a href="./values.yaml#L586">dashboard.podSecurityContext.seccompProfile</a></td>
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
			<td id="dashboard--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L588">dashboard.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="dashboard--replicaCount"><a href="./values.yaml#L590">dashboard.replicaCount</a></td>
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
			<td id="dashboard--resources"><a href="./values.yaml#L592">dashboard.resources</a></td>
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
			<td id="dashboard--resources--limits"><a href="./values.yaml#L594">dashboard.resources.limits</a></td>
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
  "cpu": "1000m",
  "memory": "512Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--limits--cpu"><a href="./values.yaml#L596">dashboard.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1000m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--limits--memory"><a href="./values.yaml#L598">dashboard.resources.limits.memory</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"512Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--requests"><a href="./values.yaml#L600">dashboard.resources.requests</a></td>
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
  "cpu": "250m",
  "memory": "256Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--requests--cpu"><a href="./values.yaml#L602">dashboard.resources.requests.cpu</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"250m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--resources--requests--memory"><a href="./values.yaml#L604">dashboard.resources.requests.memory</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"256Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--securityContext"><a href="./values.yaml#L606">dashboard.securityContext</a></td>
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
			<td id="dashboard--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L608">dashboard.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="dashboard--securityContext--capabilities"><a href="./values.yaml#L610">dashboard.securityContext.capabilities</a></td>
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
			<td id="dashboard--securityContext--capabilities--drop"><a href="./values.yaml#L612">dashboard.securityContext.capabilities.drop</a></td>
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
			<td id="dashboard--securityContext--runAsNonRoot"><a href="./values.yaml#L615">dashboard.securityContext.runAsNonRoot</a></td>
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
			<td id="dashboard--securityContext--runAsUser"><a href="./values.yaml#L617">dashboard.securityContext.runAsUser</a></td>
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
			<td id="dashboard--securityContext--seccompProfile"><a href="./values.yaml#L619">dashboard.securityContext.seccompProfile</a></td>
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
			<td id="dashboard--securityContext--seccompProfile--type"><a href="./values.yaml#L621">dashboard.securityContext.seccompProfile.type</a></td>
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
			<td id="dashboard--service"><a href="./values.yaml#L623">dashboard.service</a></td>
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
			<td id="dashboard--service--httpNodePort"><a href="./values.yaml#L625">dashboard.service.httpNodePort</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"30110"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--service--port"><a href="./values.yaml#L627">dashboard.service.port</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8080"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--service--type"><a href="./values.yaml#L629">dashboard.service.type</a></td>
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
			<td id="dashboard--serviceAccount"><a href="./values.yaml#L631">dashboard.serviceAccount</a></td>
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
			<td id="dashboard--serviceAccount--annotations"><a href="./values.yaml#L633">dashboard.serviceAccount.annotations</a></td>
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
			<td id="dashboard--serviceAccount--automount"><a href="./values.yaml#L635">dashboard.serviceAccount.automount</a></td>
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
			<td id="dashboard--serviceAccount--create"><a href="./values.yaml#L637">dashboard.serviceAccount.create</a></td>
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
			<td id="dashboard--serviceAccount--name"><a href="./values.yaml#L639">dashboard.serviceAccount.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-dashboard"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dashboard--tolerations"><a href="./values.yaml#L641">dashboard.tolerations</a></td>
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
			<td id="dashboard--volumes"><a href="./values.yaml#L643">dashboard.volumes</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
null
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry"><a href="./values.yaml#L646">docker-registry</a></td>
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
			<td id="docker-registry--className"><a href="./values.yaml#L648">docker-registry.className</a></td>
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
			<td id="docker-registry--enabled"><a href="./values.yaml#L650">docker-registry.enabled</a></td>
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
			<td id="docker-registry--fullnameOverride"><a href="./values.yaml#L652">docker-registry.fullnameOverride</a></td>
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
			<td id="docker-registry--ingress"><a href="./values.yaml#L654">docker-registry.ingress</a></td>
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
			<td id="docker-registry--ingress--enabled"><a href="./values.yaml#L656">docker-registry.ingress.enabled</a></td>
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
			<td id="docker-registry--ingress--hosts"><a href="./values.yaml#L658">docker-registry.ingress.hosts</a></td>
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
  "registry.digitalhub.test"
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--ingress--path"><a href="./values.yaml#L661">docker-registry.ingress.path</a></td>
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
			<td id="docker-registry--persistence"><a href="./values.yaml#L663">docker-registry.persistence</a></td>
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
			<td id="docker-registry--persistence--accessMode"><a href="./values.yaml#L665">docker-registry.persistence.accessMode</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ReadWriteOnce"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--persistence--enabled"><a href="./values.yaml#L667">docker-registry.persistence.enabled</a></td>
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
			<td id="docker-registry--persistence--size"><a href="./values.yaml#L669">docker-registry.persistence.size</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"128Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--service"><a href="./values.yaml#L671">docker-registry.service</a></td>
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
  "nodePort": 30150,
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--service--nodePort"><a href="./values.yaml#L673">docker-registry.service.nodePort</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
30150
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--service--type"><a href="./values.yaml#L675">docker-registry.service.type</a></td>
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
			<td id="docker-registry--updateStrategy"><a href="./values.yaml#L677">docker-registry.updateStrategy</a></td>
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
  "type": "Recreate"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="docker-registry--updateStrategy--type"><a href="./values.yaml#L679">docker-registry.updateStrategy.type</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"Recreate"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="dremio-rest-server-operator"><a href="./values.yaml#L682">dremio-rest-server-operator</a></td>
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
			<td id="dremio-rest-server-operator--enabled"><a href="./values.yaml#L684">dremio-rest-server-operator.enabled</a></td>
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
			<td id="ext-postgres-operator"><a href="./values.yaml#L687">ext-postgres-operator</a></td>
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
			<td id="ext-postgres-operator--enabled"><a href="./values.yaml#L689">ext-postgres-operator.enabled</a></td>
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
			<td id="ext-postgres-operator--image"><a href="./values.yaml#L691">ext-postgres-operator.image</a></td>
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
			<td id="ext-postgres-operator--image--tag"><a href="./values.yaml#L693">ext-postgres-operator.image.tag</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1.3.5"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--podSecurityContext"><a href="./values.yaml#L695">ext-postgres-operator.podSecurityContext</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L697">ext-postgres-operator.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--seccompProfile"><a href="./values.yaml#L699">ext-postgres-operator.podSecurityContext.seccompProfile</a></td>
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
			<td id="ext-postgres-operator--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L701">ext-postgres-operator.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="ext-postgres-operator--postgres"><a href="./values.yaml#L703">ext-postgres-operator.postgres</a></td>
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
			<td id="ext-postgres-operator--postgres--cloud_provider"><a href="./values.yaml#L705">ext-postgres-operator.postgres.cloud_provider</a></td>
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
			<td id="ext-postgres-operator--postgres--default_database"><a href="./values.yaml#L707">ext-postgres-operator.postgres.default_database</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"postgres"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgres--host"><a href="./values.yaml#L709">ext-postgres-operator.postgres.host</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"database-postgres-cluster"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgres--password"><a href="./values.yaml#L711">ext-postgres-operator.postgres.password</a></td>
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
			<td id="ext-postgres-operator--postgres--uri_args"><a href="./values.yaml#L713">ext-postgres-operator.postgres.uri_args</a></td>
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
			<td id="ext-postgres-operator--postgres--user"><a href="./values.yaml#L715">ext-postgres-operator.postgres.user</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets"><a href="./values.yaml#L717">ext-postgres-operator.postgresCredsExistingSecrets</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password"><a href="./values.yaml#L719">ext-postgres-operator.postgresCredsExistingSecrets.password</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password--secretKey"><a href="./values.yaml#L721">ext-postgres-operator.postgresCredsExistingSecrets.password.secretKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--password--secretName"><a href="./values.yaml#L723">ext-postgres-operator.postgresCredsExistingSecrets.password.secretName</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username"><a href="./values.yaml#L725">ext-postgres-operator.postgresCredsExistingSecrets.username</a></td>
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
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username--secretKey"><a href="./values.yaml#L727">ext-postgres-operator.postgresCredsExistingSecrets.username.secretKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--postgresCredsExistingSecrets--username--secretName"><a href="./values.yaml#L729">ext-postgres-operator.postgresCredsExistingSecrets.username.secretName</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhubadmin.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="ext-postgres-operator--securityContext"><a href="./values.yaml#L731">ext-postgres-operator.securityContext</a></td>
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
			<td id="ext-postgres-operator--securityContext--seccompProfile"><a href="./values.yaml#L733">ext-postgres-operator.securityContext.seccompProfile</a></td>
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
			<td id="ext-postgres-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L735">ext-postgres-operator.securityContext.seccompProfile.type</a></td>
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
			<td id="global"><a href="./values.yaml#L738">global</a></td>
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
  "basicAuth": {
    "enabled": false,
    "password": "",
    "secretName": "",
    "username": ""
  },
  "cleanup": {
    "deployments": false,
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
  "minio": {
    "argoBucket": "argo",
    "argoPassword": "argo1234",
    "argoSecret": "argo-minio-creds",
    "argoUser": "argo",
    "bucket": "datalake",
    "digitalhubPassword": "digitalhub",
    "digitalhubUser": "digitalhub",
    "digitalhubUserSecret": "digitalhub-minio-creds",
    "endpoint": "minio",
    "endpointPort": "9000",
    "protocol": "http",
    "rootPassword": "minio123",
    "rootUser": "minio",
    "rootUserSecret": "minio"
  },
  "registry": {
    "email": "",
    "password": "",
    "secretName": "",
    "url": "192.168.49.2:30150",
    "username": ""
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
			<td id="global--basicAuth"><a href="./values.yaml#L740">global.basicAuth</a></td>
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
			<td id="global--basicAuth--enabled"><a href="./values.yaml#L742">global.basicAuth.enabled</a></td>
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
			<td id="global--basicAuth--password"><a href="./values.yaml#L744">global.basicAuth.password</a></td>
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
			<td id="global--basicAuth--secretName"><a href="./values.yaml#L746">global.basicAuth.secretName</a></td>
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
			<td id="global--basicAuth--username"><a href="./values.yaml#L748">global.basicAuth.username</a></td>
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
			<td id="global--cleanup"><a href="./values.yaml#L750">global.cleanup</a></td>
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
  "deployments": false,
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
			<td id="global--cleanup--deployments"><a href="./values.yaml#L752">global.cleanup.deployments</a></td>
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
			<td id="global--cleanup--ingress"><a href="./values.yaml#L754">global.cleanup.ingress</a></td>
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
			<td id="global--cleanup--jobs"><a href="./values.yaml#L756">global.cleanup.jobs</a></td>
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
			<td id="global--cleanup--persistentVolumeClaims"><a href="./values.yaml#L758">global.cleanup.persistentVolumeClaims</a></td>
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
			<td id="global--cleanup--pods"><a href="./values.yaml#L760">global.cleanup.pods</a></td>
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
			<td id="global--cleanup--statefulsets"><a href="./values.yaml#L762">global.cleanup.statefulsets</a></td>
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
			<td id="global--crd"><a href="./values.yaml#L764">global.crd</a></td>
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
			<td id="global--crd--enabled"><a href="./values.yaml#L766">global.crd.enabled</a></td>
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
			<td id="global--externalHostAddress"><a href="./values.yaml#L768">global.externalHostAddress</a></td>
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
			<td id="global--externalTls"><a href="./values.yaml#L770">global.externalTls</a></td>
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
			<td id="global--minio"><a href="./values.yaml#L772">global.minio</a></td>
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
  "argoBucket": "argo",
  "argoPassword": "argo1234",
  "argoSecret": "argo-minio-creds",
  "argoUser": "argo",
  "bucket": "datalake",
  "digitalhubPassword": "digitalhub",
  "digitalhubUser": "digitalhub",
  "digitalhubUserSecret": "digitalhub-minio-creds",
  "endpoint": "minio",
  "endpointPort": "9000",
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
			<td id="global--minio--argoBucket"><a href="./values.yaml#L774">global.minio.argoBucket</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--argoPassword"><a href="./values.yaml#L776">global.minio.argoPassword</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo1234"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--argoSecret"><a href="./values.yaml#L778">global.minio.argoSecret</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo-minio-creds"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--argoUser"><a href="./values.yaml#L780">global.minio.argoUser</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"argo"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--bucket"><a href="./values.yaml#L782">global.minio.bucket</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"datalake"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--digitalhubPassword"><a href="./values.yaml#L784">global.minio.digitalhubPassword</a></td>
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
			<td id="global--minio--digitalhubUser"><a href="./values.yaml#L786">global.minio.digitalhubUser</a></td>
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
			<td id="global--minio--digitalhubUserSecret"><a href="./values.yaml#L788">global.minio.digitalhubUserSecret</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-minio-creds"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--endpoint"><a href="./values.yaml#L790">global.minio.endpoint</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--endpointPort"><a href="./values.yaml#L792">global.minio.endpointPort</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"9000"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--protocol"><a href="./values.yaml#L794">global.minio.protocol</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--rootPassword"><a href="./values.yaml#L796">global.minio.rootPassword</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio123"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--rootUser"><a href="./values.yaml#L798">global.minio.rootUser</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--minio--rootUserSecret"><a href="./values.yaml#L800">global.minio.rootUserSecret</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--registry"><a href="./values.yaml#L802">global.registry</a></td>
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
			<td id="global--registry--email"><a href="./values.yaml#L804">global.registry.email</a></td>
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
			<td id="global--registry--password"><a href="./values.yaml#L806">global.registry.password</a></td>
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
			<td id="global--registry--secretName"><a href="./values.yaml#L808">global.registry.secretName</a></td>
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
			<td id="global--registry--url"><a href="./values.yaml#L810">global.registry.url</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"192.168.49.2:30150"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="global--registry--username"><a href="./values.yaml#L812">global.registry.username</a></td>
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
			<td id="global--securityContext"><a href="./values.yaml#L814">global.securityContext</a></td>
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
			<td id="global--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L816">global.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="global--securityContext--capabilities"><a href="./values.yaml#L818">global.securityContext.capabilities</a></td>
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
			<td id="global--securityContext--capabilities--drop"><a href="./values.yaml#L820">global.securityContext.capabilities.drop</a></td>
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
			<td id="global--securityContext--runAsNonRoot"><a href="./values.yaml#L823">global.securityContext.runAsNonRoot</a></td>
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
			<td id="global--securityContext--seccompProfile"><a href="./values.yaml#L825">global.securityContext.seccompProfile</a></td>
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
			<td id="global--securityContext--seccompProfile--type"><a href="./values.yaml#L827">global.securityContext.seccompProfile.type</a></td>
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
			<td id="global--service"><a href="./values.yaml#L829">global.service</a></td>
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
			<td id="global--service--type"><a href="./values.yaml#L831">global.service.type</a></td>
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
			<td id="global--solr"><a href="./values.yaml#L833">global.solr</a></td>
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
			<td id="global--solr--fullNameOverride"><a href="./values.yaml#L835">global.solr.fullNameOverride</a></td>
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
			<td id="jobs"><a href="./values.yaml#L838">jobs</a></td>
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
			<td id="jobs--delete"><a href="./values.yaml#L840">jobs.delete</a></td>
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
			<td id="jobs--delete--securityContext"><a href="./values.yaml#L842">jobs.delete.securityContext</a></td>
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
			<td id="jobs--delete--securityContext--readOnlyRootFilesystem"><a href="./values.yaml#L844">jobs.delete.securityContext.readOnlyRootFilesystem</a></td>
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
			<td id="kubeai"><a href="./values.yaml#L847">kubeai</a></td>
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
  "crds": {
    "enabled": true
  },
  "enabled": true,
  "open-webui": {
    "enabled": false
  },
  "resourceProfiles": {
    "cpu": {
      "imageName": "cpu",
      "requests": {
        "cpu": 1,
        "memory": "2Gi"
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
			<td id="kubeai--crds"><a href="./values.yaml#L849">kubeai.crds</a></td>
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
			<td id="kubeai--crds--enabled"><a href="./values.yaml#L851">kubeai.crds.enabled</a></td>
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
			<td id="kubeai--enabled"><a href="./values.yaml#L853">kubeai.enabled</a></td>
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
			<td id="kubeai--open-webui"><a href="./values.yaml#L855">kubeai.open-webui</a></td>
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
			<td id="kubeai--open-webui--enabled"><a href="./values.yaml#L857">kubeai.open-webui.enabled</a></td>
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
			<td id="kubeai--resourceProfiles"><a href="./values.yaml#L859">kubeai.resourceProfiles</a></td>
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
  "cpu": {
    "imageName": "cpu",
    "requests": {
      "cpu": 1,
      "memory": "2Gi"
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--resourceProfiles--cpu"><a href="./values.yaml#L861">kubeai.resourceProfiles.cpu</a></td>
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
  "imageName": "cpu",
  "requests": {
    "cpu": 1,
    "memory": "2Gi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--resourceProfiles--cpu--imageName"><a href="./values.yaml#L863">kubeai.resourceProfiles.cpu.imageName</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"cpu"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--resourceProfiles--cpu--requests"><a href="./values.yaml#L865">kubeai.resourceProfiles.cpu.requests</a></td>
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
  "cpu": 1,
  "memory": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubeai--resourceProfiles--cpu--requests--cpu"><a href="./values.yaml#L867">kubeai.resourceProfiles.cpu.requests.cpu</a></td>
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
			<td id="kubeai--resourceProfiles--cpu--requests--memory"><a href="./values.yaml#L869">kubeai.resourceProfiles.cpu.requests.memory</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager"><a href="./values.yaml#L872">kubernetes-resource-manager</a></td>
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
			<td id="kubernetes-resource-manager--enabled"><a href="./values.yaml#L874">kubernetes-resource-manager.enabled</a></td>
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
			<td id="kubernetes-resource-manager--resourceSelectors"><a href="./values.yaml#L876">kubernetes-resource-manager.resourceSelectors</a></td>
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
			<td id="kubernetes-resource-manager--resourceSelectors--secrets"><a href="./values.yaml#L878">kubernetes-resource-manager.resourceSelectors.secrets</a></td>
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
  "names": "(digitalhub\\-owner|digitalhub\\-reader|digitalhub\\-writer).*"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--resourceSelectors--secrets--names"><a href="./values.yaml#L880">kubernetes-resource-manager.resourceSelectors.secrets.names</a></td>
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
			<td id="kubernetes-resource-manager--service"><a href="./values.yaml#L882">kubernetes-resource-manager.service</a></td>
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
  "nodePort": "30220",
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--service--nodePort"><a href="./values.yaml#L884">kubernetes-resource-manager.service.nodePort</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"30220"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="kubernetes-resource-manager--service--type"><a href="./values.yaml#L886">kubernetes-resource-manager.service.type</a></td>
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
			<td id="minio"><a href="./values.yaml#L889">minio</a></td>
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
  "buckets": [
    {
      "name": "datalake",
      "policy": "none",
      "purge": false
    },
    {
      "name": "argo",
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
    },
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
      "accessKey": "digitalhub",
      "policy": "readwritedigitalhub",
      "secretKey": "digitalhub"
    },
    {
      "accessKey": "argo",
      "policy": "readwriteargo",
      "secretKey": "argo1234"
    }
  ]
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator"><a href="./values.yaml#L1098">minio-operator</a></td>
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
			<td id="minio-operator--enabled"><a href="./values.yaml#L1100">minio-operator.enabled</a></td>
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
			<td id="minio-operator--minio"><a href="./values.yaml#L1102">minio-operator.minio</a></td>
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
			<td id="minio-operator--minio--accessKey"><a href="./values.yaml#L1104">minio-operator.minio.accessKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--bucket"><a href="./values.yaml#L1106">minio-operator.minio.bucket</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"datalake"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--endpoint"><a href="./values.yaml#L1108">minio-operator.minio.endpoint</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--endpointPort"><a href="./values.yaml#L1110">minio-operator.minio.endpointPort</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"9000"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--protocol"><a href="./values.yaml#L1112">minio-operator.minio.protocol</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio-operator--minio--secretKey"><a href="./values.yaml#L1114">minio-operator.minio.secretKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio123"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--buckets"><a href="./values.yaml#L891">minio.buckets</a></td>
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
    "name": "datalake",
    "policy": "none",
    "purge": false
  },
  {
    "name": "argo",
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
			<td id="minio--consoleService"><a href="./values.yaml#L899">minio.consoleService</a></td>
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
			<td id="minio--consoleService--nodePort"><a href="./values.yaml#L901">minio.consoleService.nodePort</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
30090
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--consoleService--port"><a href="./values.yaml#L903">minio.consoleService.port</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
9001
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--consoleService--type"><a href="./values.yaml#L905">minio.consoleService.type</a></td>
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
			<td id="minio--containerSecurityContext"><a href="./values.yaml#L907">minio.containerSecurityContext</a></td>
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
			<td id="minio--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L909">minio.containerSecurityContext.allowPrivilegeEscalation</a></td>
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
			<td id="minio--containerSecurityContext--capabilities"><a href="./values.yaml#L911">minio.containerSecurityContext.capabilities</a></td>
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
			<td id="minio--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L913">minio.containerSecurityContext.capabilities.drop</a></td>
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
			<td id="minio--containerSecurityContext--runAsNonRoot"><a href="./values.yaml#L916">minio.containerSecurityContext.runAsNonRoot</a></td>
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
			<td id="minio--containerSecurityContext--seccompProfile"><a href="./values.yaml#L918">minio.containerSecurityContext.seccompProfile</a></td>
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
			<td id="minio--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L920">minio.containerSecurityContext.seccompProfile.type</a></td>
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
			<td id="minio--deploymentUpdate"><a href="./values.yaml#L922">minio.deploymentUpdate</a></td>
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
  "type": "Recreate"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--deploymentUpdate--type"><a href="./values.yaml#L924">minio.deploymentUpdate.type</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"Recreate"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--enabled"><a href="./values.yaml#L926">minio.enabled</a></td>
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
			<td id="minio--fullnameOverride"><a href="./values.yaml#L928">minio.fullnameOverride</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--ingress"><a href="./values.yaml#L930">minio.ingress</a></td>
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
			<td id="minio--ingress--enabled"><a href="./values.yaml#L932">minio.ingress.enabled</a></td>
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
			<td id="minio--makeBucketJob"><a href="./values.yaml#L934">minio.makeBucketJob</a></td>
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
			<td id="minio--makeBucketJob--containerSecurityContext"><a href="./values.yaml#L936">minio.makeBucketJob.containerSecurityContext</a></td>
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
			<td id="minio--makeBucketJob--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L938">minio.makeBucketJob.containerSecurityContext.allowPrivilegeEscalation</a></td>
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
			<td id="minio--makeBucketJob--containerSecurityContext--capabilities"><a href="./values.yaml#L940">minio.makeBucketJob.containerSecurityContext.capabilities</a></td>
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
			<td id="minio--makeBucketJob--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L942">minio.makeBucketJob.containerSecurityContext.capabilities.drop</a></td>
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
			<td id="minio--makeBucketJob--containerSecurityContext--runAsNonRoot"><a href="./values.yaml#L945">minio.makeBucketJob.containerSecurityContext.runAsNonRoot</a></td>
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
			<td id="minio--makeBucketJob--containerSecurityContext--seccompProfile"><a href="./values.yaml#L947">minio.makeBucketJob.containerSecurityContext.seccompProfile</a></td>
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
			<td id="minio--makeBucketJob--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L949">minio.makeBucketJob.containerSecurityContext.seccompProfile.type</a></td>
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
			<td id="minio--makeBucketJob--securityContext"><a href="./values.yaml#L951">minio.makeBucketJob.securityContext</a></td>
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
			<td id="minio--makeBucketJob--securityContext--enabled"><a href="./values.yaml#L953">minio.makeBucketJob.securityContext.enabled</a></td>
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
			<td id="minio--makePolicyJob"><a href="./values.yaml#L955">minio.makePolicyJob</a></td>
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
			<td id="minio--makePolicyJob--containerSecurityContext"><a href="./values.yaml#L957">minio.makePolicyJob.containerSecurityContext</a></td>
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
			<td id="minio--makePolicyJob--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L959">minio.makePolicyJob.containerSecurityContext.allowPrivilegeEscalation</a></td>
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
			<td id="minio--makePolicyJob--containerSecurityContext--capabilities"><a href="./values.yaml#L961">minio.makePolicyJob.containerSecurityContext.capabilities</a></td>
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
			<td id="minio--makePolicyJob--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L963">minio.makePolicyJob.containerSecurityContext.capabilities.drop</a></td>
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
			<td id="minio--makePolicyJob--containerSecurityContext--runAsNonRoot"><a href="./values.yaml#L966">minio.makePolicyJob.containerSecurityContext.runAsNonRoot</a></td>
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
			<td id="minio--makePolicyJob--containerSecurityContext--seccompProfile"><a href="./values.yaml#L968">minio.makePolicyJob.containerSecurityContext.seccompProfile</a></td>
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
			<td id="minio--makePolicyJob--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L970">minio.makePolicyJob.containerSecurityContext.seccompProfile.type</a></td>
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
			<td id="minio--makePolicyJob--securityContext"><a href="./values.yaml#L972">minio.makePolicyJob.securityContext</a></td>
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
			<td id="minio--makePolicyJob--securityContext--enabled"><a href="./values.yaml#L974">minio.makePolicyJob.securityContext.enabled</a></td>
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
			<td id="minio--makeUserJob"><a href="./values.yaml#L976">minio.makeUserJob</a></td>
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
			<td id="minio--makeUserJob--containerSecurityContext"><a href="./values.yaml#L978">minio.makeUserJob.containerSecurityContext</a></td>
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
			<td id="minio--makeUserJob--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L980">minio.makeUserJob.containerSecurityContext.allowPrivilegeEscalation</a></td>
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
			<td id="minio--makeUserJob--containerSecurityContext--capabilities"><a href="./values.yaml#L982">minio.makeUserJob.containerSecurityContext.capabilities</a></td>
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
			<td id="minio--makeUserJob--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L984">minio.makeUserJob.containerSecurityContext.capabilities.drop</a></td>
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
			<td id="minio--makeUserJob--containerSecurityContext--runAsNonRoot"><a href="./values.yaml#L987">minio.makeUserJob.containerSecurityContext.runAsNonRoot</a></td>
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
			<td id="minio--makeUserJob--containerSecurityContext--seccompProfile"><a href="./values.yaml#L989">minio.makeUserJob.containerSecurityContext.seccompProfile</a></td>
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
			<td id="minio--makeUserJob--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L991">minio.makeUserJob.containerSecurityContext.seccompProfile.type</a></td>
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
			<td id="minio--makeUserJob--securityContext"><a href="./values.yaml#L993">minio.makeUserJob.securityContext</a></td>
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
			<td id="minio--makeUserJob--securityContext--enabled"><a href="./values.yaml#L995">minio.makeUserJob.securityContext.enabled</a></td>
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
			<td id="minio--mode"><a href="./values.yaml#L997">minio.mode</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"standalone"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--oidc"><a href="./values.yaml#L999">minio.oidc</a></td>
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
			<td id="minio--oidc--claimName"><a href="./values.yaml#L1001">minio.oidc.claimName</a></td>
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
			<td id="minio--oidc--claimPrefix"><a href="./values.yaml#L1003">minio.oidc.claimPrefix</a></td>
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
			<td id="minio--oidc--clientId"><a href="./values.yaml#L1005">minio.oidc.clientId</a></td>
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
			<td id="minio--oidc--clientSecret"><a href="./values.yaml#L1007">minio.oidc.clientSecret</a></td>
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
			<td id="minio--oidc--comment"><a href="./values.yaml#L1009">minio.oidc.comment</a></td>
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
			<td id="minio--oidc--configUrl"><a href="./values.yaml#L1011">minio.oidc.configUrl</a></td>
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
			<td id="minio--oidc--displayName"><a href="./values.yaml#L1013">minio.oidc.displayName</a></td>
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
			<td id="minio--oidc--enabled"><a href="./values.yaml#L1015">minio.oidc.enabled</a></td>
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
			<td id="minio--oidc--existingClientIdKey"><a href="./values.yaml#L1017">minio.oidc.existingClientIdKey</a></td>
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
			<td id="minio--oidc--existingClientSecretKey"><a href="./values.yaml#L1019">minio.oidc.existingClientSecretKey</a></td>
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
			<td id="minio--oidc--existingClientSecretName"><a href="./values.yaml#L1021">minio.oidc.existingClientSecretName</a></td>
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
			<td id="minio--oidc--redirectUri"><a href="./values.yaml#L1023">minio.oidc.redirectUri</a></td>
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
			<td id="minio--oidc--scopes"><a href="./values.yaml#L1025">minio.oidc.scopes</a></td>
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
			<td id="minio--persistence"><a href="./values.yaml#L1027">minio.persistence</a></td>
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
  "size": "128Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--persistence--enabled"><a href="./values.yaml#L1029">minio.persistence.enabled</a></td>
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
			<td id="minio--persistence--size"><a href="./values.yaml#L1031">minio.persistence.size</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"128Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--policies"><a href="./values.yaml#L1033">minio.policies</a></td>
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
  },
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
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--postJob"><a href="./values.yaml#L1049">minio.postJob</a></td>
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
			<td id="minio--postJob--securityContext"><a href="./values.yaml#L1051">minio.postJob.securityContext</a></td>
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
			<td id="minio--postJob--securityContext--enabled"><a href="./values.yaml#L1053">minio.postJob.securityContext.enabled</a></td>
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
			<td id="minio--postJob--securityContext--runAsNonRoot"><a href="./values.yaml#L1055">minio.postJob.securityContext.runAsNonRoot</a></td>
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
			<td id="minio--postJob--securityContext--seccompProfile"><a href="./values.yaml#L1057">minio.postJob.securityContext.seccompProfile</a></td>
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
			<td id="minio--postJob--securityContext--seccompProfile--type"><a href="./values.yaml#L1059">minio.postJob.securityContext.seccompProfile.type</a></td>
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
			<td id="minio--replicas"><a href="./values.yaml#L1061">minio.replicas</a></td>
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
			<td id="minio--resources"><a href="./values.yaml#L1063">minio.resources</a></td>
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
			<td id="minio--resources--requests"><a href="./values.yaml#L1065">minio.resources.requests</a></td>
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
  "memory": "0.5Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--resources--requests--memory"><a href="./values.yaml#L1067">minio.resources.requests.memory</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.5Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--rootPassword"><a href="./values.yaml#L1069">minio.rootPassword</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio123"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--rootUser"><a href="./values.yaml#L1071">minio.rootUser</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"minio"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--securityContext"><a href="./values.yaml#L1073">minio.securityContext</a></td>
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
			<td id="minio--securityContext--runAsNonRoot"><a href="./values.yaml#L1075">minio.securityContext.runAsNonRoot</a></td>
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
			<td id="minio--securityContext--seccompProfile"><a href="./values.yaml#L1077">minio.securityContext.seccompProfile</a></td>
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
			<td id="minio--securityContext--seccompProfile--type"><a href="./values.yaml#L1079">minio.securityContext.seccompProfile.type</a></td>
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
			<td id="minio--service"><a href="./values.yaml#L1081">minio.service</a></td>
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
			<td id="minio--service--nodePort"><a href="./values.yaml#L1083">minio.service.nodePort</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
30080
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--service--port"><a href="./values.yaml#L1085">minio.service.port</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
9000
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="minio--service--type"><a href="./values.yaml#L1087">minio.service.type</a></td>
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
			<td id="minio--users"><a href="./values.yaml#L1089">minio.users</a></td>
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
    "accessKey": "digitalhub",
    "policy": "readwritedigitalhub",
    "secretKey": "digitalhub"
  },
  {
    "accessKey": "argo",
    "policy": "readwriteargo",
    "secretKey": "argo1234"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="mysql-operator"><a href="./values.yaml#L1117">mysql-operator</a></td>
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
			<td id="mysql-operator--enabled"><a href="./values.yaml#L1119">mysql-operator.enabled</a></td>
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
			<td id="nakamasato-mysql-operator"><a href="./values.yaml#L1122">nakamasato-mysql-operator</a></td>
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
			<td id="nakamasato-mysql-operator--enabled"><a href="./values.yaml#L1124">nakamasato-mysql-operator.enabled</a></td>
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
			<td id="open-webui"><a href="./values.yaml#L1127">open-webui</a></td>
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
  "extraEnvVars": [
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
      "name": "ENABLE_EVALUATION_ARENA_MODELS",
      "value": "False"
    },
    {
      "name": "DEFAULT_USER_ROLE",
      "value": "user"
    },
    {
      "name": "ENABLE_API_KEY",
      "value": "False"
    }
  ],
  "initialize": {
    "admin": {
      "existingSecret": {
        "name": "",
        "passwordKey": "",
        "usernameKey": ""
      },
      "password": "Test12456@!",
      "username": "test@test.local"
    },
    "enabled": true,
    "image": "smartcommunitylab/k8s-ansible-clusterctl:1.32.5-1.10.1"
  },
  "ollama": {
    "enabled": false
  },
  "openaiBaseApiUrl": "http://kubeai/openai/v1",
  "pipelines": {
    "enabled": false
  },
  "service": {
    "nodePort": "30160",
    "type": "NodePort"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--enabled"><a href="./values.yaml#L1129">open-webui.enabled</a></td>
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
			<td id="open-webui--extraEnvVars"><a href="./values.yaml#L1131">open-webui.extraEnvVars</a></td>
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
    "name": "ENABLE_EVALUATION_ARENA_MODELS",
    "value": "False"
  },
  {
    "name": "DEFAULT_USER_ROLE",
    "value": "user"
  },
  {
    "name": "ENABLE_API_KEY",
    "value": "False"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--initialize"><a href="./values.yaml#L1145">open-webui.initialize</a></td>
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
  "admin": {
    "existingSecret": {
      "name": "",
      "passwordKey": "",
      "usernameKey": ""
    },
    "password": "Test12456@!",
    "username": "test@test.local"
  },
  "enabled": true,
  "image": "smartcommunitylab/k8s-ansible-clusterctl:1.32.5-1.10.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--initialize--admin"><a href="./values.yaml#L1147">open-webui.initialize.admin</a></td>
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
  "password": "Test12456@!",
  "username": "test@test.local"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--initialize--admin--existingSecret"><a href="./values.yaml#L1149">open-webui.initialize.admin.existingSecret</a></td>
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
			<td id="open-webui--initialize--admin--existingSecret--name"><a href="./values.yaml#L1151">open-webui.initialize.admin.existingSecret.name</a></td>
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
			<td id="open-webui--initialize--admin--existingSecret--passwordKey"><a href="./values.yaml#L1153">open-webui.initialize.admin.existingSecret.passwordKey</a></td>
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
			<td id="open-webui--initialize--admin--existingSecret--usernameKey"><a href="./values.yaml#L1155">open-webui.initialize.admin.existingSecret.usernameKey</a></td>
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
			<td id="open-webui--initialize--admin--password"><a href="./values.yaml#L1157">open-webui.initialize.admin.password</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"Test12456@!"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--initialize--admin--username"><a href="./values.yaml#L1159">open-webui.initialize.admin.username</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"test@test.local"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--initialize--enabled"><a href="./values.yaml#L1161">open-webui.initialize.enabled</a></td>
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
			<td id="open-webui--initialize--image"><a href="./values.yaml#L1163">open-webui.initialize.image</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"smartcommunitylab/k8s-ansible-clusterctl:1.32.5-1.10.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--ollama"><a href="./values.yaml#L1165">open-webui.ollama</a></td>
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
			<td id="open-webui--ollama--enabled"><a href="./values.yaml#L1167">open-webui.ollama.enabled</a></td>
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
			<td id="open-webui--openaiBaseApiUrl"><a href="./values.yaml#L1169">open-webui.openaiBaseApiUrl</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"http://kubeai/openai/v1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--pipelines"><a href="./values.yaml#L1171">open-webui.pipelines</a></td>
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
			<td id="open-webui--pipelines--enabled"><a href="./values.yaml#L1173">open-webui.pipelines.enabled</a></td>
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
			<td id="open-webui--service"><a href="./values.yaml#L1175">open-webui.service</a></td>
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
  "type": "NodePort"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="open-webui--service--nodePort"><a href="./values.yaml#L1177">open-webui.service.nodePort</a></td>
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
			<td id="open-webui--service--type"><a href="./values.yaml#L1179">open-webui.service.type</a></td>
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
			<td id="platformPackages"><a href="./values.yaml#L1182">platformPackages</a></td>
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
  "deleteOnCompletion": true,
  "image": "",
  "packages": [
    {
      "name": "digitalhub[full]",
      "tag": "0.11.0"
    },
    {
      "name": "digitalhub-runtime-python",
      "tag": "0.11.0"
    },
    {
      "name": "digitalhub-runtime-container",
      "tag": "0.11.0"
    },
    {
      "name": "digitalhub-runtime-dbt",
      "tag": "0.11.0"
    },
    {
      "name": "digitalhub-runtime-kfp",
      "tag": "0.11.0"
    },
    {
      "name": "digitalhub-runtime-modelserve",
      "tag": "0.11.0"
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
			<td id="platformPackages--deleteOnCompletion"><a href="./values.yaml#L1184">platformPackages.deleteOnCompletion</a></td>
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
			<td id="platformPackages--image"><a href="./values.yaml#L1186">platformPackages.image</a></td>
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
			<td id="platformPackages--packages"><a href="./values.yaml#L1188">platformPackages.packages</a></td>
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
    "name": "digitalhub[full]",
    "tag": "0.11.0"
  },
  {
    "name": "digitalhub-runtime-python",
    "tag": "0.11.0"
  },
  {
    "name": "digitalhub-runtime-container",
    "tag": "0.11.0"
  },
  {
    "name": "digitalhub-runtime-dbt",
    "tag": "0.11.0"
  },
  {
    "name": "digitalhub-runtime-kfp",
    "tag": "0.11.0"
  },
  {
    "name": "digitalhub-runtime-modelserve",
    "tag": "0.11.0"
  }
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="platformPackages--preRelease"><a href="./values.yaml#L1202">platformPackages.preRelease</a></td>
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
			<td id="platformPackages--tag"><a href="./values.yaml#L1204">platformPackages.tag</a></td>
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
			<td id="postgres-operator"><a href="./values.yaml#L1207">postgres-operator</a></td>
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
			<td id="postgres-operator--databases"><a href="./values.yaml#L1209">postgres-operator.databases</a></td>
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
			<td id="postgres-operator--databases--coder"><a href="./values.yaml#L1211">postgres-operator.databases.coder</a></td>
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
			<td id="postgres-operator--databases--coder--enabled"><a href="./values.yaml#L1213">postgres-operator.databases.coder.enabled</a></td>
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
			<td id="postgres-operator--databases--coder--resources"><a href="./values.yaml#L1215">postgres-operator.databases.coder.resources</a></td>
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
			<td id="postgres-operator--databases--coder--resources--limits"><a href="./values.yaml#L1217">postgres-operator.databases.coder.resources.limits</a></td>
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
  "cpu": "2",
  "memory": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--limits--cpu"><a href="./values.yaml#L1219">postgres-operator.databases.coder.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--limits--memory"><a href="./values.yaml#L1221">postgres-operator.databases.coder.resources.limits.memory</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--requests"><a href="./values.yaml#L1223">postgres-operator.databases.coder.resources.requests</a></td>
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
  "cpu": "512m",
  "memory": "1000Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--requests--cpu"><a href="./values.yaml#L1225">postgres-operator.databases.coder.resources.requests.cpu</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"512m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--resources--requests--memory"><a href="./values.yaml#L1227">postgres-operator.databases.coder.resources.requests.memory</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1000Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--volume"><a href="./values.yaml#L1229">postgres-operator.databases.coder.volume</a></td>
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
  "size": "8Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--coder--volume--size"><a href="./values.yaml#L1231">postgres-operator.databases.coder.volume.size</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core"><a href="./values.yaml#L1233">postgres-operator.databases.core</a></td>
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
			<td id="postgres-operator--databases--core--enabled"><a href="./values.yaml#L1235">postgres-operator.databases.core.enabled</a></td>
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
			<td id="postgres-operator--databases--core--resources"><a href="./values.yaml#L1237">postgres-operator.databases.core.resources</a></td>
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
			<td id="postgres-operator--databases--core--resources--limits"><a href="./values.yaml#L1239">postgres-operator.databases.core.resources.limits</a></td>
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
  "cpu": "2",
  "memory": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--limits--cpu"><a href="./values.yaml#L1241">postgres-operator.databases.core.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--limits--memory"><a href="./values.yaml#L1243">postgres-operator.databases.core.resources.limits.memory</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--requests"><a href="./values.yaml#L1245">postgres-operator.databases.core.resources.requests</a></td>
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
  "cpu": "512m",
  "memory": "1000Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--requests--cpu"><a href="./values.yaml#L1247">postgres-operator.databases.core.resources.requests.cpu</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"512m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--resources--requests--memory"><a href="./values.yaml#L1249">postgres-operator.databases.core.resources.requests.memory</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1000Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--volume"><a href="./values.yaml#L1251">postgres-operator.databases.core.volume</a></td>
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
  "size": "8Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--core--volume--size"><a href="./values.yaml#L1253">postgres-operator.databases.core.volume.size</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub"><a href="./values.yaml#L1255">postgres-operator.databases.digitalhub</a></td>
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
			<td id="postgres-operator--databases--digitalhub--enabled"><a href="./values.yaml#L1257">postgres-operator.databases.digitalhub.enabled</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources"><a href="./values.yaml#L1259">postgres-operator.databases.digitalhub.resources</a></td>
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
			<td id="postgres-operator--databases--digitalhub--resources--limits"><a href="./values.yaml#L1261">postgres-operator.databases.digitalhub.resources.limits</a></td>
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
  "cpu": "2",
  "memory": "2Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--limits--cpu"><a href="./values.yaml#L1263">postgres-operator.databases.digitalhub.resources.limits.cpu</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--limits--memory"><a href="./values.yaml#L1265">postgres-operator.databases.digitalhub.resources.limits.memory</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"2Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--requests"><a href="./values.yaml#L1267">postgres-operator.databases.digitalhub.resources.requests</a></td>
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
  "cpu": "512m",
  "memory": "1000Mi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--requests--cpu"><a href="./values.yaml#L1269">postgres-operator.databases.digitalhub.resources.requests.cpu</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"512m"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--resources--requests--memory"><a href="./values.yaml#L1271">postgres-operator.databases.digitalhub.resources.requests.memory</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"1000Mi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--volume"><a href="./values.yaml#L1273">postgres-operator.databases.digitalhub.volume</a></td>
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
  "size": "8Gi"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--databases--digitalhub--volume--size"><a href="./values.yaml#L1275">postgres-operator.databases.digitalhub.volume.size</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"8Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres-operator--enabled"><a href="./values.yaml#L1277">postgres-operator.enabled</a></td>
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
			<td id="postgres-operator--securityContext"><a href="./values.yaml#L1279">postgres-operator.securityContext</a></td>
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
			<td id="postgres-operator--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1281">postgres-operator.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="postgres-operator--securityContext--capabilities"><a href="./values.yaml#L1283">postgres-operator.securityContext.capabilities</a></td>
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
			<td id="postgres-operator--securityContext--capabilities--drop"><a href="./values.yaml#L1285">postgres-operator.securityContext.capabilities.drop</a></td>
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
			<td id="postgres-operator--securityContext--runAsNonRoot"><a href="./values.yaml#L1288">postgres-operator.securityContext.runAsNonRoot</a></td>
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
			<td id="postgres-operator--securityContext--seccompProfile"><a href="./values.yaml#L1290">postgres-operator.securityContext.seccompProfile</a></td>
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
			<td id="postgres-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L1292">postgres-operator.securityContext.seccompProfile.type</a></td>
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
			<td id="postgrest-operator"><a href="./values.yaml#L1295">postgrest-operator</a></td>
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
			<td id="postgrest-operator--enabled"><a href="./values.yaml#L1297">postgrest-operator.enabled</a></td>
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
			<td id="postgrest-operator--postgres"><a href="./values.yaml#L1299">postgrest-operator.postgres</a></td>
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
			<td id="postgrest-operator--postgres--default_database"><a href="./values.yaml#L1301">postgrest-operator.postgres.default_database</a></td>
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
			<td id="postgrest-operator--postgres--host"><a href="./values.yaml#L1303">postgrest-operator.postgres.host</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"database-postgres-cluster"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres--port"><a href="./values.yaml#L1305">postgrest-operator.postgres.port</a></td>
			<td>
int
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
5432
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgres--postgrest_service_type"><a href="./values.yaml#L1307">postgrest-operator.postgres.postgrest_service_type</a></td>
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
			<td id="postgrest-operator--postgres--uri_args"><a href="./values.yaml#L1309">postgrest-operator.postgres.uri_args</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"sslmode=disable"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets"><a href="./values.yaml#L1311">postgrest-operator.postgresCredsExistingSecrets</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets--password"><a href="./values.yaml#L1313">postgrest-operator.postgresCredsExistingSecrets.password</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets--password--secretKey"><a href="./values.yaml#L1315">postgrest-operator.postgresCredsExistingSecrets.password.secretKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--password--secretName"><a href="./values.yaml#L1317">postgrest-operator.postgresCredsExistingSecrets.password.secretName</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--username"><a href="./values.yaml#L1319">postgrest-operator.postgresCredsExistingSecrets.username</a></td>
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
			<td id="postgrest-operator--postgresCredsExistingSecrets--username--secretKey"><a href="./values.yaml#L1321">postgrest-operator.postgresCredsExistingSecrets.username.secretKey</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrest-operator--postgresCredsExistingSecrets--username--secretName"><a href="./values.yaml#L1323">postgrest-operator.postgresCredsExistingSecrets.username.secretName</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-owner-user.database-postgres-cluster.credentials.postgresql.acid.zalan.do"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="securityContext"><a href="./values.yaml#L1326">securityContext</a></td>
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
			<td id="securityContext--enabled"><a href="./values.yaml#L1328">securityContext.enabled</a></td>
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
			<td id="securityContext--runAsNonRoot"><a href="./values.yaml#L1330">securityContext.runAsNonRoot</a></td>
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
			<td id="securityContext--seccompProfile"><a href="./values.yaml#L1332">securityContext.seccompProfile</a></td>
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
			<td id="securityContext--seccompProfile--type"><a href="./values.yaml#L1334">securityContext.seccompProfile.type</a></td>
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
			<td id="solr"><a href="./values.yaml#L1337">solr</a></td>
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
  },
  "useExistingSecurityJson": false
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr-operator"><a href="./values.yaml#L1437">solr-operator</a></td>
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
			<td id="solr-operator--enabled"><a href="./values.yaml#L1439">solr-operator.enabled</a></td>
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
			<td id="solr-operator--securityContext"><a href="./values.yaml#L1441">solr-operator.securityContext</a></td>
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
			<td id="solr-operator--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1443">solr-operator.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="solr-operator--securityContext--capabilities"><a href="./values.yaml#L1445">solr-operator.securityContext.capabilities</a></td>
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
			<td id="solr-operator--securityContext--capabilities--drop"><a href="./values.yaml#L1447">solr-operator.securityContext.capabilities.drop</a></td>
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
			<td id="solr-operator--securityContext--runAsNonRoot"><a href="./values.yaml#L1450">solr-operator.securityContext.runAsNonRoot</a></td>
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
			<td id="solr-operator--securityContext--seccompProfile"><a href="./values.yaml#L1452">solr-operator.securityContext.seccompProfile</a></td>
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
			<td id="solr-operator--securityContext--seccompProfile--type"><a href="./values.yaml#L1454">solr-operator.securityContext.seccompProfile.type</a></td>
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
			<td id="solr-operator--zookeeper-operator"><a href="./values.yaml#L1456">solr-operator.zookeeper-operator</a></td>
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
			<td id="solr-operator--zookeeper-operator--crd"><a href="./values.yaml#L1458">solr-operator.zookeeper-operator.crd</a></td>
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
			<td id="solr-operator--zookeeper-operator--crd--create"><a href="./values.yaml#L1460">solr-operator.zookeeper-operator.crd.create</a></td>
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
			<td id="solr--creds"><a href="./values.yaml#L1339">solr.creds</a></td>
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
			<td id="solr--creds--admin"><a href="./values.yaml#L1341">solr.creds.admin</a></td>
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
  "password": "thi4iegheeX7euthe7di",
  "passwordSha": "C8QrTZf6jpu+cPKTsLtyEhv1XVXAYZGmStTKXzB80sg= MW5pNXZlaGIyaWhkdW5w"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--admin--password"><a href="./values.yaml#L1343">solr.creds.admin.password</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"thi4iegheeX7euthe7di"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--admin--passwordSha"><a href="./values.yaml#L1345">solr.creds.admin.passwordSha</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"C8QrTZf6jpu+cPKTsLtyEhv1XVXAYZGmStTKXzB80sg= MW5pNXZlaGIyaWhkdW5w"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--k8sOper"><a href="./values.yaml#L1347">solr.creds.k8sOper</a></td>
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
  "password": "imPBf@tU(asx9%TZ",
  "passwordSha": "3iPc1JWet22a05UZXCFfo/qRUqwg2iVULyv5RBEqPdM= LSpnG/l2j8AA9vrryMGkkFLO+bYeN7ZUvrU270WAfyA="
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--k8sOper--password"><a href="./values.yaml#L1349">solr.creds.k8sOper.password</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"imPBf@tU(asx9%TZ"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--k8sOper--passwordSha"><a href="./values.yaml#L1351">solr.creds.k8sOper.passwordSha</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"3iPc1JWet22a05UZXCFfo/qRUqwg2iVULyv5RBEqPdM= LSpnG/l2j8AA9vrryMGkkFLO+bYeN7ZUvrU270WAfyA="
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--solr"><a href="./values.yaml#L1353">solr.creds.solr</a></td>
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
  "password": "aed0ohBie3hai6jo7sho",
  "passwordSha": "i61TpZKyvff3CHnyZ0kMTzkNezkxkilCre93wLkz7jQ= NzlyN3k1cm0xZGt3eWR1MA=="
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--solr--password"><a href="./values.yaml#L1355">solr.creds.solr.password</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"aed0ohBie3hai6jo7sho"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--solr--passwordSha"><a href="./values.yaml#L1357">solr.creds.solr.passwordSha</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"i61TpZKyvff3CHnyZ0kMTzkNezkxkilCre93wLkz7jQ= NzlyN3k1cm0xZGt3eWR1MA=="
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--user"><a href="./values.yaml#L1359">solr.creds.user</a></td>
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
  "password": "soogh8aiy6vah6Aecai6",
  "passwordSha": "ps9jK0qKXJqZawtFS+SxhB2CdCu90Qgz4riZ0XwzYd4= YWxxZXV3enB1YmE2c2gwdg=="
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--user--password"><a href="./values.yaml#L1361">solr.creds.user.password</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"soogh8aiy6vah6Aecai6"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--creds--user--passwordSha"><a href="./values.yaml#L1363">solr.creds.user.passwordSha</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ps9jK0qKXJqZawtFS+SxhB2CdCu90Qgz4riZ0XwzYd4= YWxxZXV3enB1YmE2c2gwdg=="
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage"><a href="./values.yaml#L1365">solr.dataStorage</a></td>
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
			<td id="solr--dataStorage--capacity"><a href="./values.yaml#L1367">solr.dataStorage.capacity</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"10Gi"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage--persistent"><a href="./values.yaml#L1369">solr.dataStorage.persistent</a></td>
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
			<td id="solr--dataStorage--persistent--pvc"><a href="./values.yaml#L1371">solr.dataStorage.persistent.pvc</a></td>
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
			<td id="solr--dataStorage--persistent--pvc--annotations"><a href="./values.yaml#L1373">solr.dataStorage.persistent.pvc.annotations</a></td>
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
			<td id="solr--dataStorage--persistent--pvc--labels"><a href="./values.yaml#L1375">solr.dataStorage.persistent.pvc.labels</a></td>
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
			<td id="solr--dataStorage--persistent--pvc--name"><a href="./values.yaml#L1377">solr.dataStorage.persistent.pvc.name</a></td>
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
			<td id="solr--dataStorage--persistent--pvc--storageClassName"><a href="./values.yaml#L1379">solr.dataStorage.persistent.pvc.storageClassName</a></td>
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
			<td id="solr--dataStorage--persistent--reclaimPolicy"><a href="./values.yaml#L1381">solr.dataStorage.persistent.reclaimPolicy</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"Delete"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--dataStorage--type"><a href="./values.yaml#L1383">solr.dataStorage.type</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ephemeral"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--enabled"><a href="./values.yaml#L1385">solr.enabled</a></td>
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
			<td id="solr--fullnameOverride"><a href="./values.yaml#L1387">solr.fullnameOverride</a></td>
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
			<td id="solr--image"><a href="./values.yaml#L1389">solr.image</a></td>
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
			<td id="solr--image--repository"><a href="./values.yaml#L1391">solr.image.repository</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"solr"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--image--tag"><a href="./values.yaml#L1393">solr.image.tag</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"9.7"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--podOptions"><a href="./values.yaml#L1395">solr.podOptions</a></td>
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
			<td id="solr--podOptions--containerSecurityContext"><a href="./values.yaml#L1397">solr.podOptions.containerSecurityContext</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1399">solr.podOptions.containerSecurityContext.allowPrivilegeEscalation</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--capabilities"><a href="./values.yaml#L1401">solr.podOptions.containerSecurityContext.capabilities</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--capabilities--drop"><a href="./values.yaml#L1403">solr.podOptions.containerSecurityContext.capabilities.drop</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--seccompProfile"><a href="./values.yaml#L1406">solr.podOptions.containerSecurityContext.seccompProfile</a></td>
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
			<td id="solr--podOptions--containerSecurityContext--seccompProfile--type"><a href="./values.yaml#L1408">solr.podOptions.containerSecurityContext.seccompProfile.type</a></td>
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
			<td id="solr--podOptions--podSecurityContext"><a href="./values.yaml#L1410">solr.podOptions.podSecurityContext</a></td>
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
			<td id="solr--podOptions--podSecurityContext--seccompProfile"><a href="./values.yaml#L1412">solr.podOptions.podSecurityContext.seccompProfile</a></td>
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
			<td id="solr--podOptions--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L1414">solr.podOptions.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="solr--replicas"><a href="./values.yaml#L1416">solr.replicas</a></td>
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
			<td id="solr--solrOptions"><a href="./values.yaml#L1418">solr.solrOptions</a></td>
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
			<td id="solr--solrOptions--security"><a href="./values.yaml#L1420">solr.solrOptions.security</a></td>
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
			<td id="solr--solrOptions--security--authenticationType"><a href="./values.yaml#L1422">solr.solrOptions.security.authenticationType</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"Basic"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--basicAuthSecret"><a href="./values.yaml#L1424">solr.solrOptions.security.basicAuthSecret</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-solrcloud-basic-auth"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--bootstrapSecurityJson"><a href="./values.yaml#L1426">solr.solrOptions.security.bootstrapSecurityJson</a></td>
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
			<td id="solr--solrOptions--security--bootstrapSecurityJson--key"><a href="./values.yaml#L1428">solr.solrOptions.security.bootstrapSecurityJson.key</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"security.json"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--bootstrapSecurityJson--name"><a href="./values.yaml#L1430">solr.solrOptions.security.bootstrapSecurityJson.name</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"digitalhub-solrcloud-security-bootstrap"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="solr--solrOptions--security--probesRequireAuth"><a href="./values.yaml#L1432">solr.solrOptions.security.probesRequireAuth</a></td>
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
			<td id="solr--useExistingSecurityJson"><a href="./values.yaml#L1434">solr.useExistingSecurityJson</a></td>
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
			<td id="template-controller"><a href="./values.yaml#L1463">template-controller</a></td>
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
			<td id="template-controller--enabled"><a href="./values.yaml#L1465">template-controller.enabled</a></td>
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
			<td id="template-controller--objectTemplate"><a href="./values.yaml#L1467">template-controller.objectTemplate</a></td>
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
			<td id="template-controller--objectTemplate--enabled"><a href="./values.yaml#L1469">template-controller.objectTemplate.enabled</a></td>
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
			<td id="template-controller--podSecurityContext"><a href="./values.yaml#L1471">template-controller.podSecurityContext</a></td>
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
			<td id="template-controller--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L1473">template-controller.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="template-controller--podSecurityContext--seccompProfile"><a href="./values.yaml#L1475">template-controller.podSecurityContext.seccompProfile</a></td>
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
			<td id="template-controller--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L1477">template-controller.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="template-controller--securityContext"><a href="./values.yaml#L1479">template-controller.securityContext</a></td>
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
			<td id="template-controller--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L1481">template-controller.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="template-controller--securityContext--capabilities"><a href="./values.yaml#L1483">template-controller.securityContext.capabilities</a></td>
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
			<td id="template-controller--securityContext--capabilities--drop"><a href="./values.yaml#L1485">template-controller.securityContext.capabilities.drop</a></td>
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
			<td id="template-controller--securityContext--runAsNonRoot"><a href="./values.yaml#L1488">template-controller.securityContext.runAsNonRoot</a></td>
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
			<td id="template-controller--securityContext--seccompProfile"><a href="./values.yaml#L1490">template-controller.securityContext.seccompProfile</a></td>
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
			<td id="template-controller--securityContext--seccompProfile--type"><a href="./values.yaml#L1492">template-controller.securityContext.seccompProfile.type</a></td>
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
	</tbody>
</table>

