# Building images
Here are the Dockerfiles used to build custom images of certain tools. These images should already be available on the *GitHub Container Registry*, and the Compose files are wired to use them, so you can ignore this folder.

Following is a brief list of the changes brought by these images and how to build them locally from this folder.

## Apache NiFi
Based on a release from [the official repository](https://github.com/apache/nifi), but with edited script files to enable configuration and use of OIDC authentication. Build with:
```shell
podman build -t nifi-oidc:0.1.0 -f ./nifi/Dockerfile ./nifi
```

## Dagster

Based on a Python 3.7 image, with the addition of Dagster packages and the Dagster instance configuration file (see https://docs.dagster.io/deployment/dagster-instance). PostgreSQL is expected to be used as backend storage. Build with:

```shell
podman build -t dagster:0.1.0 -f ./dagster/Dockerfile ./dagster
```

If additional packages are required (e.g. `numpy` and `scikit-learn` for ML), they must be added to `requirements.txt` prior to rebuilding the image.

### Dagster Workspace

The folder `/opt/dagster/code` inside the image is the Dagster workspace, i.e., where all the pipeline-related code lives. In order to run your pipelines with Dagster, you can mount the folder with your code into the Dagster container at this location, so that it can be modified without rebuilding the image: while the container is up, you can add or modify your pipelines inside the mounted folder (manually or pulling from a remote repository), then navigate to *Dagit* -> *Workspace* and *Reload* to load your updates.

Note that Dagster relies on *workspace.yaml* to find your code, therefore that file must exist in your folder and you need to update it accordingly.

Also note that, if you reload a pipeline while it is running, the updates will take effect only on the next run, be it scheduled or manually triggered.

## Apache Superset
Built from an [official image](https://hub.docker.com/r/apache/superset), by downloading an [official release](https://github.com/apache/superset) for its `docker` folder, then adding the files required for OIDC authentication. Build with:
```shell
podman build -t superset-oidc:0.1.0 -f ./superset/Dockerfile ./superset
```

## MLFlow

Based on a Python 3.10 image, as the oldest official MLflow image is v1.30.0, and extended with MLFlow package, `psycopg2-binary` and `boto3` packages to use PostgreSQL as backend store and S3 as artifact store. For use with `dagster-mlflow` package, v1.26.0 is recommended due to compatibility issues as Dagster uses `mlflow<=1.26.0`. Build with:

```shell
podman build -t mlflow:0.1.0-mlf1.26.0-postgres-s3 -f ./mlflow/Dockerfile ./mlflow --build-arg VERSION=1.26.0
```
