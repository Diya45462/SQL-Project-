create database multi ;
use multi ; 
CREATE TABLE departments (
  dept_id INT PRIMARY KEY AUTO_INCREMENT,
  dept_name VARCHAR(100),
  location VARCHAR(100)
);
CREATE TABLE employees (
  emp_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_name VARCHAR(100),
  dept_id INT,
  salary DECIMAL(10,2),
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO departments (dept_name, location) VALUES
('HR', 'Delhi'),
('Finance', 'Mumbai'),
('IT', 'New York'),
('Marketing', 'Bangalore');
INSERT INTO employees (emp_name, dept_id, salary) VALUES
('Amit Sharma', 1, 50000.00),
('Neha Gupta', 2, 60000.00),
('Rohit Mehta', 3, 55000.00),
('Priya Singh', 1, 52000.00),
('Anil Verma', 4, 45000.00);
UPDATE employees
SET salary = salary * 1.05
WHERE dept_id = (
  SELECT dept_id FROM departments WHERE dept_name = 'HR'
);
DELETE FROM employees
WHERE dept_id IN (
  SELECT dept_id FROM departments WHERE location = 'New York'
);
ALTER TABLE employees DROP FOREIGN KEY employees_ibfk_1;
DROP TABLE departments;
SELECT * FROM employees;
SELECT * FROM departments;
SHOW CREATE TABLE employees;

