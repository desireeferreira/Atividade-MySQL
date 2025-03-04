CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

create table tb_categorias (
   id BIGINT auto_increment,
    nome VARCHAR(50) ,
    descricao VARCHAR(250), 
    primary key(id)
    );

CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    fabricante VARCHAR(100) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id) 
);

insert into tb_categorias (nome, descricao) values
('Medicamentos', 'Produtos destinados ao tratamento de doenças'),
('Higiene Pessoal', 'Produtos para cuidados pessoais e higiene diária'),
('Dermocosméticos', 'Produtos para cuidados com a pele e estética'),
('Vitaminas e Suplementos', 'Produtos para reposição de nutrientes essenciais'),
('Primeiros Socorros', 'Produtos para tratamento de pequenos ferimentos e emergências');

-- Inserindo registros na tabela tb_produtos
insert into tb_produtos (nome, preco, quantidade_estoque, fabricante, id_categoria) values
('Paracetamol 750mg', 15.50, 50, 'MedPharma', 1),
('Shampoo Anticaspa', 22.90, 30, 'HairCare', 2),
('Protetor Solar FPS 50', 45.00, 20, 'DermaPlus', 3),
('Vitamina C 1g', 18.90, 40, 'NutriVita', 4),
('Curativos Adesivos', 10.00, 100, 'MedCare', 5),
('Ibuprofeno 600mg', 15.75, 35, 'PharmaLife', 1),
('Creme Hidratante Facial', 35.00, 25, 'DermaPlus', 3),
('Kit Primeiros Socorros', 60.00, 10, 'SafeMed', 5);

SELECT *FROM tb_produtos WHERE preco > 50.00;
SELECT *FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";




