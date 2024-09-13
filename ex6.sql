USE ex12;

CREATE TABLE Funcionarios (
	id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) DEFAULT NULL,
    cpf VARCHAR(15) DEFAULT NULL,
    telefone VARCHAR(15) DEFAULT NULL,
    departamento VARCHAR(150) DEFAULT NULL
    );
    
CREATE TABLE Projeto (
	id_projeto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    desc_projeto VARCHAR(255) DEFAULT NULL
    );
    
CREATE TABLE Funcionario_Projeto (
	id_funcionario_projeto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT,
    id_projeto INT,
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto)
    );