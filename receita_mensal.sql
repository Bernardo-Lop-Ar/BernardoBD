USE ex4;

CREATE TABLE receita_mensal (
	id_receita INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    receita FLOAT NOT NULL,
    data_receita DATE DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;