#!/bin/bash

docker kill fuseki
docker rm fuseki

docker run --name "fuseki" -v /mnt/Repositories/git/dpn-ontology:/opt/dpn-ontology -P -d csiro_env/fuseki
