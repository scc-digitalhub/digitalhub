# Starting components with Docker-Compose
*.yml* files are used to start the components through Docker/Podman-Compose. You may want to update the *.yml* files to change images or configurations used.

Open a terminal, `cd` to this folder and run these commands to start each component.

```shell
podman-compose -p dh -f database.yml up -d

podman-compose -p dh -f minio.yml up -d

podman-compose -p dh -f nifi.yml up -d

podman-compose -p dh -f dagster.yml up -d

podman-compose -p dh -f sqlpad.yml up -d
```

## Postgres and MinIO
Postgres and MinIO are used by several other components, respectively as database and object storage tools.

### Postgres
The *resources/db-init-script* folder contains scripts automatically executed when Postgres is launched, for setting up databases and test scenarios.

You can connect to Postgres via terminal with the following, providing `postgres` as password (assuming you didn't update the credentials):
```shell
psql -h localhost -U postgres -W
```

### MinIO
MinIO can be accessed with your Internet browser of choice at *http://localhost:9001*. If you didn't update the credentials, log in with `minioadmin` `minioadmin`.


## NiFi use case
Before launching NiFi, its *.yml* configuration should be updated so the `host.docker.internal` extra host points to the local machine.

Access MinIO at *http://localhost:9001* and create a new bucket named *testbucket*, then upload the *cities.CSV* file that comes with this repository.

Navigate to *https://localhost:8443*. If warned of a potential security risk, select *Accept the Risk and Continue*. Assuming you didn't change the credentials, log in with `admin` `admin1234567`. Alternatively, you can log in via OIDC, if you enabled and configured it in the *.yml* file, but you will have to create policies and assign your account permissions.

Note that NiFi may randomize the credentials if the password is shorter than 12 characters, so if you changed it and didn't match this requirement, you may have to look through NiFi's logs to find the credentials.

Upload the *Process_CSV.xml* template that comes with this repository into NiFi, and instantiate it.

Access the generated process group, right-click in the empty area and select *Configure*. Under *Controller Services*, enable *CSVReader*. Configure *Postgres connection*'s properties, inserting the Postgres password (default `postgres`) under *Password*. Apply, enable and return to the flow.

Configure *Retrieve CSV*'s properties, inserting the MinIO username and password (default `minioadmin` `minioadmin`) as *Access Key ID* and *Secret Access Key* respectively. Apply and return to the flow.

*Start* the second and third processors, then *Run Once* the first processor. *Refresh* the flow and stop all processors. The data should now have been inserted into the database.

Connect to Postgres (default password is `postgres`) and check the contents of the table:

```shell
psql -h localhost -U postgres -W

\c digitalhub

SELECT * FROM test_scenario.cities;
```

You should now notice that the data is present.

## Dagster use case

Access MinIO at *http://localhost:9001* and create a new bucket named *testbucket*, then upload the *cities.CSV* file that comes with this repository.

Navigate to the Dagit interface at *http://localhost:5000*. You should see the job `csv_pipeline` inside `csv_repository` in the *Workspace*. Open its *Launchpad* and provide the run configuration, which includes the connection information for the Postgres and MinIO instances (change their IP address with that of your Docker network gateway; note that credentials are provided via environment variables with this configuration, which is good practice, although plain strings are also supported):

```
resources:
  io_manager:
    config:
      database_name: "digitalhub"
      host: "172.26.0.1"
      password: {"env": "DH_DB_PWD"}
      port: 5432
      table_name: "test_scenario.cities"
      username: {"env": "DH_DB_USERNAME"}
  minio:
    config:
      endpoint: "172.26.0.1:9000"
      access_key: {"env": "MINIO_ACCESS_KEY"}
      secret_key: {"env": "MINIO_SECREY_KEY"}
      bucket: "testbucket"
      file: "cities.csv"
```

*Launch a run*. Once the pipeline has successfully executed, you can use `psql` or SQLPad to verify that the table `cities` has been correctly generated.

## SQLPad use case

Once the table `cities` has been populated by either NiFi or Dagster, navigate to *http://localhost:4000*. If you didn't change the credentials in *sqlpad.yml*, log in with `admin`/`admin`.

Configure a new *Connection* to the `digitalhub` database on the Postgres instance (as with Dagit, use the IP address of your Docker network gateway as *Host*). The schema `test_scenario` should now contain the table `cities`. You can verify that it has been correctly populated by running the query:

```
SELECT * FROM test_scenario.cities;
```
