# Collect the data

We can perform operations on data by defining them as stateless functions, which take *input* and return *output*, carrying out their computation in an idempotent way.

The framework will ensure that every run will receive the latest version of any input dataset and correctly save its output. Connection to the data-lake, serialization of data items into storage files, packing the function into a runnable container, allocating resources, monitoring progress and cleaning up are all transparently handled.

Create a new folder to store the function's code in:
``` python
new_folder = 'src'
if not os.path.exists(new_folder):
    os.makedirs(new_folder)
```

Define a function for downloading data as-is and persisting it in the data-lake:
``` python
%%writefile "src/download-data.py"

import mlrun
import pandas as pd
import requests

@mlrun.handler(outputs=["dataset"])
def downloader(context, url: mlrun.DataItem):
    # read and rewrite to normalize and export as data
    df = url.as_df(format='csv',sep=";")
    return df
```

Register the function in MLRun:
``` python
project.set_function("src/download-data.py", name="download-data", kind="job", image="mlrun/mlrun", handler="downloader")
```

Then, execute it (locally) as a test. Note that it may take a few minutes.
``` python
project.run_function("download-data", inputs={'url':URL}, local=True)
```

The result will be saved as an artifact in the data store, versioned and addressable with a unique key. By default, this key follows the format `<function-name>-<handler>-<output>`.

Write this key into a variable, so we can read the artifact:
``` python
DF_KEY = 'store://datasets/demo-etl/download-data-downloader_dataset'
```

Load the data item and then into a data frame:
``` python
di = mlrun.get_dataitem(DF_KEY)
df = di.as_df()
```

Run `df.head()` and, if it prints a few records, you can confirm that the data was properly stored. It's time to process this data.