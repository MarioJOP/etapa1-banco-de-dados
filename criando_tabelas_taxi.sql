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

CREATE TABLE pizza(
	sabor VARCHAR(30),
    preco FLOAT,
    PRIMARY KEY(sabor)
);

DROP TABLE pizza;

ALTER TABLE cliente_particular 
	ADD nome VARCHAR(30);
    
ALTER TABLE cliente_particular 
	MODIFY COLUMN nome date;
ALTER TABLE cliente_particular
	DROP nome;
    
INSERT INTO cliente VALUES (1, 'Mario');  
INSERT INTO cliente VALUES (2, 'Ana');  
INSERT INTO cliente VALUES (3, 'Jonas');  
INSERT INTO cliente VALUES (4, 'Maria');  

INSERT INTO cliente_particular VALUES (1, '123.456.766-32');
INSERT INTO cliente_particular VALUES (2, '631.516.966-17');
INSERT INTO cliente_particular VALUES (3, '273.176.916-52');
INSERT INTO cliente_particular VALUES (4, '299.121.931-97');

INSERT INTO cliente_empresa VALUES(1, '15.626.888/1501-77');
INSERT INTO cliente_empresa VALUES(2, '35.16.868/1551-71');
INSERT INTO cliente_empresa VALUES(3, '17.876.444/1211-97');
INSERT INTO cliente_empresa VALUES(4, '11.522.558/1291-87');

INSERT INTO taxi VALUES('ITA-123', 'Toyota', 'modeloA', 2005);
INSERT INTO taxi VALUES('USA-183', 'Toyota', 'modeloA', 2015);
INSERT INTO taxi VALUES('CAN-672', 'Honda', 'modeloB', 2020);
INSERT INTO taxi VALUES('USA-171', 'Toyota', 'modeloC', 2010);

SELECT * FROM cliente;
SELECT * FROM cliente_particular;
SELECT * FROM cliente_empresa;

DESCRIBE cliente;
DESCRIBE cliente_particular;
DESCRIBE cliente_empresa;
DESCRIBE taxi;
DESCRIBE corrida;