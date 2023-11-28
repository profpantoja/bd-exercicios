-- Contar quantas disciplinas o aluno de matricula EINF2010010 ja cursou e foi
-- aprovado.

SELECT count(*) as qtd
FROM historico h
WHERE
    h.status = 'Aprovado' -- Atualmente no modelo da lista de exercício é previsto a matricula como VARCHAR
    -- na base de dados implementada, a matricula é um INTEGER e chave primária.
    -- Substitua a matricula da condição abaixo de 'TPSI2020038' para 101 que obterás resultado.
    AND h.matricula = 'EINF2010010'