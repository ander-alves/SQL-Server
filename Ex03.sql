CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
    ID BIGINT IDENTITY PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Idade INT,
    Turma VARCHAR(10),
    Nota DECIMAL(4, 2),
    DataCadastro DATE
);

SELECT *FROM tb_estudantes;

INSERT INTO tb_estudantes (Nome, Idade, Turma, Nota, DataCadastro)
VALUES 
    ('João', 16, 'A', 8.5, '2023-09-18'),
    ('Maria', 17, 'B', 7.8, '2023-09-18'),
    ('Pedro', 15, 'A', 9.0, '2023-09-18'),
    ('Ana', 16, 'C', 7.2, '2023-09-18'),
    ('Carlos', 14, 'B', 6.5, '2023-09-18'),
    ('Julia', 15, 'A', 8.0, '2023-09-18'),
    ('Miguel', 17, 'C', 9.2, '2023-09-18'),
    ('Luiza', 16, 'B', 6.8, '2023-09-18');

	SELECT *FROM tb_estudantes;

	SELECT * FROM tb_estudantes WHERE Nota > 7.0;

	SELECT * FROM tb_estudantes WHERE Nota < 7.0;

	UPDATE tb_estudantes SET Nota = 7.5 WHERE ID = 5;

	SELECT *FROM tb_estudantes;

