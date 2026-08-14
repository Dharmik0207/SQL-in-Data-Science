CREATE DATABASE XYZ;

USE XYZ;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT
);

INSERT INTO employee
(id, name, salary)
VALUES
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

SELECT * FROM employee;

CREATE TABLE temp1(
	id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);

SELECT * FROM temp1;