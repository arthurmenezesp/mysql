INSERT INTO Alunos (nome, data_nascimento, endereco, telefone) 
VALUES 
('João Souza', '2005-03-15', 'Rua C, 789', '977777777'),
('Maria Oliveira', '2004-11-22', 'Rua D, 101', '966666666'),
('Carlos Eduardo', '2005-08-10', 'Rua E, 203', '955555555'),
('Ana Clara', '2006-01-30', 'Rua F, 312', '944444444'),
('Felipe Gomes', '2004-12-18', 'Rua G, 423', '933333333'),
('Mariana Silva', '2005-06-25', 'Rua H, 534', '922222222'),
('Lucas Santos', '2004-10-05', 'Rua I, 645', '911111111'),
('Bruna Costa', '2006-02-12', 'Rua J, 756', '900000000'),
('Ricardo Pereira', '2005-05-22', 'Rua K, 867', '899999999'),
('Gabriela Alves', '2004-07-14', 'Rua L, 978', '888888888');


INSERT INTO Professores (nome, data_nascimento, endereco, telefone) 
VALUES 
('Carlos Silva', '1980-05-10', 'Rua A, 123', '999999999'),
('Ana Pereira', '1975-08-20', 'Rua B, 456', '988888888'),
('João Almeida', '1985-04-17', 'Rua M, 987', '977777777'),
('Marcia Oliveira', '1978-11-02', 'Rua N, 321', '966666666'),
('Pedro Souza', '1983-09-25', 'Rua O, 654', '955555555');


INSERT INTO Cursos (nome_curso, descricao) 
VALUES 
('Matemática', 'Curso de Matemática, focado em álgebra e cálculo'),
('História', 'Curso de História, com ênfase no Brasil Império'),
('Física', 'Curso de Física, explorando mecânica e termodinâmica'),
('Química', 'Curso de Química, abordando reações e estrutura molecular'),
('Literatura', 'Curso de Literatura Brasileira, com foco em autores clássicos');


INSERT INTO Turmas (id_curso, id_professor, nome_turma, ano_letivo) 
VALUES 
(1, 1, 'Matemática 2025-1', 2025),
(2, 2, 'História 2025-1', 2025),
(3, 3, 'Física 2025-1', 2025),
(4, 4, 'Química 2025-1', 2025),
(5, 5, 'Literatura 2025-1', 2025),
(1, 1, 'Matemática 2025-2', 2025),
(2, 2, 'História 2025-2', 2025),
(3, 3, 'Física 2025-2', 2025),
(4, 4, 'Química 2025-2', 2025),
(5, 5, 'Literatura 2025-2', 2025);


INSERT INTO Matriculas (id_aluno, id_turma, data_matricula) 
VALUES 
(1, 1, '2025-01-10'),
(2, 2, '2025-01-12'),
(3, 3, '2025-01-13'),
(4, 4, '2025-01-14'),
(5, 5, '2025-01-15'),
(6, 6, '2025-01-16'),
(7, 7, '2025-01-17'),
(8, 8, '2025-01-18'),
(9, 9, '2025-01-19'),
(10, 10, '2025-01-20'),
(1, 2, '2025-01-25'),
(2, 3, '2025-01-26'),
(3, 4, '2025-01-27'),
(4, 5, '2025-01-28'),
(5, 6, '2025-01-29'),
(6, 7, '2025-01-30'),
(7, 8, '2025-02-01'),
(8, 9, '2025-02-02'),
(9, 10, '2025-02-03'),
(10, 1, '2025-02-04');


UPDATE Alunos
SET telefone = '933344455'
WHERE id_aluno = 3;

UPDATE Professores
SET endereco = 'Rua P, 777'
WHERE id_professor = 2;

UPDATE Cursos
SET descricao = 'Curso de Matemática, com ênfase em cálculo diferencial e integral'
WHERE id_curso = 1;


DELETE FROM Alunos
WHERE id_aluno = 10;

DELETE FROM Professores
WHERE id_professor = 5;

DELETE FROM Turmas
WHERE id_turma = 9;

DELETE FROM Matriculas
WHERE id_matricula = 15;
