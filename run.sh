#!/bin/bash

docker kill fuseki
docker rm fuseki

docker run --name "fuseki" -P -d csiro_env/fuseki
