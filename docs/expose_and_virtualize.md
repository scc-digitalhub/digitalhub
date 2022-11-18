# Data Exposure and Virtualization

This example illustrates how the platform can be used to expose and virtualize data. More specifically, two use cases are proposed:

1. Exposing data stored in PostgreSQL via REST and GraphQL
2. Creating a virtual dataset by joining data from heterogeneous sources and exposing it

The following components are used:

- PostgreSQL with TimescaleDB, PostGIS and GraphQL extensions
- PostgREST
- GraphiQL
- MinIO
- Dremio
- WSO2 Micro Integrator

## Deployment

*expose_virtualize.yml* file is used to start the components through Docker/Podman-Compose. You may want to update the services configured in the file if needed (e.g. to change the images).

Open a terminal, `cd` to the *docker-compose* folder and run the following Docker/Podman command:

```shell
podman-compose -p dh -f expose_virtualize.yml up -d
```

## Usage

**NOTE**: the following paragraphs assume you are using the default credentials configured in *expose_virtualize.yml*.

### Postgres

Postgres is preconfigured with the aforementioned extensions and the *docker-compose/resources/db-init-script/postgres-expose-virtualize.sql* script automatically creates the `digitalhub` database. The `test_scenario` schema has a table named `cities`, which contains a list of cities and their geographical coordinates.

### PostgREST

PostgREST exposes the table `cities` as a REST API endpoint. You can query the table using cURL or any other tool. Here are some example queries that can be executed from a terminal:

- `curl "http://localhost:3000/cities"` returns the whole table
- `curl "http://localhost:3000/cities?name=eq.Paris"` returns only the row where column `name` has value `Paris`

Refer to the [PostgREST documentation](https://postgrest.org/en/stable/api.html) for detailed information on the query syntax.

PostgREST also exposes a function that serves as GraphQL entrypoint (i.e., resolves GraphQL queries).

#### Authenticated access
You can disable anonymous access by commenting out the `PGRST_DB_ANON_ROLE` variable in the *.yml* file, so that users will need to be authenticated to use the API.

Create a web client on AAC, enable *client-secret-basic* as authentication method and *client_credentials* as grant type. Add a custom claim mapping for the *test_scenario_user* role:
```
function claimMapping(claims) {
    claims["role"] = "test_scenario_user";
    return claims;
}
```

Save the client and obtain a client credentials token. Then, configure the *.yml* file's `PGRST_JWT_SECRET` variable so that its `n` claim contains the value for the `n` claim presented at *https://<aac_instance>/jwk*. Start a PostgREST container.

You can now call the PostgREST API by adding an `Authorization` header with value `Bearer <your_client_credentials_token>`:
```
curl -H "Authorization: Bearer <your_client_credentials_token>" http://localhost:3000/cities
```

### GraphQL and GraphiQL

The [pg_graphql extension](https://github.com/supabase/pg_graphql/tree/master) is used to provide GraphQL support to Postgres. GraphiQL is an interactive in-browser GraphQL IDE that can be used to query a GraphQL API, which in this scenario is the `test_scenario` schema.

Navigate to *http://localhost:4000* with your Internet browser of choice to access the IDE. You can type GraphQL queries to `citiesCollection`, which represents the table `cities` in the database, in the text area on the left and visualize the results on the right side of the page.

Here are some example queries:

- Retrieve the `name` and `location` columns of each city:

```
query {
  citiesCollection {
    edges {
      node {
        name
        location
      }
    }
  }
}
```

- Retrieve `id`, `name`, `country` and `location` where `name` has value `Paris`:
```
query cities {
  citiesCollection(filter: { name: {eq: "Paris"}}) {
    edges {
      node {
        id
        name
        country
        location
      }
    }
  }
}
```

- You can also specify variables, for example, to limit the results to 2 records:
```
query cities($firstN: Int) {
  citiesCollection(first: $firstN) {
    edges {
      node {
        id
        name
        country
        location
      }
    }
  }
}
```
In this case, you will need to specify the following under *Variables* (lower left):
```
{
  "firstN": 2
}
```

Note that, if you secured your PostgREST instance by disabling anonymous access, you will need to configure an appropriate header as well (switch to the *Headers* tab in the lower left):
```
{
  "Authorization": "Bearer <your_client_credentials_token>"
}
```

### MinIO

**TODO**

### Dremio

**TODO** virtualize data from PostgreSQL and Minio

### Micro Integrator

**TODO**
