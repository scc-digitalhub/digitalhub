# Building Dremio Image

Guide to build an image for https://github.com/scc-digitalhub/dremio-oss/tree/oauth2-single-tenant until an image is available on Docker Hub.

## Steps to recreate

Clone and build Dremio:

```shell
git clone https://github.com/scc-digitalhub/dremio-oss/tree/oauth2-single-tenant
cd dremio-oss
mvn clean install -DskipTests=true -Dlicense.skip
```

Copy the file *dremio-oss/distribution/server/target/dremio-community-22.0.0-202206221430090603-1fa4049f.tar.gz* into this folder and rename it as *dremio.tar.gz*.

Build the image (the `--platform` option is only required for ARM processors):

```shell
docker build --platform linux/amd64 -t dh/dremio:0.1.0 .
```