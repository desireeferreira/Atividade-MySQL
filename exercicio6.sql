CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT ,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(250) NOT NULL,
    PRIMARY KEY(id));

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    duracao INT NOT NULL, 
    preco DECIMAL(10, 2) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tecnologia', 'Cursos relacionados a programação, redes, TI e afins'),
('Negócios', 'Cursos focados em gestão, administração, finanças e marketing'),
('Saúde', 'Cursos sobre medicina, enfermagem, psicologia e bem-estar'),
('Linguagens', 'Cursos de línguas, comunicação e literatura'),
('Arte e Design', 'Cursos sobre design gráfico, fotografia, artes plásticas, etc.');

INSERT INTO tb_cursos (nome, duracao, preco, id_categoria) VALUES
('Curso de Desenvolvimento Web', 40, 200.00, 1),
('Gestão de Projetos', 50, 250.00, 2),
('Primeiros Socorros', 20, 150.00, 3),
('Curso de Inglês Intermediário', 30, 180.00, 4),
('Design Gráfico para Iniciantes', 60, 300.00, 5),
('Marketing Digital', 40, 220.00, 2),
('Programação em Python', 50, 280.00, 1),
('Cuidados com a Saúde Mental', 25, 160.00, 3);

SELECT * FROM tb_cursos WHERE preco >500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";


