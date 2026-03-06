-- USE dharmikjoins;
-- SELECT * FROM dominos_employees;
-- SELECT first_name, last_name, salary FROM dominos_employees WHERE Salary > (SELECT AVG(salary) FROM dominos_employees);

-- SELECT first_name, last_name FROM employees e WHERE salary > (SELECT avg(salary) FROM employees WHERE Department = e.Department);
SELECT first_name, last_name FROM dominos_employees e WHERE Salary > (SELECT avg(Salary) FROM dominos_employees WHERE Category = e.Category);
-- SELECT * FROM dominos_employees;