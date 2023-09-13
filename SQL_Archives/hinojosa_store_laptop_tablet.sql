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
-- Table structure for table `laptop_tablet`
--

DROP TABLE IF EXISTS `laptop_tablet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop_tablet` (
  `Sku` varchar(30) NOT NULL,
  `Bateria` varchar(30) DEFAULT NULL,
  `Rgb` varchar(30) DEFAULT NULL,
  `Sist_Ope` varchar(30) DEFAULT NULL,
  `Almacenamiento` varchar(30) DEFAULT NULL,
  `Resolucion` varchar(30) DEFAULT NULL,
  `Procesador` varchar(30) DEFAULT NULL,
  `Pantalla` varchar(30) DEFAULT NULL,
  `Tipo` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`),
  KEY `Sku_Articulo` (`Sku_Articulo`),
  CONSTRAINT `laptop_tablet_ibfk_1` FOREIGN KEY (`Sku_Articulo`) REFERENCES `articulo` (`Sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop_tablet`
--

LOCK TABLES `laptop_tablet` WRITE;
/*!40000 ALTER TABLE `laptop_tablet` DISABLE KEYS */;
INSERT INTO `laptop_tablet` VALUES ('SKUL174','No','No','No','No','1080 FHD','No','21.5\"','TN','SKU5195'),('SKUL179','5000','Si','Android 9 Pie','32 GB','720 HD','MediaTek Helio','8\"','No','SKU2510'),('SKUL252','3500','No','Android 10','180 GB','720 HD','Qualcom 450','7\'','IPS','SKU7931'),('SKUL257','5600','Si','Windows 10 ','256 GB','1800 HD','AMD Ryzen 5','15.6\"','IPS','SKU4140'),('SKUL296','No','No','Linux','16 GB','720 HD','AMD Ryzen 5','14\"','No','SKU5962'),('SKUL297','5100','No','Android EMUI 10','32 GB','720 HD','Kirin 710A','9.7\"','No','SKU9384'),('SKUL333','44.5Wh','No','Windows 10 ','256 GB','1080 FHD','AMD Ryzen 5','14\"','TN','SKU6477'),('SKUL375','No','No','No','No','1600 HD','No','19.5\"','LED','SKU6916'),('SKUL416','4430','No','windows 11','1 TB','1800 HD+','Intel Core i9','15\'','IPS','SKU5492'),('SKUL471','5000','No','IOS','1 TB','1800 FULL HD','A 15 BIONIC','12\'','OLED','SKU4532'),('SKUL518','7500','No','Android 10Q','128 GB','2k Multi Touch','Snapdragon 662','11\"','IPS','SKU7972'),('SKUL543','No','No','No','No','1080 HD','No','22\"','TN','SKU1608'),('SKUL564','7040','No','Android','1 TB','720 HD','Octa-Core','10.4\"','No','SKU5707'),('SKUL581','No','No','No','No','1080 FULL HD','No','23.8\"','IPS','SKU4035'),('SKUL704','7040','No','Android 11','1 TB','720 HD','Unisoc','10.5\"','No','SKU3569'),('SKUL760','56 Wh','No','Windowa 10','512 GB','QHD','Intel Core ¡5','13.3\"','No','SKU6228'),('SKUL777','No','No','Windows 10 ','32 GB','1080 FHD','Intel Core i3','15.5\"','IPS','SKU1144'),('SKUL810','11000','No','MacOS','16 GB','1800 HD','Intel Core i9','16\"','OLED','SKU1154'),('SKUL895','No','No','No','No','720 HD','No','18.5\"','TN','SKU8078'),('SKUL930','35Wh','No','Windows 10 ','256 GB','720 HD','Intel Core i3','14\"','TN','SKU6954');
/*!40000 ALTER TABLE `laptop_tablet` ENABLE KEYS */;
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
