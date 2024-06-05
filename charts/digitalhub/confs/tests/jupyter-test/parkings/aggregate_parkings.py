
import mlrun
import pandas as pd
import requests

@mlrun.handler(outputs=["parking_data_aggregated"])
def aggregate_parkings(context, di: mlrun.DataItem):
    """
    Aggregates parking data based on the given input data item.

    Parameters:
        context (mlrun.MLClientCtx): The MLRun context object.
        di (mlrun.DataItem): The input data item.

    Returns:
        pandas.DataFrame: The aggregated parking data.

    Example:
        aggregate_parkings(context, di)
    """
    rdf = di.as_df()
    rdf['data'] = pd.to_datetime(rdf['data'])
    rdf['day'] = rdf['data'].apply(lambda t: t.replace(second=0, minute=0))
    rdf['hour'] = rdf['day'].dt.hour
    rdf['dow'] = rdf['day'].dt.dayofweek
    rdf = rdf.drop(columns=['data'])
    grouped = rdf.groupby(['parcheggio','day']).mean()
    df_aggregated = grouped.reset_index()
    return df_aggregated
