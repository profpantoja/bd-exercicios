CREATE USER 'thiago' @'localhost' IDENTIFIED BY '1234';

GRANT SELECT ON enderecos.endereco TO 'thiago' @'localhost';

GRANT SELECT ON enderecos.pais TO 'thiago' @'localhost';

GRANT SELECT ON enderecos.estado TO 'thiago' @'localhost';

GRANT SELECT ON enderecos.cidade TO 'thiago' @'localhost';

GRANT SELECT ON pessoas.usuario TO 'thiago' @'localhost';

GRANT SELECT ON pessoas.contato TO 'thiago' @'localhost';