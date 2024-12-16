import sys
import digitalhub as dh
from time import time, sleep
import os
from oauthlib.oauth2 import BackendApplicationClient
from requests_oauthlib import OAuth2Session

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
    try:
      proj = dh.import_project("projects-project-ml-ci.yaml")
    except:
      proj = dh.load_project("projects-project-ml-ci.yaml")

    proj.run('pipeline_ml', action="build", wait=True)
    workflow_run = proj.run('pipeline_ml', action="pipeline", wait=True)
    if(workflow_run.status.state == "COMPLETED"):
      dh.delete_project(proj.name)
    else:
      sys.exit(1)


if __name__ == "__main__":
    main()
