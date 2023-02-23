-- Contar todas viagens cujo embarque foi em alguma estação onde o nome da estação contem a palavra 'Rodoviaria' e a estação de desembarque foi o Memorial Jo (id 1)	
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join  "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where estacaoretirada."nomeEstacao" like '%Rodoviária%' and viagem."idEstacaoDevolucao" = 1;

