<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# postgrest-operator

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/postgrest-operator/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=postgrest-operator*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.1.9](https://img.shields.io/badge/Version-0.1.9-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.0.5](https://img.shields.io/badge/AppVersion-2.0.5-informational?style=flat-square)

A Kubernetes operator to start instances of PostgREST.

postgrest-operator is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities. To bootstrap the platform in its entirety please explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

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
5. Install postgrest-operator with Helm:
```sh
    helm upgrade postgrest-operator digitalhub/postgrest-operator -n postgrest-operator --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace postgrest-operator get pods
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
			<td id="affinity"><a href="./values.yaml#L7">affinity</a></td>
			<td>
object
</td>
			<td>Affinity for pod assignment. # Ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#affinity-and-anti-affinity</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "nodeAffinity": {
    "requiredDuringSchedulingIgnoredDuringExecution": {
      "nodeSelectorTerms": [
        {
          "matchExpressions": [
            {
              "key": "kubernetes.io/arch",
              "operator": "In",
              "values": [
                "amd64"
              ]
            },
            {
              "key": "kubernetes.io/os",
              "operator": "In",
              "values": [
                "linux"
              ]
            }
          ]
        }
      ]
    }
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="affinity--nodeAffinity"><a href="./values.yaml#L9">affinity.nodeAffinity</a></td>
			<td>
object
</td>
			<td>Constrain which nodes your Pod can be scheduled on based on node labels.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "requiredDuringSchedulingIgnoredDuringExecution": {
    "nodeSelectorTerms": [
      {
        "matchExpressions": [
          {
            "key": "kubernetes.io/arch",
            "operator": "In",
            "values": [
              "amd64"
            ]
          },
          {
            "key": "kubernetes.io/os",
            "operator": "In",
            "values": [
              "linux"
            ]
          }
        ]
      }
    ]
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="affinity--nodeAffinity--requiredDuringSchedulingIgnoredDuringExecution"><a href="./values.yaml#L11">affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution</a></td>
			<td>
object
</td>
			<td>The scheduler can't schedule the Pod unless the rule is met. This functions like nodeSelector, but with a more expressive syntax.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "nodeSelectorTerms": [
    {
      "matchExpressions": [
        {
          "key": "kubernetes.io/arch",
          "operator": "In",
          "values": [
            "amd64"
          ]
        },
        {
          "key": "kubernetes.io/os",
          "operator": "In",
          "values": [
            "linux"
          ]
        }
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
			<td id="affinity--nodeAffinity--requiredDuringSchedulingIgnoredDuringExecution--nodeSelectorTerms"><a href="./values.yaml#L13">affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms</a></td>
			<td>
list
</td>
			<td>Kubernetes only schedules the Pod onto nodes that have each of the labels you specify.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  {
    "matchExpressions": [
      {
        "key": "kubernetes.io/arch",
        "operator": "In",
        "values": [
          "amd64"
        ]
      },
      {
        "key": "kubernetes.io/os",
        "operator": "In",
        "values": [
          "linux"
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
			<td id="autoscaling"><a href="./values.yaml#L25">autoscaling</a></td>
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
			<td id="autoscaling--enabled"><a href="./values.yaml#L27">autoscaling.enabled</a></td>
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
			<td id="autoscaling--maxReplicas"><a href="./values.yaml#L29">autoscaling.maxReplicas</a></td>
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
			<td id="autoscaling--minReplicas"><a href="./values.yaml#L31">autoscaling.minReplicas</a></td>
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
			<td id="autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L33">autoscaling.targetCPUUtilizationPercentage</a></td>
			<td>
int
</td>
			<td>Set CPU utilization percentage that trigger the autoscaling </td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
80
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment"><a href="./values.yaml#L36">deployment</a></td>
			<td>
object
</td>
			<td>Set containers properties</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "image": {
    "pullPolicy": "IfNotPresent"
  },
  "kubeRbacProxy": {
    "args": [
      "--secure-listen-address=0.0.0.0:8443",
      "--upstream=http://127.0.0.1:8080/",
      "--logtostderr=true",
      "--v=0"
    ],
    "image": {
      "repository": "gcr.io/kubebuilder/kube-rbac-proxy",
      "tag": "v0.13.1"
    },
    "name": "kube-rbac-proxy",
    "ports": {
      "containerPort": 8443
    },
    "resources": {
      "limits": {
        "cpu": "500m",
        "memory": "128Mi"
      },
      "requests": {
        "cpu": "5m",
        "memory": "64Mi"
      }
    },
    "securityContext": {
      "allowPrivilegeEscalation": false,
      "capabilities": {
        "drop": [
          "ALL"
        ]
      },
      "readOnlyRootFilesystem": true,
      "runAsNonRoot": true,
      "seccompProfile": {
        "type": "RuntimeDefault"
      }
    }
  },
  "manager": {
    "args": [
      "--health-probe-bind-address=:8081",
      "--metrics-bind-address=127.0.0.1:8080",
      "--leader-elect"
    ],
    "command": [
      "/manager"
    ],
    "image": {
      "repository": "ghcr.io/scc-digitalhub/postgrest-operator",
      "tag": ""
    },
    "name": "manager",
    "resources": {
      "limits": {
        "cpu": "500m",
        "memory": "512Mi"
      },
      "requests": {
        "cpu": "10m",
        "memory": "64Mi"
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
  "podSecurityContext": {
    "runAsNonRoot": true,
    "seccompProfile": {
      "type": "RuntimeDefault"
    }
  },
  "replicaCount": 1
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--image"><a href="./values.yaml#L38">deployment.image</a></td>
			<td>
object
</td>
			<td>Pod image configuration</td>
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
			<td id="deployment--image--pullPolicy"><a href="./values.yaml#L40">deployment.image.pullPolicy</a></td>
			<td>
string
</td>
			<td>Pod image pullPolicy applied to all containers</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"IfNotPresent"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy"><a href="./values.yaml#L42">deployment.kubeRbacProxy</a></td>
			<td>
object
</td>
			<td>DEPRECATED Kube-rbac-proxy secures /metrics endpoint as a manager sidecar, using the service account token mounted into the Pod by default corrects this problem.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "args": [
    "--secure-listen-address=0.0.0.0:8443",
    "--upstream=http://127.0.0.1:8080/",
    "--logtostderr=true",
    "--v=0"
  ],
  "image": {
    "repository": "gcr.io/kubebuilder/kube-rbac-proxy",
    "tag": "v0.13.1"
  },
  "name": "kube-rbac-proxy",
  "ports": {
    "containerPort": 8443
  },
  "resources": {
    "limits": {
      "cpu": "500m",
      "memory": "128Mi"
    },
    "requests": {
      "cpu": "5m",
      "memory": "64Mi"
    }
  },
  "securityContext": {
    "allowPrivilegeEscalation": false,
    "capabilities": {
      "drop": [
        "ALL"
      ]
    },
    "readOnlyRootFilesystem": true,
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
			<td id="deployment--kubeRbacProxy--args"><a href="./values.yaml#L44">deployment.kubeRbacProxy.args</a></td>
			<td>
list
</td>
			<td>DEPRECATED kube-rbac-proxy configure additional arguments to pass to kube-rbac-proxy sidecar container.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  "--secure-listen-address=0.0.0.0:8443",
  "--upstream=http://127.0.0.1:8080/",
  "--logtostderr=true",
  "--v=0"
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--image"><a href="./values.yaml#L50">deployment.kubeRbacProxy.image</a></td>
			<td>
object
</td>
			<td>DEPRECATED kube-rbac-proxy container image configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "repository": "gcr.io/kubebuilder/kube-rbac-proxy",
  "tag": "v0.13.1"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--image--repository"><a href="./values.yaml#L52">deployment.kubeRbacProxy.image.repository</a></td>
			<td>
string
</td>
			<td>DEPRECATED kube-rbac-proxy container image repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"gcr.io/kubebuilder/kube-rbac-proxy"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--image--tag"><a href="./values.yaml#L54">deployment.kubeRbacProxy.image.tag</a></td>
			<td>
string
</td>
			<td>DEPRECATED kube-rbac-proxy container image tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"v0.13.1"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--name"><a href="./values.yaml#L56">deployment.kubeRbacProxy.name</a></td>
			<td>
string
</td>
			<td>DEPRECATED kube-rbac-proxy container name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"kube-rbac-proxy"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--ports"><a href="./values.yaml#L58">deployment.kubeRbacProxy.ports</a></td>
			<td>
object
</td>
			<td>DEPRECATED kube-rbac-proxy container port.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "containerPort": 8443
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--ports--containerPort"><a href="./values.yaml#L60">deployment.kubeRbacProxy.ports.containerPort</a></td>
			<td>
int
</td>
			<td>DEPRECATED kube-rbac-proxy container port.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
8443
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--resources"><a href="./values.yaml#L62">deployment.kubeRbacProxy.resources</a></td>
			<td>
object
</td>
			<td>DEPRECATED kube-rbac-proxy container resource requests and limits.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": {
    "cpu": "500m",
    "memory": "128Mi"
  },
  "requests": {
    "cpu": "5m",
    "memory": "64Mi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--securityContext"><a href="./values.yaml#L70">deployment.kubeRbacProxy.securityContext</a></td>
			<td>
object
</td>
			<td>DEPRECATED kube-rbac-proxy [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="deployment--kubeRbacProxy--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L72">deployment.kubeRbacProxy.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>DEPRECATED kube-rbac-proxy container allow privilege escalation.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--securityContext--capabilities"><a href="./values.yaml#L74">deployment.kubeRbacProxy.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>DEPRECATED kube-rbac-proxy container configure capabilities.</td>
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
			<td id="deployment--kubeRbacProxy--securityContext--capabilities--drop"><a href="./values.yaml#L76">deployment.kubeRbacProxy.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>DEPRECATED kube-rbac-proxy container drop capabilities.</td>
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
			<td id="deployment--kubeRbacProxy--securityContext--readOnlyRootFilesystem"><a href="./values.yaml#L79">deployment.kubeRbacProxy.securityContext.readOnlyRootFilesystem</a></td>
			<td>
bool
</td>
			<td>DEPRECATED kube-rbac-proxy container read only filesystem</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--securityContext--runAsNonRoot"><a href="./values.yaml#L81">deployment.kubeRbacProxy.securityContext.runAsNonRoot</a></td>
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
			<td id="deployment--kubeRbacProxy--securityContext--seccompProfile"><a href="./values.yaml#L83">deployment.kubeRbacProxy.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>DEPRECATED kube-rbac-proxy container configure seccompProfile.</td>
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
			<td id="deployment--kubeRbacProxy--securityContext--seccompProfile--type"><a href="./values.yaml#L85">deployment.kubeRbacProxy.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>DEPRECATED kube-rbac-proxy container configure seccompProfile type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager"><a href="./values.yaml#L87">deployment.manager</a></td>
			<td>
object
</td>
			<td>Manager container is responsible to reconcile minio-operator CR.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "args": [
    "--health-probe-bind-address=:8081",
    "--metrics-bind-address=127.0.0.1:8080",
    "--leader-elect"
  ],
  "command": [
    "/manager"
  ],
  "image": {
    "repository": "ghcr.io/scc-digitalhub/postgrest-operator",
    "tag": ""
  },
  "name": "manager",
  "resources": {
    "limits": {
      "cpu": "500m",
      "memory": "512Mi"
    },
    "requests": {
      "cpu": "10m",
      "memory": "64Mi"
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
			<td id="deployment--manager--args"><a href="./values.yaml#L89">deployment.manager.args</a></td>
			<td>
list
</td>
			<td>Manager configure additional arguments</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  "--health-probe-bind-address=:8081",
  "--metrics-bind-address=127.0.0.1:8080",
  "--leader-elect"
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--command"><a href="./values.yaml#L94">deployment.manager.command</a></td>
			<td>
list
</td>
			<td>Ovveride image entrypoint</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
[
  "/manager"
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--image"><a href="./values.yaml#L97">deployment.manager.image</a></td>
			<td>
object
</td>
			<td>Manager container image configuration.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "repository": "ghcr.io/scc-digitalhub/postgrest-operator",
  "tag": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--image--repository"><a href="./values.yaml#L99">deployment.manager.image.repository</a></td>
			<td>
string
</td>
			<td>Manager container image repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/postgrest-operator"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--image--tag"><a href="./values.yaml#L101">deployment.manager.image.tag</a></td>
			<td>
string
</td>
			<td>Manager container image tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--name"><a href="./values.yaml#L103">deployment.manager.name</a></td>
			<td>
string
</td>
			<td>Manager container name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"manager"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--resources"><a href="./values.yaml#L105">deployment.manager.resources</a></td>
			<td>
object
</td>
			<td>Manager container resource requests and limits.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "limits": {
    "cpu": "500m",
    "memory": "512Mi"
  },
  "requests": {
    "cpu": "10m",
    "memory": "64Mi"
  }
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--securityContext"><a href="./values.yaml#L113">deployment.manager.securityContext</a></td>
			<td>
object
</td>
			<td>Manager [Security context for container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)</td>
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
			<td id="deployment--manager--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L115">deployment.manager.securityContext.allowPrivilegeEscalation</a></td>
			<td>
bool
</td>
			<td>Manager container allow privilege escalation</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
false
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--securityContext--capabilities"><a href="./values.yaml#L117">deployment.manager.securityContext.capabilities</a></td>
			<td>
object
</td>
			<td>Manager container configure capabilities.</td>
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
			<td id="deployment--manager--securityContext--capabilities--drop"><a href="./values.yaml#L119">deployment.manager.securityContext.capabilities.drop</a></td>
			<td>
list
</td>
			<td>Manager container drop capabilities.</td>
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
			<td id="deployment--manager--securityContext--runAsNonRoot"><a href="./values.yaml#L122">deployment.manager.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>Manager container allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--securityContext--seccompProfile"><a href="./values.yaml#L124">deployment.manager.securityContext.seccompProfile</a></td>
			<td>
object
</td>
			<td>Manager container configure seccompProfile.</td>
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
			<td id="deployment--manager--securityContext--seccompProfile--type"><a href="./values.yaml#L126">deployment.manager.securityContext.seccompProfile.type</a></td>
			<td>
string
</td>
			<td>Manager container configure seccompProfile.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"RuntimeDefault"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--podSecurityContext"><a href="./values.yaml#L128">deployment.podSecurityContext</a></td>
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
			<td id="deployment--podSecurityContext--runAsNonRoot"><a href="./values.yaml#L130">deployment.podSecurityContext.runAsNonRoot</a></td>
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
			<td id="deployment--podSecurityContext--seccompProfile"><a href="./values.yaml#L132">deployment.podSecurityContext.seccompProfile</a></td>
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
			<td id="deployment--podSecurityContext--seccompProfile--type"><a href="./values.yaml#L134">deployment.podSecurityContext.seccompProfile.type</a></td>
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
			<td id="deployment--replicaCount"><a href="./values.yaml#L136">deployment.replicaCount</a></td>
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
			<td id="fullnameOverride"><a href="./values.yaml#L139">fullnameOverride</a></td>
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
			<td id="imagePullSecrets"><a href="./values.yaml#L145">imagePullSecrets</a></td>
			<td>
list
</td>
			<td>Image pull secrets  Optionally specify an array of imagePullSecrets.  Secrets must be manually created in the namespace.  ref: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/</td>
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
			<td id="nameOverride"><a href="./values.yaml#L148">nameOverride</a></td>
			<td>
string
</td>
			<td>String to partially override `postgrest-operator.fullname` template (will maintain the release name)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="namespaceValues"><a href="./values.yaml#L151">namespaceValues</a></td>
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
			<td id="namespaceValues--namespace"><a href="./values.yaml#L153">namespaceValues.namespace</a></td>
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
			<td id="namespaceValues--namespaced"><a href="./values.yaml#L155">namespaceValues.namespaced</a></td>
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
			<td id="nodeSelector"><a href="./values.yaml#L158">nodeSelector</a></td>
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
			<td id="podAnnotations"><a href="./values.yaml#L161">podAnnotations</a></td>
			<td>
object
</td>
			<td>Annotations to add to each pod.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "kubectl.kubernetes.io/default-container": "manager"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="podLabels"><a href="./values.yaml#L165">podLabels</a></td>
			<td>
object
</td>
			<td>Labels to add to each pod.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "control-plane": "controller-manager"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres"><a href="./values.yaml#L169">postgres</a></td>
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
  "default_database": "postgres",
  "host": "localhost",
  "port": 5432,
  "postgrest_image": "postgrest/postgrest",
  "postgrest_image_tag": "v11.1.0",
  "postgrest_service_type": "ClusterIP",
  "uri_args": "sslmode=disable"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--default_database"><a href="./values.yaml#L171">postgres.default_database</a></td>
			<td>
string
</td>
			<td>Default postgres database name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"postgres"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--host"><a href="./values.yaml#L173">postgres.host</a></td>
			<td>
string
</td>
			<td>Postgres server host</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"localhost"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--port"><a href="./values.yaml#L175">postgres.port</a></td>
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
			<td id="postgres--postgrest_image"><a href="./values.yaml#L177">postgres.postgrest_image</a></td>
			<td>
string
</td>
			<td>Postgrest image url</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"postgrest/postgrest"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--postgrest_image_tag"><a href="./values.yaml#L179">postgres.postgrest_image_tag</a></td>
			<td>
string
</td>
			<td>Postgrest image tag</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"v11.1.0"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--postgrest_service_type"><a href="./values.yaml#L181">postgres.postgrest_service_type</a></td>
			<td>
string
</td>
			<td>Postgrest service type</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ClusterIP"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgres--uri_args"><a href="./values.yaml#L183">postgres.uri_args</a></td>
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
			<td id="postgresCreds"><a href="./values.yaml#L186">postgresCreds</a></td>
			<td>
object
</td>
			<td>Postgres root credentials</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "password": "password",
  "username": "username"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgresCreds--password"><a href="./values.yaml#L188">postgresCreds.password</a></td>
			<td>
string
</td>
			<td>Postgres root password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"password"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgresCreds--username"><a href="./values.yaml#L190">postgresCreds.username</a></td>
			<td>
string
</td>
			<td>Postgres root password</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"username"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgresCredsExistingSecrets"><a href="./values.yaml#L193">postgresCredsExistingSecrets</a></td>
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
			<td id="postgresCredsExistingSecrets--password--secretKey"><a href="./values.yaml#L196">postgresCredsExistingSecrets.password.secretKey</a></td>
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
			<td id="postgresCredsExistingSecrets--password--secretName"><a href="./values.yaml#L198">postgresCredsExistingSecrets.password.secretName</a></td>
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
			<td id="postgresCredsExistingSecrets--username--secretKey"><a href="./values.yaml#L201">postgresCredsExistingSecrets.username.secretKey</a></td>
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
			<td id="postgresCredsExistingSecrets--username--secretName"><a href="./values.yaml#L203">postgresCredsExistingSecrets.username.secretName</a></td>
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
			<td id="postgrestString"><a href="./values.yaml#L206">postgrestString</a></td>
			<td>
object
</td>
			<td>Use connection uri (postgres[ql]://[username[:password]@][host[:port],]/database[?parameter_list])</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "databaseUrlKey": "",
  "existingSecret": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrestString--databaseUrlKey"><a href="./values.yaml#L208">postgrestString.databaseUrlKey</a></td>
			<td>
string
</td>
			<td>URI secret key</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="postgrestString--existingSecret"><a href="./values.yaml#L210">postgrestString.existingSecret</a></td>
			<td>
string
</td>
			<td>URI secret name</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="service"><a href="./values.yaml#L213">service</a></td>
			<td>
object
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "port": 8443
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="service--port"><a href="./values.yaml#L215">service.port</a></td>
			<td>
int
</td>
			<td>Service port.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
8443
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount"><a href="./values.yaml#L218">serviceAccount</a></td>
			<td>
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
  "name": "postgrest-operator-controller-manager"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount--annotations"><a href="./values.yaml#L220">serviceAccount.annotations</a></td>
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
			<td id="serviceAccount--automount"><a href="./values.yaml#L222">serviceAccount.automount</a></td>
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
			<td id="serviceAccount--create"><a href="./values.yaml#L224">serviceAccount.create</a></td>
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
			<td id="serviceAccount--name"><a href="./values.yaml#L226">serviceAccount.name</a></td>
			<td>
string
</td>
			<td>Service account name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"postgrest-operator-controller-manager"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="tolerations"><a href="./values.yaml#L229">tolerations</a></td>
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
			<td id="volumeMounts"><a href="./values.yaml#L232">volumeMounts</a></td>
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
			<td id="volumes"><a href="./values.yaml#L235">volumes</a></td>
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
