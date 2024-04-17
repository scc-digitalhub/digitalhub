
import sys
import pandas as pd
import requests
import os
import json
import mlrun 


URL = "https://opendata.comune.bologna.it/api/explore/v2.1/catalog/datasets/disponibilita-parcheggi-storico/exports/csv?lang=it&timezone=UTC&use_labels=true&delimiter=%3B"

df = pd.read_csv(URL, sep=";")
df[['lat', 'lon']] = df['coordinate'].str.split(', ',expand=True)
df = df.drop(columns=['% occupazione', 'GUID', 'coordinate']).rename(columns={'Parcheggio': 'parcheggio', 'Data': 'data', 'Posti liberi': 'posti_liberi', 'Posti occupati': 'posti_occupati', 'Posti totali': 'posti_totali'})
df

KEYS = ['parcheggio', 'lat', 'lon']
df_parcheggi = df.groupby(['parcheggio']).first().reset_index()[KEYS]
df_parcheggi

rdf = df.copy()
rdf['data'] = pd.to_datetime(rdf['data'])
rdf['day'] = rdf['data'].apply(lambda t: t.replace(second=0, minute=0))
rdf = rdf.drop(columns=['data', 'lat', 'lon'])
grouped = rdf.groupby(['parcheggio','day']).mean()
df_aggregated = grouped.reset_index()
df_aggregated

project = mlrun.get_or_create_project("parcheggi", "./")
project.set_source(source="git://github.com/scc-digitalhub/gdb-project-parkings.git", pull_at_runtime=True)
project.save()

project.set_function("src/download-all.py", name="download-all", kind="job", image="mlrun/mlrun", handler="downloader")

project.set_function("src/extract_parkings.py", name="extract-parkings", kind="job", image="mlrun/mlrun", handler="extract_parkings")

project.set_function("src/aggregate_parkings.py", name="aggregate-parkings", kind="job", image="mlrun/mlrun", handler="aggregate_parkings")

project.set_function("src/parkings_to_db.py", name="to-db", kind="job", image="mlrun/mlrun", handler="to_db", requirements=["sqlalchemy", "psycopg2-binary"])
project.set_secrets({"DB_USERNAME": os.getenv("POSTGRES_USER"), "DB_PASSWORD": os.getenv("POSTGRES_PASSWORD")})
project.save()
project.build_function("to-db", base_image="mlrun/mlrun")

project.set_workflow("parking-data-pipeline","./src/parking_data_pipeline.py", handler="parking_pipeline")
project.save()

project.run("parking-data-pipeline", schedule="0 0 * * *")