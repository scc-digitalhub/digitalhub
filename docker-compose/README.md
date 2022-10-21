# Starting components with Docker-Compose
*.yml* files are used to start the components through Docker/Podman-Compose. You may want to update the *.yml* files to change images or configurations used.

Open a terminal, `cd` to this folder and run these commands to start each component.

```shell
podman-compose -p dh -f database.yml up -d

podman-compose -p dh -f minio.yml up -d

podman-compose -p dh -f nifi.yml up -d
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
