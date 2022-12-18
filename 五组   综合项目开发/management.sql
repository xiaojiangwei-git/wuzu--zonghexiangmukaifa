-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: management
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `arranging`
--

DROP TABLE IF EXISTS `arranging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arranging` (
  `arr_id` int(11) NOT NULL AUTO_INCREMENT,
  `arr__classnameid` varchar(50) DEFAULT NULL,
  `arr_courseid` varchar(50) DEFAULT NULL,
  `arr_classroomtimeid` varchar(50) DEFAULT NULL,
  `arr_classbuildid` varchar(50) DEFAULT NULL,
  `arr_buildid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`arr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arranging`
--

LOCK TABLES `arranging` WRITE;
/*!40000 ALTER TABLE `arranging` DISABLE KEYS */;
INSERT INTO `arranging` VALUES (1,'1','1','1','1','1'),(2,'2','2','2','2','2');
/*!40000 ALTER TABLE `arranging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `build`
--

DROP TABLE IF EXISTS `build`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `build` (
  `bu_id` int(11) NOT NULL AUTO_INCREMENT,
  `ro_adr` varchar(50) DEFAULT NULL,
  `ro_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `build`
--

LOCK TABLES `build` WRITE;
/*!40000 ALTER TABLE `build` DISABLE KEYS */;
INSERT INTO `build` VALUES (1,'3-102','致远楼'),(2,'2-222','致知楼');
/*!40000 ALTER TABLE `build` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `cla_id` int(11) NOT NULL AUTO_INCREMENT,
  `cla_name` varchar(50) NOT NULL,
  `cla_courseid` varchar(50) NOT NULL,
  `cla_classroomtimeid` varchar(50) NOT NULL,
  `cla_studentid` varchar(50) NOT NULL,
  `cla_teacherid` varchar(50) NOT NULL,
  PRIMARY KEY (`cla_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'软件1班','1','1','1','1'),(2,'软件2班','2','2','2','2');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classroom` (
  `ro_id` int(11) NOT NULL AUTO_INCREMENT,
  `ro_adr` varchar(50) NOT NULL,
  `ro_buildid` varchar(50) NOT NULL,
  `ro_classid` varchar(50) NOT NULL,
  `ro_time` varchar(50) NOT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES (1,'3-102','致远楼','1','1'),(2,'2-222','致知楼','2','2');
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college` (
  `col_id` int(11) NOT NULL AUTO_INCREMENT,
  `col_adr` varchar(50) DEFAULT NULL,
  `col_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`col_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1,'东边','虹远楼'),(2,'西边','金武楼');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counselor`
--

DROP TABLE IF EXISTS `counselor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counselor` (
  `cou_id` int(11) NOT NULL AUTO_INCREMENT,
  `cou_num` int(11) NOT NULL,
  `cou_name` varchar(50) NOT NULL,
  `cou_sex` varchar(50) NOT NULL,
  `cou_classid` varchar(50) NOT NULL,
  `cou_college` varchar(50) NOT NULL,
  `cou_pho` varchar(50) NOT NULL,
  `cou_classroomadrid` varchar(50) NOT NULL,
  `cou_classroomtimeid` varchar(50) NOT NULL,
  PRIMARY KEY (`cou_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counselor`
--

LOCK TABLES `counselor` WRITE;
/*!40000 ALTER TABLE `counselor` DISABLE KEYS */;
INSERT INTO `counselor` VALUES (1,111111,'吴虎','男','1','智工','5555587484','1','1'),(2,222222,'李琴','女','2','智工','4749498191','2','2');
/*!40000 ALTER TABLE `counselor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `rse_id` int(11) NOT NULL AUTO_INCREMENT,
  `rse_name` varchar(50) NOT NULL,
  `rse_classid` varchar(50) NOT NULL,
  `rse_teacherid` varchar(50) NOT NULL,
  `rse_classroomtimeid` varchar(50) NOT NULL,
  `rse__buildid` varchar(50) NOT NULL,
  PRIMARY KEY (`rse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'java','1','1','1','1'),(2,'python','2','2','2','2');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_num` int(11) NOT NULL,
  `stu_name` varchar(50) NOT NULL,
  `stu_sex` varchar(50) NOT NULL,
  `stu_class` varchar(50) NOT NULL,
  `stu_college` varchar(50) NOT NULL,
  `stu_pho` varchar(50) NOT NULL,
  `stu_classroomadrid` varchar(50) NOT NULL,
  `stu_classroomtimeid` varchar(50) NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,1433223,'李三','男','软件1班','智工','14785236996','1','1'),(2,2541254,'张四','女','软件2班','智工','2134565214','2','2');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemadmin`
--

DROP TABLE IF EXISTS `systemadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemadmin` (
  `sys_id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_num` varchar(50) NOT NULL,
  `sys_name` varchar(50) NOT NULL,
  `sys_zhanghao` varchar(50) NOT NULL,
  `sys_classid` varchar(50) NOT NULL,
  `sys_arrangingid` varchar(50) NOT NULL,
  PRIMARY KEY (`sys_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemadmin`
--

LOCK TABLES `systemadmin` WRITE;
/*!40000 ALTER TABLE `systemadmin` DISABLE KEYS */;
INSERT INTO `systemadmin` VALUES (1,'123456','张三','123456','1','增删改查'),(2,'143321','李四','143321','1','增删改查');
/*!40000 ALTER TABLE `systemadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `tea_id` int(11) NOT NULL AUTO_INCREMENT,
  `tea_num` int(11) NOT NULL,
  `tea_name` varchar(50) NOT NULL,
  `tea_sex` varchar(50) NOT NULL,
  `tea_class` varchar(50) NOT NULL,
  `tea_colleg` varchar(50) NOT NULL,
  `tea_pho` varchar(50) NOT NULL,
  `tea_classroomadrid` varchar(50) NOT NULL,
  `tea_classroomtimeid` varchar(50) NOT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,445511,'王毅','男','软件1班','智工','5555541452','1','1'),(2,552211,'李清','女','软件2班','智工','5414778455','2','2');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-18 16:57:08
