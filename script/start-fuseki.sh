#!/bin/bash
FUSEKI_HOME=/opt/fuseki/
#OPTS=${OPTS:-"--update --loc=/data /ds"}
OPTS=${OPTS:-"--config $FUSEKI_HOME/config/config.ttl"}
cd /opt/fuseki/
./fuseki-server $OPTS
