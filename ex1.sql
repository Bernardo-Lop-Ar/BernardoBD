CREATE DATABASE ex12;
USE ex12;

CREATE TABLE Autor (
	id_autor INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) DEFAULT NULL,
    livros_publicados INT DEFAULT NULL
    );
    
CREATE TABLE Livros (
	id_livro INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    titulo VARCHAR(150) DEFAULT NULL,
    dtPublicacao DATE DEFAULT NULL
    );
    
CREATE TABLE Autor_Livro (
	id_autor_livro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_autor INT,
    id_livro INT,
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor),
    FOREIGN KEY (id_livro) REFERENCES Livros(id_livro)
    );