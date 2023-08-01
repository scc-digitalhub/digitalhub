# Workflow

We define a simple workflow, which will execute all the ETL steps we have seen so far by putting their functions together:
``` python
%%writefile "pipeline.py"

from kfp import dsl
import mlrun

URL = "https://opendata.comune.bologna.it/api/explore/v2.1/catalog/datasets/rilevazione-flusso-veicoli-tramite-spire-anno-2023/exports/csv?lang=it&timezone=Europe%2FRome&use_labels=true&delimiter=%3B"

@dsl.pipeline(name="Demo ETL pipeline")
def pipeline():
    project = mlrun.get_current_project()

    downloader = project.run_function("download-data",inputs={'url':URL},outputs=["dataset"])

    process_spire = project.run_function("process-spire",inputs={'di': downloader.outputs["dataset"]})

    process_measures = project.run_function("process-measures",inputs={'di': downloader.outputs["dataset"]})
```

Register the workflow:
``` python
project.set_workflow("pipeline","./pipeline.py", handler="pipeline")
```

And run it, this time remotely:
``` python
project.run("pipeline")
```

The last section will describe how to expose this newly obtained dataset as a REST API.