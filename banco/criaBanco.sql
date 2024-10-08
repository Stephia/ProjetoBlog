DROP DATABASE IF EXISTS BLOG;
CREATE DATABASE IF NOT EXISTS BLOG;

USE BLOG;
CREATE TABLE Usuario(
	id_u 	        INT AUTO_INCREMENT NOT NULL,
    nome            VARCHAR(50) NOT NULL,
    email           VARCHAR(255) NOT NULL,
    senha           VARCHAR(60) NOT NULL,
    data_criacao    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ativo           TINYINT(4) NOT NULL DEFAULT '0',
    adm             TINYINT(4) NOT NULL DEFAULT '0',
    PRIMARY KEY (id_u) );

CREATE TABLE Post(
	id_p 	        INT AUTO_INCREMENT NOT NULL,
    titulo          VARCHAR(255) NOT NULL,
    texto           TEXT NOT NULL,
    id_us           INT(11) NOT NULL,
    data_criacao    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_postagem   DATETIME NOT NULL,
    PRIMARY KEY (id_p),
    KEY fk_Post_Usuario_idx (id_us),
    CONSTRAINT fk_Post_Usuario FOREIGN KEY (id_us) REFERENCES Usuario (id_u)
);

INSERT INTO Usuario VALUES
    (1, 'Stephanie', 'anonimogender@gmail.com', '1234575', 20061122, 1, 1),
	(2, 'Aurora', 'aurorinha@gmail.com', '409094l0v3', 20150415, 1, 0),
    (3, 'Breno', 'breninhodograu@gmail.com', '1234567890', 20240912, 4, 0),
    (4, 'Carolaine', 'carolainess@hotmail.com', 'eu231a23nh4', 20240101, 2, 0),
    (5, 'Dalberto', 'adalberto@yahoo.com.br', '4d4lb37t0', 20220503, 3, 0),
    (6, 'Evellyn', 'xevellynx@hotmail.com', '^0n;[Q=69w', 20240913, 0, 0);