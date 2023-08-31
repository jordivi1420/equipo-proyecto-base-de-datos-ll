CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'everth','iguaran','uribia','everth@gmail.com','1985-03-15'),(2,'jordis','villa','maicao','jordi@gmail.com','2001-01-18'),(3,'geiner','rivero','maicao','geiner@gmail.com','1999-05-11'),(4,'erick','iguaran','uribia','erick@gmail.com','2000-12-24'),(5,'elian','iguaran','uribia','elian@gmail.com','2004-04-02'),(6,'Julio','Cesar','maicao','julio@gmail.com','1980-05-15'),(7,'juan','perez','rioahcha','juanperez@example.com','2003-08-18'),(8,'maria','rodriguez','riohacha','mariarodriguez@example.com','1938-12-31'),(9,'darien','ortiz','maicao','darienmmgvo@gmail.com','2003-04-25'),(10,'anshir','saez','maicao','darienmelapela@gmail.com','2004-04-05');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `precioCompra` decimal(10,0) DEFAULT NULL,
  `precioVenta` decimal(10,0) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `tipos_productos_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productos_tipos_productos1_idx` (`tipos_productos_id`),
  CONSTRAINT `fk_productos_tipos_productos1` FOREIGN KEY (`tipos_productos_id`) REFERENCES `tipos_productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'lavadora',160000,180000,2,1),(2,'sabana',50000,75000,1,2),(3,'relog',90000,110000,1,3),(4,'cafeteria',60000,75000,2,1),(5,'alfombra',20000,25000,5,2),(6,'pulsera',350000,420000,1,3),(7,'licuadora',70000,85000,2,1),(8,'coche control remoto',120000,150000,1,5),(9,'juego de mesa',45000,60000,2,5),(10,'estufa',750000,900000,1,1),(11,'almohadas',30000,45000,4,2),(12,'cadena de oro',650000,870000,2,3),(13,'espejo',320000,410000,1,2),(14,'horno',950000,990000,2,1),(15,'escritorio',450000,620000,2,2),(16,'computador',1500000,1900000,1,1),(17,'aspiradora',230000,300000,1,1),(18,'aretes',60000,85000,2,3),(19,'toallas',90000,140000,3,2),(20,'parlantes',500000,590000,2,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'samsung','riohacha','3205905901','sam@gmail.com'),(2,'suavitel','uribia','3142306007','suavitel@gmail.com'),(3,'rolex','maicao','3012130989','rolex@gmail.com'),(4,'luna','maicao','3045487963','luna@gmail.com'),(5,'carlos','riohacha','3017722756','carlos@gmail.com'),(6,'yulitza','maicao','3218407079','yulitza@gmail.com'),(7,'samer','maicao','3017010041','samer@gmail.com'),(8,'junior','maicao','3015689756','junior@gmail.com'),(9,'jordi','riohacha','3026547239','jordi@gmail.com'),(10,'kaneki','tokyo','3123589762','kaneki@gmail.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_has_productos`
--

DROP TABLE IF EXISTS `proveedores_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_has_productos` (
  `proveedores_id` int NOT NULL,
  `productos_id` int NOT NULL,
  PRIMARY KEY (`proveedores_id`,`productos_id`),
  KEY `fk_proveedores_has_productos_productos1_idx` (`productos_id`),
  KEY `fk_proveedores_has_productos_proveedores1_idx` (`proveedores_id`),
  CONSTRAINT `fk_proveedores_has_productos_productos1` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_proveedores_has_productos_proveedores1` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_has_productos`
--

LOCK TABLES `proveedores_has_productos` WRITE;
/*!40000 ALTER TABLE `proveedores_has_productos` DISABLE KEYS */;
INSERT INTO `proveedores_has_productos` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `proveedores_has_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos` (
  `idt` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(45) DEFAULT NULL,
  `clientes_id` int NOT NULL,
  PRIMARY KEY (`idt`),
  KEY `fk_telefonos_clientes_idx` (`clientes_id`),
  CONSTRAINT `fk_telefonos_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos`
--

LOCK TABLES `telefonos` WRITE;
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` VALUES (1,'3104120123',1),(2,'3205905901',2),(3,'3014152210',3),(4,'310 123 4567',4),(5,'320 234 5678',5),(6,'300 345 6789',6),(7,'350 456 7890',7),(8,'322 890 1234',8),(9,'311 678 9012',9),(10,'315 901 2345',10),(11,'351 012 3456',1),(12,'331 123 4567',2),(13,'361 234 5678',3),(14,'341 345 6789',4),(15,'332 456 7890',5),(16,'312 567 8901',6),(17,'302 678 9012',7),(18,'342 789 0123',8),(19,'323 890 1234',9),(20,'345 901 2345',10);
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_productos`
--

DROP TABLE IF EXISTS `tipos_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_productos`
--

LOCK TABLES `tipos_productos` WRITE;
/*!40000 ALTER TABLE `tipos_productos` DISABLE KEYS */;
INSERT INTO `tipos_productos` VALUES (1,'electrodomestico'),(2,'hogar'),(3,'joyas'),(4,'alimentos'),(5,'juguetes');
/*!40000 ALTER TABLE `tipos_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `subTotal` decimal(10,0) DEFAULT NULL,
  `iva` decimal(10,0) DEFAULT NULL,
  `descuento` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `clientes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_venta_clientes1_idx` (`clientes_id`),
  CONSTRAINT `fk_venta_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'venta1','2023-08-25',120000,19,10000,110000,1),(2,'venta','2022-07-21',320000,19,20000,300000,2),(3,'venta2','2023-01-12',112000,19,40000,114000,1);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_has_productos`
--

DROP TABLE IF EXISTS `venta_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_has_productos` (
  `venta_id` int NOT NULL,
  `productos_id` int NOT NULL,
  PRIMARY KEY (`venta_id`,`productos_id`),
  KEY `fk_venta_has_productos_productos1_idx` (`productos_id`),
  KEY `fk_venta_has_productos_venta1_idx` (`venta_id`),
  CONSTRAINT `fk_venta_has_productos_productos1` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_venta_has_productos_venta1` FOREIGN KEY (`venta_id`) REFERENCES `venta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_has_productos`
--

LOCK TABLES `venta_has_productos` WRITE;
/*!40000 ALTER TABLE `venta_has_productos` DISABLE KEYS */;
INSERT INTO `venta_has_productos` VALUES (1,1),(2,1),(1,2),(1,3);
/*!40000 ALTER TABLE `venta_has_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-31  8:58:26
