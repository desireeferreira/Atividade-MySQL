CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id),
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas clássicas e populares'),
('Especial', 'Pizzas com ingredientes selecionados e diferenciados'),
('Vegetariana', 'Pizzas sem ingredientes de origem animal'),
('Doce', 'Pizzas doces para sobremesa'),
('Premium', 'Pizzas gourmet com ingredientes sofisticados');

INSERT INTO tb_pizzas (nome, preco, ingredientes, categoria_id) VALUES
('Mussarela', 45.00, 'Queijo mussarela, molho de tomate, orégano', 1),
('Calabresa', 47.00, 'Calabresa fatiada, cebola, queijo mussarela, molho de tomate', 1),
('Frango com Catupiry', 50.00, 'Frango desfiado, catupiry, milho, queijo mussarela', 2),
('Quatro Queijos', 55.00, 'Queijo mussarela, parmesão, provolone, gorgonzola', 2),
('Margherita', 48.00, 'Molho de tomate, mussarela de búfala, manjericão fresco', 3),
('Chocolate com Morango', 42.00, 'Chocolate ao leite, morangos frescos, leite condensado', 4),
('Pepperoni', 52.00, 'Molho de tomate, queijo mussarela, pepperoni fatiado', 5),
('Camarão Premium', 65.00, 'Camarão, queijo brie, molho branco, alho-poró', 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";



