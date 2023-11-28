-- Listar todos os cursos e as respectivas quantidade de disciplinas em cada grade.

SELECT
    c.nome,
    g.ano,
    count(*) qtd
FROM curso c
    INNER JOIN grade g ON (g.idCurso = c.idCurso)
    INNER JOIN grade_disciplina gd ON (gd.idGrade = g.idGrade)
GROUP BY c.nome, g.ano