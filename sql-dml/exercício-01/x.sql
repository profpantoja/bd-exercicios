-- Exibir quais disciplinas dependem da disciplina Banco de Dados.

SELECT d1.nome 'Pre-Requisito', d2.nome Disciplina, d2.ch 
FROM disciplina d1
    INNER JOIN pre_requisito pr ON (pr.idDisciplinaAnt = d1.idDisciplina)
    INNER JOIN disciplina d2 ON (pr.idDisciplinaPost = d2.idDisciplina) 
WHERE d1.nome = 'Bases de Dados I' 