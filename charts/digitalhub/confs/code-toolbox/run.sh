#!/bin/bash
if command -v uv > /dev/null 2>&1
then
  echo "uv is already installed"
else
  wget -qO- https://astral.sh/uv/install.sh | sh
  echo "uv has been installed"
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

uv {{ include "digitalhub.packages" . }}

if ! grep -Fxq "source python${PYTHON_VERSION}/bin/activate" .bashrc
then
  echo "source python${PYTHON_VERSION}/bin/activate" >> .bashrc
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
  > "${JUPYTER_LOG_PATH}" 2>&1 &
