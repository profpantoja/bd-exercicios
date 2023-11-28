-- Listar os alunos do curso de Engenharia Informática
-- e o quantitativo de reprovações daqueles que tiveram mais de 5 reprovações.

SELECT
    c.nome curso,
    a.nome,
    count(*) as num_reprovacoes
FROM aluno a
    INNER JOIN aluno_grade ag ON (ag.idAluno = a.idAluno)
    INNER JOIN grade g ON (g.idGrade = ag.idGrade)
    INNER JOIN curso c ON (c.idCurso = g.idCurso)
    INNER JOIN historico h ON (h.matricula = ag.matricula) -- Atualmente na base de dados não existe um curso de Engenharia Informática cadastrado.
    -- Para que a consulta retorne valores, substitua a condição abaixo por Informática ou Contabilidade e Fiscalidade. 
WHERE
    c.nome = 'Engenharia Informática'
    AND h.status = 'Reprovado'
GROUP BY c.nome, a.nome
HAVING count(*) > 5