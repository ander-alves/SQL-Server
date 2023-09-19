CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT IDENTITY (1,1) PRIMARY KEY,
    sabor VARCHAR(255),
    tamanho VARCHAR(255)
);

SELECT *FROM tb_categorias;

CREATE TABLE tb_pizzas(
    id BIGINT IDENTITY (1,1) PRIMARY KEY,
    nome VARCHAR(255),
    ingredientes VARCHAR (255),
    preco DECIMAL (8,2),
    categoria_id BIGINT FOREIGN KEY REFERENCES tb_categorias(id)

);

SELECT *FROM tb_pizzas;

    INSERT INTO tb_categorias (sabor, tamanho)
    VALUES 
        ('Margherita', 'M'),
        ('Calabresa', 'M'),
        ('Quatro Queijos', 'G'),
        ('Frango Catupiry', 'G'),
        ('Pepperoni', 'P');

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id)
VALUES 
    ('Pizza Margherita', 'Molho de tomate, queijo, manjericão', 40.00, 1),
    ('Pizza Calabresa', 'Molho de tomate, queijo, calabresa, cebola', 45.00, 2),
    ('Pizza Quatro Queijos', 'Molho de tomate, queijo mussarela, parmesão, provolone, gorgonzola', 50.00, 3),
    ('Pizza Frango Catupiry', 'Molho de tomate, queijo, frango desfiado, catupiry', 55.00, 4),
    ('Pizza Pepperoni', 'Molho de tomate, queijo, pepperoni', 47.00, 5);

    SELECT *FROM tb_pizzas;
    
    INSERT INTO tb_pizzas (nome, ingredientes, preco, categoria_id)
    VALUES 
    ('Pizza Portuguesa', 'Molho de tomate, queijo, presunto, ovos, cebola, azeitonas', 60.00, 3),
    ('Pizza Vegetariana', 'Molho de tomate, queijo, pimentão, cebola, azeitonas, champignon', 55.00, 5),
    ('Pizza de Chocolate', 'Chocolate, morangos, leite condensado', 40.00, 5);

    SELECT *FROM tb_pizzas WHERE preco > 40;

    SELECT *FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

    SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';


SELECT *FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT *FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.id WHERE tb_categorias.sabor='Pepperoni'