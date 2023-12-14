-- Resposta Questão 6 --


CREATE TABLE AUTOR(
    idAutor INT NOT NULL,
    nome VARCHAR(100),
    PRIMARY KEY(idAutor)
);

CREATE TABLE MUSIC(
    idMusic INT NOT NULL,
    length DECIMAL(6, 2),
    nome VARCHAR(100),
    PRIMARY KEY(idMusic)
);

-- Como o relacionamento da tabela AUTHOR com a tabela MUSIC é N:N, durante a criação da tabela AUTHOR_MUSIC, teriamos uma redundância no atributo nome. Para solucionar esse erro criamos a tabela AUTHOR_MUSIC, especificando o atributo nome pertinente a cada uma das tabelas.

CREATE TABLE AUTOR_MUSIC(
    idAutor INT NOT NULL,
    idMusic INT NOT NULL,
    nome_Author VARCHAR(100),
    nome_Music VARCHAR (100),
    length DECIMAL(6, 2),
    FOREIGN KEY (idAutor) REFERENCES AUTOR(idAutor),
    FOREIGN KEY (idMusic) REFERENCES MUSIC(idMusic)

);