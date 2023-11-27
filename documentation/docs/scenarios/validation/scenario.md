# Validation with digitalhub-core and Nefertem scenario introduction

This scenario demonstrates how to use digitalhub-core and Nefertem to validate data.

Access Jupyter from your Coder instance and create a new notebook. If a Jupyter workspace isn't already available, create one from its template.

Open a new notebook using the digitalhub-core kernel.

We'll now start writing code. Copy the snippets of code from here and paste them in your notebook, then execute them with *Shift+Enter*. After running, Jupyter will create a new code cell.

The notebook file covering this scenario, as well as files for individual functions, are available in the `documentation/examples/validation`path within the repository of this documentation.

## Setup

First, we initialize our environment and create a project.

Import required libraries:

```python
import digitalhub-core as dhcore
```

Create a project:

```python
PROJECT = "demo-validation"
project = dhcore.get_or_create_project(PROJECT)
```

Check that the project has been created successfully:

```python
print(project)
```

## Set data source

The data we will use is available as a CSV file on GitHub. It is a table of organizations, with columns for the organization name, country, and city.
Set the URL to the data:

```python
URL = "https://media.githubusercontent.com/media/datablist/sample-csv-files/main/files/organizations/organizations-1000.csv"
```

Create a dataitem that represents the table and call it `table`:

```python
di = project.new_dataitem(name="table",
                          kind="dataitem",
                          path=URL)
```

## Set up the function

We can now set up the function that operates a validation task on the dataitem.
First we define the constraint that we want to validate:

```python
constraint = {
  'constraint': 'type',
  'field': 'Country',
  'field_type': 'string',
  'name': 'check_country_string',
  'resources': ['table'],
  'title': '',
  'type': 'frictionless',
  'value': 'string',
  'weight': 5
}
```

With the constraint defined, we can now create the function. We pass the constraint as the `constraints` parameter (note that the constraints parameter is a list, so we pass the constraint as a list). We also specify that we want to run the function with the `nefertem` framework:

```python
func = proj.new_function(name="demo-function",
                         kind="nefertem",
                         constraints=[constraint])
```

## Set Nefertem run configuration

We can now set up the Nefertem run configuration. We specify that we want to run the function in validation mode, and we specify the framework that we want to use for validation, which is `frictionless`:

```python
cfg = {
        "operation": "validation",
        "exec_config": [{
            "framework": "frictionless"}]
}
```

## Run the function

We can now run the function and see the results. To do this we use the `run` method of the function. To the method we pass the run configuration, and the input dataitem referenced by its name. We also specify that we want to run the function with `validate` task:

```python
run = func.run("validate",
               run_config=cfg,
               inputs={"dataitems": ["table"]})
```

As you can see, we specify the input dataitem as `table`, which is the dataitem we created earlier. This is because the function expects the dataitem to be named `table`. If you named the dataitem differently, you would need to specify the name of your dataitem instead.
Once the function has finished running, we can see the results:

```python
print(run)
```

## Explore the results

We can now explore the results of the function. A Neferetem run produces various artifacts, like reports produced by Nefertem and the framework used for validation (in our case, a Frictionless report).
We can get the artifact list from the run:

```python
artifacts = run.get_artifacts()
```

And save the artifacts to a local directory:

```python
for artifact in artifacts:
    artifact.download()
```

And we can now explore the artifacts. For example, we can read the run report:

```python
with open("run_metadata.json") as f:
    print(f.read())
```
