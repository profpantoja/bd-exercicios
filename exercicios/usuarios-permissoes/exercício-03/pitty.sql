CREATE USER 'pitty' @'localhost' IDENTIFIED BY '1234';

GRANT SELECT, INSERT ON pessoas.usuario TO 'pitty' @'localhost';