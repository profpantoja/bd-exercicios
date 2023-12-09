CRIAR TABELA CLIENTE(
    idCliente inteiro não nulo,
    idSetor inteiro não nulo,
    nome texto(100),
    sobrenome texto(100),
    email texto(100),
    telefone texto(50),
    CHAVE(idCliente), 
    CHAVE_EST(idSetor) REFERENCIA Setor (idSetor)
);

CREATE TABLE CLIENTE(
    idCliente INT,
    NOT NULL,
    idSetor INT NOT NULL,
    nome VARCHAR (100),
    sobrenome VARCHAR (100),
    email VARCHAR (50),
    telefone VARCHAR (50),
    PRIMARY KEY (idCliente),
    FOREIGN KEY (idSetor) REFERENCES SETOR (idSetor)
);

CRIAR TABELA CLIENTE_FISICO(
    idCliente inteiro não nulo,
    cpf inteiro (11),
    CHAVE (idCliente),
    CHAVE_EST(idCliente) REFERENCIA Cliente (idCliente)
);

CREATE TABLE CLIENTE_FISICO(
    idCliente INT NOT NULL,
    cpf INT (11),
    PRIMARY KEY (idCliente),
    FOREIGN KEY (idCliente) REFERENCES CLIENTE (idCliente)
);

CRIAR TABELA CLIENTE_JURIDICO(
    idCliente inteiro não nulo,
    cnpj inteiro (20),
    CHAVE (idCliente),
    CHAVE_EST(idCliente) REFERENCIA Cliente (idCliente)
);

CREATE TABLE CLIENTE_JURIDICO(
    idCliente INT NOT NULL,
    cnpj INT (20),
    PRIMARY KEY (idCliente),
    FOREIGN KEY (idCliente) REFERENCES CLIENTE (idCliente)
);

CRIAR TABELA SETOR(
    idSetor inteiro não nulo,
    idSuperior inteiro não nulo,
    nome texto (200),
    CHAVE (idSetor),
    CHAVE_EST (idSetor) REFERENCIA SETOR (idSetor)
);

CREATE TABLE SETOR(
    idSetor INT NOT NULL,
    idSuperior INT NOT NULL,
    nome VARCHAR(200),
    PRIMARY KEY (idSetor),
    FOREIGN KEY (idSetor) REFERENCES SETOR (idSetor)
);