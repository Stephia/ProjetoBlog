DROP DATABASE IF EXISTS BLOG;
CREATE DATABASE IF NOT EXISTS BLOG;

USE BLOG;
CREATE TABLE Cliente(
	id 	      INT AUTO_INCREMENT,
    nome      VARCHAR(50) ,
    email     VARCHAR(50),
    senha     VARCHAR(10),
    ativo     BOOL,
    PRIMARY KEY (id)

INSERT INTO Cliente VALUES
	(1, 'Aurora', 'aurorinha@gmail.com', '409094l0v3', false, 4),
    (2, 'Breno', 'breninhodograu@gmail.com', '1234567890', true, 3),
    (3, 'Carolaine', 'carolainess@hotmail.com', 'eu231a23nh4', true, 1),
    (4, 'Dalberto', 'adalberto@yahoo.com.br', '4d4lb37t0', true, 5),
    (5, 'Evellyn', 'xevellynx@hotmail.com', '^0n;[Q=69w', false, 2)