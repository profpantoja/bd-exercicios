CREATE USER 'bob' @'localhost' IDENTIFIED BY '1234';

REVOKE CREATE ON *.* FROM 'bob' @'localhost';

GRANT
    ALL PRIVILEGES ON Pessoas.* TO 'bob' @'localhost'
WITH
GRANT OPTION;

GRANT SELECT ON enderecos.* TO 'bob' @'localhost' WITH GRANT OPTION;