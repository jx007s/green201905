-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: green_db
-- ------------------------------------------------------
-- Server version	5.7.25-log

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
-- Table structure for table `stud`
--

DROP TABLE IF EXISTS `stud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stud` (
  `id` text,
  `name` text,
  `birth` date DEFAULT NULL,
  `ban` int(11) DEFAULT NULL,
  `frid` text,
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `ppid` int(11) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `ppid` (`ppid`),
  CONSTRAINT `ppid` FOREIGN KEY (`ppid`) REFERENCES `pro` (`pid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stud`
--

LOCK TABLES `stud` WRITE;
/*!40000 ALTER TABLE `stud` DISABLE KEYS */;
INSERT INTO `stud` VALUES ('aaa','장동건','1977-02-23',1,'bbb',1,11),('bbb','조인성','1980-05-14',2,'aaa',2,5),('ccc','정우성','2002-06-20',3,'ccc',3,13),('ddd','한가인','1998-09-05',1,'ccc',4,11),('eee','김태희','1980-11-19',2,'ccc',5,5),('fff','김혜수','1971-06-30',3,NULL,6,14),('ggg','정한성','2002-08-07',1,'fff',7,14),('hhh','이송','2003-01-16',2,'ggg',8,13),('vvv','미스터빈','1965-05-05',3,'aaa',9,14),('uuu','미스터유','1965-05-05',3,'aaa',10,14),('qwe','현빈',NULL,NULL,NULL,11,12),('qwe','현빈',NULL,NULL,NULL,12,12);
/*!40000 ALTER TABLE `stud` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-12 14:41:26
