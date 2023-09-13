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
-- Table structure for table `fotografia`
--

DROP TABLE IF EXISTS `fotografia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotografia` (
  `Sku` varchar(30) NOT NULL,
  `Megapixeles` varchar(30) DEFAULT NULL,
  `Resolucion` varchar(30) DEFAULT NULL,
  `Procesador` varchar(30) DEFAULT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`),
  KEY `Sku_Articulo` (`Sku_Articulo`),
  CONSTRAINT `fotografia_ibfk_1` FOREIGN KEY (`Sku_Articulo`) REFERENCES `articulo` (`Sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotografia`
--

LOCK TABLES `fotografia` WRITE;
/*!40000 ALTER TABLE `fotografia` DISABLE KEYS */;
INSERT INTO `fotografia` VALUES ('SKUC104','No','No','No','No','SKU3725'),('SKUC188','24.1 MP','6000','DIGIC 8','Reflex','SKU3788'),('SKUC318','No','No','No','No','SKU6368'),('SKUC319','24.1 MP','1.032.800','DX','Reflex','SKU1509'),('SKUC354','24.1 MP','4000','DIGIC 4+','Reflex','SKU9422'),('SKUC374','No','No','No','No','SKU6418'),('SKUC377','No','No','No','No','SKU7825'),('SKUC495','12.1 MP','FULL HD','DIGIC 8','Compacta','SKU3334'),('SKUC534','18 MP','1080','DIGIC 4+','TFT','SKU9513'),('SKUC545','18 MP','1920','DIGIC 4+','Reflex','SKU8935'),('SKUC574','No','No','No','No','SKU5702'),('SKUC613','No','No','No','No','SKU1504'),('SKUC625','No','No','No','No','SKU8739'),('SKUC745','24.2 MP','1.032.800','DX','Reflex','SKU3872'),('SKUC786','No','No','No','No','SKU3742'),('SKUC837','20 MP','No','No','Instantanea','SKU5421'),('SKUC884','30.4 MP','1080','DIGIC 4+','Reflex','SKU3186'),('SKUC929','No','No','No','No','SKU4671'),('SKUC951','33 MP','1080','No','LCD','SKU3269'),('SKUC962','24.1 MP','6000','DX','Reflex','SKU7164');
/*!40000 ALTER TABLE `fotografia` ENABLE KEYS */;
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
