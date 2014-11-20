# docker-fuseki
Docker script inspired by https://github.com/fisch42/docker-fuseki. Adds supervisord and sshd.

A Dockerfile that produces a docker container based on ubuntu that will
run [Fuseki](http://jena.apache.org/documentation/serving_data/index.html).

You can run the container with the flag `-e OPTS=<opts>` to pass custom
[options](http://jena.apache.org/documentation/serving_data/index.html#running-a-fuseki-server).
