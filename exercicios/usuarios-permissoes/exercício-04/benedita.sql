CREATE USER 'betina' @'localhost' IDENTIFIED BY '1234';

GRANT SELECT ON pessoas.usuario TO 'betina' @'localhost';

GRANT SELECT ON pessoas.contato TO 'betina' @'localhost';