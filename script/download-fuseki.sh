#!/bin/bash
distr=`curl -silent https://www.apache.org/dist/jena/binaries/ | perl -ne '/href="(apache-jena-fuseki-\d\.\d\.\d).tar.gz"/ && print $1'`
echo "wget --no-check-certificate --quiet https://www.apache.org/dist/jena/binaries/$distr.tar.gz -O- | tar -zx --strip-components 1 -C /opt/fuseki/ $distr"
wget --no-check-certificate --quiet https://www.apache.org/dist/jena/binaries/$distr.tar.gz -O- | tar -zx --strip-components 1 -C /opt/fuseki/ $distr
