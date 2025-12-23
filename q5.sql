create database library_1;
use library_1 ; 
CREATE TABLE books (
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(150),
  author VARCHAR(100),
  genre VARCHAR(50),
  price DECIMAL(6,2),
  available_copies INT
);
INSERT INTO books (title, author, genre, price, available_copies) VALUES
('Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Fantasy', 450.00, 5),
('Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'Fantasy', 480.00, 3),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 350.00, 4),
('Pride and Prejudice', 'Jane Austen', 'Romance', 300.00, 1),
('1984', 'George Orwell', 'Dystopian', 400.00, 6),
('The Notebook', 'Nicholas Sparks', 'Romance', 320.00, 2);
UPDATE books
SET price = price * 1.20
WHERE author = 'J.K. Rowling';
DELETE FROM books
WHERE genre = 'Romance' AND available_copies < 2;
ALTER TABLE books
MODIFY COLUMN price DECIMAL(8,2);
select * from books ;
