
CREATE DATABASE pizzaria;
USE pizzaria;


CREATE TABLE pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(5, 2) NOT NULL,
    tamanho ENUM('P', 'M', 'G') NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    endereco TEXT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Pendente', 'Em preparo', 'Entregue') DEFAULT 'Pendente',
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);


CREATE TABLE itens_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    pizza_id INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id)
);

INSERT INTO pizzas (nome, descricao, preco, tamanho) VALUES
('Margherita', 'Pizza com molho de tomate e queijo', 25.00, 'M'),
('Pepperoni', 'Pizza com pepperoni e queijo', 30.00, 'M'),
('Quatro Queijos', 'Pizza com quatro tipos de queijo', 32.00, 'M'),
('Calabresa', 'Pizza de calabresa com cebola', 28.00, 'M'),
('Frango com Catupiry', 'Pizza de frango desfiado com catupiry', 35.00, 'M'),
('Veggie', 'Pizza com vegetais grelhados', 27.00, 'M'),
('Portuguesa', 'Pizza com presunto, ovo e cebola', 29.00, 'M'),
('Napolitana', 'Pizza com tomate fresco e manjericão', 26.00, 'M'),
('Diavola', 'Pizza apimentada com salame', 31.00, 'M'),
('Margarita Especial', 'Pizza com mozzarella de búfala', 34.00, 'M'),
('Frutos do Mar', 'Pizza com camarão e frutos do mar', 40.00, 'M'),
('Buffalo Chicken', 'Pizza com frango ao molho buffalo', 33.00, 'M'),
('Cordeiro', 'Pizza de cordeiro com especiarias', 36.00, 'M'),
('Chester com Abacaxi', 'Pizza de chester com abacaxi', 37.00, 'M'),
('Pesto', 'Pizza com molho pesto e tomates secos', 30.00, 'M'),
('Bacon', 'Pizza com bacon crocante', 29.00, 'M'),
('Quatro Estações', 'Pizza dividida em quatro sabores', 38.00, 'M'),
('Toscana', 'Pizza com salsicha toscana e queijo', 34.00, 'M'),
('Milano', 'Pizza com presunto cru e rúcula', 35.00, 'M'),
('Cheddar', 'Pizza com queijo cheddar e cebola caramelizada', 32.00, 'M'),
('Bacon com Cheddar', 'Pizza com bacon e cheddar', 33.00, 'M'),
('Lula', 'Pizza com lula e alho', 39.00, 'M'),
('Picanha', 'Pizza com tiras de picanha', 40.00, 'M'),
('Aspargos', 'Pizza com aspargos e queijo brie', 36.00, 'M'),
('Alho e Óleo', 'Pizza simples com alho e óleo', 25.00, 'M'),
('Caponata', 'Pizza com caponata de berinjela', 27.00, 'M'),
('Peito de Peru', 'Pizza com peito de peru e cream cheese', 34.00, 'M'),
('Gorgonzola', 'Pizza com gorgonzola e nozes', 35.00, 'M'),
('Creme de Ricota', 'Pizza com creme de ricota e espinafre', 28.00, 'M'),
('Camarão ao Alho', 'Pizza com camarão e alho', 39.00, 'M'),
('Berinjela', 'Pizza com berinjela grelhada', 27.00, 'M'),
('Caprese', 'Pizza com tomate, mussarela e manjericão', 30.00, 'M'),
('Mexicana', 'Pizza com carne moída e jalapeños', 31.00, 'M'),
('Pernil', 'Pizza com pernil desfiado', 36.00, 'M'),
('Shitake', 'Pizza com cogumelos shitake', 32.00, 'M'),
('Curry', 'Pizza com frango ao curry', 34.00, 'M'),
('Pico de Gallo', 'Pizza com pico de gallo e abacate', 30.00, 'M');

INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('João Silva', 'joao@email.com', '123456789', 'Rua A, 123'),
('Maria Oliveira', 'maria@email.com', '987654321', 'Rua B, 456'),
('Pedro Santos', 'pedro@email.com', '555123456', 'Rua C, 789'),
('Ana Costa', 'ana@email.com', '555987654', 'Rua D, 321'),
('Carlos Lima', 'carlos@email.com', '555654321', 'Rua E, 654'),
('Juliana Rocha', 'juliana@email.com', '555234567', 'Rua F, 987'),
('Ricardo Almeida', 'ricardo@email.com', '555765432', 'Rua G, 135'),
('Fernanda Pereira', 'fernanda@email.com', '555876543', 'Rua H, 246'),
('Roberto Nascimento', 'roberto@email.com', '555543216', 'Rua I, 357'),
('Luana Martins', 'luana@email.com', '555432167', 'Rua J, 468'),
('Patrícia Ferreira', 'patricia@email.com', '555321678', 'Rua K, 579'),
('Felipe Mendes', 'felipe@email.com', '555210987', 'Rua L, 680'),
('Letícia Souza', 'leticia@email.com', '555109876', 'Rua M, 791'),
('Eduardo Barros', 'eduardo@email.com', '555098765', 'Rua N, 802'),
('Camila Rodrigues', 'camila@email.com', '555987123', 'Rua O, 913'),
('Thiago Lima', 'thiago@email.com', '555876432', 'Rua P, 024'),
('Gabriela Almeida', 'gabriela@email.com', '555765431', 'Rua Q, 135'),
('Leonardo Ferreira', 'leonardo@email.com', '555654321', 'Rua R, 246'),
('Sofia Costa', 'sofia@email.com', '555543210', 'Rua S, 357'),
('Ricardo Mendes', 'ricardo.mendes@email.com', '555432109', 'Rua T, 468'),
('Isabella Nunes', 'isabella@email.com', '555321098', 'Rua U, 579'),
('Lucas Pereira', 'lucas@email.com', '555210987', 'Rua V, 680'),
('Rafael Santos', 'rafael@email.com', '555109876', 'Rua W, 791'),
('Mariana Rocha', 'mariana@email.com', '555098765', 'Rua X, 802'),
('Vinícius Almeida', 'vinicius@email.com', '555987654', 'Rua Y, 913'),
('Lívia Oliveira', 'livia@email.com', '555876543', 'Rua Z, 024'),
('Gustavo Costa', 'gustavo@email.com', '555765432', 'Rua AA, 135'),
('Bruna Silva', 'bruna@email.com', '555654321', 'Rua AB, 246'),
('André Lima', 'andre@email.com', '555543210', 'Rua AC, 357'),
('Sabrina Barros', 'sabrina@email.com', '555432109', 'Rua AD, 468'),
('Danilo Ferreira', 'danilo@email.com', '555321098', 'Rua AE, 579'),
('Marcela Almeida', 'marcela@email.com', '555210987', 'Rua AF, 680'),
('Thiago Rocha', 'thiago.rocha@email.com', '555109876', 'Rua AG, 791'),
('Eduarda Pereira', 'eduarda@email.com', '555098765', 'Rua AH, 802'),
('Anderson Santos', 'anderson@email.com', '555987123', 'Rua AI, 913'),
('Renata Costa', 'renata@email.com', '555876432', 'Rua AJ, 024'),
('Samara Lima', 'samara@email.com', '555765431', 'Rua AK, 135');

INSERT INTO pedidos (cliente_id) VALUES
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20);

INSERT INTO itens_pedido (pedido_id, pizza_id, quantidade) VALUES
(1, 1, 2), (1, 2, 1),
(2, 3, 1), (2, 4, 2),
(3, 5, 1), (3, 6, 2),
(4, 7, 2), (4, 8, 1),
(5, 9, 1), (5, 10, 2),
(6, 11, 1), (6, 12, 2);


CREATE USER 'pizzaria_user'@'localhost' IDENTIFIED BY 'senha_secreta';

GRANT SELECT, INSERT, UPDATE, DELETE ON pizzaria.* TO 'pizzaria_user'@'localhost';

FLUSH PRIVILEGES;

CREATE VIEW vw_pizzas AS
SELECT id, nome, descricao, preco, tamanho
FROM pizzas;

CREATE VIEW vw_pedidos_clientes AS
SELECT p.id AS pedido_id, c.nome AS cliente_nome, c.email AS cliente_email, p.data_pedido, p.status
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;

