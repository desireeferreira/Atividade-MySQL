CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
especialidade VARCHAR(200),
armamento_principal VARCHAR(100) NOT NULL,
posto VARCHAR(50),
PRIMARY KEY(id));

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    honra INT NOT NULL, -- Representa o nível de lealdade e respeito do xogum
    idade INT NOT NULL,
    posto VARCHAR(50),
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id),
    PRIMARY KEY(id));
    
    
INSERT INTO tb_classes (nome, especialidade, armamento_principal, posto) VALUES
('Xogum', 'Liderança, Estratégias de guerra e Diplomacia', 'Katana', 'Xogum Supremo'),
('Samurai', 'Combate corpo a corpo, Honra e lealdade', 'Katana', 'Samurai'),
('Ninja', 'Furtividade, Espionagem e Ataques rápidos', 'Shuriken', 'Ninja Elite'),
('Mago', 'Magia ofensiva, Rituais e Controle espiritual', 'Cajado', 'Mago'),
('Ronin', 'Combate independente, Sem lealdade a um mestre', 'Katana', 'Ronin');


INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, honra, idade, posto, classe_id) VALUES
('Takamatsu', 3000, 2500, 100, 50, 'Xogum Supremo', 1), -- Xogum
('Ryu', 2300, 1800, 90, 35, 'Samurai', 2), -- Samurai
('Kenzo', 2000, 1500, 80, 28, 'Ninja Elite', 3), -- Ninja
('Hiroshi', 2200, 1200, 85, 40, 'Mago', 4), -- Mago
('Jiro', 1800, 1400, 70, 30, 'Ronin', 5); -- Ronin

