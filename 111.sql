-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: travelweb
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `aircompany`
--

DROP TABLE IF EXISTS `aircompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aircompany` (
  `CompanyID` int(11) NOT NULL COMMENT '航空公司ID',
  `CompanyName` varchar(255) NOT NULL COMMENT '航空公司名字',
  `AreaID` int(11) NOT NULL COMMENT '地区名',
  PRIMARY KEY (`CompanyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircompany`
--

LOCK TABLES `aircompany` WRITE;
/*!40000 ALTER TABLE `aircompany` DISABLE KEYS */;
/*!40000 ALTER TABLE `aircompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `AreaID` int(11) NOT NULL,
  `Area` varchar(255) NOT NULL,
  `CountryID` int(11) NOT NULL,
  PRIMARY KEY (`AreaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'成都',1),(2,'曼谷',2),(3,'马尔代夫群岛',3),(4,'纽约',4),(5,'上海',1);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attractions`
--

DROP TABLE IF EXISTS `attractions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attractions` (
  `AttractionID` int(11) NOT NULL COMMENT '景点ID',
  `Attraction` varchar(255) NOT NULL COMMENT '景点名字',
  `AreaID` int(11) NOT NULL COMMENT '地区ID',
  PRIMARY KEY (`AttractionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attractions`
--

LOCK TABLES `attractions` WRITE;
/*!40000 ALTER TABLE `attractions` DISABLE KEYS */;
/*!40000 ALTER TABLE `attractions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `UID` int(10) NOT NULL COMMENT '用户ID',
  `CommentType` int(11) NOT NULL COMMENT '评论类型',
  `Comment` varchar(255) NOT NULL COMMENT '评论',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commenttypes`
--

DROP TABLE IF EXISTS `commenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commenttypes` (
  `CommentType` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL COMMENT '评论类型',
  PRIMARY KEY (`CommentType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commenttypes`
--

LOCK TABLES `commenttypes` WRITE;
/*!40000 ALTER TABLE `commenttypes` DISABLE KEYS */;
INSERT INTO `commenttypes` VALUES (1,'攻略'),(2,'机票'),(3,'酒店'),(4,'旅游');
/*!40000 ALTER TABLE `commenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL,
  `Country` varchar(255) NOT NULL,
  PRIMARY KEY (`CountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'中国'),(2,'泰国'),(3,'马尔代夫'),(4,'美国');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flightmessage`
--

DROP TABLE IF EXISTS `flightmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flightmessage` (
  `FlightID` int(11) NOT NULL AUTO_INCREMENT,
  `FlightNumber` varchar(255) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `AirType` varchar(255) NOT NULL,
  `SeatID` varchar(255) NOT NULL,
  `BeginTime` date NOT NULL,
  `BeginCity` varchar(255) NOT NULL,
  `TransfersCity` varchar(255) DEFAULT NULL,
  `Destination` varchar(255) NOT NULL,
  `RoundType` varchar(255) NOT NULL,
  `Precision` double unsigned zerofill NOT NULL,
  PRIMARY KEY (`FlightID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightmessage`
--

LOCK TABLES `flightmessage` WRITE;
/*!40000 ALTER TABLE `flightmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `flightmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelmessage`
--

DROP TABLE IF EXISTS `hotelmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotelmessage` (
  `HotelID` int(11) NOT NULL,
  `HotelName` varchar(255) NOT NULL,
  `AreaID` int(11) NOT NULL,
  `HotelLevel` varchar(255) NOT NULL,
  PRIMARY KEY (`HotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelmessage`
--

LOCK TABLES `hotelmessage` WRITE;
/*!40000 ALTER TABLE `hotelmessage` DISABLE KEYS */;
INSERT INTO `hotelmessage` VALUES (1,'喜来登酒店',1,'五星');
/*!40000 ALTER TABLE `hotelmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelorder`
--

DROP TABLE IF EXISTS `hotelorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotelorder` (
  `HotelNumber` int(10) NOT NULL COMMENT '酒店订单号',
  `HotelID` int(11) NOT NULL COMMENT '酒店ID',
  `CheckIn` date NOT NULL COMMENT '入住时间',
  `CheckOut` date NOT NULL COMMENT '退房时间',
  `CreatedTime` date NOT NULL COMMENT '创建时间',
  `UID` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`HotelNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelorder`
--

LOCK TABLES `hotelorder` WRITE;
/*!40000 ALTER TABLE `hotelorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotelorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstate`
--

DROP TABLE IF EXISTS `orderstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderstate` (
  `id` int(11) NOT NULL,
  `StateType` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstate`
--

LOCK TABLES `orderstate` WRITE;
/*!40000 ALTER TABLE `orderstate` DISABLE KEYS */;
INSERT INTO `orderstate` VALUES (1,'已支付'),(2,'未支付'),(3,'已取消'),(4,'已预订'),(5,'未预定');
/*!40000 ALTER TABLE `orderstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertype`
--

DROP TABLE IF EXISTS `ordertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) NOT NULL COMMENT '订单类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertype`
--

LOCK TABLES `ordertype` WRITE;
/*!40000 ALTER TABLE `ordertype` DISABLE KEYS */;
INSERT INTO `ordertype` VALUES (1,'机票'),(2,'旅游'),(3,'酒店');
/*!40000 ALTER TABLE `ordertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residentuser`
--

DROP TABLE IF EXISTS `residentuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `residentuser` (
  `UID` int(6) NOT NULL COMMENT '用户ID',
  `UName` varchar(50) NOT NULL COMMENT '常驻姓名',
  `IDNumber` varchar(18) NOT NULL COMMENT '常驻人身份证'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residentuser`
--

LOCK TABLES `residentuser` WRITE;
/*!40000 ALTER TABLE `residentuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `residentuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roommessage`
--

DROP TABLE IF EXISTS `roommessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roommessage` (
  `HotelID` int(11) NOT NULL,
  `RoomNumber` int(4) NOT NULL,
  `RoomType` int(11) NOT NULL,
  `RoomState` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roommessage`
--

LOCK TABLES `roommessage` WRITE;
/*!40000 ALTER TABLE `roommessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `roommessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomstate`
--

DROP TABLE IF EXISTS `roomstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomstate` (
  `id` int(11) NOT NULL,
  `State` varchar(255) NOT NULL COMMENT '房间状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomstate`
--

LOCK TABLES `roomstate` WRITE;
/*!40000 ALTER TABLE `roomstate` DISABLE KEYS */;
INSERT INTO `roomstate` VALUES (1,'已入住'),(2,'未入住');
/*!40000 ALTER TABLE `roomstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtype`
--

DROP TABLE IF EXISTS `roomtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomtype` (
  `id` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL COMMENT '房间类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtype`
--

LOCK TABLES `roomtype` WRITE;
/*!40000 ALTER TABLE `roomtype` DISABLE KEYS */;
INSERT INTO `roomtype` VALUES (1,'单人'),(2,'双人'),(3,'豪华套房');
/*!40000 ALTER TABLE `roomtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcart` (
  `UID` int(6) NOT NULL COMMENT '用户ID',
  `ShoppingNumber` int(10) NOT NULL COMMENT '订单号',
  `ShoppingType` int(1) NOT NULL COMMENT '订单类型',
  `Price` double(10,0) unsigned zerofill NOT NULL COMMENT '总价格',
  `CreatedTime` date NOT NULL COMMENT '创建时间',
  `ShoppingState` int(1) NOT NULL COMMENT '订单状态',
  `HotelNumber` int(10) NOT NULL COMMENT '酒店订单号',
  `TicketNumber` int(10) NOT NULL COMMENT '机票订单号',
  `TravelNumber` int(10) NOT NULL COMMENT '旅游订单号',
  PRIMARY KEY (`ShoppingNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketorder`
--

DROP TABLE IF EXISTS `ticketorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketorder` (
  `TicketNumber` int(10) NOT NULL COMMENT '机票订单号',
  `FlightID` int(11) NOT NULL COMMENT '航班ID',
  `CreatedTime` date NOT NULL COMMENT '创建时间',
  `Cabin` varchar(255) NOT NULL COMMENT '舱位',
  `Price` double unsigned zerofill NOT NULL COMMENT '价格',
  `UID` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`TicketNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketorder`
--

LOCK TABLES `ticketorder` WRITE;
/*!40000 ALTER TABLE `ticketorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticketorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelmessage`
--

DROP TABLE IF EXISTS `travelmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travelmessage` (
  `TravelID` int(11) NOT NULL COMMENT '旅游订单号',
  `TravelName` varchar(255) NOT NULL COMMENT '项目名称',
  `FlightID` int(11) NOT NULL COMMENT '航班ID',
  `CheckIn` date NOT NULL COMMENT '入住时间',
  `CheckOut` date NOT NULL COMMENT '退房时间',
  `Price` double unsigned zerofill NOT NULL COMMENT '价格',
  `Discount` double unsigned zerofill NOT NULL COMMENT '折扣',
  `Supplier` varchar(255) NOT NULL COMMENT '供应商',
  `HotelID` int(11) NOT NULL COMMENT '酒店ID',
  `AreaID` int(11) NOT NULL COMMENT '地区ID',
  `Attractions` varchar(255) DEFAULT NULL COMMENT '景点',
  PRIMARY KEY (`TravelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelmessage`
--

LOCK TABLES `travelmessage` WRITE;
/*!40000 ALTER TABLE `travelmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `travelmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelorder`
--

DROP TABLE IF EXISTS `travelorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travelorder` (
  `TravelNumber` int(10) NOT NULL COMMENT '旅游订单号',
  `TravelID` int(11) NOT NULL COMMENT '旅游ID',
  `CreatedTime` date NOT NULL COMMENT '创建时间',
  `UID` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`TravelNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelorder`
--

LOCK TABLES `travelorder` WRITE;
/*!40000 ALTER TABLE `travelorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `travelorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UID` int(6) NOT NULL COMMENT '用户ID',
  `UName` varchar(50) NOT NULL COMMENT '用户姓名',
  `Name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `Password` varchar(16) NOT NULL COMMENT '用户密码',
  `PayPassword` int(6) DEFAULT NULL COMMENT '支付密码',
  `Mail` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `PhoneNumber` varchar(11) DEFAULT NULL COMMENT '手机号',
  `IDNumber` varchar(18) NOT NULL COMMENT '身份证号',
  `Address` varchar(50) DEFAULT NULL COMMENT '地址',
  `Money` double NOT NULL DEFAULT '0' COMMENT '账户余额',
  PRIMARY KEY (`id`,`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-25 17:10:11
