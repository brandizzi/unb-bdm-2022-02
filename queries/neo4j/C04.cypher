match (v:viajante)-[em:EMBARCOU]->(:Estacao{estacaoId:'7'}),
(v:viajante)-[db:DESEMBARCOU]->(:Estacao{estacaoId:'6'})
return count(v);
