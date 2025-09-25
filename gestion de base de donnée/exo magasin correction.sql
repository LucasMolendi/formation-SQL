Drop database if exists magasin;
create database magasin;
use magasin;
CREATE TABLE produits (
    id_produit INT NOT NULL PRIMARY KEY,
    nom VARCHAR(50),
    Prix INT NOT NULL
);

CREATE TABLE clients (
    id_client INT NOT NULL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50)
);

CREATE TABLE commandes (
    id_commande INT NOT NULL PRIMARY KEY,
    id_client INT NOT NULL,
    id_produit INT NOT NULL
);

CREATE TABLE detail_commande (
    id_detail INT NOT NULL PRIMARY KEY,
    id_commande INT NOT NULL,
    date_commande VARCHAR(50),
    nombre INT NOT NULL,
    total INT NOT NULL    
);

ALTER TABLE clients
ADD CONSTRAINT fk_clients_commandes
FOREIGN KEY clients(id_client) REFERENCES commandes(id_client);

ALTER TABLE produits
ADD CONSTRAINT fk_produits_commandes
FOREIGN KEY produits(id_produit) REFERENCES commandes(id_produit);

ALTER TABLE commandes
ADD CONSTRAINT fk_detail_commande
FOREIGN KEY commandes(id_commande) REFERENCES detail_commande(id_commande);

INSERT INTO clients (id_client, nom, prenom) VALUES 
(1, "GOURDE", "Alice"),
(2, "PENARD", "Bob"),
(3, "CHOCO", "Charlie");

INSERT INTO produits (id_produit, nom, prix) VALUES 
(1,"Laptop", 200),
(2, "Smartphone", 600),
(3, "Casque Audio", 150);

INSERT INTO commandes (id_commande, id_client, id_produit) VALUES 
(1,1,1),
(2,2,2);

INSERT INTO detail_commande (id_detail, id_commande, date_commande, nombre, total) VALUES 
(1,1,"26/04/2025",1,200),
(2,2,"04/05/2025",1,600);
CREATE INDEX idx_client_nom_prenom ON clients(Nom, prenom);
#CREATE INDEX idx_nom_client ON clients(Nom);
#SELECT * FROM Clients WHERE Nom = 'GOURDE';
#EXPLAIN clients
SELECT * FROM clients