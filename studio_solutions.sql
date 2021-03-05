-- List just the titles of all the movies in the database.
SELECT title FROM movies;

-- List the title and year of each movie in the database in DESCENDING order of the year released.
-- (Hint: Combine the SELECT command with the ORDER BY keywords).
SELECT title, year_released FROM movies ORDER BY year_released DESC, title ASC;

-- List all columns for all records of the directors table in ASCENDING alphabetical order based on the director’s country of origin.
SELECT * FROM directors ORDER BY country ASC;

-- ORDER BY can also consider multiple columns. 
-- List all columns for all records of the directors table in ASCENDING alphabetical order 
-- first by the director’s country of origin and then by the director’s last name.
SELECT * FROM directors ORDER BY country ASC, last_name ASC;

-- Insert a new record into the directors table for Rob Reiner, an American film director.
INSERT INTO directors (first_name, last_name, country) VALUES("Rob", "Reiner", "USA");

-- Combine the SELECT and WHERE keywords to list the last_name and director_id for Rob Reiner.
SELECT director_id, last_name FROM directors WHERE last_name = "Reiner"; -- 11

-- Insert a new record into the movies table for The Princess Bride, which was released in 1987 and directed by Rob Reiner.
INSERT INTO movies (title, year_released, director_id) VALUES("The Princess Bride", 1987, 11);
SELECT director_id FROM movies WHERE director_id = 11;

-- Use an INNER JOIN in your SQL command to display a list of movie titles, years released, and director last names.
SELECT title, year_released, directors.last_name FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id;

-- List all the movies in the database along with the first and last name of the director.
-- Order the list alphabetically by the director’s last name.
SELECT m.title "movie", d.last_name "director last name", d.first_name "director first name" FROM movies m
INNER JOIN directors d ON m.director_id = d.director_id ORDER BY d.last_name ASC;

-- List the first and last name for the director of The Incredibles.
-- You can do this with either a join or a WHERE command, but for this step please use WHERE.
SELECT first_name, last_name FROM directors WHERE director_id = (SELECT director_id FROM movies WHERE title = "The Incredibles");

-- List the last name and country of origin for the director of Roma. 
-- You can do this with either a join or a WHERE command, but for this step please use a join.
SELECT last_name, country FROM directors INNER JOIN movies ON directors.director_id = movies.director_id AND movies.title = "Roma";











