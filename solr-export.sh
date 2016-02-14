#!/usr/bin/bash

KEY='health'
#-------------------------------------------------------------------------#
cqlsh -f export-links-solr.cql | tee $KEY >> /dev/null 2>&1 

#cat $KEY | awk '{$1=$1};1' | tee $KEY.trim

#sort -S 12G --parallel=4 -uR $KEY.trim | tee $KEY.sort >> /dev/null 2>&1 
#-------------------------------------------------------------------------#

