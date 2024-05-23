-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: conference
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `journals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cff` varchar(50) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `special_issue` text,
  `submission_deadline` timestamp NULL DEFAULT NULL,
  `impact_factor` float DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `issn` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (1,'a','Journal of Artificial Intelligence Research','Special Issue on Machine Learning','2024-07-14 16:00:00',3.82,'Springer','2373-745X'),(2,'b','International Journal of Computer Vision',NULL,'2024-08-29 16:00:00',5.67,'Elsevier','2373-745X'),(3,'c','IEEE Transactions on Pattern Analysis and Machine Intelligence',NULL,'2024-09-19 16:00:00',8.94,'IEEE','2373-745X'),(4,'a','Journal of Machine Learning Research','Special Issue on Deep Learning','2024-07-29 16:00:00',4.56,'MIT Press','2373-745X'),(5,'b','Pattern Recognition',NULL,'2024-08-09 16:00:00',2.98,'Elsevier','2373-745X'),(6,'c','Artificial Intelligence',NULL,'2024-08-24 16:00:00',6.75,'Elsevier','2373-745X'),(7,'a','Neural Networks',NULL,'2024-09-04 16:00:00',3.21,'Elsevier','2373-745X'),(8,'b','Machine Learning',NULL,'2024-07-19 16:00:00',4.89,'Springer','2373-745X'),(9,'c','Journal of Computer Science and Technology',NULL,'2024-08-14 16:00:00',2.34,'Springer','2373-745X'),(10,'a','IEEE Transactions on Neural Networks and Learning Systems',NULL,'2024-09-09 16:00:00',7.12,'IEEE','2373-745X'),(11,'b','Expert Systems with Applications','Special Issue on Data Mining','2024-07-24 16:00:00',3.45,'Elsevier','2373-745X'),(12,'c','Journal of Automated Reasoning',NULL,'2024-08-04 16:00:00',1.98,'Springer','2373-745X'),(13,'a','ACM Transactions on Intelligent Systems and Technology',NULL,'2024-09-14 16:00:00',5.67,'ACM','2373-745X'),(14,'b','Journal of Visual Communication and Image Representation',NULL,'2024-07-29 16:00:00',4.23,'Elsevier','2373-745X'),(15,'c','Information Sciences',NULL,'2024-08-19 16:00:00',6.43,'Elsevier','2373-745X'),(16,'a','Journal of Ambient Intelligence and Smart Environments',NULL,'2024-09-24 16:00:00',2.87,'IOS Press','2373-745X'),(17,'b','IEEE Intelligent Systems',NULL,'2024-07-09 16:00:00',3.78,'IEEE','2373-745X'),(18,'c','Journal of Machine Learning and Cybernetics',NULL,'2024-08-29 16:00:00',4.56,'Springer','2373-745X'),(19,'a','Frontiers in Robotics and AI',NULL,'2024-09-09 16:00:00',3.99,'Frontiers Media','2373-745X'),(20,'b','Journal of Big Data','Special Issue on Artificial Intelligence','2024-07-14 16:00:00',5.67,'Springer','2373-745X');
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cff` varchar(50) DEFAULT NULL,
  `core` varchar(50) DEFAULT NULL,
  `qualts` varchar(50) DEFAULT NULL,
  `abbreviation` varchar(50) DEFAULT NULL,
  `full_Name` varchar(100) DEFAULT NULL,
  `is_postponement` tinyint(1) DEFAULT NULL,
  `submission_deadline` timestamp NULL DEFAULT NULL,
  `notification_date` timestamp NULL DEFAULT NULL,
  `conference_date` timestamp NULL DEFAULT NULL,
  `conference_location` varchar(100) DEFAULT NULL,
  `session_number` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES (1,'a','b','c','ICCC','International Conference on Computer Communication',0,'2023-11-30 16:00:00','2023-12-31 16:00:00','2024-04-30 16:00:00','New York, USA',1),(2,'a2','a+','c','IEEE','Institute of Electrical and Electronics Engineers',1,'2023-12-14 16:00:00','2024-01-14 16:00:00','2024-05-31 16:00:00','San Francisco, USA',2),(3,'b','b','c','ACM','Association for Computing Machinery',0,'2024-01-09 16:00:00','2024-01-31 16:00:00','2024-06-30 16:00:00','London, UK',3),(4,'c','c','b','IET','Institution of Engineering and Technology',0,'2024-02-04 16:00:00','2024-02-29 16:00:00','2024-07-31 16:00:00','Tokyo, Japan',4),(5,'d','d','a','SPIE','International Society for Optics and Photonics',1,'2024-03-19 16:00:00','2024-04-09 16:00:00','2024-08-31 16:00:00','Berlin, Germany',5),(6,'e','c','b','APS','American Physical Society',0,'2024-03-31 16:00:00','2024-04-19 16:00:00','2024-09-30 16:00:00','Paris, France',6),(7,'f','b','c','ASME','American Society of Mechanical Engineers',1,'2024-04-30 16:00:00','2024-05-14 16:00:00','2024-10-31 16:00:00','Sydney, Australia',7),(8,'g','a','b','SAGE','Society for the Advancement of Gerontological Education',0,'2024-05-31 16:00:00','2024-06-19 16:00:00','2024-11-30 16:00:00','Rio de Janeiro, Brazil',8),(9,'h','b','a','AIAA','American Institute of Aeronautics and Astronautics',1,'2024-06-30 16:00:00','2024-07-14 16:00:00','2024-12-31 16:00:00','Cape Town, South Africa',9),(10,'i','c','c','ACS','American Chemical Society',0,'2024-07-31 16:00:00','2024-08-19 16:00:00','2025-01-31 16:00:00','Vancouver, Canada',10),(11,'j','c','c','APS','American Physical Society',0,'2024-08-31 16:00:00','2024-09-19 16:00:00','2025-02-28 16:00:00','Boston, USA',11),(12,'k','a','b','IEEE','Institute of Electrical and Electronics Engineers',1,'2024-09-30 16:00:00','2024-10-14 16:00:00','2025-03-31 16:00:00','Toronto, Canada',12),(13,'l','b','a','ACM','Association for Computing Machinery',0,'2024-10-31 16:00:00','2024-11-19 16:00:00','2025-04-30 16:00:00','Singapore',13),(14,'m','c','c','IET','Institution of Engineering and Technology',1,'2024-11-30 16:00:00','2024-12-14 16:00:00','2025-05-31 16:00:00','Seoul, South Korea',14),(15,'n','a','b','SPIE','International Society for Optics and Photonics',0,'2024-12-31 16:00:00','2025-01-19 16:00:00','2025-06-30 16:00:00','Beijing, China',15),(16,'o','b','c','ASME','American Society of Mechanical Engineers',1,'2025-01-31 16:00:00','2025-02-14 16:00:00','2025-07-31 16:00:00','Moscow, Russia',16),(17,'p','c','a','SAGE','Society for the Advancement of Gerontological Education',0,'2025-02-28 16:00:00','2025-03-19 16:00:00','2025-08-31 16:00:00','Madrid, Spain',17),(18,'q','a','c','AIAA','American Institute of Aeronautics and Astronautics',1,'2025-03-31 16:00:00','2025-04-14 16:00:00','2025-09-30 16:00:00','Berlin, Germany',18),(19,'r','b','b','ACS','American Chemical Society',0,'2025-04-30 16:00:00','2025-05-19 16:00:00','2025-10-31 16:00:00','Rome, Italy',19),(20,'s','c','a','APS','American Physical Society',1,'2025-05-31 16:00:00','2025-06-14 16:00:00','2025-11-30 16:00:00','Paris, France',20),(21,'t','a','b','IEEE','Institute of Electrical and Electronics Engineers',0,'2025-06-30 16:00:00','2025-07-19 16:00:00','2025-12-31 16:00:00','Sydney, Australia',21),(22,'u','b','c','ACM','Association for Computing Machinery',1,'2025-07-31 16:00:00','2025-08-14 16:00:00','2026-01-31 16:00:00','Tokyo, Japan',22),(23,'v','c','a','IET','Institution of Engineering and Technology',0,'2025-08-31 16:00:00','2025-09-19 16:00:00','2026-02-28 16:00:00','New York, USA',23),(24,'w','a','b','SPIE','International Society for Optics and Photonics',1,'2025-09-30 16:00:00','2025-10-14 16:00:00','2026-03-31 16:00:00','San Francisco, USA',24),(25,'x','b','c','ASME','American Society of Mechanical Engineers',0,'2025-10-31 16:00:00','2025-11-19 16:00:00','2026-04-30 16:00:00','London, UK',25),(26,'y','c','a','SAGE','Society for the Advancement of Gerontological Education',1,'2025-11-30 16:00:00','2025-12-14 16:00:00','2026-05-31 16:00:00','Berlin, Germany',26),(27,'z','a','b','AIAA','American Institute of Aeronautics and Astronautics',0,'2025-12-31 16:00:00','2026-01-19 16:00:00','2026-06-30 16:00:00','Tokyo, Japan',27),(28,'aa','b','c','ACS','American Chemical Society',1,'2026-01-31 16:00:00','2026-02-14 16:00:00','2026-07-31 16:00:00','Paris, France',28),(29,'ab','c','a','APS','American Physical Society',0,'2026-02-28 16:00:00','2026-03-19 16:00:00','2026-08-31 16:00:00','Berlin, Germany',29);
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hashed_password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','6452777329@qq.com','$2b$12$8k8yyvyoeAmGS/4rmArfiO7Oj0hXRgfET0F737YQoFVyR1s.zCYDe','baoweiwei',0,'2024-05-23 08:15:54','2024-05-23 08:15:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23 18:36:58
