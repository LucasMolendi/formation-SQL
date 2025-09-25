drop database if exists magasin;
create database magasin
character set utf8mb4 collate utf8mb4_unicode_ci;
use magasin;

create Table commandes	(
  id_commande integer not null auto_increment primary key,
  id_clients integer,
  id_produits integer
)ENGINE=INNODB;

create Table clients (
  id_client integer not null auto_increment primary key,
  nom varchar(100),
  email varchar(100),
  telephone integer
)ENGINE=INNODB;

create Table produits (
  id_produit integer not null auto_increment primary key,
  deno varchar(50),
  prix float 
)ENGINE=INNODB;

create Table details_commandes (
  id_commande int,
  total float,
  date_commande date not null
)ENGINE=INNODB;

Select * from clients;
Select * from produits;
select * from commandes;
select * from details_commandes;