FROM python:3.10-slim
ARG VERSION

ENV DAGSTER_HOME=/opt/dagster/dagster_home/

RUN mkdir -p $DAGSTER_HOME /opt/dagster/code

RUN pip install dagster==$VERSION dagit==$VERSION dagster-postgres sqlalchemy\<2.0.0

#additional packages for pipelines
COPY ./requirements.txt /opt/dagster
RUN pip install -r /opt/dagster/requirements.txt

#config files for dagster instance
COPY dagster.yaml $DAGSTER_HOME

WORKDIR /opt/dagster/code