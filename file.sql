-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	5.5.24

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
-- Current Database: `bookstore`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bookstore` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bookstore`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `houseNumber` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'London','England','41','madhya pradesh','shiv vilas palace'),(14,'Indore','India','41','Madhya Pradesh','shiv vilas palace'),(15,'Indore','India','41','Madhya Pradesh','shiv vilas palace'),(16,'Indore','India','41','Madhya Pradesh','shiv vilas palace'),(53,'London','England','41','madhya pradesh','shiv vilas palace'),(54,'San Diego','United States','41','California','shiv vilas palace');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `bookTitle` varchar(255) DEFAULT NULL,
  `copiesAvailable` int(11) NOT NULL,
  `imageName` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`bookId`),
  UNIQUE KEY `NewIndex1` (`bookTitle`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (46,'Jenny Han','To All the Boys I\'ve Loved Before',2,'2829510196512.jpg','Scholastic',1),(63,'Kasie West','On the Fence',2,'2830155546478.jpg','HarperTeen',1),(73,'Jane Austen','Pride and Prejudice',2,'2829992256822.jpg','Pocket Books',1),(74,'Nicholas Sparks','A Walk To Remember',3,'2829992347638.jpg','Warner Books',1),(75,'Chetan Bhagat','2States: The Story Of My Marriage',2,'2829992434098.jpg','Rupa & Co.',0),(76,'Audrey Niffenegger','The Time Traveler\'s Wife',2,'2829992671972.jpg','Zola Books',0),(77,'Tom White','Hadoop: The Definitive Guide',2,'2829992856956.jpg','O\'Reilly Media',0),(78,'Nicholas Sparks','The Notebook',2,'2829993124604.jpg','Bantam',0),(79,'J K Rowling','Harry Potter and the Philosopher\'s Stone',2,'2829993350662.jpg','Bloomsbury ',0);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_category` (
  `bookId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  KEY `FK_2k3bmjaeovyyvbahuqtu32vjc` (`categoryId`),
  KEY `FK_1ysxokp5fyce1ws7j84est7ok` (`bookId`),
  CONSTRAINT `FK_1ysxokp5fyce1ws7j84est7ok` FOREIGN KEY (`bookId`) REFERENCES `book` (`bookId`),
  CONSTRAINT `FK_2k3bmjaeovyyvbahuqtu32vjc` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_category`
--

LOCK TABLES `book_category` WRITE;
/*!40000 ALTER TABLE `book_category` DISABLE KEYS */;
INSERT INTO `book_category` VALUES (46,3),(46,4),(46,5),(46,6),(73,4),(73,5),(74,5),(75,5),(75,6),(76,3),(76,4),(77,14),(78,5),(79,15),(63,4);
/*!40000 ALTER TABLE `book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_copy`
--

DROP TABLE IF EXISTS `book_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_copy` (
  `bookId` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `bookTitle` varchar(255) DEFAULT NULL,
  `copiesAvailable` int(11) NOT NULL,
  `imageName` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_copy`
--

LOCK TABLES `book_copy` WRITE;
/*!40000 ALTER TABLE `book_copy` DISABLE KEYS */;
INSERT INTO `book_copy` VALUES (46,'Jenny Han','To All the Boys I\'ve loved before',2,'46.jpg','Simon & Schuster Books',1),(63,'Kasie West','On the Fence',2,'3.jpg','HarperTeen',1);
/*!40000 ALTER TABLE `book_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookstock`
--

DROP TABLE IF EXISTS `bookstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookstock` (
  `isbn` varchar(255) NOT NULL,
  `available` tinyint(1) DEFAULT '1',
  `bookId` int(11) DEFAULT NULL,
  PRIMARY KEY (`isbn`),
  KEY `FK_e8keqlk8tnh3t4pikhlka3xov` (`bookId`),
  CONSTRAINT `FK_e8keqlk8tnh3t4pikhlka3xov` FOREIGN KEY (`bookId`) REFERENCES `book` (`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookstock`
--

LOCK TABLES `bookstock` WRITE;
/*!40000 ALTER TABLE `bookstock` DISABLE KEYS */;
INSERT INTO `bookstock` VALUES ('1413788470122',1,63),('1413788470123',1,63),('2States: The Story Of My Marriage2isbn1',0,75),('2States: The Story Of My Marriage2isbn2',0,75),('A Walk To Remember3isbn1',0,74),('A Walk To Remember3isbn2',0,74),('A Walk To Remember3isbn3',0,74),('Hadoop: The Definitive Guide2isbn1',0,77),('Hadoop: The Definitive Guide2isbn2',0,77),('Harry Potter and the Philosopher\'s Stone2isbn1',0,79),('Harry Potter and the Philosopher\'s Stone2isbn2',0,79),('Pride and Prejudice2isbn1',0,73),('Pride and Prejudice2isbn2',0,73),('The Notebook2isbn1',0,78),('The Notebook2isbn2',0,78),('The Time Traveler\'s Wife2isbn1',0,76),('The Time Traveler\'s Wife2isbn2',0,76),('To All the Boys I\'ve Loved Before2isbn1',0,46),('To All the Boys I\'ve Loved Before2isbn2',0,46);
/*!40000 ALTER TABLE `bookstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (3,'sattire'),(4,'philosophy'),(5,'romance'),(6,'comedy'),(9,'romance romance'),(10,'mystery'),(14,'Education'),(15,'fantasy');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendation`
--

DROP TABLE IF EXISTS `recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommendation` (
  `username` varchar(255) NOT NULL,
  `bookId` bigint(20) NOT NULL,
  PRIMARY KEY (`username`,`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendation`
--

LOCK TABLES `recommendation` WRITE;
/*!40000 ALTER TABLE `recommendation` DISABLE KEYS */;
INSERT INTO `recommendation` VALUES ('s1',73),('s1',74),('s1',75),('s2',46);
/*!40000 ALTER TABLE `recommendation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `requestId` int(11) NOT NULL AUTO_INCREMENT,
  `DeliveryDate` datetime DEFAULT NULL,
  `deliveryRequestDate` datetime DEFAULT NULL,
  `deliveryRequestStatus` varchar(255) DEFAULT NULL,
  `returnRequestDate` datetime DEFAULT NULL,
  `returnRequestStatus` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`requestId`),
  KEY `FK_hahc3ot2f4ow6ncnmetaccvlw` (`isbn`),
  KEY `FK_gbublap4g8u9gbp7sfvn7q58h` (`username`),
  CONSTRAINT `FK_gbublap4g8u9gbp7sfvn7q58h` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  CONSTRAINT `FK_hahc3ot2f4ow6ncnmetaccvlw` FOREIGN KEY (`isbn`) REFERENCES `bookstock` (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (21,NULL,'2014-11-05 12:08:38','cancelled',NULL,NULL,'1413788470122','shubham'),(22,NULL,'2014-11-05 12:15:30','cancelled',NULL,NULL,'1413788470123','shubham'),(23,NULL,'2014-11-05 12:19:51','cancelled',NULL,NULL,'Pride and Prejudice2isbn1','shubham'),(24,NULL,'2014-11-05 12:20:31','cancelled',NULL,NULL,'Harry Potter and the Philosopher\'s Stone2isbn1','shubham'),(125,NULL,'2014-11-13 11:02:25','closed','2014-11-13 11:04:24','closed','Pride and Prejudice2isbn1','shubham');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `username` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'ROLE_USER',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('s1','ROLE_USER'),('s2','ROLE_USER'),('s3','ROLE_USER'),('shubham','ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptionplan`
--

DROP TABLE IF EXISTS `subscriptionplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptionplan` (
  `planId` int(11) NOT NULL AUTO_INCREMENT,
  `cost` int(11) NOT NULL,
  `maxBooks` int(11) NOT NULL,
  `planName` varchar(255) DEFAULT NULL,
  `validDays` int(11) NOT NULL,
  PRIMARY KEY (`planId`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptionplan`
--

LOCK TABLES `subscriptionplan` WRITE;
/*!40000 ALTER TABLE `subscriptionplan` DISABLE KEYS */;
INSERT INTO `subscriptionplan` VALUES (1,1100,12,'platinum1',210),(2,1200,14,'platinum2',220),(3,1300,16,'platinum3',230),(30,1500000,20,'abhishek',250);
/*!40000 ALTER TABLE `subscriptionplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_book_shelf`
--

DROP TABLE IF EXISTS `user_book_shelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_book_shelf` (
  `username` varchar(255) NOT NULL,
  `bookId` int(11) NOT NULL,
  KEY `FK_hyns71o8y2yxwtyxqdm6keaqv` (`username`),
  KEY `FK_user_book_shelf` (`bookId`),
  CONSTRAINT `FK_hyns71o8y2yxwtyxqdm6keaqv` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  CONSTRAINT `FK_user_book_shelf` FOREIGN KEY (`bookId`) REFERENCES `book` (`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_book_shelf`
--

LOCK TABLES `user_book_shelf` WRITE;
/*!40000 ALTER TABLE `user_book_shelf` DISABLE KEYS */;
INSERT INTO `user_book_shelf` VALUES ('shubham',46),('shubham',73),('s1',46),('s1',74),('s1',73);
/*!40000 ALTER TABLE `user_book_shelf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpreferences`
--

DROP TABLE IF EXISTS `userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpreferences` (
  `userId` bigint(20) NOT NULL,
  `bookId` bigint(20) NOT NULL,
  `preference` float NOT NULL,
  PRIMARY KEY (`userId`,`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpreferences`
--

LOCK TABLES `userpreferences` WRITE;
/*!40000 ALTER TABLE `userpreferences` DISABLE KEYS */;
INSERT INTO `userpreferences` VALUES (233,46,1),(233,63,2),(233,73,5),(233,74,5),(233,75,5),(233,76,4),(233,77,5),(233,78,1),(233,79,5),(1414994304897,46,1),(1414994304897,63,2),(1414994304897,76,5),(1414994304897,77,4.5),(1414994304897,78,1),(1414994304897,79,5),(1414994348994,63,2.5),(1414994348994,73,4),(1414994348994,74,4),(1414994348994,75,3),(1414994348994,76,3.5),(1414994348994,77,4.5),(1414994348994,78,4),(1414994348994,79,5),(1414994415032,46,5),(1414994415032,63,5);
/*!40000 ALTER TABLE `userpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpreferences_copy`
--

DROP TABLE IF EXISTS `userpreferences_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpreferences_copy` (
  `userId` bigint(20) NOT NULL,
  `bookId` bigint(20) NOT NULL,
  `preference` float NOT NULL,
  PRIMARY KEY (`userId`,`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpreferences_copy`
--

LOCK TABLES `userpreferences_copy` WRITE;
/*!40000 ALTER TABLE `userpreferences_copy` DISABLE KEYS */;
INSERT INTO `userpreferences_copy` VALUES (1,10,1),(1,11,2),(1,12,5),(1,13,5),(1,14,5),(1,15,4),(1,16,5),(1,17,1),(1,18,5),(2,10,1),(2,11,2),(2,15,5),(2,16,4.5),(2,17,1),(2,18,5),(3,11,2.5),(3,12,4.5),(3,13,4),(3,14,3),(3,15,3.5),(3,16,4.5),(3,17,4),(3,18,5),(4,10,5),(4,11,5),(4,12,5),(4,13,0),(4,14,2),(4,15,3),(4,16,1),(4,17,4),(4,18,1);
/*!40000 ALTER TABLE `userpreferences_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprofile` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofile`
--

LOCK TABLES `userprofile` WRITE;
/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `FK_5juxu1t28tuwgyfj1cyav5a9e` (`addressId`),
  CONSTRAINT `FK_5juxu1t28tuwgyfj1cyav5a9e` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('s1','shubh.chaurasia@gmail.com',1,'s1','s1','9926384885',14,1414994304897),('s2','shubh.chaurasia@gmail.com',1,'s2','s2','9926384885',15,1414994348994),('s3','shubh.chaurasia@gmail.com',1,'s3','s3','9926384885',16,1414994415032),('shubham','shubh.chaurasia@gmail.com',1,'shubhamupdate1','shubham','9926384885',54,233);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersubscription`
--

DROP TABLE IF EXISTS `usersubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersubscription` (
  `userSubId` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT '1',
  `cost` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `planId` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `booksTaken` int(11) NOT NULL,
  `maxBooks` int(11) NOT NULL,
  PRIMARY KEY (`userSubId`),
  KEY `FK_9r4bovk8tc2ktux2g4jy2p8tk` (`planId`),
  KEY `FK_68h0m8h4cfyei0b2f8m38yd3h` (`username`),
  CONSTRAINT `FK_9r4bovk8tc2ktux2g4jy2p8tk` FOREIGN KEY (`planId`) REFERENCES `subscriptionplan` (`planId`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersubscription`
--

LOCK TABLES `usersubscription` WRITE;
/*!40000 ALTER TABLE `usersubscription` DISABLE KEYS */;
INSERT INTO `usersubscription` VALUES (19,0,1100,210,'2015-05-29 11:51:49','2014-10-31 11:51:49',1,'shubham',1,12),(64,1,1100,210,'2015-06-05 18:30:37','2014-11-07 18:30:37',1,'s1',0,12),(65,1,1300,230,'2015-06-25 18:33:21','2014-11-07 18:33:21',3,'shubham',1,16);
/*!40000 ALTER TABLE `usersubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bookstore'
--
/*!50003 DROP PROCEDURE IF EXISTS `loadingData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `loadingData`(IN filepath VARCHAR(255))
BEGIN
declare s varchar(3000);
declare sleft varchar(3000);
declare col1 varchar(50);
declare col2 varchar(50);
declare col3 varchar(50);
declare col4 INT(8) DEFAULT 1;
declare col5 varchar(50);
declare col6 varchar(50);
declare delimpos int(8) default 0;
declare EOLpos int(8) default 0;
declare cnt int(8) default 0;
declare cnt2 int(8) default 0;
declare EOLcheck int(8) default 0;
declare len int(8) default 0;
DECLARE colcount INT(8) DEFAULT 1;
select load_file(filepath) into s;
 delete from book_copy;
 
set len=length(s);
while(cnt2<len)
do
set cnt=0;
set EOLpos=locate("\r",s);
set colcount=1;
while  (cnt<EOLpos)
do 
set delimpos=locate(",",s);
if (delimpos=0) then
set sleft =s;
set cnt2=len;
else
set sleft =left(s,delimpos-1);
end if;
set EOLcheck=locate("\r",sleft);
if (EOLcheck>0) then
set sleft=left(sleft,EOLcheck-1);
set s=substring(s,EOLcheck+2);
else
set s=substring(s,delimpos+1);
end if;
set cnt=cnt+length(sleft)+1;
/**
select s,sleft,delimpos,EOLpos,cnt,cnt2,length(sleft);
**/
if(colcount=1) then
set col1=sleft;
elseif (colcount=2) THEN
SET col2=sleft;
elseif (colcount=3) THEN
SET col3=sleft;
elseif (colcount=4) THEN
SET col4=sleft;
ELSEIF (colcount=5) THEN
SET col5=sleft;
ELSEIF (colcount=6) THEN
SET col6=sleft;
end if;
set colcount=colcount+1;
end while;
set cnt2=cnt2+EOLpos+1;
/**
select col1,col2,col3,col4,col5,col6;
*/
insert into book_copy values(col1,col2,col3,col4,col5,col6,true);
end while;
select * from book_copy;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-14 19:50:51
