#!/usr/bin/env bash
rm -f time*.csv
for f in C*.json
do
  [[ $f =~ (C[0-9]*)-([0-9]*).json ]]
  QUERY_NUMBER=${BASH_REMATCH[1]}
  EXECUTION_NUMBER=${BASH_REMATCH[2]}
  COUNT="$(jq '.hits.total.value' $f)"
  if [ -z "$COUNT" -o "$COUNT" = "null" ]
  then
    COUNT="$(jq '.aggregations.estacoes.value' $f)"
  fi
  jq '.took' $QUERY_NUMBER-*.json \
  | tr '\n' ',' \
  | sed '
    s/,$/"\n/g ;
    s/,/","/g ;
    s/^/"'${QUERY_NUMBER}'","'$COUNT'","/
  ' > time-$f.csv
done
cat time-*.csv | uniq > times.csv  
