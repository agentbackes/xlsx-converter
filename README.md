# Development with Python `xlsx-converter`

This example shows how to develop and deploy Python `xlsx-converter` to transform excel sheets to csv files.

## System requirements

* [Docker](https://docs.docker.com/get-docker/)
* [Docker Compose](https://docs.docker.com/compose/install/)

## Getting started

1. Clone this repository.
2. To build and deploy Docker container run following line:
    ```sh
    docker-compose up -d
    ```
3. Jupyter notebook will be available on `localhost:8888`.

## Run Python `xlsx-converter` as Jupyter notebook

For an better understanding of the Python `xlsx-converter` there is an Jupyter notebook available on Docker container. 

1. Check if your Docker container is running:
    ```bash
    docker ps
    ```
2. Open URL `localhost:8888`.
3. You are now able to select `xlsx-converter.ipynb`. 