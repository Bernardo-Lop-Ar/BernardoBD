USE ex4;

CREATE TABLE produto (
	forncedeor INT DEFAULT NULL,
    id_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    preco_produto FLOAT NOT NULL,
    produto VARCHAR(25) NOT NULL,
    KEY fornecedor(fornecedor),
    FOREIGN KEY (fornecedor) REFERENCES fornecedor(id_fornecedor)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;