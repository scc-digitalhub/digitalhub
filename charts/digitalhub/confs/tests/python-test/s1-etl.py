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
        # Get Core Token
        client_id = os.getenv("CORE_CLIENT_ID")
        client_secret = os.getenv("CORE_CLIENT_SECRET")
        client = BackendApplicationClient(client_id=client_id)
        oauth = OAuth2Session(client=client)
        token = oauth.fetch_token(token_url='http://{{ include "core.fullname" .Subcharts.core }}:{{ .Subcharts.core.Values.service.port }}/auth/token', client_id=client_id, client_secret=client_secret)
        os.environ["DHCORE_ACCESS_TOKEN"] = token["access_token"]

    # Load project
    proj = dh.import_project("project-etl-ci.yml")

    URL = "https://opendata.comune.bologna.it/api/explore/v2.1/catalog/datasets/rilevazione-flusso-veicoli-tramite-spire-anno-2023/exports/csv?lang=it&timezone=Europe%2FRome&use_labels=true&delimiter=%3B"
    di= proj.new_dataitem(name="url_data_item",kind="table",path=URL)
    workflow_run = proj.run('pipeline', parameters={"url": di.key})

    # Wait for run to finish
    poller(workflow_run)


if __name__ == "__main__":
    main()
