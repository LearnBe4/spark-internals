#!/bin/bash
set -e

SPARK_WORKLOAD=$1
SPARK_MASTER_HOST=${SPARK_MASTER_HOST:-spark-master}
SPARK_MASTER_PORT=${SPARK_MASTER_PORT:-7077}
JUPYTER_PORT=${JUPYTER_PORT:-8888}
JUPYTER_TOKEN=${JUPYTER_TOKEN:-''}
NOTEBOOK_DIR=${NOTEB00K_DIR:-'/opt/notebooks'}

echo "SPARK_WORKLOAD: SPARK_WORKLOAD"
case "$SPARK_WORKLOAD" in
  "master")
    start-master.sh -h 0.0.0.0 -p $SPARK_MASTER_PORT
    ;;
  "worker")
    start-worker.sh "spark://${SPARK_MASTER_HOST}:${SPARK_MASTER_PORT}"
    ;;
  "history")
    start-history-server.sh
    ;;
  *)
    echo "Unknown Spark Workload: ${SPARK_WORKLOAD}"
    exit 1
    ;;
esac