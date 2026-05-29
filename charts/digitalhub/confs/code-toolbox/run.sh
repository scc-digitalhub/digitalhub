#!/bin/bash

# SPDX-FileCopyrightText: © 2025 DSLab - Fondazione Bruno Kessler
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cp -rT /etc/skel ${HOME}

if command -v uv > /dev/null 2>&1
then
  echo "uv is already installed"
else
  if [[ -v NODE_EXTRA_CA_CERTS ]]
  then
    wget -qO- --ca-certificate="${NODE_EXTRA_CA_CERTS}" https://astral.sh/uv/install.sh | sh
    echo "uv has been installed with custom CA certificate"
  else
    wget -qO- https://astral.sh/uv/install.sh | sh
    echo "uv has been installed without custom CA certificate"
  fi
fi
source $HOME/.local/bin/env

uv venv --system-site-packages python${PYTHON_VERSION} --python ${PYTHON_VERSION} --allow-existing
source python${PYTHON_VERSION}/bin/activate

if ! command -v jupyter-lab > /dev/null 2>&1; then
  printf "Installing jupyterlab!\n"
  uv pip install -q jupyterlab \
    && printf "%s\n" "🥳 jupyterlab has been installed"
else
  printf "%s\n\n" "🥳 jupyterlab is already installed"
fi

uv {{ include "digitalhub.packages" . }} jupyterlab-git ipykernel ipywidgets

if ! jupyter kernelspec list | grep -q "local/share/jupyter/kernels/python${PYTHON_VERSION}"
then
  python -m ipykernel install --user --name=python${PYTHON_VERSION} --display-name "Python ${PYTHON_VERSION} (OltreAI)"
fi

if ! grep -Fxq "source python${PYTHON_VERSION}/bin/activate" .bashrc
then
  echo "source $HOME/python${PYTHON_VERSION}/bin/activate" >> .bashrc
  echo "alias pip='uv pip'" >> .bashrc
fi

printf "👷 Starting jupyterlab in background..."
printf "check logs at ${JUPYTER_LOG_PATH}"
jupyter-lab --no-browser \
  --ServerApp.ip='*' \
  --ServerApp.port="${JUPYTER_PORT}" \
  --ServerApp.token='' \
  --ServerApp.password='' \
  --ServerApp.root_dir="${HOME}" \
  --KernelSpecManager.allowed_kernelspecs="python${PYTHON_VERSION}" \
  > "${JUPYTER_LOG_PATH}" 2>&1 &
