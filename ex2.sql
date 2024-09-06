USE ex8;

CREATE TABLE livros (
	id_livro INT NOT NULL PRIMARY KEY,
    nome_livro VARCHAR(100) NOT NULL,
    descricao_livro VARCHAR(255) NOT NULL,
    id_autor INT NOT NULL,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
    );
    
CREATE TABLE autor (
	id_autor INT NOT NULL PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL,
    dtNasc DATE NOT NULL,
    livros_publicados INT NOT NULL
    );
    
-- Ambas as entidades são primárias, e possuem um relacionamento de muitos para muitos