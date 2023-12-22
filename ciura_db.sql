-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: ciura
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `Forum`
--

DROP TABLE IF EXISTS `Forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Forum` (
  `forum_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `author_profile_picture` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `posted_date` date DEFAULT NULL,
  PRIMARY KEY (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Forum`
--

LOCK TABLES `Forum` WRITE;
/*!40000 ALTER TABLE `Forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `Forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Forum_Comment`
--

DROP TABLE IF EXISTS `Forum_Comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Forum_Comment` (
  `comment_id` int NOT NULL,
  `question_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `comment` text,
  `posted_date` date DEFAULT NULL,
  `likes` int DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Forum_Comment`
--

LOCK TABLES `Forum_Comment` WRITE;
/*!40000 ALTER TABLE `Forum_Comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Forum_Comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Forum_Question`
--

DROP TABLE IF EXISTS `Forum_Question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Forum_Question` (
  `question_id` int NOT NULL,
  `forum_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `question` text,
  `posted_date` date DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Forum_Question`
--

LOCK TABLES `Forum_Question` WRITE;
/*!40000 ALTER TABLE `Forum_Question` DISABLE KEYS */;
/*!40000 ALTER TABLE `Forum_Question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Saved_Articles`
--

DROP TABLE IF EXISTS `Saved_Articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Saved_Articles` (
  `save_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  PRIMARY KEY (`save_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Saved_Articles`
--

LOCK TABLES `Saved_Articles` WRITE;
/*!40000 ALTER TABLE `Saved_Articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Saved_Articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Saved_Forums`
--

DROP TABLE IF EXISTS `Saved_Forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Saved_Forums` (
  `save_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `forum_id` int DEFAULT NULL,
  PRIMARY KEY (`save_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Saved_Forums`
--

LOCK TABLES `Saved_Forums` WRITE;
/*!40000 ALTER TABLE `Saved_Forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `Saved_Forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'suzume','suzume@gmail.com','$2a$12$00y/sCiM3HimWCNBonseBO6/OfCMFgQ5aHPEfWvy/02o3wR7Fpgyu',NULL),(2,'Rimuru','Rimuru@gmail.com','$2a$12$HMPgBc9VW0LZxOiv.nlWr.xmKRxE3nMwYIIyMNEsqz.tKCeCWPzX.',NULL),(3,'Diablo','diablo@gmail.com','$2a$12$IGspo5rw/x1mNIQfE13kL.Zw8PxuvPfAdbJSn5cNxa76vECsRXdUy',NULL),(4,'lmao','lmao@gmail.com','$2a$12$qU1uzi8OvikzQvqokb8oEeWhs2EO3nVxPCo1BphrtulPvMnY16gWu',NULL),(5,'lmaos','lmaos@gmail.com','$2a$12$9ulyS8SIg/ATB5mXbzn/j.g4FKGYuMqFZLjCKGYTWpITnt1GVLB12',NULL),(6,'hello','hello@gmail.com','$2a$12$vLy5txp71elfzxpMPAVxaeAEOW21e9HT5EWTFzVHPrluj9RoCUhQy',NULL),(7,'testing','testing@gmail.com','$2a$12$TumoBfGy/CsNcxBthoyYSuVObvF48Q5nQu4/3g5TDRf2/j2RVJ14W',NULL),(8,'aflah','aflah@gmail.com','$2a$12$SIcJaRufLnK7O3LLTQOpauNnpCNVvPhQVk/d/ph7kWqYFcXR8Vfky',NULL),(9,'test','test@gmail.com','$2a$12$G5QiYVYyJqu1223RVP7bRObYCWwOzhvikrL0.8tk26ECIsVO6cn9a',NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Related_Articles`
--

DROP TABLE IF EXISTS `User_Related_Articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Related_Articles` (
  `relation_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Related_Articles`
--

LOCK TABLES `User_Related_Articles` WRITE;
/*!40000 ALTER TABLE `User_Related_Articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `User_Related_Articles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-23  2:56:08
