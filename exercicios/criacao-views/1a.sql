CREATE VIEW
    qtdGradeDisciplina AS
SELECT 
    idGrade, 
    COUNT(*) AS qtd
FROM grade_disciplina
GROUP BY idGrade;