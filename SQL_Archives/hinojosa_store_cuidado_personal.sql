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
-- Table structure for table `cuidado_personal`
--

DROP TABLE IF EXISTS `cuidado_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuidado_personal` (
  `Sku` varchar(30) NOT NULL,
  `Peso` varchar(30) DEFAULT NULL,
  `Extras` varchar(30) DEFAULT NULL,
  `Material` varchar(30) DEFAULT NULL,
  `Fuente_Alimenta` varchar(30) DEFAULT NULL,
  `Dimension` varchar(30) DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`),
  KEY `Sku_Articulo` (`Sku_Articulo`),
  CONSTRAINT `cuidado_personal_ibfk_1` FOREIGN KEY (`Sku_Articulo`) REFERENCES `articulo` (`Sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuidado_personal`
--

LOCK TABLES `cuidado_personal` WRITE;
/*!40000 ALTER TABLE `cuidado_personal` DISABLE KEYS */;
INSERT INTO `cuidado_personal` VALUES ('SKUP237','241gr','No','Plastico','Pilas','15x10x30','SKU4655'),('SKUP266','Varia','No','Almohadilla','Corriente','Varia','SKU7528'),('SKUP272','800gr','No','titanio','Corriente','19x19x7','SKU7817'),('SKUP399','100gr','cuchillas','Plastico','Pilas','15x5','SKU3543'),('SKUP426','500gr','No','Plastico','Corriente','15x8x33','SKU1690'),('SKUP453','1kg','No','Vidrio','Pila CR2032','30x30','SKU7902'),('SKUP529','100gr','No','Plastico','Corriente','15x5','SKU8011'),('SKUP581','800gr','No','Ceramica','Corriente','25x10','SKU7001'),('SKUP680','300gr','No','Plastico','Pilas','13x5x2','SKU5461'),('SKUP684','800gr','cuchillas, cambiopunta','Plastico','Corriente','18x10','SKU1005'),('SKUP704','800gr','No','Ceramica','Corriente','22x8','SKU4367'),('SKUP780','250gr','No','Plastico','Pilas','18x8','SKU4335'),('SKUP801','300gr','No','Ceramica','Corriente','18x8x5','SKU7595'),('SKUP804','500gr','No','Plastico','Corriente','35x12','SKU8490'),('SKUP821','600gr','No','Ceramica','Corriente','20x19x5','SKU9321'),('SKUP825','100gr','No','Plastico','Pilas','15x5','SKU6446'),('SKUP852','150gr','No','Plastico','Corriente','15x5','SKU8454'),('SKUP967','700gr','No','Ceramica','Corriente','20x5','SKU8244'),('SKUP979','400g','No','Plastico','Corriente','17x7','SKU1623'),('SKUP985','500gr','cepillo de limpieza','Aluminio','Corriente','10x10','SKU7057');
/*!40000 ALTER TABLE `cuidado_personal` ENABLE KEYS */;
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
