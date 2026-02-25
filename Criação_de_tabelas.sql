#__________Utilizadores__________

CREATE TABLE utilizadores (
    id_utilizador INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    idade SMALLINT,
    password VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (id_utilizador),
    UNIQUE (email)
);

#--------------------------------------------------------------

#__________Medicos__________

CREATE TABLE medicos (
    id_medico INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    idade SMALLINT,
    password VARCHAR(255) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    
    PRIMARY KEY (id_medico),
    UNIQUE (email)
);

#--------------------------------------------------------------

#__________Consultas__________

CREATE TABLE consultas (
    id_consulta INT NOT NULL AUTO_INCREMENT,
    id_utilizador INT NOT NULL,
    id_medico INT NOT NULL,
    data_consulta DATE,
    hora_consulta TIME,
    motivo_consulta VARCHAR(255),
    
    PRIMARY KEY (id_consulta),

    CONSTRAINT fk_consulta_utilizador
        FOREIGN KEY (id_utilizador)
        REFERENCES utilizadores(id_utilizador)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_consulta_medico
        FOREIGN KEY (id_medico)
        REFERENCES medicos(id_medico)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

#--------------------------------------------------------------

#__________Notificacoes__________

CREATE TABLE notificacoes (
    id_notificacao INT NOT NULL AUTO_INCREMENT,
    id_utilizador INT NOT NULL,
    conteudo VARCHAR(255),
    data_notificacao DATE,
    
    PRIMARY KEY (id_notificacao),

    CONSTRAINT fk_notificacao_utilizador
        FOREIGN KEY (id_utilizador)
        REFERENCES utilizadores(id_utilizador)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

#--------------------------------------------------------------

#__________Relatorios__________

CREATE TABLE relatorios (
    id_relatorio INT NOT NULL AUTO_INCREMENT,
    id_consulta INT NOT NULL,
    descricao VARCHAR(255),
    data_relatorio DATE,
    
    PRIMARY KEY (id_relatorio),

    CONSTRAINT fk_relatorio_consulta
        FOREIGN KEY (id_consulta)
        REFERENCES consultas(id_consulta)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

#--------------------------------------------------------------
