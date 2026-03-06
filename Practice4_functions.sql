-- USE dharmikjoins;

-- 1. Count total employees
-- SELECT count(*) as dominos_employees FROM employees;

-- 2. Find total salary of all employees
-- SELECT SUM(salary) AS total_salary FROM employees; 

-- 3. Find average salary
-- SELECT avg(SALARY) AS Avg_Salary FROM employees;

-- 4.Find the highest salary
-- SELECT max(salary) AS Highest_Salary FROM employees; 

-- 5. Find the lowest salary 
-- SELECT min(salary) AS Lowest_Salary FROM employees; 

-- 6. Show Employee Full name
-- SELECT first_name, last_name, concat(first_name, ' ', last_name) AS Name from dominos_employees; 

-- 7. Show length of employee first name 
-- SELECT first_name, length(first_name) AS length from dominos_employees;

-- 8. Show hire year of employees
-- SELECT first_name, year(hire_date) AS hire_year from dominos_employees;  

-- 8. Show hire month & year of employees
-- SELECT first_name, date(hire_date), month(hire_date), year(hire_date) AS Month_and_year from dominos_employees;

-- 9. Find how many days employees have worked
-- SELECT first_name, datediff(now(), hire_date) AS days_worked from dominos_employees; 

-- 10.  Find how many days employees have worked
-- SELECT first_name, round(datediff(now(), hire_date)/365) AS years_worked from dominos_employees;

-- 11. Categorize salary IF()
-- SELECT first_name, salary, IF(salary > 70000, 'High salary', 'Low Salary') AS Salary_Category from dominos_employees; 

-- 12. Count employees in each department
-- SELECT Category, count(*) AS total_employees from dominos_employees GROUP BY Category; 

-- 13. Total Salary by Department
-- SELECT Category, SUM(salary) AS total_salary from dominos_employees GROUP BY Category;

 -- 14. Departments where average salary is greater than 70000
--  SELECT Category, avg(salary) AS Avg_salary FROM dominos_employees GROUP BY Category HAVING avg(salary) > 70000;

