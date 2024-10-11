USE ex22;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    data_cadastro DATE NOT NULL
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes (nome, email, data_cadastro) VALUES
('João Silva', 'joao.silva@example.com', '2023-01-15'),
('Maria Oliveira', 'maria.oliveira@example.com', '2023-02-20'),
('Carlos Souza', 'carlos.souza@example.com', '2023-03-10'),
('Ana Costa', 'ana.costa@example.com', '2023-04-05'),
('Pedro Lima', 'pedro.lima@example.com', '2023-05-30');

INSERT INTO pedidos (cliente_id, data_pedido, valor_total) VALUES
(1, '2023-06-01', 150.00),
(2, '2023-06-15', 200.50),
(3, '2023-06-20', 99.99);

SELECT * FROM clientes;

SELECT nome, email 
FROM clientes 
WHERE data_cadastro > '2023-05-10';

SELECT * 
FROM pedidos 
WHERE valor_total > 100;

SELECT * 
FROM clientes 
WHERE nome LIKE 'A%';

SELECT p.*, c.nome 
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;

SELECT c.nome, COUNT(p.id) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nome;

SELECT SUM(valor_total) AS total_geral
FROM pedidos;

SELECT AVG(valor_total) AS media_valor_pedidos
FROM pedidos;

UPDATE clientes
SET email = 'joao.novo@example.com'
WHERE id = 1;

UPDATE pedidos
SET valor_total = valor_total * 1.10;

DELETE FROM clientes
WHERE id = 3;

DELETE FROM pedidos
WHERE cliente_id = 3;

SELECT c.*
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
WHERE p.id IS NULL;

SELECT c.nome, COUNT(p.id) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nome;

CREATE INDEX idx_email ON clientes(email);

CREATE INDEX idx_valor_total ON pedidos(valor_total);

