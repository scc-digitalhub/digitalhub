# MLOps

This example illustrates how the platform can be used to create and track a machine learning model.

The following components are used:

- PostgreSQL with TimescaleDB extension
- MinIO
- MLFlow
- Dagster

Additionally, the usage of Seldon Core to deploy the model as a Docker image is described.

## Deployment

*MLOps.yml* file is used to start the components through Docker/Podman-Compose. You may want to update the services configured in the file if needed.

Open a terminal, `cd` to the *docker-compose* folder and run the following Docker/Podman command:

```shell
podman-compose -p dh -f MLOps.yml up -d
```

## Usage

**NOTE**: the following paragraphs assume you are using the default credentials configured in *MLOps.yml*.

### Dagster

Dagster uses PostgreSQL as metadata storage.

If you navigate to the Dagit interface at *http://localhost:5000*, you should see the job `wine_quality_model` inside `ml_repository` in the *Workspace*. This pipeline is based on the official MLFlow [sklearn_elasticnet_wine](https://github.com/mlflow/mlflow/tree/master/examples/sklearn_elasticnet_wine) example and [tutorial](https://mlflow.org/docs/1.26.1/tutorials-and-examples/tutorial.html). More specifically, the `train.py` script is rewritten as a Dagster pipeline which reads the initial data, trains a linear regression model that predicts wine quality, evaluates it and lastly calls MLFlow to track it.

Open the *Launchpad* and provide the following run configuration, which includes the URL of the dataset, the parameters and the MLFlow tracking server URL:

```
ops:
  read_wine_quality_csv:
    config:
      csv_url: https://raw.githubusercontent.com/mlflow/mlflow/master/tests/data/winequality-red.csv
resources:
  hyperparameters:
    config:
      alpha: 0.5
      l1_ratio: 0.5
  mlflow:
    config:
      experiment_name: wine_quality_experiment1
```

*Launch a run*. Once the pipeline has successfully executed, you can view the tracking results on MLFlow.

### MLFlow

MLFlow uses PostgreSQL as backend store and MinIO as S3-compatible artifact store. Moreover, it acts as a proxy server for artifacts, that is, clients do not need access to the artifact storage, as described in the [documented scenario](https://mlflow.org/docs/1.26.1/tracking.html#scenario-5-mlflow-tracking-server-enabled-with-proxied-artifact-storage-access).

A MinIO bucket named `mlflowbucket` is automatically created during the deployment.

Navigate to the MLFlow UI at *http://localhost:5100*. You should see `wine_quality_experiment1` with the given parameters, the resulting metrics and the *ElasticnetWineModel* generated. If you click on the experiment run, you should see that an artifact has been created in the MLFlow Model format, that is, with the following file structure:

```
model/
├── MLmodel
├── model.pkl
├── conda.yaml
├── python_env.yaml
└── requirements.txt
```

If you navigate to the MinIO UI at *http://localhost:5100* and log in with the credentials `minioadmin`/`minioadmin`, you should find the same files stored inside *mlflowbucket/1/<RUN_ID>/artifacts/model*.

## Note on MLFlow Versions

Dagster provides `dagster-mlflow` [library](https://docs.dagster.io/_apidocs/libraries/dagster-mlflow) to integrate with MLFlow, however it currently requires `mlflow<=1.26.0` (see https://github.com/dagster-io/dagster/blob/master/python_modules/libraries/dagster-mlflow/setup.py). Since such library is used by default in this example, the same version is used in the MLFlow container to avoid any compatibility issues with the MLFlow REST API.

If you would like to run this example with a more recent version, you can switch to MLFlow 2.1.1 as follows:

- open *MLOps.yml* and replace the images currently used by the `mlflow`, `dagit` and `dagster_daemon` services with, respectively, `ghcr.io/scc-digitalhub/mlflow:0.1.0-mlf2.1.1-postgres-s3` and `ghcr.io/scc-digitalhub/dagster-ml:0.1.0-v1.1.13-mlflow2.1.1`

- open *docker-compose/resources/dagster-pipelines/MLOps/workspace.yaml* and replace `wine_quality_model_pipeline.py` with `wine_quality_model_pipeline2.py`; this pipeline performs the same operations as the other one, however it handles MLFlow runs instead of relying on `dagster-mlflow`

Now you can deploy the containers and run the `wine_quality_model` job in Dagster with the following configuration:

```
ops:
  read_wine_quality_csv:
    config:
      csv_url: https://raw.githubusercontent.com/mlflow/mlflow/master/tests/data/winequality-red.csv
  start_mlflow_run:
    config:
      experiment_name: wine_quality_experiment2
resources:
  hyperparameters:
    config:
      alpha: 0.5
      l1_ratio: 0.5
```

## Deploying the Model with Seldon Core

**TODO**
