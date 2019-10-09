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
-- Table structure for table `student_record`
--

DROP TABLE IF EXISTS `student_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_student` int(11) NOT NULL,
  `id_discipline_estimates_semestr` int(11) NOT NULL,
  `student` varchar(400) NOT NULL,
  `discipline` varchar(400) NOT NULL,
  `estimates` int(11) NOT NULL,
  `semestr` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ffffk1_idx` (`id_student`),
  KEY `ffffk2_idx` (`id_discipline_estimates_semestr`),
  CONSTRAINT `ffffk1` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`),
  CONSTRAINT `ffffk2` FOREIGN KEY (`id_discipline_estimates_semestr`) REFERENCES `discipline_estimates_semestr` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_record`
--

LOCK TABLES `student_record` WRITE;
/*!40000 ALTER TABLE `student_record` DISABLE KEYS */;
INSERT INTO `student_record` VALUES (1,1,2,'Сидор Сидоров ','Алгебра',4,'Семестр1'),(2,1,6,'Сидор Сидоров ','Химия',4,'Семестр1'),(3,1,11,'Сидор Сидоров ','Физика',3,'Семестр1'),(4,1,15,'Сидор Сидоров ','Теория алгоритмизации',3,'Семестр1'),(5,1,26,'Сидор Сидоров ','Химия',4,'Семестр2'),(6,1,30,'Сидор Сидоров ','Физика',4,'Семестр2'),(7,2,1,'Фёдоров Фёдор','Алгебра',5,'Семестр1'),(8,2,7,'Фёдоров Фёдор','Химия',3,'Семестр1'),(9,2,11,'Фёдоров Фёдор','Физика',3,'Семестр1'),(10,2,13,'Фёдоров Фёдор','Теория алгоритмизации',5,'Семестр1'),(11,2,25,'Фёдоров Фёдор','Химия',5,'Семестр2'),(12,2,30,'Фёдоров Фёдор','Физика',4,'Семестр2'),(13,3,1,'Иванов Иван','Алгебра',5,'Семестр1'),(14,3,6,'Иванов Иван','Химия',4,'Семестр1'),(15,3,9,'Иванов Иван','Физика',5,'Семестр1'),(16,3,14,'Иванов Иван','Теория алгоритмизации',4,'Семестр1'),(17,3,25,'Иванов Иван','Химия',5,'Семестр2'),(18,3,29,'Иванов Иван','Физика',5,'Семестр2'),(19,4,3,'Ахметов Ахмет','Алгебра',3,'Семестр1'),(20,4,7,'Ахметов Ахмет','Химия',3,'Семестр1'),(21,4,11,'Ахметов Ахмет','Физика',3,'Семестр1'),(22,4,15,'Ахметов Ахмет','Теория алгоритмизации',3,'Семестр1'),(23,4,27,'Ахметов Ахмет','Химия',3,'Семестр2'),(24,4,32,'Ахметов Ахмет','Физика',2,'Семестр2');
/*!40000 ALTER TABLE `student_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-30 20:46:48
