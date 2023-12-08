-- Faça uma consulta que indique quais disciplinas estão repetidas e quantas repetições existem. 
-- Considere apenas o campo nome.

SELECT nome, count(*)
FROM disciplina
GROUP BY nome
ORDER BY 2 desc