USE invitation;
INSERT INTO inv_personne(prenom, nom, age, inscription , etat , statut , cv , salaire )
VALUE ( 'Brad' ,'PITT', 60 , '1970-01-01' , 1 , 'non membre' , 'lorem ipsum' , 2000000 ),
  ('George', 'CLONEY', 62, '1999-01-01', 1, 'membre', 'juste beau',  4000000),
   ('Jean', 'DUJARDIN', 51, '1994-01-01', 0, 'membre', 'brice de nice', 1000000);
SELECT statut,count(id) FROM inv_personne GROUP BY statut;
SELECT * FROM inv_personne where statut = 'membre';
truncate inv_personne;
