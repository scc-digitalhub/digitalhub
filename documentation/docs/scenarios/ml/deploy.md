# Deploy and expose the model

Deploying a model is as easy as defining a serverless function, providing the model reference and then deploying.

Create a model serving function and provide the model:
``` python
serving_fn = mlrun.new_function("serving", image="python:3.9", kind="serving", requirements=["mlrun[complete]", "scikit-learn~=1.2.0"])
serving_fn.add_model('cancer-classifier',model_path=trainer_run.outputs["model"], class_name='mlrun.frameworks.sklearn.SklearnModelServer')
```

Deploy (it may take several minutes):
``` python
project.deploy_function(serving_fn)
```

You can now test the endpoint:
``` python
my_data = {"inputs"
           :[[
               1.371e+01, 2.083e+01, 9.020e+01, 5.779e+02, 1.189e-01, 1.645e-01,
               9.366e-02, 5.985e-02, 2.196e-01, 7.451e-02, 5.835e-01, 1.377e+00,
               3.856e+00, 5.096e+01, 8.805e-03, 3.029e-02, 2.488e-02, 1.448e-02,
               1.486e-02, 5.412e-03, 1.706e+01, 2.814e+01, 1.106e+02, 8.970e+02,
               1.654e-01, 3.682e-01, 2.678e-01, 1.556e-01, 3.196e-01, 1.151e-01]
            ]
}
serving_fn.invoke("/v2/models/cancer-classifier/infer", body=my_data)
```

## Create an API gateway

To make the API accessible from outside, we'll need to create an API gateway in Nuclio.

Go to your Coder instance, go to the dashboard and access Nuclio. You will notice a `demo-ml` project, which we created earlier. When you access it, you will see the `demo-ml-serving` function listed, but click on the *API GATEWAYS* tab on top instead. Then, click on *NEW API GATEWAY*.

On the left, if you wish, set *Authentication* to *Basic* and choose *Username* and *Password*.

In the middle, set any *Name* you want. *Host* must use the same domain as the other components of the Digital Hub. For example, if you access Coder at `coder.my-digitalhub-instance.it`, the *Host* field should use a value like `demo-ml.my-digitalhub-instance.it`.

On the right, under *Primary*, you must enter the name of the function, in this case `demo-ml-serving`.

*Save* and, after a few moments, you will be able to call the API at the address you entered in *Host*! If you set *Authentication* to *Basic*, don't forget that you have to provide the credentials.