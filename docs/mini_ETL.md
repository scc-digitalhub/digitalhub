# Mini ETL

This example illustrates two alternative platform use cases for the ETL process of reading a CSV file and writing its content to a database table.

The following components are used:

- PostgreSQL with TimeScale extension
- MinIO
- Apache NiFi
- Dagster
- SQLPad

## Deployment

*mini_ETL.yml* file is used to start the components through Docker/Podman-Compose. You may want to update the services configured in the file if needed (e.g. to change the images).

Open a terminal, `cd` to the *docker-compose* folder and run the following Docker/Podman command:

```shell
podman-compose -p dh -f mini_ETL.yml up -d
```

## Usage

**NOTE**: the following paragraphs assume you are using the default credentials configured in *mini_ETL.yml*.

### Postgres

Postgres is used both as Dagster metadata storage and for storing the CSV data as the last step of the ETL process. You can connect to it via terminal with the following command, providing `postgres` as password when prompted:

```shell
psql -h localhost -U postgres -W
```

If you connect to the `digitalhub` database now, you will find that the `test_scenario` schema has a currently empty table named `cities`, which has been automatically created by the *docker-compose/resources/db-init-scripts/postgres-mini-etl.sql* script when Postgres has been launched.

### MinIO

MinIO is used as object storage tool to serve the CSV file to NiFi and Dagster.

Navigate to *http://localhost:9001* with your Internet browser of choice and log in with the credentials `minioadmin`/`minioadmin`. Create a new bucket named `testbucket`, then upload the *docker-compose/resources/cities.CSV* file.

### NiFi

Navigate to *https://localhost:8443*. If warned of a potential security risk, select *Accept the Risk and Continue*. Assuming you didn't change the credentials, log in with `admin` `admin1234567`. Alternatively, you can log in via OIDC, if you enabled and configured it in the *.yml* file, but you will have to create policies and assign your account permissions.

Note that NiFi may randomize the credentials if the password is shorter than 12 characters, so if you changed it and didn't match this requirement, you may have to look through NiFi's logs to find the credentials.

Upload the *Process_CSV.xml* template that comes with this repository into NiFi, and instantiate it.

Access the generated process group, right-click in the empty area and select *Configure*. Under *Controller Services*, enable *CSVReader*. Configure *Postgres connection*'s properties, inserting the Postgres password (default `postgres`) under *Password*. Apply, enable and return to the flow.

Configure *Retrieve CSV*'s properties, inserting the MinIO username and password (default `minioadmin` `minioadmin`) as *Access Key ID* and *Secret Access Key* respectively. Apply and return to the flow.

*Start* the second and third processors, then *Run Once* the first processor. *Refresh* the flow and stop all processors. The data should now have been inserted into the database.

### Dagster

Navigate to the Dagit interface at *http://localhost:5000*. You should see the job `csv_pipeline` inside `csv_repository` in the *Workspace*. The pipeline is composed by a single op named `read_csv`, which will fetch the CSV data from MinIO and load it into the table `cities` on Postgres.

Open the *Launchpad* and provide the following run configuration, which includes the connection information for the Postgres and MinIO instances (note that credentials are provided via environment variables with this configuration, which is good practice, although plain strings are also supported):

```
resources:
  io_manager:
    config:
      database_name: "digitalhub"
      host: "172.28.0.1"
      password: {"env": "DH_DB_PWD"}
      port: 5432
      table_name: "test_scenario.cities"
      username: {"env": "DH_DB_USERNAME"}
  minio:
    config:
      endpoint: "172.28.0.1:9000"
      access_key: {"env": "MINIO_ACCESS_KEY"}
      secret_key: {"env": "MINIO_SECREY_KEY"}
      bucket: "testbucket"
      file: "cities.csv"
```

*Launch a run*. Once the pipeline has successfully executed, you can use `psql` or SQLPad to verify that the table `cities` has been correctly generated.

### SQLPad

Once the table `cities` has been populated by either NiFi or Dagster, navigate to *http://localhost:4000* and log in with `admin`/`admin`.

You should see that a *Connection* to the `digitalhub` database on the Postgres instance already exists, as it has been configured in the Docker Compose file. You can verify that the table `cities` has been correctly populated by running the query:

```
SELECT * FROM test_scenario.cities;
```
