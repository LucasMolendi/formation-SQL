USE mots;
SELECT * FROM Clients WHERE email Like '%gmail%';
SELECT Nom, prix, stock FROM Produits Where Nom LIKE '%teur%';
SELECT Commandes.commande_id, Commandes.date_commande FROM Commandes Where date_commande < '2024-12-12';