CREATE SCHEMA project_anxiety;

CREATE TABLE project_anxiety.usuarios (
 id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 nome VARCHAR(60) NOT NULL,
 email VARCHAR(60) NOT NULL ,
 senha VARCHAR(60) NOT NULL
);
