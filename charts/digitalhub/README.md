<!--
SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler

SPDX-License-Identifier: AGPL-3.0-or-later
-->

# digitalhub

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/scc-digitalhub/digitalhub/release.yaml?event=push) [![license](https://img.shields.io/badge/license-AGPL%20V3-blue)](https://github.com/scc-digitalhub/digitalhub/tree/main/charts/digitalhub/LICENSE) ![GitHub Release](https://img.shields.io/github/v/release/scc-digitalhub/digitalhub?filter=digitalhub*)
![Status](https://img.shields.io/badge/status-stable-gold) ![Version: 0.13.2](https://img.shields.io/badge/Version-0.13.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.13.0](https://img.shields.io/badge/AppVersion-0.13.0-informational?style=flat-square)

The Digital Hub is an open-source platform for interoperability of data and services, built by integrating several open-source projects to manage, elaborate, expose and serve data through modern standards.

Explore the full documentation at the [link](https://scc-digitalhub.github.io/docs/admin/).

## Quick start

### Prerequisites
- [Helm](https://helm.sh/docs/intro/install/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
- Working Kubernetes Cluster

### Installation

Once you have set your custom values.yaml file, see [Configuration section](#configuration) for more informations, DigitalHub platform can be installed as follows:

1) Add Digitalhub repository:
```sh
helm repo add digitalhub https://scc-digitalhub.github.io/digitalhub/
```

2) Install DigitalHub with Helm and your custom values.

```sh
helm upgrade digitalhub digitalhub/digitalhub -n digitalhub --install --create-namespace --values PATH_TO_YOUR_VALUES_FILE --timeout 45m0s
```

5) Wait until all pods are in Running or Completed state
```sh
kubectl --namespace digitalhub get pods
```

Once installed, you should see the references (URLs) for the different tools of the platform, similar to the example below:
```
##########################################################
#   _____   _       _           _ _     _       _        #
#  (____ \ (_)     (_)_        | | |   | |     | |       #
#   _   \ \ _  ____ _| |_  ____| | |__ | |_   _| | _     #
#  | |   | | |/ _  | |  _)/ _  | |  __)| | | | | || \    #
#  | |__/ /| ( ( | | | |_( ( | | | |   | | |_| | |_) )   #
#  |_____/ |_|\_|| |_|\___)_||_|_|_|   |_|\____|____/    #
#            (_____|                                     #
#                                                        #
##########################################################

Digitalhub has been installed. Check its status by running:
  kubectl --namespace digitalhub get pods

Digitalhub componet URLs:
  - Dashboard: http://192.168.76.2:30110
  - Jupyter: http://192.168.76.2:30040 (Create jupyter workspace from template in the coder dashboard before use)
  - Dremio: http://192.168.76.2:30120 (Create dremio workspace from template in the coder dashboard before use)
  - Sqlpad: http://192.168.76.2:30140 (Create sqlpad workspace from template in the coder dashboard before use)
  - Grafana: http://192.168.76.2:30130 (Create grafana workspace from template in the coder dashboard before use)
  - Vscode: http://192.168.76.2:30190 (Create vscode workspace from template in the coder dashboard before use)
  - Docker Registry: http://192.168.76.2:30150
  - KubeFlow: http://192.168.76.2:30100
  - Coder: http://192.168.76.2:30170 (Username: test@digitalhub.test Password: Test12456@!)
  - Core: http://192.168.76.2:30180
  - Kubernetes Resource Manager: http://192.168.76.2:30160
```

## Configuration

The DigitalHub Platform provides configuration options in the [DigitalHub values.yaml file](values.yaml).

The safest way to set up your custom values is to use a values file in which you will set up the options you are interested in.

Thanks to the Helm hereditary properties, the platform values will change taking the values of your custom file, preserving the integrity of the originals and allowing you to use a shorter set of customized values.

You can use a custom set of values from a file like the example below, in which we install digitalhub with custom values:
```sh
helm upgrade -n <YOUR_NAMESPACE> <YOUR_RELEASE> digitalhub/digitalhub --install --create-namespace --timeout 45m0s --values <YOUR_VALUES_FILE_PATH>
```
In this example, `--set global.ociRegistry.url="MINIKUBE_IP_ADDRESS"` and `--set global.externalHostAddress="MINIKUBE_IP_ADDRESS"` are not specified in the installation command, but they can be specified in your values file:

```yaml
global:
  registry:
    url: "YOUR_ADDRESS"
  externalHostAddress: &globalExternalUrl "YOUR_ADDRESS"
```

When deploying in a production environment, the platform setup requires additional steps for its secure and efficient use. In this section we take into account aspects that are required for the platform setup.

    * Components Configuration
    * Authentication and Access Control

### Components Configuration
#### Ingress configuration

The services of the platform can be exposed with Ingress by editing your values file.

For every exposable component, you will find a value field for the ingress, set by default to enabled: false.

After setting enabled to true to activate the Ingress creation, check the component's values.yaml file to see how you should structure your custom values file and set all the neeeded Ingress values.

The example below is for the Core Ingress:

```yaml
ingress:
  enabled: true
  className: "youringressclass"
  hosts:
    - host: your.host
      paths:
        - pathType: ImplementationSpecific
          path: /
  tls:
  - secretName: yourTlsSecret
```
#### Core
##### Keystore

To set up a Keystore for Core, add the following section to your `values.yaml` file and configure the following fields:

```yaml
core:
  keystore:
    existingSecret:
      secretName: "keystore-secret" # Name of the secret containing the keystore
      keyName: "keystore.jwks"    # Name of the key in your keystore secret, should correspond to the keystore file name
    keystoreKid: ""  # Specify the key that the keystore should pick
    keystorePath: "/etc/keystore" # Path where your keystore will be saved
```

In this example, a Keystore will be created in the path `/etc/keystore/keystore.jwks` from a secret called `keystore-secret`.
The key of the secret, `keystore.jwks`, must contain the base64 encoded keystore.
##### STS

**WARNING: this feature cannot be used locally as it depends on an Authentication Provider that should be installed in your environment.**

STS allows you to work with temporary credentials to do operations with Core to the Postgres database and the Minio bucket, avoiding the use of persistent ones and reducing the risk of a security breach.

To activate STS, set `core.sts.enabled` to `true`.
The values to activate Postgres and Minio credentials are, respectively, `core.sts.db.enabled` (set to `true` if activated) and `core.sts.minio.enabled` (set to `true` if activated).

###### Credentials duration

You can set the duration of the temporary credentials in two ways.

- Setting `core.sts.credentials.duration` to the time (in seconds) you desire will set the same time for the Postgres and Minio ones
- If you wish to set them case by case, leave `core.sts.credentials.duration` as an empty string and set the time of `core.sts.credentials.minio.duration` and `core.sts.credentials.db.duration`

**NOTICE: currently, the time limit cannot be major than 28800.**

#### Kubernetes Resource Manager

[Enabling authentication for the Kubernetes Resource Manager](../../authentication/krm.md) is required to use this feature.

Setting up roles can be a great way for assigning permissions to the users of the Kubernetes Resource Manager, setting up limitations to what they can do and the resources they can have access to.

To set up your custom KRM roles and permissions, follow this example and change the fields to your needs in your Values file:

```yaml
kubernetes-resource-manager:
  oidc:
    roleClaim: "krm_roles"    # Name of the role used
    access:
      roles:
        - role: ROLE_MY_ROLE  # Name of the role
          # Resources associated to the role with permissions
          resources: k8s_service, k8s_secret::read, mycrd/example.com::write
```

In this basic example we create a Role called ROLE_MY_ROLE that will have:

- Access to the services
- Access with read permissions to the secrets
- Access with write permissions to a custom CRD

You will also have to setup your authentication provider accordingly, so that you can associate the correct role to the correct users.
#### SOLR (external component)

##### Configuring Basic Auth for Solr

In order to use Solr with an unprivileged with Core, Solr must be configured with the basicAuth plugin (already included in the chart).

This documentation will provide an overview for the Values that you have to set and will help you finding them in the values.yaml file of the platform.

###### Step 1: core.solr.collection

This section provides the necessary configuration for `core`

First, set `core.solr.collection.initialize.enabled` to true. When set to false, this value tells core to initialize everything in Solr by itself, removing the possibility of using BasicAuth. When set to true, instead, a script will initialize the Solr collection and the BasicAuth values will take effect.

Next, set `core.solr.collection.initialize.securityJsonSecret` to the name of the secret that will contain the key security.json.
Please keep in mind that the value of `core.solr.collection.initialize.securityJsonSecret` MUST be the same of `solr.solrOptions.security.bootstrapSecurityJson.name`.

###### Step 2: solr.solrOptions.security

This section provides the necessary configuration for `solr`

First, choose the name for the BasicAuth secret that will be used by the operator for performing actions between Solr and your K8S environment at `solr.solrOptions.security.basicAuthSecret`.

Then, set the name of the secret containing the security.json key and corresponding data at `solr.solrOptions.security.bootstrapSecurityJson.name`.

Once again, `solr.solrOptions.security.bootstrapSecurityJson.name` value must match the one in `core.solr.collection.initialize.securityJsonSecret`. Furthermore, do not change the value of `solr.solrOptions.security.bootstrapSecurityJson.name` unless you are using an already existing secret with the required format of the Solr BasicAuth Plugin (you can set this at `solr.useExistingSecurityJson`) with a different key name.

##### Step 3: solr.creds

The final step for the configuration of the BasicAuth Plugin is the configuration of the users and the credentials that will be used by Solr.

Please keep in mind that the four users (admin, k8sOper, solr, user) should be left as they are, but you should still change the passwords.

There are two values for the password configuration: `password` and `passwordSha`. The reason is that Solr requires crypted passwords in the format `sha256(sha256(salt || password))`.
While the first password will be used (as data) in the security json secret in pair with the corresponding user (as key), the corresponding encrypted password will be used directly in the security.json data as required by Solr standard.
You can either choose to encrypt it yourself or use an online tool to do it, just be sure to encrypt the correct one for every user.

### Authentication and Access Control
The DigitalHub Platform supports authentication with an external provider.

It is mandatory to set custom values for the platform, so Helm knowledge is required.

This section will show how to set an authentication for the following:

* [Coder](#coder)
* [Core](#core)
* [Dashboard](#dashboard)
* [Kubernetes Resource Manager](#kubernetes-resource-manager)
* [Minio](#minio)

#### Coder
To enable the authentication with a provider for Coder, please consult the [official Coder documentation](https://coder.com/docs/admin/auth).

In your provider, the redirect url should correspond to `https://yourcoderurl/api/v2/users/oidc/callback`.

#### Core

To enable the authentication with a provider for Core, you will need to set the values in the file Values.yaml of the chart digitalhub in the Core section.

The example below shows only the values concerning the authentication configuration.

```yaml
core:
  authentication:
    openId:
      enabled: true
      issuerUri: "https://yourproviderurl" # Set the issuer url of your provider
      jwtAudience: "" # Set the audience
      jwtClaim: "" # Set the claims
      oidcClientId: "" # Use this if you want to hardcode your clientID
      scope: "" # Specify the scopes
      externalSecret: # Use this if you want to get the clientID by secret.
        name: "" # Name of the secret
        key: "" # Key of the secret containing the clientID
```

In your provider, the redirect url should correspond to `https://yourcoreurl/console/auth-callback`.

#### Dashboard

To enable the authentication with a provider for the Dashboard, you will need to set the values in the file Values.yaml of the chart digitalhub in the Dashboard section.

The example below shows only the values concerning the authentication configuration.

```yaml
dashboard:
  oidc:
    enabled: true
    audience:
      clientId: "" # Use this if you want to hardcode your clientID
      externalSecret: # Use this if you want to get the clientID by secret.
        name: "" # Name of the secret
        key: "" # Key of the secret containing the clientID
    config:
      issuer: "https://yourproviderurl" # Set the issuer url of your provider
```

#### Kubernetes Resource Manager

To enable the authentication with a provider for Kubernetes Resource Manager, you will need to set the values in the file Values.yaml of the chart digitalhub in the Kubernetes Resource Manager section.

The example below shows only the values concerning the authentication configuration.

```yaml
kubernetes-resource-manager:
  oidc:
    enabled: true
    audience:
      clientId: "" # Use this if you want to hardcode your clientID
      externalSecret: # Use this if you want to get the clientID by secret.
        name: "" # Name of the secret
        key: "" # Key of the secret containing the clientID
    issuer: "https://yourproviderurl" # Set the issuer url of your provider
    scope: "" # Set the scopes
    authType: "" # Set the type of authentication
```

In your provider, the redirect url should correspond to `https://yourkubernetesresourcemanagerurl/console/auth-callback`.

#### Minio

To enable the authentication with a provider for Minio, you will need to set the values in the file Values.yaml of the chart digitalhub in the Minio section.

The example below shows only the values concerning the authentication configuration.

```yaml
minio:
  oidc:
    enabled: true
    configUrl: "https://yourproviderurl/.well-known/openid-configuration" # Set the url of your provider
    existingClientSecretName: "" # Name of the secret containing clientID and clientSecret
    existingClientIdKey: "" # Key of the secret containing the clientID
    existingClientSecretKey: "" # Key of the secret containing the client secret
    claimName: ""  # Set the name of the JWT Claim
    scopes: "" # Set the scopes
    redirectUri: "https://yourminiourl/oauth_callback" # Set the redirect for the application
    displayName: "" # Set the name of your provider
```

Please, consult the [official Minio documentation](https://min.io/docs/minio/linux/reference/minio-server/settings/iam/openid.html#minio-server-envvar-external-identity-management-openid) for more details about the options used above.

In your provider, the redirect url should correspond to `https://yourminiourl/oauth_callback`.

## Values

You can locate the platform full configuration file at [link](CONFIGURATION.md).

## Development

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
5. Install digitalhub with Helm:
```sh
    helm upgrade digitalhub digitalhub/digitalhub -n digitalhub --install --create-namespace --timeout 15m0s
```
6. Wait until all pods are in Running state
```sh
    kubectl --namespace digitalhub get pods
```
7. Retrieve database and S3 secrets
```sh
    kubectl --namespace digitalhub get secret <NAME_OF_YOUR_S3_OR_DATABASE_SECRET> -o yaml
```
8. Decode secret values
```sh
    echo -n "<BASE64_VALUES_FROM_SECRET>" | base64 -d
```
9. Create secret with previously decoded values
```
    kubectl -n digitalhub create secret generic digitalhub-common-creds --from-literal=POSTGRES_USER=<DECODED_VALUE> --from-literal=POSTGRES_PASSWORD=<DECODED_VALUE> --from-literal=AWS_ACCESS_KEY_ID=<DECODED_VALUE> --from-literal=AWS_SECRET_ACCESS_KEY=<DECODED_VALUE>
```

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

This project is licensed under the  GNU AGPL License, Version 3.0.
You may not use this file except in compliance with the License. Ownership of contributions remains with the original authors and is governed by the terms of the GNU AGPL v3.0 License, including the requirement to grant a license to the project.
