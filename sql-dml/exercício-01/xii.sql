--  Exibir todas as reprovacoes do aluno de matricula TPSI2020038.

SELECT
    ag.matricula,
    d.nome Disciplina,
    h.nota,
    h.status
FROM aluno_grade ag
    INNER JOIN historico h ON (ag.matricula = h.matricula)
    INNER JOIN disciplina d ON (h.idDisciplina = d.idDisciplina)
    -- Atualmente no modelo da lista de exercício é previsto a matricula como VARCHAR
    -- na base de dados implementada, a matricula é um INTEGER e chave primária.
    -- Substitua a matricula da condição abaixo de 'TPSI2020038' para 101 que obterás resultado.
WHERE
    ag.matricula = 'TPSI2020038'
    AND h.status = 'Reprovado'