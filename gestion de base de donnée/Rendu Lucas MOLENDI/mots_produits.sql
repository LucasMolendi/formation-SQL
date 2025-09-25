-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mots
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produits` (
  `produit_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`produit_id`),
  KEY `idx_prix_produits` (`prix`),
  CONSTRAINT `produits_chk_1` CHECK ((`stock` >= 0))
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1,'Clavier 1',59.77,150),(2,'Écran 2',454.19,387),(3,'Clavier 3',1356.63,466),(4,'Clé USB 4',183.01,226),(5,'Ordinateur 5',69.30,121),(6,'Écran 6',1015.66,23),(7,'Clé USB 7',405.69,342),(8,'Clé USB 8',844.84,239),(9,'Webcam 9',563.60,455),(10,'Ordinateur 10',1520.03,91),(11,'Scanner 11',687.10,89),(12,'Écran 12',1914.85,182),(13,'Clavier 13',194.56,59),(14,'Routeur 14',1696.51,319),(15,'Imprimante 15',1616.19,383),(16,'Disque Dur 16',1077.09,482),(17,'Scanner 17',166.81,160),(18,'Webcam 18',1772.05,195),(19,'Webcam 19',392.65,45),(20,'Ordinateur 20',1325.91,405),(21,'Imprimante 21',1970.59,447),(22,'Écran 22',1734.30,204),(23,'Imprimante 23',912.29,437),(24,'Routeur 24',333.68,191),(25,'Écran 25',1343.65,369),(26,'Clavier 26',1222.17,97),(27,'Clé USB 27',1460.96,93),(28,'Disque Dur 28',765.12,483),(29,'Clé USB 29',447.03,176),(30,'Ordinateur 30',465.81,26),(31,'Routeur 31',808.32,43),(32,'Écran 32',1827.14,300),(33,'Routeur 33',433.13,265),(34,'Scanner 34',1770.52,339),(35,'Disque Dur 35',294.31,81),(36,'Écran 36',1492.53,285),(37,'Imprimante 37',1496.56,229),(38,'Webcam 38',804.81,122),(39,'Souris 39',1023.96,56),(40,'Ordinateur 40',1723.59,88),(41,'Souris 41',1586.24,226),(42,'Webcam 42',136.42,205),(43,'Webcam 43',1992.28,280),(44,'Imprimante 44',1942.45,450),(45,'Ordinateur 45',1363.76,68),(46,'Clé USB 46',1504.25,403),(47,'Routeur 47',231.99,232),(48,'Souris 48',912.91,498),(49,'Imprimante 49',1944.06,400);
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-13 14:53:56
