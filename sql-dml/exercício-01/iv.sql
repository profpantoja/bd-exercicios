-- Listar todas as matriculas informando o ano da grade, a carga horaria total e nome
-- do curso da aluna Kate Chienne.

SELECT ag.matricula, g.ano, g.chTotal, c.nome 
FROM aluno a
    INNER JOIN aluno_grade ag ON (ag.idAluno = a.idAluno)
    INNER JOIN grade g ON (g.idGrade = ag.idGrade)
    INNER JOIN curso c ON (g.idCurso = c.idCurso)
WHERE a.nome="Kate Chienne"