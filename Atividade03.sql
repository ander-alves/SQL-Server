CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(255)
);

SELECT *FROM tb_categorias;

CREATE TABLE tb_produtos (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nome_produto VARCHAR(100),
    valor DECIMAL(10, 2),
    estoque INT,
    id_categoria BIGINT FOREIGN KEY REFERENCES tb_categorias(id)
);

SELECT *FROM tb_produtos;

INSERT INTO tb_categorias (nome, descricao)
VALUES
    ('Medicamentos', 'Produtos de uso medicinal'),
    ('Higiene Pessoal', 'Produtos de higiene e cuidado pessoal'),
    ('Dermocosméticos', 'Cosméticos com propriedades dermatológicas'),
    ('Alimentação', 'Alimentos e suplementos'),
    ('Saúde e Bem-estar', 'Produtos para promoção de saúde e bem-estar');

INSERT INTO tb_produtos (nome_produto, valor, estoque, id_categoria)
VALUES
    ('Aspirina', 10.00, 100, 1),
    ('Shampoo', 25.50, 150, 2),
    ('Protetor Solar', 30.00, 80, 3),
    ('Vitamina C', 45.00, 120, 4),
    ('Creme Hidratante', 55.00, 90, 3),
    ('Paracetamol', 8.99, 200, 1),
    ('Escova de Dentes', 3.99, 300, 2),
    ('Sabonete Líquido', 7.00, 250, 2)
    ;
    
SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 60;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id = tb_categorias.id WHERE tb_categorias.nome = 'Medicamentos' ;
