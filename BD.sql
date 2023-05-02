CREATE DATABASE skypro;

CREATE TABLE employee (id BIGSERIAL NOT NULL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, gender VARCHAR(6) NOT NULL, age INT NOT NULL);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Ivan', 'Ivanov', 'Male', 25);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Petr', 'Petrov', 'Male', 28);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Natasha', 'Sidorova', 'Female', 23);

SELECT * FROM employee;

UPDATE employee SET first_name = 'Andrey', last_name = 'Andreev', age = 30 WHERE id = 1;

SELECT * FROM employee;

DELETE from employee WHERE id = 2;

SELECT * FROM employee;