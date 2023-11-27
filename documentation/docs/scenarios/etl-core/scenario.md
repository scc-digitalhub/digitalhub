# ETL with digitalhub-core and DBT scenario introduction

Here we explore a proper, realistic scenario. We collect some data regarding organizations, analyze and transform it, then expose the resulting dataset.

Access Jupyter from your Coder instance and create a new notebook. If a Jupyter workspace isn't already available, create one from its template.

Open a new notebook using the digitalhub-core kernel.

We'll now start writing code. Copy the snippets of code from here and paste them in your notebook, then execute them with *Shift+Enter*. After running, Jupyter will create a new code cell.

The notebook file covering this scenario, as well as files for individual functions, are available in the `documentation/examples/etl-core` path within the repository of this documentation.

## Setup

First, we initialize our environment and create a project.

Import required libraries:

``` python
import digitalhub-core as dhcore
```

Create a project:

``` python
PROJECT = "demo-etl"
project = dhcore.get_or_create_project(PROJECT)
```

Check that the project has been created successfully:

``` python
print(project)
```

## Set data source

The data we will use is available as a CSV file on GitHub. It is a table of organizations, with columns for the organization name, country, and city.
Set the URL to the data:

``` python
URL = "https://media.githubusercontent.com/media/datablist/sample-csv-files/main/files/organizations/organizations-1000.csv"
```

Create a dataitem that represents the table and call it `table`:

``` python
di = project.new_dataitem(name="table",
                          kind="dataitem",
                          path=URL)
```

## Set up the function

We can now set up the function that operates a tranformation on data with DBT.
First we define the SQL query that will be used:

``` python
sql = """
WITH tab AS (
    SELECT  *
    FROM    {{ ref('table') }}
)
SELECT  *
FROM    tab
WHERE   tab."Country" = 'Algeria'
```

We simply select all rows from the table that have `Algeria` as the country.
Then we create the function and call it `demo-function`:

``` python
func = proj.new_function(name="demo-function",
                         kind="dbt",
                         sql=sql)
```

## Run the function

We can now run the function and see the results:

``` python
run = func.run("transform",
               inputs={"dataitems": ["table"]},
               outputs={"dataitems": ["algeria"]})
```

As you can see, we specify the input dataitem as `table`, which is the dataitem we created earlier, and the output dataitem as `algeria` which is the dataitem table that will be created by the function.

Once the function has finished running, we can see the results:

``` python
print(run)
```

## Explore the results

We can now explore the results of the function.
First, we get the dataitem that was created by the function:

``` python
di = run.get_dataitem("algeria")
```

Then we can get the dataitem as a Pandas dataframe:

``` python
df = di.as_df()
```

We can now explore the dataframe:

``` python
df.head()
```
