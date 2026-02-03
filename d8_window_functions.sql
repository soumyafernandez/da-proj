CREATE DATABASE IF NOT EXISTS d8_company;
USE d8_company;
CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
INSERT INTO employees VALUES
(1, 'Amit', 'IT', 70000),
(2, 'Neha', 'IT', 85000),
(3, 'Rahul', 'HR', 60000),
(4, 'Priya', 'HR', 60000),
(5, 'Karan', 'Sales', 50000);
SELECT emp_name, department, salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees;
SELECT emp_name, department, salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;

SELECT VERSION();

SELECT 
    emp_name,
    department,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;

SELECT emp_name, department, salary,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank
FROM employees;






