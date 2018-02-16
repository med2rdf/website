#!/bin/sh

wget -N --no-check-certificate https://raw.githubusercontent.com/dbcls/med2rdf-ontology/master/med2rdf.owl 2> /dev/null
cp med2rdf.owl med2rdf.ttl
rapper -i turtle -o rdfxml-abbrev med2rdf.owl > med2rdf.rdf 2> /dev/null
xsltproc --output index.html owl2xhtml.xsl med2rdf.rdf 2> /dev/null
