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

INSERT INTO corrida VALUES(1, 'ITA-123', '2015-07-09');
INSERT INTO corrida VALUES(2, 'USA-183', '2017-05-02');
INSERT INTO corrida VALUES(3, 'CAN-672', '2018-02-06');
INSERT INTO corrida VALUES(4, 'USA-171', '2012-08-12');

UPDATE cliente SET nome = 'José' WHERE id = 1;

UPDATE corrida SET placa = 'ITA-456' WHERE cliid = 1;

UPDATE taxi SET placa = 'ITA-456' WHERE MODEL;
UPDATE taxi SET marca = 'Honda' WHERE placa = 'ITA-123';

SELECT * FROM corrida;
SELECT * FROM cliente;
SELECT * FROM cliente_empresa;
SELECT * FROM cliente_particular;
SELECT * FROM taxi;

