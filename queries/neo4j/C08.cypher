match (v:viajante)-[em:EMBARCOU]->(e:Estacao),
(v:viajante)-[db:DESEMBARCOU]->(e2:Estacao{estacaoId:'1'})
where e.estacaoNome CONTAINS  'Rodoviária' 
return count(em);
