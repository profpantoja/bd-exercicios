CREATE USER 'folo' @'localhost' IDENTIFIED BY '1234';

GRANT SELECT ON ensino.curso TO 'folo' @'localhost';

GRANT SELECT ON pessoas.pessoa TO 'folo' @'localhost';