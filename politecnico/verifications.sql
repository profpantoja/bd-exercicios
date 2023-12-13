select
    p.nome as 'Instituto Politécnico',
    c.nome as 'Licenciatura',
    d.nome as 'Disciplina',
    gd.periodo,
    d.ects
from disciplina d
    join grade_disciplina gd on gd.idDisciplina = d.idDisciplina
    join grade g on g.idGrade = gd.idGrade
    join curso c on c.idCurso = g.idCurso
    join politecnico p on p.idPolitecnico = c.idPolitecnico
where c.idCurso = 15
order by
    gd.periodo asc,
    d.nome asc;

select
    distinct concat(a.nome, ' ', a.apelido) as 'Aluno',
    p.nome as 'Instituto',
    c.idCurso,
    c.nome as 'Curso',
    d.nome as 'Disciplina',
    h.nota as 'Nota Final',
    h.status
from aluno a
    join aluno_grade ag on a.idAluno = ag.idAluno
    join historico h on h.matricula = ag.matricula
    join grade_disciplina gd on gd.idDisciplina = h.idDisciplina
    join grade g on g.idGrade = gd.idGrade
    join disciplina d on d.idDisciplina = gd.idDisciplina
    join curso c on c.idCurso = g.idCurso
    join politecnico p on p.idPolitecnico = c.idPolitecnico
where a.idAluno IN (13, 14);