CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    fornecedor VARCHAR(100) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Carnes Bovinas', 'Carnes provenientes de gado bovino'),
('Carnes Suínas', 'Carnes provenientes de porcos'),
('Carnes de Aves', 'Carnes provenientes de frango, peru e outras aves'),
('Frutos do Mar', 'Produtos do mar como camarão, peixe, lula e polvo');

INSERT INTO tb_produtos (nome, preco, quantidade_estoque, fornecedor, id_categoria) VALUES
('Picanha', 89.90, 20, 'Frigorífico Boi Forte', 1),
('Alcatra', 59.90, 30, 'Frigorífico Boi Forte', 1),
('Fraldinha', 72.00, 15, 'Frigorífico Boi Forte', 1), 
('Costelinha Suína', 45.00, 25, 'Fazenda Porcão', 2),
('Coxa e Sobrecoxa de Frango', 18.50, 50, 'Granja São Pedro', 3), 
('Peito de Frango', 22.90, 35, 'Granja São Pedro', 3),
('Camarão VG', 120.00, 10, 'Marisqueira Sabor do Mar', 4),  
('Salmão Fresco', 95.00, 18, 'Pesca Premium', 4);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";


