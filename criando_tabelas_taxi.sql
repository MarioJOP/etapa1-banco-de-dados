-- criando tabelas
CREATE TABLE cliente(
	id VARCHAR(4),
    nome VARCHAR(80),
    PRIMARY KEY(id)
);

CREATE TABLE cliente_particular(
	id VARCHAR(4),
    cpf VARCHAR(14),
    PRIMARY KEY(id),
    FOREIGN KEY(id) REFERENCES cliente(id)
);

CREATE TABLE cliente_empresa(
	id VARCHAR(4),
    cnpj VARCHAR(18),
    PRIMARY KEY(id),
    FOREIGN KEY(id) REFERENCES cliente(id)
);

CREATE TABLE taxi(
	placa VARCHAR(7),
    marca VARCHAR(30),
	modelo VARCHAR(30),
    anofab INTEGER,
    PRIMARY KEY(placa)
);

CREATE TABLE corrida(
	cliid VARCHAR(4),
    placa VARCHAR(7),
    dataPedido DATE,
    PRIMARY KEY(cliid, placa, dataPedido),
    FOREIGN KEY(cliid) REFERENCES cliente(id),
    FOREIGN KEY(placa) REFERENCES taxi(placa)
);

-- criando tabela fake
CREATE TABLE pizza(
	sabor VARCHAR(30),
    preco FLOAT,
    PRIMARY KEY(sabor)
);

-- dropando tabela fake
DROP TABLE pizza;

-- alterando tabelas do banco de dados
ALTER TABLE cliente_particular 
	ADD nome VARCHAR(30);
    
ALTER TABLE cliente_particular 
	MODIFY COLUMN nome date;
ALTER TABLE cliente_particular
	DROP nome;
    
-- consultando todas as tabelas
SELECT * FROM cliente;
SELECT * FROM cliente_particular;
SELECT * FROM cliente_empresa;
SELECT * FROM taxi;
SELECT * FROM corrida;

-- verificando informações sobre as tabelas
DESCRIBE cliente;
DESCRIBE cliente_particular;
DESCRIBE cliente_empresa;
DESCRIBE taxi;
DESCRIBE corrida;