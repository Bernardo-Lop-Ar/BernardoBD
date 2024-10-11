CREATE DATABASE ex22;
USE ex22;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE log_acesso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    data_acesso TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_endereco VARCHAR(45),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

CREATE VIEW vw_acessos_usuarios AS
SELECT 
    u.id AS usuario_id,
    u.nome,
    u.email,
    la.data_acesso,
    la.ip_endereco
FROM 
    usuarios u
JOIN 
    log_acesso la ON u.id = la.usuario_id;

SELECT * FROM vw_acessos_usuarios;

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE permissoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE
);


INSERT INTO roles (nome) VALUES ('admin'), ('editor'), ('viewer');


INSERT INTO permissoes (nome) VALUES ('create_post'), ('edit_post'), ('delete_post'), ('view_post');

INSERT INTO usuarios (nome, email, senha) VALUES 
('Alice Silva', 'alice@example.com', '12345'),
('Bruno Oliveira', 'bruno@example.com', '54321'),
('Carla Mendes', 'carla@example.com', 'senha123'),
('Daniel Costa', 'daniel@example.com', 'abcde'),
('Eva Lima', 'eva@example.com', '123456'),
('Felipe Santos', 'felipe@example.com', 'qwerty'),
('Gabriela Rocha', 'gabriela@example.com', '112233'),
('Henrique Alves', 'henrique@example.com', 'asdfgh'),
('Isabela Martins', 'isabela@example.com', 'zxcvbn'),
('João Pedro', 'joao@example.com', 'password');

INSERT INTO log_acesso (usuario_id, data_acesso, ip_endereco) VALUES 
(1, '2024-10-01 10:00:00', '192.168.1.1'),
(1, '2024-10-02 11:15:00', '192.168.1.2'),
(2, '2024-10-01 12:00:00', '192.168.1.3'),
(3, '2024-10-01 14:30:00', '192.168.1.4'),
(4, '2024-10-01 16:45:00', '192.168.1.5'),
(5, '2024-10-02 09:00:00', '192.168.1.6'),
(6, '2024-10-02 13:20:00', '192.168.1.7'),
(7, '2024-10-02 15:30:00', '192.168.1.8'),
(8, '2024-10-03 10:10:00', '192.168.1.9'),
(9, '2024-10-03 11:50:00', '192.168.1.10');



