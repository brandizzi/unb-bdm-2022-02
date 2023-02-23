-- Contar todas estações	
\timing
select count(*) from "VIAGENS2".estacoes ;

-- Contar todos embarques	
\timing
select count(*) from "VIAGENS2".viagens ;

-- Contar todas viagens cujo embarque foi na extração Catedral Metropolitana (id 7)	
\timing
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join  "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where viagem."idEstacaoRetirada" = 7;

-- Contar todas viagens cujo embarque foi na estação Catedral Metropolitana (id 7 ) e o Desembarque foi na estação Rodoviária (id 6)	
\timing
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join  "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where viagem."idEstacaoRetirada" = 7 and viagem."idEstacaoDevolucao" = 6 ;

-- Contar todas viagens cuja estação de embarque é a mesma que a estação de devloução	
\timing
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join  "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where viagem."idEstacaoRetirada" = viagem."idEstacaoDevolucao";

-- Contar todas viagens cujo embarque foi na extração Catedral Metropolitana (id 7 ) e o Desembarque foi na estação Rodoviária (id 6) e o Viajante é do Sexo Feminino	
\timing
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" inner join "VIAGENS2".viajantes viajantes on viagem."idViajante" = viajantes."idViajante" where viagem."idEstacaoRetirada" = 7 and viagem."idEstacaoDevolucao" = 6 and viajantes."sexo" = 'F';

-- Contar todas viagens cujo embarque foi em alguma estação onde o nome da estação contem a palavra 'Rodoviaria' 	
\timing
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" where estacaoretirada."nomeEstacao" like '%Rodoviária%';

-- Contar todas viagens cujo embarque foi em alguma estação onde o nome da estação contem a palavra 'Rodoviaria' e a estação de desembarque foi o Memorial Jo (id 1)	
\timing
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join  "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where estacaoretirada."nomeEstacao" like '%Rodoviária%' and viagem."idEstacaoDevolucao" = 1;

-- Contar todas viagens cujo embarque foi em alguma estação onde o nome da estação contem a palavra 'Rodoviaria', a estação de desembarque foi o Memorial Jk (id 1) e o viajante é do sexo Masculino	
\timing
select count(*) from "VIAGENSBICICLETAS".viagens viagem  inner join "VIAGENSBICICLETAS".viajantes viajante on viagem."idViajante" = viajante."idViajante" inner join "VIAGENSBICICLETAS".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join  "VIAGENSBICICLETAS".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where estacaoretirada."nomeEstacao" like '%Rodoviária%' and viagem."idEstacaoDevolucao" = 1 and viajante."sexo" = 'M';

-- Contar todas viagens cujo tempo de duração é maior que 60 minutos	
\timing
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".viajantes viajante on viagem."idViajante" = viajante."idViajante" inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where viagem."duracao" > 60;

-- Contar todas viagens cujo tempo de duração é maior que 60 minutos, o nome da estação contem a palavra 'Rodoviaria', a estação de desembarque foi o Memorial Jk (id 1) e o viajante é do sexo Masculino	
\timing
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".viajantes viajante on viagem."idViajante" = viajante."idViajante" inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join  "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where estacaoretirada."nomeEstacao" like '%Rodoviária%' and viagem."idEstacaoDevolucao" = 1 and viajante."sexo" = 'M' and viagem."duracao" > 60;
