
CREATE TABLE Professor (
    id_professor SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);


CREATE TABLE Turma (
    id_turma SERIAL PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    id_professor INT NOT NULL,
    horario VARCHAR(100),
    CONSTRAINT fk_professor FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);


CREATE TABLE Aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    id_turma INT NOT NULL,
    nome_responsavel VARCHAR(255),
    telefone_responsavel VARCHAR(20),
    email_responsavel VARCHAR(100),
    informacoes_adicionais TEXT,
    CONSTRAINT fk_turma FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);
