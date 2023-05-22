-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: countrydb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('f9a11611f94c');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `cca` varchar(25) NOT NULL,
  `currency_code` varchar(25) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `capital` varchar(50) NOT NULL,
  `region` varchar(60) NOT NULL,
  `subregion` varchar(100) NOT NULL,
  `area` bigint NOT NULL,
  `map_url` varchar(300) NOT NULL,
  `population` bigint NOT NULL,
  `flag_url` varchar(300) NOT NULL,
  `created_at` varchar(300) NOT NULL,
  `updated_at` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'india','as','as','inr','Delhi','Asia','South asia',3287590,'https://goo.gl/maps/WSk3fLwG4vtPQetp7',1380004385,'https://flagcdn.com/w320/in.png','20/5/23','20/5/23'),(2,'Canada','aw','cd','Canadian dollar','Ottawa','America','North america',23456677,'https://goo.gl/maps/WSk3fLwG4vtPQetp7',23456677,'https://goo.gl/maps/WSk3fLwG4vtPQetp7','20/5/23','20/5/23'),(3,'china','aq','tn','yen','Bejieng','Asia','Mid asia',1234556,'https://goo.gl/maps/WSk3fLwG4vtPQetp7',472628191162,'https://goo.gl/maps/WSk3fLwG4vtPQetp7','20/5/23','20/5/23'),(4,'afghanistan','as','ar','rupee','kabul','asia','south asia',267448,'https://www.mapsofworld.com/afghanistan/',3729965,'https://www.worldometers.info/geography/flags-of-the-world/afghanistan','20/5/23','20/5/23'),(5,'australia','sd','ad','dollar','canberra','australia','australia',38385282,'https://www.mapsofworld.com/australia',3728225282,'https://www.worldometers.info/geography/flags-of-the-world/australia','20/5/23','20/5/23'),(6,'germany','gd','eu','euro','berlin','europe','south europe',46474,'https://www.mapsofworld.com/germany',3572825,'https://www.worldometers.info/geography/flags-of-the-world/germany','20/5/23','20/5/23'),(7,'argentina','ag','ps','peso','buero aires','south america','south americaa',36373829,'https://www.mapsofworld.com/argentina',32282627,'https://www.worldometers.info/geography/flags-of-the-world/argentina','20/5/23','20/5/23'),(8,'bangladesh','bg','tk','takka','dhaka','asia','south asia',4633839,'https://www.mapsofworld.com/bangladesh',1617181917,'https://www.worldometers.info/geography/flags-of-the-world/bangladesh','20/5/23','20/5/23'),(9,'brazil','bz','rkl','real','rio','south america ','south america',62727929,'https://www.mapsofworld.com/brazil',6728229292,'https://www.worldometers.info/geography/flags-of-the-world/brazil','20/5/23','20/5/23'),(10,'bahrain','bh','dinar','dn','manama','asia','middle east asia',227282,'https://www.mapsofworld.com/bahrian',6282829,'https://www.worldometers.info/geography/flags-of-the-world/bahrain','20/5/23','20/5/23'),(11,'chile','ch','peso','ps','santaigo','south america','south america',73792,'https://www.mapsofworld.com/chile',2289222,'https://www.worldometers.info/geography/flags-of-the-world/chile','20/5/23','20/5/23'),(12,'czech republic','cr','kr','koruna','prague','europe','europe',38322,'https://www.mapsofworld.com/czechrepublic',22228,'https://www.worldometers.info/geography/flags-of-the-world/czechrepublic','20/5/23','20/5/23'),(13,'denmark','dn','kr','krone','copehghen','europe','europe',37272,'https://www.mapsofworld.com/denmark',2728229,'https://www.worldometers.info/geography/flags-of-the-world/denmark','20/5/23','20/5/23'),(14,'france','fr','ff','euro','paris','europe','europe',728992,'https://www.mapsofworld.com/france',211910001,'https://www.worldometers.info/geography/flags-of-the-world/france','20/5/23','20/5/23'),(15,'greece','gr','eu','euro','athens','europe','europe',287289,'https://www.mapsofworld.com/greece',17819172,'https://www.worldometers.info/geography/flags-of-the-world/greece','20/5/23','20/5/23'),(16,'hungary','hg','fr','forint','budapest','europe','europe',227782,'https://www.mapsofworld.com/hungary',6278292,'https://www.worldometers.info/geography/flags-of-the-world/hungary','20/5/23','20/5/23'),(17,'japan','jp','yn','yen','tokyo','asia','west asia',3637383,'https://www.mapsofworld.com/japan',27292091,'https://www.worldometers.info/geography/flags-of-the-world/japan','20/5/23','20/5/23'),(18,'south korea','sk','wo','won','seol','aisa','west asia',3623828,'https://www.mapsofworld.com/southkorea',62282922,'https://www.worldometers.info/geography/flags-of-the-world/southkorea','20/5/23','20/5/23'),(19,'malaysia','ml','rg','riggit','kualalumppur','asia','asia',365782,'https://www.mapsofworld.com/malaysia',62829101,'https://www.worldometers.info/geography/flags-of-the-world/malaysia','20/5/23','20/5/23'),(20,'mexico','mx','ps','peso','mexico city','north america','north america',3728,'https://www.mapsofworld.com/mexico',28292982,'https://www.worldometers.info/geography/flags-of-the-world/mexico','20/5/23','20/5/23'),(21,'sri lanka','rp','rp','rupee','columbo','asia','south asia',322829,'https://www.mapsofworld.com/srilanka',463893,'https://www.worldometers.info/geography/flags-of-the-world/srilanka','20/5/23','20/5/23'),(22,'nepal','np','rupee','rupee','kathamandu','asia','south asia',272828,'https://www.mapsofworld.com/nepal',3687229,'https://www.worldometers.info/geography/flags-of-the-world/nepal','20/5/23','20/5/23'),(23,'portugal','pr','eu','euro','lisbon','europe','west europe',372829,'https://www.mapsofworld.com/portugal',53383333,'https://www.worldometers.info/geography/flags-of-the-world/portugal','20/5/23','20/5/23'),(24,'USA','us','do','dollar','washington','north america','north america',722892922,'https://www.mapsofworld.com/america',3733393353,'https://www.worldometers.info/geography/flags-of-the-world/america','20/5/23','20/5/23');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_neighbour`
--

DROP TABLE IF EXISTS `country_neighbour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_neighbour` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `cca` varchar(25) NOT NULL,
  `currency_code` varchar(25) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `capital` varchar(50) NOT NULL,
  `country_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `country_neighbour_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_neighbour`
--

LOCK TABLES `country_neighbour` WRITE;
/*!40000 ALTER TABLE `country_neighbour` DISABLE KEYS */;
INSERT INTO `country_neighbour` VALUES (1,'nepal','vsvs','inr','rupee','khatmandu',1),(2,'pakistan','as','inr','rupee','islamabad',1),(3,'srilanka','sl','rupee','rupee','columbo',1),(4,'canada','cn','dollar','dollar','ottawa',24),(5,'trinidad and tobacco','tnt','dl','dollar','Trinidad & tobacco',24),(6,'fiji','fj','dl','dollar','fiji',6),(7,'spain','sp','euro','euro','madrid',7);
/*!40000 ALTER TABLE `country_neighbour` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22  2:32:58
