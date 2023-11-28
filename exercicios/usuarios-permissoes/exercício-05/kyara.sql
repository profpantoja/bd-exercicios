CREATE USER 'kyara' @'localhost' IDENTIFIED BY '1234';

GRANT
    ALL PRIVILEGES ON Ensino.* TO 'kyara' @'localhost'
WITH
GRANT OPTION;

GRANT
    ALL PRIVILEGES ON Pessoas.* TO 'kyara' @'localhost'
WITH
GRANT OPTION;