-- Respostas Exercicio 02- Prova Banco de Dados
CREATE TABLE CLIENTE(
    idCliente INT NOT NULL,
    idSetor INT NOT NULL,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    email VARCHAR(100),
    telefone VARCHAR(100),
    PRIMARY KEY (idCliente),
    FOREIGN KEY (idSetor) REFERENCES SETOR (idSetor)
);

CREATE TABLE CLIENTE_FISICO(
    idCliente INT NOT NULL,
    cpf INT,
    FOREIGN KEY (idCliente) REFERENCES CLIENTE (idCliente)
);

CREATE TABLE CLIENTE_JURIDICO(
    idCliente INT NOT NULL,
    cnpj INT,
    FOREIGN KEY (idCliente) REFERENCES CLIENTE (idCliente)
);

CREATE TABLE SETOR(
    idSetor INT NOT NULL,
    idSuperior INT NOT NULL,
    nome VARCHAR(200),
    PRIMARY KEY (idSetor),
    FOREIGN KEY (idSuperior) REFERENCES SETOR (idSuperior)
);