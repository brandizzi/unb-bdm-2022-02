-- Contar todas viagens cujo tempo de duração é maior que 60 minutos	
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".viajantes viajante on viagem."idViajante" = viajante."idViajante" inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where viagem."duracao" > 60;

