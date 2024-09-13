USE ex4;

CREATE TABLE relatorio_bomba (
	bomba INT DEFAULT NULL,
    id_relatorio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    quant FLOAT NOT NULL,
    valor_final FLOAT NOT NULL,
    KEY bomba(bomba),
    FOREIGN KEY (bomba) REFERENCES bomba(id_bomba)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;