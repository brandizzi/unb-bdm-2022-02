match (v:viajante)-[em:EMBARCOU]->(:Estacao{estacaoId:'7'}),
(v:viajante)-[db:DESEMBARCOU]->(:Estacao{estacaoId:'6'})
where v.sexo='F'
return count(v)
