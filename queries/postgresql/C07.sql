-- Contar todas viagens cujo embarque foi em alguma estação onde o nome da estação contem a palavra 'Rodoviaria' 	
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" where estacaoretirada."nomeEstacao" like '%Rodoviária%';

