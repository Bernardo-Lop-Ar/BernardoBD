USE ex4;

CREATE TABLE pedido (
	fornecedor INT DEFAULT NULL,
    produto INT DEFAULT NULL,
    id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_pedido DATETIME NOT NULL,
    data_chegada DATETIME NOT NULL,
    preco FLOAT NOT NULL,
    quantidade FLOAT NOT NULL,
    KEY fornecedor(fornecedor),
    KEY produto(produto),
    FOREIGN KEY (fornecedor) REFERENCES fornecedor(id_fornecedor),
    FOREIGN KEY (produto) REFERENCES produto(id_produto)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    