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
    project = dh.get_or_create_project("project-dbt")

    # Create new input dataitem
    url = "https://gist.githubusercontent.com/kevin336/acbb2271e66c10a5b73aacf82ca82784/raw/e38afe62e088394d61ed30884dd50a6826eee0a8/employees.csv"
    di = project.new_dataitem(name="employees",
                              kind="table",
                              path=url)

    # Create new function
    sql = """
    WITH tab AS (
        SELECT  *
        FROM    {{ ref('employees') }}
    )
    SELECT  *
    FROM    tab
    WHERE   tab."DEPARTMENT_ID" = '60'
    """
    function = project.new_function(name="function-dbt",
                                    kind="dbt",
                                    source={"code": sql})

    # Run function
    run = function.run("transform",
                    inputs={"employees": di.key},
                    outputs={"output_table": "department-60"})

    # Wait for run to finish
    poller(run)


if __name__ == "__main__":
    main()
