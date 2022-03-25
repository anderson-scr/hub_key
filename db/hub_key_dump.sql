--
-- File generated with SQLiteStudio v3.3.3 on mar mar 8 06:21:26 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: chave
DROP TABLE IF EXISTS chave;

CREATE TABLE chave (
    rowid   INTEGER      PRIMARY KEY AUTOINCREMENT
                         NOT NULL,
    id_sala CHAR (3)     NOT NULL
                         UNIQUE,
    nome    VARCHAR (50) NOT NULL,
    estado  BOOLEAN      NOT NULL
                         DEFAULT (0) 
);

-- Table: emprestimo
DROP TABLE IF EXISTS emprestimo;

CREATE TABLE emprestimo (
    rowid                INTEGER  PRIMARY KEY AUTOINCREMENT
                                  NOT NULL,
    fk_rowid_usuario_ret INT      NOT NULL
                                  REFERENCES usuario (rowid),
    fk_rowid_usuario_dev INT      REFERENCES usuario (rowid),
    fk_rowid_chave       INT      NOT NULL
                                  REFERENCES chave (rowid),
    data_hora_retirada   DATETIME NOT NULL,
    data_hora_devolucao  DATETIME
);


-- Table: usuario
DROP TABLE IF EXISTS usuario;

CREATE TABLE usuario (
    rowid      INTEGER      PRIMARY KEY AUTOINCREMENT
                            NOT NULL,
    id_usuario CHAR (4)     NOT NULL
                            UNIQUE,
    nome       VARCHAR (50) NOT NULL,
    admin      BOOLEAN      NOT NULL
                            DEFAULT (0),
    email      VARCHAR (50) UNIQUE,
    senha      VARCHAR (25) 
);

INSERT INTO usuario (
                        rowid,
                        id_usuario,
                        nome,
                        admin,
                        email,
                        senha
                    )
                    VALUES (
                        1,
                        '2006',
                        'Enilda C�ceres',
                        1,
                        'enilda@senac.br',
                        'qwerty'
                    );

INSERT INTO usuario (
                        rowid,
                        id_usuario,
                        nome,
                        admin,
                        email,
                        senha
                    )
                    VALUES (
                        2,
                        '1612',
                        'Tatiane Moura',
                        1,
                        'tatiane@senac.br',
                        '123456'
                    );

INSERT INTO usuario (
                        rowid,
                        id_usuario,
                        nome,
                        admin,
                        email,
                        senha
                    )
                    VALUES (
                        3,
                        '0264',
                        'Diego Franco',
                        0,
                        NULL,
                        NULL
                    );

INSERT INTO usuario (
                        rowid,
                        id_usuario,
                        nome,
                        admin,
                        email,
                        senha
                    )
                    VALUES (
                        4,
                        '2818',
                        'Anderson Salles',
                        0,
                        NULL,
                        NULL
                    );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
