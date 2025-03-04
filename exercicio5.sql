CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
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
('Ferramentas', 'Produtos usados para realizar trabalhos manuais e construção'),
('Materiais Elétricos', 'Produtos relacionados à instalação e manutenção elétrica'),
('Tinta e Acabamentos', 'Produtos para pintura e acabamento de ambientes'),
('Materiais Hidráulicos', 'Produtos para instalação e manutenção de sistemas hidráulicos'),
('Cimento ', 'Produtos para construção e acabamento de alvenaria');

INSERT INTO tb_produtos (nome, preco, quantidade_estoque, fornecedor, id_categoria) VALUES
('Martelo', 25.00, 100, 'Construmart', 1),
('Chave de Fenda', 15.50, 150, 'Construmart', 1),
('Fios Elétricos', 50.00, 80, 'Plus', 2),
('Lâmpada LED', 30.00, 120, 'Ilumina', 2),
('Tinta Acrílica', 65.00, 50, 'Color', 3),
('Rolo de Pintura', 12.00, 200, 'Color', 3),
('Tubo de PVC', 18.00, 75, 'Fácil', 4),
('Cimento CP-32', 22.90, 300, 'MaxPro', 5);

SELECT * FROM tb_produtos WHERE preco >100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";


