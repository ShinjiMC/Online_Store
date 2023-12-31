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
-- Table structure for table `computo`
--

DROP TABLE IF EXISTS `computo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computo` (
  `Sku` varchar(30) NOT NULL,
  `Rgb` varchar(30) DEFAULT NULL,
  `Conectividad` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`),
  KEY `Sku_Articulo` (`Sku_Articulo`),
  CONSTRAINT `computo_ibfk_1` FOREIGN KEY (`Sku_Articulo`) REFERENCES `articulo` (`Sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computo`
--

LOCK TABLES `computo` WRITE;
/*!40000 ALTER TABLE `computo` DISABLE KEYS */;
INSERT INTO `computo` VALUES ('SKUM101','No','BLUETOOTH','SKU8332'),('SKUM102','Si','BLUETOOTH','SKU8890'),('SKUM122','Si','USB','SKU2395'),('SKUM147','Si','BLUETOOTH','SKU6497'),('SKUM194','Si','USB','SKU9402'),('SKUM229','No','USB','SKU8791'),('SKUM235','Si','USB','SKU6645'),('SKUM265','Si','BLUETOOTH','SKU2600'),('SKUM372','No','BLUETOOTH','SKU7443'),('SKUM378','Si','BLUETOOTH','SKU6602'),('SKUM421','Si','BLUETOOTH','SKU2469'),('SKUM483','Si','USB','SKU4725'),('SKUM500','No','USB','SKU7829'),('SKUM517','No','BLUETOOTH','SKU8123'),('SKUM602','No','USB','SKU4518'),('SKUM610','No','BLUETOOTH','SKU8366'),('SKUM675','No','USB','SKU3623'),('SKUM723','No','BLUETOOTH','SKU1238'),('SKUM849','Si','BLUETOOTH','SKU4649'),('SKUM956','Si','BLUETOOTH','SKU9686');
/*!40000 ALTER TABLE `computo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-25 23:00:22
