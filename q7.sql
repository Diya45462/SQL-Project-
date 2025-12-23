create database hospital ;
use hospital ; 
CREATE TABLE patients (
  patient_id INT PRIMARY KEY AUTO_INCREMENT,
  patient_name VARCHAR(100),
  age INT,
  disease VARCHAR(50),
  admit_date DATE,
  discharge_date DATE
);
INSERT INTO patients (patient_name, age, disease, admit_date, discharge_date) VALUES
('Amit Sharma', 30, 'Flu', '2024-10-01', NULL),
('Neha Gupta', 45, 'Diabetes', '2024-03-10', '2024-03-25'),
('Rohit Mehta', 28, 'Flu', '2024-11-01', NULL),
('Priya Singh', 50, 'Heart Disease', '2024-01-15', '2024-02-05'),
('Anil Verma', 35, 'Fracture', '2024-04-20', '2024-05-10');
UPDATE patients
SET discharge_date = '2024-11-09'
WHERE disease = 'Flu';
DELETE FROM patients
WHERE discharge_date IS NOT NULL
AND discharge_date < '2024-05-09';
SELECT * FROM patients;
ALTER TABLE patients ADD COLUMN room_no INT;
UPDATE patients
SET room_no = 101
WHERE discharge_date IS NULL;
select * from patients ;
