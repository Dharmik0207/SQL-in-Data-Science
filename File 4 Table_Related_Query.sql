CREATE DATABASE schools;

USE schools;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks) DESC;

CREATE TABLE payment(
	customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    mode VARCHAR(50),
    city VARCHAR(20)
);

INSERT INTO payment
(customer_id, name, mode, city)
VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');

SELECT * FROM payment;

-- Practice Questions :

SELECT mode, COUNT(name)
FROM payment
GROUP BY mode;  


SELECT grade, COUNT(rollno)
FROM student
GROUP BY grade
ORDER BY grade;

-- Apply All General Order


SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city DESC;

SET SQL_SAFE_UPDATES = 0;

-- UPDATE Query

UPDATE student
SET grade = "O"
WHERE grade = "A";

UPDATE student
SET marks = 82
WHERE rollno = 105;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90; 

UPDATE student
SET marks = marks + 1;

UPDATE student
SET marks = 12
WHERE rollno = 105;

-- Delete Query

DELETE FROM student
WHERE marks < 33;

SELECT * FROM student;


