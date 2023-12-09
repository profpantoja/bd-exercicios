-- Respostas Exercicio 04- Prova Banco de Dados
CREATE DATABASE ExerciciosBD;

USE ExerciciosBD;

CREATE TABLE AUTOR(
    idAutor INT NOT NULL,
    nome_autor VARCHAR(100),
    PRIMARY KEY(idAutor)
);

CREATE TABLE MUSIC(
    idMusic INT NOT NULL,
    length DECIMAL(6, 2),
    nome_musica VARCHAR(100),
    PRIMARY KEY(idMusic)
);

CREATE TABLE AUTOR_MUSIC(
    name_Author VARCHAR(100),
    name_Music VARCHAR(100),
    length VARCHAR(50),
    idAutor INT NOT NULL,
    idMusic INT NOT NULL,
    FOREIGN KEY (idAutor) REFERENCES AUTOR(idAutor),
    FOREIGN KEY (idMusic) REFERENCES MUSIC(idMusic)
);

CREATE TABLE ALBUM(
    idAlbum INT NOT NULL,
    idRecorder INT NOT NULL,
    idCategory INT NOT NULL,
    nome_album VARCHAR(50),
    PRIMARY KEY(idAlbum),
    FOREIGN KEY (idRecorder) REFERENCES RECORDER (idRecorder),
    FOREIGN KEY (idCategory) REFERENCES CATEGORY (idCategory)
);

CREATE TABLE TRACK(
    idTrack INT NOT NULL,
    idMusic INT NOT NULL,
    idAlbum INT NOT NULL,
    num INT,
    PRIMARY KEY(idTrack),
    FOREIGN KEY (idMusic) REFERENCES MUSIC(idMusic),
    FOREIGN KEY (idAlbum) REFERENCES ALBUM(idAlbum)
);

CREATE TABLE CATEGORY(
    idCategory INT NOT NULL,
    tipo VARCHAR(20),
    lowerPrince DOUBLE(14, 2),
    higherPrince DOUBLE(30, 2),
    PRIMARY KEY(idCategory)
);

CREATE TABLE RECORDER(
    idRecorder INT NOT NULL,
    nome VARCHAR(50),
    PRIMARY KEY(idRecorder)
);