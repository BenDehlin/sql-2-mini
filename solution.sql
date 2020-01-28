CREATE TABLE movie 
(id SERIAL PRIMARY KEY, 
 title VARCHAR(100), 
 media_type_id INTEGER,
 FOREIGN KEY(media_type_id) REFERENCES media_type(media_type_id));
 
 INSERT INTO movie (title, media_type_id)
 VALUES ('A really great movie', 2);
 
 SELECT * FROM movie;
 
ALTER TABLE movie ADD COLUMN genre_id INTEGER REFERENCES genre(genre_id);

SELECT * FROM movie;

UPDATE TABLE movie
SET genre_id = 22
WHERE movie_id = 1;

SELECT * FROM movie;

SELECT al.title, ar.name
FROM album al
JOIN artist ar ON ar.artist_id = al.artist_id

SELECT * FROM track
WHERE genre_id IN (SELECT genre_id FROM genre WHERE name = 'Jazz' OR name = 'Blues' );

UPDATE employee
SET phone = null
WHERE employee_id = 1;

SELECT * FROM customer WHERE company IS null;

SELECT ar.artist_id, ar.artist_name, COUNT(*)
FROM artist ar
JOIN album al ON ar.artist_id = al.artist_id
GROUP BY ar.artist_id;

SELECT DISTINCT country FROM customer;

SELECT * FROM customer WHERE fax IS null;
DELETE FROM customer WHERE fax IS null;
