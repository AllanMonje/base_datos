-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cine
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `boleto`
--

DROP TABLE IF EXISTS `boleto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boleto` (
  `idboleto` int(11) NOT NULL AUTO_INCREMENT,
  `id_cartelera` int(11) NOT NULL,
  `id_silla` int(11) NOT NULL,
  `fecha_compra` varchar(40) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`idboleto`),
  KEY `fk_id_sillas_idx` (`id_silla`),
  KEY `fk_cartel_id_idx` (`id_cartelera`),
  CONSTRAINT `fk_cartel_id` FOREIGN KEY (`id_cartelera`) REFERENCES `cartelera` (`id_cartelera`),
  CONSTRAINT `fk_id_sillas` FOREIGN KEY (`id_silla`) REFERENCES `sillas` (`id_silla`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto`
--

LOCK TABLES `boleto` WRITE;
/*!40000 ALTER TABLE `boleto` DISABLE KEYS */;
INSERT INTO `boleto` VALUES (1,1,1,'2019-03-12 11:12:30'),(2,1,4,'2019-03-12 11:16:30'),(3,3,2,'2019-03-12 11:14:30'),(4,4,7,'2019-03-12 11:34:30'),(5,4,6,'2019-03-12 12:34:30'),(6,1,6,'2019-03-12 12:34:30'),(7,1,10,'2019-03-12 10:34:30'),(8,6,10,'2019-03-12 10:34:30'),(9,6,15,'2019-03-12 10:34:30'),(10,6,40,'2019-03-12 10:34:30'),(11,2,40,'2019-03-12 10:34:30'),(12,2,22,'2019-03-12 10:34:30'),(13,1,1,'0000-00-00 00:00:00'),(14,1,3,'0000-00-00 00:00:00'),(15,1,6,'0000-00-00 00:00:00'),(16,1,4,'0000-00-00 00:00:00'),(17,4,2,'0000-00-00 00:00:00'),(18,2,4,'0000-00-00 00:00:00'),(19,1,5,'0000-00-00 00:00:00'),(20,3,3,'0000-00-00 00:00:00'),(21,3,3,'0000-00-00 00:00:00'),(22,1,4,'0000-00-00 00:00:00'),(23,1,1,'0000-00-00 00:00:00'),(24,3,3,'0000-00-00 00:00:00'),(25,1,3,'0000-00-00 00:00:00'),(26,1,6,'0000-00-00 00:00:00'),(27,1,8,'0000-00-00 00:00:00'),(28,6,4,'0000-00-00 00:00:00'),(29,3,9,'0000-00-00 00:00:00'),(30,2,3,'0000-00-00 00:00:00'),(31,3,195,'2019-07-23 10:52:33'),(32,3,195,'2019-07-23 10:52:33'),(33,1,59,'2019-07-23 10:54:52'),(34,1,199,'2019-07-23 02:37:53'),(35,1,199,'2019-07-23 02:37:53'),(36,1,199,'2019-07-23 02:37:53'),(37,1,1,'2019-07-23 02:42:18'),(38,1,200,'2019-07-23 02:44:08'),(39,1,1,'2019-07-30 12:57:40'),(40,1,1,'2019-07-30 12:57:40'),(41,3,2,'2019-08-01 03:22:27'),(42,1,1,'2019-08-02 08:24:55');
/*!40000 ALTER TABLE `boleto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartelera`
--

DROP TABLE IF EXISTS `cartelera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartelera` (
  `id_cartelera` int(11) NOT NULL AUTO_INCREMENT,
  `id_sala` int(11) NOT NULL,
  `hora_inicio` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `hora_final` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `estado` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_cartelera`),
  KEY `fk_sala_id_idx` (`id_sala`),
  CONSTRAINT `fk_sala_id` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartelera`
--

LOCK TABLES `cartelera` WRITE;
/*!40000 ALTER TABLE `cartelera` DISABLE KEYS */;
INSERT INTO `cartelera` VALUES (1,1,'10:00:00','12:00:00','activo'),(2,3,'12:00:00','14:00:00','inactivo'),(3,2,'14:00:00','16:00:00','activo'),(4,2,'16:00:00','18:00:00','inactivo'),(5,3,'18:00:00','20:00:00','inactivo'),(6,5,'20:00:00','22:00:00','activo'),(7,1,'08:00:00','10:00:00','inactivo'),(8,2,'10:00:00','12:00:00','inactivo'),(9,4,'18:00:00','20:00:00','inactivo');
/*!40000 ALTER TABLE `cartelera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formato`
--

DROP TABLE IF EXISTS `formato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formato` (
  `id_formato` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_formato` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `precio_formato` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_formato`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formato`
--

LOCK TABLES `formato` WRITE;
/*!40000 ALTER TABLE `formato` DISABLE KEYS */;
INSERT INTO `formato` VALUES (1,'IMAX',70.50),(2,'2D',120.50),(3,'3D',150.50);
/*!40000 ALTER TABLE `formato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_pagos`
--

DROP TABLE IF EXISTS `historico_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_pagos` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `id_reservacion` int(11) NOT NULL,
  `id_formato` int(11) NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `fk_idform_idx` (`id_formato`),
  KEY `nose_fk_idx` (`id_formato`),
  KEY `fk_needit_idx` (`id_formato`),
  KEY `fk_reservacioncia_idx` (`id_reservacion`),
  CONSTRAINT `fk_formatin` FOREIGN KEY (`id_formato`) REFERENCES `formato` (`id_formato`),
  CONSTRAINT `fk_reservacioncia` FOREIGN KEY (`id_reservacion`) REFERENCES `reservacion` (`id_reservacion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_pagos`
--

LOCK TABLES `historico_pagos` WRITE;
/*!40000 ALTER TABLE `historico_pagos` DISABLE KEYS */;
INSERT INTO `historico_pagos` VALUES (1,5,1),(2,6,2),(3,7,3),(4,9,1),(5,8,3),(6,29,2),(7,30,3),(8,31,2),(9,34,3),(10,35,1),(11,36,3),(12,37,2),(13,38,2),(14,39,1),(15,40,1);
/*!40000 ALTER TABLE `historico_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peliculas` (
  `id_peliculas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_pelicula` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `duracion_pelicula` int(11) NOT NULL,
  `estado` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_peliculas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'Captain Marvel','La historia cuenta cómo Carol Danvers se convierte en una de las heroínas más poderosas del universo cuando la Tierra se ve atrapada en medio de una guerra galáctica entre dos razas alienígenas.',148,'inactivo'),(2,'Captain Marvel','La historia cuenta cómo Carol Danvers se convierte en una de las heroínas más poderosas del universo cuando la Tierra se ve atrapada en medio de una guerra galáctica entre dos razas alienígenas.',150,'activo'),(3,'Childs Play','El nuevo Chucky no será un muñeco poseído por un asesino en serie, sino que será un muñeco Buddi (línea de juguetes creada por Hasbro en 1985) defectuoso cuyo código de programación ha sido pirateado para que no tenga limitaciones de aprendizaje y ta',137,'activo'),(4,'Hellboy','La Agencia para la Investigación y Defensa Paranormal (AIDP) encomienda a Hellboy la tarea de derrotar a un espíritu ancestral: Nimue, conocida como \"La Reina de la Sangre\". Nimue fue la amante del mismísimo Merlín durante el reinado del Rey Arturo, ',134,'inactivo'),(5,'Men in Black: International','Los Hombres de Negro siempre han protegido la Tierra de la escoria del universo. En esta nueva aventura, se enfrentarán a su mayor amenaza hasta la fecha: Un topo dentro de la Organización.',173,'activo'),(6,'Allan','Aallalsalsad',230,'activo'),(7,'Allaanadww','wvwwrlvttttt',120,'activo'),(8,'adskakldfkas','kdfldfuyewuihfuicvhjcxh',150,'activo'),(9,'fvhkjfhkjfshjk','jhdskjhsdkjhjskdh',150,'eiduifewyfui'),(10,'Childs Play','El nuevo Chucky no sera un....',137,'activo');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservacion`
--

DROP TABLE IF EXISTS `reservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservacion` (
  `id_reservacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelicula` int(11) NOT NULL,
  `nombre_cliente` varchar(45) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rtn_cliente` varchar(13) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_reservacion`),
  KEY `fk_idpelicula_idx` (`id_pelicula`),
  CONSTRAINT `fk_lapeli_id` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_peliculas`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservacion`
--

LOCK TABLES `reservacion` WRITE;
/*!40000 ALTER TABLE `reservacion` DISABLE KEYS */;
INSERT INTO `reservacion` VALUES (5,5,'Pedro','990'),(6,2,'Juan','234'),(7,1,'Maria','352'),(8,3,'Mario','353'),(9,4,'Juana','643'),(10,3,'Jairo','65'),(11,1,'ju','67'),(12,2,'lio','4565'),(13,1,'pro','234'),(14,2,'fe','444'),(15,3,'re','2352'),(16,1,'ed','34534'),(17,2,'er','345'),(18,3,'d','43'),(19,2,'d','45'),(20,3,'Ya Funciona','1232'),(21,3,'Juana Patricia','10234'),(22,1,'Patricia ','1121'),(23,3,'Juan Lopez','2147483647'),(24,2,'Probando','1111'),(25,2,'alca','343'),(26,2,'lnsaja','234'),(27,6,'Prueba100','32313'),(28,3,'Prueba101','358942'),(29,6,'Prueba102','23332'),(30,6,'Prueba103','1212'),(31,6,'Prueba2000','8724'),(32,1,'PRueba 23','2323'),(33,2,'allan','345'),(34,8,'enrque','2091997'),(35,7,'enrique','209199700'),(36,6,'Kike','0209199700192'),(37,2,'Cliente standar','0101'),(38,3,'Cliente standar','0101'),(39,3,'Prueba de caja negra','010101010101'),(40,2,'','');
/*!40000 ALTER TABLE `reservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservacion_boleto`
--

DROP TABLE IF EXISTS `reservacion_boleto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservacion_boleto` (
  `id_reservacion` int(11) NOT NULL,
  `id_boleto` int(11) NOT NULL,
  `reservacion_boleto` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`reservacion_boleto`),
  KEY `fk_bolecho_idx` (`id_boleto`),
  KEY `fk_resertioner_idx` (`id_reservacion`),
  CONSTRAINT `fk_bolecho` FOREIGN KEY (`id_boleto`) REFERENCES `boleto` (`idboleto`),
  CONSTRAINT `fk_resertioner` FOREIGN KEY (`id_reservacion`) REFERENCES `reservacion` (`id_reservacion`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservacion_boleto`
--

LOCK TABLES `reservacion_boleto` WRITE;
/*!40000 ALTER TABLE `reservacion_boleto` DISABLE KEYS */;
INSERT INTO `reservacion_boleto` VALUES (29,24,1),(31,28,2),(5,1,3),(6,2,4),(7,3,5),(8,4,6),(9,5,7),(10,6,8),(11,7,9),(12,8,10),(13,9,11),(14,10,12),(15,11,13),(16,12,14),(17,13,15),(18,14,16),(19,15,17),(20,16,18),(21,17,19),(22,18,20),(23,19,21),(24,20,22),(25,21,23),(26,21,24),(27,23,25),(29,25,26),(30,26,27),(32,27,28),(33,29,29),(34,33,30),(35,35,31),(36,38,32),(37,39,33),(38,40,34),(39,41,35),(40,42,36);
/*!40000 ALTER TABLE `reservacion_boleto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sala` (
  `id_sala` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad` int(3) NOT NULL,
  PRIMARY KEY (`id_sala`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,40),(2,40),(3,40),(4,40),(5,40);
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sillas`
--

DROP TABLE IF EXISTS `sillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sillas` (
  `id_silla` int(11) NOT NULL AUTO_INCREMENT,
  `id_sala` int(11) NOT NULL,
  `nombre_silla` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_silla`),
  KEY `fk_salita_id_idx` (`id_sala`),
  CONSTRAINT `fk_salita_id` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sillas`
--

LOCK TABLES `sillas` WRITE;
/*!40000 ALTER TABLE `sillas` DISABLE KEYS */;
INSERT INTO `sillas` VALUES (1,1,'A1'),(2,1,'A2'),(3,1,'A3'),(4,1,'A4'),(5,1,'A5'),(6,1,'A6'),(7,1,'A7'),(8,1,'A8'),(9,1,'A9'),(10,1,'A10'),(11,1,'A11'),(12,1,'A12'),(13,1,'A13'),(14,1,'A14'),(15,1,'A15'),(16,1,'A16'),(17,1,'A17'),(18,1,'A18'),(19,1,'A19'),(20,1,'A20'),(21,1,'A21'),(22,1,'A22'),(23,1,'A23'),(24,1,'A24'),(25,1,'A25'),(26,1,'A26'),(27,1,'A27'),(28,1,'A228'),(29,1,'A29'),(30,1,'A30'),(31,1,'A31'),(32,1,'A32'),(33,1,'A33'),(34,1,'A34'),(35,1,'A35'),(36,1,'A36'),(37,1,'A37'),(38,1,'A38'),(39,1,'A39'),(40,1,'A40'),(41,2,'B1'),(42,2,'B2'),(43,2,'B3'),(44,2,'B4'),(45,2,'B5'),(46,2,'B6'),(47,2,'B7'),(48,2,'B8'),(49,2,'B9'),(50,2,'B10'),(51,2,'B11'),(52,2,'B12'),(53,2,'B13'),(54,2,'B14'),(55,2,'B15'),(56,2,'B16'),(57,2,'B17'),(58,2,'B18'),(59,2,'B19'),(60,2,'B20'),(61,2,'B21'),(62,2,'B22'),(63,2,'B23'),(64,2,'B24'),(65,2,'B25'),(66,2,'B26'),(67,2,'B27'),(68,2,'B28'),(69,2,'B29'),(70,2,'B30'),(71,2,'B31'),(72,2,'B32'),(73,2,'B33'),(74,2,'B34'),(75,2,'B35'),(76,2,'B36'),(77,2,'B37'),(78,2,'B38'),(79,2,'B39'),(80,2,'B40'),(81,3,'C1'),(82,3,'C2'),(83,3,'C3'),(84,3,'C4'),(85,3,'C5'),(86,3,'C6'),(87,3,'C7'),(88,3,'C8'),(89,3,'C9'),(90,3,'C10'),(91,3,'C11'),(92,3,'C12'),(93,3,'C13'),(94,3,'C14'),(95,3,'C15'),(96,3,'C16'),(97,3,'C17'),(98,3,'C18'),(99,3,'C19'),(100,3,'C20'),(101,3,'C21'),(102,3,'C22'),(103,3,'C23'),(104,3,'C24'),(105,3,'C25'),(106,3,'C26'),(107,3,'C27'),(108,3,'C28'),(109,3,'C29'),(110,3,'C30'),(111,3,'C31'),(112,3,'C32'),(113,3,'C33'),(114,3,'C34'),(115,3,'C35'),(116,3,'C36'),(117,3,'C37'),(118,3,'C38'),(119,3,'C39'),(120,3,'C40'),(121,4,'D1'),(122,4,'D2'),(123,4,'D3'),(124,4,'D4'),(125,4,'D5'),(126,4,'D6'),(127,4,'D7'),(128,4,'D8'),(129,4,'D9'),(130,4,'D10'),(131,4,'D11'),(132,4,'D12'),(133,4,'D13'),(134,4,'D14'),(135,4,'D15'),(136,4,'D16'),(137,4,'D17'),(138,4,'D18'),(139,4,'D19'),(140,4,'D20'),(141,4,'D21'),(142,4,'D22'),(143,4,'D23'),(144,4,'D24'),(145,4,'D25'),(146,4,'D26'),(147,4,'D27'),(148,4,'D28'),(149,4,'D29'),(150,4,'D30'),(151,4,'D31'),(152,4,'D32'),(153,4,'D33'),(154,4,'D34'),(155,4,'D35'),(156,4,'D36'),(157,4,'D37'),(158,4,'D38'),(159,4,'D39'),(160,4,'D40'),(161,5,'E1'),(162,5,'E2'),(163,5,'E3'),(164,5,'E4'),(165,5,'E5'),(166,5,'E6'),(167,5,'E7'),(168,5,'E8'),(169,5,'E9'),(170,5,'E10'),(171,5,'E11'),(172,5,'E12'),(173,5,'E13'),(174,5,'E14'),(175,5,'E15'),(176,5,'E16'),(177,5,'E17'),(178,5,'E18'),(179,5,'E19'),(180,5,'E20'),(181,5,'E21'),(182,5,'E22'),(183,5,'E23'),(184,5,'E24'),(185,5,'E25'),(186,5,'E26'),(187,5,'E27'),(188,5,'E28'),(189,5,'E29'),(190,5,'E30'),(191,5,'E31'),(192,5,'E32'),(193,5,'E33'),(194,5,'E34'),(195,5,'E35'),(196,5,'E36'),(197,5,'E37'),(198,5,'E38'),(199,5,'E39'),(200,5,'E40'),(201,1,'A41');
/*!40000 ALTER TABLE `sillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','admin@gmail.com','1234'),(2,'kike','enrique.garcia@unah.hn','4321'),(3,'hola','hola1997@gmail.com','1234'),(4,'belkin garcia','belkingarcia@yahoo.es','1234belkin'),(5,'kike','enrique.jjjjjjj@gamail.com','12345'),(6,'NOMBRE','E-MAIL','PASSWORD'),(7,'NOMBRE','E-MAIL','PASSWORD'),(8,'NOMBRE','E-MAIL','PASSWORD'),(9,'gdfg','E-MAIL','PASSWORD'),(10,'NOMBRE','E-MAIL','PASSWORD'),(11,'NOMBRE','E-MAIL','PASSWORD'),(12,'NOMBRE','njewnfkjrnf@jhfjdshkjfd.hn','1234'),(13,'NOMBRE','E-MAIL','PASSWORD'),(14,'NOMBRE','E-MAIL','PASSWORD'),(15,'NOMBRE','E-MAIL','PASSWORD'),(16,'NOMBRE','E-MAIL','PASSWORD'),(17,'Brian','bfabricioc95@gmail.com','nemure88'),(18,'Norman iza','izaguirremorales@gmail.com','verengena98'),(19,'josuelopez','jkgkhgkhjh','realmadrid'),(20,'david','david@gmail.com','111'),(21,'allan','allan@gmail.com','1234'),(22,'prueba','.com','12121212'),(23,'prueba','.com','12345678');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cine'
--

--
-- Dumping routines for database 'cine'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-05 21:42:45
