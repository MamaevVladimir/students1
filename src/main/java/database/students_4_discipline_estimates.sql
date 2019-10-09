-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: students_4
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `discipline_estimates`
--

DROP TABLE IF EXISTS `discipline_estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline_estimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_discipline` int(11) NOT NULL,
  `id_estimates` int(11) NOT NULL,
  `discipline` varchar(400) NOT NULL,
  `estimates` varchar(400) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_idx` (`id_discipline`),
  KEY `fk2_idx` (`id_estimates`),
  CONSTRAINT `ffk1` FOREIGN KEY (`id_discipline`) REFERENCES `discipline` (`id`),
  CONSTRAINT `ffk2` FOREIGN KEY (`id_estimates`) REFERENCES `estimates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline_estimates`
--

LOCK TABLES `discipline_estimates` WRITE;
/*!40000 ALTER TABLE `discipline_estimates` DISABLE KEYS */;
INSERT INTO `discipline_estimates` VALUES (1,1,1,'Алгебра','5'),(2,1,2,'Алгебра','4'),(3,1,3,'Алгебра','3'),(4,1,4,'Алгебра','2'),(5,2,1,'Химия','5'),(6,2,2,'Химия','4'),(7,2,3,'Химия','3'),(8,2,4,'Химия','2'),(9,3,1,'Физика','5'),(10,3,2,'Физика','4'),(11,3,3,'Физика','3'),(12,3,4,'Физика','2'),(13,4,1,'Теория алгоритмизации','5'),(14,4,2,'Теория алгоритмизации','4'),(15,4,3,'Теория алгоритмизации','3'),(16,4,4,'Теория алгоритмизации','2'),(17,5,1,'История науки и техники','5'),(18,5,2,'История науки и техники','4'),(19,5,3,'История науки и техники','3'),(20,5,4,'История науки и техники','2');
/*!40000 ALTER TABLE `discipline_estimates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-30 20:46:45
