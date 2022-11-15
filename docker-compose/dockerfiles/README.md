# Building images
Here are the Dockerfiles used to build custom images of certain tools. These images should already be available on the *GitHub Container Registry*, and the Compose files are wired to use them, so you can ignore this folder.

Following is brief list of the changes brought by these images and how to build them locally from this folder.

## Apache NiFi
Based on a release from [the official repository](https://github.com/apache/nifi), but with edited script files to enable configuration and use of OIDC authentication. Build with:
```shell
podman build -t nifi-oidc:0.1.0 -f ./nifi/Dockerfile ./nifi
```

## Postgres
Based on [Supabase's repository](https://github.com/apache/nifi) for GraphQL support on Postgres, with the addition of PostGIS and [TimescaleDB](https://github.com/timescale/timescaledb). Build with:
```shell
podman build -t postgres-graphql:0.1.0 -f ./postgres/Dockerfile ./postgres
```
