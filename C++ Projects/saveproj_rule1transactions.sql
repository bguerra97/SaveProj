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
-- Table structure for table `rule1transactions`
--

DROP TABLE IF EXISTS `rule1transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rule1transactions` (
  `name` varchar(128) NOT NULL,
  `account_number` varchar(128) NOT NULL,
  `transaction_number` int NOT NULL,
  `merchant` varchar(1024) NOT NULL,
  `transaction_amount` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule1transactions`
--

LOCK TABLES `rule1transactions` WRITE;
/*!40000 ALTER TABLE `rule1transactions` DISABLE KEYS */;
INSERT INTO `rule1transactions` VALUES ('Joseph Dark','43991',1,'CFA Institute          4349515499    MI','1009.90\r'),('Morasca Simona','38829',65,'CFA Institute          4349515499    OH','1009.90\r'),('Morasca Simona','38829',129,'230 WEST ALABAMA APART 713-5298707   OH','1263.27\r'),('Morasca Simona','38829',76,'230 WEST ALABAMA APART 713-5298707   OH','1266.56\r'),('Morasca Simona','38829',64,'COMMODITY SYSTEMS INC  5613928663    OH','350.00\r'),('Dilliard Leota','32628',16,'IN *POOL TEC POOL AND  936-3213252   CA','1677.85\r'),('Maclead Abel','37226',14,'BEST BUY      00008706 SCOTTSDALE   NYUS','270.11\r'),('Maclead Abel','37226',63,'8898 E LEGACY BLVD     SCOTTSDALE     NY','303.00\r'),('Maclead Abel','37226',10,'NORDSTROM #0380        SCOTTSDALE    NY','464.62\r'),('Maclead Abel','37226',70,'HOUSTON S (713) 529-23 HOUSTON       NY','180.47\r'),('Maclead Abel','37226',7,'APPLE.COM/US           800-676-2775  NY','269.04\r'),('Rulapaugh Kati','31593',2,'NORTH HOUSTON BEEMER L SPRING        KS','859.75\r'),('Inouye Veronika','33717',97,'CINFIN-PERSONAL-INSUR  888-242-0888  CA','3785.00\r'),('Inouye Veronika','33717',43,'MIDWESTERN AUTO GROUP  DUBLIN        CA','3505.28\r'),('Inouye Veronika','33717',56,'Vrbo HAVV9W78          512-759-0902  CA','565.25\r'),('Mirasca Sam','53222',1,'CFA Institute          4349515499    OH','1009.90\r'),('Mirasca Sam','53222',10,'Kohls		Ashland      OH','725.51\r'),('May Wilson','54999',1,'CFA Institute          4349515499    PA','1009.90\r'),('Artie Venn','44891',1,'CFA Institute          4349515499    NJ','1009.90\r'),('Artie Venn','44891',10,'Best Buy		New York       NY','10000.00\r'),('Artie Venn','44891',11,'Best Buy		Bridgeport       NJ','1755.91\r'),('Don Fuller','53111',1,'CFA Institute          4349515499    OH','1009.90\r'),('Dilliard Smith','54722',1,'CFA Institute          4349515499    CA','1009.90\r'),('Anthony West','54891',1,'CFA Institute          4349515499   SD','1009.90\r'),('Ruth Green','37222',1,'SHELL OIL          4349515499    CA','1009.90\r'),('Michael Smith','11111',1,'CFA Institute          4349515499    TX','1009.90\r'),('Michael Smith','11111',15,'KROGER #2 4000 POLK    HOUSTON        TX','2300.00\r'),('Jane Doe','33333',1,'McDonalds          4349515499    NY','1009.90\r'),('Jane Doe','33333',5,'McDonalds New York       NY','525.00\r'),('Monica Abel','33555',1,'CFA Institute          4349515499    NY','1009.90\r'),('Monica Abel','33555',10,'Best Buy		New York       NY','10000.00\r'),('Monica Abel','33555',11,'Best Buy		Middle Island       NY','1755.91\r'),('Weirather Daren','23427',1,'APPLIED BANK PROCESSIN WILMINGTON    WI','89.00\r'),('John Doe','22222',1,'CFA Institute          4349515499    CA','1009.90\r'),('John Doe','22222',10,'Best Buy		New York       NY','10000.00\r'),('John Doe','22222',11,'Best Buy		Los Angeles       CA','1755.91\r'),('Sawchuk Nelida','28064',19,'CASH APP*              4153753176    NJ','40.00\r');
/*!40000 ALTER TABLE `rule1transactions` ENABLE KEYS */;
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
