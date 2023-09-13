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
-- Table structure for table `oficina`
--

DROP TABLE IF EXISTS `oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficina` (
  `Sku` varchar(30) NOT NULL,
  `Material` varchar(30) DEFAULT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`),
  KEY `Sku_Articulo` (`Sku_Articulo`),
  CONSTRAINT `oficina_ibfk_1` FOREIGN KEY (`Sku_Articulo`) REFERENCES `articulo` (`Sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficina`
--

LOCK TABLES `oficina` WRITE;
/*!40000 ALTER TABLE `oficina` DISABLE KEYS */;
INSERT INTO `oficina` VALUES ('SKUF117','Acero','Escritorio','SKU7584'),('SKUF123456','','','SKU123456'),('SKUF267','Plastico','Calculadora','SKU7840'),('SKUF274','Plastico','Presentador','SKU3711'),('SKUF369','Polipropileno','Silla','SKU1952'),('SKUF373','Plastico','Lectura','SKU1140'),('SKUF423','Plastico','Organizador','SKU1755'),('SKUF430','Plastico','Señalizador','SKU4561'),('SKUF482','Metal','Gaveta','SKU7139'),('SKUF548','Acero','Escritorio','SKU3655'),('SKUF615','Plastico','Presentador','SKU3535'),('SKUF636','Acero','Seguridad','SKU4731'),('SKUF641','Plastico','Dectector','SKU6757'),('SKUF673','Acero','Soporte','SKU7694'),('SKUF701','Plastico','Iluminacion','SKU7843'),('SKUF800','Plastico','Presentador','SKU3875'),('SKUF811','Polipropileno','Silla','SKU5301'),('SKUF835','Plastico','Presentador','SKU2137'),('SKUF962','Cuero','Cuaderno','SKU8373'),('SKUF968','Acero','Seguridad','SKU8482'),('SKUF985','Melamina','Escritorio','SKU8441');
/*!40000 ALTER TABLE `oficina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-25 23:00:21
