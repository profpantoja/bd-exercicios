CREATE USER 'kelly' @'localhost' IDENTIFIED BY '123';

GRANT ALL PRIVILEGES ON pessoas.* TO 'kelly' @'localhost';

GRANT ALL PRIVILEGES ON enderecos.* TO 'kelly' @'localhost';

GRANT CREATE VIEW ON pessoas.* TO 'kelly' @'localhost';