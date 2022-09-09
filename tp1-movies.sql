-- Utilizando Insert, Update, Delete.
INSERT INTO `movies_db`.`genres` (`name`, `ranking`, `active`) VALUES ('Investigación', '13', '1');
UPDATE movies_db.genres SET name = 'Investigación Científica' where (id= 13);
delete from movies_db.genres where id=13;

-- Utilizando Select.
SELECT * FROM movies_db.movies;
SELECT first_name, last_name, rating FROM movies_db.actors;
SELECT title AS titulo FROM movies_db.series;

-- Utilizando el Where y Order by.
SELECT first_name, last_name FROM movies_db.actors WHERE rating > 7.5;
SELECT title, rating, awards FROM movies_db.movies WHERE rating > 7.5 AND awards > 2;
SELECT title, rating FROM movies_db.movies ORDER BY rating ASC;

-- Utilizando Limit y Offset.
SELECT title FROM movies_db.movies LIMIT 3;
SELECT * FROM movies_db.movies ORDER BY rating DESC LIMIT 5;
SELECT * FROM movies_db.movies ORDER BY rating DESC LIMIT 5 OFFSET 5;
SELECT * FROM movies_db.actors LIMIT 10 OFFSET 20;

-- Utilizando el Between y Like.
SELECT title, rating FROM movies_db.movies WHERE title LIKE 'Harry Potter%';
SELECT * FROM movies_db.actors WHERE first_name LIKE 'Sam%';
SELECT * FROM movies_db.movies WHERE release_date BETWEEN '2004-01-01' AND '2008-12-31';
