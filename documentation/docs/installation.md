# Installation

Installation of the DigitalHub platform relies on Kubernetes. To support the installation of the platform
on top of the Kubernetes cluster, Helm charts are used. See below the instructions for the installation
in different environments, such as Minikube (for local development), MS Azure, OpenStack, etc. To install
the platform in a custom Kubernetes environment, refer to the [helm charts](https://github.com/scc-digitalhub/digitalhub/tree/main/helm/digitalhub) provided.

## Install with Minikube
To install DigitalHub locally, it is possible to use Minikube. To proceed, please install first:

- [Helm](https://helm.sh/docs/intro/install/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Minikube](https://minikube.sigs.k8s.io/docs/)

### Installation

0. Clone the DigitalHub repository
```sh
   git clone https://github.com/scc-digitalhub/digitalhub.git
```

1. Start minikube (change 192.168.49.0 if your network setup is different):
```sh
    minikube start --insecure-registry "192.168.49.0/24"
```
2. Get minikube external IP:
```sh
    minikube ip
```
3. Change the IP in  'global.registry.url' and 'global.externalHostAddress' properties in values file (*helm/digitalhub/values.yaml*) with the one obtained in the previous step.
4. Install DigitalHub with Helm:
```sh
    helm upgrade digitalhub helm/digitalhub/ -n digitalhub --install --create-namespace --timeout 15m0s
```
5. Wait until all pods are in Running state
```sh
    kubectl --namespace digitalhub get pods
```

Once installed, you should see the references (URLs) for the different tools of the platform.

## Install with MS Azure
TODO

## Install with OpenStack
TODO