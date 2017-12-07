-- MySQL dump 10.13  Distrib 5.5.44, for Linux (x86_64)
--
-- Host: 10.126.166.32    Database: jcweb
-- ------------------------------------------------------
-- Server version	5.5.35.t15-log

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
-- Table structure for table `db_ads`
--

DROP TABLE IF EXISTS `db_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(200) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `newdesc` varchar(400) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_ads`
--

LOCK TABLES `db_ads` WRITE;
/*!40000 ALTER TABLE `db_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_case`
--

DROP TABLE IF EXISTS `db_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newdesc` varchar(300) DEFAULT NULL,
  `newcontent` text,
  `img` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `imgs` varchar(300) DEFAULT NULL,
  `putman` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `putout` tinyint(1) DEFAULT '1',
  `hot` tinyint(1) DEFAULT '1',
  `top` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `page_tit` varchar(200) DEFAULT NULL,
  `page_key` varchar(400) DEFAULT NULL,
  `page_desc` varchar(600) DEFAULT NULL,
  `hit` int(9) DEFAULT '1',
  `url` varchar(50) DEFAULT '#',
  `ontime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_case`
--

LOCK TABLES `db_case` WRITE;
/*!40000 ALTER TABLE `db_case` DISABLE KEYS */;
INSERT INTO `db_case` VALUES (1,15,'-9-','爱婚礼创意空间','','<p><img src=\"/Web/UploadFile/Bupload/image/20170214/1487060605666863.jpg\" alt=\"爱婚礼创意空间|网站建设\" title=\"爱婚礼创意空间|网站建设\"/></p>','/Web/UploadFile/Case/Small/2017-02-14/58a2c0d31ed13.jpg',NULL,'|','广州网站建设','2017-02-13 10:41:26',0,1,1,1,0,'爱婚礼创业空间','爱婚礼创业空间','爱婚礼创业空间',75,'http://www.ahlcn.com/','2013-12-04'),(2,16,'-9-','广悦律师事务所','','<p><img src=\"/Web/UploadFile/Bupload/image/20170214/1487061804679170.jpg\" alt=\"广悦鸿鼎|网站建设\"/></p>','/Web/UploadFile/Case/Small/2017-02-14/58a2c3550d356.jpg',NULL,'|','广州网站建设','2017-02-14 16:42:01',0,1,1,1,0,'广悦律师事务所','广悦律师事务所','广悦律师事务所',89,'http://www.grandholders.com/','2015-10-07'),(3,14,'-9-','赤鲸公共艺术','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489207862139053.jpg\" alt=\"1489207862139053.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c38547110ce.jpg',NULL,'|','admin','2017-03-11 13:03:52',0,1,1,1,0,'赤鲸公共艺术','赤鲸公共艺术','赤鲸公共艺术',36,'http://www.cj-ys.com/','2013-08-20'),(4,1,'-9-','阿米巴','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489210430450354.jpg\" alt=\"1489210430450354.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c38c594c5cd.jpg',NULL,'|','admin','2017-03-11 13:31:29',0,1,1,1,0,'阿米巴','阿米巴','阿米巴',41,'http://www.simchn.com','2015-12-01'),(5,2,'-9-','广州恒宇服装','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489211630555502.jpg\" alt=\"1489211630555502.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c390fd3f890.jpg',NULL,'|','admin','2017-03-11 13:52:46',0,1,1,1,0,'广州恒宇服装','广州恒宇服装','广州恒宇服装',32,'http://www.hengyufz.com','2014-12-10'),(6,3,'-9-','盛阔装饰工程','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489212044495725.jpg\" title=\"1489212044495725.jpg\" alt=\"廊坊装饰公司-廊坊装修公司-廊坊市盛阔装饰工程有限公司.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c3929833609.jpg',NULL,'|','admin','2017-03-11 13:59:41',0,1,1,1,0,'盛阔装饰工程','盛阔装饰工程','盛阔装饰工程',39,'http://www.lfshengkuo.com','2016-08-20'),(7,4,'-9-','惠城自动化','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489212689706382.jpg\" title=\"1489212689706382.jpg\" alt=\"深圳市惠诚自动化科技有限公司.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c3951c12fc5.jpg',NULL,'|','admin','2017-03-11 14:09:11',0,1,1,1,0,'惠城自动化','惠城自动化','惠城自动化',29,'http://www.hc-fauto.com/','2015-03-15'),(8,5,'-9-','圣雅阁西班牙语','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489213242713943.jpg\" title=\"1489213242713943.jpg\" alt=\"圣雅阁1.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c39745d5882.jpg',NULL,'|','admin','2017-03-11 14:19:28',0,1,1,1,0,'圣雅阁西班牙语','圣雅阁西班牙语','圣雅阁西班牙语',29,'http://www.esuena.com','2015-02-28'),(9,6,'-9-','江苏苏美达集团','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489213737181778.jpg\" title=\"1489213737181778.jpg\" alt=\"苏美达1.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c39934be90c.jpg',NULL,'|','admin','2017-03-11 14:27:55',0,1,1,1,0,'江苏苏美达集团','江苏苏美达集团','江苏苏美达集团',25,'http://www.sumec.com','2013-01-10'),(10,7,'-9-','南京尚易环保','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489213938391001.jpg\" title=\"1489213938391001.jpg\" alt=\"南京尚易1.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c39a00cb243.jpg',NULL,'|','admin','2017-03-11 14:31:21',0,1,1,1,0,'南京尚易环保','南京尚易环保','南京尚易环保',12,'http://www.3ecare.cn','2016-02-10'),(11,8,'-9-','紫日软件','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489214225682574.jpg\" title=\"1489214225682574.jpg\" alt=\"紫日官网1.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c39b1bca537.jpg',NULL,'|','admin','2017-03-11 14:36:00',0,1,1,1,0,'紫日软件','紫日软件','紫日软件',43,'http://www.pursun.net','2016-12-15'),(12,9,'-9-','香港爹妈缘纸业','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489214783867317.jpg\" title=\"1489214783867317.jpg\" alt=\"爹妈缘1.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c39d48f41a9.jpg',NULL,'|','admin','2017-03-11 14:45:36',0,1,1,1,0,'香港爹妈缘纸业','香港爹妈缘纸业','香港爹妈缘纸业',43,'http://www.dmzhiye.com','2015-07-10'),(13,10,'-9-','富裕塑料玩具','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489215115590890.jpg\" title=\"1489215115590890.jpg\" alt=\"富裕塑料玩具1.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c39e9671986.jpg',NULL,'|','admin','2017-03-11 14:50:59',0,1,1,1,0,'富裕塑料玩具','富裕塑料玩具','富裕塑料玩具',52,'http://www.cnxinghua.com','2015-05-10'),(14,11,'-9-','乐天世界教育','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489215855205097.jpg\" title=\"1489215855205097.jpg\" alt=\"乐天教育1.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c3a17802244.jpg',NULL,'|','admin','2017-03-11 15:02:38',0,1,1,1,0,'乐天世界教育','乐天世界教育','乐天世界教育',51,'http://www.lovespaces.cn','2015-09-30'),(15,12,'-9-','广州市金王机械','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489216338344671.jpg\" title=\"1489216338344671.jpg\" alt=\"金王机械1.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c3a35c25618.jpg',NULL,'|','admin','2017-03-11 15:11:11',0,1,1,1,0,'广州市金王机械','广州市金王机械','广州市金王机械',60,'http://www.jwgz.com','2012-07-10'),(16,13,'-9-','优标网','','<p><img src=\"/Web/UploadFile/Bupload/image/20170311/1489216964160254.jpg\" title=\"1489216964160254.jpg\" alt=\"优标网.jpg\"/></p>','/Web/UploadFile/Case/Small/2017-03-11/58c3a5d03bcda.jpg',NULL,'|','admin','2017-03-11 15:19:44',0,1,1,1,0,'优标网','优标网','优标网',53,'http://www.youbiaowang.com','2014-11-10');
/*!40000 ALTER TABLE `db_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_code`
--

DROP TABLE IF EXISTS `db_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(20) DEFAULT NULL COMMENT '手机号',
  `type` tinyint(4) DEFAULT '0' COMMENT '验证码来历,0注册，1找回密码，2第三方验登录证码',
  `code` varchar(5) DEFAULT NULL COMMENT '验证码',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_code`
--

LOCK TABLES `db_code` WRITE;
/*!40000 ALTER TABLE `db_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_company`
--

DROP TABLE IF EXISTS `db_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newdesc` varchar(300) DEFAULT NULL,
  `newcontent` text,
  `img` varchar(100) DEFAULT NULL,
  `putman` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `putout` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_company`
--

LOCK TABLES `db_company` WRITE;
/*!40000 ALTER TABLE `db_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_deeptree`
--

DROP TABLE IF EXISTS `db_deeptree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_deeptree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `content_en` varchar(100) DEFAULT NULL,
  `class` varchar(10) NOT NULL,
  `ver` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  `page_tit` varchar(200) DEFAULT NULL,
  `page_key` varchar(400) DEFAULT NULL,
  `page_des` varchar(800) DEFAULT NULL,
  `top_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_deeptree`
--

LOCK TABLES `db_deeptree` WRITE;
/*!40000 ALTER TABLE `db_deeptree` DISABLE KEYS */;
INSERT INTO `db_deeptree` VALUES (1,1,0,'普通用户','ptyh','User',0,'2017-01-02 17:19:52',NULL,NULL,NULL,NULL),(2,2,0,'会员用户','hyyh','User',0,'2017-01-02 17:19:56',NULL,NULL,NULL,NULL),(3,3,0,'测试用户','csyh','User',0,'2017-01-02 17:20:00',NULL,NULL,NULL,NULL),(4,4,0,'腾讯QQ','txQQ','Ser',0,'2017-01-02 17:20:53',NULL,NULL,NULL,NULL),(5,5,0,'微软MSN','wrMSN','Ser',0,'2017-01-02 17:21:01',NULL,NULL,NULL,NULL),(6,6,0,'阿里旺旺','alww','Ser',0,'2017-01-02 17:21:09',NULL,NULL,NULL,NULL),(7,7,0,'Skype','Skype','Ser',0,'2017-01-02 17:21:23',NULL,NULL,NULL,NULL),(8,8,0,'新闻动态','xwdt','News',0,'2017-02-13 10:13:46',NULL,NULL,NULL,NULL),(9,9,0,'案例展示','alzs','Case',0,'2017-02-13 10:24:08',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `db_deeptree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_down`
--

DROP TABLE IF EXISTS `db_down`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_down` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(200) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `upfile` varchar(100) DEFAULT NULL,
  `newdesc` varchar(400) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `isdelete` tinyint(1) DEFAULT '0',
  `hit` int(9) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_down`
--

LOCK TABLES `db_down` WRITE;
/*!40000 ALTER TABLE `db_down` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_down` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_feedback`
--

DROP TABLE IF EXISTS `db_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT '0',
  `newtitle` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `mark` text,
  `remark` text,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '0',
  `ver` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_feedback`
--

LOCK TABLES `db_feedback` WRITE;
/*!40000 ALTER TABLE `db_feedback` DISABLE KEYS */;
INSERT INTO `db_feedback` VALUES (1,1,0,NULL,'13829719806',NULL,'阿萨德法师打发第三方阿萨德法师打发第三方俺的沙发撒旦法阿斯顿发',NULL,'2017-02-14 07:21:44',0,0),(2,2,0,NULL,'13829719806',NULL,'大风歌山东分公司梵蒂冈是大法官是大法官撒旦法个大事发生地方阿斯顿发',NULL,'2017-02-14 07:24:06',0,0),(3,3,0,NULL,'her',NULL,'gwe4',NULL,'2017-03-19 05:24:40',0,0);
/*!40000 ALTER TABLE `db_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_feedback2`
--

DROP TABLE IF EXISTS `db_feedback2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_feedback2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `mark` text,
  `remark` text,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '0',
  `ver` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_feedback2`
--

LOCK TABLES `db_feedback2` WRITE;
/*!40000 ALTER TABLE `db_feedback2` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_feedback2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_link`
--

DROP TABLE IF EXISTS `db_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(200) DEFAULT NULL,
  `newadd` varchar(200) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `newdesc` varchar(400) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_link`
--

LOCK TABLES `db_link` WRITE;
/*!40000 ALTER TABLE `db_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_net`
--

DROP TABLE IF EXISTS `db_net`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_net` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newdesc` varchar(300) DEFAULT NULL,
  `newcontent` text,
  `img` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `imgs` varchar(300) DEFAULT NULL,
  `putman` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `putout` tinyint(1) DEFAULT '1',
  `hot` tinyint(1) DEFAULT '1',
  `top` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `page_tit` varchar(200) DEFAULT NULL,
  `page_key` varchar(400) DEFAULT NULL,
  `page_desc` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_net`
--

LOCK TABLES `db_net` WRITE;
/*!40000 ALTER TABLE `db_net` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_net` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_news`
--

DROP TABLE IF EXISTS `db_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newdesc` varchar(300) DEFAULT NULL,
  `newcontent` text,
  `img` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `imgs` varchar(300) DEFAULT NULL,
  `putman` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `putout` tinyint(1) DEFAULT '1',
  `hot` tinyint(1) DEFAULT '1',
  `top` tinyint(1) DEFAULT '1',
  `hit` int(9) DEFAULT '0' COMMENT '查看次数',
  `ver` tinyint(1) DEFAULT '0',
  `page_tit` varchar(200) DEFAULT NULL,
  `page_key` varchar(400) DEFAULT NULL,
  `page_desc` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_news`
--

LOCK TABLES `db_news` WRITE;
/*!40000 ALTER TABLE `db_news` DISABLE KEYS */;
INSERT INTO `db_news` VALUES (1,1,'-8-','总结做好站内链接的五个方面','经常在一些论坛看到说要做好一个网站，首先就要做好内部链接。那什么是内链?我们都知道一个站点小者只有几个页面，多者有成千上万个页面。这些页面都是通过链接进行相互串联的，而这些链接就是我们所谓的内链。那么我们来谈谈作为我们的站点需要怎样的内链以及内链要如何做好。我们可以观察一些优化做的好的站点的内容页面，我们可以看到他们的内容中很多都是一些内部的链接。','<p>经常在一些论坛看到说要做好一个网站，首先就要做好内部链接。那什么是内链?我们都知道一个站点小者只有几个页面，多者有成千上万个页面。这些页面都是通过链接进行相互串联的，而这些链接就是我们所谓的内链。那么我们来谈谈作为我们的站点需要怎样的内链以及内链要如何做好。我们可以观察一些优化做的好的站点的内容页面，我们可以看到他们的内容中很多都是一些内部的链接。而内部的链接不像外链那样有不确定的因素，只要我们实施好我们的内链策略就可以达到一个不错的效果。那么我们要从哪几个方面做好我们的内部链接呢? <br/></p><p>网站我们可以通俗的切成三个部分，即分别为头部、主体以及底部。根据访客的浏览习惯，中央的主体部份我们一般是分为左右两边，左边的话放置内容，右边则放置一些相关的超链接。那么我们在这里将主要分享站点的主题位置的内链的优化。</p><p>一、相关文章栏目的链接　　</p><p>在主题内容文章的底部或者右边的侧边栏使用自动调用的方式调取相关关键词或者类别的文章，这样做不仅仅可以吸引到访客的注意力，提高站点的友好体验度，同时也会更加的利于搜索引擎蜘蛛的爬行。　　</p><p>二、随机文章链接　</p><p>无论我们在怎么细心的优化我们站点的内部链接，我们的站点总是会出现一部分的内容没有被搜索引擎爬行索引的。那么我们此时可以通过随机文章的方法来增加搜索引擎爬行的入口。随机的文章栏目一般是置于主体部分的右边栏目中。搜索引擎喜欢新鲜的内容，因此随机栏目不仅可以提高页面的“能见度”，还可以从另一方面提高站点的新鲜度。　</p><p>三、热门文章链接</p><p>对于热门文章的栏目主要的作用可以提升站点的浏览次数，因为访客的心理就是喜欢随大流，如果一个页面的访问量高的话一般可以吸引到其他访客的好奇心，进而更加深层次的访问，这同时也可以大大的降低站点的跳出率，提升用户的访问粘度。　　</p><p>四、内容中相关关键词的互链</p><p>这一点我们可以从权重很高的百度百科中学到。我们可以发现在百度百科中的内容中主体部份一般都有相关的关键词之前的内部链接的互链。对于内部关键词之间的互链笔者认为百度百科已经做的很好了，在内容文章中出现的一些相关的词汇，只要在百度百科内部有相关的资料，它们都会以锚文本的形式显示在文章内部中间。</p><p>五、tag链接</p><p>如果你比较常逛博客的话，你会发现我们经常可以在文章的底部找到一些文章内部相关的的关键词。这一些关键词都可以链接到相关的tag聚合页面，而这一些关键词不仅可以提高用户的友好体验度，而且可以提高关键词排名。</p>','/Web/UploadFile/News/Small/2017-02-13/58a167e985166.jpg',NULL,'|','广州网站建设','2017-02-13 10:31:37',0,1,1,1,47,0,'总结做好站内链接的五个方面','总结做好站内链接的五个方面','总结做好站内链接的五个方面'),(2,2,'-8-','国际域名实名制核验的通知','尊敬的客户，您好：根据国家相关政策和《中国互联网络域名管理办法》的规定，com/net（以下简称国际域名）域名将进行注册人实名核验。即域名注册人必须提供与注册信息相对应的身份证明资料，完成域名的实名要求。2016年7月18日8点起，.com/.net域名注册成功后必须进行域名实名认证，否则域名会处于Serverhold状态，无法正常使用；','<p>尊敬的客户，您好：</p><p>根据国家相关政策和《中国互联网络域名管理办法》的规定，com/net（以下简称国际域名）域名将进行注册人实名核验。即域名注册人必须提供与注册信息相对应的身份证明资料，完成域名的实名要求。 <br/></p><p>2016年7月18日8点起，.com/.net域名注册成功后必须进行域名实名认证，否则域名会处于Serverhold状态，无法正常使用； <br/></p><p>在2016年7月18日8点之前注册成功的.com/.net域名暂不强制要求实名，待注册局通知后另行告知； <br/></p><p>在2016年7月18日8点之后进行续费、过户等操作的.com/.net域名，也必须进行域名实名认证。</p><p>域名实名认证系统升级过程中，您的域名注册、管理等操作均不受影响，感谢您的支持！ <br/></p><p>实名认证需要提交的资料内容包括 <br/></p><p>1、域名持有者为企业：有效的企业营业执照或组织机构代码证扫描件； <br/></p><p>2、域名持有者为个人有效的域名持有者个人身份证正面、反面扫描件</p><p>感谢您长久以来对万维网的支持和信赖，我们会持续为您提供优质可靠的互联网服务！</p>','/Web/UploadFile/News/Small/2017-02-13/58a1654fdb7ee.jpg',NULL,'|','广州网站建设','2017-02-13 15:43:25',0,1,1,1,49,0,'国际域名实名制核验的通知','国际域名实名制核验的通知','国际域名实名制核验的通知'),(3,3,'-8-','不进行网站建设 企业会失去很多东西','电子商务在现在是很多企业进行网络营销的首选，但是还有一些企业不愿意进行网站建设，认为建设网站是一种无用的举动，其实并非是这个样子的。企业进行网站建设或者寻找网站建设公司只有好处没有坏处，但是如果企业没有进行网站建设，那么这个企业会失去很多的东西。 ','<p>电子商务在现在是很多企业进行网络营销的首选，但是还有一些企业不愿意进行网站建设，认为建设网站是一种无用的举动，其实并非是这个样子的。企业进行网站建设或者寻找网站建设公司只有好处没有坏处，但是如果企业没有进行网站建设，那么这个企业会失去很多的东西。</p><p>失去竞争力</p><p>现在是一个互联网的时代，企业在互联网上拥有自己的网站，才会拥有更多的竞争力。现在的消费者都在互联网上进行信息的查找，也会了解到很多互联网上的信息，这些信息有利于企业更好的制定计划，让企业在进行营销的时候，能够根据当前情况制定出方案，加强竞争力。如果企业没有加强这方面的建设，那么企业在进行营销的时候必然会失去很多的竞争力。</p><p>失去互动性 <br/></p><p>现在在互联网上进行互动是很多企业的选择，企业在进行网络营销的时候，也应该种重视网站的互动性。但是如果没有进行网站建设，那么用户和企业之间的交流就是非常困难的，更不用提它的互动性了。失去了互动性，就意味着网站会失去用户，用户在选择时候会更喜欢可以互动的企业，因为这样的企业售后服务更加的好。</p><p>失去潜在用户 <br/></p><p>现在很多的用户喜欢在互联网上进行购买，一个企业如果没有自己的网站，那么喜欢进行网购的消费者就没有办法通过网站找到这个企业，就算有需要，也会在互联网中的其它网站中进行查找，这样企业就会失去很多的潜在用户。</p><p>企业没有进行网站建设，就会失去非常多的东西，最重要的就是失去用户和竞争力，失去了这两样东西企业在进行商贸的时候，就相当于失去了销售渠道，用户就算有需求，也没有办法通过互联网的渠道找到公司。难道这些失去的东西，还不能引起企业的重视么?</p>','/Web/UploadFile/News/Small/2017-02-13/58a16b63aa2d0.jpg',NULL,'|','广州网站建设','2017-02-13 16:07:26',0,1,1,1,48,0,'不进行网站建设 企业会失去很多东西','不进行网站建设 企业会失去很多东西','不进行网站建设 企业会失去很多东西'),(4,4,'-8-','如何让自身网站有特色','如何让自身网站有特色？首先做网站时目的要明确，最好能明确的告诉自己做网站是为了什么，知道自己网站的方向，现在让我们说下几点让自身网站有特色的方法。1、精美页面，网站制作要协调好网页的排版，整体均匀，不能有失衡的感觉，想要做出精美的页面，还应该关注网站的配色，在色彩布局上多下功夫，这样可以让访客能够轻松舒适的浏览。','<p>如何让自身网站有特色？</p><p>首先做网站时目的要明确，最好能明确的告诉自己做网站是为了什么，知道自己网站的方向，现在让我们说下几点让自身网站有特色的方法。</p><p>1、精美页面 <br/></p><p>网站制作要协调好网页的排版，整体均匀，不能有失衡的感觉，想要做出精美的页面，还应该关注网站的配色，在色彩布局上多下功夫，这样可以让访客能够轻松舒适的浏览。</p><p>2、空间优化 <br/></p><p>此外网站空间的全面优化对于企业网站的出色制作有着极大的厉害影响关系所在，如果一个网站的打开速度是相当缓慢的话，就会造成大量网民的流失。这对于增强企业网站的知名度是相当不利的。因此制作人员也必须处理好网站空间的具体优化调整，不得马虎应对。 <br/></p><p>3、内容维护 <br/></p><p>制作人员在设计完成企业网站之后，需要根据用户的具体需求来定期进行网站内容更新，要让企业网站达到与时俱进化的变化创新，不要给人一种死气沉沉的视觉感受。用户作为网站的主要消费群体，只有抓住用户心理才能够赢得更多人的强烈关注。如果用户的体验感是相当不错的话，就很有可能把企业网站纳入收藏，这样企业的影响力就能够变得更为广泛化。 <br/></p><p>4、站外推广 <br/></p><p>制作人员也需要做好企业网站的站外推广工作，通过在站外建立各类的宣传平台来发现和挖掘更多的潜在用户，从而让企业网站的曝光率能够变得更高。这样企业的知名度也能够得以大大增强化。目前较为流行的站外宣传平台包括有微信微博、博客等众多平台，可以给人们带来更多的选择机会。</p><p>5、精准软文 <br/></p><p>制作人员在企业网站内描述企业产品的时候，需要精确表达好每个产品的具体详情状况，使得用户在浏览企业网站的时候能够一眼看明白，而不会出现不知所云的不利情况。此外制作人员也需要根据每个产品的用户使用反馈来编辑产品软文，以此来大大提高企业宣传的力度。让企业产品能够被更多的消费者熟知和接受。</p><p>网站建设大体分为上线前的设计制作和后期的推广营销，两者都是非常重要，想要让网站更有特色就应该多下功夫，这样才能让让网站有更多的曝光率，更加能切合用户需求。</p>','/Web/UploadFile/News/Small/2017-02-13/58a16ce01436d.jpg',NULL,'|','广州网站建设','2017-02-13 16:17:13',0,1,1,1,66,0,'如何让自身网站有特色','如何让自身网站有特色','如何让自身网站有特色'),(5,5,'-8-','2017企业进入互联网需要做一个网站吗？',' 网络营销已经成为任何一家企业必须做的工作，而网络营销的平台、渠道很多，对于刚进入互联网的企业来说，需要做一个网站吗？我认为有几点还是非常重要的。目前主流的网络营销平台是自媒体平台和社交平台，毕竟网络营销离不开内容和社交，但对于大多数企业来说很难制造内容，特别是没有专业文案编辑人员的企业更是如此。','<p>网络营销已经成为任何一家企业必须做的工作，而网络营销的平台、渠道很多，对于刚进入互联网的企业来说，需要做一个网站吗？我认为有几点还是非常重要的。 <br/></p><p>目前主流的网络营销平台是自媒体平台和社交平台，毕竟网络营销离不开内容和社交，但对于大多数企业来说很难制造内容，特别是没有专业文案编辑人员的企业更是如此。社交平台成为大多数企业的选择，然而社交太耗费时间，企业大多熬不住。企业怎样的方式进入互联网比较好？自媒体平台需要大量的内容承载，基本上中小企业还是很难做好。基于社交的新媒体倒是不错的选择，但发现大多数朋友在做两微一端时吃了大亏。</p><p>一、花大成本做的客户端没啥用。 <br/></p><p>客户端大家都想做，做一个自己的APP好像是不错的选择，然而开发APP需要大量的成本，套用模板基本上也要几万块钱。如果再加上后面的营销运营，费用不知道会花费多少。有业内人士分析的数据不低于80万，相信实际花费会更高。 <br/></p><p>二、微博好像没什么人玩了。 <br/></p><p>在大家的意识里，微博好像已经过时了，没什么人玩。其实这两年微博通过电商、自媒体两块出发，月活跃数已经在2亿多。但很多企业根本没看到。</p><p>三、微信只玩公众号。 <br/></p><p>做一个公众号是企业的必选，其实对于很多企业来说，根本不需要一个公众号，也没有太多的内容承载，更没有很好的服务对接。建立个人微信更有效，特别是企业老板、主要负责人。 <br/></p><p>做一个网站是好的选择吗？</p><p>对于大多数企业来说，特别是制造业、工业等硬件设备比较重的企业来说，守护袁昆建议是最好的选择。虽然网站是重要的选择，很多企业进入互联网的确是选择做一个网站。然而我们发现大多数企业还是踩着坑。 <br/></p><p>一、域名空间只有使用权没有所有权。 <br/></p><p>找建站公司做一个网站，自己啥也不懂，域名、空间什么的都让建站公司买了，很多时候只有使用权没有所有权。 <br/></p><p>二、花500块做一个网站就好了？ <br/></p><p>有企业花500块做一个网站，然后就等着订单来。怎么可能呢？基本的SEO优化，网络推广要做吧？花大量费用做了竞价、投了广告啥效果也没有。抛开投放广告和竞价，500块的网站能做成什么样，可想而知。目前建站行情5000-10000比较正常。 <br/></p><p>三、是否要招一个专职人员？ <br/></p><p>网络营销的职位很多，招一个编辑？推广？SEO？新媒体运营？中小企业干的最多的就是招一个人：所有事都给干了，而且给的工资还很低。今天在牛过象群里一个企业老板的话很有道理：优秀的人才是需要付出一定代价的，在xx这里，5000块工资已经超过她的极限，对待人才的态度，已经决定了我们工厂的管理水平。企业进入互联网是否应该做一个网站？对于大多数企业来说，我建议必须要做，而且要有预算把这事做好。专业的人做专业的事，如果自己做不了，一定要找人做。大多数企业是没有精力倒腾其他的平台，先把自己的基础做好就可以了。</p><p>根据中国互联网络信息中心的数据，截止2016年6月，网民数已经7.1亿，域名总数3698万个，用户在哪里，营销就做到哪里。 <br/></p><p>貌似很多企业现在还在抵触互联网，网络营销、电子商务离他们还很远。</p>','/Web/UploadFile/News/Small/2017-02-13/58a16f1a18448.jpg',NULL,'|','广州网站建设','2017-02-13 16:22:59',0,1,1,1,46,0,'2017企业进入互联网需要做一个网站吗？','2017企业进入互联网需要做一个网站吗？','2017企业进入互联网需要做一个网站吗？'),(6,6,'-8-','一些关于网站优化的问题','SEO优化专家介绍，一个不稳定的网站，百度是不会喜欢的，在建站之初，就应该把网站的各个细节都考虑好，一旦建立，便不要轻易更改，下面为大家介绍网站优化的禁忌问题。目标关键词堆砌：这个大家应该都知道了吧，但是如何才算堆砌，就不好说了，我感觉文章首段百度关键词优化的出现次数最好不要超过两次，否则就会有作弊嫌疑，尤其是新站，应该尽量避免太过明显的优化。 ','<p>SEO优化专家介绍，一个不稳定的网站，百度是不会喜欢的，在建站之初，就应该把网站的各个细节都考虑好，一旦建立，便不要轻易更改，下面为大家介绍网站优化的禁忌问题。</p><p>目标关键词堆砌：这个大家应该都知道了吧，但是如何才算堆砌，就不好说了，我感觉文章首段百度关键词优化的出现次数最好不要超过两次，否则就会有作弊嫌疑，尤其是新站，应该尽量避免太过明显的优化。</p><p>代码过长而杂乱：蛛蛛是从网页代码读取网页内容的，如果代码过长，蜘蛛将很难知道哪为重点甚至会截断蜘蛛的爬行。</p><p>纯采集：搜索引擎是喜新厌旧的，如果一个网站的内容都是在网络上高度重复的，那么排名绝对不会好，采集的网站百度会收，但是收录后会被慢慢的k掉，而且很少会给改过自新的机会，哪怕之后天天更新原创文章，也无济于事。但是这并不意味着不可以采集，我们可以针对采集来的文章做一些更改，比如替换内容、更改标题等。</p><p>全flash或图片：flash和图片固然有吸引力，但不是相对用户需求及搜索引擎而言的。搜索引擎蜘蛛是不能读取flash内容。 <br/></p><p>选择错误的关键词：流量过低的关键词，优化得再完美，也无济于事，而关注度很高的关键词，就算排在第二页，也会带来很大的流量。</p><p>垃圾链接：使用群发软件群发垃圾链接，认为链接越多总是更好的，其实搜索引擎要的是链接的质量。</p><p>主题与内容不符：网站内容和主题相背离，搜索自然不会喜欢，不过有一个常用方法，在内容页的title里加上网站的名称，这对网站主页的排名有一定作用。</p><p>太急于求成：大家都知道，百度优化网站考验的一个人的耐心和定力，以及这个人的细心程度，其实大家都知道，欲速则不达，心急吃不了热豆腐这些道理，所以网站优化必须要有一个好心态，尤其百度对新站收录极慢，一个针对百度网站优化的新站，必须做好打持久战的准备。</p>','/Web/UploadFile/News/Small/2017-02-13/58a17040a78a9.jpg',NULL,'|','广州网站建设','2017-02-13 16:35:11',0,1,1,1,76,0,'一些关于网站优化的问题','一些关于网站优化的问题','一些关于网站优化的问题'),(7,7,'-8-','企业建站是否能选择模板建站？论模板建站的优与劣 ','对很多企业，尤其是中小型企业来说，建设企业网站时模板建站是一件省时又省力的方法。模板建站在程序的执行速度、代码的简洁程度以及Web标准上都好于水平一般的公司。不过很多建站公司也有自己不同的看法，下面就带大家分析一下模板建站的优势与劣势。模板建站的优势：首先模板建站吸引人的两个优势就在于建站需要的时间短，成本也比较低。','<p>\r\n    对很多企业，尤其是中小型企业来说，建设企业网站时模板建站是一件省时又省力的方法。模板建站在程序的执行速度、代码的简洁程度以及Web标准上都好于水平一般的公司。不过很多建站公司也有自己不同的看法，下面就带大家分析一下模板建站的优势与劣势。\r\n</p>\r\n<p style=\"text-indent:0\">\r\n    <strong>模板建站的优势：</strong> \r\n</p>\r\n<p>\r\n    首先模板建站吸引人的两个优势就在于建站需要的时间短，成本也比较低。另外模板并不是一成不变的，它可以根据客户的要求进行调整，尽可能满足客户的需求。下面我们具体来看看。\r\n</p>\r\n<p>\r\n    1、周期短成本低。模板建站的周期短，甚至还可以实现网站的量产，很大程度上帮企业节约了成本。建站过程中省去了分析企业需求的环节，网站页面的搭建和后台程序的编写过程也省去了，美工设计也不会耗费时间。模板为建站提供了现成的内容，只需要对网站的内容和风格进行调整即可。\r\n</p>\r\n<p>\r\n    2、企业主动选择。建站模板是现成的，但是仍然可以根据企业的需求和要求进行灵活的调整，扩大企业选择余地。网站建设过程中和完工后就不会因为不了解客户的喜好或没有满足用户的要求令客户不满意。\r\n</p>\r\n<p style=\"text-indent:0\">\r\n    <strong>模板建站的劣势：</strong> \r\n</p>\r\n<p>\r\n    有优势自然会有劣势，模板建站最典型的一个劣势就是网站结构重复率过高，这对建站后的SEO优化工作会产生一定的影响，那么还有哪些缺点呢?\r\n</p>\r\n<p>\r\n    1、不利于企业品牌和形象建设。使用模板建站的网站很多，尤其是一些行业内可以通用的模板。一个好的建站模板受到肯定后很容易导致行业内部的网站雷同，这就会影响客户对企业的好感，不利于企业品牌和形象的建设，甚至会导致网站的点击转化率大幅降低。\r\n</p>\r\n<p>\r\n    2、不利于网站的seo优化。搜索引擎会通过网站的代码进行识别和抓取，当网站使用模板建站后，网站的结构和代码不可避免就会出现雷同，重复率会很高，自然就不利于网站的优化排名。如果雷同严重的话，甚至会直接被搜索引擎忽略。\r\n</p>\r\n<p>\r\n    关于模板建站的优势和劣势，需要建站的企业可以根据自己的实际情况和需求进行选择。企业的官网是企业在互联网世界的一张名片，是客户了解企业品牌和产品的有效窗口，企业一定要慎重对待。\r\n</p>','/Web/UploadFile/News/Small/2017-03-18/58cd1b2d2f668.jpg',NULL,'|','广州网站建设','2017-03-18 19:31:24',0,1,1,1,47,0,'企业建站是否能选择模板建站？论模板建站的优与劣 ','企业建站是否能选择模板建站？论模板建站的优与劣 ','企业建站是否能选择模板建站？论模板建站的优与劣 '),(8,8,'-8-','建设网站要重视的八处优化细节','网站建设向来是一个企业开展网络营销中最基础的环节之一，只有拥有了一个网站，企业才能更好的展示自己的产品，树立良好的企业形象，并且有利于访客的转化行为。今天就具体来说说网站建设过程中要注意的优化细节。1、网站定位。网站定位在于了解网站所属行业的需求人群并对目标用户进行准确定位。这并不是要我们针对的是全部整体，而是要更加透彻的分析出本网站的精准客户人群。','<p>网站建设向来是一个企业开展网络营销中最基础的环节之一，只有拥有了一个网站，企业才能更好的展示自己的产品，树立良好的企业形象，并且有利于访客的转化行为。今天就具体来说说网站建设过程中要注意的优化细节。</p><p>1、网站定位。网站定位在于了解网站所属行业的需求人群并对目标用户进行准确定位。这并不是要我们针对的是全部整体，而是要更加透彻的分析出本网站的精准客户人群。</p><p>2、网页设计。如今的网络世界日新月异，想要成功的留住用户，网站本身就要有特色有吸睛点。网页设计要尽可能让用户眼前一亮，如果能在不脱离行业主题的情况下打破现有的束缚，一定能获得用户的肯定。</p><p>3、网站架构。网站的架构决定了用户访问网站时的方便程度，也影响着搜索引擎蜘蛛的爬行。因此建设网站时我们都会选择扁平化、树状结构，并利用面包屑使得网站的结构清晰明了，便于浏览。</p><p>4、关键词定位。关键词定位是网站优化的关键，因为它会直接关联到后期的网站排名和网站流量，选择适合的关键词才能够保证后期运营的正常进行。通常来说我们会通过对竞争对手的关键词分析和关键词需求指数以及当前用户的需求分析来确定关键词以及网站长尾词。</p><p>5、流量页面布局。众所周知网站的流量页面多定位为网站的首页，但是随着搜索引擎规则的改变，网站的内页和首页在收录上已经没有了差别。现在流量页面上可以在首页做主关键词而内容做带动效果的长尾词。</p><p>6、网站内容更新。网站内容是大多数网站运营和优化过程的重中之重，内容更新上应该具有规律性，因为这样的网站搜索引擎喜欢，而用户对于时常有新内容的网站也是更为看重的。内容的撰写上可以为行业动态和公司产品内容，这个可以根据目前的行业需求热度来进行合理安排。</p><p>7、网站链接制作。网站链接包括的站内链接和站外链接以及交换式的友情链接。这些可以把网站和其他站外平台形成一个密不可分的整体，扩大了网站本体，站内的链接则可以促使用户停留增加综合排名的分值。</p><p>8、优化工具使用。不论我们前期的作业如何最终的结果都是需要数据来说话的，因此优化工具的使用必不可少。一般而言，我们可以通过百度索引工具来链接收录情况，通过站长工具来记录网站最新的流量情况。</p>','/Web/UploadFile/News/Small/2017-03-22/58d24d6287c01.jpg',NULL,'|','广州网站建设','2017-03-18 19:45:38',0,1,1,1,51,0,'建设网站要重视的八处优化细节','建设网站要重视的八处优化细节','建设网站要重视的八处优化细节'),(9,9,'-8-','云计算时代IT专业人员需具备的10项技能','IT专业人员需要不断的学习，才能确保自己的工作能力跟上时代的步伐。云时代IT专业人员不仅需要具备一定的专业技能，比如快速运用自身知识快速在互联网上构建应用程序，还必须具备商业、金融、业务需求分析等等。自从有了云计算，企业或者其他机构可以精简他们的IT资源，卸载大部分的日常系统和应用程序管理，但这并不意味着IT将无所事事，你需要有一项编程语言技能，以便能快速构建运行在互联网上的应用程序。','<p>IT专业人员需要不断的学习，才能确保他们的工作能力跟上时代的步伐。那么云计算时代IT专业人员需要具备哪些技能呢？</p><p><strong>1. 商业和金融技能 </strong></p><p>技术和商业的融合始终是成功的绝对法宝，尤其在云计算时代。</p><p><strong>2. 技术技能</strong></p><p>自从有了云计算，企业或者其他机构可以精简他们的IT资源，卸载大部分的日常系统和应用程序管理，但这并不意味着IT将无所事事，你需要有一项编程语言技能，以便能快速构建运行在互联网上的应用程序。</p><p><strong>3. 企业架构和业务需求分析 </strong></p><p>云计算要求IT专业人员最好具备交叉学科知识，特别是面向服务的体系结构。</p><p><strong>4. 项目管理技能</strong></p><p>企业或者组织不能因为云计算的灵活性而大意，导致项目延期或者目标模糊，这将让云计算的成本优势化为乌有。</p><p><strong>5. 合同和供应商的谈判技巧</strong></p><p>熟悉服务等级协议（SLA）以及涉及到违反SLA的问题，IT专业人员需要具备一定的合同和供应商谈判的经验。</p><p><strong>6. 安全性和遵从性</strong></p><p>IT专业人员处理云计算项目时候，必须完全掌握相关行业的安全协议和相关的法规，不论在不在美国。</p><p><strong>7. 数据集成和分析技能</strong></p><p>IT专业人士可能不是专业的数据科学家，但是你需要帮助这些数据科学家顺利的连接大数据、内部ERP、数据仓库和其他数据系统，除此之外，你还必须与业务那边合作，以便有效利用大数据。</p><p><strong>8. 移动应用开发和管理</strong></p><p>企业或组织需要了解他们通过云提供给客户的移动体验的效果如何，如何改善。</p><p><strong>9. 熟悉开放混合云的知识</strong></p><p>IT不是千篇一律的，你的云计算模式也同样如此， IT专业人士需要了解如何在一个开放的平台上构建和扩展公司的云计算基础设施。</p><p><strong>10. 了解OpenStack</strong></p><p>为了构建上面提到的那种灵活的、安全的、可互操作的云基础设施，IT专业人士必须对所需的技术有很深的理解，OpenStack是关键部分。OpenStack社区汇聚众多云计算开发人员和技术专家团队，由一系列的项目组成，为云基础设施解决方案提供各种组件。</p>','/Web/UploadFile/News/Small/2017-03-23/58d339ad328b3.jpg',NULL,'|','admin','2017-03-23 10:55:28',0,1,1,1,45,0,'云计算时代IT专业人员需具备的10项技能','云计算时代IT专业人员需具备的10项技能','云计算时代IT专业人员需具备的10项技能'),(10,10,'-8-','html5移动开发的几大特性','html5移动开发的出现让移动平台的竞争由系统平台转向了浏览器之间：移动端的各浏览器，亦或是新出现的浏览器，谁能达到在移动端对HTML5更好的支持，谁就能在以后的移动应用领域占据更多的市场。更灵活、更方便的app使用及安装方式将成为HT]L5在移动平台上大放异彩的保障之一。 下面列举HTML5适合移动应用开发的几大特性','<p>html5移动开发的出现让移动平台的竞争由系统平台转向了浏览器之间：移动端的IE、Chrome、FireFox、Safari，亦或是新出现的浏览器，谁能达到在移动端对HTML5更好的支持，谁就能在以后的移动应用领域占据更多的市场。 　　</p><p>更灵活、更方便的app使用及安装方式将成为HT]L5在移动平台上大放异彩的保障之一。 　　</p><p>下面列举HTML5适合移动应用开发的几大特性： 　　</p><p>1.离线缓存为HTML5开发移动应用提供了基础 　　</p><p>HTML5 Web Storage API可以看做是加强版的cookie，不受数据大小限制，有更好的弹性以及架构，可以将数据写入到本机的ROM中，还可以在关闭浏览器后再次打开时恢复数据，以减少网络流量。 　　同时，这个功能算得上是另一个方向的后台“操作记录”，而不占用任何后台资源，减轻设备硬件压力，增加运行流畅性。 　　</p><p>在线app支持边使用边下载离线缓存，或者不下载离线缓存;而离线app必须是下载完离线缓存才能使用。 　　</p><p>形象点说，cookie就是存了电话和菜单，想吃什么要叫外卖，等多长时间才能吃到就得看交通情况了;离线缓存就是直接在冰箱里存了食物，想吃就能马上吃到(当然，想吃最新的食物同样可以打电话预定)。 　　</p><p>设计师要知道，什么时候让用户下载离线缓存(注意在线和离线app的区别)。 　　</p><p>2.音频视频自由嵌入，多媒体形式更为灵活 　　</p><p>原生开发方式对于文字和音视频混排的多媒体内容处理相对麻烦，需要拆分开文字、图片、音频、视频，解析对应的URL并分别用不同的方式处理。 　　</p><p>HTML5在这个方面完全不受限制，可以完全放在一起进行处理。 　　</p><p>设计师要知道，如果新闻类、微博类、社交类应用的信息呈现中实现文字与多媒体混排，而不用专门嵌入webview，将是一件多美好的事情，至少现在原生方式实现起来还有困难。 　　</p><p>3.地理定位，随时随地分享位置 　　</p><p>充分发挥移动设备对定位上的优势，推动LBS应用发展。 　　</p><p>可以综合使用GPS、wifi、手机等方式让定位更为精准、灵活。 　　</p><p>地理位置定位，让定位和导航不再专属导航软件，地图也不用下载非常大的地图包，可以通过缓存来解决，到哪儿下哪儿，更灵活。 　　</p><p>设计师要知道，现在嵌入LBS功能的应用越来越多，这也是移动设备与台式PC相比最大的优势之一，HTML5能把这个优势再度扩大化，好好想想怎么在你设计的应用里用上吧! 　　</p><p>4.Canvas绘图，提升移动平台的绘图能力 　　</p><p>使用Canvas API可以简单绘制热点图收集用户体验资料 　　</p><p>支持图片的移动、旋转、缩放等常规编辑 　　</p><p>Canvas – 2D的绘图功能支持 　　</p><p>Canvas 3D – 3D的绘图功能支持 　　</p><p>SVG – 向量图支援 　　</p><p>设计师要知道，图片的移动、旋转、缩放?那都太基础了，自己画都是小case，至于怎么用，好好想想吧! 　　</p><p>5.专为移动平台定制的表单元素 　　</p><p>浏览器中出现的html5表单元素与对应的键盘： 　　</p><p>类型用途键盘 　　</p><p>Text正常输入内容标准键盘 　　</p><p>Tel电话号码数字键盘 　　</p><p>Email电子邮件地址文本框带有@和.的键盘 　　</p><p>url网页的URL带有.com和.的键盘 　　</p><p>Search用于搜索引擎，比如在站点顶部显示的搜索框标准键盘 　　</p><p>range特定值范围内的数值选择器，典型的显示方式是滑动条滑动条或转盘 　　</p><p>只需要简单的声明 即可完成对不同样式键盘的调用，简捷方便。 　　</p><p>设计师要知道，用的时候记得告诉研发同事一声! 　　</p><p>6.丰富的交互方式支持 　　</p><p>提升互动能力：拖拽、撤销历史操作、文本选择等 　　</p><p>Transition – 组件的移动效果 　　</p><p>Transform – 组件的变形效果 　　</p><p>Animation – 将移动和变形加入动画支持 　　</p><p>设计师要知道，HTML5提供的交互方式是非常丰富的，至于用不用得上，那是你自己的事儿喽! 　　</p><p>7.HTML5使用上的优势 　　</p><p>更低的开发及维护成本; 　　</p><p>使页面变得更小，减少了用户不必要的支出;而且，性能更好使耗电量更低; 　　</p><p>方便升级，打开即可使用最新版本，免去重新下载升级包的麻烦，使用过程中就直接更新了离线缓存。 　　</p><p>设计师要知道，用户想要什么，HTML5能提供给用户什么。 　　</p><p>8.CSS3 视觉设计师的辅助利器 　　</p><p>CSS3支持了字体的嵌入、版面的排版，以及最令人印象深刻的动画功能。 　　</p><p>Selector – 更有弹性的选择器 　　</p><p>Webfonts – 嵌入式字体 　　</p><p>Layout – 多样化的排版选择 　　</p><p>Stlying radius gradient shadow – 圆角、渐变、阴影 　　</p><p>Border background – 边框的背景支持 　　</p><p>使用CSS3来完成部分视觉工作，载入速度快，节省代码及图片，也为用户节约了带宽。 　　</p><p>设计师要知道，一个界面里几十张素材图的方式已经太out啦，赶快让CSS3帮你偷懒。 　　</p><p>9.实时通讯 　　</p><p>以往网站由于HTTP协议以及浏览器的设计，实时的互动性相当的受限，只能使用一些技巧来「仿真」实时的通讯效果，但HTML5提供了完善的实时通讯支持。 　　</p><p>设计师要知道，应用中嵌入实时通信、信息内容进行实时提醒，HTML5可以帮你实现。 　　</p><p>10.档案以及硬件支持 　　</p><p>不知道大家有没有发现，在Gmail等新的网页程序当中，已经可以透过拖拉的方式将档案作为邮件附件?这就是HTML5档案的功能中的Drag’n Drop和File API。 　　</p><p>设计师要知道，移动应用中对于数据传输的需求越来越大，传统的路径选择方式太过于繁琐，快来试试HTML5的拖拽上传功能吧! 　　</p><p>11.语意化 　　</p><p>语意化的网络是可以让计算机能够更加理解网页的内容，对于像是搜索引擎的优化(SEO)或是推荐系统可以有很大的帮助。 　　</p><p>设计师要知道，HTML5能让搜索更快速、更准确。 　　</p><p>12.双平台融合的app开发方式，提高工作效率 　　</p><p>依照目前iPhone/Android 迅速提升市占率的情势来看，未来如果想要在先进的智慧型手机上撰写应用程式，要不是选择使用Objective-C + CocoaTouch Framework 撰写iPhone/iPad 应用程式，就是选择Java + Android Framework 撰写Android 应用程式，如果想要同时支援两种平台，势必要维护两套程式码，对于刚起步的小服务而言也算是个小有负担的维运成本。 　　</p><p>使用HTML5, CSS3 来撰写Web-based 的应用程式，若要同时支援iPhone 及Android，几乎只需要维护一份程式码(少部份要因应clients 作修改)，而且未来若有其它行动装置拥有支援HTML5 的浏览器，那同样的WebApp 直接就多了一个支援平台。 　　</p><p>Google 的系列服务使用了不少HTML5 中的cache、storage 及database 规格来做到离线存取程式的效果。因为比起桌面应用程式，行动装置的网路连线更不稳定，而且有时在移动中并无网路可以使用，透过这些技术才能让使用者即使在无网路环境下继续使用你的webapp。这说明html5主要服务对象还是给予web的应用，并不会对全部app开发造成威胁，这样有利于不同类型应用使用不同的开发方式，灵活性更强。</p>','/Web/UploadFile/News/Small/2017-03-23/58d33aef20cf9.jpg',NULL,'|','admin','2017-03-23 10:59:38',0,1,1,1,48,0,'html5移动开发的几大特性','html5移动开发的几大特性','html5移动开发的几大特性'),(11,11,'-8-','html5移动开发的几大特性','html5移动开发的出现让移动平台的竞争由系统平台转向了浏览器之间：移动端的IE、Chrome、FireFox、Safari，亦或是新出现的浏览器，谁能达到在移动端对HTML5更好的支持，谁就能在以后的移动应用领域占据更多的市场。更灵活、更方便的app使用及安装方式将成为HT]L5在移动平台上大放异彩的保障之一。 ','<P>html5移动开发的出现让移动平台的竞争由系统平台转向了浏览器之间：移动端的IE、Chrome、FireFox、Safari，亦或是新出现的浏览器，谁能达到在移动端对HTML5更好的支持，谁就能在以后的移动应用领域占据更多的市场。 　　</P>\r\n<P>更灵活、更方便的app使用及安装方式将成为HT]L5在移动平台上大放异彩的保障之一。 　　</P>\r\n<P>下面列举HTML5适合移动应用开发的几大特性： 　　</P>\r\n<P>1.离线缓存为HTML5开发移动应用提供了基础 　　</P>\r\n<P>HTML5 Web Storage API可以看做是加强版的cookie，不受数据大小限制，有更好的弹性以及架构，可以将数据写入到本机的ROM中，还可以在关闭浏览器后再次打开时恢复数据，以减少网络流量。 　　同时，这个功能算得上是另一个方向的后台“操作记录”，而不占用任何后台资源，减轻设备硬件压力，增加运行流畅性。 　　</P>\r\n<P>在线app支持边使用边下载离线缓存，或者不下载离线缓存;而离线app必须是下载完离线缓存才能使用。 　　</P>\r\n<P>形象点说，cookie就是存了电话和菜单，想吃什么要叫外卖，等多长时间才能吃到就得看交通情况了;离线缓存就是直接在冰箱里存了食物，想吃就能马上吃到(当然，想吃最新的食物同样可以打电话预定)。 　　</P>\r\n<P>设计师要知道，什么时候让用户下载离线缓存(注意在线和离线app的区别)。 　　</P>\r\n<P>2.音频视频自由嵌入，多媒体形式更为灵活 　　</P>\r\n<P>原生开发方式对于文字和音视频混排的多媒体内容处理相对麻烦，需要拆分开文字、图片、音频、视频，解析对应的URL并分别用不同的方式处理。 　　</P>\r\n<P>HTML5在这个方面完全不受限制，可以完全放在一起进行处理。 　　</P>\r\n<P>设计师要知道，如果新闻类、微博类、社交类应用的信息呈现中实现文字与多媒体混排，而不用专门嵌入webview，将是一件多美好的事情，至少现在原生方式实现起来还有困难。 　　</P>\r\n<P>3.地理定位，随时随地分享位置 　　</P>\r\n<P>充分发挥移动设备对定位上的优势，推动LBS应用发展。 　　</P>\r\n<P>可以综合使用GPS、wifi、手机等方式让定位更为精准、灵活。 　　</P>\r\n<P>地理位置定位，让定位和导航不再专属导航软件，地图也不用下载非常大的地图包，可以通过缓存来解决，到哪儿下哪儿，更灵活。 　　</P>\r\n<P>设计师要知道，现在嵌入LBS功能的应用越来越多，这也是移动设备与台式PC相比最大的优势之一，HTML5能把这个优势再度扩大化，好好想想怎么在你设计的应用里用上吧! 　　</P>\r\n<P>4.Canvas绘图，提升移动平台的绘图能力 　　</P>\r\n<P>使用Canvas API可以简单绘制热点图收集用户体验资料 　　</P>\r\n<P>支持图片的移动、旋转、缩放等常规编辑 　　</P>\r\n<P>Canvas – 2D的绘图功能支持 　　</P>\r\n<P>Canvas 3D – 3D的绘图功能支持 　　</P>\r\n<P>SVG – 向量图支援 　　</P>\r\n<P>设计师要知道，图片的移动、旋转、缩放?那都太基础了，自己画都是小case，至于怎么用，好好想想吧! 　　</P>\r\n<P>5.专为移动平台定制的表单元素 　　</P>\r\n<P>浏览器中出现的html5表单元素与对应的键盘： 　　</P>\r\n<P>类型用途键盘 　　</P>\r\n<P>Text正常输入内容标准键盘 　　</P>\r\n<P>Tel电话号码数字键盘 　　</P>\r\n<P>Email电子邮件地址文本框带有@和.的键盘 　　</P>\r\n<P>url网页的URL带有.com和.的键盘 　　</P>\r\n<P>Search用于搜索引擎，比如在站点顶部显示的搜索框标准键盘 　　</P>\r\n<P>range特定值范围内的数值选择器，典型的显示方式是滑动条滑动条或转盘 　　</P>\r\n<P>只需要简单的声明 即可完成对不同样式键盘的调用，简捷方便。 　　</P>\r\n<P>设计师要知道，用的时候记得告诉研发同事一声! 　　</P>\r\n<P>6.丰富的交互方式支持 　　</P>\r\n<P>提升互动能力：拖拽、撤销历史操作、文本选择等 　　</P>\r\n<P>Transition – 组件的移动效果 　　</P>\r\n<P>Transform – 组件的变形效果 　　</P>\r\n<P>Animation – 将移动和变形加入动画支持 　　</P>\r\n<P>设计师要知道，HTML5提供的交互方式是非常丰富的，至于用不用得上，那是你自己的事儿喽! 　　</P>\r\n<P>7.HTML5使用上的优势 　　</P>\r\n<P>更低的开发及维护成本; 　　</P>\r\n<P>使页面变得更小，减少了用户不必要的支出;而且，性能更好使耗电量更低; 　　</P>\r\n<P>方便升级，打开即可使用最新版本，免去重新下载升级包的麻烦，使用过程中就直接更新了离线缓存。 　　</P>\r\n<P>设计师要知道，用户想要什么，HTML5能提供给用户什么。 　　</P>\r\n<P>8.CSS3 视觉设计师的辅助利器 　　</P>\r\n<P>CSS3支持了字体的嵌入、版面的排版，以及最令人印象深刻的动画功能。 　　</P>\r\n<P>Selector – 更有弹性的选择器 　　</P>\r\n<P>Webfonts – 嵌入式字体 　　</P>\r\n<P>Layout – 多样化的排版选择 　　</P>\r\n<P>Stlying radius gradient shadow – 圆角、渐变、阴影 　　</P>\r\n<P>Border background – 边框的背景支持 　　</P>\r\n<P>使用CSS3来完成部分视觉工作，载入速度快，节省代码及图片，也为用户节约了带宽。 　　</P>\r\n<P>设计师要知道，一个界面里几十张素材图的方式已经太out啦，赶快让CSS3帮你偷懒。 　　</P>\r\n<P>9.实时通讯 　　</P>\r\n<P>以往网站由于HTTP协议以及浏览器的设计，实时的互动性相当的受限，只能使用一些技巧来「仿真」实时的通讯效果，但HTML5提供了完善的实时通讯支持。 　　</P>\r\n<P>设计师要知道，应用中嵌入实时通信、信息内容进行实时提醒，HTML5可以帮你实现。 　　</P>\r\n<P>10.档案以及硬件支持 　　</P>\r\n<P>不知道大家有没有发现，在Gmail等新的网页程序当中，已经可以透过拖拉的方式将档案作为邮件附件?这就是HTML5档案的功能中的Drag’n Drop和File API。 　　</P>\r\n<P>设计师要知道，移动应用中对于数据传输的需求越来越大，传统的路径选择方式太过于繁琐，快来试试HTML5的拖拽上传功能吧! 　　</P>\r\n<P>11.语意化 　　</P>\r\n<P>语意化的网络是可以让计算机能够更加理解网页的内容，对于像是搜索引擎的优化(SEO)或是推荐系统可以有很大的帮助。 　　</P>\r\n<P>设计师要知道，HTML5能让搜索更快速、更准确。 　　</P>\r\n<P>12.双平台融合的app开发方式，提高工作效率 　　</P>\r\n<P>依照目前iPhone/Android 迅速提升市占率的情势来看，未来如果想要在先进的智慧型手机上撰写应用程式，要不是选择使用Objective-C + CocoaTouch Framework 撰写iPhone/iPad 应用程式，就是选择Java + Android Framework 撰写Android 应用程式，如果想要同时支援两种平台，势必要维护两套程式码，对于刚起步的小服务而言也算是个小有负担的维运成本。 　　</P>\r\n<P>使用HTML5, CSS3 来撰写Web-based 的应用程式，若要同时支援iPhone 及Android，几乎只需要维护一份程式码(少部份要因应clients 作修改)，而且未来若有其它行动装置拥有支援HTML5 的浏览器，那同样的WebApp 直接就多了一个支援平台。 　　</P>\r\n<P>Google 的系列服务使用了不少HTML5 中的cache、storage 及database 规格来做到离线存取程式的效果。因为比起桌面应用程式，行动装置的网路连线更不稳定，而且有时在移动中并无网路可以使用，透过这些技术才能让使用者即使在无网路环境下继续使用你的webapp。这说明html5主要服务对象还是给予web的应用，并不会对全部app开发造成威胁，这样有利于不同类型应用使用不同的开发方式，灵活性更强。</P>','/Web/UploadFile/News/Small/2017-03-23/58d33aef4a706.jpg',NULL,'|','admin','2017-03-23 10:59:38',1,0,1,1,0,0,'html5移动开发的几大特性','html5移动开发的几大特性','html5移动开发的几大特性'),(12,12,'-8-','为什么SEO优化了几个月网站仍然没排名？','通常一个网站从上线到开展优化再到有排名，往往需要几个月的时间，但是也有不少网站需要等待更长的时间才能获得排名，甚至一直都没有排名。究竟为什么网站始终没有排名呢?这里帮助大家分析了一些可能的原因，希望能对大家有所帮助。一、服务器问题，1、服务器质量问题，如果网站选择的服务器质量存在问题，那么网站做得再好也无济于事','<p>\r\n    通常一个网站从上线到开展优化再到有排名，往往需要几个月的时间，但是也有不少网站需要等待更长的时间才能获得排名，甚至一直都没有排名。究竟为什么网站始终没有排名呢?这里帮助大家分析了一些可能的原因，希望能对大家有所帮助。\r\n</p>\r\n<p>\r\n  <strong>　一、服务器问题</strong> \r\n</p>\r\n<p>\r\n1、服务器质量问题\r\n</p>\r\n<p>\r\n如果网站选择的服务器质量存在问题，那么网站做得再好也无济于事，因此千万不能为了节省成本选择便宜的主机。这不仅会影响网站的打开速度，对搜索引擎蜘蛛的抓取和用户的访问浏览都没有好处。\r\n</p>\r\n<p>\r\n2、服务器稳定性\r\n</p>\r\n<p>\r\n    \r\n	　　服务器的稳定性也会影响网站的展现和排名。服务器时网站运营的基石，如果服务器不稳定势必会影响网站的稳定性，一旦用户打不开网站或打开速度很慢，用户体验度自然就会下降。\r\n</p>\r\n<p>\r\n    \r\n	　<strong>　二、长期的误判</strong> \r\n</p>\r\n<p>\r\n    \r\n	　　有的网站上线了几个月后仍然没有排名，甚至也没有关键词排名，这时运营者要考虑是否对搜索引擎考核周期以及关键词的判断发生了错误。不是说网站上线两三个月之后就度过了考核期，实际上考核期是和网站的关键词以及运营者的优化操作有关的，一旦出现了违规的操作，那么搜索引擎就可能会延长网站的考核期。这样的行为也是在提醒运营者合理的进行网站优化，认真的做好内容而不是等待，更不是投机取巧。\r\n</p>\r\n<p>\r\n    \r\n	<strong>　　三、按步就班</strong> \r\n</p>\r\n<p>\r\n    \r\n	　　优化网站的时候很多运营者都会从用户的角度出发，根据需求来填充网站内容，提升用户体验，完全按照搜索引擎的要求操作，这样的过程看似步步安全有效，却太过机械化。网站的整体内容，用户体验、需求等毫无竞争力，自然也难得到用户的认可。\r\n</p>\r\n<p>\r\n    \r\n	　　<strong>四、综合性操作</strong> \r\n</p>\r\n<p>\r\n    \r\n	　　1、网站没有排名的时候尽量不要做大规模的修改，否则很容易延长排名获得的时间。\r\n</p>\r\n<p>\r\n    \r\n	　　2、提到优化不可能忽略外链，外链对网站优化有用，但是对新站来说不要在短时间内发布太多，也不要发布垃圾外链，要选择一些高权重的平台发布一些高质量的外链。\r\n</p>\r\n<p>\r\n    \r\n	　　3、网站的关键词不能太多，否则很容易使得网站内容多于宽泛，难以占据优势。\r\n</p>\r\n<p>\r\n    \r\n	　　4、网站是否曾经被K，如果网站被K过那么获得排名的时间必然会延长，此外优化过程中还要检查是否存在作弊现象。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>','/Web/UploadFile/News/Small/2017-03-28/58da33977be0b.jpg',NULL,'|','广州网站建设','2017-03-28 17:55:14',0,1,1,1,97,0,'为什么SEO优化了几个月网站仍然没排名？','为什么SEO优化了几个月网站仍然没排名？','为什么SEO优化了几个月网站仍然没排名？'),(13,13,'-8-','为什么响应式（自适应）网站是一个坑','什么是自适应网站？其实自适应更专业的说法是响应式网站。在2010年5月，Ethan Marcotte提出的响应式网站的概念，通俗的说，就是一个网站可以兼容不同的终端，不用为每个分辨率设备做一个特定的版本的网站。近年来，各种大屏幕移动设备的普及，响应式网站也受到了更多人的青睐。甚至大多数的人认为，响应式网站是实现友好移动目标，更好、更快、更省的方案。','<p>\r\n    什么是自适应网站？其实自适应更专业的说法是响应式网站。在2010年5月，Ethan Marcotte提出的响应式网站的概念，通俗的说，就是一个网站可以兼容不同的终端，不用为每个分辨率设备做一个特定的版本的网站。近年来，各种大屏幕移动设备的普及，响应式网站也受到了更多人的青睐。甚至大多数的人认为，响应式网站是实现友好移动目标，更好、更快、更省的方案。\r\n</p>\r\n<p>\r\n    但事实又是否这样呢？对热衷响应式或自适应的人，不难想象：网站适应了移动设备的显示，界面也非常美观，你可能觉得一切都很好，网站也实现了友好移动的目标。然而不要开心得太早，数据表明：这种响应式设计，会令你的用户和经济效益流失30-50%。\r\n</p>\r\n<p>\r\n    想知道真相是什么？因为自适应和响应式根本就是一个坑！响应式网站有几个致命缺点：\r\n</p>\r\n<p>\r\n    <strong>1.响应式设计仅是改善移动体验并没达到最优化。</strong>\r\n</p>\r\n<p>\r\n    不管是自适应设计，还是响应式设计，它们的基本原则是：尽可能不要因为设备不同而导致显示不同的内容（比如在低分辩率的终端上会删减某些内容）。试想，显示在电脑1440x900分辨率屏幕上的内容，要在手机的320x240分辨率屏幕上显示，你会发现，可视区域变小，内容都挤一起，页面拉长，排版顺序错乱，使用困难度增加等等。所以自适应和响应式设计，都是选择性把内容隐藏，以适应小页面，减少上述的问题出现。但这样一来，页面的表现效果就没那么理想了，交互体验也达不到移动端的最优，把控不好网站就会给用户不伦不类的感觉。\r\n</p>\r\n<p style=\"text-align: center;text-indent:0\">\r\n    <img src=\"/Web/UploadFile/Bupload/image/20170328/1490695478547171.jpg\" alt=\"1490695478547171.jpg\"/>\r\n</p>\r\n<p style=\"text-align: center;text-indent:0\">\r\n    某响应式网站在移动端上的显示缺陷(右侧为移动版)\r\n</p>\r\n<p>\r\n    例如上面的响应式网站，右边移动端明显将在左边电脑端有展示的产品都隐藏了，这对从电脑端切换到移动端的用户是很不友好的。而且移动端的交互设计也不是我们熟悉的。还有很明显的一点是，同一个网站风格差异却如此大，感觉就是两个网站。如果是单独设计的移动网站，它就能避免像上面响应式网站那种显示上的突兀，例如下面的一些电脑端和移动端网站的对比：\r\n</p>\r\n<p style=\"text-align: center;text-indent:0\">\r\n    <img src=\"/Web/UploadFile/Bupload/image/20170328/1490695478605762.jpg\" alt=\"1490695478605762.jpg\"/>\r\n</p>\r\n<p style=\"text-align: center;text-indent:0\">\r\n    腾讯网的电脑版和移动版对比\r\n</p>\r\n<p style=\"text-align: center;text-indent:0\">\r\n    <img src=\"/Web/UploadFile/Bupload/image/20170328/1490695479122078.jpg\" alt=\"1490695479122078.jpg\"/>\r\n</p>\r\n<p style=\"text-align: center;text-indent:0\">\r\n    天猫商城的电脑版和移动版对比\r\n</p>\r\n<p style=\"text-align: center;text-indent:0\">\r\n    <img src=\"/Web/UploadFile/Bupload/image/20170328/1490695479661452.jpg\"/>\r\n</p>\r\n<p style=\"text-align: center;\">\r\n    360官网的电脑版和移动版对比\r\n</p>\r\n<p>\r\n    从上面腾讯、天猫、360等它们的做法看到：个性化的宫格布局，流行的移动端界面，合理地显示网站信息。显然这些才是我们所熟悉的移动端表现，交互上更贴近APP的UI风格，更好的用户体验。为什么他们能把网站在移动端的表现处理得如此好？因为他们都是专门做了一个移动版的网站，并没有采用自适应设计，因此，网站的设计没有受到自适应方案的限制。\r\n</p>\r\n<p>\r\n    <strong>2.响应式设计并不利于百度的关键词优化和排名。</strong>\r\n</p>\r\n<p>\r\n    因为用户在不同终端的搜索习惯不同，所以百度对移动网站和电脑网站的关键词处理策略也不相同。而对于响应式的方案，不同终端访问到的网页代码是一样的，这样就不能在电脑端和移动端设置不同的关键词。这无疑是给百度关键词优化增添了大大的阻碍。\r\n</p>\r\n<p>\r\n    另外，百度的搜索排名也是有移动端和电脑端之分的。针对这方面，更适合使用独立的移动端网站专门做移动端的百度排名，这样不会影响电脑端的百度排名，两个版本的网站百度优化也可以独立进行。\r\n</p>\r\n<p>\r\n    所以，如果你的网站需要进行商业推广的话，那还是独立做一个移动版网站更好，而不是使用响应式网站。\r\n</p>\r\n<p>\r\n    <strong>3.响应式网站无法区分移动端，浪费带宽，加载耗时长。</strong>\r\n</p>\r\n<p>\r\n    响应式（自适应）设计的实现方式，往往是缩小或者隐藏电脑版网站的内容，使之适应移动端的窄屏。但隐藏的内容依然会加载，低分辨率设备会加载高质量的图片或者视频，不分屏幕尺寸都提供相同大小的网页。这样的话，响应式网站加载的内容相比非响应式网站会增加20-50%。加载内容多，速度慢，浪费流量。在国内高流量费面前，用户是想都不用想就会放弃使用你的网站的。\r\n</p>\r\n<p>\r\n    响应式网站相对非响应式网站的加载耗时，一般都会延长1-2秒，在2G、3G网络情况下更严重。而Google统计的数据是加载时间每延长0.4秒就会有0.59%的用户流失，电商类代表亚马逊则表示每延长0.1秒就会有1%的用户流失，资讯门户类的雅虎则是每延长0.4秒就会流失5-9%的用户。所以你的响应式网站每天流失了多少用户，你可以对号入座算一算。\r\n</p>\r\n<p>\r\n    <strong>4.响应式对于ie6,7,8浏览器简直是悲剧。</strong>\r\n</p>\r\n<p>\r\n    响应式或者自适应方案里，运用了很多html5新特性，而这些新特性只有高级的现代浏览器才支持，而在ie6,7,8来说几乎是看不了的，甚至在ie9,10的表现也只是差强人意。从cnzz数据中心统计的国内浏览器使用率来看，ie占比高达36.29%。请问你能承受36.29%的用户流失吗？\r\n</p>\r\n<p style=\"text-align: center;text-indent:0\">\r\n    <img src=\"/Web/UploadFile/Bupload/image/20170328/1490695479138902.jpg\" alt=\"1490695479138902.jpg\"/>\r\n</p>\r\n<p style=\"text-align: center;text-indent:0\">\r\n    响应式网站在IE上体验或将失去36.29%的用户\r\n</p>\r\n<p>\r\n    现在你是否已经察觉，不管是淘宝、天猫、京东、唯品会，还是腾讯、百度、新浪、360为什么都不用响应式了吧？我们丝毫不会怀疑：响应式或自适应仅仅是一个坑。而正确的做法是分开建设电脑端和移动端网站。专门建设一个移动版的网站才是可行的法则，这样才能更灵活，提供更专业、更优的移动体验和个性化、多样化的设计。\r\n</p>\r\n<p>\r\n    我们可能会疑问为什么市场上响应式网站会那么火？真相是，响应式或自适应设计，仅是是设计师的主观决定，他们认为电脑网站界面不再适用移动网站界面，然后非作出相应的改变不可。甚至存在更可笑的情况，程序员为了卖弄技术而使用响应式，建站公司为了显得更高大上多骗点钱而抛出响应式等等。响应式的运用在很多情况下都是没必要的，也没什么值得大家去追棒。\r\n</p>\r\n<p>\r\n    所以我们的建议就是：最好为你的电脑网站推出移动版本，将关注重点要放在网站信息展示、网站性能、用户体验、经济效益、用户留存等关键点上。\r\n</p>\r\n<p>\r\n    这里或许还有一件事，可能你并不知道，响应式之父Ethan Marcotte还说过，“最重要的是，响应式网页设计的初衷不是要取代移动网页”。\r\n</p>','/Web/UploadFile/News/Small/2017-03-28/58da36be3a437.jpg',NULL,'|','广州网站建设','2017-03-28 17:58:34',0,1,1,1,72,0,'为什么响应式（自适应）网站是一个坑','为什么响应式（自适应）网站是一个坑','为什么响应式（自适应）网站是一个坑'),(14,14,'-8-','每一个搜索引擎都重视原创的三大理由','不管是做SEO还是运营产品，我们都会一直强调输出内容时一定要做原创，原创内容能得到搜索引擎的认可等等。实际上互联网中真正做原创内容的人并不多，那么我们有必要做原创吗?搜索引擎为何会重视原创内容?一、大部分网站采集泛滥，开展优化的时候我们常会在网上查找高质量的内容，然而当我们搜索某一行业或主题的内容时，很容易就会发现大多都是一样或重复的内容。整个互联网中网站采集内容的现象泛滥，导致网络上很难找到真正有价值的内容。','<p>不管是做SEO还是运营产品，我们都会一直强调输出内容时一定要做原创，原创内容能得到搜索引擎的认可等等。实际上互联网中真正做原创内容的人并不多，那么我们有必要做原创吗?搜索引擎为何会重视原创内容?</p><p><strong>一、大部分网站采集泛滥</strong></p><p>开展优化的时候我们常会在网上查找高质量的内容，然而当我们搜索某一行业或主题的内容时，很容易就会发现大多都是一样或重复的内容。整个互联网中网站采集内容的现象泛滥，导致网络上很难找到真正有价值的内容。此外在内容采集的过程中，容易出现内容丢失的现象，一旦内容缺失就很容易影响用户的阅读体验，对网站的展现同样没有好处。</p><p>不过在这样的情况下仍然有少数网站在坚持原创，为用户提供原创内容，因此这些网站只要保证了内容的质量，网站权重和展现、排名都很容易得到提升。因此搜索引擎推出了一系列算法要求网站提供优质的内容，只要网站能坚持原创，网站的优化工作一定会产生回报。</p><p><strong>二、为用户提供真正有价值的内容</strong></p><p>互联网中的同质化现象使得搜索用户很难找到自己需求的内容，这样容易降低用户对搜索引擎的认同感和认可度。如今互联网中的搜索引擎产品有很多，彼此都存在着竞争，因此当用户在你的搜索引擎中找不到需求内容时，就很有可能会选择其他的搜索引擎。我们开展网络优化时要配合搜索引擎更好的服务用户。</p><p>原创内容有助于我们的优化和运营，但是它也不是万能的，对行业不了解就盲目地为了原创而写，这样能为用户提供的内容价值相当有限。有的运营者会选择伪原创的方式，随意的拼凑文章，打乱文章段落顺序，这样的方法会影响用户的阅读体验，用户从中并不能得到有价值的信息。</p><p><strong>三、激励少数作者坚持原创</strong></p><p>坚持原创生产有价值内容的人依然存在，不过只是茫茫人海中的一小部分。如果这些原创内容刚发表后就被别人采集了，很容易打击创作者的积极性，因此搜索引擎会格外重视这些创作者，也鼓励所有人加入到原创的阵容中。</p><p>以上的三点内容不仅是站在搜索引擎的角度来看问题，也是从用户的角度来考虑，原创的优质内容必将占据着主导地位。不管是网站优化还是运营产品都不能盲目，而是真心实意为了帮助用户解决问题而去创造优质内容。</p>','/Web/UploadFile/News/Small/2017-04-11/58ecb43573e62.jpg',NULL,'|','劲驰网络','2017-04-11 18:43:23',0,1,1,1,57,0,'每一个搜索引擎都重视原创的三大理由','每一个搜索引擎都重视原创的三大理由','每一个搜索引擎都重视原创的三大理由'),(15,15,'-8-','影响网站权重的第一要素','SEO的站长们都知道，权重和排名息息相关，网站权重上去了，排名也就跟着上去，但是影响权重的因素有很多，站长们该如何把握呢？什么是网站权重?就算对业内人士来说，他们所说的权重，更关注的是数字，比如说我这网站权重是2，他的网站权重是4，而某某牛叉的网站权重是8……什么因素影响到网站权重呢?大多数人给的答案是内容更新、外链建设等等。而很多人似乎都忽略了一个重要的问题，那就是网站结构。','<p>SEO的站长们都知道，权重和排名息息相关，网站权重上去了，排名也就跟着上去，但是影响权重的因素有很多，站长们该如何把握呢？</p><p>什么是网站权重?就算对业内人士来说，他们所说的权重，更关注的是数字，比如说我这网站权重是2，他的网站权重是4，而某某牛叉的网站权重是8——什么因素影响到网站权重呢?大多数人给的答案是内容更新、外链建设等等。而很多人似乎都忽略了一个重要的问题，那就是网站结构。</p><p>谈到网站结构，对于熟悉网站建设技术的人来说，好像很无感。因为在这些专业的技术控眼里，很多东西觉得就是应该这样做呀!但是，为什么要这么做!你提出这样的问题的时候，一般的网站技术人员表达能力和他的技术能力很难化成等号，在他们眼里，提出这样问题的小白，只能用“鄙视”的眼神回复你，“和你无话可说!”</p><p>隔行如隔山，在这个行业细分年代，没有谁样样精通，当然，也不排除个例，那些人的脑袋和智慧就像马云、雷军一类的人物，不在我们的研究范围，毕竟想要成为这类人物是一个小概率事件。一个外行人向一个内行人资讯，无论对方是给予专业的详细的答复还是简单粗暴的拒绝，都不能躲避一种心理：那就是在罗辑思维中曾经谈过的“鄙视链”!鄙视链最直接的变现就是我比你高一等。</p><p>其实，这也不算啥，毕竟我不是做这个的。不过，想要自己的网站有一个好的权重是每个网站的最终追求，这对于不懂网站建设的人，是做不出来的，而只有求助的行业人士，简单的说，就是找人做网站。按理说，一个付钱，一个收钱，这就是购买网站一个简单的流程，可是，问题出来了!</p><p>我要做一个企业网站大概多少钱呀?经常能看到这样的问题，不管是在论坛，QQ，还是在微信，或者在一些社区论坛……大家有这个疑问的原因根本在于，很多人的出的价格都是不一样的，而且网站建设还有很多版本：定制建站、营销型网站、模板建站、免费建站、自助建站……这些都很眼花缭乱，也在满足不同需求的消费者，可是，和网站结构有啥关系呢?</p><p>网站结构更是一些藏在“骨子”里的东西，比如淘宝网站，有很多淘宝客网站模仿淘宝网站，打眼一看，很像，仔细再瞅瞅，又完全不像，模板建站就是这样，可以模仿的惟妙惟肖，却很难把网站的底蕴完整的复制过来。</p><p>网站结构又是一个很抽象的问题。一个好网站架构有什么用除了提高网站权重之外，对于用户而言：用户进到你的网站首页、栏目页、内容页，是否第一时间能找到自己想要的，而不至于进入后满足不了需求直接关闭页面走人。用户进到你的网站首页、栏目页、内容页，是否在满足需求之后，可以很方便地了解你的产品、服务并产生订单。用户进到你的网站首页、栏目页、内容页，是否在满足需求之后，很容易地看到自己关注的需求周边相关的信息，并产生二次点击、三次点击...，通过导航或页面其他版区满足更多需求。</p><p>同时，对于搜索引擎而言：蜘蛛进入到你的网站首页，顺着首页的导航和其他链接能否用最快、最短的路径抓取到网站的所有页面。你最新发布的文章，是否存在于蜘蛛经常光顾的页面，比如网站首页或其他抓取频繁的页面，而不是将最新文章埋的很深。你特别想获取排名的栏目页、内容页是否存在于蜘蛛经常光顾和权重值比较高的页面。</p><p>显然，这样的结构设计，需要照顾两方面的需求，用户和搜索引擎，用户看的爽，搜索引擎蜘蛛爬行无障碍，两方面得罪哪个都不行，这就需要很好的逻辑能力，对设计者是一个挑战，对网站维护者来说能够提供便利的途径，如果简单的拿来一个网站复制模仿，也许在网站结构上就差了一层。</p><p>事实上，把网站结构放到影响网站权重第一要素，是要告诉哪些随便找个模板建站的网站，为了网站的明天更美好，还是尊重网站原创——做定制网站最佳。而即使做了定制网站也未必就能达到最佳，因为一个好的网站结构，如果没有内容，同样也会让用户和搜索引擎“失望”而去，也许很多网站可以做到定制，却很难创造出高质量的内容，这其实有了再好的网站逻辑设计，也是没卵用。</p><p>所以说，对于网站结构的理解应该是两个层面上，一个是内在，就是设计上不要糊弄，另一个是外在的，要有源源不断的干货来满足需求。二者缺一都很难在提高网站权重上提供有力的支持!</p>','/Web/UploadFile/News/Small/2017-04-11/58ecb5ef4da16.jpg',NULL,'|','网站建设','2017-04-11 18:48:07',0,1,1,1,70,0,'影响网站权重的第一要素','影响网站权重的第一要素','影响网站权重的第一要素'),(16,16,'-8-','SEMer必学的几个简单竞价数据分析法','竞价操作过程中SEMer需要通过数据的展现及时地进行调整，掌握关键词广告的投放情况，那么SEMer该如何掌握哪些数据分析方法呢?一、点击量小，广告的点击量过小，主要是有两种原因，一是展现量低，二是点击率偏低。1、展现量低，点击量不高　展现量低表明潜在用户搜索需求不多，因此关键词广告展现的机会就比较少，我们可以通过拓展关键词的方法来提升广告的展现量。2、展现量高但是点击率低 ','<p>竞价操作过程中SEMer需要通过数据的展现及时地进行调整，掌握关键词广告的投放情况，那么SEMer该如何掌握哪些数据分析方法呢?</p><p><strong>一、点击量小</strong></p><p>广告的点击量过小，主要是有两种原因，一是展现量低，二是点击率偏低。</p><p>1、展现量低，点击量不高</p><p>展现量低表明潜在用户搜索需求不多，因此关键词广告展现的机会就比较少，我们可以通过拓展关键词的方法来提升广告的展现量。</p><p>2、展现量高但是点击率低</p><p>展现量高但是点击率低，可能当潜在用户看到你的推广时，发现关键词和广告创意的相关性不高，无法满足他们的需求，因此没有进行点击。针对这一点我们可以通过修改广告创意，提升关键词和广告创意的相关性，从而提升点击率。</p><p>当然点击率低也可能是因为广告的平均排名不高，因此竞争力不足，这就需要调高平均点击价格来提升广告的排名。此外我们还需关注关键词的匹配模式，比如当我们投放以“葡萄”为关键词的广告时，搜索结果页面中还出现了“葡萄牙”有关的结果页面，这样的竞价推广就是无效展现，SEMer需要进行否定匹配，避免出现无效展现。</p><p><strong>　二、平均点击价格(CPC)过高</strong></p><p>平均点击价格主要受到质量度和排名、竞争度的影响，因此想要降低CPC，我们需要从这两方面入手进行操作。</p><p>1、质量度</p><p>质量度主要是根据关键词的点击率，关键词和创意的相关性，账户的整体表现等多个因素综合计算得出的。点击率的提高，相关性的提高和账户整体表现的改善可以帮助提高质量度。搜索引擎更加看中高质量的推广广告，质量度高的关键词的点击价格就会低，鼓励广告主提高推广结果信息的质量。</p><p>2、排名与竞争度</p><p>如果关键词的热度较高，那么想要获得靠前的排名就要投入更多的成本，广告的点击价格自然就会高。在高成本的情况下，往往只有相关性强，回报高的广告主能够接受这样的推广成本。</p>','/Web/UploadFile/News/Small/2017-05-12/59155b00eaefc.jpg',NULL,'|','网站建设','2017-05-12 14:39:22',0,1,1,1,53,0,'SEMer必学的几个简单竞价数据分析法','SEMer必学的几个简单竞价数据分析法','SEMer必学的几个简单竞价数据分析法'),(17,17,'-8-','竞价创意撰写五个重要环节 ','在投放竞价广告的过程中，广告创意显得尤为重要，它包括了标题、描述、访问URL和显示URL，能够有效的将推广信息抵达目标用户，因此我们需要关注广告创意的撰写技巧。一、飘红 用户搜索了某个关键词后，广告创意的标题描述中和该搜索词一致或意义相近的部分将会以红色字体显示，这就是创意的飘红。飘红更有利于吸引网民们的关注，吸引潜在客户的点击。通常使创意飘红的方式有两种，一种是添加通配符，另一种是添加点击率较高的关键词。不过飘红的次数也不能过多，通常在1到3次即可。','<p>在投放竞价广告的过程中，广告创意显得尤为重要，它包括了标题、描述、访问URL和显示URL，能够有效的将推广信息抵达目标用户，因此我们需要关注广告创意的撰写技巧。</p><p><strong>一、飘红</strong></p><p>用户搜索了某个关键词后，广告创意的标题描述中和该搜索词一致或意义相近的部分将会以红色字体显示，这就是创意的飘红。飘红更有利于吸引网民们的关注，吸引潜在客户的点击。通常使创意飘红的方式有两种，一种是添加通配符，另一种是添加点击率较高的关键词。不过飘红的次数也不能过多，通常在1到3次即可。</p><p><strong>二、相关性</strong></p><p>相关性就是要求围绕关键词撰写广告创意，还要和推广的产品、服务联系在一起。竞价账户的质量度得到提升后，创意相关性就变得十分关键，提升关键词和创意之间的相关性才能提升创意的质量，从而不断降低推广费用，提升投资回报率。</p><p><strong>三、通顺</strong></p><p>通顺主要是指广告创意要语句通顺，符合逻辑，不通顺的创意不仅不会有利于产品的推广，还很难吸引用户的关注，无形中增加了推广的成本。对于企业来说，广告都无法让用户理解，如何能产生吸引呢，潜在客户对用户的信任度也会打上折扣。</p><p><strong>四、卖点</strong></p><p>投放竞价广告既然是为了推广自身的产品或服务，那么创意就一定要有卖点，创意中要突出企业的优势，比如产品的质量、销售的价格、良好的售后服务等。潜在客户能越早充分地了解产品，越能帮助他们做出购买决策，因此创意中可以提供充足的内容。对于消费者来说，产品的价格以及促销活动的信息更容易吸引他们的关注，因此如果能够接受产品的价格，用户点击后很有可能会购买，反之则不会进行点击。如过广告创意中使用了“免费”、“优惠”、“促销”等词汇，请确保访问URL指向的是明示这些信息的网站页面。</p><p><strong>五、吸引力</strong></p><p>最后就是要关注广告的吸引力，我们可以使用一些号召性的语句来打动目标客户，比如“申请”、“咨询”等有行动色彩的词语，“立即”、“马上”等营造紧迫感的词语或是一些口号、有感染力的词语等。</p><p>撰写广告创意需要不断琢磨，不断实践，一个好的创意不仅能带来更高的点击量，还可能减低您的推广费用。</p>','/Web/UploadFile/News/Small/2017-05-12/59155be3a8567.jpg',NULL,'|','网站建设','2017-05-12 14:49:43',0,1,1,1,61,0,'竞价创意撰写五个重要环节 ','竞价创意撰写五个重要环节 ','竞价创意撰写五个重要环节 ');
/*!40000 ALTER TABLE `db_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_products`
--

DROP TABLE IF EXISTS `db_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newdesc` varchar(300) DEFAULT NULL,
  `newcontent` text,
  `img` varchar(100) DEFAULT NULL,
  `bigimg` varchar(100) DEFAULT NULL,
  `imgs` varchar(300) DEFAULT NULL,
  `putman` varchar(20) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT '0',
  `putout` tinyint(1) DEFAULT '1',
  `hot` tinyint(1) DEFAULT '1',
  `top` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `page_tit` varchar(200) DEFAULT NULL,
  `page_key` varchar(400) DEFAULT NULL,
  `page_desc` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_products`
--

LOCK TABLES `db_products` WRITE;
/*!40000 ALTER TABLE `db_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_ser`
--

DROP TABLE IF EXISTS `db_ser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_ser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `treeid` varchar(100) DEFAULT NULL,
  `newtitle` varchar(100) DEFAULT NULL,
  `newcode` varchar(30) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `putout` tinyint(1) DEFAULT '1',
  `ver` tinyint(1) DEFAULT '0',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_ser`
--

LOCK TABLES `db_ser` WRITE;
/*!40000 ALTER TABLE `db_ser` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_ser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sms`
--

DROP TABLE IF EXISTS `db_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Newtitle` varchar(200) DEFAULT NULL,
  `Newcontent` text,
  `Newdesc` varchar(500) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `targets` tinyint(4) DEFAULT '0' COMMENT '0全部,1安卓，2IOS',
  `putout` tinyint(4) DEFAULT '1',
  `isdelete` tinyint(4) DEFAULT '0',
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sms`
--

LOCK TABLES `db_sms` WRITE;
/*!40000 ALTER TABLE `db_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sys_admin`
--

DROP TABLE IF EXISTS `db_sys_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sys_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) DEFAULT NULL,
  `passwords` varchar(80) DEFAULT NULL,
  `adminClass` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `working` tinyint(4) DEFAULT NULL,
  `ver` varchar(50) DEFAULT '0',
  `parts` longtext,
  `weburl` varchar(100) DEFAULT '#',
  `Anumber` varchar(500) DEFAULT NULL,
  `androidid` varchar(100) DEFAULT NULL,
  `iosid` varchar(100) DEFAULT NULL,
  `money` float(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sys_admin`
--

LOCK TABLES `db_sys_admin` WRITE;
/*!40000 ALTER TABLE `db_sys_admin` DISABLE KEYS */;
INSERT INTO `db_sys_admin` VALUES (1,'admin','ccac3d6bc8570c7b7fc4b38747227eaf',99,'sdfsdf','2017-03-26 04:30:21',1,'0','','#','','','',0.00),(2,'super admin','21232f297a57a5a743894a0e4a801fc3',99,'uweb','2016-07-06 06:19:04',1,'0','','#',NULL,NULL,NULL,0.00);
/*!40000 ALTER TABLE `db_sys_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sys_menu`
--

DROP TABLE IF EXISTS `db_sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) DEFAULT NULL,
  `menu_parent` int(11) DEFAULT NULL,
  `menu_url` varchar(100) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `putout` tinyint(4) DEFAULT NULL,
  `side` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sys_menu`
--

LOCK TABLES `db_sys_menu` WRITE;
/*!40000 ALTER TABLE `db_sys_menu` DISABLE KEYS */;
INSERT INTO `db_sys_menu` VALUES (1,'商务引擎',0,NULL,1,0,NULL),(2,'用户协议',1,'/System.php?s=/System/ManagerPage/UserAg',2,1,NULL),(3,'收录地址',1,'/System.php?s=/System/ManagerPage/Included',3,1,NULL),(4,'广告管理',0,NULL,4,0,NULL),(5,'目录结构',4,'/System.php?s=/System/ManagerPage/xtree&class=Ads',5,1,NULL),(6,'广告列表',4,'/System.php?s=/System/AdsListAll',6,1,NULL),(7,'添加广告',4,'/System.php?s=/System/AdsListAll/AddRead',7,1,NULL),(8,'企业信息',0,'',8,0,NULL),(9,'目录结构',8,'/System.php?s=/System/ManagerPage/xtree&class=Company',9,1,NULL),(10,'信息列表',8,'/System.php?s=/System/Company',10,1,NULL),(11,'添加信息',8,'/System.php?s=/System/Company/AddRead',11,1,NULL),(12,'新闻管理',0,NULL,12,1,NULL),(13,'目录结构',12,'/System.php?s=/System/ManagerPage/xtree&class=News',13,1,NULL),(14,'新闻列表',12,'/System.php?s=/System/News',14,1,NULL),(15,'添加新闻',12,'/System.php?s=/System/News/AddRead',15,1,NULL),(16,'产品管理',0,NULL,16,0,NULL),(17,'目录结构',16,'/System.php?s=/System/ManagerPage/xtree&class=Products',17,1,NULL),(18,'产品列表',16,'/System.php?s=/System/Products',18,1,NULL),(19,'添加产品',16,'/System.php?s=/System/Products/AddRead',19,1,NULL),(20,'案例管理',0,NULL,20,1,NULL),(21,'目录结构',20,'/System.php?s=/System/ManagerPage/xtree&class=Case',21,1,NULL),(22,'案例列表',20,'/System.php?s=/System/Case',22,1,NULL),(23,'添加案例',20,'/System.php?s=/System/Case/AddRead',23,1,NULL),(24,'营销网络',0,NULL,24,0,NULL),(25,'目录结构',24,'/System.php?s=/System/ManagerPage/xtree&class=Net',25,1,NULL),(26,'信息列表',24,'/System.php?s=/System/Net',26,1,NULL),(27,'添加信息',24,'/System.php?s=/System/Net/AddRead',27,1,NULL),(28,'下载管理',0,NULL,28,0,NULL),(29,'目录结构',28,'/System.php?s=/System/ManagerPage/xtree&class=Down',29,1,NULL),(30,'下载列表',28,'/System.php?s=/System/Down/index',30,1,NULL),(31,'添加列表',28,'/System.php?s=/System/Down/AddRead',31,1,NULL),(32,'留言管理',0,NULL,32,1,NULL),(33,'在线留言',32,'/System.php?s=/System/Feedback',33,1,NULL),(34,'在线订单',32,'/System.php?s=/System/Feedback2',34,0,NULL),(35,'会员管理',0,NULL,35,0,NULL),(36,'会员分组',35,'/System.php?s=/System/ManagerPage/xtree&class=User',36,1,NULL),(37,'会员列表',35,'/System.php?s=/System/UserAll',37,1,NULL),(38,'添加会员',35,'/System.php?s=/System/UserAll/AddRead',38,1,NULL),(39,'在线客服',0,NULL,39,0,NULL),(40,'客服分类',39,'/System.php?s=/System/ManagerPage/xtree&class=Ser',40,1,NULL),(41,'客服列表',39,'/System.php?s=/System/Ser',41,1,NULL),(42,'友情链接',0,NULL,42,0,NULL),(43,'目录结构',42,'/System.php?s=/System/ManagerPage/xtree&class=Link',43,1,NULL),(44,'链接列表',42,'/System.php?s=/System/Link',44,1,NULL),(45,'添加友链',42,'/System.php?s=/System/Link/AddRead',45,1,NULL),(46,'系统管理',0,NULL,46,1,NULL),(47,'系统设置',46,'/System.php?s=/System/ManagerPage/sitesetup',47,1,NULL),(48,'邮箱设置',46,'/System.php?s=/System/ManagerPage/MailSet',48,1,NULL),(49,'管理员管理',46,'/System.php?s=/System/AdminAll',49,1,NULL),(50,'日志管理',46,'/System.php?s=/System/Log',50,1,NULL),(51,'修改密码',46,'/System.php?s=/System/ManagerPage/ChangePwd',51,1,NULL),(52,'资金动态',35,'/System.php?s=/System/USou',52,1,NULL),(53,'消息推送',0,NULL,53,0,NULL),(54,'推送列表',32,'/System.php?s=/System/SmsAll',54,0,NULL),(55,'添加推送',53,'/System.php?s=/System/SmsAll/AddRead',55,1,NULL);
/*!40000 ALTER TABLE `db_sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sys_note`
--

DROP TABLE IF EXISTS `db_sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sys_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(50) DEFAULT NULL,
  `login_ip` varchar(50) DEFAULT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login_os` varchar(50) DEFAULT NULL,
  `login_ie` varchar(50) DEFAULT NULL,
  `act` varchar(255) DEFAULT NULL,
  `login_tab` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sys_note`
--

LOCK TABLES `db_sys_note` WRITE;
/*!40000 ALTER TABLE `db_sys_note` DISABLE KEYS */;
INSERT INTO `db_sys_note` VALUES (1,'admin','172.16.88.66','2017-01-03 03:50:22','Windows 7','Firefox50.0','【登录】登入成功','sys_admin'),(2,'admin','172.16.88.66','2017-01-10 04:01:50','Windows 7','Firefox50.0','【登录】登入成功','sys_admin'),(3,'admin','172.16.88.66','2017-01-17 03:21:34','Windows 7','Firefox50.0','【登录】登入成功','sys_admin'),(4,'-','172.16.88.66','2017-02-13 02:09:36','Windows 7','Firefox51.0','【登录】密码错误','sys_admin'),(5,'admin','172.16.88.66','2017-02-13 02:09:45','Windows 7','Firefox51.0','【登录】登入成功','sys_admin'),(6,'admin','172.16.88.66','2017-02-13 02:10:25','Windows 7','Firefox51.0','【系统设置】 系统设置修改成功','sys_site'),(7,'admin','172.16.88.66','2017-02-13 02:13:46','Windows 7','Firefox51.0','【新建】 信息ID为[8]的项添加成功','sys_menu'),(8,'admin','172.16.88.66','2017-02-13 02:24:09','Windows 7','Firefox51.0','【新建】 信息ID为[9]的项添加成功','sys_menu'),(9,'admin','172.16.88.66','2017-02-13 02:34:07','Windows 7','Firefox51.0','【新闻】 信息ID为[1]的项添加成功','News'),(10,'admin','172.16.88.66','2017-02-13 02:46:49','Windows 7','Firefox51.0','【案例】 信息ID为[1]的项添加成功','Case'),(11,'admin','172.16.88.66','2017-02-13 07:50:40','Windows 7','Firefox51.0','【新闻】 信息ID为[2]的项添加成功','News'),(12,'admin','172.16.88.66','2017-02-13 08:01:45','Windows 7','Firefox51.0','【新闻】 信息ID为[1]的项修改成功','News'),(13,'admin','172.16.88.66','2017-02-13 08:16:35','Windows 7','Firefox51.0','【新闻】 信息ID为[3]的项添加成功','News'),(14,'admin','172.16.88.66','2017-02-13 08:22:56','Windows 7','Firefox51.0','【新闻】 信息ID为[4]的项添加成功','News'),(15,'admin','172.16.88.66','2017-02-13 08:32:26','Windows 7','Firefox51.0','【新闻】 信息ID为[5]的项添加成功','News'),(16,'admin','172.16.88.66','2017-02-13 08:37:20','Windows 7','Firefox51.0','【新闻】 信息ID为[6]的项添加成功','News'),(17,'admin','172.16.88.66','2017-02-13 08:59:46','Windows 7','Firefox51.0','【新闻】 信息ID为[5]的项修改成功','News'),(18,'admin','172.16.88.66','2017-02-13 09:03:44','Windows 7','Firefox51.0','【新闻】 信息ID为[5]的项修改成功','News'),(19,'admin','172.16.88.66','2017-02-13 09:03:55','Windows 7','Firefox51.0','【新闻】 信息ID为[3]的项修改成功','News'),(20,'admin','172.16.88.66','2017-02-13 09:06:50','Windows 7','Firefox51.0','【新闻】 信息ID为[3]的项修改成功','News'),(21,'admin','172.16.88.66','2017-02-13 10:35:39','Windows 7','Firefox51.0','【新闻】 信息ID为[3]的项修改成功','News'),(22,'admin','172.16.88.66','2017-02-13 10:38:53','Windows 7','Firefox51.0','【新闻】 信息ID为[3]的项修改成功','News'),(23,'admin','172.16.88.66','2017-02-13 11:35:36','Windows 7','Firefox51.0','【登录】登入成功','sys_admin'),(24,'admin','172.16.88.66','2017-02-13 11:40:36','Windows 7','Firefox51.0','【新闻】 信息ID为[6] 更新[]成功','News'),(25,'admin','172.16.88.66','2017-02-13 11:41:19','Windows 7','Firefox51.0','【新闻】 信息ID为[6] 更新[hit]成功','News'),(26,'admin','172.16.88.66','2017-02-13 11:41:23','Windows 7','Firefox51.0','【新闻】 信息ID为[6] 更新[putout]成功','News'),(27,'admin','172.16.88.66','2017-02-13 11:41:29','Windows 7','Firefox51.0','【新闻】 信息ID为[6] 更新[putout]成功','News'),(28,'admin','172.16.88.66','2017-02-14 03:47:12','Windows 7','Firefox51.0','【登录】登入成功','sys_admin'),(29,'admin','172.16.88.66','2017-02-14 07:58:41','Windows 7','Firefox51.0','【登录】登入成功','sys_admin'),(30,'admin','172.16.88.66','2017-02-14 08:33:23','Windows 7','Firefox51.0','【案例】 信息ID为[1]的项修改成功','Case'),(31,'admin','172.16.88.66','2017-02-14 08:44:05','Windows 7','Firefox51.0','【案例】 信息ID为[2]的项添加成功','Case'),(32,'admin','172.16.88.66','2017-02-14 09:06:09','Windows 7','Firefox51.0','【案例】 信息ID为[1]的项修改成功','Case'),(33,'admin','172.16.88.66','2017-02-14 09:36:09','Windows 7','Firefox51.0','【系统设置】 系统设置修改成功','sys_site'),(34,'-','219.137.64.181','2017-03-10 07:09:13','Windows 7','Firefox52.0','【登录】密码错误','sys_admin'),(35,'-','219.137.64.181','2017-03-10 07:09:19','Windows 7','Firefox52.0','【登录】密码错误','sys_admin'),(36,'admin','219.137.64.181','2017-03-10 07:09:26','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(37,'-','120.197.60.59','2017-03-11 04:37:10','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(38,'-','120.197.60.59','2017-03-11 04:37:16','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(39,'admin','120.197.60.59','2017-03-11 04:37:22','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(40,'admin','120.197.60.59','2017-03-11 04:52:18','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(41,'admin','120.197.60.59','2017-03-11 04:57:12','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(42,'admin','120.197.60.59','2017-03-11 04:57:20','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(43,'admin','120.197.60.59','2017-03-11 04:59:47','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(44,'admin','120.197.60.59','2017-03-11 05:03:48','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(45,'admin','120.197.60.59','2017-03-11 05:04:07','Windows 7','Firefox52.0','【案例】 信息ID为[3]的项添加成功','Case'),(46,'admin','120.197.60.59','2017-03-11 05:04:55','Windows 7','Firefox52.0','【案例】 信息ID为[3]的项修改成功','Case'),(47,'admin','120.197.60.59','2017-03-11 05:34:17','Windows 7','Firefox52.0','【案例】 信息ID为[4]的项添加成功','Case'),(48,'admin','120.197.60.59','2017-03-11 05:54:05','Windows 7','Firefox52.0','【案例】 信息ID为[5]的项添加成功','Case'),(49,'admin','120.197.60.59','2017-03-11 06:00:56','Windows 7','Firefox52.0','【案例】 信息ID为[6]的项添加成功','Case'),(50,'admin','120.197.60.59','2017-03-11 06:11:40','Windows 7','Firefox52.0','【案例】 信息ID为[7]的项添加成功','Case'),(51,'admin','120.197.60.59','2017-03-11 06:20:53','Windows 7','Firefox52.0','【案例】 信息ID为[8]的项添加成功','Case'),(52,'admin','120.197.60.59','2017-03-11 06:29:08','Windows 7','Firefox52.0','【案例】 信息ID为[9]的项添加成功','Case'),(53,'admin','120.197.60.59','2017-03-11 06:32:32','Windows 7','Firefox52.0','【案例】 信息ID为[10]的项添加成功','Case'),(54,'admin','120.197.60.59','2017-03-11 06:37:15','Windows 7','Firefox52.0','【案例】 信息ID为[11]的项添加成功','Case'),(55,'admin','120.197.60.59','2017-03-11 06:46:33','Windows 7','Firefox52.0','【案例】 信息ID为[12]的项添加成功','Case'),(56,'admin','120.197.60.59','2017-03-11 06:52:06','Windows 7','Firefox52.0','【案例】 信息ID为[13]的项添加成功','Case'),(57,'admin','120.197.60.59','2017-03-11 07:04:24','Windows 7','Firefox52.0','【案例】 信息ID为[14]的项添加成功','Case'),(58,'admin','120.197.60.59','2017-03-11 07:12:28','Windows 7','Firefox52.0','【案例】 信息ID为[15]的项添加成功','Case'),(59,'admin','120.197.60.59','2017-03-11 07:22:56','Windows 7','Firefox52.0','【案例】 信息ID为[16]的项添加成功','Case'),(60,'admin','120.197.60.59','2017-03-11 07:26:22','Windows 7','Firefox52.0','【案例】 信息ID为[2]的项修改成功','Case'),(61,'admin','120.197.60.59','2017-03-11 07:27:09','Windows 7','Firefox52.0','【案例】 信息ID为[3]的项修改成功','Case'),(62,'admin','120.197.60.59','2017-03-11 07:28:23','Windows 7','Firefox52.0','【案例】 信息ID为[12]的项修改成功','Case'),(63,'admin','120.197.60.59','2017-03-11 07:31:59','Windows 7','Firefox52.0','【案例】 信息ID为[11]的项修改成功','Case'),(64,'admin','120.197.60.59','2017-03-11 07:32:43','Windows 7','Firefox52.0','【案例】 信息ID为[10]的项修改成功','Case'),(65,'admin','120.197.60.59','2017-03-11 07:33:21','Windows 7','Firefox52.0','【案例】 信息ID为[9]的项修改成功','Case'),(66,'admin','120.197.60.59','2017-03-11 07:33:51','Windows 7','Firefox52.0','【案例】 信息ID为[8]的项修改成功','Case'),(67,'admin','120.197.60.59','2017-03-11 07:34:53','Windows 7','Firefox52.0','【案例】 信息ID为[6]的项修改成功','Case'),(68,'admin','120.197.60.59','2017-03-11 07:35:44','Windows 7','Firefox52.0','【案例】 信息ID为[5]的项修改成功','Case'),(69,'admin','120.197.60.59','2017-03-16 02:23:33','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(70,'admin','120.197.60.59','2017-03-16 02:23:55','Windows 7','Firefox52.0','【新闻】 信息ID为[6]的项修改成功','News'),(71,'admin','120.197.60.59','2017-03-16 02:24:12','Windows 7','Firefox52.0','【新闻】 信息ID为[5]的项修改成功','News'),(72,'admin','120.197.60.59','2017-03-16 02:24:26','Windows 7','Firefox52.0','【新闻】 信息ID为[4]的项修改成功','News'),(73,'admin','120.197.60.59','2017-03-16 02:24:39','Windows 7','Firefox52.0','【新闻】 信息ID为[3]的项修改成功','News'),(74,'admin','120.197.60.59','2017-03-16 02:24:51','Windows 7','Firefox52.0','【新闻】 信息ID为[2]的项修改成功','News'),(75,'admin','120.197.60.59','2017-03-16 02:25:04','Windows 7','Firefox52.0','【新闻】 信息ID为[1]的项修改成功','News'),(76,'admin','120.197.60.59','2017-03-16 03:58:32','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(77,'admin','103.61.137.83','2017-03-18 11:25:28','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(78,'admin','103.61.137.83','2017-03-18 11:31:21','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(79,'admin','103.61.137.83','2017-03-18 11:34:05','Windows 7','Firefox52.0','【新闻】 信息ID为[7]的项添加成功','News'),(80,'admin','103.61.137.83','2017-03-18 11:35:35','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(81,'admin','103.61.137.83','2017-03-18 11:36:44','Windows 7','Firefox52.0','【新闻】 信息ID为[7]的项修改成功','News'),(82,'admin','103.61.137.83','2017-03-18 11:37:13','Windows 7','Firefox52.0','【新闻】 信息ID为[7]的项修改成功','News'),(83,'admin','103.61.137.83','2017-03-18 11:38:34','Windows 7','Firefox52.0','【新闻】 信息ID为[7]的项修改成功','News'),(84,'admin','103.61.137.83','2017-03-18 11:47:55','Windows 7','Firefox52.0','【新闻】 信息ID为[8]的项添加成功','News'),(85,'admin','219.137.66.102','2017-03-19 09:25:04','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(86,'admin','219.137.66.207','2017-03-22 10:09:11','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(87,'admin','219.137.66.207','2017-03-22 10:09:38','Windows 7','Firefox52.0','【新闻】 信息ID为[8]的项修改成功','News'),(88,'-','113.65.161.186','2017-03-23 02:36:49','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(89,'admin','113.65.161.186','2017-03-23 02:36:56','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(90,'admin','113.65.161.186','2017-03-23 02:57:49','Windows 7','Firefox52.0','【新闻】 信息ID为[9]的项添加成功','News'),(91,'admin','113.65.161.186','2017-03-23 02:59:23','Windows 7','Firefox52.0','【新闻】 信息ID为[9]的项修改成功','News'),(92,'admin','113.65.161.186','2017-03-23 03:03:11','Windows 7','Firefox52.0','【新闻】 信息ID为[10]的项添加成功','News'),(93,'admin','113.65.161.186','2017-03-23 03:03:11','Windows 7','Firefox52.0','【新闻】 信息ID为[11]的项添加成功','News'),(94,'admin','113.65.161.186','2017-03-23 03:03:33','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(95,'admin','113.65.161.186','2017-03-23 03:03:47','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(96,'admin','113.65.161.186','2017-03-23 03:04:00','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[putout]成功','News'),(97,'admin','113.65.161.186','2017-03-23 03:04:44','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(98,'admin','113.65.161.186','2017-03-23 03:07:41','Windows 7','Firefox52.0','【新闻】 信息ID为[10]的项修改成功','News'),(99,'admin','113.65.161.186','2017-03-23 03:08:02','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(100,'admin','113.65.161.186','2017-03-23 03:08:06','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(101,'admin','113.65.161.186','2017-03-23 03:08:07','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(102,'admin','113.65.161.186','2017-03-23 03:08:08','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(103,'admin','113.65.161.186','2017-03-23 03:08:09','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(104,'admin','113.65.161.186','2017-03-23 03:08:10','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(105,'admin','113.65.161.186','2017-03-23 03:08:11','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(106,'admin','113.65.161.186','2017-03-23 03:08:14','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(107,'admin','113.65.161.186','2017-03-23 03:08:23','Windows 7','Firefox52.0','【新闻】 信息ID为[11] 更新[]成功','News'),(108,'admin','113.65.161.186','2017-03-23 03:12:02','Windows 7','Firefox52.0','【新闻】 信息ID为[10]的项修改成功','News'),(109,'admin','113.65.161.186','2017-03-24 04:55:22','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(110,'admin','113.65.161.186','2017-03-24 05:10:20','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(111,'-','113.65.161.186','2017-03-24 10:05:16','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(112,'admin','113.65.161.186','2017-03-24 10:05:22','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(113,'admin','113.65.161.186','2017-03-24 10:12:41','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(114,'-','198.71.92.37','2017-03-25 11:36:10','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(115,'-','198.71.92.37','2017-03-25 11:36:26','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(116,'admin','198.71.92.37','2017-03-25 11:36:33','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(117,'admin','113.65.161.186','2017-03-25 12:04:52','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(118,'admin','113.65.161.186','2017-03-26 04:29:59','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(119,'admin','113.65.161.186','2017-03-26 04:30:21','Windows 7','Firefox52.0','【修改】管理员[admin]修改密码成功','sys_admin'),(120,'admin','113.65.161.186','2017-03-26 04:30:24','Windows 7','Firefox52.0','【退出】退出系统',''),(121,'-','113.65.161.186','2017-03-26 04:30:32','Windows 7','Firefox52.0','【登录】密码错误','sys_admin'),(122,'-','113.65.161.186','2017-03-26 04:30:39','Windows 7','Firefox52.0','【登录】密码错误','sys_admin'),(123,'-','113.65.161.186','2017-03-26 04:30:51','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(124,'admin','113.65.161.186','2017-03-26 04:30:58','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(125,'admin','113.65.161.186','2017-03-26 04:31:41','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(126,'admin','113.65.161.186','2017-03-26 04:31:46','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(127,'admin','113.65.161.186','2017-03-26 04:36:50','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(128,'admin','113.65.161.186','2017-03-26 05:35:41','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(129,'admin','14.145.146.70','2017-03-27 07:29:48','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(130,'-','219.137.66.217','2017-03-28 09:54:57','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(131,'-','219.137.66.217','2017-03-28 09:55:03','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(132,'admin','219.137.66.217','2017-03-28 09:55:08','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(133,'admin','219.137.66.217','2017-03-28 09:57:43','Windows 7','Firefox52.0','【新闻】 信息ID为[12]的项添加成功','News'),(134,'admin','219.137.66.217','2017-03-28 10:11:10','Windows 7','Firefox52.0','【新闻】 信息ID为[13]的项添加成功','News'),(135,'admin','219.137.66.217','2017-03-28 10:14:06','Windows 7','Firefox52.0','【新闻】 信息ID为[13]的项修改成功','News'),(136,'admin','219.137.66.217','2017-03-28 10:15:35','Windows 7','Firefox52.0','【新闻】 信息ID为[13]的项修改成功','News'),(137,'admin','120.197.60.59','2017-03-30 09:28:51','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(138,'admin','219.137.65.98','2017-03-31 04:06:43','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(139,'-','199.193.248.75','2017-04-02 08:03:05','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(140,'admin','199.193.248.75','2017-04-02 08:03:11','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(141,'admin','219.137.67.166','2017-04-11 09:57:06','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(142,'admin','219.137.67.166','2017-04-11 10:43:08','Windows 7','Firefox52.0','【登录】验证码错误','sys_admin'),(143,'admin','219.137.67.166','2017-04-11 10:43:18','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(144,'admin','219.137.67.166','2017-04-11 10:47:17','Windows 7','Firefox52.0','【新闻】 信息ID为[14]的项添加成功','News'),(145,'admin','219.137.67.166','2017-04-11 10:54:39','Windows 7','Firefox52.0','【新闻】 信息ID为[15]的项添加成功','News'),(146,'admin','103.61.136.120','2017-04-11 11:24:28','Windows 7','Firefox52.0','【登录】登入成功','sys_admin'),(147,'admin','103.61.136.120','2017-04-11 11:24:44','Windows 7','Firefox52.0','【新闻】 信息ID为[15]的项修改成功','News'),(148,'-','120.197.60.59','2017-04-24 09:34:29','Linux','Chrome40.0','【登录】密码错误','sys_admin'),(149,'admin','120.197.60.59','2017-04-24 09:34:53','Linux','Chrome40.0','【登录】登入成功','sys_admin'),(150,'admin','120.197.60.59','2017-04-24 09:39:47','Linux','Chrome40.0','【登录】登入成功','sys_admin'),(151,'admin','113.65.161.156','2017-05-06 01:55:53','Windows 7','Firefox53.0','【登录】登入成功','sys_admin'),(152,'-','183.233.190.25','2017-05-12 01:58:39','Windows 7','Firefox53.0','【登录】验证码错误','sys_admin'),(153,'admin','219.137.65.115','2017-05-12 01:58:46','Windows 7','Firefox53.0','【登录】登入成功','sys_admin'),(154,'admin','183.233.190.25','2017-05-12 01:59:12','Windows 7','Firefox53.0','【新闻】 信息ID为[5]的项修改成功','News'),(155,'admin','83.217.10.120','2017-05-12 06:39:13','Windows 7','Firefox53.0','【登录】登入成功','sys_admin'),(156,'admin','83.217.10.120','2017-05-12 06:49:37','Windows 7','Firefox53.0','【新闻】 信息ID为[16]的项添加成功','News'),(157,'admin','83.217.10.120','2017-05-12 06:52:07','Windows 7','Firefox53.0','【新闻】 信息ID为[17]的项添加成功','News'),(158,'admin','83.217.10.120','2017-05-12 06:52:33','Windows 7','Firefox53.0','【系统设置】 系统设置修改成功','sys_site'),(159,'admin','83.217.10.120','2017-05-12 06:53:23','Windows 7','Firefox53.0','【新闻】 信息ID为[17]的项修改成功','News'),(160,'admin','83.217.10.120','2017-05-12 06:55:12','Windows 7','Firefox53.0','【新闻】 信息ID为[17]的项修改成功','News'),(161,'admin','83.217.10.120','2017-05-12 06:55:48','Windows 7','Firefox53.0','【新闻】 信息ID为[17]的项修改成功','News'),(162,'admin','83.217.10.120','2017-05-12 06:56:01','Windows 7','Firefox53.0','【新闻】 信息ID为[16]的项修改成功','News'),(163,'admin','219.137.65.115','2017-05-19 08:06:49','Windows 7','Firefox53.0','【登录】登入成功','sys_admin'),(164,'-','219.137.65.115','2017-05-19 08:09:10','Windows 7','MSIE9.0','【登录】密码错误','sys_admin'),(165,'-','219.137.65.115','2017-05-19 08:09:19','Windows 7','MSIE9.0','【登录】密码错误','sys_admin'),(166,'admin','219.137.65.115','2017-05-19 08:09:31','Windows 7','MSIE9.0','【登录】登入成功','sys_admin'),(167,'admin','219.137.67.163','2017-06-01 10:46:02','Windows 7','Firefox53.0','【登录】登入成功','sys_admin');
/*!40000 ALTER TABLE `db_sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sys_site`
--

DROP TABLE IF EXISTS `db_sys_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sys_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(200) DEFAULT NULL,
  `siteWeb` varchar(100) DEFAULT NULL,
  `ver` int(11) DEFAULT NULL,
  `lock_ip` longtext,
  `cloud_url` varchar(100) DEFAULT NULL,
  `cloud_port` int(6) DEFAULT NULL,
  `islink` tinyint(4) DEFAULT NULL,
  `androidver` int(11) DEFAULT NULL,
  `androidurl` varchar(100) DEFAULT NULL,
  `iosver` int(11) DEFAULT NULL,
  `iosurl` varchar(100) DEFAULT NULL,
  `smtp` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `mailpwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sys_site`
--

LOCK TABLES `db_sys_site` WRITE;
/*!40000 ALTER TABLE `db_sys_site` DISABLE KEYS */;
INSERT INTO `db_sys_site` VALUES (4,'劲驰网络','www.vmuui.com',0,'172.16.88.61','172.16.88.190',8282,1,0,'www.android.com',1,'https://itunes.apple.com/us/app/che-dian-wang/id1121595984?l=zh&amp;ls=1&amp;mt=8','smtp.163.com','qq469100943@163.com','701789');
/*!40000 ALTER TABLE `db_sys_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_sys_userinfo`
--

DROP TABLE IF EXISTS `db_sys_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_sys_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treeid` varchar(100) DEFAULT NULL,
  `uname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `upwd` varchar(50) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `truename` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `umoney` float(11,2) DEFAULT '0.00',
  `addtime` datetime DEFAULT NULL,
  `lastaddtime` datetime DEFAULT NULL,
  `ucheck` tinyint(4) DEFAULT '1',
  `userimg` varchar(100) DEFAULT '/Web/UploadFile/UserInfo/none.png' COMMENT '用户头像',
  `wx` varchar(100) DEFAULT '',
  `qq` varchar(100) DEFAULT '',
  `wb` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_sys_userinfo`
--

LOCK TABLES `db_sys_userinfo` WRITE;
/*!40000 ALTER TABLE `db_sys_userinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_sys_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_usou`
--

DROP TABLE IF EXISTS `db_usou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_usou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(80) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '0充值，1充电',
  `Adesc` varchar(300) DEFAULT NULL,
  `cnum` float(9,2) DEFAULT NULL,
  `enum` float(9,2) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `pid` int(15) DEFAULT '0' COMMENT '桩ID',
  `cid` int(15) DEFAULT '0' COMMENT 'temp id',
  `elenum` float(9,2) DEFAULT '0.00' COMMENT '充电电量',
  `No` varchar(30) DEFAULT NULL COMMENT '交易编号',
  `sitename` varchar(80) DEFAULT NULL,
  `uint` float(5,2) DEFAULT '0.00',
  `pilenum` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_usou`
--

LOCK TABLES `db_usou` WRITE;
/*!40000 ALTER TABLE `db_usou` DISABLE KEYS */;
/*!40000 ALTER TABLE `db_usou` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-07 10:27:28
