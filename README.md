# Digitalhub

This repository provides deployment guidelines and some example use cases for the Digitalhub platform.

The deployment and usage instructions for each use case can be found in the *docs* folder.

The platform deployment is managed via Docker Compose. Each documented use case requires a subset of components and has a corresponding YAML file in the *docker-compose* folder. The same folder also contains Docker Compose files for single components.

## Installation on minikube

### Prerequisites 
- Helm
- Kubectl
- Minikube

### Installation

1. Start minikube (change 192.168.49.0 if your network setup is different):
```sh
        minikube start --insecure-registry "192.168.49.0/24"
```
2. Get minikube external IP:
```sh
        minikube ip
```
3. Change the IP in  'global.registry.url' and 'global.externalHostAddress' properties in values file with the one obtained in the previous step.
4. Install DigitalHub with Helm:
```sh
        helm upgrade digitalhub helm/digitalhub/ -n digitalhub --install --create-namespace 
```