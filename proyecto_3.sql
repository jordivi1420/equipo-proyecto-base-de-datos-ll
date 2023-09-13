CREATE DATABASE  IF NOT EXISTS `taller2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `taller2`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: taller2
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `destino`
--

DROP TABLE IF EXISTS `destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destino` (
  `id` int NOT NULL AUTO_INCREMENT,
  `viajes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_destino_viajes1_idx` (`viajes_id`),
  CONSTRAINT `fk_destino_viajes1` FOREIGN KEY (`viajes_id`) REFERENCES `viajes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destino`
--

LOCK TABLES `destino` WRITE;
/*!40000 ALTER TABLE `destino` DISABLE KEYS */;
INSERT INTO `destino` VALUES (1,1),(5,1),(6,1),(8,1),(2,2),(9,3),(10,3),(89,3),(45,4),(68,4);
/*!40000 ALTER TABLE `destino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen`
--

DROP TABLE IF EXISTS `origen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `viajes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_origen_viajes1_idx` (`viajes_id`),
  CONSTRAINT `fk_origen_viajes1` FOREIGN KEY (`viajes_id`) REFERENCES `viajes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen`
--

LOCK TABLES `origen` WRITE;
/*!40000 ALTER TABLE `origen` DISABLE KEYS */;
INSERT INTO `origen` VALUES (1,1),(5,1),(8,1),(9,1),(14,1),(15,1),(2,2),(6,2),(7,2),(16,2),(3,3),(10,3),(12,3),(13,3),(47,3),(4,4),(45,4);
/*!40000 ALTER TABLE `origen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencias_familiares`
--

DROP TABLE IF EXISTS `referencias_familiares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referencias_familiares` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `viajeros_id` int NOT NULL,
  `viajes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_referencias_familiares_viajeros_idx` (`viajeros_id`),
  KEY `fk_referencias_familiares_viajes1_idx` (`viajes_id`),
  CONSTRAINT `fk_referencias_familiares_viajeros` FOREIGN KEY (`viajeros_id`) REFERENCES `viajeros` (`id`),
  CONSTRAINT `fk_referencias_familiares_viajes1` FOREIGN KEY (`viajes_id`) REFERENCES `viajes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencias_familiares`
--

LOCK TABLES `referencias_familiares` WRITE;
/*!40000 ALTER TABLE `referencias_familiares` DISABLE KEYS */;
INSERT INTO `referencias_familiares` VALUES (1,'Pablo','Pana','Calle 16a #08-107','3114093695',1,1),(2,'Maria','Polanco','Carrera 7 #12-20','3105154120',2,2);
/*!40000 ALTER TABLE `referencias_familiares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajeros`
--

DROP TABLE IF EXISTS `viajeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajeros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajeros`
--

LOCK TABLES `viajeros` WRITE;
/*!40000 ALTER TABLE `viajeros` DISABLE KEYS */;
INSERT INTO `viajeros` VALUES (1,'Julian','Calle 16a #08-107','3205905901'),(2,'Esteban','Carrera 7 #12-20','3105204122'),(3,'jordi','Carrera 8 #17-20','3021584545'),(4,'juan','Carrera 6 #17-20','3254845455');
/*!40000 ALTER TABLE `viajeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajes`
--

DROP TABLE IF EXISTS `viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viajes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numeroPlazas` varchar(45) DEFAULT NULL,
  `frv` varchar(45) DEFAULT NULL,
  `viajeros_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_viajes_viajeros1_idx` (`viajeros_id`),
  CONSTRAINT `fk_viajes_viajeros1` FOREIGN KEY (`viajeros_id`) REFERENCES `viajeros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajes`
--

LOCK TABLES `viajes` WRITE;
/*!40000 ALTER TABLE `viajes` DISABLE KEYS */;
INSERT INTO `viajes` VALUES (1,'2','2',1),(2,'4','2',1),(3,'8','5',2),(4,'5','7',4),(5,'5','2',1),(6,'2','4',1),(7,'2','1',2),(8,'1','2',2),(9,'5','5',3),(10,'6','5',4);
/*!40000 ALTER TABLE `viajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'taller2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-13 12:56:14
