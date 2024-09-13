USE ex12;

CREATE TABLE Departamento (
	id_departamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(150) DEFAULT NULL,
    id_funcionario INT,
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
    );
    
CREATE TABLE Funcionario (
	id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) DEFAULT NULL,
    cpf VARCHAR(15) DEFAULT NULL
    );