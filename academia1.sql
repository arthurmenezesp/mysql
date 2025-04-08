CREATE TABLE alunos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
telefone VARCHAR(100)
);

CREATE TABLE planos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
preco_mensal DECIMAL(10,2) NOT NULL
);

CREATE TABLE matriculas (
id_aluno INT NOT NULL,
id_plano INT NOT NULL,
data_incio 	DATE NOT NULL,
PRIMARY KEY (id_aluno, id_plano),
FOREIGN KEY (id_aluno) REFERENCES Alunos(id),
FOREIGN KEY (id_plano) REFERENCES Planos(id)
);

CREATE TABLE aulas (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
horario DATETIME NOT NULL
);

CREATE TABLE presencas(
id_aluno INT NOT NULL,
id_aula INT NOT NULL, 
data DATE NOT NULL,
PRIMARY KEY (id_aluno, id_aula, data),
PRIMARY KEY (id_aluno) REFERENCES Alunos(id),
PRIMARY KEY (id_aula) REFERENCES Aulas(id)
);





