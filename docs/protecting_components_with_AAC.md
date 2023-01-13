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
- Grafana
- Superset

With the provided setup, the MinIO UI, NiFi, Dremio, SQLPad, Dagit and Grafana will have Single Sign-On via OAuth2/OIDC protocols, while PostgREST, Dagster and Hasura-served GraphQL APIs will require a JSON Web Token.

## Configuration

**Prerequisites:**

- a running AAC instance

*protected_components.yml* file is used to start the components through Docker/Podman-Compose.

As all the authentication-related configuration happens via environment variables, *protected_components.yml* is designed to read such variables from an *.env* file located in the *docker-compose* folder (a file with a different location can be provided at start time).

*.env.template* file lists all the variables that must be set. Create a new file named *.env* and paste the content of *.env.template* in it.

Once your *.env* file is created, set the `AAC_INSTANCE` variable, which is shared by the components, to the URL of your AAC instance. The following sections describe how to configure each component.

### Postgres

In the *.env* file, set `POSTGRES_USER` and `POSTGRES_PASSWORD` variables to your preferred credentials. Set `POSTGRES_DB` to the name you wish to use for the DigitalHub database.

### PostgREST

Create a web client application on AAC, enable `client_secret_basic` as authentication method and `client_credentials` as grant type. Add the following custom claim mapping for the `test_scenario_user` role:

```
function claimMapping(claims) {
    claims["role"] = "test_scenario_user";
    return claims;
}
```

In the *.env* file, make sure `AAC_JWK_MODULUS_N_CLAIM` is set to the `n` claim presented at the */jwk* endpoint of your AAC instance.

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

Create a web client application on AAC, enable `client_secret_post` as authentication method and `authorization_code` as grant type. Add `https://localhost:8443/nifi-api/access/oidc/callback` as redirect URI. Enable scopes `openid` and `email` under *API Access* tab.

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

Create a web client application on AAC, enable `client_secret_basic` as authentication method and `client_credentials` as grant type.

In the *.env* file, set the following variables:

- `HASURA_AUDIENCE`: audience for the JWT, use the client ID
- `HASURA_GRAPHQL_ADMIN_SECRET`: an admin password, required by Hasura even if you wish to use JWTs. Since it may be used as an alternative to the JWT, make sure it's not trivial.

Requests to the GraphQL API now need an `Authorization: Bearer <aac_token>` header.

Hasura needs to track tables and custom functions before they are available on its GraphQL API. Normally, this is done by adding them manually on the Hasura console. However, the console has been disabled (via `HASURA_GRAPHQL_ENABLE_CONSOLE: 'false'` in the *.yml* file), as authenticating on it is done via admin secret, with no SSO alternative, and wrapping it with a proxy for OAuth2 authentication would present a double log-in process.

As a result, currently, we opted to disable the console and bypass the tracking issue by running a SQL script on the database that imports a dump of the Hasura schema (*hdb_catalog*). This is done automatically by the configuration for the Postgres container.

### Grafana

Create a web client application on AAC, enable `client_secret_post` as authentication method and `authorization_code` as grant type. Add `http://localhost:10000/login/generic_oauth` as redirect URI. Enable scopes `openid`, `email` and `user.roles.me` under *API Access* tab. Add the following custom claim mapping to assign a Grafana role to OAuth users:

```
function claimMapping(claims) {
    claims['grafana_role'] = 'Admin'; //possible values are Admin, Editor, Viewer or GrafanaAdmin
    return claims;
}
```

In the *.env* file, set the following variables:

- `GRAFANA_ADMIN_USER`: a username of your choice
- `GRAFANA_ADMIN_PASSWORD`: a password of your choice
- `GRAFANA_CLIENT_ID`: the client ID of the AAC client you created
- `GRAFANA_CLIENT_SECRET`: the client secret of the AAC client you created

When the Grafana container is up and you navigate to *http://localhost:10000*, you should be asked to log in via SSO.

### Superset

Create a web client application on AAC, enable `client_secret_basic` as authentication method and `authorization_code` as grant type. Add `http://localhost/oauth-authorized/AAC` as redirect URI. Enable scopes `openid`, `email`, `profile` and `user.roles.me` under *API Access* tab.

In the *.env* file, set the following variables:

- `SUPERSET_CLIENT_ID`: the client ID of the AAC client you created
- `SUPERSET_CLIENT_SECRET`: the client secret of the AAC client you created
- `SUPERSET_ROLE_ADMIN`: the AAC role to map to the Superset *admin* role
- `SUPERSET_ROLE_ALPHA`: the AAC role to map to the Superset *alpha* role
- `SUPERSET_ROLE_GAMMA`: the AAC role to map to the Superset *gamma* role
- `SUPERSET_ROLE_GRANTER`: the AAC role to map to the Superset *granter* role
- `SUPERSET_ROLE_SQL_LAB`: the AAC role to map to the Superset *sql_lab* role
- `SUPERSET_LOAD_EXAMPLES`: `yes` or `no`, whether you want some examples to be loaded into Superset.

## Deployment

Once the platform is configured, open a terminal, `cd` to the *docker-compose* folder and run the following Docker/Podman command:

```shell
podman-compose -p dh -f protected_components.yml up -d
```
