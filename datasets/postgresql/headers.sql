copy "VIAGENS2".bicicletas ("idBicicleta","serial") FROM '/tmp/postgres-data/bicicletas.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8' QUOTE '"' ESCAPE '''';
copy "VIAGENS2".estacoes ("idEstacao","nomeEstacao","areaEstacao","enderecoEstacao") FROM '/tmp/postgres-data/estacoes.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8' QUOTE '"' ESCAPE '''';
copy "VIAGENS2".viagens ("idViagem","idViajante","idBicicleta","idEstacaoDevolucao","idEstacaoRetirada","diaSemana","dataCorrida","horaRetirada","meio","horaDevolucao","duracao") FROM '/tmp/postgres-data/viagens.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8' QUOTE '"' ESCAPE '''';
copy "VIAGENS2".viajantes ("idViajante","nomeViajante","sexo","anoNascimento","pais") FROM '/tmp/postgres-data/viajantes.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8' QUOTE '"' ESCAPE '''';
