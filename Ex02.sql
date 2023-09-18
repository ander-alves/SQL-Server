CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE Produtos (
    ID BIGINT IDENTITY PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Categoria VARCHAR(100),
    Valor DECIMAL(10, 2),
    QuantidadeEmEstoque INT,
    DataCadastro DATE
);

INSERT INTO Produtos(Nome, Categoria, Valor, QuantidadeEmEstoque, DataCadastro)
VALUES 
    ('Produto A', 'Eletrônicos', 600.00, 10, '2023-09-18'),
    ('Produto B', 'Roupas', 450.00, 15, '2023-09-18'),
    ('Produto C', 'Acessórios', 800.00, 5, '2023-09-18'),
    ('Produto D', 'Cosméticos', 300.00, 20, '2023-09-18'),
    ('Produto E', 'Eletrônicos', 900.00, 8, '2023-09-18'),
    ('Produto F', 'Livros', 200.00, 30, '2023-09-18'),
    ('Produto G', 'Esportes', 700.00, 12, '2023-09-18'),
    ('Produto H', 'Alimentos', 400.00, 25, '2023-09-18');
    
SELECT * FROM Produtos WHERE Valor > 500.00;

SELECT * FROM Produtos WHERE Valor < 500.00;

UPDATE Produtos SET Valor = 550.00 WHERE ID = 3;

SELECT *FROM tb_produtos;