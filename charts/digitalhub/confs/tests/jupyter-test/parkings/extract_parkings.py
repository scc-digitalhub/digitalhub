
import mlrun
import pandas as pd
import requests

@mlrun.handler(outputs=["parkings"])
def extract_parkings(context, di: mlrun.DataItem):
    """
        Extracts parkings from a given data item and returns a DataFrame.

        Parameters:
        - context: The MLRun context object.
        - di: The data item containing the input data.

        Returns:
        - df_parcheggi: A DataFrame containing the extracted parkings information.
    """
    KEYS = ['parcheggio', 'lat', 'lon', 'posti_totali']
    df_parcheggi = di.as_df().groupby(['parcheggio']).first().reset_index()[KEYS]
    return df_parcheggi
