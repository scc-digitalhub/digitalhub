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

Postgres is preconfigured with the aforementioned extensions and the *docker-compose/resources/db-init-script/postgres-virtualization.sql* script automatically creates the `digitalhub` database. The `test_scenario` schema has a table named `cities`, which contains a list of cities and their geographical coordinates.

### PostgREST

PostgREST exposes the table `cities` as a REST API endpoint. You can query the table using cURL or any other tool. Here are some example queries that can be executed from a terminal:

- `curl "http://localhost:3000/cities"` returns the whole table
- `curl "http://localhost:3000/cities?name=eq.Paris"` returns only the row where column `name` has value `Paris`

Refer to the [PostgREST documentation](https://postgrest.org/en/stable/api.html) for detailed information on the query syntax.

PostgREST also exposes a function that serves as GraphQL entrypoint (i.e., resolves GraphQL queries).

### GraphQL and GraphiQL

The [pg_graphql extension](https://github.com/supabase/pg_graphql/tree/master) is used to provide GraphQL support to Postgres. GraphiQL is an interactive in-browser GraphQL IDE that can be used to query a GraphQL API, which in this scenario is the `test_scenario` schema.

Navigate to *http://localhost:4000* with your Internet browser of choice to access the IDE. You can type GraphQL queries to `citiesCollection`, which represents the table `cities` in the database, in the text area on the left and visualize the results on the right side of the page.

Here are some example queries:

- retrieve the `name` and `location` columns of each city:

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

### MinIO

**TODO**

### Dremio

**TODO** virtualize data from PostgreSQL and Minio

### Micro Integrator

**TODO**