USE NotaFiscalDB;

INSERT INTO Empresa (nome_fantasia, razao_social, telefone, endereco, cep, cf_df, cnpj)
VALUES 
('Tech Solution', 'Tech Solution LTDA', '(61) 3333-3333', 'Rua 4B Chácara 117, Taguatinga - DF', '70000-000', '00.000.900/000-00', '00.000.000/0000-00');

INSERT INTO Cliente (nome, endereco, cpf, telefone) VALUES
('João Silva', 'Rua A, Nº 10', '123.456.789-00', '(61) 99999-0001'),
('Maria Souza', 'Rua B, Nº 20', '987.654.321-00', '(61) 99999-0002'),
('Carlos Lima', 'Rua C, Nº 30', '456.789.123-00', '(61) 99999-0003'),
('Ana Paula', 'Rua D, Nº 40', '321.654.987-00', '(61) 99999-0004'),
('Fernanda Rocha', 'Rua E, Nº 50', '654.321.987-00', '(61) 99999-0005');

INSERT INTO NotaFiscal (id_cliente, id_empresa, data_emissao, valor_total) VALUES
(1, 1, '2025-04-01', 150.00),
(2, 1, '2025-04-02', 250.00),
(3, 1, '2025-04-03', 300.00),
(4, 1, '2025-04-04', 75.50),
(5, 1, '2025-04-05', 520.90);

INSERT INTO ItemNota (id_nota, codigo, quantidade, descricao, preco_unitario, preco_total) VALUES
(1, 'P001', 2, 'Teclado USB', 50.00, 100.00),
(1, 'P002', 1, 'Mouse Óptico', 50.00, 50.00),
(2, 'P003', 1, 'Monitor 21"', 250.00, 250.00),
(3, 'P004', 3, 'Cabo HDMI', 30.00, 90.00),
(3, 'P005', 2, 'Adaptador USB', 105.00, 210.00),
(4, 'P006', 1, 'Fonte 500W', 75.50, 75.50),
(5, 'P007', 2, 'Placa-mãe', 200.00, 400.00),
(5, 'P008', 1, 'Cooler Fan', 40.90, 40.90),
(5, 'P009', 2, 'Pasta térmica', 40.00, 80.00),
(5, 'P010', 1, 'HD SSD 240GB', 100.00, 100.00);

UPDATE Cliente 
SET telefone = '(61) 98888-1234' 
WHERE id_cliente = 3;

DELETE FROM ItemNota 
WHERE id_item = 4;

INSERT INTO Cliente (nome, endereco, cpf, telefone) VALUES
('Bruno Castro', 'Rua F, Nº 60', '852.963.741-00', '(61) 99999-0006'),
('Larissa Alves', 'Rua G, Nº 70', '147.258.369-00', '(61) 99999-0007'),
('Tiago Martins', 'Rua H, Nº 80', '369.258.147-00', '(61) 99999-0008');

UPDATE Empresa 
SET endereco = 'Avenida Central, Quadra 10, Taguatinga - DF' 
WHERE id_empresa = 1;

DELETE FROM Cliente 
WHERE id_cliente = 5;
