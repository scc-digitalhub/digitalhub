
import mlrun
import pandas as pd
import os

DF_URL = os.environ["DF_URL"]
df = None


def init_context(context):
    global df
    context.logger.info("retrieve data from {}".format(DF_URL))
    di = mlrun.run.get_dataitem(DF_URL)
    df = di.as_df()


def handler(context, event):
    global df
    if df is None:
        return context.Response(
            body="", headers={}, content_type="application/json", status_code=500
        )

    # mock REST api
    method = event.method
    path = event.path
    fields = event.fields

    id = False

    # pagination
    page = 0
    pageSize = 50

    if "page" in fields:
        page = int(fields['page'])

    if "size" in fields:
        pageSize = int(fields['size'])

    if page < 0:
        page = 0

    if pageSize < 1:
        pageSize = 1

    if pageSize > 100:
        pageSize = 100

    start = page * pageSize
    end = start + pageSize
    total = len(df)

    if end > total:
        end = total

    ds = df.iloc[start:end]
    json = ds.to_json(orient="records")

    res = {"data": json, "page": page, "size": pageSize, "total": total}

    return context.Response(
        body=res, headers={}, content_type="application/json", status_code=200
    )
