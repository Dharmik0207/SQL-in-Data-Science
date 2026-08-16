CREATE DATABASE course;

USE course;

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

SELECT * FROM student;

-- ALTER (to Change the Schema)

-- ADD Column
  
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- MODIFY Column

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

-- CHANGE Column(rename & Datatype)

ALTER TABLE student
CHANGE age student_age INT;

INSERT INTO student
(rollno, name, marks, student_age)
VALUES
(107, "gargi", 68, 100);

-- DROP Column

ALTER TABLE student
DROP COLUMN student_age;

-- RENAME Table 

ALTER TABLE stu
RENAME TO student;

-- Truncate (to delete table´s data)

TRUNCATE TABLE student;

-- In the student table:
-- a. change the name of column "name" to "full_name".

ALTER TABLE student
RENAME COLUMN name TO full_name;

ALTER TABLE student
CHANGE name full_name VARCHAR(50);

-- b. Delete all the students who scored marks less than 80.

DELETE FROM student
WHERE marks < 80;

-- c. Delete the column for grades.

ALTER TABLE student
DROP COLUMN grade;












