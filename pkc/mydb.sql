-- MariaDB dump 10.19  Distrib 10.5.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	10.5.11-MariaDB

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `name` char(10) DEFAULT NULL,
  `pwd` char(10) DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  `writeday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (12,'servlet 테스트','servlet 테스트','박보검','1111',9,'2025-06-24'),(14,'연습111','연습2222','크롱','111',7,'2025-06-24');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `menu` char(10) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES ('된장찌개',45,2,20);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `name` char(10) DEFAULT NULL,
  `juso` varchar(100) DEFAULT NULL,
  `phone` char(16) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` VALUES ('뽀로로','서울시 성북구','010-4356-7979',26,'2001-03-01',1),('배트맨','전라북도 군산','010-3454-8765',31,'1995-04-24',3),('강풀','경기도양주시','010-8893-3432',25,'2002-08-30',5),('여리','제주도','010-9863-9456',23,'1999-08-30',6),('조성환','서울시 성북구','010-3456-7654',30,'2020-09-08',8);
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imsi`
--

DROP TABLE IF EXISTS `imsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imsi` (
  `name` char(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `juso` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imsi`
--

LOCK TABLES `imsi` WRITE;
/*!40000 ALTER TABLE `imsi` DISABLE KEYS */;
INSERT INTO `imsi` VALUES ('뽀로로',44,'남극 어딘가');
/*!40000 ALTER TABLE `imsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jichul`
--

DROP TABLE IF EXISTS `jichul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jichul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `xday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jichul`
--

LOCK TABLES `jichul` WRITE;
/*!40000 ALTER TABLE `jichul` DISABLE KEYS */;
INSERT INTO `jichul` VALUES (1,7000,'2025-07-15'),(2,15000,'2025-07-22'),(3,8000,'2025-07-30'),(4,1200,'2025-06-20'),(5,50000,'2025-08-11');
/*!40000 ALTER TABLE `jichul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` char(20) DEFAULT NULL,
  `pwd` char(10) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `writeday` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (2,'bgbg','1111','박보검','bill@ezenac.co.kr','010-1234-5555','2025-07-02 16:44:24'),(3,'guy','1111','권지용','adfw@naver.com','010-6762-2238','2025-07-02 16:47:28'),(4,'poiu','1234','홍길동','gfds@naver.com','010-3478-1259','2025-07-02 16:48:04'),(5,'qwerty','1111','유재석','asd@naver.com','010-2345-7632','2025-07-03 11:32:36'),(6,'hshshs','1234','김혜수','ina214@naver.com','010-0000-0000','2025-07-03 15:27:18'),(7,'asdfgh','1111','홍길동','aaa@naver.com','010-9999-8745','2025-07-07 12:32:39'),(8,'sdfghj','1111','뽀로로','sss@naver.com','010-2356-7895','2025-07-07 13:02:44'),(9,'tyuiop','1111','임영웅','ttt@naver.com','010-8524-9578','2025-07-07 14:03:55');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myhome`
--

DROP TABLE IF EXISTS `myhome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myhome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `xday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myhome`
--

LOCK TABLES `myhome` WRITE;
/*!40000 ALTER TABLE `myhome` DISABLE KEYS */;
INSERT INTO `myhome` VALUES (1,'정숙경생일','2025-07-12'),(2,'기브스푸는날','2025-07-14'),(3,'가족모임','2025-08-04'),(4,'내생일','2025-02-14'),(5,'오빠생일','2025-01-30'),(6,'기념일','2025-04-13'),(7,'언니생일','2025-08-01'),(8,'학원종강','2025-10-30');
/*!40000 ALTER TABLE `myhome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myinfo`
--

DROP TABLE IF EXISTS `myinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myinfo` (
  `userid` char(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pwd` char(10) DEFAULT NULL,
  `sogae` text DEFAULT NULL,
  `sung` char(10) DEFAULT NULL,
  `hobby` varchar(30) DEFAULT NULL,
  `birth` char(4) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myinfo`
--

LOCK TABLES `myinfo` WRITE;
/*!40000 ALTER TABLE `myinfo` DISABLE KEYS */;
INSERT INTO `myinfo` VALUES ('abc','홍길동','12343','hi','여자','낚시-독서-게임',NULL,1),('bgbg','박보검','979','보검복지부','남자','낚시-운동-잠자기','2023',6);
/*!40000 ALTER TABLE `myinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suib`
--

DROP TABLE IF EXISTS `suib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suib` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `xday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suib`
--

LOCK TABLES `suib` WRITE;
/*!40000 ALTER TABLE `suib` DISABLE KEYS */;
INSERT INTO `suib` VALUES (1,18000,'2025-07-14'),(2,5000,'2025-07-27'),(3,900,'2025-08-11'),(4,24000,'2025-06-10');
/*!40000 ALTER TABLE `suib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sungjuk`
--

DROP TABLE IF EXISTS `sungjuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sungjuk` (
  `name` char(10) DEFAULT NULL,
  `kor` int(11) DEFAULT NULL,
  `eng` int(11) DEFAULT NULL,
  `mat` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sungjuk`
--

LOCK TABLES `sungjuk` WRITE;
/*!40000 ALTER TABLE `sungjuk` DISABLE KEYS */;
INSERT INTO `sungjuk` VALUES ('null',66,66,66,1),('뽀로로',40,30,100,5),('강하늘',80,90,100,6),('콩순이',80,90,60,7);
/*!40000 ALTER TABLE `sungjuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sungjuk1`
--

DROP TABLE IF EXISTS `sungjuk1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sungjuk1` (
  `name` char(10) DEFAULT NULL,
  `kor` int(11) DEFAULT NULL,
  `eng` int(11) DEFAULT NULL,
  `mat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sungjuk1`
--

LOCK TABLES `sungjuk1` WRITE;
/*!40000 ALTER TABLE `sungjuk1` DISABLE KEYS */;
/*!40000 ALTER TABLE `sungjuk1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `userid` char(20) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `fnames` varchar(200) DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  `writeday` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'여행가요','asdfgh','너무 더워요\r\n여행가요','2.jpg',1,'2025-07-08 09:32:09'),(3,'여행지 추천','hshshs','너무  더워서 추운 나라 가고 싶어요','4.jpg',4,'2025-07-08 09:39:41'),(4,'우리 여행갈까','sdfghj','어때?','169O.jpg,2BSq.jpg,2AEU.jpg',10,'2025-07-08 10:51:42'),(6,'111','tyuiop','111','3.jpg,4EUR.jpg,',2,'2025-07-08 13:05:00'),(7,'우리 여행갈까','tyuiop','어때?','1.jpg,3eVJ.jpg,',2,'2025-07-08 13:06:41');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `pwd` char(10) DEFAULT NULL,
  `name` char(10) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  `writeday` datetime DEFAULT NULL,
  `content` text DEFAULT NULL,
  `ofname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-17 17:43:08
