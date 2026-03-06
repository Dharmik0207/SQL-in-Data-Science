USE dharmikjoins;
-- SELECT * FROM dominos_employees;
-- CREATE VIEW dharmik AS SELECT first_name, Category, salary, ROUND(DATEDIFF(NOW(), hire_date)/365, 0) AS years_worked from dominos_employees;
-- SELECT * FROM dharmik WHERE years_worked >= 3;
-- CREATE OR REPLACE VIEW dharmik AS SELECT first_name, last_name, Category, salary, ROUND(DATEDIFF(NOW(), hire_date)/365, 0) AS years_worked from dominos_employees;
SELECT * FROM dharmik WHERE years_worked >= 3;