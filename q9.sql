create database e_commerce ;
use e_commerce ;
CREATE TABLE customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100),
  country VARCHAR(50),
  total_spent DECIMAL(10,2)
);
INSERT INTO customers (name, email, country, total_spent) VALUES
('Amit Sharma', 'amit@example.com', 'India', 1200.00),
('John Doe', 'john@example.com', 'USA', 800.00),
('Maria Lopez', 'maria@example.com', 'Spain', 450.00),
('Linda Chen', 'linda@example.com', 'China', 950.00),
('David Smith', 'david@example.com', 'USA', 90.00),
('Sofia Rossi', 'sofia@example.com', 'Italy', 300.00);
UPDATE customers
SET total_spent = total_spent + 200
WHERE country = 'USA';
DELETE FROM customers
WHERE total_spent < 100;
ALTER TABLE customers
ADD COLUMN loyalty_level VARCHAR(20);
UPDATE customers set loyalty_level = case 
WHEN total_spent > 1000 THEN 'Gold'
WHEN total_spent BETWEEN 500 AND 1000 THEN 'Silver'
ELSE 'Bronze'
end;
SELECT * FROM customers;
