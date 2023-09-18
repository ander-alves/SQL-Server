create database db_rh;
use db_rh;
create table tb_funcionarios(
    ID BIGINT IDENTITY PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(255) NOT NULL,
    Salario DECIMAL(10, 2),
    DataAdmissao DATE
);

SELECT *FROM tb_funcionarios;

INSERT INTO tb_funcionarios(Nome,Cargo,Salario,DataAdmissao)
VALUES ('Anderson','desenvolvedor',3000.00,'2023-06-15');
INSERT INTO tb_funcionarios(Nome,Cargo,Salario,DataAdmissao)
VALUES ('Gabriel','desenvolvedor Front',3000.00,'2023-06-15');
INSERT INTO tb_funcionarios(Nome,Cargo,Salario,DataAdmissao)
VALUES ('Cris','desenvolvedor Pleno',3000.00,'2023-06-15');
INSERT INTO tb_funcionarios(Nome,Cargo,Salario,DataAdmissao)
VALUES ('Rafael','QA',3000.00,'2023-06-15');
INSERT INTO tb_funcionarios(Nome,Cargo,Salario,DataAdmissao)
VALUES ('Lucas','estagiario',3000.00,'2023-06-15');
INSERT INTO tb_funcionarios(Nome,Cargo,Salario,DataAdmissao)
VALUES ('Maria','desenvolvedor',3000.00,'2023-06-15');

UPDATE tb_funcionarios set Salario = 1500.00 where id = 5;

SELECT *FROM tb_funcionarios WHERE Salario > 2000.00;

SELECT *FROM tb_funcionarios WHERE Salario < 2000.00;

UPDATE tb_funcionarios set Salario = 5500.00 where id = 3;
