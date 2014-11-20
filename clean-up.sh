#!/bin/bash

#remove images
docker images  | grep none | awk '{print $3}' | xargs -L 1 -r docker rmi

#remove docker containers with exit status
docker ps -a  | grep 'Exit' | awk '{print $1}' | xargs -L 1 -r docker rm
