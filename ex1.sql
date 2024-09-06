CREATE DATABASE ex8;
USE ex8;

CREATE TABLE alunos (
	id_aluno INT NOT NULL PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    cpf_aluno VARCHAR(15),
    dtNasc_aluno DATE NOT NULL
    );
    
CREATE TABLE professores (
	id_professor INT NOT NULL PRIMARY KEY,
    nome_professor VARCHAR(100) NOT NULL,
    cpf_professor VARCHAR(15) NOT NULL,
    materia VARCHAR(100) NOT NULL
    );
    
CREATE TABLE cursos (
	id_curso INT NOT NULL PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    descricao_curso VARCHAR(255) NOT NULL,
	id_aluno INT NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
    );
    
-- Todas as entidades podem ser consideradas primárias, e todos os relacionamentos
-- Aluno e Curso, ou Curso e Professor, ou Aluno e Professor tem um relacionamento de muitos para muitos 