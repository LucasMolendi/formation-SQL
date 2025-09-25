USE mots;

CREATE TABLE IF NOT EXISTS Clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    date_inscription DATE 
);

CREATE TABLE IF NOT EXISTS Produits (
    produit_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prix DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL CHECK (stock >= 0)
);

CREATE TABLE IF NOT EXISTS Commandes (
    commande_id INT PRIMARY KEY,
    client_id INT NOT NULL,
    date_commande TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    montant_total DECIMAL(10,2) DEFAULT 0,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);

CREATE TABLE IF NOT EXISTS Lignes_Commandes (
    ligne_id INT AUTO_INCREMENT PRIMARY KEY,
    commande_id INT NOT NULL,
    produit_id INT NOT NULL,
    quantite INT NOT NULL CHECK (quantite > 0),
    prix_unitaire DECIMAL(10,2) NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (commande_id) REFERENCES Commandes(commande_id) ON DELETE CASCADE,
    FOREIGN KEY (produit_id) REFERENCES Produits(produit_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Historique_Commandes (
    historique_id INT AUTO_INCREMENT PRIMARY KEY,
    commande_id INT NOT NULL,
    date_enregistrement TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    statut VARCHAR(50) NOT NULL,
    montant_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (commande_id) REFERENCES Commandes(commande_id) ON DELETE CASCADE
);
EXPLAIN Clients;
EXPLAIN Produits;
EXPLAIN Commandes;
EXPLAIN Lignes_Commandes;
EXPLAIN Historique_Commandes;