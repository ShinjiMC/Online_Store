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
-- Table structure for table `gamer`
--

DROP TABLE IF EXISTS `gamer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamer` (
  `Sku` varchar(30) NOT NULL,
  `Modelo` varchar(70) DEFAULT NULL,
  `Almacenamiento` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`),
  KEY `Sku_Articulo` (`Sku_Articulo`),
  CONSTRAINT `gamer_ibfk_1` FOREIGN KEY (`Sku_Articulo`) REFERENCES `articulo` (`Sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamer`
--

LOCK TABLES `gamer` WRITE;
/*!40000 ALTER TABLE `gamer` DISABLE KEYS */;
INSERT INTO `gamer` VALUES ('SKUG119','Bluethoot inalámbrico 5 en 1','Ninguno','SKU2569'),('SKUG143','G G435 Lightspeed','500 MB','SKU6628'),('SKUG210','Bora Rainbow T-TGK313','500 MB','SKU8881'),('SKUG228','Gnerico','Ninguno','SKU2490'),('SKUG311','Redragon COBRA M711 10000 DPI','700 MB','SKU9457'),('SKUG470','50-145MM','Ninguno','SKU4793'),('SKUG496','Naxos Rainbow T-TGK310','500 MB','SKU3612'),('SKUG515','T-Dagger BORA WHITE Rainbow T-TGK313W-RD-SP','700 MB','SKU4190'),('SKUG523','Gamer Redragon Scepter Ha 300 Rgb','Ninguno','SKU9477'),('SKUG541','Teclado + Mouse + Pad Mouse, Halion Stuka','Ninguno','SKU1277'),('SKUG574','Semimecanico Redragon SHIVA K512RGB-SP','1 GB','SKU8530'),('SKUG691','T-Dagger Bora RGB T-TGK315-BL-SP','500 MB','SKU1399'),('SKUG850','T-Dagger TGK313W + TGM206W','1 GB','SKU2799'),('SKUG871','Gamer T-Dagger Lava M T-TMP200','Ninguno','SKU7978'),('SKUG880','Redragon Mitra Rgb K551','700 MB','SKU2816'),('SKUG928','TF230 ','Ninguno','SKU8443'),('SKUG934','Redragon INVADER M719 10000 DPI, RGB, 8 botones','500 MB','SKU5854'),('SKUG942','-Dagger Arena Rainbow T-TGK321','500 MB','SKU7854'),('SKUG945','Blazze Pro','Ninguno','SKU2211'),('SKUG998','Extingtion con Apoya pies Masajeador Lumbar','Ninguno','SKU2174');
/*!40000 ALTER TABLE `gamer` ENABLE KEYS */;
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
