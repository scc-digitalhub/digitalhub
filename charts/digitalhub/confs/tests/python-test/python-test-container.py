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
    project = dh.get_or_create_project("project-container")

    function = project.new_function(name="build",
                                kind="container",
                                base_image="python:3.9-slim",
                                command="echo",
                                args=["hello world"])
    # Build the container
    run_build = function.run(action="build",
                            instructions=["ls"])
    # Wait for run to finish
    poller(run_build)

    # Run function
    run = function.run("job")

    # Wait for run to finish
    poller(run)


if __name__ == "__main__":
    main()
