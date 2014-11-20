#!/bin/bash

docker kill fuseki
docker rm fuseki


docker build -t csiro_env/fuseki .

