# Training the model

MLRun integrates a set of pre-configured, pre-made functions which support both training and evaluation phases for several frameworks:

- [SciKit-Learn](https://docs.mlrun.org/en/latest/api/mlrun.frameworks/mlrun.frameworks.sklearn.html)
- [TensorFlow (and Keras)](https://docs.mlrun.org/en/latest/api/mlrun.frameworks/mlrun.frameworks.tf_keras.html)
- [PyTorch](https://docs.mlrun.org/en/latest/api/mlrun.frameworks/mlrun.frameworks.pytorch.html)
- [XGBoost](https://docs.mlrun.org/en/latest/api/mlrun.frameworks/mlrun.frameworks.xgboost.html)
- [LightGBM](https://docs.mlrun.org/en/latest/api/mlrun.frameworks/mlrun.frameworks.lgbm.html)
- [ONNX](https://docs.mlrun.org/en/latest/api/mlrun.frameworks/mlrun.frameworks.onnx.html)

MLRun's auto-trainer can train and evaluate models for supported frameworks, in a fully autonomous and automated way.

Import the auto-trainer:
``` python
trainer = mlrun.import_function('hub://auto_trainer')
```

Run it on the cluster (it may take a few minutes):
``` python
trainer_run = project.run_function(trainer,
    inputs={"dataset": gen_data_run.outputs["dataset"]},
    params = {
        "model_class": "sklearn.ensemble.RandomForestClassifier",
        "train_test_split_size": 0.2,
        "label_columns": "label",
        "model_name": 'cancer',
    }, 
    handler='train',
)
```

Lastly, we'll deploy and test the model.
