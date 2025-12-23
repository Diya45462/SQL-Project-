create database inventory ;
use inventory ;
CREATE TABLE products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  category VARCHAR(50),
  price DECIMAL(10,2),
  quantity INT,
  supplier VARCHAR(100)
);
UPDATE products
SET price = price * 1.15
WHERE category = 'Electronics';
DELETE FROM products
WHERE quantity = 0;
ALTER TABLE products
RENAME TO inventory;
SELECT * FROM products;
SELECT * FROM inventory;
