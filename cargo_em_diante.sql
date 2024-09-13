USE ex4;

CREATE TABLE cargo (
	id_cargo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo_cargo VARCHAR(100) DEFAULT NULL,
    nivel_cargo VARCHAR(50) DEFAULT NULL,
    salario_base DECIMAL(10,2) DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
    
CREATE TABLE departamento (
	cod_departamento INT NOT NULL PRIMARY KEY,
    nome_departamento VARCHAR(100) DEFAULT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE funcionario (
	id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cargo INT DEFAULT NULL,
    cod_departamento INT DEFAULT NULL,
    dtnasc_fucnionario DATE DEFAULT NULL,
    status_funcionario ENUM('ATIVO', 'INATIVO', 'SUSPENSO') DEFAULT NULL,
    nome_funcionario VARCHAR(100) DEFAULT NULL,
    email_funcionario VARCHAR(100) DEFAULT NULL,
    senha_funcionario VARCHAR(100) DEFAULT NULL,
    cpf_funcionario VARCHAR(11) DEFAULT NULL,
    celular_funcionario VARCHAR(20) DEFAULT NULL,
    cargo VARCHAR(100) DEFAULT NULL,
    departamento VARCHAR(100) DEFAULT NULL,
    foto_funcionario BLOB,
    adm tinyint(1) DEFAULT NULL,
    FOREIGN KEY (id_cargo) REFERENCES cargo(id_cargo),
    FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento)
    ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
    
CREATE TABLE pagamento (
	id_pagamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT DEFAULT NULL,
    data_salario DATE DEFAULT NULL,
    data_bancarios DECIMAL(10,2) DEFAULT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE registro_horas (
	id_registrohoras INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT DEFAULT NULL,
    data_horas DATE DEFAULT NULL,
    chegada_horas TIME DEFAULT NULL,
    saida_horas TIME DEFAULT NULL,
    horas_trabalhadas TIME DEFAULT NULL,
    horas_extras TIME DEFAULT NULL,
    carga_horariosemanal INT DEFAULT NULL,
    ferias INT DEFAULT NULL,
    licencas INT DEFAULT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE solicitacao (
	id_solicitacao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT DEFAULT NULL,
    descricao_solicitacao VARCHAR(255) DEFAULT NULL,
    data_solicitacao DATE DEFAULT NULL,
    hora_solicitacao TIME DEFAULT NULL,
    status_solicitacao VARCHAR(50) DEFAULT NULL,
    arquivo_anexado BLOB,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
    