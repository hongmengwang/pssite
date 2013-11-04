-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pssite
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1

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
-- Table structure for table `c3p0TestTable`
--

DROP TABLE IF EXISTS `c3p0TestTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c3p0TestTable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c3p0TestTable`
--

LOCK TABLES `c3p0TestTable` WRITE;
/*!40000 ALTER TABLE `c3p0TestTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `c3p0TestTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_album`
--

DROP TABLE IF EXISTS `t_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `album_name` varchar(10) DEFAULT NULL,
  `album_cover` varchar(40) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_num` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_album`
--

LOCK TABLES `t_album` WRITE;
/*!40000 ALTER TABLE `t_album` DISABLE KEYS */;
INSERT INTO `t_album` VALUES (1,1,'婚纱照','/album/xiaowang/1.jpg','2013-10-26 13:05:08',1),(2,1,'篮球','/album/xiaowang/2.jpg','2013-10-26 13:05:08',2),(3,1,'香山','/album/xiaowang/3.jpg','2013-10-26 13:05:08',3),(4,1,'大连','/album/xiaowang/4.jpg','2013-10-26 13:05:08',4),(5,1,'海边','/album/xiaowang/5.jpg','2013-10-26 13:05:08',5),(6,1,'坝上','/album/xiaowang/6.jpg','2013-10-26 13:05:08',6),(7,1,'天安门','/album/xiaowang/7.jpg','2013-10-26 13:05:08',7);
/*!40000 ALTER TABLE `t_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_album_photo`
--

DROP TABLE IF EXISTS `t_album_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_album_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `pic_path` varchar(70) DEFAULT NULL,
  `comments` varchar(20) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_album_photo`
--

LOCK TABLES `t_album_photo` WRITE;
/*!40000 ALTER TABLE `t_album_photo` DISABLE KEYS */;
INSERT INTO `t_album_photo` VALUES (23,7,'/album/xiaowang/1.jpg','5','2013-10-26 13:05:18'),(24,7,'/album/xiaowang/2.jpg','6','2013-10-26 13:05:18'),(25,7,'/album/xiaowang/3.jpg','7','2013-10-26 13:05:18'),(26,7,'/album/xiaowang/4.jpg','8','2013-10-26 13:05:18'),(27,7,'/album/xiaowang/5.jpg','9','2013-10-26 13:05:18'),(28,7,'/album/xiaowang/6.jpg','10','2013-10-26 13:05:18'),(29,7,'/album/xiaowang/7.jpg','11','2013-10-26 13:05:18'),(30,7,'/album/xiaowang/8.jpg','12','2013-10-26 13:05:18'),(31,7,'/album/xiaowang/9.jpg','13','2013-10-26 13:05:18');
/*!40000 ALTER TABLE `t_album_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_index_photo`
--

DROP TABLE IF EXISTS `t_index_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_index_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
  `pic` varchar(30) DEFAULT NULL COMMENT '人物id',
  `order_num` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_index_photo`
--

LOCK TABLES `t_index_photo` WRITE;
/*!40000 ALTER TABLE `t_index_photo` DISABLE KEYS */;
INSERT INTO `t_index_photo` VALUES (1,'/pic/index/3.jpg',1),(2,'/pic/index/4.jpg',2),(3,'/pic/index/5.jpg',3),(4,'/pic/index/6.jpg',4),(5,'/pic/index/7.jpg',5),(6,'/pic/index/8.jpg',6),(7,'/pic/index/9.jpg',7);
/*!40000 ALTER TABLE `t_index_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_person`
--

DROP TABLE IF EXISTS `t_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
  `name` varchar(10) DEFAULT NULL COMMENT '人物名称',
  `nick` varchar(10) DEFAULT NULL COMMENT '任务简称',
  `pic` varchar(30) DEFAULT NULL COMMENT '图片',
  `comments` varchar(50) DEFAULT NULL COMMENT '说明',
  `order_num` tinyint(1) DEFAULT NULL COMMENT '排序',
  `sex` char(1) DEFAULT NULL,
  `marriage` char(2) DEFAULT NULL,
  `school` varchar(30) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `about` text,
  `birth` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person`
--

LOCK TABLES `t_person` WRITE;
/*!40000 ALTER TABLE `t_person` DISABLE KEYS */;
INSERT INTO `t_person` VALUES (1,'小王','xiaowang','/pic/9.jpg','凡所有像,皆为虚妄',1,'男','已婚','大连理工大学(软件工程-日语强化)','北京搜狐公司-无线事业部','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊<br />bbbbbbbbbbbbbbbbbbbbbbbb','1986-11-10'),(2,'纪饼饼','jibingbing','/pic/4.jpg','放纵不羁爱自由',2,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_person_about`
--

DROP TABLE IF EXISTS `t_person_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_person_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `item` varchar(10) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `order_num` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person_about`
--

LOCK TABLES `t_person_about` WRITE;
/*!40000 ALTER TABLE `t_person_about` DISABLE KEYS */;
INSERT INTO `t_person_about` VALUES (1,1,'小标签','Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,Linux,',2),(2,1,'关于本站','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',3),(3,1,'关于小王','技术摘男，热爱编程，最喜欢的就是躺在家里看小说，哭哎玄幻。没事听听哥，谢谢程序，就回觉得好幸福。',1);
/*!40000 ALTER TABLE `t_person_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_person_diary`
--

DROP TABLE IF EXISTS `t_person_diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_person_diary` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长主键',
  `person_id` int(11) DEFAULT NULL COMMENT '人物id',
  `content` varchar(100) DEFAULT NULL COMMENT '心情',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '日期',
  `pic` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person_diary`
--

LOCK TABLES `t_person_diary` WRITE;
/*!40000 ALTER TABLE `t_person_diary` DISABLE KEYS */;
INSERT INTO `t_person_diary` VALUES (1,1,'今天天气正好','2013-09-21 05:14:41','/pic/1.jpg'),(2,1,'老婆不在家','2013-09-21 05:14:57',NULL),(3,1,'努力测试','2013-09-21 05:15:09',NULL),(4,1,'测试proxy','2013-11-03 10:43:31',NULL);
/*!40000 ALTER TABLE `t_person_diary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-04 21:44:31