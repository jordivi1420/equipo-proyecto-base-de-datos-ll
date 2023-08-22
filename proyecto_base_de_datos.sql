-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: venta_perico
-- ------------------------------------------------------
-- Server version	8.0.34

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
  `idclientes` int NOT NULL,
  `nombre` char(50) DEFAULT NULL,
  `apellidos` char(50) DEFAULT NULL,
  `direccion` char(50) DEFAULT NULL,
  PRIMARY KEY (`idclientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (123,'Juan','Pérez','Calle 123, Ciudad A'),(2435,'María','López','Avenida 456, Ciudad B'),(3212,'Carlos','García','Calle Principal, Ciudad C'),(4323,'Ana','Rodríguez','Plaza Central, Ciudad D'),(6123,'Laura','Hernández','Avenida Central, Ciudad F'),(9232,'Andrés','Ramírez','Calle de los Pinos, Ciudad I'),(10232,'Isabel','Torres','Avenida Marítima, Ciudad J'),(52322,'Luis','Martínez','Calle del Sol, Ciudad E'),(71223,'Pedro','González','Calle 789, Ciudad G'),(83212,'Sofía','Díaz','Avenida del Parque, Ciudad H');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idproductos` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `preciocompra` decimal(10,0) DEFAULT NULL,
  `precioventa` decimal(10,0) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `tipo_productos_idtipo_productos` int NOT NULL,
  PRIMARY KEY (`idproductos`),
  KEY `fk_productos_tipo_productos1_idx` (`tipo_productos_idtipo_productos`),
  CONSTRAINT `fk_productos_tipo_productos1` FOREIGN KEY (`tipo_productos_idtipo_productos`) REFERENCES `tipo_productos` (`idtipo_productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1011,'Auriculares',30000,60000,40,5122),(1112,'Botella de Agua',2000,3000,250,32311),(1213,'Teclado',200000,40000,25,2453),(1234,'Smartphone',2500000,4000000,50,123),(1314,'Pizza',8000,16000,15,5122),(1415,'Reloj',5000,10000,10,123),(1516,'Papel Higiénico',3300,5000,1000,123),(1617,'Cámara',180000,300000,12,32311),(1718,'Bolígrafo',1000,10000,500,5122),(1819,'Mochila',3000000,6000000,40,2453),(1920,'Manzana',1000,10000,300,5122),(2021,'Gafas de Sol',1000000,20000,30,123),(2345,'Camiseta',15000,30000,100,2453),(3456,'Leche',2000,4000,200,5122),(4567,'Sartén',20000,40000,30,32311),(5678,'Zapatillas',60000,100000,20,41233),(6789,'Cereal',3000,6000,150,41233),(7891,'Monitor',1500000,2500000,15,41233),(8910,'Pantalones',250000,5000000,80,123),(9101,'Pan',10000,20000,300,2453);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idproveedores` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idproveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1011,'velez','Avenida Marítima, Ciudad J','444-555-6666','proveedorj@example.com'),(1321,'totto','Calle 123, Ciudad A','123-456-7890','proveedora@example.com'),(2212,'rolex','Avenida 456, Ciudad B','987-654-3210','proveedorb@example.com'),(3323,'xiaomi','Calle Principal, Ciudad C','555-123-4567','proveedorc@example.com'),(4655,'dominnos','Plaza Central, Ciudad D','777-888-9999','proveedord@example.com'),(5233,'familia','Calle del Sol, Ciudad E','111-222-3333','proveedore@example.com'),(6655,'cammon','Avenida Central, Ciudad F','444-555-6666','proveedorf@example.com'),(7322,'papper','Calle 789, Ciudad G','666-777-8888','proveedorg@example.com'),(8344,'brisa','Avenida del Parque, Ciudad H','888-999-0000','proveedorh@example.com'),(9877,'norma','Calle de los Pinos, Ciudad I','222-333-4444','proveedori@example.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_has_productos`
--

DROP TABLE IF EXISTS `proveedores_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_has_productos` (
  `proveedores_idproveedores` int NOT NULL,
  `productos_idproductos` int NOT NULL,
  PRIMARY KEY (`proveedores_idproveedores`,`productos_idproductos`),
  KEY `fk_proveedores_has_productos_productos1_idx` (`productos_idproductos`),
  KEY `fk_proveedores_has_productos_proveedores1_idx` (`proveedores_idproveedores`),
  CONSTRAINT `fk_proveedores_has_productos_productos1` FOREIGN KEY (`productos_idproductos`) REFERENCES `productos` (`idproductos`),
  CONSTRAINT `fk_proveedores_has_productos_proveedores1` FOREIGN KEY (`proveedores_idproveedores`) REFERENCES `proveedores` (`idproveedores`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_has_productos`
--

LOCK TABLES `proveedores_has_productos` WRITE;
/*!40000 ALTER TABLE `proveedores_has_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores_has_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos` (
  `idtelefonos` int NOT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `clientes_idclientes` int NOT NULL,
  PRIMARY KEY (`idtelefonos`),
  KEY `fk_telefonos_clientes1_idx` (`clientes_idclientes`),
  CONSTRAINT `fk_telefonos_clientes1` FOREIGN KEY (`clientes_idclientes`) REFERENCES `clientes` (`idclientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos`
--

LOCK TABLES `telefonos` WRITE;
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` VALUES (123,'3212321123',123),(23332,'3015643567',2435),(34343,'3007584055',6123),(43233,'72598376',9232);
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_productos`
--

DROP TABLE IF EXISTS `tipo_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_productos` (
  `idtipo_productos` int NOT NULL,
  `tipoCategoria` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_productos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_productos`
--

LOCK TABLES `tipo_productos` WRITE;
/*!40000 ALTER TABLE `tipo_productos` DISABLE KEYS */;
INSERT INTO `tipo_productos` VALUES (123,'Electrónica'),(2453,'Ropa'),(5122,'Deportes'),(32311,'Alimentación'),(41233,'Hogar');
/*!40000 ALTER TABLE `tipo_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idventas` int NOT NULL,
  `nombre` char(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `subtotal` bigint DEFAULT NULL,
  `iva` decimal(10,0) DEFAULT NULL,
  `descuento` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `clientes_idclientes` int NOT NULL,
  PRIMARY KEY (`idventas`),
  KEY `fk_ventas_clientes_idx` (`clientes_idclientes`),
  CONSTRAINT `fk_ventas_clientes` FOREIGN KEY (`clientes_idclientes`) REFERENCES `clientes` (`idclientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'Venta 1','2023-08-22',100,16,10,106,123),(2,'Venta 2','2023-08-23',76,12,5,83,2435),(3,'Venta 3','2023-08-23',200,32,15,217,3212),(4,'Venta 4','2023-08-24',50,8,2,56,4323),(5,'Venta 5','2023-08-25',300,48,20,328,6123),(6,'Venta 6','2023-08-25',80,13,5,88,9232),(7,'Venta 7','2023-08-26',150,24,10,164,10232),(8,'Venta 8','2023-08-26',40,6,3,44,52322),(9,'Venta 9','2023-08-27',95,15,7,103,71223),(10,'Venta 10','2023-08-27',120,19,8,131,83212),(11,'Venta 11','2023-08-28',65,10,4,71,123),(12,'Venta 12','2023-08-28',150,24,12,162,2435),(13,'Venta 13','2023-08-29',220,35,15,240,3212),(14,'Venta 14','2023-08-29',40,6,2,46,4323),(15,'Venta 15','2023-08-30',280,45,25,300,6123),(16,'Venta 16','2023-08-30',75,12,5,82,9232),(17,'Venta 17','2023-08-31',130,21,8,143,10232),(18,'Venta 18','2023-08-31',35,6,2,39,52322),(19,'Venta 19','2023-09-01',85,14,6,93,71223),(20,'Venta 20','2023-09-01',110,18,7,121,83212);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_has_productos`
--

DROP TABLE IF EXISTS `ventas_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_has_productos` (
  `ventas_idventas` int NOT NULL,
  `productos_idproductos` int NOT NULL,
  PRIMARY KEY (`ventas_idventas`,`productos_idproductos`),
  KEY `fk_ventas_has_productos_productos1_idx` (`productos_idproductos`),
  KEY `fk_ventas_has_productos_ventas1_idx` (`ventas_idventas`),
  CONSTRAINT `fk_ventas_has_productos_productos1` FOREIGN KEY (`productos_idproductos`) REFERENCES `productos` (`idproductos`),
  CONSTRAINT `fk_ventas_has_productos_ventas1` FOREIGN KEY (`ventas_idventas`) REFERENCES `ventas` (`idventas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_has_productos`
--

LOCK TABLES `ventas_has_productos` WRITE;
/*!40000 ALTER TABLE `ventas_has_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas_has_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-22 11:20:22
