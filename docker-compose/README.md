# Starting components with Docker-Compose
*.yml* files are used to start the components through Docker/Podman-Compose. You may want to change the images defined within, as both Postgres and NiFi require different images when run on machines with ARM processors.

Open a terminal, `cd` to this folder and run these commands to start each component.

```shell
podman-compose -p dh -f database.yml up -d

podman-compose -p dh -f minio.yml up -d

podman-compose -p dh -f nifi.yml up -d
```

## Setup test case
Open a terminal and connect to the Postgres instance. If you didn't change the credentials in *database.yml*, run the following, providing `postgres` as password when prompted:

```shell
psql -h localhost -U postgres -W
```

Create a new database, called `digitalhub`:

```
CREATE DATABASE digitalhub;
```

Open a browser to the MinIO instance at *http://localhost:9001*. If you didn't change the credentials in *minio.yml*, log in with `minioadmin`/`minioadmin`. Create a new bucket named *testbucket* and upload to it the *cities.CSV* file that comes with this repository.

Navigate to *https://localhost:8443*. If warned of a potential security risk, select *Accept the Risk and Continue*. If you didn't change the credentials in *nifi.yml*, log in with `admin`/`admin1234567`.

Note this image of NiFi randomizes the credentials if the password is shorter than 12 characters, so if you did change it and didn't match this requirement, you will have to look through NiFi's logs to find the credentials.

Upload the *Process_CSV.xml* template that comes with this repository into NiFi, and instantiate it.

Access the generated process group, right-click in the empty area and select *Configure*. Under *Controller Services*, enable *CSVReader*. Configure *Postgres connection*'s properties, inserting the Postgres password (default `postgres`) under *Password*. Apply, enable and return to the flow.

Configure *Retrieve CSV*'s properties, inserting the MinIO username and password (default `minioadmin`/`minioadmin`) as *Access Key ID* and *Secret Access Key* respectively. Apply and return to the flow.

*Start* the second and third processors, then *Run Once* the first processor. *Refresh* the flow and stop all processors. The data should now have been inserted into the database.

Return to the terminal, which should still be connected to the Postgres instance, and run the following two commands separately (the first one might ask you for the password again, which by default is `postgres`):

```
\c digitalhub
```

```
SELECT * FROM cities;
```

You should now notice that the data is present in a newly generated table.