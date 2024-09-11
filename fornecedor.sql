USE ex4;

CREATE TABLE fornecedor (
	id_fornecedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    telefone VARCHAR(45) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    bairro VARCHAR(35) NOT NULL,
    cidade VARCHAR(35) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    data_adicionado DATE NOT NULL,
    data_atualizacao DATE NOT NULL,
    tempo_entrega VARCHAR(40) NOT NULL
    )ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;