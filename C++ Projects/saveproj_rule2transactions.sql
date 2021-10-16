-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: saveproj
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `rule2transactions`
--

DROP TABLE IF EXISTS `rule2transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rule2transactions` (
  `name` varchar(128) NOT NULL,
  `account_number` varchar(128) NOT NULL,
  `transaction_number` int NOT NULL,
  `expected_transaction_location` varchar(32) NOT NULL,
  `actual_transaction_location` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule2transactions`
--

LOCK TABLES `rule2transactions` WRITE;
/*!40000 ALTER TABLE `rule2transactions` DISABLE KEYS */;
INSERT INTO `rule2transactions` VALUES ('Don Fuller','53111',16,'OH','NY\r'),('Michael Smith','11111',25,'TX','FL\r'),('Joseph Dark','43991',16,'MI','NY\r'),('Artie Venn','44891',10,'NJ','NY\r'),('John Doe','22222',10,'CA','NY\r'),('Jane Doe','33333',2,'NY','NJ\r'),('Anthony West','54891',7,'SD','MD\r'),('Anthony West','54891',10,'SD','NY\r'),('Anthony West','54891',13,'SD','CA\r'),('Monica Abel','33555',13,'NY','CA\r'),('Ruth Green','37222',1,'OH','CA\r'),('Ruth Green','37222',2,'OH','CA\r'),('Ruth Green','37222',3,'OH','CA\r'),('Ruth Green','37222',4,'OH','CA\r'),('Ruth Green','37222',5,'OH','CA\r'),('Ruth Green','37222',6,'OH','GA\r');
/*!40000 ALTER TABLE `rule2transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-16 11:08:15
