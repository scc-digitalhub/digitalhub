# Temporary folder for setting GraphQL up
Other components also rely on Postgres, so, to avoid complicating things in testing those, this separate, temporary folder has been created. For GraphQL, it is necessary to build a local Postgres image, and configure its database specifically.

When components are ready to be integrated, the container (and image) for the database launched through the *graphql.yml* file here will replace the one defined in the root *postgres.yml* file. Similarly, the *postgres.sql* script present here will replace the one in */resources/db-init-scripts*.

## Setting GraphQL up

To install the GraphQL extension in the database, it is recommended to use the Supabase repository, as it provides a Dockerfile to build a Postgres image with GraphQL support installed. However, as we also need the PostGIS and TimescaleDB extensions, that Dockerfile needs to be altered slightly.

Clone the repository:
```shell
git clone https://github.com/supabase/pg_graphql.git
```

Note that this repository is being updated frequently, so there may be some differences.

Then, `cd` to *pg_graphql*. Replace the *dockerfiles/db/Dockerfile* file with the *Dockerfile* present in this folder.

Run the following two commands, to build the Postgres image as well as the GraphiQL image:
```shell
podman build -t dh/postgres:0.1.0 -f ./dockerfiles/db/Dockerfile .

podman build -t dh/graphiql:0.1.0 ./dockerfiles/graphiql
```

Launch Postgres, PostgREST and GraphiQL:
```shell
podman-compose -p dh -f graphql.yml up -d
```