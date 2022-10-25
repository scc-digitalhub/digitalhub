This folder is used by Docker/Podman-Compose to build a Dagster image. Its content includes:

- a Dockerfile with instructions to set up the image
- "requirements.txt": a list of packages to install during the build (note that `dagster`, `dagit` and `dagster-postgres` are required by Dagster itself, while other packages may be specified if they are required by the pipelines)
- "dagster.yaml": the Dagster instance configuration file (see https://docs.dagster.io/deployment/dagster-instance)

#### The "code" Folder

The "code" subfolder is the Dagster workspace, i.e., where all the pipeline-related code lives. It is mounted into the Dagster container and can be modified without rebuilding the image: while the container is up, you can add or modify your pipelines inside this folder (manually or pulling from a remote repository), then navigate to *Dagit* -> *Workspace* and *Reload* to load your updates.

Note that Dagster relies on *workspace.yaml* to find your code, therefore you need to update that file accordingly.