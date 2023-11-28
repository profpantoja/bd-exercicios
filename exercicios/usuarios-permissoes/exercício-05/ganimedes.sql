CREATE USER 'ganimedes' @'localhost' IDENTIFIED BY '1234';

GRANT
SELECT,
INSERT,
UPDATE
    ON ensino.instituicao TO 'ganimedes' @'localhost';

GRANT
SELECT,
INSERT,
UPDATE
    ON ensino.curso TO 'ganimedes' @'localhost';

GRANT
SELECT,
INSERT,
UPDATE
    ON pessoas.pessoa TO 'ganimedes' @'localhost';