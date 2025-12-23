create database college ;
use college ; 
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    course VARCHAR(100),
    grade VARCHAR(2)
);
INSERT INTO students VALUES
(1, 'Alice Johnson', 20, 'Female', 'BSc Computer Science', 'B'),
(2, 'Bob Miller', 22, 'Male', 'BSc Mathematics', 'A'),
(3, 'Carol White', 19, 'Female', 'BSc Physics', NULL),
(4, 'David Lee', 17, 'Male', 'BSc Computer Science', 'C'),
(5, 'Emma Davis', 21, 'Female', 'BSc Chemistry', 'B');
SET SQL_SAFE_UPDATES = 0;
UPDATE students 
SET grade = 'A' 
WHERE course = 'BSc Computer Science';
select * from students ;
DELETE FROM students 
WHERE age < 18;
ALTER TABLE students ADD COLUMN email VARCHAR(100);
UPDATE students
SET email = REPLACE(name, ' ', '');
select * from students ;