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
  `album_cover` varchar(50) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_num` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_album`
--

LOCK TABLES `t_album` WRITE;
/*!40000 ALTER TABLE `t_album` DISABLE KEYS */;
INSERT INTO `t_album` VALUES (13,1,'朕','/album/1/20131110100000/20131110100001.jpg','2013-11-11 14:19:02',1),(14,1,'兄弟姐妹','/album/1/20131110100010/20131110100011.jpg','2013-11-11 16:06:53',3),(15,1,'阿拉斯加俊','/album/1/20131110100020/20131110100021.jpg','2013-11-11 16:07:00',4),(16,1,'小外甥女','/album/1/20131110100030/20131110100031.jpg','2013-11-11 16:07:06',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_album_photo`
--

LOCK TABLES `t_album_photo` WRITE;
/*!40000 ALTER TABLE `t_album_photo` DISABLE KEYS */;
INSERT INTO `t_album_photo` VALUES (32,13,'/album/1/20131110100000/20131110100001.jpg','朕','2013-11-11 15:03:50'),(33,13,'/album/1/20131110100000/20131110100002.jpg','又是朕','2013-11-11 15:03:50'),(34,13,'/album/1/20131110100000/20131110100003.jpg','还是朕','2013-11-11 15:03:50'),(35,14,'/album/1/20131110100010/20131110100011.jpg','我的兄弟姐妹','2013-11-11 15:07:32'),(36,14,'/album/1/20131110100010/20131110100012.jpg','我的兄弟姐妹','2013-11-11 15:07:32'),(37,14,'/album/1/20131110100010/20131110100013.jpg','我的兄弟姐妹','2013-11-11 15:07:32'),(38,14,'/album/1/20131110100010/20131110100014.jpg','我的兄弟姐妹','2013-11-11 15:07:32'),(39,15,'/album/1/20131110100020/20131110100021.jpg','彪乎乎的俊俊','2013-11-11 15:08:50'),(40,15,'/album/1/20131110100020/20131110100022.jpg','彪乎乎的俊俊','2013-11-11 15:08:50'),(41,15,'/album/1/20131110100020/20131110100023.jpg','彪乎乎的俊俊','2013-11-11 15:08:50'),(42,15,'/album/1/20131110100020/20131110100024.jpg','彪乎乎的俊俊','2013-11-11 15:08:50'),(43,15,'/album/1/20131110100020/20131110100025.jpg','彪乎乎的俊俊','2013-11-11 15:08:50'),(44,16,'/album/1/20131110100030/20131110100031.jpg','喜欢姨夫胜过小姨的外甥女','2013-11-11 15:53:50'),(45,16,'/album/1/20131110100030/20131110100032.jpg','喜欢姨夫胜过小姨的外甥女','2013-11-11 15:53:50'),(46,16,'/album/1/20131110100030/20131110100033.jpg','喜欢姨夫胜过小姨的外甥女','2013-11-11 15:53:50');
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
INSERT INTO `t_person` VALUES (1,'小王','xiaowang','/index/head/20131111100001.jpg','凡所有像,皆为虚妄',1,'男','已婚','大连理工大学(软件工程-日语强化)','北京搜狐公司-无线事业部','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊<br />bbbbbbbbbbbbbbbbbbbbbbbb','1986-11-10'),(2,'纪饼饼','jibingbing','/index/head/20131111100002.jpg','放纵不羁爱自由',2,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `pic_path` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person_diary`
--

LOCK TABLES `t_person_diary` WRITE;
/*!40000 ALTER TABLE `t_person_diary` DISABLE KEYS */;
INSERT INTO `t_person_diary` VALUES (6,1,'第一个心情日记','2013-08-11 12:21:30',NULL),(7,1,'可爱的外甥女','2013-10-15 14:13:06','/diary/1/20131110110001.jpg'),(8,1,'功能全部开发完毕!','2013-11-10 02:09:33',NULL);
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
  `share_comment` varchar(50) DEFAULT NULL,
  `share_link` text,
  `share_source` varchar(40) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person_share`
--

LOCK TABLES `t_person_share` WRITE;
/*!40000 ALTER TABLE `t_person_share` DISABLE KEYS */;
INSERT INTO `t_person_share` VALUES (1,1,'/share/1.jpg','忽然之间 & 广岛之恋 2011回蔚世界巡回演唱会台北小巨蛋站 现场版 -- 莫文蔚','<embed width=\"100%\" height=\"100%\" src=\"http://s.yytcdn.com/swf/common/playerloader.$5d384c.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F47832_43_mowenwei_huranzhijian.flv%3Fsc%3D096492c5e9e9c89c%26br%3D763&amp;videoId=51972&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%24d12448.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba48b.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/51972','2013-11-09 12:20:59'),(2,1,'/share/2.jpg','威尼斯迷路 -- 许慧欣','<embed width=\"100%\" height=\"100%\" src=\"http://s.yytcdn.com/swf/common/playerloader.$5d384c.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F47832_43_mowenwei_huranzhijian.flv%3Fsc%3D096492c5e9e9c89c%26br%3D763&amp;videoId=51972&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%24d12448.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba48b.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/51972','2013-11-09 12:20:59'),(3,1,'/share/3.jpg','魔鬼中的天使 To My Love音乐会 字幕版 -- 田馥甄','<embed width=\"100%\" height=\"100%\" src=\"http://s.yytcdn.com/swf/common/playerloader.$5d384c.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F47832_43_mowenwei_huranzhijian.flv%3Fsc%3D096492c5e9e9c89c%26br%3D763&amp;videoId=51972&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%24d12448.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba48b.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/51972','2013-11-09 12:20:59'),(4,1,'/share/4.jpg','My Last Serenade -- Joey Moe','<embed width=\"100%\" height=\"100%\" src=\"http://s.yytcdn.com/swf/common/playerloader.$5d384c.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F47832_43_mowenwei_huranzhijian.flv%3Fsc%3D096492c5e9e9c89c%26br%3D763&amp;videoId=51972&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%24d12448.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba48b.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/51972','2013-11-09 12:20:59'),(5,1,'/share/5.jpg','Bounce Totp 现场版 03/08/02 -- Sarah Connor','<embed width=\"100%\" height=\"100%\" src=\"http://s.yytcdn.com/swf/common/playerloader.$5d384c.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F47832_43_mowenwei_huranzhijian.flv%3Fsc%3D096492c5e9e9c89c%26br%3D763&amp;videoId=51972&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%24d12448.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba48b.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/51972','2013-11-09 12:20:59'),(6,1,'/share/6.jpg','忽然之间 & 广岛之恋 2011回蔚世界巡回演唱会台北小巨蛋站 现场版 -- 莫文蔚','<embed width=\"100%\" height=\"100%\" src=\"http://s.yytcdn.com/swf/common/playerloader.$5d384c.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F47832_43_mowenwei_huranzhijian.flv%3Fsc%3D096492c5e9e9c89c%26br%3D763&amp;videoId=51972&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%24d12448.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba48b.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/51972','2013-11-09 12:20:59'),(7,1,'/share/7.jpg','忽然之间 & 广岛之恋 2011回蔚世界巡回演唱会台北小巨蛋站 现场版 -- 莫文蔚','<embed width=\"100%\" height=\"100%\" src=\"http://s.yytcdn.com/swf/common/playerloader.$5d384c.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F47832_43_mowenwei_huranzhijian.flv%3Fsc%3D096492c5e9e9c89c%26br%3D763&amp;videoId=51972&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%24d12448.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba48b.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/51972','2013-11-09 12:20:59'),(8,1,'/share/8.jpg','忽然之间 & 广岛之恋 2011回蔚世界巡回演唱会台北小巨蛋站 现场版 -- 莫文蔚','<embed width=\"100%\" height=\"100%\" src=\"http://s.yytcdn.com/swf/common/playerloader.$5d384c.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F47832_43_mowenwei_huranzhijian.flv%3Fsc%3D096492c5e9e9c89c%26br%3D763&amp;videoId=51972&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%24d12448.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba48b.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/51972','2013-11-09 12:20:59'),(9,1,'/share/9.jpg','忽然之间 & 广岛之恋 2011回蔚世界巡回演唱会台北小巨蛋站 现场版 -- 莫文蔚','<embed width=\"100%\" height=\"100%\" src=\"http://s.yytcdn.com/swf/common/playerloader.$5d384c.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F47832_43_mowenwei_huranzhijian.flv%3Fsc%3D096492c5e9e9c89c%26br%3D763&amp;videoId=51972&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%24d12448.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba48b.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/51972','2013-11-09 12:20:59'),(10,1,'/share/10.jpg','忽然之间 & 广岛之恋 2011回蔚世界巡回演唱会台北小巨蛋站 现场版 -- 莫文蔚','<embed width=\"100%\" height=\"100%\" src=\"http://s.yytcdn.com/swf/common/playerloader.$5d384c.swf\" name=\"yinyuetaiplayer\" id=\"yinyuetaiplayer\" wmode=\"window\" allowscriptaccess=\"always\" allowfullscreen=\"true\" bgcolor=\"#000000\" flashvars=\"local=true&amp;amovid=5f4ffbc12418024&amp;refererdomain=i.yinyuetai.com&amp;hcVideoUrl=http%3A%2F%2Fhcflv.yinyuetai.com%2Fuploads%2Fvideos%2Fcommon%2F47832_43_mowenwei_huranzhijian.flv%3Fsc%3D096492c5e9e9c89c%26br%3D763&amp;videoId=51972&amp;showlyrics=false&amp;capturevideoavailable=false&amp;sendsnaplog=true&amp;usepromptbar=true&amp;popupwin=true&amp;markerlocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmarker.%24d12448.swf&amp;preamovid=true&amp;swflocation=http%3A%2F%2Fs.yytcdn.com%2Fswf%2Fcommon%2Fmvplayer.%248ba48b.swf\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\">','http://v.yinyuetai.com/video/51972','2013-11-09 12:20:59');
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

-- Dump completed on 2013-11-12  0:17:17