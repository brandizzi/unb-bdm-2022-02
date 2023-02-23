#!/usr/bin/env bash
NUMBER_OF_TIMES=$1
PGPOOL_POD=$2
POSTGRESQL_HOST=localhost
POSTGRESQL_PORT=9999
POSTGRESQL_USER=postgres
mkdir -p results
for f in C*.sql
do
  TEMP=$(mktemp)
  echo '\timing' >> $TEMP
  for i in $(seq -w 1 $NUMBER_OF_TIMES)
  do
    cat $f >> $TEMP
  done

  cat $TEMP | \
    kubectl exec $PGPOOL_POD -i --  psql -U $POSTGRESQL_USER  -h $POSTGRESQL_HOST  -p $POSTGRESQL_PORT | \
     tee results/${f/.sql/.txt}

  rm $TEMP
done
