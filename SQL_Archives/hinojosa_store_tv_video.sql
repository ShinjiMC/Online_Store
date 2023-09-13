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
-- Table structure for table `tv_video`
--

DROP TABLE IF EXISTS `tv_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_video` (
  `Sku` varchar(30) NOT NULL,
  `Resolucion` varchar(30) DEFAULT NULL,
  `Pulgadas` varchar(30) DEFAULT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`),
  KEY `Sku_Articulo` (`Sku_Articulo`),
  CONSTRAINT `tv_video_ibfk_1` FOREIGN KEY (`Sku_Articulo`) REFERENCES `articulo` (`Sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_video`
--

LOCK TABLES `tv_video` WRITE;
/*!40000 ALTER TABLE `tv_video` DISABLE KEYS */;
INSERT INTO `tv_video` VALUES ('SKUT272','FULL HD','60','Smart Tv Curvo','SKU4954'),('SKUT292','HD','70','Smart Tv Curvo','SKU7146'),('SKUT313','FULL HD','70','Smart Tv','SKU8798'),('SKUT338','HD','60','Smart Tv Curvo','SKU9969'),('SKUT383','4k','60','Smart Tv Curvo','SKU6771'),('SKUT414','FULL HD','55','Smart Tv','SKU4589'),('SKUT463','HD','70','Smart Tv Curvo','SKU9965'),('SKUT504','4k','60','Smart Tv Curvo','SKU5111'),('SKUT573','4k','50','Smart Tv','SKU7903'),('SKUT591','HD','55','Smart Tv','SKU8552'),('SKUT602','FULL HD','55','Smart Tv','SKU4739'),('SKUT646','HD','55','Smart Tv','SKU6183'),('SKUT689','FULL HD','55','Smart Tv','SKU2147'),('SKUT700','HD','55','Smart Tv','SKU3807'),('SKUT800','4k','50','Smart Tv','SKU9381'),('SKUT809','HD','60','Smart Tv Curvo','SKU2905'),('SKUT862','4k','55','Smart Tv','SKU6449'),('SKUT896','HD','70','Smart Tv Curvo','SKU6349'),('SKUT899','HD','60','Smart Tv','SKU5936'),('SKUT976','FULL HD','60','Smart Tv','SKU9014');
/*!40000 ALTER TABLE `tv_video` ENABLE KEYS */;
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
