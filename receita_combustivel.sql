USE ex4;

CREATE TABLE receita_combustivel (
	id_receitacomb INT NOT NULL PRIMARY KEY,
    receita_combustivel FLOAT NOT NULL,
    data_rec_comb DATE DEFAULT NULL,
    tipo_combustivel VARCHAR(20) NOT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
    