-- Selecione as disciplinas que não estão vinculadas a nenhum curso.

SELECT idDisciplina, nome
FROM disciplina
WHERE idDisciplina NOT IN (
        SELECT DISTINCT idDisciplina
        FROM
            grade_disciplina);