CREATE DATABASE college;
USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

SELECT * FROM student;

CREATE TABLE temp1(
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20)
    PRIMARY KEY (id, name)
);

CREATE TABLE emp(
	id INT,
    salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES (101);

SELECT * FROM emp;