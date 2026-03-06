

CREATE TABLE dominos_employees (
Emp_id INT PRIMARY KEY,
First_name VARCHAR(50),
Last_name VARCHAR(50),
Category VARCHAR(50),
Hire_date DATE,
Salary Decimal(10, 2),
is_active BOOLEAN
);


INSERT INTO dominos_employees (Emp_id, First_name, Last_name, Category, Hire_date, Salary, is_active) VALUES
(1, 'Dharmik', 'Gadhiya', 'Fahrrad', '2025-02-01', 75000.00, TRUE),
(2, 'Harsh', 'Golakiya', 'Motorrad', '2025-07-01', 68000.00, TRUE),
(3, 'Brijesh', 'Dungrani', 'Developer', '2021-01-20', 72000.00, TRUE),
(4, 'Kirti', 'Kalathiya', 'Physiotherapy', '2018-11-05', 66000.00, TRUE),
(5, 'Khushi', 'Moradiya', 'Engineering', '2022-06-10', 80000.00, FALSE),
(6, 'JUNAID', 'ABDUL', 'Sales', '2023-02-25', 62000.00, TRUE),
(7, 'PARTH', 'SALIYA', 'IT Support', '2017-09-12', 59000.00, FALSE);

CREATE TABLE Emp_details (
	personal_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    date_of_birth DATE,
    Mobile_number VARCHAR(15),
    email VARCHAR(100),
    address TEXT,
    marital_status VARCHAR(20),
    FOREIGN KEY (employee_id) REFERENCES dominos_employees(Emp_id)
    );

INSERT INTO Emp_details (employee_id, date_of_birth, Mobile_number, email, address, marital_status) VALUES
(1, '2000-04-25', '555-2345', 'dharmikgadhiya1293.com', 'Eschbiorner Landstrasse', 'Married'),
(2, '1999-08-10', '555-1234', 'golakiyaharsh99.com', '301, Antriksh Heights', 'Single'),
(3, '1998-07-30', '555-4567', 'dungranibrijesh007@gmail.com', 'sudermannstrasse 26', 'Married'),
(4, '2000-07-02', '555-7890', 'kirtikalathiya22.com', '903, Lakeview Herights', 'Married'),
(5, '2001-09-10', '555-1357', 'khushimoradiya1009@gmail.com', '65, Shreeji Nagar society', 'Single'),
(6, '1998-12-25', '555-24678', 'abduljunaid@gmail.com', '987 Birch St, Springfield', 'Single'),
(7, '1998-04-18', '555-9988', 'parthsaliya123@gmail.com', '202, Antriksh Heights', 'Divorced');

SELECT first_name, last_name FROM dominos_employees
union
SELECT email, address FROM Emp_details;



-- CREATE TABLE employees (
-- 	employee_id INT PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     department VARCHAR(50),
--     hire_date DATE,
--     salary DECIMAL(10, 2),
--     is_activate BOOLEAN
--     ); 

-- -- Insert sample rows into the employee table
-- INSERT INTO employees (employee_id, first_name, last_name, department, hire_date, salary, is_activate) VALUES
-- (1, 'Alice', 'Johnson', 'Engineering', '2020-03-15', 75000.00, TRUE),
-- (2, 'Bob', 'Smith', 'Marketing', '2019-07-01', 68000.00, TRUE),
-- (3, 'Charlie', 'Davis', 'Finance', '2021-01-20', 72000.00, TRUE),
-- (4, 'Dana', 'Lee', 'Human Resources', '2018-11-05', 66000.00, FALSE),
-- (5, 'Evan', 'Taylor', 'Engineering', '2022-06-10', 80000.00, TRUE),
-- (6, 'Fiona', 'Clark', 'Sales', '2023-02-25', 62000.00, TRUE),
-- (7, 'George', 'Wright', 'IT Support', '2017-09-12', 59000.00, FALSE);
--  

-- SELECT * FROM employees;


-- CREATE TABLE emp_personal (
-- 	personal_id INT AUTO_INCREMENT PRIMARY KEY,
--     employee_id INT,
--     date_of_birth DATE,
--     phone_number VARCHAR(15),
--     email VARCHAR(100),
--     address TEXT,
--     marital_status VARCHAR(20),
--     FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
-- );

-- INSERT INTO emp_personal (employee_id, date_of_birth, phone_number, email, address, marital_status) VALUES
-- (1, '1990-05-21', '555-1234', 'alice.johnson@example.com', '123 Elm St, Springfield', 'Single'),
-- (2, '1987-09-14', '555-5678', 'bob.smith@example.com', '456 Oak St, Springfield', 'Married'),
-- (3, '1992-11-02', '555-8765', 'charlie.davis@example.com', '789 Pine St, Springfield', 'Single'),
-- (4, '1985-03-30', '555-2345', 'dana.lee@example.com', '321 Maple St, Springfield', 'Married'),
-- (5, '1995-08-10', '555-3456', 'evan.taylor@example.com', '654 Cedar St, Springfield', 'Single'),
-- (6, '1998-12-25', '555-9876', 'fiona.clark@example.com', '987 Birch St, Springfield', 'Single'),
-- (7, '1983-04-18', '555-1122', 'george.wright@example.com', '159 Walnut St, Springfield', 'Divorced');



-- SELECT first_name, last_name FROM employees
-- union
-- SELECT email, address FROM emp_personal;