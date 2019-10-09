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
-- Table structure for table `discipline_estimates_semestr`
--

DROP TABLE IF EXISTS `discipline_estimates_semestr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline_estimates_semestr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id discipline_estimates` int(11) NOT NULL,
  `id_semestr` int(11) NOT NULL,
  `discipline` varchar(400) NOT NULL,
  `estimates` varchar(400) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fffk1_idx` (`id discipline_estimates`),
  KEY `fffk2_idx` (`id_semestr`),
  CONSTRAINT `fffk1` FOREIGN KEY (`id discipline_estimates`) REFERENCES `discipline_estimates` (`id`),
  CONSTRAINT `fffk2` FOREIGN KEY (`id_semestr`) REFERENCES `semestr` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline_estimates_semestr`
--

LOCK TABLES `discipline_estimates_semestr` WRITE;
/*!40000 ALTER TABLE `discipline_estimates_semestr` DISABLE KEYS */;
INSERT INTO `discipline_estimates_semestr` VALUES (1,1,1,'Алгебра','5'),(2,2,1,'Алгебра','4'),(3,3,1,'Алгебра','3'),(4,4,1,'Алгебра','2'),(5,5,1,'Химия','5'),(6,6,1,'Химия','4'),(7,7,1,'Химия','3'),(8,8,1,'Химия','2'),(9,9,1,'Физика','5'),(10,10,1,'Физика','4'),(11,11,1,'Физика','3'),(12,12,1,'Физика','2'),(13,13,1,'Теория алгоритмизации','5'),(14,14,1,'Теория алгоритмизации','4'),(15,15,1,'Теория алгоритмизации','3'),(16,16,1,'Теория алгоритмизации','2'),(17,17,1,'История науки и техники','5'),(18,18,1,'История науки и техники','4'),(19,19,1,'История науки и техники','3'),(20,20,1,'История науки и техники','2'),(21,1,2,'Алгебра','5'),(22,2,2,'Алгебра','4'),(23,3,2,'Алгебра','3'),(24,4,2,'Алгебра','2'),(25,5,2,'Химия','5'),(26,6,2,'Химия','4'),(27,7,2,'Химия','3'),(28,8,2,'Химия','2'),(29,9,2,'Физика','5'),(30,10,2,'Физика','4'),(31,11,2,'Физика','3'),(32,12,2,'Физика','2'),(33,13,2,'Теория алгоритмизации','5'),(34,14,2,'Теория алгоритмизации','4'),(35,15,2,'Теория алгоритмизации','3'),(36,16,2,'Теория алгоритмизации','2'),(37,17,2,'История науки и техники','5'),(38,18,2,'История науки и техники','4'),(39,19,2,'История науки и техники','3'),(40,20,2,'История науки и техники','2'),(41,1,3,'Алгебра','5'),(42,2,3,'Алгебра','4'),(43,3,3,'Алгебра','3'),(44,4,3,'Алгебра','2'),(45,5,3,'Химия','5'),(46,6,3,'Химия','4'),(47,7,3,'Химия','3'),(48,8,3,'Химия','2'),(49,9,3,'Физика','5'),(50,10,3,'Физика','4'),(51,11,3,'Физика','3'),(52,12,3,'Физика','2'),(53,13,3,'Теория алгоритмизации','5'),(54,14,3,'Теория алгоритмизации','4'),(55,15,3,'Теория алгоритмизации','3'),(56,16,3,'Теория алгоритмизации','2'),(57,17,3,'История науки и техники','5'),(58,18,3,'История науки и техники','4'),(59,19,3,'История науки и техники','3'),(60,20,3,'История науки и техники','2');
/*!40000 ALTER TABLE `discipline_estimates_semestr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-30 20:46:46
