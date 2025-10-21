<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: Apache-2.0
-->

# dremio-rest-server-operator

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-Apache%202.0-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/dremio-rest-server-operator/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=dremio-rest-server-operator*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.1.9](https://img.shields.io/badge/Version-0.1.9-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.3](https://img.shields.io/badge/AppVersion-1.0.3-informational?style=flat-square)

A Kubernetes operator to start instances of Dremio REST server.

dremio-rest-server-operator is part of the DigitalHub platform, and depends on external components to support the complete set of functionalities. To bootstrap the platform in its entirety please explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

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
5. Install dremio-rest-server-operator with Helm:
```sh
    helm upgrade dremio-rest-server-operator digitalhub/dremio-rest-server-operator -n dremio-rest-server-operator --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace dremio-rest-server-operator get pods
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
                "amd64",
                "arm64",
                "ppc64le",
                "s390x"
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
              "amd64",
              "arm64",
              "ppc64le",
              "s390x"
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
            "amd64",
            "arm64",
            "ppc64le",
            "s390x"
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
          "amd64",
          "arm64",
          "ppc64le",
          "s390x"
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
			<td id="autoscaling"><a href="./values.yaml#L28">autoscaling</a></td>
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
			<td id="autoscaling--enabled"><a href="./values.yaml#L30">autoscaling.enabled</a></td>
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
			<td id="autoscaling--maxReplicas"><a href="./values.yaml#L32">autoscaling.maxReplicas</a></td>
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
			<td id="autoscaling--minReplicas"><a href="./values.yaml#L34">autoscaling.minReplicas</a></td>
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
			<td id="autoscaling--targetCPUUtilizationPercentage"><a href="./values.yaml#L36">autoscaling.targetCPUUtilizationPercentage</a></td>
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
			<td id="conf"><a href="./values.yaml#L40">conf</a></td>
			<td>
object
</td>
			<td>Dremio Rest Server configuration</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "drsImage": "ghcr.io/scc-digitalhub/dremio-rest-server",
  "drsImageTag": "0.0.9",
  "drsServiceType": "ClusterIP"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="conf--drsImage"><a href="./values.yaml#L42">conf.drsImage</a></td>
			<td>
string
</td>
			<td>Dremio Rest Server container image repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/dremio-rest-server"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="conf--drsImageTag"><a href="./values.yaml#L44">conf.drsImageTag</a></td>
			<td>
string
</td>
			<td>Dremio Rest Server container image tag.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"0.0.9"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="conf--drsServiceType"><a href="./values.yaml#L46">conf.drsServiceType</a></td>
			<td>
string
</td>
			<td>Dremio Rest Server service type.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ClusterIP"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment"><a href="./values.yaml#L49">deployment</a></td>
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
  "image": {
    "pullPolicy": "IfNotPresent"
  },
  "kubeRbacProxy": {
    "args": [
      "--logtostderr=true",
      "--secure-listen-address=0.0.0.0:8443",
      "--upstream=http://127.0.0.1:8080/",
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
      "runAsNonRoot": true,
      "seccompProfile": {
        "type": "RuntimeDefault"
      }
    }
  },
  "manager": {
    "args": [
      "--health-probe-bind-address=:8081",
      "--leader-elect",
      "--metrics-bind-address=127.0.0.1:8080"
    ],
    "command": [
      "/manager"
    ],
    "image": {
      "repository": "ghcr.io/scc-digitalhub/dremio-rest-server-operator",
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
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--image"><a href="./values.yaml#L51">deployment.image</a></td>
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
			<td id="deployment--image--pullPolicy"><a href="./values.yaml#L53">deployment.image.pullPolicy</a></td>
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
			<td id="deployment--kubeRbacProxy"><a href="./values.yaml#L55">deployment.kubeRbacProxy</a></td>
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
    "--logtostderr=true",
    "--secure-listen-address=0.0.0.0:8443",
    "--upstream=http://127.0.0.1:8080/",
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
			<td id="deployment--kubeRbacProxy--args"><a href="./values.yaml#L57">deployment.kubeRbacProxy.args</a></td>
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
  "--logtostderr=true",
  "--secure-listen-address=0.0.0.0:8443",
  "--upstream=http://127.0.0.1:8080/",
  "--v=0"
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--image"><a href="./values.yaml#L63">deployment.kubeRbacProxy.image</a></td>
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
			<td id="deployment--kubeRbacProxy--image--repository"><a href="./values.yaml#L65">deployment.kubeRbacProxy.image.repository</a></td>
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
			<td id="deployment--kubeRbacProxy--image--tag"><a href="./values.yaml#L67">deployment.kubeRbacProxy.image.tag</a></td>
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
			<td id="deployment--kubeRbacProxy--name"><a href="./values.yaml#L69">deployment.kubeRbacProxy.name</a></td>
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
			<td id="deployment--kubeRbacProxy--ports"><a href="./values.yaml#L71">deployment.kubeRbacProxy.ports</a></td>
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
			<td id="deployment--kubeRbacProxy--ports--containerPort"><a href="./values.yaml#L73">deployment.kubeRbacProxy.ports.containerPort</a></td>
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
			<td id="deployment--kubeRbacProxy--resources"><a href="./values.yaml#L75">deployment.kubeRbacProxy.resources</a></td>
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
			<td id="deployment--kubeRbacProxy--securityContext"><a href="./values.yaml#L83">deployment.kubeRbacProxy.securityContext</a></td>
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
			<td id="deployment--kubeRbacProxy--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L85">deployment.kubeRbacProxy.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="deployment--kubeRbacProxy--securityContext--capabilities"><a href="./values.yaml#L87">deployment.kubeRbacProxy.securityContext.capabilities</a></td>
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
			<td id="deployment--kubeRbacProxy--securityContext--capabilities--drop"><a href="./values.yaml#L89">deployment.kubeRbacProxy.securityContext.capabilities.drop</a></td>
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
			<td id="deployment--kubeRbacProxy--securityContext--runAsNonRoot"><a href="./values.yaml#L92">deployment.kubeRbacProxy.securityContext.runAsNonRoot</a></td>
			<td>
bool
</td>
			<td>DEPRECATED kube-rbac-proxy container allow run as root.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--kubeRbacProxy--securityContext--seccompProfile"><a href="./values.yaml#L94">deployment.kubeRbacProxy.securityContext.seccompProfile</a></td>
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
			<td id="deployment--kubeRbacProxy--securityContext--seccompProfile--type"><a href="./values.yaml#L96">deployment.kubeRbacProxy.securityContext.seccompProfile.type</a></td>
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
			<td id="deployment--manager"><a href="./values.yaml#L98">deployment.manager</a></td>
			<td>
object
</td>
			<td>Manager container is responsible to reconcile dremio-operator CR.</td>
      <td>
				<div style="max-width: 300px;">
<details>
<summary>+Expand</summary>
<pre lang="json">
{
  "args": [
    "--health-probe-bind-address=:8081",
    "--leader-elect",
    "--metrics-bind-address=127.0.0.1:8080"
  ],
  "command": [
    "/manager"
  ],
  "image": {
    "repository": "ghcr.io/scc-digitalhub/dremio-rest-server-operator",
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
			<td id="deployment--manager--args"><a href="./values.yaml#L100">deployment.manager.args</a></td>
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
  "--leader-elect",
  "--metrics-bind-address=127.0.0.1:8080"
]
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--command"><a href="./values.yaml#L105">deployment.manager.command</a></td>
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
			<td id="deployment--manager--image"><a href="./values.yaml#L108">deployment.manager.image</a></td>
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
  "repository": "ghcr.io/scc-digitalhub/dremio-rest-server-operator",
  "tag": ""
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--image--repository"><a href="./values.yaml#L110">deployment.manager.image.repository</a></td>
			<td>
string
</td>
			<td>Manager container image repository.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"ghcr.io/scc-digitalhub/dremio-rest-server-operator"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="deployment--manager--image--tag"><a href="./values.yaml#L112">deployment.manager.image.tag</a></td>
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
			<td id="deployment--manager--name"><a href="./values.yaml#L114">deployment.manager.name</a></td>
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
			<td id="deployment--manager--resources"><a href="./values.yaml#L116">deployment.manager.resources</a></td>
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
			<td id="deployment--manager--securityContext"><a href="./values.yaml#L124">deployment.manager.securityContext</a></td>
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
			<td id="deployment--manager--securityContext--allowPrivilegeEscalation"><a href="./values.yaml#L126">deployment.manager.securityContext.allowPrivilegeEscalation</a></td>
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
			<td id="deployment--manager--securityContext--capabilities"><a href="./values.yaml#L128">deployment.manager.securityContext.capabilities</a></td>
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
			<td id="deployment--manager--securityContext--capabilities--drop"><a href="./values.yaml#L130">deployment.manager.securityContext.capabilities.drop</a></td>
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
			<td id="deployment--manager--securityContext--runAsNonRoot"><a href="./values.yaml#L133">deployment.manager.securityContext.runAsNonRoot</a></td>
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
			<td id="deployment--manager--securityContext--seccompProfile"><a href="./values.yaml#L135">deployment.manager.securityContext.seccompProfile</a></td>
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
			<td id="deployment--manager--securityContext--seccompProfile--type"><a href="./values.yaml#L137">deployment.manager.securityContext.seccompProfile.type</a></td>
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
			<td id="fullnameOverride"><a href="./values.yaml#L140">fullnameOverride</a></td>
			<td>
string
</td>
			<td>String to fully override `dremio-operator.fullname` template.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="imagePullSecrets"><a href="./values.yaml#L146">imagePullSecrets</a></td>
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
			<td id="ingress"><a href="./values.yaml#L149">ingress</a></td>
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
			<td id="ingress--enabled"><a href="./values.yaml#L151">ingress.enabled</a></td>
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
			<td id="ingress--annotations"><a href="./values.yaml#L153">ingress.annotations</a></td>
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
			<td id="ingress--className"><a href="./values.yaml#L155">ingress.className</a></td>
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
			<td id="ingress--hosts"><a href="./values.yaml#L157">ingress.hosts</a></td>
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
			<td id="ingress--tls"><a href="./values.yaml#L163">ingress.tls</a></td>
			<td>
list
</td>
			<td>Ingress TLS configuration.</td>
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
			<td id="nameOverride"><a href="./values.yaml#L166">nameOverride</a></td>
			<td>
string
</td>
			<td>String to partially override `dremio-rest-server-operator.fullname` template (will maintain the release name)</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="namespaceValues"><a href="./values.yaml#L169">namespaceValues</a></td>
			<td>
object
</td>
			<td>Configure operator scope clusterwide or namespaced</td>
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
			<td id="namespaceValues--namespace"><a href="./values.yaml#L171">namespaceValues.namespace</a></td>
			<td>
string
</td>
			<td>Namespace name where operator watch for CR</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
""
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="namespaceValues--namespaced"><a href="./values.yaml#L173">namespaceValues.namespaced</a></td>
			<td>
bool
</td>
			<td>Enable/Disable Cluster wide mode</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
true
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="nodeSelector"><a href="./values.yaml#L176">nodeSelector</a></td>
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
			<td id="podAnnotations"><a href="./values.yaml#L179">podAnnotations</a></td>
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
			<td id="podLabels"><a href="./values.yaml#L184">podLabels</a></td>
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
			<td id="podLabels--control-plane"><a href="./values.yaml#L186">podLabels.control-plane</a></td>
			<td>
string
</td>
			<td></td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"controller-manager"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="podSecurityContext"><a href="./values.yaml#L189">podSecurityContext</a></td>
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
			<td id="podSecurityContext--runAsNonRoot"><a href="./values.yaml#L191">podSecurityContext.runAsNonRoot</a></td>
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
			<td id="podSecurityContext--seccompProfile"><a href="./values.yaml#L193">podSecurityContext.seccompProfile</a></td>
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
			<td id="podSecurityContext--seccompProfile--type"><a href="./values.yaml#L195">podSecurityContext.seccompProfile.type</a></td>
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
			<td id="priorityClassName"><a href="./values.yaml#L198">priorityClassName</a></td>
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
			<td id="replicaCount"><a href="./values.yaml#L201">replicaCount</a></td>
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
			<td id="resources"><a href="./values.yaml#L204">resources</a></td>
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
			<td id="service"><a href="./values.yaml#L207">service</a></td>
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
  "port": 8443,
  "type": "ClusterIP"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="service--port"><a href="./values.yaml#L209">service.port</a></td>
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
			<td id="service--type"><a href="./values.yaml#L211">service.type</a></td>
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
			<td id="serviceAccount"><a href="./values.yaml#L214">serviceAccount</a></td>
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
  "name": "dremio-rest-server-operator-controller-manager"
}
</pre>
</details>
</div>
			</td>
		</tr>
		<tr>
			<td id="serviceAccount--annotations"><a href="./values.yaml#L216">serviceAccount.annotations</a></td>
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
			<td id="serviceAccount--automount"><a href="./values.yaml#L218">serviceAccount.automount</a></td>
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
			<td id="serviceAccount--create"><a href="./values.yaml#L220">serviceAccount.create</a></td>
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
			<td id="serviceAccount--name"><a href="./values.yaml#L222">serviceAccount.name</a></td>
			<td>
string
</td>
			<td>Service account name.</td>
      <td>
				<div style="max-width: 300px;">
<pre lang="json">
"dremio-rest-server-operator-controller-manager"
</pre>
</div>
			</td>
		</tr>
		<tr>
			<td id="tolerations"><a href="./values.yaml#L225">tolerations</a></td>
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
			<td id="volumeMounts"><a href="./values.yaml#L228">volumeMounts</a></td>
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
			<td id="volumes"><a href="./values.yaml#L231">volumes</a></td>
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
