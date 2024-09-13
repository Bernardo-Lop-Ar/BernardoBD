USE ex12;

CREATE TABLE Pessoas (
	id_pessoa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) DEFAULT NULL,
    telefone VARCHAR(15) DEFAULT NULL
    );
    
CREATE TABLE Documento (
	id_documento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nr_documento INT NOT NULL,
    id_pessoa INT,
    FOREIGN KEY (id_pessoa) REFERENCES Pessoas(id_pessoa)
    );
