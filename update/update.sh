#!/bin/sh

wget -N --no-check-certificate https://raw.githubusercontent.com/dbcls/med2rdf-ontology/master/med2rdf.owl 2> /dev/null
cp med2rdf.owl ../ontology/med2rdf.ttl
rapper -i turtle -o rdfxml-abbrev med2rdf.owl > ../ontology/med2rdf.rdf 2> /dev/null
xsltproc --output ../ontology/med2rdf.html owl2xhtml.xsl ../ontology/med2rdf.rdf 2> /dev/null
