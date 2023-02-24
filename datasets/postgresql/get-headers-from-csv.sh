for F in *.csv ; do
  NAME=${F/.csv/}
  head -n1 $F | \
    sed '
      s/\r//g;
      s/,/","/g;
      s/\(^\|$\)/"/g
    ' | \
    sed '
      s|^.*$|copy "VIAGENS2".'$NAME' (&) FROM #/tmp/postgres-data/'$F'# DELIMITER #,# CSV HEADER ENCODING #UTF8# QUOTE #"# ESCAPE ####;|;
      s/#/'\''/g
    ' >> headers.txt
done 
cat headers.txt
