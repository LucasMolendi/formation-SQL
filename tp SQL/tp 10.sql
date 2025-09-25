DROP DATABASE IF EXISTS location_ski;
CREATE DATABASE location_ski;
USE location_ski;

-- Table clients
CREATE TABLE clients (
    noCli INT NOT NULL PRIMARY KEY,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    adresse VARCHAR(120) NOT NULL,
    cpo VARCHAR(5) NOT NULL,
    ville VARCHAR(80) NOT NULL
);

-- Table fiches
CREATE TABLE fiches (
    noFic INT NOT NULL PRIMARY KEY,
    noCli INT NOT NULL,
    dateCrea DATE NOT NULL,
    datePaiement DATE,
    etat ENUM('EC', 'RE','SO') NOT NULL,
    FOREIGN KEY (noCli) REFERENCES clients(noCli)
);

-- Table lignesFic
CREATE TABLE lignesFic (
    noLig INT NOT NULL,
    noFic INT NOT NULL,
    refart CHAR(8) NOT NULL,
    depart DATE NOT NULL,
    retour DATE,
    primary key (noLig,noFic),
    FOREIGN KEY (noFic) REFERENCES fiches(noFic),
    FOREIGN KEY (refart) REFERENCES articles(refart)
);

-- Table categories
CREATE TABLE categories (
    codeCate CHAR(5) NOT NULL PRIMARY KEY,
    libelle VARCHAR(30) NOT NULL
);

-- Table gammes
CREATE TABLE gammes (
    codeGam CHAR(5) NOT NULL PRIMARY KEY,
    libelle VARCHAR(45) NOT NULL
);

-- Table grilleTarifs
CREATE TABLE grilleTarifs (
    codeGam CHAR(5) NOT NULL,
    codeCate CHAR(5) NOT NULL,
    codeTarif CHAR(5),
    PRIMARY KEY (codeGam, codeCate),
    FOREIGN KEY (codeGam) REFERENCES gammes(codeGam),
    FOREIGN KEY (codeCate) REFERENCES categories(codeCate)
);

-- Table articles
CREATE TABLE articles (
    refart CHAR(8) NOT NULL PRIMARY KEY,
    designation VARCHAR(80) NOT NULL,
    codeGam CHAR(5) NOT NULL,
    codeCate CHAR(5) NOT NULL,
    FOREIGN KEY (codeGam) REFERENCES gammes(codeGam),
    FOREIGN KEY (codeCate) REFERENCES categories(codeCate)
);

-- Table tarifs
CREATE TABLE tarifs (
    codeTarif CHAR(5) NOT NULL PRIMARY KEY,
    libelle VARCHAR(30) NOT NULL,
    prixJour DECIMAL(5,0) NOT NULL
);


INSERT INTO clients (noCli, nom, prenom, adresse, cpo, ville) VALUES 
    (1, 'Albert', 'Anatole', 'Rue des accacias', '61000', 'Amiens'),
    (2, 'Bernard', 'Barnabé', 'Rue du bar', '1000', 'Bourg en Bresse'),
    (3, 'Dupond', 'Camille', 'Rue Crébillon', '44000', 'Nantes'),
    (4, 'Desmoulin', 'Daniel', 'Rue descendante', '21000', 'Dijon'),
     (5, 'Ernest', 'Etienne', 'Rue de l’échaffaud', '42000', 'Saint Étienne'),
    (6, 'Ferdinand', 'François', 'Rue de la convention', '44100', 'Nantes'),
    (9, 'Dupond', 'Jean', 'Rue des mimosas', '75018', 'Paris'),
    (14, 'Boutaud', 'Sabine', 'Rue des platanes', '75002', 'Paris');

INSERT INTO fiches (noFic, noCli, dateCrea, datePaiement, etat) VALUES 
    (1001, 14,  DATE_SUB(NOW(),INTERVAL  15 DAY), DATE_SUB(NOW(),INTERVAL  13 DAY),'SO' ),
    (1002, 4,  DATE_SUB(NOW(),INTERVAL  13 DAY), NULL, 'EC'),
    (1003, 1,  DATE_SUB(NOW(),INTERVAL  12 DAY), DATE_SUB(NOW(),INTERVAL  10 DAY),'SO'),
    (1004, 6,  DATE_SUB(NOW(),INTERVAL  11 DAY), NULL, 'EC'),
    (1005, 3,  DATE_SUB(NOW(),INTERVAL  10 DAY), NULL, 'EC'),
    (1006, 9,  DATE_SUB(NOW(),INTERVAL  10 DAY),NULL ,'RE'),
    (1007, 1,  DATE_SUB(NOW(),INTERVAL  3 DAY), NULL, 'EC'),
    (1008, 2,  DATE_SUB(NOW(),INTERVAL  0 DAY), NULL, 'EC');

INSERT INTO tarifs (codeTarif, libelle, prixJour) VALUES
    ('T1', 'Base', 10),
    ('T2', 'Chocolat', 15),
    ('T3', 'Bronze', 20),
    ('T4', 'Argent', 30),
    ('T5', 'Or', 50),
    ('T6', 'Platine', 90);

INSERT INTO gammes (codeGam, libelle) VALUES
    ('PR', 'Matériel Professionnel'),
    ('HG', 'Haut de gamme'),
    ('MG', 'Moyenne gamme'),
    ('EG', 'Entrée de gamme');

INSERT INTO categories (codeCate, libelle) VALUES
    ('MONO', 'Monoski'),
    ('SURF', 'Surf'),
    ('PA', 'Patinette'),
    ('FOA', 'Ski de fond alternatif'),
    ('FOP', 'Ski de fond patineur'),
    ('SA', 'Ski alpin');

INSERT INTO grilleTarifs (codeGam, codeCate, codeTarif) VALUES
    ('EG', 'MONO', 'T1'),
    ('MG', 'MONO', 'T2'),
    ('EG', 'SURF', 'T1'),
    ('MG', 'SURF', 'T2'),
    ('HG', 'SURF', 'T3'),
    ('PR', 'SURF', 'T5'),
    ('EG', 'PA', 'T1'),
    ('MG', 'PA', 'T2'),
    ('EG', 'FOA', 'T1'),
    ('MG', 'FOA', 'T2'),
    ('HG', 'FOA', 'T4'),
    ('PR', 'FOA', 'T6'),
    ('EG', 'FOP', 'T2'),
    ('MG', 'FOP', 'T3'),
    ('HG', 'FOP', 'T4'),
    ('PR', 'FOP', 'T6'),
    ('EG', 'SA', 'T1'),
    ('MG', 'SA', 'T2'),
    ('HG', 'SA', 'T4'),
    ('PR', 'SA', 'T6');

INSERT INTO articles (refart, designation, codeGam, codeCate) VALUES 
    ('F01', 'Fischer Cruiser', 'EG', 'FOA'),
    ('F02', 'Fischer Cruiser', 'EG', 'FOA'),
    ('F03', 'Fischer Cruiser', 'EG', 'FOA'),
    ('F04', 'Fischer Cruiser', 'EG', 'FOA'),
    ('F05', 'Fischer Cruiser', 'EG', 'FOA'),
    ('F10', 'Fischer Sporty Crown', 'MG', 'FOA'),
    ('F20', 'Fischer RCS Classic GOLD', 'PR', 'FOA'),
    ('F21', 'Fischer RCS Classic GOLD', 'PR', 'FOA'),
    ('F22', 'Fischer RCS Classic GOLD', 'PR', 'FOA'),
    ('F23', 'Fischer RCS Classic GOLD', 'PR', 'FOA'),
    ('F50', 'Fischer SOSSkating VASA', 'HG', 'FOP'),
    ('F60', 'Fischer RCS CARBOLITE Skating', 'PR', 'FOP'),
    ('F61', 'Fischer RCS CARBOLITE Skating', 'PR', 'FOP'),
    ('F62', 'Fischer RCS CARBOLITE Skating', 'PR', 'FOP'),
    ('F63', 'Fischer RCS CARBOLITE Skating', 'PR', 'FOP'),
    ('F64', 'Fischer RCS CARBOLITE Skating', 'PR', 'FOP'),
    ('P01', 'Décathlon Allegre junior 150', 'EG', 'PA'),
    ('P10', 'Fischer mini ski patinette', 'MG', 'PA'),
    ('P11', 'Fischer mini ski patinette', 'MG', 'PA'),
    ('S01', 'Décathlon Apparition', 'EG', 'SURF'),
    ('S02', 'Décathlon Apparition', 'EG', 'SURF'),
    ('S03', 'Décathlon Apparition', 'EG', 'SURF'),
    ('A01', 'Salomon 24X+Z12', 'EG', 'SA'),
    ('A02', 'Salomon 24X+Z12', 'EG', 'SA'),
    ('A03', 'Salomon 24X+Z12', 'EG', 'SA'),
    ('A04', 'Salomon 24X+Z12', 'EG', 'SA'),
    ('A05', 'Salomon 24X+Z12', 'EG', 'SA'),
    ('A10', 'Salomon Pro Link Equipe 4S', 'PR', 'SA'),
    ('A11', 'Salomon Pro Link Equipe 4S', 'PR', 'SA'),
    ('A21', 'Salomon 3V RACE JR+L10', 'PR', 'SA');

INSERT INTO lignesFic (noFic, noLig,  refart, depart, retour) VALUES 
    (1001, 1, 'F05', DATE_SUB(NOW(),INTERVAL  15 DAY), DATE_SUB(NOW(),INTERVAL  13 DAY)),
    (1001, 2, 'F50', DATE_SUB(NOW(),INTERVAL  15 DAY), DATE_SUB(NOW(),INTERVAL  14 DAY)),
    (1001, 3, 'F60', DATE_SUB(NOW(),INTERVAL  13 DAY), DATE_SUB(NOW(),INTERVAL  13 DAY)),
    (1002, 1, 'A03', DATE_SUB(NOW(),INTERVAL  13 DAY), DATE_SUB(NOW(),INTERVAL  9 DAY)),
    (1002, 2, 'A04', DATE_SUB(NOW(),INTERVAL  12 DAY), DATE_SUB(NOW(),INTERVAL  7 DAY)),
    (1002, 3, 'S03', DATE_SUB(NOW(),INTERVAL  8 DAY), NULL),
    (1003, 1, 'F50', DATE_SUB(NOW(),INTERVAL  12 DAY), DATE_SUB(NOW(),INTERVAL  10 DAY)),
    (1003, 2, 'F05', DATE_SUB(NOW(),INTERVAL  12 DAY), DATE_SUB(NOW(),INTERVAL  10 DAY)),
    (1004, 1, 'P01', DATE_SUB(NOW(),INTERVAL  6 DAY), NULL),
    (1005, 1, 'F05', DATE_SUB(NOW(),INTERVAL  9 DAY), DATE_SUB(NOW(),INTERVAL  5 DAY)),
    (1005, 2, 'F10', DATE_SUB(NOW(),INTERVAL  4 DAY), NULL),
    (1006, 1, 'S01', DATE_SUB(NOW(),INTERVAL  10 DAY), DATE_SUB(NOW(),INTERVAL  9 DAY)),
    (1006, 2, 'S02', DATE_SUB(NOW(),INTERVAL  10 DAY), DATE_SUB(NOW(),INTERVAL  9 DAY)),
    (1006, 3, 'S03', DATE_SUB(NOW(),INTERVAL  10 DAY), DATE_SUB(NOW(),INTERVAL  9 DAY)),
    (1007, 1, 'F50', DATE_SUB(NOW(),INTERVAL  3 DAY), DATE_SUB(NOW(),INTERVAL  2 DAY)),
    (1007, 3, 'F60', DATE_SUB(NOW(),INTERVAL  1 DAY), NULL),
    (1007, 2, 'F05', DATE_SUB(NOW(),INTERVAL  3 DAY), NULL),
    (1007, 4, 'S02', DATE_SUB(NOW(),INTERVAL  0 DAY), NULL),
    (1008, 1, 'S01', DATE_SUB(NOW(),INTERVAL  0 DAY), NULL);
    
    SELECT * FROM clients;  
    SELECT * FROM fiches;
    SELECT * FROM lignesFic;
    SELECT * FROM tarifs;
    SELECT * FROM categories;
    SELECT * FROM grilleTarifs;
    SELECT * FROM articles;
SELECT  * FROM clients where nom like'd%';
SELECT nom,prenom FROM clients;
SELECT fiches.noFic, fiches.etat, clients.nom, clients.prenom FROM clients INNER JOIN fiches ON fiches.noCli = clients.noCli WHERE cpo like '44%';
SELECT fiches.noFic,clients.nom, clients.prenom, articles.refart,articles.designation,lignesFic.depart,lignesFic.retour, tarifs.prixJour, (DATEDIFF(IFNULL(retour, NOW()+1),depart)+1)*prixJour as montant, SUM((DATEDIFF(COALESCE(retour, CURDATE()), depart)*prixjour)) OVER (PARTITION BY refart) AS Total FROM fiches 
	INNER JOIN clients on clients.noCli = Fiches.noCli
	INNER JOIN lignesfic on lignesfic.noFic = Fiches.noFic
	INNER JOIN articles on articles.refart = lignesfic.refart
	INNER JOIN categories on categories.codeCate = articles.codeCate
	INNER JOIN gammes on gammes.codeGam = articles.codeGam
	INNER JOIN grilletarifs on grilletarifs.codeGam = gammes.codeGam
	INNER JOIN tarifs on tarifs.codeTarif = grilletarifs.codeTarif 
WHERE fiches.noFic= 1002
GROUP BY lignesFic.depart;

USE location_ski;

SELECT g.libelle as Gamme, avg(prixJour) as TarifMoyen
FROM grilletarifs gt 
JOIN gammes g USING (codeGam)
JOIN tarifs t USING (codeTarif)
GROUP BY Gamme;

SELECT fiches.noFic,clients.nom, clients.prenom, articles.refart,articles.designation,lignesFic.depart,lignesFic.retour, tarifs.prixJour, (DATEDIFF(IFNULL(retour, NOW()+1),depart)+1)*prixJour as montant FROM fiches 
	INNER JOIN clients on clients.noCli = Fiches.noCli
	INNER JOIN lignesfic on lignesfic.noFic = Fiches.noFic
	INNER JOIN articles on articles.refart = lignesfic.refart
	INNER JOIN categories on categories.codeCate = articles.codeCate
	INNER JOIN gammes on gammes.codeGam = articles.codeGam
	INNER JOIN grilletarifs on grilletarifs.codeGam = gammes.codeGam
	INNER JOIN tarifs on tarifs.codeTarif = grilletarifs.codeTarif 
WHERE fiches.noFic= 1002
GROUP BY lignesFic.depart;

USE location_ski;
SELECT c.libelle, g.libelle, t.libelle, prixJour
FROM grilleTarifs gt
	JOIN gammes g USING (codeGam)
	JOIN categories c USING (codeCate)
	JOIN tarifs t USING (codeTarif);
    
USE location_ski;
SELECT a.refart, designation, count(*) nbLocation
FROM lignesfic l 
JOIN articles a USING (refart)
WHERE a.codeCate='SURF'
GROUP by a.refart;