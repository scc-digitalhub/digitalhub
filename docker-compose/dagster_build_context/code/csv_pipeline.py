import pandas as pd
import psycopg2
from minio import Minio
from dagster import job, op, resource, get_dagster_logger, io_manager, IOManager

####################### IO Manager
class PostgresIOManager(IOManager):
    def __init__(self, host: str, port: int, db: str, username: str, password: str, table_name: str):
        self.table_name = table_name
        self.conn = psycopg2.connect(host=host, port=port, database=db, user=username, password=password)
        self.cur = self.conn.cursor()

    def handle_output(self, context, obj):
        #recreate table if existing
        self.cur.execute("DROP TABLE IF EXISTS " + self.table_name)
        self.cur.execute("CREATE TABLE " + self.table_name + " (id int, name varchar, country varchar);")
        for (index, row) in obj.iterrows():
            self.cur.execute("INSERT INTO " + self.table_name + " (id, name, country) VALUES (%s, %s, %s);",
                (row["id"], row["name"], row["country"],))
        self.conn.commit()

    def load_input(self, context):
        self.cur.execute("SELECT * FROM {};".format(self.table_name))
        return self.cur.fetchall()

    def close_connection(self):
        self.cur.close()
        self.conn.close()

@io_manager(config_schema={"host": str, "port": int, "database_name": str, "username": str, "password": str, "table_name": str})
def postgres_io_manager(init_context):
    host = init_context.resource_config["host"]
    port = init_context.resource_config["port"]
    db = init_context.resource_config["database_name"]
    username = init_context.resource_config["username"]
    password = init_context.resource_config["password"]
    table_name = init_context.resource_config["table_name"]
    client = PostgresIOManager(host, port, db, username, password, table_name)
    yield client
    client.close_connection()

####################### Resource
class MinioResource:
    def __init__(self, endpoint: str, access_key: str, secret_key: str, bucket: str, file: str):
        self.logger = get_dagster_logger()
        self.logger.info("Creating MinIO connection")
        self.client = Minio(endpoint, access_key, secret_key, secure=False)
        if self.client.bucket_exists(bucket):
            self.bucket = bucket
        else:
            raise Exception("Bucket {} not found".format(bucket))
        self.file = file
    
    def get_object_as_dataframe(self):
        try:
            response = self.client.get_object(self.bucket, self.file)
            return pd.read_csv(response)
        finally:
            response.close()
            response.release_conn()

@resource(config_schema={"endpoint": str, "access_key": str, "secret_key": str, "bucket": str, "file": str})
def minio_resource(init_context):
    endpoint = init_context.resource_config["endpoint"]
    access_key = init_context.resource_config["access_key"]
    secret_key = init_context.resource_config["secret_key"]
    bucket = init_context.resource_config["bucket"]
    file = init_context.resource_config["file"]
    client = MinioResource(endpoint, access_key, secret_key, bucket, file)
    yield client

#######################
@op(required_resource_keys={"minio"})
def read_csv(context):
    tdf = context.resources.minio.get_object_as_dataframe()
    return tdf

@job(
    resource_defs={
        "io_manager": postgres_io_manager,
        "minio": minio_resource
    }
)
def csv_pipeline():
    data = read_csv()

'''
resources:
  io_manager:
    config:
      database_name: "digitalhub"
      host: "172.26.0.1"
      password: "postgres"
      port: 5432
      table_name: "cities"
      username: "postgres"
  minio:
    config:
      endpoint: "172.26.0.1:9000"
      access_key: "minioadmin"
      secret_key: "minioadmin"
      bucket: "testbucket"
      file: "cities.csv"
'''