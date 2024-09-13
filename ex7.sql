USE ex12;

CREATE TABLE Pessoa (
	id_pessoa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) DEFAULT NULL,
    nr_documento VARCHAR(25) DEFAULT NULL,
    dtNasc DATE DEFAULT NULL
    );
    
CREATE TABLE Alunos (
	id_aluno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT,
    nr_matricula VARCHAR(25) DEFAULT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
    );
    
CREATE TABLE Professor (
	id_professor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT,
    materia VARCHAR(100) DEFAULT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
    );