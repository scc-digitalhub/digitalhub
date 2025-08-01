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

    proj.run('ml-pipeline', action="build", wait=True)
    workflow_run = proj.run('ml-pipeline', action="pipeline", wait=True)
    if(workflow_run.status.state == "COMPLETED"):
    {{- if .Values.platformPackages.deleteOnCompletion }}
      dh.delete_project(proj.name)
    {{- else }}
      sys.exit(0)
    {{- end }}
    else:
      sys.exit(1)


if __name__ == "__main__":
    main()
