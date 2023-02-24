-- Contar todas viagens cujo embarque foi na estação Catedral Metropolitana (id 7 ) e o Desembarque foi na estação Rodoviária (id 6)	
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join  "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where viagem."idEstacaoRetirada" = 7 and viagem."idEstacaoDevolucao" = 6 ;

