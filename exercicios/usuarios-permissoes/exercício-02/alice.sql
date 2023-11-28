CREATE USER 'alice' @'localhost' IDENTIFIED BY '1234';

REVOKE CREATE ON *.* FROM 'alice' @'localhost';

GRANT SELECT ON ensino.* TO 'alice' @'localhost' WITH GRANT OPTION;

GRANT
SELECT
    ON enderecos.* TO 'alice' @'localhost'
WITH
GRANT OPTION;