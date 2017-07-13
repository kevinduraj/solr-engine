#!/usr/bin/bash

curl http://192.168.1.159:8983/solr/resource/solr2.patient/solrconfig.xml --data-binary @solrconfig.xml -H 'Content-type:text/xml; charset=utf-8'
curl http://192.168.1.159:8983/solr/resource/solr2.patient/schema.xml --data-binary @schema.xml -H 'Content-type:text/xml; charset=utf-8'

