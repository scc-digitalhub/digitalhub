import pandas as pd
import numpy as np
import mlflow

from urllib.error import HTTPError
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score
from sklearn.linear_model import ElasticNet
from sklearn.model_selection import train_test_split
from dagster import job, op, repository, make_values_resource, Out, get_dagster_logger

def eval_metrics(actual, pred):
    rmse = np.sqrt(mean_squared_error(actual, pred))
    mae = mean_absolute_error(actual, pred)
    r2 = r2_score(actual, pred)
    return rmse, mae, r2

@op(config_schema={"csv_url": str})
def read_wine_quality_csv(context):
    """
    Read the wine-quality CSV file from the URL
    """
    logger = get_dagster_logger()
    csv_url = context.op_config["csv_url"]
    try:
        data = pd.read_csv(csv_url, sep=";")
        return data
    except HTTPError as http_error:
        logger.error(f"Unable to download training & test CSV: {http_error.getcode()} {http_error.msg}")
        raise http_error
    except Exception as e:
        logger.error(f"Unable to download training & test CSV, check your internet connection. Error: {e}")
        raise e

@op(out={"train_x": Out(), "test_x": Out(), "train_y": Out(), "test_y": Out()})
def split_into_training_and_test_sets(data):
    """
    Split the data into training and test sets. (0.75, 0.25) split.
    The predicted column is "quality" which is a scalar from [3, 9]
    """
    train, test = train_test_split(data)
    train_x = train.drop(["quality"], axis=1)
    test_x = test.drop(["quality"], axis=1)
    train_y = train[["quality"]]
    test_y = test[["quality"]]

    return train_x, test_x, train_y, test_y

@op(required_resource_keys={"hyperparameters"})
def fit_model(context, train_x, train_y):
    alpha = context.resources.hyperparameters["alpha"]
    l1_ratio = context.resources.hyperparameters["l1_ratio"]
    logger = get_dagster_logger()
    logger.info(f"Hyperparameters: alpha={alpha}, l1_ratio={l1_ratio}")

    linear_regr = ElasticNet(alpha=alpha, l1_ratio=l1_ratio, random_state=42)
    linear_regr.fit(train_x, train_y)
    return linear_regr

@op
def evaluate_model(linear_regr, test_x, test_y):
    predicted_qualities = linear_regr.predict(test_x)
    metrics = eval_metrics(test_y, predicted_qualities)
    logger = get_dagster_logger()
    logger.info(f"Metrics: {metrics}")
    return metrics

@op(config_schema={"tracking_server_uri": str, "experiment_name": str}, required_resource_keys={"hyperparameters"})
def log_on_mlflow(context, metrics, linear_regr):
    remote_server_uri = context.op_config["tracking_server_uri"]
    experiment_name = context.op_config["experiment_name"]
    alpha = context.resources.hyperparameters["alpha"]
    l1_ratio = context.resources.hyperparameters["l1_ratio"]
    (rmse, mae, r2) = metrics

    #set remote tracking server URI
    mlflow.set_tracking_uri(remote_server_uri)

    #get or create experiment for the run (optional, otherwise default is used)
    if experiment_name:
        mlflow.set_experiment(experiment_name) #set as active experiment (if non existing, it is created)

    with mlflow.start_run(): #start a run under the active experiment
        mlflow.log_params({
            "alpha": alpha,
            "l1_ratio": l1_ratio
        })
        mlflow.log_metrics({
            "rmse": rmse,
            "mae": mae,
            "r2": r2
        })
        mlflow.sklearn.log_model(linear_regr, "model", registered_model_name="ElasticnetWineModel")

@job(
    resource_defs={
        "hyperparameters": make_values_resource(alpha=float, l1_ratio=float)
    })
def wine_quality_model():
    data = read_wine_quality_csv()
    train_x, test_x, train_y, test_y = split_into_training_and_test_sets(data)
    linear_regr = fit_model(train_x, train_y)
    metrics = evaluate_model(linear_regr, test_x, test_y)
    log_on_mlflow(metrics, linear_regr)

@repository
def ml_repository():
    return [wine_quality_model]

#Example configuration
# ops:
#   read_wine_quality_csv:
#     config:
#       csv_url: https://raw.githubusercontent.com/mlflow/mlflow/master/tests/data/winequality-red.csv
#   log_on_mlflow:
#     config:
#       tracking_server_uri: http://mlflow:5100
#       experiment_name: wine_quality_experiment2
# resources:
#   hyperparameters:
#     config:
#       alpha: 0.5
#       l1_ratio: 0.5