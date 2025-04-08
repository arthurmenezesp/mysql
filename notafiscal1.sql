CREATE DATABASE NotaFiscalDB;
USE NotaFiscalDB;

CREATE TABLE Empresa (
    id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    nome_fantasia VARCHAR(100),
    razao_social VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(255),
    cep VARCHAR(10),
    cf_df VARCHAR(20),
    cnpj VARCHAR(20)
);

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    cpf VARCHAR(14),
    telefone VARCHAR(20)
);

CREATE TABLE NotaFiscal (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_empresa INT,
    data_emissao DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_empresa) REFERENCES Empresa(id_empresa)
);

CREATE TABLE ItemNota (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_nota INT,
    codigo VARCHAR(20),
    quantidade INT,
    descricao VARCHAR(255),
    preco_unitario DECIMAL(10, 2),
    preco_total DECIMAL(10, 2),
    FOREIGN KEY (id_nota) REFERENCES NotaFiscal(id_nota)
);
