#!/bin/bash
set -e

# Set Spark-related environment variables
SPARK_MASTER_HOST=${SPARK_MASTER_HOST:-spark-master}
SPARK_MASTER_PORT=${SPARK_MASTER_PORT:-7077}
JUPYTER_PORT=${JUPYTER_PORT:-8888}
JUPYTER_TOKEN=${JUPYTER_TOKEN:-''}
NOTEBOOK_DIR=${NOTEBOOK_DIR:-'/opt/notebooks'}

# Start JupyterLab
jupyter lab --ip=0.0.0.0 --port=$JUPYTER_PORT --no-browser --allow-root --NotebookApp.token="$JUPYTER_TOKEN" --notebook-dir="$NOTEBOOK_DIR"

# Add required JupyterLab extensions
pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jupyter nbextension enable hinterland/hinterland