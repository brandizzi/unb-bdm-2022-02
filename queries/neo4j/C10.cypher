match (v:viajante)-[db:DESEMBARCOU]->(e:Estacao)
where toInteger(db.duracao) >60
RETURN count(db);
