CREATE DATABASE company_db;
USE company_db;
CREATE TABLE employees(
  emp_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_name VARCHAR(100) NOT NULL,
  department VARCHAR(50),
  salary DECIMAL(10,2),
  join_date DATE,
  manager_id INT
);
INSERT INTO employees (emp_name, department, salary, join_date, manager_id) VALUES
('Amit Kumar', 'Sales', 50000, '2021-03-12', 101),
('Neha Sharma', 'HR', 45000, '2020-07-10', 102),
('Ravi Singh', 'Sales', 52000, '2019-09-25', NULL),
('Pooja Mehta', 'IT', 60000, '2022-01-15', 103),
('Rohan Das', 'IT', 58000, '2019-10-05', 103);
UPDATE employees
SET join_date = '2019-10-05'
WHERE emp_id = 5;
select * from employees limit 5 ; 
UPDATE employees
SET salary = salary *1.10
WHERE department = 'Sales';
select department, salary from employees;
update employees 
set salary = salary /1.10
where department = 'sales';
select * from employees ; 
DELETE FROM employees
WHERE join_date < '2020-01-01';
select * from employees;