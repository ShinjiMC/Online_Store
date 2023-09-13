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
-- Table structure for table `electro_hogar`
--

DROP TABLE IF EXISTS `electro_hogar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electro_hogar` (
  `Sku` varchar(30) NOT NULL,
  `Modelo` varchar(70) DEFAULT NULL,
  `Capacidad` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`),
  KEY `Sku_Articulo` (`Sku_Articulo`),
  CONSTRAINT `electro_hogar_ibfk_1` FOREIGN KEY (`Sku_Articulo`) REFERENCES `articulo` (`Sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electro_hogar`
--

LOCK TABLES `electro_hogar` WRITE;
/*!40000 ALTER TABLE `electro_hogar` DISABLE KEYS */;
INSERT INTO `electro_hogar` VALUES ('SKUE139','Amazon Echo Dot 4ta generación','704','SKU3379'),('SKUE142','DEM-F600_NG 5 litros','25','SKU3989'),('SKUE299','iRobot Braava','380','SKU4819'),('SKUE366','DEM-HX10','10','SKU6789'),('SKUE372','iRobot Roomba','960','SKU8091'),('SKUE440','Mi Vacuum Cleaner Mini inalámbrico','30','SKU7212'),('SKUE458','Braava Jet M6','600','SKU9494'),('SKUE472','Ultrabyte IP wifi','540','SKU4695'),('SKUE516','DEM-PX831','831','SKU1765'),('SKUE521','Deerma Max VC01MAX','100','SKU8729'),('SKUE540','Vtech BC8211 Myla The Monkey','821','SKU2529'),('SKUE606','DB2C wi-fi','210','SKU5920'),('SKUE726','Baseus inalámbrico en forma de cápsula','420','SKU3239'),('SKUE763','DEM-XS100','100','SKU2839'),('SKUE878','ST-96','960','SKU6184'),('SKUE880','Thomas TH-1640','1600','SKU5386'),('SKUE912','Deerma CM1900','120','SKU4907'),('SKUE916','HEPA (H13)','730','SKU5516'),('SKUE919','Light Line 2 Litros, panel digital','48','SKU7996'),('SKUE924','Boton S918 con resolución 720 x 480','918','SKU1892');
/*!40000 ALTER TABLE `electro_hogar` ENABLE KEYS */;
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
