-- SQLite demo

-- create table 

CREATE TABLE students (
	id INTEGER PRIMARY KEY NOT NULL,
	first_name TEXT,
	last_name TEXT,
	age INTEGER
);

-- example for a new records adding

INSERT INTO students (first_name, last_name, age) VALUES ("Evgeny", "Bartenev", 36);
INSERT INTO students (first_name, last_name, age) VALUES ("Mike", "Stein", 57);

-- PostgreSQL Demo
-- PostgreSQL connection details

Host: 
User: 
Password: 

-- create a new table

CREATE TABLE students (
	id SERIAL PRIMARY KEY,
	logintime timestamp DEFAULT NOW(),
	first_name TEXT,
	last_name TEXT,
	nickname varchar(120) NOT null,
	oper_sys varchar(20),
	age INTEGER
);

-- adding new records

INSERT INTO students (first_name, last_name, nickname, age) VALUES ('Евгений', 'Бартенев', 'evbart', 36);

INSERT INTO students (first_name, last_name, nickname, age, oper_sys) VALUES ('Mark', 'Stein', 'Mikky', 57, 'Windows 10');


-- delete table

DROP TABLE students;


-- CRUD: Create, Read, Update, Delete



-- Read

SELECT * FROM students;

SELECT first_name FROM students;

SELECT first_name, age FROM students WHERE first_name = 'Evgeny';

SELECT first_name, age FROM students WHERE first_name LIKE 'Ev%';

SELECT COUNT(*) FROM students

-- Update

UPDATE students SET first_name='Jimm' WHERE first_name='Evgeny';
UPDATE students SET age=20;


-- Delete

DELETE FROM students WHERE age=20;
DELETE FROM students WHERE age=57 AND last_name='Stein';
DELETE FROM students;

-- Homework

Напишите запрос, который покажет 3 самых популярных имени, среди пользователей Windows в порядке убывания
Напишите запрос, который покажет сколько у нас есть пользователей линукс, младше 25 лет






