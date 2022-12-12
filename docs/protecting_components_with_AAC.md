# Protecting Platform Components with AAC

This example illustrates how to protect the platform using a non containerized version of the Authentication and Authorization Controller ([AAC](https://digitalhub.readthedocs.io/en/latest/docs/service/aac.html)).

The following components are used:

- PostgreSQL with TimescaleDB and PostGIS extensions
- PostgREST
- Minio
- NiFi
- Dremio
- SQLPad
- Dagster
- Hasura

With the provided setup, the MinIO UI, NiFi, Dremio, SQLPad, Dagit and the Hasura UI will have Single Sign-On via OAuth2/OIDC protocols, while PostgREST, Hasura and Dagster APIs will require a JSON Web Token.

## Configuration

**Prerequisites:**

- a running AAC instance

*protected_components.yml* file is used to start the components through Docker/Podman-Compose.

As all the authentication-related configuration happens via environment variables, *protected_components.yml* is designed to read such variables from an *.env* file located in the *docker-compose* folder (a file with a different location can be provided at start time).

*.env.template* file lists all the variables that must be set. Create a new file named *.env* and paste the content of *.env.template* in it.

Once your *.env* file is created, set the `AAC_INSTANCE` variable, which is shared by the components, to the URL of your AAC instance. The following sections describe how to configure each component.

### Postgres

In the *.env* file, set `POSTGRES_USER` and `POSTGRES_PASSWORD` variables to your preferred credentials.

### PostgREST

Create a web client application on AAC, enable `client_secret_basic` as authentication method and `client_credentials` as grant type. Add the following custom claim mapping for the `test_scenario_user` role:

```
function claimMapping(claims) {
    claims["role"] = "test_scenario_user";
    return claims;
}
```

In the *.env* file, set `POSTGREST_N_CLAIM_FROM_JWK_ENDPOINT` variable with the value of the `n` claim presented at *https://<aac_instance>/jwk*.

When the PostgREST container is up, you can obtain a client credentials token from AAC and call the PostgREST API by adding an `Authorization` header with value `Bearer <your_client_credentials_token>`, as in the following example:

```
curl -H "Authorization: Bearer <your_client_credentials_token>" http://localhost:3000/cities
```

### MinIO

Create a web client application on AAC, enable `client_secret_basic` as authentication method and `authorization_code` as grant type. Add `http://localhost:9001/oauth_callback` as redirect URI. Enable scope `openid` under *API Access* tab. Add the following custom claim mapping:

```
function claimMapping(claims) {
   claims["policy"] = ["consoleAdmin", "readwrite", "diagnostics"]
   return claims;
}
```

In the *.env* file, set the following variables:

- `MINIO_ROOT_USER`: a username of your choice
- `MINIO_ROOT_PASSWORD`: a password of your choice
- `MINIO_CLIENT_ID`: the client ID of the AAC client you created
- `MINIO_CLIENT_SECRET`: the client secret of the AAC client you created

When the MinIO container is up and you navigate to *http://localhost:9001*, you should be asked to log in via SSO.

### NiFi

Create a web client application on AAC, enable the following authentication methods:

- `client_secret_basic`
- `client_secret_post`
- `none`

And the following grant types:

- `authorization_code`
- `implicit`
- `refresh_token`
- `client_credentials`
- `password`

Add `https://localhost:8443/nifi-api/access/oidc/callback` and `https://localhost:8443/nifi` as redirect URIs. Enable scopes `openid` and `email` under *API Access* tab.

In the *.env* file, set the following variables:

- `NIFI_CLIENT_ID`: the client ID of the AAC client you created
- `NIFI_CLIENT_SECRET`: the client secret of the AAC client you created
- `NIFI_INITIAL_ADMIN_IDENTITY`: your AAC username

When the NiFi container is up and you navigate to *https://localhost:8443*, you should be asked to log in via SSO.

### Dremio

**TODO**

### SQLPad

Create a web client application on AAC and enable the following authentication methods:

- `client_secret_basic`
- `client_secret_post`
- `none`

Enable `authorization_code` as grant type. Add `http://localhost:4000/auth/oidc/callback` as redirect URI. Enable scopes `openid`, `profile` and `email` under *API Access* tab.

In the *.env* file, set the following variables:

- `SQLPAD_ADMIN`: a username of your choice
- `SQLPAD_ADMIN_PASSWORD`: a password of your choice
- `SQLPAD_OIDC_CLIENT_ID`: the client ID of the AAC client you created
- `SQLPAD_OIDC_CLIENT_SECRET`: the client secret of the AAC client you created
- `SQLPAD_OIDC_ISSUER`: the AAC issuer (coincides with `AAC_INSTANCE`)
- `SQLPAD_ALLOWED_DOMAINS`: a space delimited list of email domains to auto-add users after login

When the SQLPad container is up and you navigate to *http://localhost:4000*, you should be asked to log in via SSO.

### Dagster

**TODO** SSO for Dagit via wrapping, JWT for GraphQL API

### Hasura

**TODO**

## Deployment

Once the platform is configured, open a terminal, `cd` to the *docker-compose* folder and run the following Docker/Podman command:

```shell
podman-compose -p dh -f protected_components.yml up -d
```
