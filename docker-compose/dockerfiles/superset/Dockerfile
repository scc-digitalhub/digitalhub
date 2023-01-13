#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

FROM apache/superset:8f98c469fd16caa74ba4d9bf0b6a0f0e5ded7f1c-dev

USER root

RUN apt install unzip \
    && wget https://github.com/apache/superset/archive/refs/tags/2.0.1.zip \
    && unzip -q ./2.0.1.zip -d ./ \
    && mv ./superset-2.0.1/docker /app/docker \
    && rm -r ./superset-2.0.1 \
    && rm ./2.0.1.zip
    
COPY ./docker/pythonpath_dev/* /app/docker/pythonpath_dev/
COPY ./docker/requirements-local.txt /app/docker/requirements-local.txt

USER superset