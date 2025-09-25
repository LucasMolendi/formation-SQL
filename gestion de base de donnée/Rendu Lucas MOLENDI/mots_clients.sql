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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_inscription` date DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  KEY `idx_nom_client` (`nom`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Allison Hill','jillrhodes@miller.com','2022-05-03'),(2,'Alyssa Gonzalez','shaneramirez@gmail.com','2021-09-19'),(3,'Gina Moore','daviscolin@yahoo.com','2022-08-10'),(4,'Monica Herrera','arnoldmaria@hotmail.com','2023-06-08'),(5,'Michele Williams','tracie31@ramirez-reid.com','2021-09-28'),(6,'Daniel Adams','amandasanchez@gray-mayo.net','2022-03-24'),(7,'Sarah Parsons','trujillorichard@clark.com','2022-03-02'),(8,'Jennifer Rocha','josephwright@hotmail.com','2024-12-10'),(9,'Kevin Hurst','jeffrey28@yahoo.com','2021-02-17'),(10,'Shannon Hernandez','ycarlson@carlson-mcdonald.com','2025-01-23'),(11,'Alexandra Le','daniel62@yahoo.com','2020-05-21'),(12,'Sherri Baker','harrellkenneth@romero.com','2024-12-11'),(13,'Tammy Sellers','xsmith@yahoo.com','2022-05-24'),(14,'Shawn Arroyo','wcabrera@cannon.net','2021-10-06'),(15,'Shane Henderson','jenniferross@santos.com','2022-06-20'),(16,'George Chapman','adrianzimmerman@perez.com','2020-12-17'),(17,'Diana Washington','esanchez@lee-davis.biz','2023-05-16'),(18,'John Daniel','powellmatthew@wright.net','2024-03-04'),(19,'Clifford Ford','jmorton@williams.com','2021-02-24'),(20,'Sarah Martin','zlewis@gmail.com','2021-10-04'),(21,'William Baker','rodney87@gmail.com','2021-12-21'),(22,'Wayne Riley','brian97@calhoun.net','2021-01-14'),(23,'Andrea Jones','kwilson@riley.org','2021-01-20'),(24,'Kevin Mills','elizabethedwards@yahoo.com','2023-09-22'),(25,'Matthew Bryant','ellisyolanda@jones.net','2022-08-12'),(26,'Gregory Jones','justin78@turner.net','2020-06-04'),(27,'Kristen Huynh','josephpreston@tran.com','2022-02-02'),(28,'Sarah Wagner','davisrodney@yahoo.com','2020-09-24'),(29,'Ray Walsh','joycearnold@yahoo.com','2025-02-16'),(30,'Benjamin Ware','davenportbrandi@jordan.com','2023-06-17'),(31,'Rebecca Valencia','evelynestrada@yahoo.com','2025-02-13'),(32,'Jennifer Oliver','michellecherry@keith.com','2023-03-09'),(33,'Jennifer Santiago','erik16@garrison.com','2024-04-10'),(34,'Robert Savage','kellerraymond@lin-rasmussen.com','2023-05-06'),(35,'Jennifer Zavala','wilsontara@gmail.com','2025-04-18'),(36,'Deborah Rodriguez','jessica56@hotmail.com','2024-09-15'),(37,'Steven Lee','zsmith@mcdaniel.com','2023-06-16'),(38,'Travis Mccall','cortezkevin@yahoo.com','2023-10-31'),(39,'Michael Spencer','yortega@adkins.biz','2025-01-07'),(40,'Elizabeth Clark','rramos@gmail.com','2024-09-15'),(41,'Steven Flynn','campbellelizabeth@rogers.com','2022-04-08'),(42,'Brittany Williams','gibsonolivia@hotmail.com','2022-01-05'),(43,'Janet Ross','staffordmichelle@osborne.com','2024-10-06'),(44,'Justin Lowery','danderson@schmidt.info','2024-08-26'),(45,'Terry Griffin','wcole@larsen.net','2024-06-24'),(46,'Denise Jones','josephflores@hotmail.com','2021-01-16'),(47,'David Benson','perrymark@perry-clark.biz','2023-09-03'),(48,'Lauren Dominguez','wsmith@yahoo.com','2023-09-04'),(49,'Tiffany Barnes','brobinson@johnson-rogers.biz','2021-10-05'),(50,'Tamara Hooper','qvargas@miller.com','2024-04-14'),(51,'David Murphy','matthew64@yahoo.com','2022-07-03'),(52,'Julie Curry','jeffrey10@herring.com','2021-08-27'),(53,'John Wilson','xlyons@jackson-lawson.com','2021-10-01'),(54,'Ashley Johnson','tsanders@gmail.com','2021-01-02'),(55,'Sandra Sanchez','hoganashlee@gmail.com','2023-04-24'),(56,'Mary Jones','atkinsonlynn@gmail.com','2024-01-17'),(57,'Madison Poole','hthompson@nelson.info','2024-04-24'),(58,'Nicholas Adams','ramirezshannon@hudson-barnett.com','2020-08-08'),(59,'Frederick Freeman MD','joshua94@hotmail.com','2020-06-11'),(60,'Cheryl Allen','ppeters@hotmail.com','2024-05-29'),(61,'Katherine Mcguire','jeffrey34@perkins.biz','2025-01-14'),(62,'Michael Nelson','davidlee@gmail.com','2024-11-30'),(63,'Melissa Lee','jenny89@yahoo.com','2021-03-19'),(64,'Elizabeth Ward','ericksondavid@gmail.com','2020-10-27'),(65,'Melissa Martinez','salasaudrey@yahoo.com','2024-06-06'),(66,'Cody Williams','shortrichard@gmail.com','2025-04-07'),(67,'Amy Hernandez','mcknightdavid@yahoo.com','2022-04-12'),(68,'Jamie Kerr','ntorres@gmail.com','2021-03-15'),(69,'Christine Clark','johnarnold@smith.org','2024-05-09'),(70,'David Mann','mcdanielsandra@hotmail.com','2022-01-15'),(71,'Joshua Holland','charlesmartin@yahoo.com','2025-03-14'),(72,'Jessica Harrison','gbender@hotmail.com','2024-07-23'),(73,'Kyle Preston','anthony39@hotmail.com','2020-07-14'),(74,'Miss Debra Williams PhD','lmoon@hotmail.com','2024-01-25'),(75,'Katherine Davis','qcook@gmail.com','2021-09-22'),(76,'Michael Roberts','gibsonleonard@yahoo.com','2021-05-06'),(77,'Jennifer Robertson','mgutierrez@cox.com','2022-02-02'),(78,'Carlos Roberts','johnsoncrystal@gmail.com','2021-09-15'),(79,'Adam Russell','murraydavid@jimenez.com','2024-09-08'),(80,'Jennifer Olson','stephenthomas@gmail.com','2024-09-06'),(81,'Breanna Jones','sarah84@gmail.com','2022-10-06'),(82,'Sara Carpenter','seanwashington@yahoo.com','2025-01-19'),(83,'Jamie Cantu','ashleyhall@williams-garner.biz','2023-08-23'),(84,'Rebecca Pearson MD','waynelawrence@sawyer.com','2024-10-31'),(85,'Alexis Thomas','harrisontanya@hanson-sanders.com','2023-02-25'),(86,'Shannon James','cbrennan@hotmail.com','2020-12-09'),(87,'Michael Mitchell','hamiltoncorey@padilla.com','2020-08-08'),(88,'Robert Carter','hthomas@yahoo.com','2025-03-04'),(89,'Catherine Thompson','tyleraguilar@gmail.com','2024-04-12'),(90,'Julia Estrada','erica21@yahoo.com','2023-04-19'),(91,'Elizabeth Hayden DDS','james67@gmail.com','2022-05-17'),(92,'Ian Phillips','spencedominique@yahoo.com','2020-06-05'),(93,'Melissa Garner','swall@lawson.com','2021-12-22'),(94,'Megan Le','bergerdebbie@kramer-johnson.com','2021-06-23'),(95,'Edward Burgess','davidryan@schmidt-mcintyre.com','2022-07-18'),(96,'Terry Coffey','linda71@gmail.com','2022-04-11'),(97,'Misty Whitney','gibbsalexander@hotmail.com','2021-05-29'),(98,'Michael Chambers','daniel37@gmail.com','2025-02-18'),(99,'Leonard Holland','debra12@gmail.com','2020-09-03'),(100,'Johnathan Davis','qchavez@horton.com','2023-11-21');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
