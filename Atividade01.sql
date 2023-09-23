CREATE DATABASE db_generation_game_online;


USE db_generation_game_online;

CREATE TABLE tb_classes(
	class_id BIGINT IDENTITY (1,1) PRIMARY KEY,
	class_name VARCHAR(255) NOT NULL,
	class_type VARCHAR(255)
);

SELECT *FROM tb_classes;

CREATE TABLE tb_personagens(
	personagem_id BIGINT IDENTITY (1,1) PRIMARY KEY,
	personagem_nome VARCHAR (255),
	personagem_atack INT,
	personagem_defesa INT,
	class_id BIGINT FOREIGN KEY REFERENCES tb_classes(class_id)
);

SELECT *FROM tb_personagens;

INSERT INTO tb_classes (class_name, class_type)
VALUES ('Guerreiro', 'Lutador'),
       ('Mago', 'Magico');

INSERT INTO tb_personagens (personagem_nome, personagem_atack, personagem_defesa, class_id)
VALUES ('Personagem1', 2500, 1500, 1),
       ('Personagem2', 1800, 2200, 2),
       ('Personagem3', 2100, 1200, 1),
       ('Personagem4', 1800, 1800, 2),
       ('Personagem5', 2300, 2000, 1),
       ('Personagem6', 1700, 1900, 1),
       ('Personagem7', 2400, 1800, 1),
       ('Personagem8', 1900, 2100, 2);


SELECT *FROM tb_personagens;

SELECT *FROM tb_personagens WHERE personagem_atack >2000;

SELECT * FROM tb_personagens WHERE personagem_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE personagem_nome LIKE '%c%';


SELECT *FROM tb_personagens p INNER JOIN tb_classes c 
ON p.class_id = c.class_id;


SELECT *FROM tb_personagens p INNER JOIN tb_classes c
ON p.class_id = c.class_id WHERE c.class_name = 'guerreiro';


