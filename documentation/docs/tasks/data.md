# Data and transformations

Here we go briefly over how data and transformations are handled through MLRun.

## Data

Two types of store are used: MinIO and Postgres.

### MinIO

*MinIO* is the *persistence* store, for immutable data in the form of files. MLRun is already configured to store artifacts in a MinIO bucket.

MLRun ensures that every run of a function will receive the latest version of any input dataset and save its output artifacts into the data-lake, MinIO, complete with versions and unique keys. Connection to the data-lake and serialization of *data items* into storage files are abstracted away from the user.

Data items can be read by using MLRun's Python API, for example:
``` python
mlrun.get_dataitem('store://datasets/demo-etl/download-data-downloader_dataset').as_df().head()
```

### Postgres

*Postgres* is the *operational* store, for mutable data, and is rich with extensions, most notably for geo-spatial and time-series data.

## Functions

MLRun functions run as *serverless* functions on Nuclio: each function is packed into a runnable container and tasks such as allocating resources, monitoring progress and cleaning up are all handled automatically.

Functions are written in Python and, once they have been defined, are registered into the project via MLRun's API. For example, a function called `downloader`, defined in a file `src/download-data.py`, is registered with:
``` python
project.set_function("src/download-data.py", name="download-data", kind="job", image="mlrun/mlrun", handler="downloader")
```

And can be run with:
``` python
project.run_function("download-data", inputs={'url':URL}, local=True)
```


## Resources

- MLRun's [official documentation](https://docs.mlrun.org/en/latest/concepts/data.html) on data artifacts
- MLRun's [official documentation](https://docs.mlrun.org/en/latest/runtimes/functions.html) on serverless functions