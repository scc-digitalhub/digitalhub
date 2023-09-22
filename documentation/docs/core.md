# Core

The Digital Hub relies on a number of core software for its essential needs like storage, servicing and deployment of applications.

## Storage

The platform uses a unified store composed by two types of storage:

- [MinIO](https://min.io/), a S3-compatible object store as *persistence* store for (un)structured, immutable data
- [Postgres](https://www.postgresql.org/), a relational database as *operational* store for mutable data, rich with extensions, including ones for geospatial and time-series data.

By using [Dremio](https://www.dremio.com/), data can be viewed, accessed and queried in a unified way. This component is described in higher detail [in its own section](/digitalhub/components/dremio).

## Function-as-a-Service

[Nuclio](https://nuclio.io/) allows deploying and hosting serverless functions, most notably written in *Python*, but also other languages such as *Java* or *Go*, that may be executed as REST APIs. An API gateway can then be created to publish them and optionally require authentication. As Nuclio functions run within containers, Nuclio uses Kubernetes to handle their deployment and availability.

[Kubeflow](https://www.kubeflow.org/) is a tool to simplify deploying machine-learning workflows on Kubernetes, by defining DAGs where each step is a function with input/output data.

## Workspaces

[Coder](https://coder.com/) enables organizations to set development tools up in the cloud, so developers can access them conveniently and within a collaborative environment. In the platform, it is used as a hub to deploy and access a number of other components.

Among its primary features are **templates**, which can be used to easily create workspaces and launch tools. The Digital Hub comes with a number of templates already available.


## Monitoring

TODO - Monitoring features are work-in-progress.