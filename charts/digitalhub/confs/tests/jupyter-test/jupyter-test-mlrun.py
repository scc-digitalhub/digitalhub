import sys
import digitalhub as dh
from time import time, sleep
import os
from oauthlib.oauth2 import BackendApplicationClient
from requests_oauthlib import OAuth2Session


def poller(run):

    start = time()
    max_time = 15 * 60 # 15 minutes

    while True:

        if (time() - start) > max_time:
            raise Exception(f"Timed out waiting: run status is {run.status.state}")

        run.refresh()

        if run.status.state == "ERROR":
            raise Exception(f"Something got wrong with run: {run.status.state} - {run.status.message}")

        if run.status.state == "COMPLETED":
            print("Run finished.")
            sys.exit(0)

        if run.status.state == "STOPPED":
            print("Run stopped.")
            sys.exit(1)

        sleep(5)


def main():

    if "CORE_CLIENT_ID" in os.environ:
        # Get AAC Core Token
        client_id = os.getenv("CORE_CLIENT_ID")
        client_secret = os.getenv("CORE_CLIENT_SECRET")
        scope = 'tenant1-core'
        client = BackendApplicationClient(client_id=client_id)
        oauth = OAuth2Session(client=client, scope=scope)
        token = oauth.fetch_token(token_url='https://aac.digitalhub-dev.smartcommunitylab.it/oauth/token', client_id=client_id, client_secret=client_secret, scope=scope)
        os.environ["DIGITALHUB_CORE_TOKEN"] = token["access_token"]
    
    # Get or create project
    project = dh.get_or_create_project("project-mlrun")

    # Create new dataitem
    url = "https://opendata.comune.bologna.it/api/explore/v2.1/catalog/datasets/rilevazione-flusso-veicoli-tramite-spire-anno-2023/exports/csv?lang=it&timezone=Europe%2FRome&use_labels=true&delimiter=%3B"
    url_dataitem = project.new_dataitem(name="url-dataitem",
                                        kind="table",
                                        path=url)

    # Download dataitem as pandas.Dataframe and upload dataframe to minio
    df = url_dataitem.as_df(file_format="csv", sep=";")
    s3_path = url_dataitem.write_df(df=df)


    # Create stored new dataitem
    s3_dataitem = project.new_dataitem(name="table-spire",
                                    kind="table",
                                    path=s3_path)


    # Create new function
    code = "aW1wb3J0IG1scnVuCgpAbWxydW4uaGFuZGxlcihvdXRwdXRzPVsiZGF0YXNldCJdKQpkZWYgZG93bmxvYWRlcihjb250ZXh0LCB1cmw6IG1scnVuLkRhdGFJdGVtKToKICAgIGRmID0gdXJsLmFzX2RmKGZvcm1hdD0icGFycXVldCIpCiAgICByZXR1cm4gZGY="
    func = project.new_function(name="mlrun-downloader",
                                kind="mlrun",
                                source={"base64": code},
                                handler="downloader")

    # Run function with input reference to new dataitem
    run = func.run("job",
                   inputs={"url": s3_dataitem.key},
                   outputs={"dataset": "dataset"})

    # Run refresh
    run.refresh()

    # Wait for run to finish
    poller(run)


if __name__ == "__main__":
    main()
