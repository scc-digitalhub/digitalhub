
import mlrun
import pandas as pd

KEYS=['codice spira','longitudine','latitudine','Livello','tipologia','codice','codice arco','codice via','Nome via', 'stato','direzione','angolo','geopoint']

@mlrun.handler(outputs=["dataset-spire"])
def process(context, di: mlrun.DataItem):
    df = di.as_df()
    sdf= df.groupby(['codice spira']).first().reset_index()[KEYS]
    
    return sdf
