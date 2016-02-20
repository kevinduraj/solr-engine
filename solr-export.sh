#!/usr/bin/bash
#----------------------------------------------------------------------------------------------------------#
# awk 'length($1) < 5 { print $1 }' first_word.dat
# sed -i -r '/^.{,4}$/d' first_word.dat 
#----------------------------------------------------------------------------------------------------------#
#cat $KEY.dat | awk '{$1=$1};1' | tee $KEY.trim  >> /dev/null 2>&1 
#sort -S 12G --parallel=4 -uR $KEY.trim | tee $KEY.sort >> /dev/null 2>&1 
#----------------------------------------------------------------------------------------------------------#

get_link_terms()
{
    while IFS='' read -r TERM || [[ -n "$TERM" ]]; do
       echo $TERM
       cqlsh -e "SELECT url FROM engine.link WHERE solr_query='url:*$TERM*' LIMIT 1000000;" | tee -a links.dat >> /dev/null 2>&1 
    done < "first_word.dat"
}

#----------------------------------------------------------------------------------------------------------#

get_link_terms
