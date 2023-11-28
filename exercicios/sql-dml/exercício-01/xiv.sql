-- Contar quantas disciplinas existem na grade de 2020 do curso Gestao de Marketing.

SELECT count(*) qtd
FROM disciplina d
    INNER JOIN grade_disciplina gd ON (gd.idDisciplina = d.idDisciplina)
    INNER JOIN grade g ON (g.idGrade = gd.idGrade)
    INNER JOIN curso c ON (c.idCurso = g.idCurso)
WHERE g.ano = 2020 AND c.nome = 'Gestão de Marketing'