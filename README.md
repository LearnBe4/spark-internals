# spark-internals
Understand how spark works internally using pysaprk

## Pre-requisites
1. [Install Docker](https://docs.docker.com/desktop/)
2. [Install Python](https://www.python.org/downloads/)
3. [Install Poetry](https://python-poetry.org/docs/#installing-with-the-official-installer)

## Setup:
- Once all requirements are installed, Pull the repository:
```bash
git clone https://github.com/LearnBe4/spark-internals.git
```
- Run the following command to install the dependencies and bring up the docker container:
```bash
poetry install
docker compose up
```

## Web UIs
- The Jupyter Notebook: `localhost:8080`
  - Token: jupyter
- Spark UI: `localhost:4040`
- Spark Master Node: `localhost:9090`
- Spark History Server: `localhost:18080`

### Datasets:
1. [Fire Department Calls For Service (2016)](https://data.sfgov.org/Public-Safety/Fire-Department-Calls-For-Service-2016-/kikm-y2iv/about_data) 