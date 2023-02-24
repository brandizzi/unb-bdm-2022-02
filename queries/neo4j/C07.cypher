match (v:viajante)-[em:EMBARCOU]->(e:Estacao)
where e.estacaoNome CONTAINS  'Rodoviária'
return count(em);
