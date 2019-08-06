-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteca
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.33-MariaDB

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
-- Temporary view structure for view `addresses_view`
--

DROP TABLE IF EXISTS `addresses_view`;
/*!50001 DROP VIEW IF EXISTS `addresses_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `addresses_view` AS SELECT 
 1 AS `address_id`,
 1 AS `address`,
 1 AS `address2`,
 1 AS `district`,
 1 AS `city`,
 1 AS `country`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `identidad` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `id_campus` int(11) NOT NULL,
  `Nombre` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Apellido` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Fecha_de_Nacimiento` date NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`identidad`),
  KEY `fk_id_carrera_idx` (`id_carrera`),
  KEY `fk_id_campus_idx` (`id_campus`),
  CONSTRAINT `fk_id_campus` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id_campus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_id_carrera` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES ('0101199600345',8,3,'Nuvia','Soto','1536-03-10',94554578,'El Toronjal'),('0101200040030',8,2,'Jacki','Sieras','2019-07-11',99344456,'Ciudad de Santa Monica'),('0101256482828',5,2,'Hugo','Sana','1111-11-11',0,'121323'),('0102199700012',7,8,'Carolina','Martin','1997-09-28',98850091,'Buenos Aires'),('0103199400234',4,4,'Karla','Funez','1994-04-20',98976567,'La Suyapa'),('0103199900325',6,6,'Alberto','Santos','1999-07-09',32561346,'Las Colinas'),('0103200000467',2,10,'Mario','Lagos','2000-08-13',98568032,'La Rivera'),('0104199300234',4,1,'Pedro','Flores','1993-11-20',98765467,'Barrio Mejia, La Ceiba'),('0105199900333',5,4,'Carlos','Castro','1999-05-11',89783489,'Las lomas'),('0106199500124',3,5,'Roberto','Portillo','1995-11-21',33077890,'4 de octubre'),('0107200000234',1,7,'Maria','Duran','2000-12-12',94980978,'La Peña'),('0120555051515',5,1,'Dan','san','1111-11-11',51516516,'Las mercedezz'),('0203233222322',13,4,'sdhfgmsdhfv','mdfbgjhsfghjfbg','1983-04-05',747567,'sbfhfbhjb'),('3131321312',5,8,'asd','asd','2018-11-29',213131321,'khkjkjhjkh'),('4564050505050',5,1,'Kevin','Carvajal','2019-04-16',959532691,'Las vegas');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `Nacionalidad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_autor`),
  UNIQUE KEY `id_autor_UNIQUE` (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (501,'Ana Frank','Aleman'),(502,'E.L. James','Britanico'),(503,'Jenny Galdamez','Hondureña'),(504,'Francisco L. Vargas','Hondureño'),(505,'Ralph A. Burns','Mexicano'),(506,'Shirley Andino Moya','Mexicano'),(507,'Ángel A. Cortez','Hondureño'),(508,'Vinorah Julissa Dubón Méndez','Mexicano'),(509,'Joan Saslow','Americano'),(510,'Papa Francisco','Argentino'),(511,'Hugo Daniel Sanabria Guifarro','Vietnamita'),(512,'Harold Robbins','Norteamericano'),(513,'Kevin ','xjvnkj'),(514,'fvkjxnj','mbmnb'),(515,'el nuevo','Brianxcmnv ');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliotecario`
--

DROP TABLE IF EXISTS `bibliotecario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bibliotecario` (
  `nombre_de_usuario` varchar(40) COLLATE latin1_spanish_ci NOT NULL,
  `id_campus` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `contrasena` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `Fecha_de_Nacimiento` date NOT NULL,
  `identidad` varchar(25) COLLATE latin1_spanish_ci NOT NULL,
  `direccion` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`nombre_de_usuario`,`identidad`),
  UNIQUE KEY `nombre_de_usuario_UNIQUE` (`nombre_de_usuario`),
  UNIQUE KEY `identidad_UNIQUE` (`identidad`),
  KEY `id_campus_idx` (`id_campus`),
  CONSTRAINT `id_campus` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id_campus`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliotecario`
--

LOCK TABLES `bibliotecario` WRITE;
/*!40000 ALTER TABLE `bibliotecario` DISABLE KEYS */;
INSERT INTO `bibliotecario` VALUES ('Belkis',4,'Belkis','Iraheta','2222','1993-10-05','0105199300234','Danli. El Paraiso'),('hdaniel',8,'Daniel','Guifarro','7412','1998-12-31','0101200000147','El pino, Cooperativa'),('hsanabriass',3,'Hugo','Sanabriad','0000','1111-11-11','0101199205238','San Pedro Sula, Atlantida'),('KJCarvajal',2,'Kevin','Carvajal','1111','1536-11-11','0101199400433','Tegucigalpa, Valle de Angeles'),('mflores',1,'Moises ','Flores','1234','1993-11-02','0101199323412','La Ceiba, Atlantida'),('Michelle05',2,'Michelle ','Hernandez','111222','2012-08-24','202232300343','Barrio Agua ardiente, contiguo a mall megaPlaza'),('root',1,'Erika','Flores','12345','1999-10-10','0101200000142','La ceiba, Atlantida'),('salazar',5,'Jose','Salazar','3333','1994-01-10','0101200000321','Santa Rosa de Copan, Copan');
/*!40000 ALTER TABLE `bibliotecario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campus`
--

DROP TABLE IF EXISTS `campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campus` (
  `id_campus` int(11) NOT NULL,
  `id_ciudad` int(11) NOT NULL,
  `nombre_campus` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_campus`),
  UNIQUE KEY `nombre_campus_UNIQUE` (`nombre_campus`),
  KEY `id_ciudad_idx` (`id_ciudad`),
  CONSTRAINT `id_ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` VALUES (1,1,'SAN ISIDRO'),(2,2,'Sagrado Corazon de Jesus'),(3,3,'San Pedro y San Pablo'),(4,4,'Santiago Apostol'),(5,5,'Santa Rosa de Lima '),(6,6,'Dios Espiritu Santo'),(7,7,'San Jorge'),(8,8,'Jesus Sacramentado'),(9,9,'Santa Clara'),(10,6,'Espiritu El tabor');
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera` (
  `id_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_carrera` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_carrera`),
  UNIQUE KEY `nombre_carrera_UNIQUE` (`nombre_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (5,'Arquitectura'),(6,'Derecho'),(9,'Gestion de Empresas'),(1,'ICC'),(12,'Ingenieria Aeronautica'),(2,'Ingenieria Civil'),(11,'Ingenieria en Epirotecnia'),(3,'Ingenieria Industrial'),(7,'Medicina'),(8,'Mercadotecnia'),(10,'Odontologia'),(13,'OOOOOsi'),(4,'Psicologia');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras_por_campus`
--

DROP TABLE IF EXISTS `carreras_por_campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras_por_campus` (
  `id_campus` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  PRIMARY KEY (`id_campus`,`id_carrera`),
  KEY `fk_campus_por_carrera_carrera_idx` (`id_carrera`),
  CONSTRAINT `fk_campus_por_carrera_campus` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id_campus`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_campus_por_carrera_carrera` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras_por_campus`
--

LOCK TABLES `carreras_por_campus` WRITE;
/*!40000 ALTER TABLE `carreras_por_campus` DISABLE KEYS */;
INSERT INTO `carreras_por_campus` VALUES (1,1),(1,3),(1,4),(1,5),(1,7),(1,8),(1,10),(2,1),(2,3),(2,5),(2,6),(2,7),(2,8),(2,11),(3,1),(3,3),(4,2),(4,7),(4,13),(5,5),(6,6),(6,10),(7,5),(8,8),(9,7),(10,10);
/*!40000 ALTER TABLE `carreras_por_campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_ciudad` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'La Ceiba '),(2,'Tegucigalpa'),(3,'San Pedro Sula'),(4,'Danli'),(5,'Santa Rosa de Copan'),(6,'Choluteca'),(7,'Olanchito'),(8,'Siguatepeque'),(9,'Juticalpa');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editorial` (
  `id_editorial` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_editorial` varchar(100) NOT NULL,
  `Procedencia_de_Origen` varchar(150) NOT NULL,
  PRIMARY KEY (`id_editorial`),
  UNIQUE KEY `id_editorial_UNIQUE` (`id_editorial`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (201,'Contact','Ámsterdam, Paises Bajos'),(202,'Vintange Books','Reino Unido'),(203,'Mc Graw Hill','Mexico'),(204,'Sumit','EE.UU'),(205,'Palabra','El Vaticano'),(206,'Ediciones Guardabarranco, 2007','EE.UU'),(207,'Impresa Propia','Honduras'),(208,'DEBOLSILLOO','Costa Rica'),(209,'Fuego Nuevo','El Salvador'),(211,'Plaza Y Janes S.A','Virgen de Guadalupe, 21-33.  Esplugues de  Llobregat (Barcelona)'),(212,'kdcxcc','mnfbvcbvnm'),(213,'Juguito','El Pino');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejemplar`
--

DROP TABLE IF EXISTS `ejemplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejemplar` (
  `id_ejemplar` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoISBN` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `estado` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  `Disponibilidad` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_libro` int(11) NOT NULL,
  `id_campus` int(11) NOT NULL,
  PRIMARY KEY (`id_ejemplar`),
  KEY `id_libro_idx` (`id_libro`),
  KEY `fk_id_campus_idx` (`id_campus`),
  KEY `id_campus_idx` (`id_campus`),
  KEY `id_campusfk_idx` (`id_campus`),
  CONSTRAINT `id_campusfk` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id_campus`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_librofk` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplar`
--

LOCK TABLES `ejemplar` WRITE;
/*!40000 ALTER TABLE `ejemplar` DISABLE KEYS */;
INSERT INTO `ejemplar` VALUES (1,'978-0-1344-9893-6','Usado','Prestado',1,8),(2,'978-1-2345-6789-7','Nuevo','Prestado',2,2),(3,'978-1-4562-4993-9','Nuevo','Prestado',3,4),(4,'978-1-4562-6071-2','Usado','Disponible',4,6),(5,'978-6-0732-0683-9','Usado','Prestado',5,2),(6,'978-1-4562-6078-1','Usado','Disponible',6,1),(7,'978-6-0715-1255-0','Nuevo','Disponible',7,2),(8,'978-1-4562-6751-3','Usado','Prestado',8,5),(9,'111-1-1111-1123-2','Nuevo','Disponible',9,7),(10,'211-1-1111-1111-1','Nuevo','De baja',10,5),(11,'111-1-1111-1111-1','Nuevo','De baja',1,1),(12,'840-1-3216-4600-0','Usado','Disponible',11,1),(13,'840-1-3216-4600-1','Nuevo','Prestado',11,2),(14,'123-1-2312-3123-1','Usado','De baja',1,1),(15,'988-8-8888-8888-8','Usado','Disponible',1,1),(16,'111-1-1111-1112-2','Usado','Prestado',1,1),(17,'111-1-1111-3223-1','Usado','Prestado',12,1),(18,'123-3-2123-1323-1','Nuevo','De baja',3,1),(19,'123-1-2321-3211-3','Usado','De baja',11,1),(20,'111-3-2312-3312-1','Usado','Disponible',1,3),(21,'213-1-2321-3213-3','Usado','Disponible',12,3),(22,'213-1-2332-2311-2','Usado','Prestado',5,8),(23,'195-1-5151-5151-5','Usado','Disponible',1,8),(24,'121-3-2232-3113-2','Usado','Disponible',13,8),(25,'456-4-5641-2543-5','Usado','Prestado',14,2),(26,'334-4-2422-4424-2','Nuevo','Disponible',15,4),(27,'544-2-2224-2442-4','Nuevo','Disponible',16,4),(28,'122-1-2121-2121-5','Nuevo','Disponible',17,4),(29,'556-5-3531-2515-4','Usado','Disponible',2,4),(30,'556-5-3531-2515-4','Usado','Disponible',2,4),(31,'556-5-3531-2515-4','Usado','Disponible',2,4),(32,'556-5-3531-2515-4','Usado','Disponible',2,4),(33,'165-4-6515-1653-2','Usado','Disponible',3,4),(34,'165-4-6515-1653-2','Usado','Disponible',3,4),(35,'165-4-6515-1653-2','Usado','Disponible',3,4),(36,'165-4-6515-1653-2','Usado','Disponible',3,4),(37,'165-4-6515-1653-2','Usado','Disponible',3,4),(38,'321-6-5321-2231-2','Usado','Disponible',3,4),(39,'321-6-5321-2231-2','Usado','Disponible',3,4),(40,'321-6-5321-2231-2','Usado','Disponible',3,4);
/*!40000 ALTER TABLE `ejemplar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `gestion alumnos`
--

DROP TABLE IF EXISTS `gestion alumnos`;
/*!50001 DROP VIEW IF EXISTS `gestion alumnos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gestion alumnos` AS SELECT 
 1 AS `identidad`,
 1 AS `id_carrera`,
 1 AS `nombre_campus`,
 1 AS `id_campus`,
 1 AS `nombre_carrera`,
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Telefono`,
 1 AS `Fecha_de_Nacimiento`,
 1 AS `Direccion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gestion autor`
--

DROP TABLE IF EXISTS `gestion autor`;
/*!50001 DROP VIEW IF EXISTS `gestion autor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gestion autor` AS SELECT 
 1 AS `id_autor`,
 1 AS `nombre`,
 1 AS `Nacionalidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gestion carrera`
--

DROP TABLE IF EXISTS `gestion carrera`;
/*!50001 DROP VIEW IF EXISTS `gestion carrera`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gestion carrera` AS SELECT 
 1 AS `id_carrera`,
 1 AS `nombre_carrera`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gestion ciudades`
--

DROP TABLE IF EXISTS `gestion ciudades`;
/*!50001 DROP VIEW IF EXISTS `gestion ciudades`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gestion ciudades` AS SELECT 
 1 AS `id_ciudad`,
 1 AS `nombre_ciudad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gestion editorial`
--

DROP TABLE IF EXISTS `gestion editorial`;
/*!50001 DROP VIEW IF EXISTS `gestion editorial`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gestion editorial` AS SELECT 
 1 AS `id_editorial`,
 1 AS `nombre_editorial`,
 1 AS `Procedencia_de_Origen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gestion ejemplares`
--

DROP TABLE IF EXISTS `gestion ejemplares`;
/*!50001 DROP VIEW IF EXISTS `gestion ejemplares`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gestion ejemplares` AS SELECT 
 1 AS `id_ejemplar`,
 1 AS `id_campus`,
 1 AS `nombre_campus`,
 1 AS `id_libro`,
 1 AS `Titulo`,
 1 AS `estado`,
 1 AS `Disponibilidad`,
 1 AS `CodigoISBN`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gestion prestamos`
--

DROP TABLE IF EXISTS `gestion prestamos`;
/*!50001 DROP VIEW IF EXISTS `gestion prestamos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `gestion prestamos` AS SELECT 
 1 AS `campus`,
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Titulo`,
 1 AS `libro1`,
 1 AS `identidad1`,
 1 AS `fecha_prestamo`,
 1 AS `fecha_entrega`,
 1 AS `fecha_devolucion`,
 1 AS `recibido1`,
 1 AS `retraso`,
 1 AS `id_prestamo_libro`,
 1 AS `id_ejemplar`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Edicion` int(2) NOT NULL,
  `Area` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `Descripcion` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `id_editorial` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  PRIMARY KEY (`id_libro`,`Edicion`),
  KEY `fk_libro_editorial_idx` (`id_editorial`),
  KEY `fk_libro_autor_idx` (`id_autor`),
  CONSTRAINT `fk_libro_autor` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_libro_editorial` FOREIGN KEY (`id_editorial`) REFERENCES `editorial` (`id_editorial`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'El Diario de Ana Frank',2,'Pasillo 1','La convierten en jabón',201,501),(2,'Cincuenta Sombras de Grey',1,'Pasillo 1','Hacen cosas sucias.',202,502),(3,'Cálculo 1',2,'Pasillo 2','Explican cosas de calculo',203,503),(4,'Manual de laboratorio de Física 1',1,'Pasillo 3','Es un manual para laboratorio',203,504),(5,'Fundamentos de Química',5,'Pasillo 3','Con esto se aprende química',203,509),(6,'Manual de prácticas de laboratorio de Química 1',4,'Pasillo 3','Esto es para las practicas de quimica',203,506),(7,'Expresión Oral y Escrita',2,'Pasillo 4','Pater Noster',203,507),(8,'Manual de laboratorio de Física 2',2,'Pasillo 3','Manual para practicas gg',203,508),(9,'Summit 1',3,'Pasillo 5','Es para aprender inglés',209,509),(10,'Hola soy german',2,'Pasillo 4','De hola soy german',202,504),(11,'El precio del placer',1,'Pasillo 2','Un rico playboy, amante de los coches de carreras, debe cometer tres asesinatos para la mafia, pero acaba atrapado entre dos fuegos: la Policia y  la propia Mafia',211,512),(12,'El Diario de Ana Frank',2,'Pasillo 3','dsa',201,501),(13,'Cosmos',5,'Pasillo 2','234',201,501),(14,'Hola mundo',4,'Pasillo 5','ds',201,501),(15,'El arte de convertiste hombre o mujer empoderado mediante la programacion',1,'Pasillo 4','The best',213,511),(16,'machupichu',2,'Pasillo 23','de hugo',213,504),(17,'Los Insacibles',8,'Pasillo ','Personas que siempre buscan la satifaccion del  dinero',203,512),(18,'El ultimo libro',0,'Pasillo 2','Es un excelente libro',206,502);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo_libro`
--

DROP TABLE IF EXISTS `prestamo_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamo_libro` (
  `id_prestamo_libro` int(11) NOT NULL AUTO_INCREMENT,
  `id_ejemplar` int(11) NOT NULL,
  `identidad` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fecha_prestamo` datetime NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `fecha_devolucion` datetime DEFAULT NULL,
  `recibido` varchar(2) COLLATE latin1_spanish_ci NOT NULL,
  `retraso` varchar(45) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_prestamo_libro`),
  KEY `id_ejemplarfk_idx` (`id_ejemplar`),
  KEY `fk_identidad_idx` (`identidad`),
  CONSTRAINT `id_ejemplarfk` FOREIGN KEY (`id_ejemplar`) REFERENCES `ejemplar` (`id_ejemplar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `identidad` FOREIGN KEY (`identidad`) REFERENCES `alumnos` (`identidad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo_libro`
--

LOCK TABLES `prestamo_libro` WRITE;
/*!40000 ALTER TABLE `prestamo_libro` DISABLE KEYS */;
INSERT INTO `prestamo_libro` VALUES (1,1,'0101199600345','2018-11-15 05:11:00','2018-11-19 05:11:00','2018-11-19 17:50:00','NO','NO'),(2,3,'0102199700012','2018-11-16 13:45:00','2018-11-20 15:24:00','2018-11-20 10:45:00','SÍ','SÍ'),(5,7,'0103200000467','2018-12-07 13:25:00','2018-12-09 18:03:00','2018-12-09 12:25:00','SÍ','NO'),(6,9,'0104199300234','2018-12-20 14:56:00','2018-12-23 09:39:00','2018-12-23 08:56:00','SÍ','SÍ'),(8,4,'0104199300234','2019-01-28 16:00:00','2019-01-31 15:00:00','2019-01-29 15:00:00','SÍ','NO'),(9,2,'0103199900325','2019-02-05 17:08:00','2019-02-08 20:00:00','2019-02-08 16:08:00','SÍ','SÍ'),(10,16,'0101199600345','2019-04-21 09:24:49','2019-04-24 09:24:51',NULL,'NO','NO'),(12,15,'0107200000234','2019-04-22 10:39:06','2019-04-24 10:39:08','2019-04-24 10:38:31','SÍ','SÍ'),(13,1,'0107200000234','2019-04-22 11:45:16','2019-04-22 11:45:47','2019-05-03 11:45:41','SÍ','SÍ'),(14,15,'0107200000234','2019-04-23 12:14:14','2019-04-26 12:14:20',NULL,'SÍ','NO'),(17,16,'0120555051515','2019-04-22 01:04:43','2019-04-24 01:04:47','2019-04-27 02:09:01','SÍ','SÍ'),(20,22,'0102199700012','2019-04-22 03:35:36','2019-04-26 03:35:40',NULL,'NO','NO'),(21,3,'0105199900333','2019-04-23 05:04:28','2019-04-24 05:04:33','2019-04-25 05:47:31','SÍ','SÍ'),(22,3,'0105199900333','2019-04-04 05:59:39','2019-04-11 05:59:41',NULL,'NO','NO'),(23,16,'0120555051515','2019-04-10 06:45:23','2019-04-24 06:45:24',NULL,'NO','NO'),(24,27,'0103199400234','2019-04-24 07:14:45','2019-04-30 07:14:51','2019-05-01 07:14:59','SÍ','SÍ'),(25,2,'0101200040030','2019-07-05 01:11:51','2019-07-18 01:11:53',NULL,'NO','NO'),(26,25,'0101200040030','2019-07-04 01:14:28','2019-07-20 01:14:32',NULL,'NO','NO');
/*!40000 ALTER TABLE `prestamo_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'biblioteca'
--
/*!50003 DROP PROCEDURE IF EXISTS `gestion bibliotecario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gestion bibliotecario`()
BEGIN

SELECT * FROM bibliotecario INNER JOIN campus ON campus.id_campus=bibliotecario.id_campus;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gestion campus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gestion campus`()
BEGIN

SELECT * FROM campus INNER JOIN ciudad ON campus.id_ciudad=ciudad.id_ciudad;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gestion carrera_por_campus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gestion carrera_por_campus`()
BEGIN

SELECT * FROM carreras_por_campus 
INNER JOIN campus ON campus.id_campus=carreras_por_campus.id_campus 
INNER JOIN carrera ON carrera.id_carrera=carreras_por_campus.id_carrera;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gestion libros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gestion libros`()
BEGIN

SELECT *,(SELECT count(id_libro) FROM biblioteca.ejemplar 
WHERE libro.id_libro=ejemplar.id_libro) AS hola FROM libro 
INNER JOIN autor ON autor.id_autor=libro.id_autor 
INNER JOIN editorial ON editorial.id_editorial=libro.id_editorial
ORDER BY Titulo ASC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `addresses_view`
--

/*!50001 DROP VIEW IF EXISTS `addresses_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `addresses_view` AS select `a`.`address_id` AS `address_id`,`a`.`address` AS `address`,`a`.`address2` AS `address2`,`a`.`district` AS `district`,`c`.`city` AS `city`,`co`.`country` AS `country` from ((`sakila`.`address` `a` join `sakila`.`city` `c` on((`a`.`city_id` = `c`.`city_id`))) join `sakila`.`country` `co` on((`co`.`country_id` = `c`.`country_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gestion alumnos`
--

/*!50001 DROP VIEW IF EXISTS `gestion alumnos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gestion alumnos` AS select `alumnos`.`identidad` AS `identidad`,`alumnos`.`id_carrera` AS `id_carrera`,`campus`.`nombre_campus` AS `nombre_campus`,`alumnos`.`id_campus` AS `id_campus`,`carrera`.`nombre_carrera` AS `nombre_carrera`,`alumnos`.`Nombre` AS `Nombre`,`alumnos`.`Apellido` AS `Apellido`,`alumnos`.`Telefono` AS `Telefono`,`alumnos`.`Fecha_de_Nacimiento` AS `Fecha_de_Nacimiento`,`alumnos`.`Direccion` AS `Direccion` from ((`alumnos` join `campus` on((`campus`.`id_campus` = `alumnos`.`id_campus`))) join `carrera` on((`carrera`.`id_carrera` = `alumnos`.`id_carrera`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gestion autor`
--

/*!50001 DROP VIEW IF EXISTS `gestion autor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gestion autor` AS select `autor`.`id_autor` AS `id_autor`,`autor`.`nombre` AS `nombre`,`autor`.`Nacionalidad` AS `Nacionalidad` from `autor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gestion carrera`
--

/*!50001 DROP VIEW IF EXISTS `gestion carrera`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gestion carrera` AS select `carrera`.`id_carrera` AS `id_carrera`,`carrera`.`nombre_carrera` AS `nombre_carrera` from `carrera` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gestion ciudades`
--

/*!50001 DROP VIEW IF EXISTS `gestion ciudades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gestion ciudades` AS select `ciudad`.`id_ciudad` AS `id_ciudad`,`ciudad`.`nombre_ciudad` AS `nombre_ciudad` from `ciudad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gestion editorial`
--

/*!50001 DROP VIEW IF EXISTS `gestion editorial`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gestion editorial` AS select `editorial`.`id_editorial` AS `id_editorial`,`editorial`.`nombre_editorial` AS `nombre_editorial`,`editorial`.`Procedencia_de_Origen` AS `Procedencia_de_Origen` from `editorial` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gestion ejemplares`
--

/*!50001 DROP VIEW IF EXISTS `gestion ejemplares`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gestion ejemplares` AS select `ejemplar`.`id_ejemplar` AS `id_ejemplar`,`ejemplar`.`id_campus` AS `id_campus`,`campus`.`nombre_campus` AS `nombre_campus`,`ejemplar`.`id_libro` AS `id_libro`,`libro`.`Titulo` AS `Titulo`,`ejemplar`.`estado` AS `estado`,`ejemplar`.`Disponibilidad` AS `Disponibilidad`,`ejemplar`.`CodigoISBN` AS `CodigoISBN` from ((`ejemplar` join `campus` on((`campus`.`id_campus` = `ejemplar`.`id_campus`))) join `libro` on((`libro`.`id_libro` = `ejemplar`.`id_libro`))) order by `libro`.`Titulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gestion prestamos`
--

/*!50001 DROP VIEW IF EXISTS `gestion prestamos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gestion prestamos` AS select `alumnos`.`id_campus` AS `campus`,`alumnos`.`Nombre` AS `Nombre`,`alumnos`.`Apellido` AS `Apellido`,`libro`.`Titulo` AS `Titulo`,`libro`.`id_libro` AS `libro1`,`alumnos`.`identidad` AS `identidad1`,`prestamo_libro`.`fecha_prestamo` AS `fecha_prestamo`,`prestamo_libro`.`fecha_entrega` AS `fecha_entrega`,`prestamo_libro`.`fecha_devolucion` AS `fecha_devolucion`,`prestamo_libro`.`recibido` AS `recibido1`,`prestamo_libro`.`retraso` AS `retraso`,`prestamo_libro`.`id_prestamo_libro` AS `id_prestamo_libro`,`prestamo_libro`.`id_ejemplar` AS `id_ejemplar` from (((`prestamo_libro` join `alumnos` on((`alumnos`.`identidad` = `prestamo_libro`.`identidad`))) join `ejemplar` on((`ejemplar`.`id_ejemplar` = `prestamo_libro`.`id_ejemplar`))) join `libro` on((`libro`.`id_libro` = `ejemplar`.`id_libro`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-29  2:08:10
