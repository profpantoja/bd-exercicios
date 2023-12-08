-- Alterar o status da disciplina no histórico para Aprovado onde estiver Concluído. Para Reprovado onde estiver REPROVADA, 
-- de forma que só existam os status Aprovado, Reprovado, Reprovado por Frequência, Trancamento e Matrícula.

UPDATE historico
SET status = "Aprovado"
WHERE status IN ('Concluído');

UPDATE historico
SET status = "Reprovado"
WHERE status IN ('REPROVADO');