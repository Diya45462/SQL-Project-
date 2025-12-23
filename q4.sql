create database bank ;
use bank ;
CREATE TABLE accounts (
  account_no INT PRIMARY KEY,
  customer_name VARCHAR(100) NOT NULL,
  balance DECIMAL(12,2),
  account_type VARCHAR(20),
  branch VARCHAR(50)
);
INSERT INTO accounts (account_no, customer_name, balance, account_type, branch) VALUES
(1001, 'Amit Sharma', 45000.00, 'SAVINGS', 'Delhi'),
(1002, 'Neha Gupta', 30000.00, 'CURRENT', 'Mumbai'),
(1003, 'Rohit Mehta', 20000.00, 'SAVINGS', 'Delhi'),
(1004, 'Priya Singh', 70000.00, 'CURRENT', 'Bangalore'),
(1005, 'Anil Verma', 15000.00, 'SAVINGS', 'Pune'),
(1006, 'Kavita Joshi', 90000.00, 'CURRENT', 'Chennai');
UPDATE accounts
SET balance = balance - 5000
WHERE account_no = 1001;
UPDATE accounts
SET balance = balance + 5000
WHERE account_no = 1003;
ALTER TABLE accounts
ADD COLUMN last_transaction_date DATE;
UPDATE accounts
SET last_transaction_date = CURDATE()
WHERE account_no IN (1001, 1003);
SELECT * FROM accounts;

