DROP DATABASE IF EXISTS BLOG;
CREATE DATABASE IF NOT EXISTS BLOG;

USE BLOG;
CREATE TABLE Usuario(
	id  	        INT AUTO_INCREMENT NOT NULL,
    nome            VARCHAR(50) NOT NULL,
    email           VARCHAR(255) NOT NULL,
    senha           VARCHAR(60) NOT NULL,
    data_criacao    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ativo           TINYINT NOT NULL DEFAULT '0',
    adm             TINYINT NOT NULL DEFAULT '0',
    PRIMARY KEY (id) );

CREATE TABLE Post(
	id  	        INT NOT NULL AUTO_INCREMENT,
    titulo          VARCHAR(255) NOT NULL,
    texto           TEXT NOT NULL,
    id_us           INT(11) NOT NULL,
    data_criacao    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_postagem   DATETIME NOT NULL,
    PRIMARY KEY (id),
    KEY fk_Post_Usuario_idx (id_us),
    CONSTRAINT fk_Post_Usuario FOREIGN KEY (id_us) REFERENCES Usuario (id)
);