# SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler
#
# SPDX-License-Identifier: AGPL-3.0-or-later

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
      proj = dh.import_project("projects-tutorial-project.yaml")
    except:
      proj = dh.load_project("projects-tutorial-project.yaml")

    url = "https://gist.githubusercontent.com/kevin336/acbb2271e66c10a5b73aacf82ca82784/raw/e38afe62e088394d61ed30884dd50a6826eee0a8/employees.csv"
    di_url = proj.new_dataitem(name="url-data-item",kind="table",path=url)

    proj.run('dbt-pipeline', action="build", wait=True)
    workflow_run = proj.run('dbt-pipeline', action="pipeline", parameters={"employees": di_url.key}, wait=True)
    if(workflow_run.status.state == "COMPLETED"):
      sys.exit(0)
    else:
      sys.exit(1)

if __name__ == "__main__":
    main()
