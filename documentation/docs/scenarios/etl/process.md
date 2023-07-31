# Process the data

Raw data, as ingested from the remote API, is usually not suitable for consumption. We'll define a set of functions to process it.

Define a function to derive the dataset, group information about spires (`id`, `geolocation`, `address`, `name`...) and save the result in the store:
``` python
%%writefile "src/process-spire.py"

import mlrun
import pandas as pd

KEYS=['codice spira','longitudine','latitudine','Livello','tipologia','codice','codice arco','codice via','Nome via', 'stato','direzione','angolo','geopoint']

@mlrun.handler(outputs=["dataset-spire"])
def process(context, di: mlrun.DataItem):
    df = di.as_df()
    sdf= df.groupby(['codice spira']).first().reset_index()[KEYS]
    
    return sdf
```

Register the function in MLRun:
``` python
project.set_function("src/process-spire.py", name="process-spire", kind="job", image="mlrun/mlrun", handler="process")
```

Run it locally:
``` python
project.run_function("process-spire", inputs={'di': DF_KEY}, local=True)
```

The results has been saved as an artifact in the data store. Assign its unique key to a variable, load the data item and convert it to a data frame:
``` python
SDF_KEY = 'store://datasets/demo-etl/process-spire-process_dataset-spire'
sdf = mlrun.get_dataitem(SDF_KEY).as_df()
```

Now you can view the results with `sdf.head()`.

Let's transform the data. We will extract a new data frame, where each record contains the identifier of the spire and how much traffic it detected on a specific date and time slot.

A record that looks like this:

| data | codice spira | 00:00-01:00 | 01:00-02:00 | ... | Nodo a | ordinanza | stato | codimpsem | direzione | angolo | longitudine | latitudine | geopoint | giorno settimana |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 2023-03-25 | 0.127 3.88 4 1 | 90 | 58 | ... | 15108 | 4000/343434 | A | 125 | NO | 355.0 | 11.370234 | 44.509137 | 44.5091367043883, 11.3702339463537 | Sabato |

Will become 24 records, each containing the spire's code and recorded traffic within each time slot in a specific date:

| time | codice spira | value |
| ---- | ------------ | ----- |
| 2023-03-25 00:00 | 0.127 3.88 4 1 | 90 |
| ... | ... | ... |

Load the data item into a data frame and remove all columns except for date, spire identifier and recorded values for each time slot:
``` python
df = mlrun.get_dataitem(DF_KEY).as_df()
keys = ['00:00-01:00', '01:00-02:00', '02:00-03:00', '03:00-04:00', '04:00-05:00', '05:00-06:00', '06:00-07:00', '07:00-08:00', '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00', '12:00-13:00', '13:00-14:00', '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00', '18:00-19:00', '19:00-20:00', '20:00-21:00', '21:00-22:00', '22:00-23:00', '23:00-24:00']
columns=['data','codice spira'] + keys
rdf = df[columns]
```

Derive dataset for recorded traffic within each time slot for each spire:
``` python
ls = []

for key in keys:
    k = key.split("-")[0]
    xdf = rdf[['data','codice spira',key]]
    xdf['time'] = xdf.data.apply(lambda x: x+' ' +k)
    xdf['value'] = xdf[key]
    vdf = xdf[['time','codice spira','value']]
    ls.append(vdf)

edf = pd.concat(ls)
```

You can verify with `edf.head()` that the derived dataset matches our goal.

Let's put this into a function:
``` python
%%writefile "src/process-measures.py"

import mlrun
import pandas as pd

KEYS = ['00:00-01:00', '01:00-02:00', '02:00-03:00', '03:00-04:00', '04:00-05:00', '05:00-06:00', '06:00-07:00', '07:00-08:00', '08:00-09:00', '09:00-10:00', '10:00-11:00', '11:00-12:00', '12:00-13:00', '13:00-14:00', '14:00-15:00', '15:00-16:00', '16:00-17:00', '17:00-18:00', '18:00-19:00', '19:00-20:00', '20:00-21:00', '21:00-22:00', '22:00-23:00', '23:00-24:00']
COLUMNS=['data','codice spira']

@mlrun.handler(outputs=["dataset-measures"])
def process(context, di: mlrun.DataItem):
    df = di.as_df()
    rdf = df[COLUMNS+KEYS]
    ls = []
    for key in KEYS:
        k = key.split("-")[0]
        xdf = rdf[COLUMNS + [key]]
        xdf['time'] = xdf.data.apply(lambda x: x+' ' +k)
        xdf['value'] = xdf[key]
        ls.append(xdf[['time','codice spira','value']])
    edf = pd.concat(ls)
    return edf
```

Register it:
``` python
project.set_function("src/process-measures.py", name="process-measures", kind="job", image="mlrun/mlrun", handler="process")
```

Run it locally:
``` python
project.run_function("process-measures", inputs={'di': DF_KEY}, local=True)
```

Inspect the resulting data artifact:
``` python
MDF_KEY = 'store://datasets/demo-etl/process-measures-process_dataset-measures'
mdf = mlrun.get_dataitem(MDF_KEY).as_df()
mdf.head()
```

Now that we have defined three functions to collect data, process it and extract information, let's put them in a pipeline.