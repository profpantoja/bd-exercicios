-- Listar os politécnicos que tem no mínimo 2 cursos cadastrados.

SELECT p.nome politecnico, count(*) as cursos
FROM politecnico p 	
	INNER JOIN curso c ON (p.idPolitecnico = c.idPolitecnico)
GROUP BY p.nome
	HAVING cursos >= 3