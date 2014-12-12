#!/bin/bash

docker kill fuseki
docker rm fuseki

docker run --name "fuseki" -P -p 3030:3030 -d csiro_env/fuseki
