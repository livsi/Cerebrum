CREATE DATABASE  IF NOT EXISTS `userinfo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `userinfo`;
-- MySQL dump 10.13  Distrib 5.1.34, for apple-darwin9.5.0 (i386)
--
-- Host: 89.255.64.40    Database: userinfo
-- ------------------------------------------------------
-- Server version	5.0.89-log

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `vlans_regions`
--

DROP TABLE IF EXISTS `vlans_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vlans_regions` (
  `id` int(11) NOT NULL auto_increment,
  `vlan` int(11) NOT NULL,
  `region` int(11) NOT NULL,
  `etc` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vlans_regions`
--

/*!40000 ALTER TABLE `vlans_regions` DISABLE KEYS */;
INSERT INTO `vlans_regions` VALUES (1,230,101,'10.135.230.x'),(2,231,103,'10.135.231.x'),(3,232,103,'10.135.232.x'),(4,233,104,'10.135.233.x'),(5,234,104,'10.135.234.x'),(6,235,104,'10.135.235.x'),(7,236,104,'10.135.236.x'),(8,237,102,'10.135.237.x'),(9,238,105,'10.135.238.x'),(10,68,100,'89.255.68.x'),(11,239,104,'10.135.239.x'),(12,229,106,'10.135.229.x'),(13,223,201,'10.135.223.x'),(14,217,201,'10.135.217.x'),(15,218,201,'10.135.218.x'),(16,219,201,'10.135.219.x'),(17,69,200,'89.255.69.x'),(18,228,105,'10.135.228.x'),(21,241,108,'10.135.241.x'),(19,240,107,'10.135.240.x '),(22,240,109,'10.135.240.x'),(23,244,104,'10.135.244.x'),(24,245,110,'10.135.245.x'),(25,246,111,'10.135.246.x'),(26,243,110,'10.135.243.x');
/*!40000 ALTER TABLE `vlans_regions` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-11-23 16:36:07