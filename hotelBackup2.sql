-- MySQL dump 10.13  Distrib 5.5.30, for Win32 (x86)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	5.5.30

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `sNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`sNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin','12345');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing` (
  `BillNo` varchar(50) NOT NULL DEFAULT '',
  `BNo` varchar(50) NOT NULL DEFAULT '',
  `DDate` date NOT NULL DEFAULT '0000-00-00',
  `BDays` int(10) unsigned NOT NULL DEFAULT '0',
  `TTR` int(10) unsigned NOT NULL DEFAULT '0',
  `SC` int(10) unsigned NOT NULL DEFAULT '0',
  `GBA` int(10) unsigned NOT NULL DEFAULT '0',
  `ST(in %)` int(10) unsigned NOT NULL DEFAULT '0',
  `DA` int(10) unsigned NOT NULL DEFAULT '0',
  `NBA` int(10) unsigned NOT NULL DEFAULT '0',
  `BillingMode` varchar(50) NOT NULL DEFAULT '',
  `AR` int(10) unsigned NOT NULL DEFAULT '0',
  `CCNo` varchar(50) NOT NULL DEFAULT '',
  `OSA` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`BillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES ('BNo001','B001','0000-00-00',1,1500,1500,3000,300,0,3300,'By Cash',3300,'',0);
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `BNo` varchar(50) NOT NULL DEFAULT '',
  `CCode` varchar(50) NOT NULL DEFAULT '0',
  `RNo` int(10) unsigned NOT NULL DEFAULT '0',
  `DOA` date NOT NULL DEFAULT '0000-00-00',
  `NoOfp` int(10) unsigned NOT NULL DEFAULT '0',
  `PDetails` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`BNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('B001','C001',101,'0000-00-00',2,'Friends');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CCode` varchar(50) NOT NULL DEFAULT '',
  `LName` varchar(50) NOT NULL DEFAULT '',
  `FName` varchar(50) NOT NULL DEFAULT '',
  `Sex` varchar(50) NOT NULL DEFAULT '',
  `Age` int(10) unsigned NOT NULL DEFAULT '0',
  `MStatus` varchar(50) NOT NULL DEFAULT '',
  `Nationality` varchar(50) NOT NULL DEFAULT '',
  `Country` varchar(50) NOT NULL DEFAULT '',
  `PPNo` varchar(50) NOT NULL DEFAULT '',
  `VNo` varchar(50) NOT NULL DEFAULT '',
  `RAddress` varchar(50) NOT NULL DEFAULT '',
  `OAddress` varchar(50) NOT NULL DEFAULT '',
  `PhNo` varchar(50) NOT NULL DEFAULT '',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `Status` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`CCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C001','Bhardwaj','Sourabh','Male',21,'Married','Indian','','','','Chauntra,Joginder Nagar		','None','','sourabh_bh1@yahoo.co.in','Regular');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `RNo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RType` varchar(50) NOT NULL DEFAULT '',
  `RRent` int(10) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`RNo`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (101,'Deluxe',1500,'NotAvailable');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserName` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('abc','aw');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-19 14:28:25
