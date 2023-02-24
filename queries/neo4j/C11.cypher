match (v:viajante)-[em:EMBARCOU]->(e:Eestacao),
(v:viajante)-[db:DESEMBARCOU]->(e2:Eestacao{estacaoId:'1'})
where e.estacaoNome CONTAINS  'Rodoviária'  and v.sexo='M' and db.duracao >60
return count(em)
