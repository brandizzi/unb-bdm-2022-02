Match
(e:Estacao{estacaoId:'7'})
with e
match (:viajante)-[em:EMBARCOU]->(e)
return  count (em)

