USE schoolssgv;
-- SELECT * FROM student;
UPDATE student SET date_of_birth = 'UNKNOWN' 
WHERE date_of_birth IS NULL;
SELECT * FROM student;
