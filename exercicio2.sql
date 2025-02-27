CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
 nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(100),
    PRIMARY KEY(id));
    
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT,
	FOREIGN KEY (classe_id) REFERENCES tb_classes(id),
    PRIMARY KEY(id));


