-- Contar todas viagens cuja estação de embarque é a mesma que a estação de devloução	
select count(*) from "VIAGENS2".viagens viagem  inner join "VIAGENS2".estacoes estacaoretirada on  viagem."idEstacaoRetirada"  = estacaoretirada."idEstacao" inner join  "VIAGENS2".estacoes estacaodevolucao on viagem."idEstacaoDevolucao"  = estacaodevolucao."idEstacao" where viagem."idEstacaoRetirada" = viagem."idEstacaoDevolucao";

