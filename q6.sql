CREATE DATABASE online_store;
USE online_store ;

CREATE TABLE orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_name VARCHAR(100),
  order_date DATE,
  product_name VARCHAR(100),
  quantity INT,
  total_price DECIMAL(10,2)
);
-- PART B
INSERT INTO orders (customer_name, order_date, product_name, quantity, total_price) VALUES
('Amit Sharma', '2023-03-15', 'Headphones', 2, 0),
('Neha Gupta', '2022-12-20', 'Smartwatch', 1, 0),
('Rohit Mehta', '2023-05-10', 'Bluetooth Speaker', 3, 0),
('Priya Singh', '2024-01-05', 'Laptop Stand', 4, 0),
('Anil Verma', '2023-08-25', 'Wireless Mouse', 2, 0);
UPDATE orders
SET total_price = quantity * 100;
DELETE FROM orders
WHERE order_date < '2023-01-01';
ALTER TABLE orders
ADD COLUMN status VARCHAR(20) DEFAULT 'Pending';
select * from orders ; 
