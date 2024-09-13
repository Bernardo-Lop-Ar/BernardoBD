USE ex12;

CREATE TABLE Estudante (
	id_estudante INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) DEFAULT NULL,
    cpf VARCHAR(15) DEFAULT NULL,
    dtNasc DATE DEFAULT NULL,
    telefone VARCHAR(15) DEFAULT NULL
    );
    
CREATE TABLE Curso (
	id_curso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    materia VARCHAR(100) DEFAULT NULL,
    desc_curso VARCHAR(255) DEFAULT NULL
    );
    
CREATE TABLE Estudante_Curso (
	id_estudante_curso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_estudante INT,
    id_curso INT,
    FOREIGN KEY (id_estudante) REFERENCES Estudante(id_estudante),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
    );