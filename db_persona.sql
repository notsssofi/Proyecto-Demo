-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: db_persona
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(255) DEFAULT NULL,
  `biografia` varchar(1500) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Bodoc','Lilisns Bodoc nacio en Santa Fe, Argentina, en 1958. Desde los cinco años vivio en Mendoza, posteriormente en El Trapiche, pequeña localidad serrana a 40 km de la Ciudad de San Luis. Estudio Licenciatura en Letras en la Universidad de Cuyo y ejercio la docencia en colegios de la misma universidad.','Liliana'),(2,'Rodriguez','Maria Rodirguez nacio en Jujuy, Argentina, en 1958.','Maria');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor_aud`
--

DROP TABLE IF EXISTS `autor_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `biografia` varchar(1500) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKr81sephxfyvqkjffreeeunf0s` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor_aud`
--

LOCK TABLES `autor_aud` WRITE;
/*!40000 ALTER TABLE `autor_aud` DISABLE KEYS */;
INSERT INTO `autor_aud` VALUES (1,4,0,'Bodoc','Lilisns Bodoc nacio en Santa Fe, Argentina, en 1958. Desde los cinco años vivio en Mendoza, posteriormente en El Trapiche, pequeña localidad serrana a 40 km de la Ciudad de San Luis. Estudio Licenciatura en Letras en la Universidad de Cuyo y ejercio la docencia en colegios de la misma universidad.','Liliana'),(1,5,1,'Bodoc','Lilisns Bodoc nacio en Santa Fe, Argentina, en 1958. Desde los cinco años vivio en Mendoza, posteriormente en El Trapiche, pequeña localidad serrana a 40 km de la Ciudad de San Luis. Estudio Licenciatura en Letras en la Universidad de Cuyo y ejercio la docencia en colegios de la misma universidad.','Milagros'),(2,54,0,'Rodriguez','Maria Rodirguez nacio en Jujuy, Argentina, en 1958.','Maria'),(1,55,1,'Bodoc','Lilisns Bodoc nacio en Santa Fe, Argentina, en 1958. Desde los cinco años vivio en Mendoza, posteriormente en El Trapiche, pequeña localidad serrana a 40 km de la Ciudad de San Luis. Estudio Licenciatura en Letras en la Universidad de Cuyo y ejercio la docencia en colegios de la misma universidad.','Liliana');
/*!40000 ALTER TABLE `autor_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilio`
--

DROP TABLE IF EXISTS `domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domicilio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `calle` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `fk_localidad` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsq48s35e5o185ajo3mloiqxjk` (`fk_localidad`),
  CONSTRAINT `FKsq48s35e5o185ajo3mloiqxjk` FOREIGN KEY (`fk_localidad`) REFERENCES `localidad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio`
--

LOCK TABLES `domicilio` WRITE;
/*!40000 ALTER TABLE `domicilio` DISABLE KEYS */;
INSERT INTO `domicilio` VALUES (1,'Catamarca',123,1),(2,'Mitre',456,1);
/*!40000 ALTER TABLE `domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domicilio_aud`
--

DROP TABLE IF EXISTS `domicilio_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domicilio_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `fk_localidad` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKr2va00h51h6v43r7txxpov81` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio_aud`
--

LOCK TABLES `domicilio_aud` WRITE;
/*!40000 ALTER TABLE `domicilio_aud` DISABLE KEYS */;
INSERT INTO `domicilio_aud` VALUES (1,6,0,'Catamarca',123,1),(2,56,0,'Mitre',456,1);
/*!40000 ALTER TABLE `domicilio_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` int(11) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `paginas` int(11) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,2012,'Fantastico',329,'Los dias del venado'),(2,2015,'Drama',506,'El buscador de finales');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro_aud`
--

DROP TABLE IF EXISTS `libro_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `fecha` int(11) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `paginas` int(11) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FK4w9s9iy7nnmjlyvmdh4f2dw7c` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro_aud`
--

LOCK TABLES `libro_aud` WRITE;
/*!40000 ALTER TABLE `libro_aud` DISABLE KEYS */;
INSERT INTO `libro_aud` VALUES (1,6,0,2012,'Fantastico',329,'Los dias del venado'),(2,56,0,2015,'Drama',506,'El buscador de finales');
/*!40000 ALTER TABLE `libro_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro_autores`
--

DROP TABLE IF EXISTS `libro_autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro_autores` (
  `libro_id` bigint(20) NOT NULL,
  `autores_id` bigint(20) NOT NULL,
  KEY `FK4n6u17jdtrjai8yitxsmm7tly` (`autores_id`),
  KEY `FKsoheqe18ertlksjno9y33x0am` (`libro_id`),
  CONSTRAINT `FK4n6u17jdtrjai8yitxsmm7tly` FOREIGN KEY (`autores_id`) REFERENCES `autor` (`id`),
  CONSTRAINT `FKsoheqe18ertlksjno9y33x0am` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro_autores`
--

LOCK TABLES `libro_autores` WRITE;
/*!40000 ALTER TABLE `libro_autores` DISABLE KEYS */;
INSERT INTO `libro_autores` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `libro_autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro_autores_aud`
--

DROP TABLE IF EXISTS `libro_autores_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro_autores_aud` (
  `rev` int(11) NOT NULL,
  `libro_id` bigint(20) NOT NULL,
  `autores_id` bigint(20) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`libro_id`,`rev`,`autores_id`),
  KEY `FK3ob89ixgsd42wwpgwmfp31v18` (`rev`),
  CONSTRAINT `FK3ob89ixgsd42wwpgwmfp31v18` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro_autores_aud`
--

LOCK TABLES `libro_autores_aud` WRITE;
/*!40000 ALTER TABLE `libro_autores_aud` DISABLE KEYS */;
INSERT INTO `libro_autores_aud` VALUES (6,1,1,0),(56,2,2,0);
/*!40000 ALTER TABLE `libro_autores_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidad`
--

DROP TABLE IF EXISTS `localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `denominacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
INSERT INTO `localidad` VALUES (1,'Guaymallen');
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidad_aud`
--

DROP TABLE IF EXISTS `localidad_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidad_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `denominacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FK7ifunt3yuv3bghhcv86k1s75y` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad_aud`
--

LOCK TABLES `localidad_aud` WRITE;
/*!40000 ALTER TABLE `localidad_aud` DISABLE KEYS */;
INSERT INTO `localidad_aud` VALUES (1,1,0,'Guaymallen'),(2,2,0,'Guaymallen'),(2,3,2,NULL),(3,52,0,'Maipu'),(3,53,2,NULL);
/*!40000 ALTER TABLE `localidad_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(255) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `fk_domicilio` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKtf82o8p6mim2vdcl7kh56jltw` (`fk_domicilio`),
  CONSTRAINT `FKdvcd83wmvj0mwmbu3kyoisobn` FOREIGN KEY (`fk_domicilio`) REFERENCES `domicilio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Gomez',12937482,'Geronimo',NULL),(2,'Alcantara',10745221,'Jose',1),(3,'Funes',15769201,'Martina',2);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_aud`
--

DROP TABLE IF EXISTS `persona_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona_aud` (
  `id` bigint(20) NOT NULL,
  `rev` int(11) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `fk_domicilio` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FK3nishbkv6n49yoqu3eugomin` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_aud`
--

LOCK TABLES `persona_aud` WRITE;
/*!40000 ALTER TABLE `persona_aud` DISABLE KEYS */;
INSERT INTO `persona_aud` VALUES (2,6,0,'Alcantara',10745221,'Jose',1),(3,56,0,'Funes',15769201,'Martina',2);
/*!40000 ALTER TABLE `persona_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_libro`
--

DROP TABLE IF EXISTS `persona_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona_libro` (
  `persona_id` bigint(20) NOT NULL,
  `libro_id` bigint(20) NOT NULL,
  UNIQUE KEY `UKklwo566p2xgu8txcyls6vx0ai` (`libro_id`),
  KEY `FKd8c57cn01g1qhcax4yanhi2o4` (`persona_id`),
  CONSTRAINT `FK6oar3k71e0huyyjlxd0a8qnct` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id`),
  CONSTRAINT `FKd8c57cn01g1qhcax4yanhi2o4` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_libro`
--

LOCK TABLES `persona_libro` WRITE;
/*!40000 ALTER TABLE `persona_libro` DISABLE KEYS */;
INSERT INTO `persona_libro` VALUES (2,1),(3,2);
/*!40000 ALTER TABLE `persona_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_libro_aud`
--

DROP TABLE IF EXISTS `persona_libro_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona_libro_aud` (
  `rev` int(11) NOT NULL,
  `persona_id` bigint(20) NOT NULL,
  `libro_id` bigint(20) NOT NULL,
  `revtype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`persona_id`,`rev`,`libro_id`),
  KEY `FKjbftjxxjxf1q7woqa3gxgvmr` (`rev`),
  CONSTRAINT `FKjbftjxxjxf1q7woqa3gxgvmr` FOREIGN KEY (`rev`) REFERENCES `revision_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_libro_aud`
--

LOCK TABLES `persona_libro_aud` WRITE;
/*!40000 ALTER TABLE `persona_libro_aud` DISABLE KEYS */;
INSERT INTO `persona_libro_aud` VALUES (6,2,1,0),(56,3,2,0);
/*!40000 ALTER TABLE `persona_libro_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision_info`
--

DROP TABLE IF EXISTS `revision_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revision_info` (
  `id` int(11) NOT NULL,
  `revision_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision_info`
--

LOCK TABLES `revision_info` WRITE;
/*!40000 ALTER TABLE `revision_info` DISABLE KEYS */;
INSERT INTO `revision_info` VALUES (1,'2025-06-01 13:54:12.000000'),(2,'2025-06-01 13:54:51.000000'),(3,'2025-06-01 13:56:24.000000'),(4,'2025-06-01 14:16:21.000000'),(5,'2025-06-01 14:19:20.000000'),(6,'2025-06-01 14:29:27.000000'),(52,'2025-06-05 22:26:55.000000'),(53,'2025-06-05 22:28:37.000000'),(54,'2025-06-05 22:30:42.000000'),(55,'2025-06-05 22:31:44.000000'),(56,'2025-06-05 22:37:53.000000');
/*!40000 ALTER TABLE `revision_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seq_revision_id`
--

DROP TABLE IF EXISTS `seq_revision_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seq_revision_id` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seq_revision_id`
--

LOCK TABLES `seq_revision_id` WRITE;
/*!40000 ALTER TABLE `seq_revision_id` DISABLE KEYS */;
INSERT INTO `seq_revision_id` VALUES (151);
/*!40000 ALTER TABLE `seq_revision_id` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-06  1:29:20
