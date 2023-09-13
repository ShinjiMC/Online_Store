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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `Id_usuario` int NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `P_apel` varchar(30) DEFAULT NULL,
  `S_apel` varchar(30) DEFAULT NULL,
  `F_nac` date DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  `Departamento` varchar(30) DEFAULT NULL,
  `Ciudad` varchar(30) DEFAULT NULL,
  `Distrito` varchar(30) DEFAULT NULL,
  `Calle` varchar(30) DEFAULT NULL,
  `Correo` varchar(70) DEFAULT NULL,
  `Contrasena` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1395,'Merche','Zabaleta','Izquierdo','1971-02-24',606242577,'Huánuco','Huánuco','Huánuco','Av. Miguel Grau 823','Merche.Zabaleta@gmail.com','II417G'),(1472,'Porfirio','Dueñas','Alberto','1976-06-16',218360160,'Arequipa','Arequipa','Cayma','Av. Ejercito 775','Porfirio.Dueñas@gmail.com','VS807W'),(1474,'Luisa','Matas','Menendez','2004-10-25',742182612,'Huánuco','Huánuco','Huánuco','Av. Manco Capac 317','Luisa.Matas@gmail.com','BJ497Y'),(1740,'Gloria ','Alemany ','Moreno','1964-09-30',241628199,'Junín','El Tambo','El Tambo','Av. Cuba 374','Gloria.Alemany@gmail.com','KO900H'),(1885,'Nieves','Quiroga','Cuevas','1998-05-04',466428839,'Arequipa','Arequipa','Cayma','Av. España 376','Nieves.Quiroga@gmail.com','MO646U'),(2183,'Hortensia ','Verdejo ','Cáceres','1995-08-12',317721625,'Huánuco','Huánuco','Huánuco','Av. Los Alisos 251','Hortensia.Verdejo@gmail.com','VI308B'),(2240,'Mirta','Lopez','de Casares','1951-07-06',447484467,'Lima Metropolitana','Lima','Miraflores','Av. Pachacutec 509','Mirta.Lopez@gmail.com','XU668M'),(2340,'Héctor','Conesa','Medina','1972-04-28',373417394,'Lima Metropolitana','Lima','Villa María del Triunfo','Av. Bolivia 911','Héctor.Conesa@gmail.com','JZ602P'),(2457,'Ruben Carreño Borrell','Carreño ','Borrell','1986-03-25',687458120,'Lima Metropolitana','Lima','Villa María del Triunfo','Av. Universitaria 241','RubenCarreñoBorrell.Carreño@gmail.com','KG801C'),(2893,'Mauricio Gregorio','Arias','Mármol','1975-02-07',167233722,'Huánuco','Huánuco','Huánuco','Av. EEUU 271','MauricioGregorio.Arias@gmail.com','ZG613P'),(3054,'Ruy','García','Benito','1989-09-23',756530436,'Junín','El Tambo','El Tambo','Av. La Mar 711','Ruy.García@gmail.com','ZT137G'),(3447,'Yésica','Cepeda','Calzada','1942-01-04',814462824,'Arequipa','Arequipa','Cercado','Av. Abancay 197','Yésica.Cepeda@gmail.com','MF183B'),(3529,'Marianela','Carreras','Mate','1957-02-23',936304811,'Lima Metropolitana','Lima','Miraflores','Av. Reducto 740','Marianela.Carreras@gmail.com','CP657H'),(4095,'Luciano','Ropero','Peinado','1990-01-23',891795507,'Lima Metropolitana','Lima','Villa María del Triunfo','Av. Domingo 456','Luciano.Ropero@gmail.com','FG335E'),(4143,'Flor','Durán','Blasco','1961-07-26',992974752,'Arequipa','Arequipa','Cayma','Av. Arica 223','Flor.Durán@gmail.com','IN881Z'),(4524,'Calixta','Peinado','Ropero','1977-08-07',505342212,'Junín','El Tambo','El Tambo','Av. Salaverry 374','Calixta.Peinado@gmail.com','ZQ292S'),(4542,'Bautista','Piñol','Alberdi','1964-10-11',733991577,'Huánuco','Huánuco','Huánuco','Av. Tacna 967','Bautista.Piñol@gmail.com','LH661L'),(4883,'Cebrián','Matas','Oliva','1999-05-12',887838682,'Arequipa','Arequipa','Jose Luis Bustamante y Rivero','Av. Uruguay 110','Cebrián.Matas@gmail.com','XM373H'),(4892,'Tania','Lucio','de Sanabria','1963-10-27',365155188,'Arequipa','Arequipa','Cercado','Av. 28 de Julio 778','Tania.Lucio@gmail.com','SW535S'),(5237,'Josep','Torrent','Parejo','1969-05-27',714653981,'Arequipa','Arequipa','Jose Luis Bustamante y Rivero','Av. Peru 534','Josep.Torrent@gmail.com','XT154P'),(5629,'Ariel','Valencia','Sevillano','1984-12-16',719336129,'Lima Metropolitana','Lima','Villa María del Triunfo','Av. Naranjal 946','Ariel.Valencia@gmail.com','ES582S'),(5809,'Candela','Caro','Roldán','1960-02-20',778417114,'Arequipa','Arequipa','Cercado','Av. Garzón 926','Candela.Caro@gmail.com','VP544W'),(6029,'Elba','Seco','Viana','1961-02-17',897175595,'Lima Metropolitana','Lima','Villa María del Triunfo','Av. Francisco Bolognesi 566','Elba.Seco@gmail.com','YL944V'),(6077,'Flor','Rueda','Campos','1951-09-17',695603330,'Arequipa','Arequipa','Miraflores','Av. Canada 753','Flor.Rueda@gmail.com','RF788F'),(6494,'Laura Alma','Alcántara','Galiano ','1989-10-22',723351824,'Junín','El Tambo','El Tambo','Av. Javier Prado 720','LauraAlma.Alcántara@gmail.com','KA305K'),(6903,'Tadeo ','Tore','de Porras','1995-10-10',960919323,'Lima Metropolitana','Lima','Miraflores','Av. San Luis 998','Tadeo.Tore@gmail.com','IU304L'),(6907,'Mario ','Llanos ','Ariza','1970-09-15',686446312,'Arequipa','Arequipa','Cayma','Av. Isabel 720','Mario.Llanos@gmail.com','GO502U'),(7105,'Galo','Taboada','Almeida','1983-04-06',879249691,'Lima Metropolitana','Lima','Cercado','Av. Canta 635','Galo.Taboada@gmail.com','JW928Z'),(7128,'Luna','Perales','Abella','1961-03-27',931692817,'Junín','El Tambo','El Tambo','Av. Brasil 231','Luna.Perales@gmail.com','AT913O'),(7148,'Adolfo','Taboada','López','1982-10-01',339596282,'Arequipa','Arequipa','Jose Luis Bustamante y Rivero','Av. Primavera 141','Adolfo.Taboada@gmail.com','OF898R'),(7166,'Leyre Galán','Galán','Galán','1980-07-31',929703819,'Lima Metropolitana','Lima','Miraflores','Av. Mexico 863','LeyreGalán.Galán@gmail.com','XR381G'),(7666,'Andrés Felipe','Mesa','Gascón','1995-09-09',942488436,'Huánuco','Huánuco','Huánuco','Av. Roosevelt 674','AndrésFelipe.Mesa@gmail.com','BS962K'),(7680,'Rocío','Izquierdo','Zabaleta','1985-12-06',941303390,'Arequipa','Arequipa','Cayma','Av. Cesar 752','Rocío.Izquierdo@gmail.com','FR278H'),(7687,'Nazaret ','Domingo ','Palmer','1983-09-01',835386360,'Junín','El Tambo','El Tambo','Av. Caquetá 129','Nazaret.Domingo@gmail.com','ID187Z'),(7739,'Reyna ','Iborra ','Bou','1999-10-06',284859645,'Lima Metropolitana','Lima','Villa María del Triunfo','Av. Iquitos 898','Reyna.Iborra@gmail.com','JR227I'),(8686,'Marciano','Chacón','Tomas','1983-04-21',788999854,'Arequipa','Arequipa','Jose Luis Bustamante y Rivero','Av. Elmer 156','Marciano.Chacón@gmail.com','FM780W'),(8695,'Feliciana Ligia ','Cabo ','Múñiz','1974-09-14',689506532,'Huánuco','Huánuco','Huánuco','Av. Diagonal 482','FelicianaLigia.Cabo@gmail.com','RG295U'),(8713,'Sara','Soledad','del Manuel','1985-03-10',501517629,'Junín','El Tambo','El Tambo','Av. Jose Larco 947','Sara.Soledad@gmail.com','NL242B'),(9273,'Angelita ','Vera ','Enríquez','1991-11-10',420560737,'Arequipa','Arequipa','Jose Luis Bustamante y Rivero','Av. Sucre 743','Angelita.Vera@gmail.com','UH930W'),(9622,'Olalla ','Carrillo','de Carrillo','1982-09-17',534250243,'Huánuco','Huánuco','Huánuco','Av. Venezuela 942','Olalla.Carrillo@gmail.com','VX472S'),(12345678,'Braulio','Maldonado','Casilla','2004-01-28',991980151,'Arequipa','Arequipa','Miraflores','Arequipa','bmaldonadounsa.edu.pe','12348');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
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
