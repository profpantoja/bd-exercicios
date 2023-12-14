SELECT
    p.nome as 'Instituto Politécnico',
    c.nome as 'Licenciatura',
    d.nome as 'Disciplina',
    gd.periodo,
    d.ects
FROM disciplina d
    INNER JOIN grade_disciplina gd ON (gd.idDisciplina = d.idDisciplina)
    INNER JOIN grade g ON (g.idGrade = gd.idGrade)
    INNER JOIN curso c ON (c.idCurso = g.idCurso)
    INNER JOIN politecnico p ON (p.idPolitecnico = c.idPolitecnico)
WHERE c.idCurso = 15
ORDER BY
    gd.periodo asc,
    d.nome asc;

SELECT
    distinct concat(a.nome, ' ', a.apelido) as 'Aluno',
    p.nome as 'Instituto',
    c.idCurso,
    c.nome as 'Curso',
    d.nome as 'Disciplina',
    h.nota as 'Nota Final',
    h.status
FROM aluno a
    INNER JOIN aluno_grade ag ON (a.idAluno = ag.idAluno)
    INNER JOIN historico h ON (h.matricula = ag.matricula)
    INNER JOIN grade_disciplina gd ON (gd.idDisciplina = h.idDisciplina)
    INNER JOIN grade g ON (g.idGrade = gd.idGrade)
    INNER JOIN disciplina d ON (d.idDisciplina = gd.idDisciplina)
    INNER JOIN curso c ON (c.idCurso = g.idCurso)
    INNER JOIN politecnico p ON (p.idPolitecnico = c.idPolitecnico)
WHERE a.idAluno IN (13, 14);