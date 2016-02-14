USE engine;
SELECT url FROM link WHERE solr_query='url:*health*' limit 10000000; 
