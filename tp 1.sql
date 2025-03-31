use zoo;
USE zoo;
INSERT INTO chat(nom,yeux,age) 
	VALUES ('Maine coon','marron',20),
	('Siamois','bleu',15),
	('Bengal','marron',18),
	('Scottish Fold','marron',10);
select COUNT(yeux)from chat where yeux = 'marron'; 
truncate chat
