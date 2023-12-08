-- Atualizar a carga horária total de todas as grades com o somatório das cargas horárias
-- das disciplinas constantes na grade.

UPDATE grade
INNER JOIN (SELECT g.idGrade, sum(d.ch) chTotal
        	FROM disciplina d
            INNER JOIN grade_disciplina gd ON (d.idDisciplina = gd.idDisciplina)
            INNER JOIN grade g ON (gd.idGrade = g.idGrade)
        WHERE
            gd.tipo = "Obrigatória"
        GROUP BY g.idGrade) AS total ON (grade.idGrade = total.idGrade)
SET grade.chTotal = total.chTotal
