CREATE USER 'nina' @'localhost' IDENTIFIED BY '1234';

GRANT CREATE ON *.* TO 'nina' @'localhost';

GRANT
    ALL PRIVILEGES ON ensino.* TO 'nina' @'localhost'
WITH
GRANT OPTION;

GRANT
    ALL PRIVILEGES ON pessoas.* TO 'nina' @'localhost'
WITH
GRANT OPTION;