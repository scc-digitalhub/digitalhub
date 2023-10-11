# ML scenario introduction

This is a scenario that comes as an official tutorial of MLRun. In fact, its related notebook can be found in your Jupyter instance: `/tutorial/01-mlrun-basics.ipynb`. However, we skip a number of cells to keep it concise and to the point, while preserving the same functionality.

The resulting edited notebook, as well as a file for the function we will create, are available in the `documentation/examples/ml` path within the repository of this documentation.

We will prepare data, train a model and expose it as a service. Access Jupyter from your Coder instance and create a new notebook.

## Set-up

Let's initialize our working environment. Import required libraries:
``` python
import mlrun
import os
```

Load environment variables for MLRun:
``` python
ENV_FILE = ".mlrun.env"
if os.path.exists(ENV_FILE):
    mlrun.set_env_from_file(ENV_FILE)
```

Create a MLRun project:
``` python
PROJECT = "demo-ml"
project = mlrun.get_or_create_project(PROJECT, "./")
```

## Generate data

Define the following function, which generates the dataset as required by the model:
``` python
%%writefile data-prep.py

import pandas as pd
from sklearn.datasets import load_breast_cancer

import mlrun


@mlrun.handler(outputs=["dataset", "label_column"])
def breast_cancer_generator():
    breast_cancer = load_breast_cancer()
    breast_cancer_dataset = pd.DataFrame(
        data=breast_cancer.data, columns=breast_cancer.feature_names
    )
    breast_cancer_labels = pd.DataFrame(data=breast_cancer.target, columns=["label"])
    breast_cancer_dataset = pd.concat(
        [breast_cancer_dataset, breast_cancer_labels], axis=1
    )

    return breast_cancer_dataset, "label"
```

Register it:
``` python
data_gen_fn = project.set_function("data-prep.py", name="data-prep", kind="job", image="mlrun/mlrun", handler="breast_cancer_generator")
project.save()
```

Run it locally:
``` python
gen_data_run = project.run_function("data-prep", local=True)
```

You can view the state of the execution with `gen_data_run.state()` or its output with `gen_data_run.outputs`. You can see a few records from the output artifact:
``` python
gen_data_run.artifact("dataset").as_df().head()
```

We will now proceed to training a model.