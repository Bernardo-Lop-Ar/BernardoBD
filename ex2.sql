USE ex12;

CREATE TABLE Clientes (
	id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) DEFAULT NULL,
    telefone VARCHAR(20) DEFAULT NULL,
    email VARCHAR(150) DEFAULT NULL,
    id_pedido INT
    );
    
CREATE TABLE Pedido (
	id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    desc_pedido VARCHAR(255) DEFAULT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
    );

ALTER TABLE Clientes ADD CONSTRAINT id_categoria
FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido);