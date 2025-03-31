USE spa;
DROP TABLE IF EXISTS chat;
CREATE TABLE chat(
id INT NOT NULL auto_increment primary key,
nom VARCHAR(20) NOT NULL,
age INT NOT NULL,
couleur_id INT 
)ENGINE=INNODB;

INSERT INTO chat (nom, age, couleur_id) VALUES ('maine coon', '20', '1');
INSERT INTO chat (nom, age, couleur_id) VALUES ('siamois', '15', '2');
INSERT INTO chat (nom, age, couleur_id) VALUES ('bengal', '18', '1');
INSERT INTO chat (nom, age, couleur_id) VALUES ('scottish fold', '10', '1');
INSERT INTO chat (nom, age) VALUES ('domestique', '21');

DROP TABLE IF EXISTS couleur;
CREATE TABLE couleur(
id INT NOT NULL auto_increment primary key,
nom VARCHAR(20) NOT NULL
)ENGINE=INNODB;


INSERT INTO couleur (nom) VALUES ('marron');
INSERT INTO couleur (nom) VALUES ('bleu');
INSERT INTO couleur (nom) VALUES ('vert');

SELECT chat.id, chat.nom, couleur.nom, age FROM chat INNER JOIN couleur ON chat.couleur_id = couleur.id;
SELECT * FROM chat;
select * from couleur;
SELECT chat.id, chat.nom, couleur.nom, age FROM chat LEFT JOIN couleur ON chat.couleur_id = couleur.id;
SELECT * FROM chat WHERE couleur_id is null;
SELECT count(chat.id), couleur.nom from chat RIGHT join couleur on chat.couleur_id =couleur.id GROUP BY couleur.nom;
SELECT count(chat.id), couleur.nom from chat Right join couleur on chat.couleur_id =couleur.id GROUP BY couleur.nom;
SELECT AVG(chat.couleur_id) from chat INNER join couleur on chat.couleur_id =couleur.id;
SELECT COUNT(chat.id)/COUNT(DISTINCT couleur.id) as moyenne FROM couleur
LEFT JOIN chat on couleur.id = chat.couleur_id;
truncate chat;
truncate couleur;