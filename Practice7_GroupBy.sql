-- USE dharmikjoins;

-- SELECT department, COUNT(*) AS total FROM employees GROUP BY department;

-- SELECT department, is_activate, avg(salary) AS Total FROM employees GROUP BY department, is_activate having total > 60000 ;

-- SELECT department, COUNT(*) AS total FROM employees GROUP BY department HAVING COUNT(*) > 1;

-- SELECT department, is_activate, avg(salary) AS Total FROM employees GROUP BY department, is_activate with rollup ;

-- SELECT department, is_activate, sum(salary) AS Total FROM employees GROUP BY department, is_activate with rollup ;