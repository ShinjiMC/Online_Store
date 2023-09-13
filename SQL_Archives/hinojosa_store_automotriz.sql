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
-- Table structure for table `automotriz`
--

DROP TABLE IF EXISTS `automotriz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automotriz` (
  `Sku` varchar(30) NOT NULL,
  `Peso` varchar(30) DEFAULT NULL,
  `Material` varchar(30) DEFAULT NULL,
  `Bateria` varchar(70) DEFAULT NULL,
  `num_llantas` int DEFAULT NULL,
  `Sku_Articulo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Sku`),
  KEY `Sku_Articulo` (`Sku_Articulo`),
  CONSTRAINT `automotriz_ibfk_1` FOREIGN KEY (`Sku_Articulo`) REFERENCES `articulo` (`Sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automotriz`
--

LOCK TABLES `automotriz` WRITE;
/*!40000 ALTER TABLE `automotriz` DISABLE KEYS */;
INSERT INTO `automotriz` VALUES ('SKUA125','54','Metal','16500',0,'SKU1726'),('SKUA135','100','Aluminio','10.4 Ah 36v',2,'SKU7297'),('SKUA345','1','PC + ABS','Ilimitado',0,'SKU4602'),('SKUA372','20','EPS de alta densidad','Ilimitado',0,'SKU3122'),('SKUA386','32','Aluminio forzado','Lithium-Ion 48V 10AH',2,'SKU9620'),('SKUA547','12','Plastico','Ninguno',0,'SKU5499'),('SKUA597','24','Aluminio','Ilimitado',0,'SKU2274'),('SKUA599','120','Aluminio de grado de aviación','Lithium-ion battery pack 60V18.2AH',2,'SKU2713'),('SKUA618','50','Metal','Ilimitado',0,'SKU3136'),('SKUA621','10','ABS, PV, Metal','Ilimitado',0,'SKU3741'),('SKUA639','120','Aleación de aluminio','10.2',2,'SKU1877'),('SKUA671','27','Plastico/Metal','Ilimitado',0,'SKU1395'),('SKUA677','14','Aluminio','5800',2,'SKU2156'),('SKUA693','2','Carcasa de plástico','Ilimitado',0,'SKU4477'),('SKUA712','3','Plastico','Ilimitado',0,'SKU9489'),('SKUA734','100','Acero','Ilimitado',0,'SKU1321'),('SKUA777','75','Aluminio','60000',2,'SKU1306'),('SKUA779','110','Aleación de aluminio','36V 10',2,'SKU2963'),('SKUA849','120','Acero','Ilimitado',0,'SKU2850'),('SKUA889','30','Plastico/Metal','Ilimitado',0,'SKU4048');
/*!40000 ALTER TABLE `automotriz` ENABLE KEYS */;
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
