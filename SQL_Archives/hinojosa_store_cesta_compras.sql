-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hinojosa_store
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `cesta_compras`
--

DROP TABLE IF EXISTS `cesta_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cesta_compras` (
  `Id_cliente_Cliente` int DEFAULT NULL,
  `Id_shop` int NOT NULL AUTO_INCREMENT,
  `Sku` varchar(30) DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  PRIMARY KEY (`Id_shop`),
  KEY `Id_cliente_Cliente` (`Id_cliente_Cliente`),
  KEY `Sku` (`Sku`),
  CONSTRAINT `cesta_compras_ibfk_1` FOREIGN KEY (`Id_cliente_Cliente`) REFERENCES `cliente` (`Id_cliente`),
  CONSTRAINT `cesta_compras_ibfk_2` FOREIGN KEY (`Sku`) REFERENCES `articulo` (`Sku`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cesta_compras`
--

LOCK TABLES `cesta_compras` WRITE;
/*!40000 ALTER TABLE `cesta_compras` DISABLE KEYS */;
INSERT INTO `cesta_compras` VALUES (68637,1,'SKU9489',3),(97821,2,'SKU1952',2),(63497,3,'SKU3122',3),(90201,4,'SKU7584',3),(74352,7,'SKU6757',2),(67433,8,'SKU1877',3),(72598,9,'SKU1395',3),(62412,10,'SKU5499',4),(70822,12,'SKU7694',3),(75944,13,'SKU3875',5),(70968,15,'SKU2156',2),(71103,16,'SKU3875',3),(93224,17,'SKU3122',5),(62612,18,'SKU1140',5),(56276,20,'SKU1321',5);
/*!40000 ALTER TABLE `cesta_compras` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-25 23:00:23
