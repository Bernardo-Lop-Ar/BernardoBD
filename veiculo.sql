USE ex4;

CREATE TABLE veiculo (
	placa VARCHAR(8) NOT NULL PRIMARY KEY,
    codModelo INT DEFAULT NULL,
    cliente_cpf VARCHAR(15) DEFAULT NULL,
    cor VARCHAR(40) DEFAULT NULL,
    KEY fk_cliente(cliente_cpf),
    KEY fk_modelo(codModelo),
    CONSTRAINT fk_cliente FOREIGN KEY (cliente_cpf) REFERENCES cliente(cpf),
    CONSTRAINT fk_modelo FOREIGN KEY (codModelo) REFERENCES modelo(codModelo)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;