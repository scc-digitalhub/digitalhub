
import mlrun
import pandas as pd


KEYS = ['00:00-01:00',
         '01:00-02:00',
         '02:00-03:00',
         '03:00-04:00',
         '04:00-05:00',
         '05:00-06:00',
         '06:00-07:00',
         '07:00-08:00',
         '08:00-09:00',
         '09:00-10:00',
         '10:00-11:00',
         '11:00-12:00',
         '12:00-13:00',
         '13:00-14:00',
         '14:00-15:00',
         '15:00-16:00',
         '16:00-17:00',
         '17:00-18:00',
         '18:00-19:00',
         '19:00-20:00',
         '20:00-21:00',
         '21:00-22:00',
         '22:00-23:00',
         '23:00-24:00']
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
