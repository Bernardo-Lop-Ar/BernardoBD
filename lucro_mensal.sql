USE ex4;

CREATE TABLE lucro_mensal (
	receita INT DEFAULT NULL,
    despesa INT DEFAULT NULL,
    id_lucro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	lucro FLOAT NOT NULL,
    data_lucro DATE DEFAULT NULL,
    KEY receita(receita),
    KEY despesa(despesa),
    CONSTRAINT lucro_mensal_ibfk_1 FOREIGN KEY (receita) REFERENCES receita_mensal(id_receita),
    CONSTRAINT lucro_mensal_ibfk_2 FOREIGN KEY (despesa) REFERENCES despensa_mensal(id_despesa)
    ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;