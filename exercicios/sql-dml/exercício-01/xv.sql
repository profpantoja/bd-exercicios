-- Listar os alunos que tenham mais de uma matricula para a mesma grade de um
-- curso.

SELECT
    a.nome,
    a.apelido,
    g.ano,
    count(*)
FROM aluno a
    INNER JOIN aluno_grade ag ON (ag.idAluno = a.idAluno)
    INNER JOIN grade g ON (g.idGrade = ag.idGrade)
GROUP BY
    a.idAluno,
    g.ano -- Atualmente não existem alunos que tenham duas matriculas para o mesmo curso e mesma grade.ano
    -- Para que o comando retorne algum valor, comente a linha abaixo.
HAVING count(*) > 1