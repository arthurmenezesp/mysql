INSERT INTO alunos (id, nome, telefone) VALUES
(1, 'João Silva', '123456789'),
(2, 'Maria Oliveira', '987654321'),
(3, 'Carlos Souza', '456789123'),
(4, 'Ana Costa', '321654987'),
(5, 'Pedro Martins', '789123456'),
(6, 'Luana Pereira', '654321789'),
(7, 'Ricardo Alves', '147258369'),
(8, 'Fernanda Lima', '369258147'),
(9, 'Juliana Santos', '258369147'),
(10, 'Lucas Gomes', '963852741');

INSERT INTO planos (id, nome, preco_mensal) VALUES
(1, 'Plano Básico', 100),
(2, 'Plano Intermediário', 150),
(3, 'Plano Avançado', 200),
(4, 'Plano Premium', 300),
(5, 'Plano Fitness', 120);

INSERT INTO matriculas (id_aluno, id_plano, data_inicio) VALUES
(1, 1, '2025-01-01'),
(2, 2, '2025-02-15'),
(3, 3, '2025-03-10'),
(4, 4, '2025-01-25'),
(5, 5, '2025-02-05'),
(6, 1, '2025-02-20'),
(7, 3, '2025-03-01'),
(8, 2, '2025-01-30'),
(9, 4, '2025-02-10'),
(10, 5, '2025-03-15');

INSERT INTO aulas (id, nome, horario) VALUES
(1, 'Aula de Yoga', '08:00'),
(2, 'Aula de Pilates', '09:30'),
(3, 'Aula de Zumba', '10:30'),
(4, 'Aula de Musculação', '14:00'),
(5, 'Aula de Boxe', '16:00'),
(6, 'Aula de Crossfit', '17:30'),
(7, 'Aula de Natação', '06:00'),
(8, 'Aula de Spinning', '18:00'),
(9, 'Aula de Dança', '19:30'),
(10, 'Aula de Artes Marciais', '20:00');

INSERT INTO presencas (id_aluno, id_aula, data) VALUES
(1, 1, '2025-03-01'),
(2, 2, '2025-03-01'),
(3, 3, '2025-03-01'),
(4, 4, '2025-03-02'),
(5, 5, '2025-03-02'),
(6, 6, '2025-03-03'),
(7, 7, '2025-03-03'),
(8, 8, '2025-03-03'),
(9, 9, '2025-03-04'),
(10, 10, '2025-03-04'),
(1, 2, '2025-03-05'),
(2, 3, '2025-03-05'),
(3, 4, '2025-03-06'),
(4, 5, '2025-03-06'),
(5, 6, '2025-03-06'),
(6, 7, '2025-03-07'),
(7, 8, '2025-03-07'),
(8, 9, '2025-03-08'),
(9, 10, '2025-03-08'),
(10, 1, '2025-03-08');

UPDATE alunos SET telefone = '111222333' WHERE id = 2;
UPDATE planos SET preco_mensal = 180 WHERE id = 2;
UPDATE matriculas SET data_inicio = '2025-03-15' WHERE id_aluno = 3;

DELETE FROM presencas WHERE id_aluno = 10 AND id_aula = 1;
DELETE FROM matriculas WHERE id_aluno = 4;

SELECT * FROM alunos;
SELECT * FROM planos;
SELECT * FROM matriculas;
SELECT * FROM aulas;
SELECT * FROM presencas;
