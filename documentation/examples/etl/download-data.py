
import mlrun
import pandas as pd
import requests

@mlrun.handler(outputs=["dataset"])
def downloader(context, url: mlrun.DataItem):  
    # read and rewrite to normalize and export as data
    df = url.as_df(format='csv',sep=";")
    return df
