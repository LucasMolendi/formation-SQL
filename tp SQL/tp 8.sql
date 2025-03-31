DROP DATABASE IF EXISTS prime_vdo;
CREATE DATABASE prime_vdo CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE prime_vdo;

CREATE TABLE film (
  id INT  NOT NULL AUTO_INCREMENT,
  nom VARCHAR(100) NOT NULL,
  CONSTRAINT pk_film PRIMARY KEY(id)
)ENGINE=INNODB;

CREATE TABLE acteur (
  id INT NOT NULL AUTO_INCREMENT,
  prenom VARCHAR(100) NOT NULL,
  nom VARCHAR(100) NOT NULL,
   CONSTRAINT pk_acteur PRIMARY KEY(id)
)ENGINE=INNODB;

CREATE TABLE film_has_acteur (
  film_id INT NOT NULL,
  acteur_id INT NOT NULL,
  CONSTRAINT pk_film_has_acteur PRIMARY KEY (film_id, acteur_id)
)ENGINE=INNODB;

ALTER TABLE film_has_acteur ADD CONSTRAINT fk_acteur FOREIGN KEY (acteur_id) REFERENCES acteur (id);
ALTER TABLE film_has_acteur ADD CONSTRAINT fk_film FOREIGN KEY (film_id) REFERENCES film (id);

##############
## Les données
##############

INSERT INTO acteur (id, prenom, nom) VALUES
(1, 'Brad', 'PITT'),
(2, 'Léonardo', 'Dicaprio');

INSERT INTO film (id, nom) VALUES
(1, 'Fight Club'),
(2, 'Once Upon a time in Hollywood');

INSERT INTO film_has_acteur 
(film_id, acteur_id) 
VALUES 
('1', '1'), 
('2', '1'), 
('2', '2');

SELECT * FROM acteur;
SELECT * FROM film;
SELECT * FROM film_has_acteur;
SELECT film.nom, acteur.prenom, acteur.nom FROM acteur INNER JOIN film_has_acteur ON acteur.id = film_has_acteur.acteur_id INNER JOIN film ON film.id = film_has_acteur.film_id WHERE acteur.id = 1;
SELECT acteur.prenom, acteur.nom, count(film.id) FROM acteur INNER JOIN film_has_acteur ON acteur.id = film_has_acteur.acteur_id INNER JOIN film ON film.id = film_has_acteur.film_id GROUP BY acteur.prenom ORDER BY COUNT(film.id)ASC;
INSERT INTO film(nom)
	VALUES ('Titanic');
SELECT film.nom FROM film LEFT JOIN film_has_acteur ON film.id = film_has_acteur.film_id WHERE film_has_acteur.acteur_id IS NULL;
INSERT INTO film_has_acteur(film_id,acteur_id) VALUES (3,2);
select* from film_has_acteur;
SELECT film.nom, acteur.prenom, acteur.nom FROM acteur INNER JOIN film_has_acteur ON film_has_acteur.acteur_id = acteur.id INNER JOIN film ON film_has_acteur.film_id = film.id;
INSERT INTO acteur(prenom,nom)
	VALUES ('Tom', 'Cruise');
select * FROM acteur;
SELECT acteur.prenom, acteur.nom, count(film.id) FROM acteur LEFT JOIN film_has_acteur ON acteur.id = film_has_acteur.acteur_id LEFT JOIN film ON film.id = film_has_acteur.film_id GROUP BY acteur.prenom ORDER BY COUNT(film.id)ASC;
SELECT acteur.prenom, acteur.nom FROM acteur LEFT JOIN film_has_acteur ON acteur.id = film_has_acteur.acteur_id LEFT JOIN film ON film.id = film_has_acteur.film_id GROUP BY acteur.prenom having count(film.id) = 2;
SELECT COUNT(acteur.nom)/COUNT(DISTINCT(film.nom)) AS acteur_par_film FROM acteur INNER JOIN film_has_acteur ON film_has_acteur.acteur_id = acteur.id INNER JOIN film ON film_has_acteur.film_id = film.id;
DROP TABLE acteur, film,film_has_acteur;
