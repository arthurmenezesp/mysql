CREATE DATABASE Escola;
USE Escola;

CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15)
);

CREATE TABLE Professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15)
);

CREATE TABLE Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE Turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT,
    id_professor INT,
    nome_turma VARCHAR(50) NOT NULL,
    ano_letivo INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso),
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);

CREATE TABLE Matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_turma INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turmas(id_turma)
);

CREATE TABLE Funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    data_admissao DATE,
    salario DECIMAL(10, 2)
);


INSERT INTO Cursos (nome_curso, descricao) 
VALUES ('Matemática', 'Curso de Matemática'),
       ('História', 'Curso de História');

INSERT INTO Professores (nome, data_nascimento, endereco, telefone)
VALUES ('Carlos Silva', '1980-05-10', 'Rua A, 123', '999999999'),
       ('Ana Pereira', '1975-08-20', 'Rua B, 456', '988888888');

INSERT INTO Turmas (id_curso, id_professor, nome_turma, ano_letivo) 
VALUES (1, 1, 'Matemática 2025-1', 2025),
       (2, 2, 'História 2025-1', 2025);

INSERT INTO Alunos (nome, data_nascimento, endereco, telefone)
VALUES ('João Souza', '2005-03-15', 'Rua C, 789', '977777777'),
       ('Maria Oliveira', '2004-11-22', 'Rua D, 101', '966666666');

INSERT INTO Matriculas (id_aluno, id_turma, data_matricula) 
VALUES (1, 1, '2025-01-10'),
       (2, 2, '2025-01-12');
