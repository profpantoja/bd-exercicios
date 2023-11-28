CREATE USER 'betelgeuse' @'localhost' IDENTIFIED BY '1234';

GRANT SELECT ON Pessoas.pessoa TO 'betelgeuse' @'localhost';

GRANT SELECT ON Enderecos.endereco TO 'betelgeuse' @'localhost';