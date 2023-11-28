-- Listar todos os alunos da grade de 2020 do curso de Engenharia Informatica
-- exibindo o nome do curso, o nome e o sobrenome do aluno

SELECT
    c.nome,
    a.nome,
    a.sobrenome
FROM curso c
    INNER JOIN grade g ON (g.idCurso = c.idCurso)
    INNER JOIN aluno_grade ag ON (ag.idGrade = g.idGrade)
    INNER JOIN aluno a ON (a.idAluno = ag.idAluno)
WHERE g.ano = 2020 AND c.nome = "Engenharia Informática"