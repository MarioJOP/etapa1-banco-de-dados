-- José Mário Oliveira Patrício, 552330

CREATE DATABASE etapa_bd1;

USE etapa_bd1;


SHOW TABLES;

SELECT DISTINCT Dname FROM department;

SELECT COUNT(DISTINCT Fname) FROM employee
WHERE Dno = (SELECT Dnumber FROM department WHERE Dname = 'Research');

SELECT * FROM department;

INSERT INTO department VALUES ('DataScience', 7,  888665555, NULL);

SELECT * FROM employee;

desc employee;

INSERT INTO employee VALUES ('Mario', NULL, 'Patricio', 456789123, NULL, NULL, 'M', 50000, NULL, 7);
INSERT INTO employee VALUES ('Ana', NULL, 'Braga', 789456123, NULL, NULL, 'F', 60000, NULL, 7);

SELECT * FROM employee;

UPDATE employee 
SET salary = salary + salary*0.235; 

SELECT * FROM dept_locations;

UPDATE dept_locations
SET Dlocation = 'Itapajé CE'
WHERE Dnumber = 4; 

