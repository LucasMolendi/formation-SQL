USE mots;
CREATE INDEX idx_nom_client ON Clients(nom);
CREATE INDEX idx_prix_produits ON Produits(prix);
CREATE INDEX idx_date_commandes ON Commandes(date_commande);
CREATE INDEX idx_quantite_lignes_commandes ON Lignes_Commandes(quantite);
CREATE INDEX idx_statut_historique_commandes ON Historique_Commandes(statut);