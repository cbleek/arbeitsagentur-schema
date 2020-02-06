#!/bin/bash

DIR=./

XSLTPROC=/usr/bin/xsltproc

for file in berufe kompetenzen vam_beruf
do
  echo "sort $file"
  $XSLTPROC ${file}.xsl ${DIR}${file}.xml > ${DIR}.${file}.xml && mv ${DIR}.${file}.xml ${DIR}${file}.xml
done

