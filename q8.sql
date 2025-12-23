create database theatre ;
use theatre ;
CREATE TABLE movies (
  movie_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100),
  release_year INT,
  genre VARCHAR(50),
  rating DECIMAL(2,1),
  box_office DECIMAL(12,2)
);
INSERT INTO movies (title, release_year, genre, rating, box_office) VALUES
('Inception', 2010, 'Sci-Fi', 4.8, 829.89),
('The Dark Knight', 2008, 'Action', 4.9, 1004.56),
('La La Land', 2016, 'Romance', 4.3, 446.10),
('Joker', 2019, 'Drama', 4.5, 1074.30),
('Cars 2', 2011, 'Animation', 2.8, 562.12);
UPDATE movies
SET rating = rating + 0.5
WHERE release_year < 2015;
DELETE FROM movies
WHERE rating < 3.0;
ALTER TABLE movies
RENAME COLUMN box_office TO revenue;
SELECT * FROM movies;
