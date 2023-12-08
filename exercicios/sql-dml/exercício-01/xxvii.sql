-- Alterar o tipo da disciplina em uma grade para Obrigatória onde estiver Obrigatoria, OBRIGATÓRIO ou obigatória. 
-- Também colocar Optativa onde estiver optativa, Opcional ou Opicional.

UPDATE grade_disciplina
SET tipo = "Obrigatória"
WHERE tipo IN ('Obrigatoria', 'OBRIGATÓRIO', 'obrigatória','obigatória');

UPDATE grade_disciplina
SET tipo = "Optativa"
WHERE tipo IN ('optativa','Opcional','Opicional');