INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Ivan', 'Ivanov', 'Male', 51);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Petr', 'Petrov', 'Male', 28);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Natasha', 'Sidorova', 'Female', 43);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Vadim', 'Bukov', 'Male', 24);
INSERT INTO employee (first_name, last_name, gender, age) VALUES ('Irina', 'Loseva', 'Female', 32);

SELECT first_name, last_name FROM employee;
SELECT * FROM employee WHERE age < 30 or age > 50;
SELECT * FROM employee WHERE age BETWEEN 30 AND 50;
SELECT * FROM employee ORDER BY last_name DESC;
SELECT * FROM employee WHERE length(first_name) > 4;

UPDATE employee SET first_name='Petr' WHERE id=4;
UPDATE employee SET first_name='Irina' WHERE id=3;

SELECT first_name, SUM(age) FROM employee
GROUP BY first_name;

SELECT first_name, age FROM employee
WHERE age in (SELECT MIN(age) FROM employee);

SELECT first_name, MAX(age) FROM employee
GROUP BY first_name HAVING COUNT(first_name)>1
ORDER BY 2;