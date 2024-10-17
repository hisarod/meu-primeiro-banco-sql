USE sucos;

drop table tbcliente;
drop table tbproduto;

CREATE TABLE tbclientes
( CPF VARCHAR (11) ,
NOME VARCHAR (100) ,
ENDERECO1 VARCHAR (150) ,
ENDERECO2 VARCHAR (150) ,
BAIRRO VARCHAR (50) ,
CIDADE VARCHAR (50) ,
ESTADO VARCHAR (2) ,
CEP VARCHAR (8) ,
IDADE SMALLINT,
SEXO VARCHAR (1) ,
LIMITE_CREDITO FLOAT ,
VOLUME_COMPRA FLOAT ,
PRIMEIRA_COMPRA BIT );

ALTER TABLE tbclientes add primary key (CPF);


CREATE TABLE tbprodutos(
PRODUTO VARCHAR(20),
NOME VARCHAR(150),
EMBALAGEM VARCHAR(50),
TAMANHO VARCHAR(50),
SABOR VARCHAR(50),
PRECO_LISTA FLOAT);

ALTER TABLE tbprodutos add primary key (PRODUTO);

INSERT INTO tbclientes (CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE, SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA)
VALUES 
('12345678901', 'Maria Silva', 'Rua A, 123', 'Apto 10', 'Centro', 'São Paulo', 'SP', '01001000', 30, 'F', 5000.00, 1500.00, 1),
('23456789012', 'João Pereira', 'Rua B, 456', '', 'Jardim das Flores', 'Rio de Janeiro', 'RJ', '20020000', 45, 'M', 7000.00, 2000.50, 0),
('34567890123', 'Ana Costa', 'Av. Principal, 789', 'Casa', 'Vila Nova', 'Belo Horizonte', 'MG', '30130100', 28, 'F', 3000.00, 1200.75, 1),
('45678901234', 'Pedro Souza', 'Rua C, 321', 'Apto 5', 'Industrial', 'Curitiba', 'PR', '80080100', 50, 'M', 10000.00, 500.50, 0),
('56789012345', 'Juliana Rocha', 'Av. Brasil, 654', 'Cobertura', 'Zona Sul', 'Porto Alegre', 'RS', '90040000', 38, 'F', 8000.00, 3000.00, 0),
('67890123456', 'Ricardo Oliveira', 'Rua D, 987', '', 'Centro', 'Salvador', 'BA', '40040000', 35, 'M', 4000.00, 250.00, 1),
('78901234567', 'Fernanda Lima', 'Rua E, 147', 'Apto 2', 'Centro', 'Fortaleza', 'CE', '60060000', 27, 'F', 4500.00, 3200.00, 1),
('89012345678', 'Carlos Nascimento', 'Av. Norte, 258', '', 'Parque das Nações', 'Recife', 'PE', '50050000', 40, 'M', 6000.00, 100.00, 0),
('90123456789', 'Mariana Teixeira', 'Rua F, 369', 'Casa', 'Ponte Alta', 'Brasília', 'DF', '70070000', 22, 'F', 2000.00, 1750.00, 1),
('01234567890', 'Felipe Carvalho', 'Av. Central, 741', 'Cobertura', 'Centro', 'Goiânia', 'GO', '74000000', 29, 'M', 5500.00, 800.00, 0);

INSERT INTO tbprodutos (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('001', 'Biscoito Recheado', 'Pacote', '150g', 'Chocolate', 4.50),
('002', 'Suco Natural', 'Garrafa', '1L', 'Laranja', 7.90),
('003', 'Chocolate em Barra', 'Unidade', '100g', 'Amargo', 5.75),
('004', 'Cereal Matinal', 'Caixa', '500g', 'Mel', 12.50),
('005', 'Sorvete', 'Pote', '2L', 'Baunilha', 19.90),
('006', 'Água Mineral', 'Garrafa', '500ml', 'Sem Gás', 1.25),
('007', 'Iogurte', 'Pote', '170g', 'Morango', 2.90),
('008', 'Batata Frita', 'Pacote', '120g', 'Sabor Original', 6.80),
('009', 'Molho de Tomate', 'Sachê', '340g', 'Tradicional', 3.50),
('010', 'Achocolatado em Pó', 'Lata', '400g', 'Chocolate', 8.75);

SELECT * FROM tbclientes where IDADE < 18;

update tbprodutos set SABOR = 'Achocolatado' where SABOR = 'Chocolate';