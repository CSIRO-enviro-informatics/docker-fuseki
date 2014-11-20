# docker-fuseki
Docker script inspired by https://github.com/fisch42/docker-fuseki. Adds supervisord and sshd.

A Dockerfile that produces a docker container based on ubuntu that will
run [Fuseki](http://jena.apache.org/documentation/serving_data/index.html).

You can run the container with the flag `-e OPTS=<opts>` to pass custom
[options](http://jena.apache.org/documentation/serving_data/index.html#running-a-fuseki-server).

Fuseki provides RDF triple store with SPARQL query endpoints.  

By default, this Fuseki deployment uses the config/config.ttl as the configuration for the service.
Customise this file or pass the OPTS flag to alter the default behaviour. 
More info about customising the Fuseki config file is here:
https://jena.apache.org/documentation/serving_data/#fuseki-configuration-file


Pre-requisites:
* Docker 1.0+
* Git

Quick-start
-----------

1. Clone this repo.

2. Build: sudo ./build.sh

3. Run: sudo ./run.sh

Inspect the running container for the ports for ssh and fuseki.


Clean-up: sudo ./clean-up.sh


Loading RDF data
----------------

1. Using Fuseki Sparql-over-http (SOH) scripts

The Fuseki package comes with SOH scripts. These are useful to interact and manage RDF data on the Fuseki server.
See https://jena.apache.org/documentation/serving_data/soh.html


2. Loading RDF data using curl

Alternative to SOH, you can use curl to interact with the Fuseki HTTP rest interface

(Examples coming soon...)
