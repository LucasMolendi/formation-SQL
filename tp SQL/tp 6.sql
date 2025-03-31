USE videotheque;
DROP TABLE IF EXISTS film;
CREATE TABLE film(id INT NOT NULL auto_increment PRIMARY KEY, titre VARCHAR(50) NOT NULL, sortie VARCHAR(50) NOT NULL, categ_id INT NOT NULL)ENGINE=INNODB;
DROP TABLE IF EXISTS categ;
CREATE TABLE categ(id INT NOT NULL PRIMARY KEY,nom VARCHAR(50) NOT NULL)ENGINE=INNODB;

INSERT INTO film(titre,sortie,categ_id) 
VALUES ('STAR WARS', '1977-05-25', 1),
('THE MATRIX', '1999-06-23', 1),
('PULP FICTION', '1994-10-26', 2);
INSERT INTO categ(id,nom)
VALUES (1, 'Science Fiction'),(2,'Thriller');

SELECT * FROM film;
SELECT * FROM categ;
SELECT *FROM film  INNER JOIN categ ON film.categ_id = categ.id WHERE film.categ_id = 1;
SELECT categ.nom, count(*) FROM film  RIGHT JOIN categ ON film.categ_id = categ.id WHERE film.categ_id=1;
SELECT categ.nom, count(categ.id) FROM film  RIGHT JOIN categ ON film.categ_id = categ.id GROUP BY categ.id;