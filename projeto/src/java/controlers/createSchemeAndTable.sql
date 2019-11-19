CREATE SCHEMA project_anxiety;

CREATE TABLE `project_anxiety`.`usuarios` ( 
`id` INT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(60) NOT NULL,
`email` VARCHAR(60) NOT NULL,
`cpf` VARCHAR(11) NOT NULL,
`telefone` VARCHAR(12) NOT NULL,
`dt_nascimento` VARCHAR(20) NOT NULL,
`senha` VARCHAR(60) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE (`cpf`)
) ENGINE = InnoDB;