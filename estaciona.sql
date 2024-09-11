USE ex4;

CREATE TABLE estaciona (
	cod INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    patio_num INT DEFAULT NULL,
    veiculo_placa VARCHAR(8) DEFAULT NULL,
    dtEntrada DATE DEFAULT NULL,
    dtSaida DATE DEFAULT NULL,
    hsEntrada TIME DEFAULT NULL,
    hsSaida TIME DEFAULT NULL,
    KEY fk_patio (patio_num),
    KEY fk_veiculo (veiculo_placa),
    CONSTRAINT fk_patio FOREIGN KEY (pation_num) REFERENCES patio(num),
    CONSTRAINT fk_veiculo FOREIGN KEY (veiculo_placa) REFERENCES veiculo(placa)
    )ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;