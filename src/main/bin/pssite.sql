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
  `album_name` varchar(20) DEFAULT NULL,
  `album_cover` varchar(50) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_num` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_album`
--

LOCK TABLES `t_album` WRITE;
/*!40000 ALTER TABLE `t_album` DISABLE KEYS */;
INSERT INTO `t_album` VALUES (13,1,'朕','/album/1/20131110100000/20131110100001.jpg','2013-11-11 14:19:02',1),(14,1,'兄弟姐妹','/album/1/20131110100010/20131110100011.jpg','2013-11-11 16:06:53',3),(15,1,'阿拉斯加俊','/album/1/20131110100020/20131110100021.jpg','2013-11-11 16:07:00',4),(16,1,'小外甥女','/album/1/20131110100030/20131110100031.jpg','2013-11-11 16:07:06',2),(17,1,'新足坛四大天王，挡不住的华丽与忧伤','/album/1/20131113220000/20131113220001.jpg','2013-11-13 14:10:12',5),(18,1,'那些几度让你崩溃的动物们','/album/1/20131113221000/20131113221007.jpg','2013-11-13 12:54:15',6),(19,1,'生个女儿多好','/album/1/20131113231000/20131113231014.jpg','2013-11-13 13:07:28',7),(20,1,'创意壁纸','/album/1/20131114200000/20131114200036.jpg','2013-11-14 02:58:56',8),(21,1,'超喜欢的动漫壁纸','/album/1/20131114210000/20131114210012.jpg','2013-11-14 03:50:58',9);
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
  `comments` varchar(40) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_album_photo`
--

LOCK TABLES `t_album_photo` WRITE;
/*!40000 ALTER TABLE `t_album_photo` DISABLE KEYS */;
INSERT INTO `t_album_photo` VALUES (32,13,'/album/1/20131110100000/20131110100001.jpg','朕','2013-11-11 15:03:50'),(33,13,'/album/1/20131110100000/20131110100002.jpg','又是朕','2013-11-11 15:03:50'),(34,13,'/album/1/20131110100000/20131110100003.jpg','还是朕','2013-11-11 15:03:50'),(35,14,'/album/1/20131110100010/20131110100011.jpg','我的兄弟姐妹','2013-11-11 15:07:32'),(36,14,'/album/1/20131110100010/20131110100012.jpg','我的兄弟姐妹','2013-11-11 15:07:32'),(37,14,'/album/1/20131110100010/20131110100013.jpg','我的兄弟姐妹','2013-11-11 15:07:32'),(38,14,'/album/1/20131110100010/20131110100014.jpg','我的兄弟姐妹','2013-11-11 15:07:32'),(39,15,'/album/1/20131110100020/20131110100021.jpg','彪乎乎的俊俊','2013-11-11 15:08:50'),(40,15,'/album/1/20131110100020/20131110100022.jpg','彪乎乎的俊俊','2013-11-11 15:08:50'),(41,15,'/album/1/20131110100020/20131110100023.jpg','彪乎乎的俊俊','2013-11-11 15:08:50'),(42,15,'/album/1/20131110100020/20131110100024.jpg','彪乎乎的俊俊','2013-11-11 15:08:50'),(43,15,'/album/1/20131110100020/20131110100025.jpg','彪乎乎的俊俊','2013-11-11 15:08:50'),(44,16,'/album/1/20131110100030/20131110100031.jpg','喜欢姨夫胜过小姨的外甥女','2013-11-11 15:53:50'),(45,16,'/album/1/20131110100030/20131110100032.jpg','喜欢姨夫胜过小姨的外甥女','2013-11-11 15:53:50'),(46,16,'/album/1/20131110100030/20131110100033.jpg','喜欢姨夫胜过小姨的外甥女','2013-11-11 15:53:50'),(47,17,'/album/1/20131113220000/20131113220001.jpg','罗大脑袋','2013-11-13 13:12:32'),(48,17,'/album/1/20131113220000/20131113220002.jpg','鲁能','2013-11-13 13:12:32'),(49,17,'/album/1/20131113220000/20131113220003.jpg','梅四儿','2013-11-13 13:12:32'),(50,17,'/album/1/20131113220000/20131113220004.jpg','C广坤','2013-11-13 13:12:32'),(66,18,'/album/1/20131113221000/20131113221001.jpg','好……好大……这……这……这这这真的是给我的吗？！','2013-11-13 12:51:04'),(67,18,'/album/1/20131113221000/20131113221002.jpg','尼玛...这货是我儿子？！！','2013-11-13 12:51:04'),(68,18,'/album/1/20131113221000/20131113221003.jpg','爷爷那是什么!!那是观音草！我们苗家世世代代都靠他来治咳嗽！！！','2013-11-13 12:51:04'),(69,18,'/album/1/20131113221000/20131113221004.jpg','右下哪只，你能告诉哥为何这么滴心事重重么~','2013-11-13 12:51:04'),(70,18,'/album/1/20131113221000/20131113221005.jpg','它们一定又在背后议论我了。。。','2013-11-13 12:51:04'),(71,18,'/album/1/20131113221000/20131113221006.jpg','偶是愤怒的小鸟，不要惹我！','2013-11-13 12:51:04'),(72,18,'/album/1/20131113221000/20131113221007.jpg','二师兄也有过青葱岁月~','2013-11-13 12:51:04'),(73,18,'/album/1/20131113221000/20131113221008.jpg','霸气外露！爷有房，怎么滴吧~','2013-11-13 12:51:04'),(74,18,'/album/1/20131113221000/20131113221009.jpg','圆寸才是真爷们！','2013-11-13 12:51:05'),(75,18,'/album/1/20131113221000/20131113221010.jpg','都说我是福尔摩斯猫，我也这么觉得。。。。。。','2013-11-13 12:51:05'),(76,18,'/album/1/20131113221000/20131113221011.jpg','要吃饭了，灰起来！','2013-11-13 12:51:05'),(77,18,'/album/1/20131113221000/20131113221012.jpg','神马都是浮云啊……浮云……','2013-11-13 12:51:05'),(78,18,'/album/1/20131113221000/20131113221013.jpg','松鼠：说真的，能把你头上的松果给我吗？','2013-11-13 12:51:05'),(79,18,'/album/1/20131113221000/20131113221014.jpg','时间是把杀猪刀~','2013-11-13 12:51:05'),(80,18,'/album/1/20131113221000/20131113221015.jpg','我TM真不是周立波的猫···','2013-11-13 12:51:05'),(81,18,'/album/1/20131113221000/20131113221016.jpg','妈妈 老师夸我牙齿特别白！','2013-11-13 12:51:05'),(82,18,'/album/1/20131113221000/20131113221017.jpg','别怕！有哥在！','2013-11-13 12:51:05'),(83,18,'/album/1/20131113221000/20131113221018.jpg','吃！就知道吃！让你一次吃个够！喵了个咪的','2013-11-13 12:51:05'),(84,18,'/album/1/20131113221000/20131113221019.jpg','你才是卓别林，你才是蒋介石，你才是小日本，你全家都是希特勒！','2013-11-13 12:51:05'),(85,18,'/album/1/20131113221000/20131113221020.jpg','吃东西 要投入......','2013-11-13 12:51:05'),(86,19,'/album/1/20131113231000/20131113231001.jpg','生个女儿多好','2013-11-13 13:10:00'),(87,19,'/album/1/20131113231000/20131113231002.jpg','生个女儿多好','2013-11-13 13:10:00'),(88,19,'/album/1/20131113231000/20131113231003.jpg','生个女儿多好','2013-11-13 13:10:00'),(89,19,'/album/1/20131113231000/20131113231004.jpg','生个女儿多好','2013-11-13 13:10:00'),(90,19,'/album/1/20131113231000/20131113231005.jpg','生个女儿多好','2013-11-13 13:10:01'),(91,19,'/album/1/20131113231000/20131113231006.jpg','生个女儿多好','2013-11-13 13:10:01'),(92,19,'/album/1/20131113231000/20131113231007.jpg','生个女儿多好','2013-11-13 13:10:01'),(93,19,'/album/1/20131113231000/20131113231008.jpg','生个女儿多好','2013-11-13 13:10:01'),(94,19,'/album/1/20131113231000/20131113231009.jpg','生个女儿多好','2013-11-13 13:10:01'),(95,19,'/album/1/20131113231000/20131113231010.jpg','生个女儿多好','2013-11-13 13:10:01'),(96,19,'/album/1/20131113231000/20131113231011.jpg','生个女儿多好','2013-11-13 13:10:01'),(97,19,'/album/1/20131113231000/20131113231012.jpg','生个女儿多好','2013-11-13 13:10:01'),(98,19,'/album/1/20131113231000/20131113231013.jpg','生个女儿多好','2013-11-13 13:10:01'),(99,19,'/album/1/20131113231000/20131113231014.jpg','生个女儿多好','2013-11-13 13:10:01'),(100,19,'/album/1/20131113231000/20131113231015.jpg','生个女儿多好','2013-11-13 13:10:01'),(101,19,'/album/1/20131113231000/20131113231016.jpg','生个女儿多好','2013-11-13 13:10:01'),(102,19,'/album/1/20131113231000/20131113231017.jpg','生个女儿多好','2013-11-13 13:10:01'),(103,19,'/album/1/20131113231000/20131113231019.jpg','生个女儿多好','2013-11-13 13:10:01'),(104,19,'/album/1/20131113231000/20131113231019.jpg','生个女儿多好','2013-11-13 13:10:01'),(105,19,'/album/1/20131113231000/20131113231020.jpg','生个女儿多好','2013-11-13 13:10:01'),(106,19,'/album/1/20131113231000/20131113231021.jpg','生个女儿多好','2013-11-13 13:10:01'),(107,19,'/album/1/20131113231000/20131113231022.jpg','生个女儿多好','2013-11-13 13:10:01'),(108,19,'/album/1/20131113231000/20131113231023.jpg','生个女儿多好','2013-11-13 13:10:01'),(109,19,'/album/1/20131113231000/20131113231024.jpg','生个女儿多好','2013-11-13 13:10:01'),(110,19,'/album/1/20131113231000/20131113231025.jpg','生个女儿多好','2013-11-13 13:10:01'),(111,19,'/album/1/20131113231000/20131113231026.jpg','生个女儿多好','2013-11-13 13:10:02'),(112,19,'/album/1/20131113231000/20131113231027.jpg','生个女儿多好','2013-11-13 13:10:02'),(113,20,'/album/1/20131114200000/20131114200001.jpg','创意壁纸','2013-11-14 02:25:46'),(114,20,'/album/1/20131114200000/20131114200002.jpg','创意壁纸','2013-11-14 02:25:46'),(115,20,'/album/1/20131114200000/20131114200003.jpg','创意壁纸','2013-11-14 02:25:46'),(116,20,'/album/1/20131114200000/20131114200004.jpg','创意壁纸','2013-11-14 02:25:46'),(117,20,'/album/1/20131114200000/20131114200005.jpg','创意壁纸','2013-11-14 02:25:46'),(118,20,'/album/1/20131114200000/20131114200006.jpg','创意壁纸','2013-11-14 02:25:46'),(119,20,'/album/1/20131114200000/20131114200007.jpg','创意壁纸','2013-11-14 02:25:46'),(120,20,'/album/1/20131114200000/20131114200008.jpg','创意壁纸','2013-11-14 02:25:46'),(121,20,'/album/1/20131114200000/20131114200009.jpg','创意壁纸','2013-11-14 02:25:46'),(122,20,'/album/1/20131114200000/20131114200010.jpg','创意壁纸','2013-11-14 02:25:46'),(123,20,'/album/1/20131114200000/20131114200011.jpg','创意壁纸','2013-11-14 02:25:46'),(124,20,'/album/1/20131114200000/20131114200012.jpg','创意壁纸','2013-11-14 02:25:46'),(125,20,'/album/1/20131114200000/20131114200013.jpg','创意壁纸','2013-11-14 02:25:46'),(126,20,'/album/1/20131114200000/20131114200014.jpg','创意壁纸','2013-11-14 02:25:46'),(127,20,'/album/1/20131114200000/20131114200015.jpg','创意壁纸','2013-11-14 02:25:46'),(128,20,'/album/1/20131114200000/20131114200016.jpg','创意壁纸','2013-11-14 02:25:46'),(129,20,'/album/1/20131114200000/20131114200017.jpg','创意壁纸','2013-11-14 02:25:47'),(130,20,'/album/1/20131114200000/20131114200018.jpg','创意壁纸','2013-11-14 02:25:47'),(131,20,'/album/1/20131114200000/20131114200019.jpg','创意壁纸','2013-11-14 02:25:47'),(132,20,'/album/1/20131114200000/20131114200020.jpg','创意壁纸','2013-11-14 02:25:47'),(133,20,'/album/1/20131114200000/20131114200021.jpg','创意壁纸','2013-11-14 02:25:47'),(134,20,'/album/1/20131114200000/20131114200022.jpg','创意壁纸','2013-11-14 02:25:47'),(135,20,'/album/1/20131114200000/20131114200023.jpg','创意壁纸','2013-11-14 02:25:47'),(136,20,'/album/1/20131114200000/20131114200024.jpg','创意壁纸','2013-11-14 02:25:47'),(137,20,'/album/1/20131114200000/20131114200025.jpg','创意壁纸','2013-11-14 02:25:47'),(138,20,'/album/1/20131114200000/20131114200026.jpg','创意壁纸','2013-11-14 02:25:47'),(139,20,'/album/1/20131114200000/20131114200027.jpg','创意壁纸','2013-11-14 02:25:47'),(140,20,'/album/1/20131114200000/20131114200028.jpg','创意壁纸','2013-11-14 02:25:47'),(141,20,'/album/1/20131114200000/20131114200029.jpg','创意壁纸','2013-11-14 02:25:47'),(142,20,'/album/1/20131114200000/20131114200030.jpg','创意壁纸','2013-11-14 02:25:47'),(143,20,'/album/1/20131114200000/20131114200031.jpg','创意壁纸','2013-11-14 02:25:47'),(144,20,'/album/1/20131114200000/20131114200032.jpg','创意壁纸','2013-11-14 02:25:47'),(145,20,'/album/1/20131114200000/20131114200033.jpg','创意壁纸','2013-11-14 02:25:47'),(146,20,'/album/1/20131114200000/20131114200034.jpg','创意壁纸','2013-11-14 02:25:47'),(147,20,'/album/1/20131114200000/20131114200035.jpg','创意壁纸','2013-11-14 02:25:47'),(148,20,'/album/1/20131114200000/20131114200036.jpg','创意壁纸','2013-11-14 02:25:47'),(149,20,'/album/1/20131114200000/20131114200037.jpg','创意壁纸','2013-11-14 02:25:47'),(150,20,'/album/1/20131114200000/20131114200038.jpg','创意壁纸','2013-11-14 02:25:47'),(151,20,'/album/1/20131114200000/20131114200039.jpg','创意壁纸','2013-11-14 02:25:48'),(152,20,'/album/1/20131114200000/20131114200040.jpg','创意壁纸','2013-11-14 02:25:48'),(153,20,'/album/1/20131114200000/20131114200041.jpg','创意壁纸','2013-11-14 02:25:48'),(154,20,'/album/1/20131114200000/20131114200042.jpg','创意壁纸','2013-11-14 02:25:48'),(155,20,'/album/1/20131114200000/20131114200043.jpg','创意壁纸','2013-11-14 02:25:48'),(156,20,'/album/1/20131114200000/20131114200044.jpg','创意壁纸','2013-11-14 02:25:48'),(157,20,'/album/1/20131114200000/20131114200045.jpg','创意壁纸','2013-11-14 03:16:12'),(158,20,'/album/1/20131114200000/20131114200046.jpg','创意壁纸','2013-11-14 03:16:12'),(159,20,'/album/1/20131114200000/20131114200047.jpg','创意壁纸','2013-11-14 03:16:12'),(160,20,'/album/1/20131114200000/20131114200048.jpg','创意壁纸','2013-11-14 03:16:12'),(161,20,'/album/1/20131114200000/20131114200049.jpg','创意壁纸','2013-11-14 03:16:12'),(162,21,'/album/1/20131114210000/20131114210001.jpg','创意壁纸','2013-11-14 03:55:07'),(163,21,'/album/1/20131114210000/20131114210002.jpg','创意壁纸','2013-11-14 03:55:07'),(164,21,'/album/1/20131114210000/20131114210003.jpg','创意壁纸','2013-11-14 03:55:07'),(165,21,'/album/1/20131114210000/20131114210004.jpg','创意壁纸','2013-11-14 03:55:07'),(166,21,'/album/1/20131114210000/20131114210005.jpg','创意壁纸','2013-11-14 03:55:07'),(167,21,'/album/1/20131114210000/20131114210006.jpg','创意壁纸','2013-11-14 03:55:07'),(168,21,'/album/1/20131114210000/20131114210007.jpg','创意壁纸','2013-11-14 03:55:07'),(169,21,'/album/1/20131114210000/20131114210008.jpg','创意壁纸','2013-11-14 03:55:07'),(170,21,'/album/1/20131114210000/20131114210009.jpg','创意壁纸','2013-11-14 03:55:07'),(171,21,'/album/1/20131114210000/20131114210010.jpg','创意壁纸','2013-11-14 03:55:07'),(172,21,'/album/1/20131114210000/20131114210011.jpg','创意壁纸','2013-11-14 03:55:08'),(173,21,'/album/1/20131114210000/20131114210012.jpg','创意壁纸','2013-11-14 03:55:08'),(174,21,'/album/1/20131114210000/20131114210013.jpg','创意壁纸','2013-11-14 03:55:08'),(175,21,'/album/1/20131114210000/20131114210014.jpg','创意壁纸','2013-11-14 03:55:08'),(176,21,'/album/1/20131114210000/20131114210015.jpg','创意壁纸','2013-11-14 03:55:08'),(177,21,'/album/1/20131114210000/20131114210016.jpg','创意壁纸','2013-11-14 03:55:08'),(178,21,'/album/1/20131114210000/20131114210017.jpg','创意壁纸','2013-11-14 03:55:08'),(179,21,'/album/1/20131114210000/20131114210018.jpg','创意壁纸','2013-11-14 03:55:08'),(180,21,'/album/1/20131114210000/20131114210019.jpg','创意壁纸','2013-11-14 03:55:08'),(181,21,'/album/1/20131114210000/20131114210020.jpg','创意壁纸','2013-11-14 03:55:08'),(182,21,'/album/1/20131114210000/20131114210021.jpg','创意壁纸','2013-11-14 03:55:08'),(183,21,'/album/1/20131114210000/20131114210022.jpg','创意壁纸','2013-11-14 03:55:08'),(184,21,'/album/1/20131114210000/20131114210023.jpg','创意壁纸','2013-11-14 03:55:08'),(185,21,'/album/1/20131114210000/20131114210024.jpg','创意壁纸','2013-11-14 03:55:08'),(186,21,'/album/1/20131114210000/20131114210025.jpg','创意壁纸','2013-11-14 03:55:08'),(187,21,'/album/1/20131114210000/20131114210026.jpg','创意壁纸','2013-11-14 03:55:08'),(188,21,'/album/1/20131114210000/20131114210027.jpg','创意壁纸','2013-11-14 03:55:08'),(189,21,'/album/1/20131114210000/20131114210028.jpg','创意壁纸','2013-11-14 03:55:08'),(190,21,'/album/1/20131114210000/20131114210029.jpg','创意壁纸','2013-11-14 03:55:08'),(191,21,'/album/1/20131114210000/20131114210030.jpg','创意壁纸','2013-11-14 03:55:08');
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
  `pic_path` varchar(40) DEFAULT NULL,
  `order_num` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_index_photo`
--

LOCK TABLES `t_index_photo` WRITE;
/*!40000 ALTER TABLE `t_index_photo` DISABLE KEYS */;
INSERT INTO `t_index_photo` VALUES (13,'/index/album/20131110110000.jpg',1),(14,'/index/album/20131110110001.jpg',2),(15,'/index/album/20131110110002.jpg',3),(16,'/index/album/20131110110003.jpg',4),(17,'/index/album/20131110110004.jpg',5);
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
  `pic_path` varchar(30) DEFAULT NULL,
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
INSERT INTO `t_person` VALUES (1,'小王','xiaowang','/index/head/20131111100001.jpg','内外兼修',1,'男','已婚','大连理工大学(软件工程-日语强化)','北京搜狐公司-无线事业部','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊<br />bbbbbbbbbbbbbbbbbbbbbbbb','1986-11-10'),(2,'纪饼饼','jibingbing','/index/head/20131111100002.jpg','放纵不羁爱自由',2,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `content` mediumtext,
  `order_num` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person_about`
--

LOCK TABLES `t_person_about` WRITE;
/*!40000 ALTER TABLE `t_person_about` DISABLE KEYS */;
INSERT INTO `t_person_about` VALUES (1,1,'关于我','现就职于北京搜狐公司-无线事业部，程序猿一枚，喜欢玄幻小说、打篮球、听音乐。做饭特别好吃。。。',1),(2,1,'小标签','java,python,javaee,spring,spring mvc,hibernate,mybatis,maven,oracle,mysql,linux,shell,hadoop,hive,pig,memcached,nginx,zabbix,git,svn,jquery,css,80后,处女座,准爸爸',2),(4,1,'关于本站','一直以来都想写个自己的网站，没有什么原因，可能就是希望自己多年来的学习工作有个成果吧。<br />\n域名早就注册了，但是一直没腾出时间弄，拖延症越来越严重了。。。年初给自己定的目标就是一定要把这个网站弄出来，虽然期间发生重大人生变故，结婚了。。。，但是趁着这股喜悦劲，终于完成了。<br />\n编码使用了java、spring、mysql等，功能比较简单，代码量不大，但是花了大量时间调特么css!半吊子就是不行。<br />\n本来想使用<a href=\"http://wordpress.com/\" target=\"_blank\">wordpress</a>或者github上<a href=\"https://github.com/plusjade/jekyll-bootstrap\" target=\"_blank\">jekyll-bootstrap</a>搭一个，但是还想弄个后台，想了想还是自己写吧<br />\n如果发现bug或者有什么建议，可以qq、邮件告诉我，非常感谢！<br />\n最后说一句，谁要是做压力测试，我会对着你的ip诅咒你的！',3);
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
  `content` varchar(1000) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '日期',
  `pic_path` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person_diary`
--

LOCK TABLES `t_person_diary` WRITE;
/*!40000 ALTER TABLE `t_person_diary` DISABLE KEYS */;
INSERT INTO `t_person_diary` VALUES (6,1,'第一个心情日记','2013-08-11 12:21:30',NULL),(7,1,'好心酸。。。','2013-10-15 14:13:06','/diary/1/20131110110001.jpg'),(10,1,'1、你是否同意有效且简单易读的代码比起大堆的注释来说更为重要？<br />\n2、你喜欢Git还是SVN？<br />\n3、你是否喜欢使用print语句来调试自己的程序？<br />\n4、但凡做一个项目就要从画UML图入手的行为是不是很傻逼？<br />\n5、在每个项目中都严格地遵从设计模式的人是不是很蛋疼？<br />\n6、你喜欢Vim还是emacs？<br />\n7、C++是有史以来最烂的语言之一？<br />\n8、JAVA也差不多？<br />\n9、Unit Testing won\'t help you write good code？<br />\n以上是哥准备结婚之前必须要问对方的问题，这些问题的答案对于我能否下决心去结婚是非常重要的。我并不是说这些答案有一定的标准，例如总是有人很喜欢JAVA和C++，当然也有人觉得php和python很烂，这些问题虽然有的答案在我们看来已经明显不过了，但是总是有一些人会持有不一样的想法，并且觉得自己的想法是再明显不过了。对于这种人，你大可以不必去理会他们。但是需要注意到的是，你需要非常在意你的结婚对象的想法。如果你们在这么基本的问题上的意见都是相左的，那又如何保证你们的婚后婚姻质量的和谐呢？<br />\n好了，说了这么多哥准备谈一下我个人对于这些问题的标准，并且要再次强调这是十分重要的。\n尼玛如果有一个妹子竟然对于这些东西有个清晰的看法，而不是“What the fuck you are talking about？”，这样的妹子还是趁早分手吧！！！！家里有一个修电脑的还不够么？一个屌丝再娶个女屌丝这得是有多悲剧。<br />','2013-11-12 13:10:30',NULL),(11,1,'小撒，小撒你冷静点，冷静点!，小撒你听我说，我是岩松，我是岩松啊！我操你再这样我真还手了啊！','2013-11-13 12:06:38',NULL);
/*!40000 ALTER TABLE `t_person_diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_person_share`
--

DROP TABLE IF EXISTS `t_person_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_person_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `pic_path` varchar(30) DEFAULT NULL,
  `share_comment` varchar(80) DEFAULT NULL,
  `share_link` mediumtext,
  `share_source` varchar(100) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person_share`
--

LOCK TABLES `t_person_share` WRITE;
/*!40000 ALTER TABLE `t_person_share` DISABLE KEYS */;
INSERT INTO `t_person_share` VALUES (85,1,'/share/1/20131112200001.jpg','当心看傻眼！全球吐烟高手们超强吐烟绝技大PK，如变魔术般，太神奇了','<embed src=\"http://player.youku.com/player.php/sid/XMzExMjg2NTY0/v.swf\" allowFullScreen=\"true\" quality=\"high\" width=\"100%\" height=\"450\" align=\"middle\" allowScriptAccess=\"always\" type=\"application/x-shockwave-flash\"></embed>','http://v.youku.com/v_show/id_XMzExMjg2NTY0.html','2013-11-13 17:05:17'),(86,1,'/share/1/20131112200002.jpg','泰森拳击生涯精彩KO集锦','<embed src=\"http://player.youku.com/player.php/sid/XMzU0NTM4NDky/v.swf\" allowFullScreen=\"true\" quality=\"high\" width=\"100%\" height=\"450\" align=\"middle\" allowScriptAccess=\"always\" type=\"application/x-shockwave-flash\"></embed>','http://v.youku.com/v_show/id_XMzU0NTM4NDky.html','2013-11-13 17:05:17'),(87,1,'/share/1/20131112200003.jpg','Tony Jaa超级功夫视频','<embed src=\"http://player.youku.com/player.php/sid/XNTMzODA5MDg=/v.swf\" allowFullScreen=\"true\" quality=\"high\" width=\"100%\" height=\"450\" align=\"middle\" allowScriptAccess=\"always\" type=\"application/x-shockwave-flash\"></embed>','http://v.youku.com/v_show/id_XNTMzODA5MDg=.html','2013-11-13 17:05:17'),(88,1,'/share/1/20131112200004.jpg','两个上海人打架，一个东北人解说 某S第二部','<embed src=\"http://player.youku.com/player.php/sid/XMzA3NDMzMjk2/v.swf\" allowFullScreen=\"true\" quality=\"high\" width=\"100%\" height=\"450\" align=\"middle\" allowScriptAccess=\"always\" type=\"application/x-shockwave-flash\"></embed>','http://v.youku.com/v_show/id_XMzA3NDMzMjk2.html','2013-11-13 17:05:18'),(89,1,'/share/1/20131112200005.jpg','男人超艰难的选择之《到底娶哪个妹纸回家》给笑崩了！这确实是一个！艰！难！的！选！择！！！','<embed src=\"http://player.56.com/v_OTkyMjIzNTM.swf\" type=\"application/x-shockwave-flash\" width=\"100%\" height=\"450\" allowfullscreen=\"true\" allownetworking=\"all\" allowscriptaccess=\"always\"></embed>','http://www.56.com/u76/v_OTkyMjIzNTM.html','2013-11-13 17:05:18'),(90,1,'/share/1/20131112200006.jpg','吊炸天！NBA2012-13赛季百大过人！！片头太带感！！','<embed src=\"http://player.56.com/v_OTkwODgxNDI.swf\" type=\"application/x-shockwave-flash\" width=\"100%\" height=\"450\" allowfullscreen=\"true\" allownetworking=\"all\" allowscriptaccess=\"always\"></embed>','http://www.56.com/u65/v_OTkwODgxNDI.html','2013-11-13 17:05:18'),(91,1,'/share/1/20131112200007.jpg','甄子丹大战李小龙--国人原创动画《武之梦》','<embed src=\"http://www.tudou.com/l/sDABg2lTnI0/&resourceId=0_05_05_99&iid=178356840&bid=05/v.swf\" type=\"application/x-shockwave-flash\" allowscriptaccess=\"always\" allowfullscreen=\"true\" wmode=\"opaque\" width=\"100%\" height=\"450\"></embed>','http://www.tudou.com/listplay/sDABg2lTnI0/dU8Z-og8_4I.html?bid=03&pid=03&resourceId=0_03_05_03','2013-11-13 17:05:18'),(92,1,'/share/1/20131112200008.jpg','Best of Dizzy s NBA Impersonations','<embed src=\"http://player.56.com/v_OTM4OTE1NTY.swf\" type=\"application/x-shockwave-flash\" width=\"100%\" height=\"450\" allowfullscreen=\"true\" allownetworking=\"all\" allowscriptaccess=\"always\"></embed>','http://www.56.com/u55/v_OTM4OTE1NTY.html','2013-11-13 17:05:18'),(93,1,'/share/1/20131112200009.jpg','小红帽的逆袭 ','<embed src=\"http://player.56.com/cpm_ODg1ODg4OTI.swf\" type=\"application/x-shockwave-flash\" width=\"100%\" height=\"450\" allowfullscreen=\"true\" allownetworking=\"all\" allowscriptaccess=\"always\"></embed>','http://www.56.com/u95/v_ODg1ODg4OTI.html','2013-11-13 17:05:18'),(94,1,'/share/1/20131112200010.jpg','小红帽系列之《白雪公主战记》！！！','<embed src=\"http://player.56.com/cpm_ODk2NDY5NTA.swf\" type=\"application/x-shockwave-flash\" width=\"100%\" height=\"450\" allowfullscreen=\"true\" allownetworking=\"all\" allowscriptaccess=\"always\"></embed>','http://www.56.com/u41/v_ODk2NDY5NTA.html','2013-11-13 17:05:18'),(95,1,'/share/1/20131112200011.jpg','哈林摇 （屌丝摇）合集 Youtube最火爆之一3分57高能反应。。 18岁以下请勿欣赏','<embed src=\"http://player.56.com/v_ODgyODYyNTE.swf\" type=\"application/x-shockwave-flash\" width=\"100%\" height=\"450\" allowfullscreen=\"true\" allownetworking=\"all\" allowscriptaccess=\"always\"></embed>','http://www.56.com/u86/v_ODgyODYyNTE.html','2013-11-14 02:00:24'),(96,1,'/share/1/20131112200012.jpg','《天天向上》倪萍毒舌赵忠祥，全集神吐槽！','<object id=\"swf_1384335892756\" height=\"450\" width=\"100%\" type=\"application/x-shockwave-flash\" data=\"http://player.video.qiyi.com/6444b7fa51874f9a85a19adfad3c629c/0/0/zo20131112200014ngyi/20130303/6cab6ff938f47fbc.swf-albumId=338964-tvId=410280-isPurchase=0-cnId=6\" style=\"\"><param name=\"quality\" value=\"high\" /><param name=\"allowScriptAccess\" value=\"always\" /><param name=\"wMode\" value=\"window\" /><param name=\"align\" value=\"middle\" /><param name=\"bgcolor\" value=\"#000000\" /><param name=\"swLiveConnect\" value=\"true\" /><param name=\"loop\" value=\"true\" /><param name=\"play\" value=\"true\" /><param name=\"DeviceFont\" value=\"false\" /><param name=\"allowFullScreen\" value=\"true\" /><param name=\"menu\" value=\"true\" /></object>','http://www.iqiyi.com/zongyi/20130303/6cab6ff938f47fbc.html?share_sTime=0-share_eTime=868','2013-11-13 17:05:18'),(97,1,'/share/1/20131112200013.jpg','妹子都要被他急死了,啊 ','<embed src=\"http://player.56.com/v_ODY4MTIzMzM.swf\" type=\"application/x-shockwave-flash\" width=\"100%\" height=\"450\" allowfullscreen=\"true\" allownetworking=\"all\" allowscriptaccess=\"always\"></embed>','http://www.56.com/u80/v_ODY4MTIzMzM.html','2013-11-13 17:05:18'),(98,1,'/share/1/20131112200014.jpg','39平米变形公寓：集八间独立功能的房间于一身','<embed src=\"http://player.56.com/cpm_ODQ5ODU2OTU.swf\" type=\"application/x-shockwave-flash\" width=\"100%\" height=\"450\" allowfullscreen=\"true\" allownetworking=\"all\" allowscriptaccess=\"always\"></embed>','http://www.56.com/u58/v_ODQ5ODU2OTU.html','2013-11-13 17:05:18'),(99,1,'/share/1/20131112200015.jpg','点歌电台突然停电了怎么办?临时工各种神救场,最后的ＭＪ亮暴了','<embed src=\"http://player.56.com/v_Nzc1ODYxMDQ.swf\" type=\"application/x-shockwave-flash\" width=\"100%\" height=\"450\" allowfullscreen=\"true\" allownetworking=\"all\" allowscriptaccess=\"always\"></embed>','http://www.56.com/u35/v_Nzc1ODYxMDQ.html','2013-11-13 17:05:18'),(100,1,'/share/1/20131112200016.jpg','《爱情公寓3》精华片段：决战紫禁之巅','<object width=\"100%\" height=\"450\"><param name=\"movie\" value=\"http://share.vrs.sohu.com/760315/v.swf&topBar=1&autoplay=false&plid=5026527&pub_catecode=&from=page\"></param><param name=\"allowFullScreen\" value=\"true\"></param><param name=\"allowscriptaccess\" value=\"always\"></param><param name=\"wmode\" value=\"Transparent\"></param><embed width=\"100%\" height=\"450\" wmode=\"Transparent\" allowfullscreen=\"true\" allowscriptaccess=\"always\" quality=\"high\" src=\"http://share.vrs.sohu.com/760315/v.swf&topBar=1&autoplay=false&plid=5026527&pub_catecode=&from=page\" type=\"application/x-shockwave-flash\"/></embed></object>','http://tv.sohu.com/20120806/n349993701.shtml','2013-11-13 17:05:18'),(101,1,'/share/1/20131112200017.jpg','《上海滩》版高考笑颠全场 雷人万千高考影视大集锦','<object id=\"swf_1384336370047\" width=\"100%\" height=\"450\" type=\"application/x-shockwave-flash\" data=\"http://player.video.qiyi.com/0d060b5018ce44b385654eae2644dbd9/0/0/zongyi/20120606/539e5604443fe6e9.swf-albumId=182807-tvId=209208-isPurchase=0-cnId=6\" style=\"\"><param name=\"quality\" value=\"high\" /><param name=\"allowScriptAccess\" value=\"always\" /><param name=\"wMode\" value=\"window\" /><param name=\"align\" value=\"middle\" /><param name=\"bgcolor\" value=\"#000000\" /><param name=\"swLiveConnect\" value=\"true\" /><param name=\"loop\" value=\"true\" /><param name=\"play\" value=\"true\" /><param name=\"DeviceFont\" value=\"false\" /><param name=\"allowFullScreen\" value=\"true\" /><param name=\"menu\" value=\"true\" /></object>','http://www.iqiyi.com/zongyi/20120606/539e5604443fe6e9.html','2013-11-13 17:05:18'),(102,1,'/share/1/20131112200018.jpg','你竟然花了三个小时看完泰坦尼克？？？？？哥今天5秒带你看完！！！不要眨眼不然就大结局了！！！！！！','<embed src=\"http://www.tudou.com/v/NDdWQza-4rA/&bid=05&resourceId=0_05_05_99/v.swf\" type=\"application/x-shockwave-flash\" allowscriptaccess=\"always\" allowfullscreen=\"true\" wmode=\"opaque\" width=\"100%\" height=\"450\"></embed>','http://www.tudou.com/programs/view/NDdWQza-4rA/?resourceId=93670349/_03_02_03','2013-11-13 17:05:18'),(103,1,'/share/1/20131112200019.jpg','爆笑东北话版Take me to your heart','<object id=\"ssss\" width=\"100%\" height=\"370\" ><param name=\"allowScriptAccess\" value=\"always\" /><embed pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://you.video.sina.com.cn/api/sinawebApi/outplayrefer.php/vid=68423796_2551838030_bEvjGio/CWXK+l1lHz2stqlF+6xCpv2xhGixvlOsJgZZVgyYJMXNb9sP5CvVB8ZE5yoUEJU5ffok1Bokbg/s.swf\" type=\"application/x-shockwave-flash\" name=\"ssss\" allowFullScreen=\"true\" allowScriptAccess=\"always\" width=\"100%\" height=\"450\"></embed></object>','http://video.sina.com.cn/v/b/68423796-2551838030.html','2013-11-13 17:05:18'),(104,1,'/share/1/20131112200020.jpg','灌篮高手片尾曲现场版 世界が終るまでは...(織田哲郎 上杉昇 ASL2012)','<embed src=\"http://player.56.com/cpm_OTA0NjIxMDk.swf\" type=\"application/x-shockwave-flash\" width=\"100%\" height=\"450\" allowfullscreen=\"true\" allownetworking=\"all\" allowscriptaccess=\"always\"></embed>','http://www.56.com/u56/v_OTA0NjIxMDk.html','2013-11-13 17:05:18'),(105,1,'/share/1/20131112200021.jpg','单车 2006香港演唱会版 -- 陈奕迅','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F92639_16_9_chengyixun_danche_GetALife_2006xiangangyanchanghui.flv%3Fsc%3D4a651c1c1a05fdb6%26br%3D546&amp;videoId=25009&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/25009','2013-11-13 17:05:19'),(106,1,'/share/1/20131112200022.jpg','淘汰 现场版 中文字幕 -- 陈奕迅','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=so.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhc.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2FDD850140CF6A8B0F0D472F8213858902.flv%3Fsc%3D7ec0e6239ee5f0a3%26br%3D779&amp;videoId=753058&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/753058','2013-11-13 17:05:19'),(107,1,'/share/1/20131112200023.jpg','钟无艳 演唱会版 -- 谢安琪','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=so.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhc.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F25EC013A3F0236DDAC5ECF13EC082470.flv%3Fsc%3D82dc252a870d8c6d%26br%3D779&amp;videoId=524959&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/524959','2013-11-13 17:05:19'),(108,1,'/share/1/20131112200024.jpg','Forgot About Dre -- Eminem & Dr. Dre','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=so.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhc.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2FF42501412C472455AFECE54BE36BE5EC.flv%3Fsc%3D3abaaa129050a2dc%26br%3D777&amp;videoId=30530&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/30530','2013-11-13 17:05:19'),(109,1,'/share/1/20131112200025.jpg','Beautiful 现场版 中英字幕 -- Eminem','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F8E0A012F6933888A8A185F1998388979.flv%3Fsc%3D25612bae0f86662d%26br%3D750&amp;videoId=163020&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\"> ','http://v.yinyuetai.com/video/163020','2013-11-13 17:05:19'),(110,1,'/share/1/20131112200026.jpg','No Love 中英字幕版-- Eminem','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhc.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F33B30139D7DC973323DBEDDAA2250CED.flv%3Fsc%3D816b27b2994b968a%26br%3D773&amp;videoId=513665&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/513665','2013-11-13 17:05:19'),(111,1,'/share/1/20131112200027.jpg','Lose Yourself 现场版 -- Eminem','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=so.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhc.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F0867013508BCAB553069DA61BEBCBC59.flv%3Fsc%3Dd9607adbb329a810%26br%3D575&amp;videoId=348162&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/348162','2013-11-13 17:05:19'),(112,1,'/share/1/20131112200028.jpg','Whataya Want From Me (Conan Show)现场版-- Adam Lambert','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=so.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F92C00126122CE8C4316D4C0420ACAF22.flv%3Fsc%3Dc5542577a7356dd2%26br%3D543&amp;videoId=24518&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/24518','2013-11-13 17:05:19'),(113,1,'/share/1/20131112200029.jpg','Apologize 07年现场版-- One Republic','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F102103_OneRepublic_Apologize_Live07.flv%3Fsc%3Db62363b6d06d3533%26br%3D599&amp;videoId=12621&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/12621','2013-11-13 17:05:19'),(114,1,'/share/1/20131112200030.jpg','All Rise 现场版 -- Blue','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=so.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhc.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2FB1B201424576794FB12CDA5E77D6BF7A.flv%3Fsc%3Da90bf9f030a4d577%26br%3D780&amp;videoId=40975&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/40975','2013-11-13 17:05:19'),(115,1,'/share/1/20131112200031.jpg','Moments (A-nation 2013 Stadium Fes) 现场版 中日字幕 -- 滨崎步','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=www.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhc.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2FA2920141A1AB4CF1274076B5B1774288.flv%3Fsc%3D6f76365aef7bf1e2%26br%3D779&amp;videoId=783241&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/783241','2013-11-13 17:05:19'),(116,1,'/share/1/20131112200032.jpg','M 现场版 -- 滨崎步','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F2A88012F244F130FA5E75A2F85DB3F1A.flv%3Fsc%3D4dd9f978c56420ea%26br%3D746&amp;videoId=156090&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/156090','2013-11-13 17:05:19'),(117,1,'/share/1/20131112200033.jpg','STEP You 2009-2010跨年演唱会版-- 滨崎步','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=so.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2FA697012A7BB8F7A54513FF622C12D8A0.flv%3Fsc%3D003dd269c8be6758%26br%3D743&amp;videoId=68028&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/68028','2013-11-13 17:05:19'),(118,1,'/share/1/20131112200034.jpg','好きで 好きで 好きで 现场版 -- 倖田来未','<embed width=\"100%\" height=\"450\" src=\"http://s.yytcdn.com/swf/common/playerloader.$8ba664.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=so.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhc.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2FB075013AAF23A782C5F8D3BBAC2CE153.flv%3Fsc%3D330fabb348923d31%26br%3D778&amp;videoId=539880&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%248ba664.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba664.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/539880','2013-11-13 17:05:19');
/*!40000 ALTER TABLE `t_person_share` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-15 19:45:08
