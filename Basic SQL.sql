CREATE DATABASE clg;

USE clg;

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

SELECT DISTINCT city FROM student;

SELECT * 
FROM student
WHERE marks+10 > 100;

SELECT * 
FROM student
WHERE marks > 90 AND city = "Mumbai";

SELECT * 
FROM student
WHERE marks > 90 OR city = "Mumbai";

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student WHERE city IN ("Delhi", "Mumbai", "Surat");

SELECT * FROM student WHERE city NOT IN ("Delhi", "Mumbai");

SELECT * 
FROM student
WHERE marks > 75
LIMIT 3;

SELECT * 
FROM student
ORDER BY marks ASC;

SELECT * 
FROM student
ORDER BY marks DESC
LIMIT 3;

SELECT max(marks) 
FROM student;

SELECT min(marks) 
FROM student;

SELECT AVG(marks) 
FROM student;

SELECT COUNT(rollno) 
FROM student;



