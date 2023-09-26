#!/usr/bin/env bash
NUMBER_OF_TIMES=$1
ELASTICSEARCH_URL=$2
USERNAME=elastic
PASSWORD=...
mkdir -p results
for f in C*.elastic
do
  for i in $(seq -w 1 10)
  do
    curl -k -XPOST -u $USERNAME:$PASSWORD  -H "Content-Type: application/json" 'https://localhost:9200/viagens-*/_cache/clear'
    QUERY_URL_PATH="$(sed -n 's#^GET /\?\(.*\)$#https://'$ELASTICSEARCH_URL':9200/\1#p' $f)"
    #echo $f
    grep -v '^GET' $f \
    | curl -k -XPOST -u $USERNAME:$PASSWORD  -H "Content-Type: application/json" "$QUERY_URL_PATH" --data @- \
    > results/${f/.elastic/-$i.json}
  done
done
