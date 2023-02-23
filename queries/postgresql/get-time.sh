#!/usr/bin/env bash
rm -f times.csv
for f in C*.txt
do
  COUNT=$(sed -n 's/^  *\([0-9]*\)$/\1/p' $f | sort -u |tr -d '\n')
  sed -n 's/Time: \(.*\) ms/\1/p' $f \
  | tr '\n' ',' \
  | sed '
    s/,$/"/g ;
    s/,/","/g ;
    s/^/"'${f/.txt/}'","'$COUNT'","/
  ' >> times.csv
  echo >> times.csv
done

