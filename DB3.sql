/* Заполнение таблицы city
*/
INSERT INTO city (city_id, city_name) VALUES (1, 'Москва');
INSERT INTO city (city_id, city_name) VALUES (2, 'Санкт-Петербург');
INSERT INTO city (city_id, city_name) VALUES (3, 'Казань');
INSERT INTO city (city_id, city_name) VALUES (4, 'Владивосток');
INSERT INTO city (city_id, city_name) VALUES (5, 'Самара');
INSERT INTO city (city_id, city_name) VALUES (6, 'Новосибирск');


/* Внешний ключ в таблице employee
*/
ALTER TABLE IF EXISTS public.employee
    ADD FOREIGN KEY (city_id) REFERENCES city(city_id)

/* Добавление городов id сотрудникам в таблице employee
*/
UPDATE employee SET city_id = 1 WHERE id = 1;
UPDATE employee SET city_id = 1 WHERE id = 3;
UPDATE employee SET city_id = 2 WHERE id = 4;
UPDATE employee SET city_id = 3 WHERE id = 5;
UPDATE employee SET city_id = 4 WHERE id = 2;


/*Получите имена и фамилии сотрудников, а также города, в которых они проживают.
*/
SELECT e.first_name, e.last_name, c.city_name FROM employee e JOIN city c
ON e.city_id = c.city_id

/*Получите города, а также имена и фамилии сотрудников, которые в них проживают. Если в городе никто из сотрудников не живет, то вместо имени должен стоять null.
*/
SELECT c.city_name, e.first_name, e.last_name FROM city c LEFT JOIN employee e
ON e.city_id = c.city_id
ORDER BY c.city_name

/*Получите имена всех сотрудников и названия всех городов. Если в городе не живет никто из сотрудников, то вместо имени должен стоять null. Аналогично, если города для какого-то из сотрудников нет в списке, так же должен быть получен null.
*/
SELECT e.first_name, c.city_name  FROM city c FULL JOIN employee e
                                                        ON e.city_id = c.city_id
ORDER BY c.city_name

/*Получите таблицу, в которой каждому имени должен соответствовать каждый город.
*/
SELECT e.first_name, e.last_name, c.city_name FROM city c CROSS JOIN employee e