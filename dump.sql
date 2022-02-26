-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	8.0.21-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `framework`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `framework` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `framework`;

--
-- Table structure for table `confirm`
--

DROP TABLE IF EXISTS `confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `confirm` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `issued` datetime DEFAULT NULL,
  `kind` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_confirm_user` (`user_id`),
  CONSTRAINT `c_fk_confirm_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirm`
--

LOCK TABLES `confirm` WRITE;
/*!40000 ALTER TABLE `confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fwconfig`
--

DROP TABLE IF EXISTS `fwconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fwconfig` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `local` tinyint unsigned DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fixed` tinyint unsigned DEFAULT NULL,
  `integrity` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `crossorigin` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `defer` tinyint unsigned DEFAULT NULL,
  `async` tinyint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fwconfig`
--

LOCK TABLES `fwconfig` WRITE;
/*!40000 ALTER TABLE `fwconfig` DISABLE KEYS */;
INSERT INTO `fwconfig` VALUES (1,'sitename',1,'framework',1,'','',0,0,'string'),(2,'sitenoreply',1,'noreply@localhost.org',1,'','',0,0,'string'),(3,'siteurl',1,'http://localhost.org/',1,'','',0,0,'string'),(4,'sysadmin',1,'b8025187@newcastle.ac.uk',1,'','',0,0,'string'),(5,'usecsp',1,'1',1,'','',0,0,'string'),(6,'reportcsp',1,'1',1,'','',0,0,'string'),(7,'bootcss',0,'https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css',1,'','',0,0,'css'),(8,'editablecss',0,'/assets/css/bs4-editable.css',1,'','',0,0,'css'),(9,'facss',0,'https://use.fontawesome.com/releases/v5.15.1/css/all.css',1,'','',0,0,'css'),(10,'bootvuecss',0,'https://unpkg.com/bootstrap-vue@latest/dist/bootstrap-vue.min.css',1,'','',0,0,'css'),(11,'jquery',0,'https://code.jquery.com/jquery-3.5.1.min.js',1,'','',0,0,'js'),(12,'jqueryslim',0,'https://code.jquery.com/jquery-3.5.1.slim.min.js',1,'','',0,0,'js'),(13,'bootjs',0,'https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js',1,'','',0,0,'js'),(14,'bootbox',0,'https://cdn.jsdelivr.net/npm/bootbox@5.5.2/bootbox.js',1,'','',0,0,'js'),(15,'editable',0,'/assets/js/bs4-editable-min.js',1,'','',0,0,'js'),(16,'parsley',0,'https://cdn.jsdelivr.net/npm/parsleyjs@2.9.2/dist/parsley.min.js',1,'','',0,0,'js'),(17,'popperjs',0,'https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js',1,'','',0,0,'js'),(18,'utiljs',0,'/assets/js/util-min.js',1,'','',0,0,'js'),(19,'vuejs',0,'https://unpkg.com/vue/dist/vue.min.js',1,'','',0,0,'js'),(20,'bootvuejs',0,'https://unpkg.com/bootstrap-vue@latest/dist/bootstrap-vue.min.js',1,'','',0,0,'js'),(21,'gijgojs',0,'https://cdnjs.cloudflare.com/ajax/libs/gijgo/1.9.13/combined/js/gijgo.min.js',1,'','',0,0,'js'),(22,'gijgocss',0,'https://cdnjs.cloudflare.com/ajax/libs/gijgo/1.9.13/combined/css/gijgo.min.css',1,'','',0,0,'css');
/*!40000 ALTER TABLE `fwconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `update` datetime DEFAULT NULL,
  `num` tinyint unsigned DEFAULT NULL,
  `note_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_log_note` (`note_id`),
  CONSTRAINT `c_fk_log_note_id` FOREIGN KEY (`note_id`) REFERENCES `note` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'2021-01-06 08:46:34',1,1),(2,'2021-01-06 08:46:57',1,2),(5,'2021-01-06 08:48:03',1,5),(6,'2021-01-06 08:49:44',1,5),(7,'2021-01-06 08:49:46',1,5),(8,'2021-01-06 08:50:00',1,5),(9,'2021-01-06 08:50:08',1,2),(10,'2021-01-06 08:50:10',1,2),(11,'2021-01-06 08:50:36',1,5),(14,'2021-01-06 08:51:12',1,1),(15,'2021-01-06 08:51:18',1,2),(17,'2021-01-06 08:54:45',1,7),(18,'2021-01-06 08:54:48',1,7),(19,'2021-01-06 08:55:25',1,7),(20,'2021-01-06 08:55:32',1,7),(21,'2021-01-06 08:55:37',1,7),(23,'2021-01-06 08:56:43',1,8),(24,'2021-01-06 08:58:52',1,9),(25,'2021-01-06 08:59:12',1,10),(26,'2021-01-06 08:59:46',1,7),(27,'2021-01-06 08:59:57',1,7),(28,'2021-01-06 09:00:03',1,7),(29,'2021-01-06 09:00:06',1,7),(30,'2021-01-06 09:01:27',1,11),(31,'2021-01-06 09:07:17',1,12),(32,'2021-01-06 09:07:20',1,12),(33,'2021-01-06 09:07:30',1,12),(34,'2021-01-06 09:07:35',1,12),(35,'2021-01-06 09:09:23',1,13),(36,'2021-01-06 09:09:33',1,14),(38,'2021-01-06 09:41:36',1,16),(39,'2021-01-06 09:41:38',1,16),(40,'2021-01-06 09:41:49',1,16);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `admin` tinyint unsigned DEFAULT NULL,
  `project_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_manage_project` (`project_id`),
  KEY `index_foreignkey_manage_user` (`user_id`),
  CONSTRAINT `c_fk_manage_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `c_fk_manage_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
INSERT INTO `manage` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,4,1),(5,0,4,3),(6,1,4,2),(7,1,5,1),(8,0,5,2),(9,1,6,3),(10,0,6,1),(11,1,7,2),(12,1,7,3),(14,1,9,2),(15,1,10,2);
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `summary` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `minutes` int unsigned DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `project_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_note_project` (`project_id`),
  CONSTRAINT `c_fk_note_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,'Testing add note','testing to see if a note is added',20,'2021-01-06 08:46:34',1),(2,'Test upload','testing uploading a note',10,'2021-01-06 08:46:57',1),(5,'Testing deleting update','deleting upload',10,'2021-01-06 08:48:03',1),(7,'Inspiration images','art project',50,'2021-01-06 08:54:45',2),(8,'build files','testing deleting a note',40,'2021-01-06 08:56:43',3),(9,'Implementing the django website',NULL,20,'2021-01-06 08:58:52',4),(10,'optimising the neural network',NULL,20,'2021-01-06 08:59:12',4),(11,'designing the blog','testing deleting a note',20,'2021-01-06 09:01:27',5),(12,'photographs','Inspo',50,'2021-01-06 09:07:17',6),(13,'test 7','testing deleting a note',50,'2021-01-06 09:09:23',1),(14,'testing deleting update','testing deleting a note',60,'2021-01-06 09:09:33',1),(16,'testing','testing',10,'2021-01-06 09:41:36',10);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kind` int unsigned DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `needlogin` tinyint unsigned DEFAULT NULL,
  `mobileonly` tinyint unsigned DEFAULT NULL,
  `active` tinyint unsigned DEFAULT NULL,
  `needajax` tinyint unsigned DEFAULT NULL,
  `needfwutils` tinyint unsigned DEFAULT NULL,
  `needparsley` tinyint unsigned DEFAULT NULL,
  `neededitable` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'about',2,'@content/about.twig',0,0,1,NULL,NULL,NULL,NULL),(2,'admin',1,'\\Framework\\Pages\\Admin',1,0,1,NULL,NULL,NULL,NULL),(3,'assets',1,'\\Framework\\Pages\\Assets',1,0,0,NULL,NULL,NULL,NULL),(4,'confirm',1,'\\Framework\\Pages\\UserLogin',0,0,0,NULL,NULL,NULL,NULL),(5,'contact',1,'\\Pages\\Contact',0,0,1,NULL,NULL,NULL,NULL),(6,'cspreport',1,'\\Framework\\Pages\\CSPReport',0,0,1,NULL,NULL,NULL,NULL),(7,'devel',1,'\\Framework\\Pages\\Developer',1,0,1,NULL,NULL,NULL,NULL),(8,'forgot',1,'\\Framework\\Pages\\UserLogin',0,0,1,NULL,NULL,NULL,NULL),(9,'home',1,'\\Pages\\Home',0,0,1,NULL,NULL,NULL,NULL),(10,'install.php',2,'@util/oops.twig',0,0,1,NULL,NULL,NULL,NULL),(11,'login',1,'\\Framework\\Pages\\UserLogin',0,0,1,NULL,NULL,NULL,NULL),(12,'logout',1,'\\Framework\\Pages\\UserLogin',1,0,1,NULL,NULL,NULL,NULL),(13,'private',1,'\\Framework\\Pages\\GetFile',1,0,1,NULL,NULL,NULL,NULL),(14,'register',1,'\\Framework\\Pages\\UserLogin',0,0,0,NULL,NULL,NULL,NULL),(15,'test',2,'@util/test.twig',1,0,1,NULL,NULL,NULL,NULL),(16,'upload',1,'\\Framework\\Pages\\Upload',1,0,1,NULL,NULL,NULL,NULL),(17,'profile',2,'@content/profile.twig',1,0,1,0,0,0,0),(18,'project',1,'\\Pages\\Project',1,0,1,0,0,0,0),(19,'note',1,'\\Pages\\Note',1,0,1,0,0,0,0),(20,'create',1,'\\Pages\\Create',1,0,1,0,0,0,0);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagerole`
--

DROP TABLE IF EXISTS `pagerole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagerole` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `otherinfo` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `page_id` int unsigned DEFAULT NULL,
  `rolecontext_id` int unsigned DEFAULT NULL,
  `rolename_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_pagerole_page` (`page_id`),
  KEY `index_foreignkey_pagerole_rolecontext` (`rolecontext_id`),
  KEY `index_foreignkey_pagerole_rolename` (`rolename_id`),
  CONSTRAINT `c_fk_pagerole_page_id` FOREIGN KEY (`page_id`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `c_fk_pagerole_rolecontext_id` FOREIGN KEY (`rolecontext_id`) REFERENCES `rolecontext` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `c_fk_pagerole_rolename_id` FOREIGN KEY (`rolename_id`) REFERENCES `rolename` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagerole`
--

LOCK TABLES `pagerole` WRITE;
/*!40000 ALTER TABLE `pagerole` DISABLE KEYS */;
INSERT INTO `pagerole` VALUES (1,'-','2021-01-06 07:54:33',NULL,2,1,1),(2,'-','2021-01-06 07:54:33',NULL,7,1,1),(3,'-','2021-01-06 07:54:33',NULL,7,1,2),(4,'-','2021-01-06 07:54:33',NULL,15,2,3);
/*!40000 ALTER TABLE `pagerole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `summary` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'web framework','testing 2'),(2,'Art project','creating an art project'),(3,'Programming for games','Understanding and translating shapes'),(4,'Neural network','Building a neural network'),(5,'Building a Django Framework','work'),(6,'My Street photography project','inspirational images of photographs'),(7,'Mapping project','maps'),(9,'testing dup','testing deleting a note'),(10,'web framework','framework');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `otherinfo` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `rolecontext_id` int unsigned DEFAULT NULL,
  `rolename_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_role_user` (`user_id`),
  KEY `index_foreignkey_role_rolecontext` (`rolecontext_id`),
  KEY `index_foreignkey_role_rolename` (`rolename_id`),
  CONSTRAINT `c_fk_role_rolecontext_id` FOREIGN KEY (`rolecontext_id`) REFERENCES `rolecontext` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `c_fk_role_rolename_id` FOREIGN KEY (`rolename_id`) REFERENCES `rolename` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `c_fk_role_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'-','2021-01-06 07:54:33',NULL,1,1,1),(2,'-','2021-01-06 07:54:33',NULL,1,1,2),(3,'','2021-01-06 08:57:24',NULL,2,1,2);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolecontext`
--

DROP TABLE IF EXISTS `rolecontext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolecontext` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fixed` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolecontext`
--

LOCK TABLES `rolecontext` WRITE;
/*!40000 ALTER TABLE `rolecontext` DISABLE KEYS */;
INSERT INTO `rolecontext` VALUES (1,'Site',1),(2,'Test',1);
/*!40000 ALTER TABLE `rolecontext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolename`
--

DROP TABLE IF EXISTS `rolename`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolename` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fixed` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolename`
--

LOCK TABLES `rolename` WRITE;
/*!40000 ALTER TABLE `rolename` DISABLE KEYS */;
INSERT INTO `rolename` VALUES (1,'Admin',1),(2,'Developer',1),(3,'Tester',1);
/*!40000 ALTER TABLE `rolename` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `added` datetime DEFAULT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `public` tinyint unsigned DEFAULT NULL,
  `mimetype` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `note_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_foreignkey_upload_user` (`user_id`),
  KEY `index_foreignkey_upload_note` (`note_id`),
  CONSTRAINT `c_fk_upload_note_id` FOREIGN KEY (`note_id`) REFERENCES `note` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `c_fk_upload_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` VALUES (1,'2021-01-06 08:46:56','/assets/public/1/2021/01/5ff579007c4645.81358268.pdf','CSC3123-Brief.pdf',1,'application/pdf',1,2),(7,'2021-01-06 08:55:37','/assets/public/1/2021/01/5ff57b09361e33.04714607.jpg','test 3.jpg',1,'image/jpeg',1,7),(8,'2021-01-06 09:07:17','/assets/public/3/2021/01/5ff57dc53c9d45.71789266.jpg','test 2.jpg',1,'image/jpeg',3,12),(9,'2021-01-06 09:07:30','/assets/public/3/2021/01/5ff57dd2bbb936.68665674.jpg','test 3.jpg',1,'image/jpeg',3,12),(10,'2021-01-06 09:07:35','/assets/public/3/2021/01/5ff57dd7e2b487.74538804.jpg','test 1.jpg',1,'image/jpeg',3,12);
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `active` tinyint unsigned DEFAULT NULL,
  `confirm` tinyint unsigned DEFAULT NULL,
  `joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'b8025187@newcastle.ac.uk','runnily','$2y$10$.26tylzUIciPBzItOMUv7um2aUUJ.FdU8n9tZpdeC7R5NOpXLAaR2',1,1,'2021-01-06 07:54:33'),(2,'ugo@gmail.com','ugo','$2y$10$XoiB5YRHdsFPoXh0X4LY2.WBXwYGCtKU/NkOGUIIaGxbpizZN23Ee',1,1,'2021-01-06 08:57:24'),(3,'tester@gmail.com','tester','$2y$10$Gp6VBdvBFDH9V3EV6PrabeWnFjyAcsvEpWUj3Pu9krgN7G7DYeFem',1,1,'2021-01-06 08:57:53');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','framework','framework','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y'),('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2021-01-06 07:36:11',NULL),('default',0,'memory_block_read_cost',NULL,'2021-01-06 07:36:11',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--

LOCK TABLES `global_grants` WRITE;
/*!40000 ALTER TABLE `global_grants` DISABLE KEYS */;
INSERT INTO `global_grants` VALUES ('mysql.session','localhost','BACKUP_ADMIN','N'),('mysql.session','localhost','CLONE_ADMIN','N'),('mysql.session','localhost','CONNECTION_ADMIN','N'),('mysql.session','localhost','PERSIST_RO_VARIABLES_ADMIN','N'),('mysql.session','localhost','SESSION_VARIABLES_ADMIN','N'),('mysql.session','localhost','SYSTEM_USER','N'),('mysql.session','localhost','SYSTEM_VARIABLES_ADMIN','N'),('root','localhost','APPLICATION_PASSWORD_ADMIN','Y'),('root','localhost','AUDIT_ADMIN','Y'),('root','localhost','BACKUP_ADMIN','Y'),('root','localhost','BINLOG_ADMIN','Y'),('root','localhost','BINLOG_ENCRYPTION_ADMIN','Y'),('root','localhost','CLONE_ADMIN','Y'),('root','localhost','CONNECTION_ADMIN','Y'),('root','localhost','ENCRYPTION_KEY_ADMIN','Y'),('root','localhost','GROUP_REPLICATION_ADMIN','Y'),('root','localhost','INNODB_REDO_LOG_ARCHIVE','Y'),('root','localhost','INNODB_REDO_LOG_ENABLE','Y'),('root','localhost','PERSIST_RO_VARIABLES_ADMIN','Y'),('root','localhost','REPLICATION_APPLIER','Y'),('root','localhost','REPLICATION_SLAVE_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_ADMIN','Y'),('root','localhost','RESOURCE_GROUP_USER','Y'),('root','localhost','ROLE_ADMIN','Y'),('root','localhost','SERVICE_CONNECTION_ADMIN','Y'),('root','localhost','SESSION_VARIABLES_ADMIN','Y'),('root','localhost','SET_USER_ID','Y'),('root','localhost','SHOW_ROUTINE','Y'),('root','localhost','SYSTEM_USER','Y'),('root','localhost','SYSTEM_VARIABLES_ADMIN','Y'),('root','localhost','TABLE_ENCRYPTION_ADMIN','Y'),('root','localhost','XA_RECOVER_ADMIN','Y');
/*!40000 ALTER TABLE `global_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Language Structure',0,''),(5,'Geographic Features',0,''),(6,'MBR',5,''),(7,'WKT',5,''),(8,'Functions',0,''),(9,'Comparison Operators',8,''),(10,'Logical Operators',8,''),(11,'Control Flow Functions',8,''),(12,'Numeric Functions',8,''),(13,'Date and Time Functions',8,''),(14,'String Functions',8,''),(15,'Bit Functions',8,''),(16,'Encryption Functions',8,''),(17,'Locking Functions',8,''),(18,'Information Functions',8,''),(19,'Spatial Functions',8,''),(20,'WKT Functions',19,''),(21,'WKB Functions',19,''),(22,'Geometry Constructors',19,''),(23,'Geometry Property Functions',19,''),(24,'Point Property Functions',19,''),(25,'LineString Property Functions',19,''),(26,'Polygon Property Functions',19,''),(27,'GeometryCollection Property Functions',19,''),(28,'Geometry Relation Functions',19,''),(29,'MBR Functions',19,''),(30,'GROUP BY Functions and Modifiers',8,''),(31,'Performance Schema Functions',8,''),(32,'Miscellaneous Functions',8,''),(33,'Data Definition',0,''),(34,'Data Manipulation',0,''),(35,'Transactions',0,''),(36,'Compound Statements',0,''),(37,'Account Management',0,''),(38,'Table Maintenance',0,''),(39,'User-Defined Functions',0,''),(40,'Components',0,''),(41,'Plugins',0,''),(42,'Utility',0,''),(43,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (226,'(JSON'),(227,'->'),(229,'->>'),(46,'<>'),(637,'ACCOUNT'),(439,'ACTION'),(40,'ADD'),(663,'ADMIN'),(108,'AES_DECRYPT'),(109,'AES_ENCRYPT'),(358,'AFTER'),(95,'AGAINST'),(684,'AGGREGATE'),(359,'ALGORITHM'),(502,'ALL'),(41,'ALTER'),(360,'ANALYZE'),(47,'AND'),(313,'ANY_VALUE'),(440,'ARCHIVE'),(102,'ARRAY'),(503,'AS'),(261,'ASC'),(421,'AT'),(638,'ATTRIBUTE'),(526,'AUTOCOMMIT'),(462,'AUTOEXTEND_SIZE'),(361,'AUTO_INCREMENT'),(362,'AVG_ROW_LENGTH'),(538,'BACKUP'),(552,'BEFORE'),(527,'BEGIN'),(48,'BETWEEN'),(59,'BIGINT'),(104,'BINARY'),(342,'BINLOG'),(314,'BIN_TO_UUID'),(8,'BOOL'),(9,'BOOLEAN'),(85,'BOTH'),(425,'BTREE'),(262,'BY'),(33,'BYTE'),(720,'CACHE'),(470,'CALL'),(285,'CAN_ACCESS_COLUMN'),(286,'CAN_ACCESS_DATABASE'),(287,'CAN_ACCESS_TABLE'),(288,'CAN_ACCESS_VIEW'),(441,'CASCADE'),(53,'CASE'),(617,'CATALOG_NAME'),(62,'CEIL'),(63,'CEILING'),(528,'CHAIN'),(363,'CHANGE'),(343,'CHANNEL'),(34,'CHAR'),(30,'CHARACTER'),(696,'CHARSET'),(364,'CHECK'),(365,'CHECKSUM'),(639,'CIPHER'),(618,'CLASS_ORIGIN'),(664,'CLIENT'),(692,'CLONE'),(476,'CLOSE'),(366,'COALESCE'),(715,'CODE'),(321,'COLLATE'),(698,'COLLATION'),(367,'COLUMN'),(368,'COLUMNS'),(619,'COLUMN_NAME'),(328,'COMMENT'),(529,'COMMIT'),(541,'COMMITTED'),(442,'COMPACT'),(329,'COMPLETION'),(688,'COMPONENT'),(443,'COMPRESSED'),(369,'COMPRESSION'),(489,'CONCURRENT'),(614,'CONDITION'),(370,'CONNECTION'),(530,'CONSISTENT'),(371,'CONSTRAINT'),(620,'CONSTRAINT_CATALOG'),(621,'CONSTRAINT_NAME'),(622,'CONSTRAINT_SCHEMA'),(615,'CONTINUE'),(103,'CONVERT'),(260,'COUNT'),(42,'CREATE'),(258,'CREATE_DH_PARAMETERS'),(519,'CROSS'),(444,'CSV'),(270,'CUME_DIST'),(640,'CURRENT'),(116,'CURRENT_ROLE'),(330,'CURRENT_USER'),(612,'CURSOR'),(623,'CURSOR_NAME'),(372,'DATA'),(322,'DATABASE'),(699,'DATABASES'),(414,'DATAFILE'),(27,'DATE'),(105,'DATETIME'),(66,'DATE_ADD'),(67,'DATE_SUB'),(68,'DAY'),(69,'DAY_HOUR'),(70,'DAY_MINUTE'),(71,'DAY_SECOND'),(602,'DEALLOCATE'),(19,'DEC'),(22,'DECIMAL'),(603,'DECLARE'),(2,'DEFAULT'),(593,'DEFAULT_AUTH'),(331,'DEFINER'),(432,'DEFINITION'),(482,'DELAYED'),(373,'DELAY_KEY_WRITE'),(445,'DELETE'),(271,'DENSE_RANK'),(263,'DESC'),(731,'DESCRIBE'),(433,'DESCRIPTION'),(624,'DIAGNOSTICS'),(374,'DIRECTORY'),(332,'DISABLE'),(375,'DISCARD'),(259,'DISTINCT'),(504,'DISTINCTROW'),(333,'DO'),(376,'DROP'),(518,'DUAL'),(505,'DUMPFILE'),(483,'DUPLICATE'),(446,'DYNAMIC'),(54,'ELSE'),(604,'ELSEIF'),(334,'ENABLE'),(490,'ENCLOSED'),(323,'ENCRYPTION'),(55,'END'),(422,'ENDS'),(377,'ENGINE'),(700,'ENGINES'),(344,'ERROR'),(701,'ERRORS'),(89,'ESCAPE'),(491,'ESCAPED'),(335,'EVENT'),(713,'EVENTS'),(423,'EVERY'),(675,'EXCEPT'),(378,'EXCHANGE'),(601,'EXECUTE'),(420,'EXISTS'),(616,'EXIT'),(96,'EXPANSION'),(641,'EXPIRE'),(732,'EXPLAIN'),(721,'EXPORT'),(682,'EXTENDED'),(463,'EXTENT_SIZE'),(228,'EXTRACTION)'),(642,'FAILED_LOGIN_ATTEMPTS'),(6,'FALSE'),(680,'FAST'),(447,'FEDERATED'),(613,'FETCH'),(492,'FIELDS'),(665,'FILE'),(464,'FILE_BLOCK_SIZE'),(584,'FILTER'),(379,'FIRST'),(272,'FIRST_VALUE'),(20,'FIXED'),(23,'FLOAT4'),(24,'FLOAT8'),(60,'FLOOR'),(722,'FLUSH'),(345,'FOR'),(520,'FORCE'),(380,'FOREIGN'),(733,'FORMAT'),(281,'FORMAT_BYTES'),(282,'FORMAT_PICO_TIME'),(86,'FROM'),(448,'FULL'),(381,'FULLTEXT'),(341,'FUNCTION'),(723,'GENERAL'),(149,'GEOMCOLLECTION'),(150,'GEOMETRYCOLLECTION'),(625,'GET'),(289,'GET_DD_COLUMN_PRIVILEGES'),(290,'GET_DD_CREATE_OPTIONS'),(291,'GET_DD_INDEX_SUB_PART_LENGTH'),(542,'GLOBAL'),(666,'GRANT'),(702,'GRANTS'),(353,'GROUP'),(315,'GROUPING'),(477,'HANDLER'),(506,'HAVING'),(449,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(484,'HIGH_PRIORITY'),(643,'HISTORY'),(426,'HOST'),(703,'HOSTS'),(72,'HOUR'),(73,'HOUR_MINUTE'),(74,'HOUR_SECOND'),(117,'ICU_VERSION'),(500,'IDENTIFIED'),(58,'IF'),(485,'IGNORE'),(557,'IGNORE_SERVER_IDS'),(382,'IMPORT'),(97,'IN'),(43,'INDEX'),(704,'INDEXES'),(493,'INFILE'),(415,'INITIAL_SIZE'),(230,'INLINE'),(521,'INNER'),(346,'INNODB'),(82,'INSERT'),(383,'INSERT_METHOD'),(689,'INSTALL'),(347,'INSTANCE'),(10,'INT1'),(13,'INT2'),(14,'INT3'),(16,'INT4'),(18,'INT8'),(17,'INTEGER'),(292,'INTERNAL_AUTO_INCREMENT'),(293,'INTERNAL_AVG_ROW_LENGTH'),(295,'INTERNAL_CHECKSUM'),(294,'INTERNAL_CHECK_TIME'),(296,'INTERNAL_DATA_FREE'),(297,'INTERNAL_DATA_LENGTH'),(298,'INTERNAL_DD_CHAR_LENGTH'),(299,'INTERNAL_GET_COMMENT_OR_ERROR'),(300,'INTERNAL_GET_ENABLED_ROLE_JSON'),(301,'INTERNAL_GET_HOSTNAME'),(302,'INTERNAL_GET_USERNAME'),(303,'INTERNAL_GET_VIEW_WARNING_OR_ERROR'),(304,'INTERNAL_INDEX_COLUMN_CARDINALITY'),(305,'INTERNAL_INDEX_LENGTH'),(306,'INTERNAL_IS_ENABLED_ROLE'),(307,'INTERNAL_IS_MANDATORY_ROLE'),(308,'INTERNAL_KEYS_DISABLED'),(309,'INTERNAL_MAX_DATA_LENGTH'),(310,'INTERNAL_TABLE_ROWS'),(311,'INTERNAL_UPDATE_TIME'),(75,'INTERVAL'),(486,'INTO'),(384,'INVISIBLE'),(594,'IO_THREAD'),(49,'IS'),(543,'ISOLATION'),(644,'ISSUER'),(316,'IS_UUID'),(312,'IS_VISIBLE_DD_OBJECT'),(605,'ITERATE'),(507,'JOIN'),(106,'JSON'),(220,'JSON_ARRAY'),(266,'JSON_ARRAYAGG'),(238,'JSON_ARRAY_APPEND'),(239,'JSON_ARRAY_INSERT'),(223,'JSON_CONTAINS'),(224,'JSON_CONTAINS_PATH'),(248,'JSON_DEPTH'),(225,'JSON_EXTRACT'),(240,'JSON_INSERT'),(232,'JSON_KEYS'),(249,'JSON_LENGTH'),(241,'JSON_MERGE'),(242,'JSON_MERGE_PATCH'),(243,'JSON_MERGE_PRESERVE'),(221,'JSON_OBJECT'),(267,'JSON_OBJECTAGG'),(233,'JSON_OVERLAPS'),(255,'JSON_PRETTY'),(222,'JSON_QUOTE'),(244,'JSON_REMOVE'),(245,'JSON_REPLACE'),(253,'JSON_SCHEMA_VALID'),(254,'JSON_SCHEMA_VALIDATION_REPORT'),(234,'JSON_SEARCH'),(246,'JSON_SET'),(256,'JSON_STORAGE_FREE'),(257,'JSON_STORAGE_SIZE'),(252,'JSON_TABLE'),(250,'JSON_TYPE'),(247,'JSON_UNQUOTE'),(251,'JSON_VALID'),(235,'JSON_VALUE'),(44,'KEY'),(385,'KEYS'),(386,'KEY_BLOCK_SIZE'),(728,'KILL'),(273,'LAG'),(478,'LAST'),(274,'LAST_VALUE'),(275,'LEAD'),(87,'LEADING'),(606,'LEAVE'),(729,'LEAVES'),(522,'LEFT'),(544,'LEVEL'),(83,'LIKE'),(471,'LIMIT'),(494,'LINES'),(151,'LINESTRING'),(495,'LOAD'),(496,'LOCAL'),(387,'LOCK'),(354,'LOGFILE'),(553,'LOGS'),(38,'LONG'),(39,'LONGBINARY'),(607,'LOOP'),(472,'LOW_PRIORITY'),(348,'MASTER'),(558,'MASTER_AUTO_POSITION'),(559,'MASTER_BIND'),(560,'MASTER_COMPRESSION_ALGORITHMS'),(561,'MASTER_CONNECT_RETRY'),(562,'MASTER_HEARTBEAT_PERIOD'),(563,'MASTER_HOST'),(564,'MASTER_LOG_FILE'),(565,'MASTER_LOG_POS'),(566,'MASTER_PASSWORD'),(567,'MASTER_PORT'),(568,'MASTER_RETRY_COUNT'),(569,'MASTER_SSL'),(570,'MASTER_SSL_CA'),(571,'MASTER_SSL_CERT'),(572,'MASTER_SSL_CIPHER'),(573,'MASTER_SSL_CRL'),(574,'MASTER_SSL_CRLPATH'),(575,'MASTER_SSL_KEY'),(576,'MASTER_SSL_VERIFY_SERVER_CERT'),(577,'MASTER_TLS_CIPHERSUITES'),(578,'MASTER_TLS_VERSION'),(579,'MASTER_USER'),(580,'MASTER_ZSTD_COMPRESSION_LEVEL'),(98,'MATCH'),(645,'MAX_CONNECTIONS_PER_HOUR'),(646,'MAX_QUERIES_PER_HOUR'),(388,'MAX_ROWS'),(465,'MAX_SIZE'),(647,'MAX_UPDATES_PER_HOUR'),(648,'MAX_USER_CONNECTIONS'),(203,'MBRCONTAINS'),(204,'MBRDISJOINT'),(205,'MBRINTERSECTS'),(206,'MBROVERLAPS'),(207,'MBRTOUCHES'),(208,'MBRWITHIN'),(681,'MEDIUM'),(236,'MEMBER'),(508,'MEMORY'),(450,'MERGE'),(626,'MESSAGE_TEXT'),(15,'MIDDLEINT'),(76,'MINUTE'),(77,'MINUTE_SECOND'),(389,'MIN_ROWS'),(61,'MOD'),(99,'MODE'),(390,'MODIFY'),(78,'MONTH'),(451,'MRG_MYISAM'),(152,'MULTILINESTRING'),(153,'MULTIPOINT'),(154,'MULTIPOLYGON'),(705,'MUTEX'),(452,'MYISAM'),(627,'MYSQL_ERRNO'),(434,'NAME'),(697,'NAMES'),(31,'NATIONAL'),(523,'NATURAL'),(32,'NCHAR'),(453,'NDB'),(454,'NDBCLUSTER'),(649,'NEVER'),(479,'NEXT'),(349,'NO'),(466,'NODEGROUP'),(650,'NONE'),(50,'NOT'),(679,'NO_WRITE_TO_BINLOG'),(276,'NTH_VALUE'),(277,'NTILE'),(51,'NULL'),(628,'NUMBER'),(21,'NUMERIC'),(35,'NVARCHAR'),(237,'OF'),(509,'OFFSET'),(651,'OLD'),(336,'ON'),(324,'ONLY'),(480,'OPEN'),(391,'OPTIMIZE'),(724,'OPTIMIZER_COSTS'),(667,'OPTION'),(652,'OPTIONAL'),(497,'OPTIONALLY'),(356,'OPTIONS'),(52,'OR'),(264,'ORDER'),(435,'ORGANIZATION'),(524,'OUTER'),(510,'OUTFILE'),(427,'OWNER'),(392,'PACK_KEYS'),(393,'PARSER'),(455,'PARTIAL'),(394,'PARTITION'),(395,'PARTITIONING'),(396,'PASSWORD'),(653,'PASSWORD_LOCK_TIME'),(231,'PATH)'),(278,'PERCENT_RANK'),(693,'PERSIST'),(694,'PERSIST_ONLY'),(690,'PLUGIN'),(716,'PLUGINS'),(595,'PLUGIN_DIR'),(155,'POINT'),(156,'POLYGON'),(428,'PORT'),(64,'POW'),(65,'POWER'),(25,'PRECISION'),(549,'PREPARE'),(337,'PRESERVE'),(481,'PREV'),(397,'PRIMARY'),(668,'PRIVILEGES'),(581,'PRIVILEGE_CHECKS_USER'),(355,'PROCEDURE'),(669,'PROCESS'),(706,'PROCESSLIST'),(717,'PROFILE'),(718,'PROFILES'),(673,'PROXY'),(283,'PS_CURRENT_THREAD_ID'),(284,'PS_THREAD_ID'),(554,'PURGE'),(100,'QUERY'),(473,'QUICK'),(654,'RANDOM'),(110,'RANDOM_BYTES'),(279,'RANK'),(325,'READ'),(26,'REAL'),(398,'REBUILD'),(550,'RECOVER'),(456,'REDUNDANT'),(436,'REFERENCE'),(457,'REFERENCES'),(91,'REGEXP_INSTR'),(92,'REGEXP_LIKE'),(93,'REGEXP_REPLACE'),(94,'REGEXP_SUBSTR'),(725,'RELAY'),(719,'RELAYLOG'),(582,'RELAY_LOG_FILE'),(583,'RELAY_LOG_POS'),(531,'RELEASE'),(350,'RELOAD'),(399,'REMOVE'),(338,'RENAME'),(400,'REORGANIZE'),(401,'REPAIR'),(608,'REPEAT'),(545,'REPEATABLE'),(437,'REPLACE'),(585,'REPLICATE_DO_DB'),(586,'REPLICATE_DO_TABLE'),(587,'REPLICATE_IGNORE_DB'),(588,'REPLICATE_IGNORE_TABLE'),(589,'REPLICATE_REWRITE_DB'),(590,'REPLICATE_WILD_DO_TABLE'),(591,'REPLICATE_WILD_IGNORE_TABLE'),(592,'REPLICATION'),(655,'REQUIRE'),(555,'RESET'),(634,'RESIGNAL'),(676,'RESOURCE'),(730,'RESTART'),(460,'RESTRICT'),(656,'RETAIN'),(610,'RETURN'),(629,'RETURNED_SQLSTATE'),(685,'RETURNS'),(657,'REUSE'),(674,'REVOKE'),(525,'RIGHT'),(90,'RLIKE'),(658,'ROLE'),(118,'ROLES_GRAPHML'),(351,'ROLLBACK'),(487,'ROW'),(501,'ROWS'),(630,'ROW_COUNT'),(402,'ROW_FORMAT'),(280,'ROW_NUMBER'),(537,'SAVEPOINT'),(339,'SCHEDULE'),(326,'SCHEMA'),(707,'SCHEMAS'),(631,'SCHEMA_NAME'),(79,'SECOND'),(488,'SELECT'),(265,'SEPARATOR'),(3,'SERIAL'),(546,'SERIALIZABLE'),(357,'SERVER'),(547,'SESSION'),(327,'SET'),(111,'SHA'),(112,'SHA1'),(113,'SHA2'),(511,'SHARE'),(708,'SHOW'),(670,'SHUTDOWN'),(636,'SIGNAL'),(107,'SIGNED'),(340,'SLAVE'),(726,'SLOW'),(532,'SNAPSHOT'),(429,'SOCKET'),(686,'SONAME'),(84,'SOUNDS'),(403,'SPATIAL'),(635,'SQLSTATE'),(596,'SQL_AFTER_GTIDS'),(597,'SQL_AFTER_MTS_GAPS'),(598,'SQL_BEFORE_GTIDS'),(512,'SQL_BIG_RESULT'),(513,'SQL_BUFFER_RESULT'),(514,'SQL_CALC_FOUND_ROWS'),(556,'SQL_LOG_BIN'),(515,'SQL_NO_CACHE'),(516,'SQL_SMALL_RESULT'),(599,'SQL_THREAD'),(659,'SSL'),(533,'START'),(498,'STARTING'),(424,'STARTS'),(114,'STATEMENT_DIGEST'),(115,'STATEMENT_DIGEST_TEXT'),(404,'STATS_AUTO_RECALC'),(405,'STATS_PERSISTENT'),(406,'STATS_SAMPLE_PAGES'),(709,'STATUS'),(268,'STD'),(269,'STDDEV'),(600,'STOP'),(714,'STORAGE'),(458,'STORED'),(517,'STRAIGHT_JOIN'),(687,'STRING'),(178,'ST_AREA'),(157,'ST_ASBINARY'),(213,'ST_ASGEOJSON'),(159,'ST_ASTEXT'),(158,'ST_ASWKB'),(160,'ST_ASWKT'),(186,'ST_BUFFER'),(187,'ST_BUFFER_STRATEGY'),(179,'ST_CENTROID'),(194,'ST_CONTAINS'),(188,'ST_CONVEXHULL'),(195,'ST_CROSSES'),(189,'ST_DIFFERENCE'),(162,'ST_DIMENSION'),(196,'ST_DISJOINT'),(197,'ST_DISTANCE'),(215,'ST_DISTANCE_SPHERE'),(172,'ST_ENDPOINT'),(163,'ST_ENVELOPE'),(198,'ST_EQUALS'),(180,'ST_EXTERIORRING'),(209,'ST_GEOHASH'),(119,'ST_GEOMCOLLFROMTEXT'),(134,'ST_GEOMCOLLFROMWKB'),(120,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(135,'ST_GEOMETRYCOLLECTIONFROMWKB'),(121,'ST_GEOMETRYFROMTEXT'),(136,'ST_GEOMETRYFROMWKB'),(184,'ST_GEOMETRYN'),(164,'ST_GEOMETRYTYPE'),(214,'ST_GEOMFROMGEOJSON'),(122,'ST_GEOMFROMTEXT'),(137,'ST_GEOMFROMWKB'),(181,'ST_INTERIORRINGN'),(190,'ST_INTERSECTION'),(199,'ST_INTERSECTS'),(173,'ST_ISCLOSED'),(165,'ST_ISEMPTY'),(166,'ST_ISSIMPLE'),(216,'ST_ISVALID'),(210,'ST_LATFROMGEOHASH'),(168,'ST_LATITUDE'),(174,'ST_LENGTH'),(123,'ST_LINEFROMTEXT'),(138,'ST_LINEFROMWKB'),(124,'ST_LINESTRINGFROMTEXT'),(139,'ST_LINESTRINGFROMWKB'),(211,'ST_LONGFROMGEOHASH'),(169,'ST_LONGITUDE'),(217,'ST_MAKEENVELOPE'),(125,'ST_MLINEFROMTEXT'),(140,'ST_MLINEFROMWKB'),(127,'ST_MPOINTFROMTEXT'),(142,'ST_MPOINTFROMWKB'),(129,'ST_MPOLYFROMTEXT'),(144,'ST_MPOLYFROMWKB'),(126,'ST_MULTILINESTRINGFROMTEXT'),(141,'ST_MULTILINESTRINGFROMWKB'),(128,'ST_MULTIPOINTFROMTEXT'),(143,'ST_MULTIPOINTFROMWKB'),(130,'ST_MULTIPOLYGONFROMTEXT'),(145,'ST_MULTIPOLYGONFROMWKB'),(185,'ST_NUMGEOMETRIES'),(182,'ST_NUMINTERIORRING'),(183,'ST_NUMINTERIORRINGS'),(175,'ST_NUMPOINTS'),(200,'ST_OVERLAPS'),(212,'ST_POINTFROMGEOHASH'),(131,'ST_POINTFROMTEXT'),(146,'ST_POINTFROMWKB'),(176,'ST_POINTN'),(132,'ST_POLYFROMTEXT'),(147,'ST_POLYFROMWKB'),(133,'ST_POLYGONFROMTEXT'),(148,'ST_POLYGONFROMWKB'),(218,'ST_SIMPLIFY'),(167,'ST_SRID'),(177,'ST_STARTPOINT'),(161,'ST_SWAPXY'),(191,'ST_SYMDIFFERENCE'),(201,'ST_TOUCHES'),(192,'ST_TRANSFORM'),(193,'ST_UNION'),(219,'ST_VALIDATE'),(202,'ST_WITHIN'),(170,'ST_X'),(171,'ST_Y'),(632,'SUBCLASS_ORIGIN'),(660,'SUBJECT'),(671,'SUPER'),(438,'SYSTEM'),(45,'TABLE'),(540,'TABLES'),(407,'TABLESPACE'),(633,'TABLE_NAME'),(469,'TEMPORARY'),(499,'TERMINATED'),(56,'THEN'),(677,'THREAD_PRIORITY'),(29,'TIME'),(28,'TIMESTAMP'),(352,'TLS'),(416,'TO'),(734,'TRADITIONAL'),(88,'TRAILING'),(534,'TRANSACTION'),(735,'TREE'),(468,'TRIGGER'),(710,'TRIGGERS'),(7,'TRUE'),(408,'TRUNCATE'),(409,'TYPE'),(661,'UNBOUNDED'),(548,'UNCOMMITTED'),(417,'UNDO'),(691,'UNINSTALL'),(410,'UNION'),(411,'UNIQUE'),(539,'UNLOCK'),(11,'UNSIGNED'),(609,'UNTIL'),(461,'UPDATE'),(412,'UPGRADE'),(672,'USAGE'),(467,'USE'),(430,'USER'),(727,'USER_RESOURCES'),(683,'USE_FRM'),(474,'USING'),(317,'UUID'),(318,'UUID_SHORT'),(319,'UUID_TO_BIN'),(4,'VALUE'),(320,'VALUES'),(36,'VARCHARACTER'),(695,'VARIABLE'),(711,'VARIABLES'),(37,'VARYING'),(678,'VCPU'),(419,'VIEW'),(459,'VIRTUAL'),(413,'VISIBLE'),(418,'WAIT'),(712,'WARNINGS'),(57,'WHEN'),(475,'WHERE'),(611,'WHILE'),(101,'WITH'),(535,'WORK'),(431,'WRAPPER'),(536,'WRITE'),(662,'X509'),(551,'XA'),(80,'YEAR'),(81,'YEAR_MONTH'),(12,'ZEROFILL');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(494,2),(495,2),(502,2),(505,2),(506,2),(514,2),(515,2),(538,2),(543,2),(577,2),(595,2),(597,2),(603,2),(605,2),(2,3),(514,3),(2,4),(538,4),(543,4),(593,4),(594,4),(3,5),(683,5),(4,6),(5,6),(4,7),(5,7),(7,8),(8,8),(7,9),(231,9),(7,10),(7,11),(11,11),(13,11),(14,11),(16,11),(17,11),(234,11),(7,12),(11,12),(13,12),(14,12),(16,12),(17,12),(9,13),(10,14),(10,15),(11,16),(11,17),(234,17),(615,17),(13,18),(14,19),(14,20),(514,20),(14,21),(15,22),(234,22),(615,22),(16,23),(17,24),(17,25),(17,26),(615,26),(19,27),(120,27),(122,27),(234,27),(21,28),(156,28),(22,29),(154,29),(234,29),(24,30),(26,30),(494,30),(495,30),(502,30),(505,30),(506,30),(514,30),(541,30),(542,30),(544,30),(623,30),(624,30),(626,30),(630,30),(24,31),(26,31),(24,32),(25,33),(25,34),(234,34),(26,35),(26,36),(26,37),(35,38),(35,39),(44,40),(502,40),(503,40),(516,40),(44,41),(494,41),(495,41),(496,41),(497,41),(498,41),(499,41),(500,41),(501,41),(502,41),(503,41),(504,41),(595,41),(600,41),(606,41),(44,42),(505,42),(506,42),(507,42),(508,42),(509,42),(510,42),(511,42),(512,42),(513,42),(514,42),(516,42),(517,42),(518,42),(596,42),(597,42),(607,42),(615,42),(626,42),(634,42),(635,42),(636,42),(637,42),(638,42),(639,42),(641,42),(44,43),(502,43),(508,43),(514,43),(522,43),(546,43),(626,43),(652,43),(672,43),(675,43),(44,44),(502,44),(514,44),(515,44),(538,44),(44,45),(502,45),(514,45),(527,45),(531,45),(532,45),(537,45),(539,45),(548,45),(610,45),(611,45),(612,45),(613,45),(614,45),(626,45),(639,45),(666,45),(47,46),(52,47),(66,47),(52,48),(59,49),(60,49),(61,49),(62,49),(60,50),(62,50),(65,50),(505,50),(506,50),(507,50),(513,50),(596,50),(597,50),(61,51),(62,51),(515,51),(67,52),(513,52),(71,53),(578,53),(71,54),(578,54),(71,55),(561,55),(575,55),(578,55),(579,55),(582,55),(583,55),(585,55),(71,56),(578,56),(579,56),(71,57),(578,57),(72,58),(505,58),(506,58),(507,58),(513,58),(519,58),(520,58),(521,58),(525,58),(526,58),(527,58),(530,58),(579,58),(595,58),(596,58),(597,58),(598,58),(599,58),(677,58),(80,59),(80,60),(81,61),(100,61),(87,62),(88,63),(102,64),(103,65),(122,66),(122,67),(122,68),(595,68),(597,68),(122,69),(122,70),(122,71),(122,72),(122,73),(122,74),(122,75),(507,75),(595,75),(597,75),(122,76),(122,77),(122,78),(122,79),(122,80),(122,81),(187,82),(538,82),(539,82),(540,82),(211,83),(626,83),(632,83),(633,83),(211,84),(217,85),(217,86),(534,86),(537,86),(544,86),(626,86),(629,86),(632,86),(633,86),(652,86),(662,86),(217,87),(217,88),(222,89),(226,90),(227,91),(228,92),(229,93),(230,94),(231,95),(231,96),(231,97),(544,97),(629,97),(632,97),(633,97),(652,97),(662,97),(231,98),(231,99),(544,99),(231,100),(674,100),(231,101),(502,101),(508,101),(514,101),(595,101),(597,101),(600,101),(673,101),(233,102),(233,103),(234,103),(234,104),(562,104),(563,104),(627,104),(628,104),(673,104),(234,105),(234,106),(680,106),(681,106),(682,106),(234,107),(244,108),(245,109),(248,110),(249,111),(249,112),(250,113),(251,114),(252,115),(266,116),(270,117),(272,118),(279,119),(279,120),(280,121),(280,122),(281,123),(281,124),(282,125),(282,126),(283,127),(283,128),(284,129),(284,130),(285,131),(286,132),(286,133),(287,134),(287,135),(288,136),(288,137),(289,138),(289,139),(290,140),(290,141),(291,142),(291,143),(292,144),(292,145),(293,146),(294,147),(294,148),(295,149),(296,150),(297,151),(298,152),(299,153),(300,154),(301,155),(302,156),(303,157),(303,158),(304,159),(304,160),(305,161),(306,162),(307,163),(308,164),(309,165),(310,166),(311,167),(312,168),(313,169),(314,170),(315,171),(316,172),(317,173),(318,174),(319,175),(320,176),(321,177),(322,178),(323,179),(324,180),(325,181),(326,182),(326,183),(327,184),(328,185),(329,186),(330,187),(331,188),(332,189),(333,190),(334,191),(335,192),(336,193),(337,194),(338,195),(339,196),(340,197),(341,198),(342,199),(343,200),(344,201),(345,202),(346,203),(349,204),(351,205),(352,206),(353,207),(354,208),(355,209),(356,210),(357,211),(358,212),(359,213),(360,214),(361,215),(362,216),(363,217),(364,218),(365,219),(366,220),(367,221),(368,222),(369,223),(370,224),(371,225),(372,226),(373,226),(372,227),(372,228),(373,229),(373,230),(373,231),(374,232),(375,233),(376,234),(377,235),(378,236),(378,237),(379,238),(380,239),(381,240),(382,241),(383,242),(384,243),(385,244),(386,245),(387,246),(388,247),(389,248),(390,249),(391,250),(392,251),(393,252),(394,253),(395,254),(396,255),(397,256),(398,257),(410,258),(412,259),(417,259),(418,259),(421,259),(422,259),(427,259),(544,259),(547,259),(417,260),(647,260),(670,260),(418,261),(544,261),(418,262),(502,262),(514,262),(534,262),(541,262),(542,262),(544,262),(549,262),(595,262),(597,262),(418,263),(544,263),(680,263),(681,263),(682,263),(418,264),(502,264),(534,264),(544,264),(548,264),(549,264),(550,264),(418,265),(419,266),(420,267),(423,268),(424,269),(431,270),(432,271),(433,272),(434,273),(435,274),(436,275),(437,276),(438,277),(439,278),(440,279),(441,280),(442,281),(443,282),(444,283),(445,284),(446,285),(447,286),(448,287),(449,288),(450,289),(451,290),(452,291),(453,292),(454,293),(455,294),(456,295),(457,296),(458,297),(459,298),(460,299),(461,300),(462,301),(463,302),(464,303),(465,304),(466,305),(467,306),(468,307),(469,308),(470,309),(471,310),(472,311),(473,312),(474,313),(475,314),(477,315),(486,316),(490,317),(491,318),(492,319),(493,320),(538,320),(543,320),(550,320),(494,321),(495,321),(502,321),(505,321),(506,321),(514,321),(494,322),(495,322),(505,322),(506,322),(512,322),(519,322),(520,322),(626,322),(634,322),(635,322),(494,323),(495,323),(502,323),(505,323),(506,323),(514,323),(494,324),(495,324),(551,324),(552,324),(553,324),(554,324),(560,324),(561,324),(494,325),(495,325),(536,325),(551,325),(552,325),(553,325),(554,325),(559,325),(560,325),(561,325),(673,325),(494,326),(495,326),(505,326),(506,326),(519,326),(520,326),(626,326),(634,326),(635,326),(494,327),(495,327),(502,327),(505,327),(506,327),(514,327),(515,327),(538,327),(541,327),(542,327),(543,327),(544,327),(549,327),(551,327),(552,327),(553,327),(554,327),(565,327),(593,327),(594,327),(603,327),(604,327),(605,327),(609,327),(622,327),(623,327),(624,327),(625,327),(626,327),(630,327),(496,328),(502,328),(507,328),(508,328),(514,328),(516,328),(595,328),(597,328),(496,329),(507,329),(496,330),(507,330),(496,331),(507,331),(496,332),(502,332),(507,332),(606,332),(607,332),(496,333),(507,333),(535,333),(585,333),(496,334),(502,334),(507,334),(606,334),(607,334),(496,335),(507,335),(521,335),(636,335),(496,336),(498,336),(507,336),(515,336),(546,336),(496,337),(507,337),(496,338),(502,338),(503,338),(531,338),(601,338),(496,339),(507,339),(496,340),(507,340),(568,340),(569,340),(570,340),(663,340),(664,340),(676,340),(497,341),(510,341),(511,341),(523,341),(524,341),(615,341),(616,341),(626,341),(637,341),(649,341),(650,341),(498,342),(629,342),(671,342),(498,343),(566,343),(568,343),(569,343),(570,343),(662,343),(664,343),(673,343),(498,344),(673,344),(498,345),(544,345),(566,345),(568,345),(569,345),(570,345),(587,345),(590,345),(591,345),(604,345),(609,345),(626,345),(662,345),(664,345),(673,345),(680,345),(681,345),(682,345),(498,346),(514,346),(626,346),(498,347),(558,347),(498,348),(562,348),(563,348),(564,348),(566,348),(627,348),(628,348),(653,348),(676,348),(498,349),(514,349),(515,349),(498,350),(600,350),(498,351),(551,351),(552,351),(553,351),(554,351),(555,351),(556,351),(557,351),(561,351),(498,352),(499,353),(509,353),(516,353),(544,353),(606,353),(607,353),(608,353),(609,353),(499,354),(509,354),(516,354),(500,355),(510,355),(511,355),(523,355),(524,355),(626,355),(638,355),(657,355),(658,355),(501,356),(512,356),(501,357),(512,357),(525,357),(502,358),(502,359),(502,360),(610,360),(680,360),(681,360),(682,360),(502,361),(502,362),(514,362),(502,363),(566,363),(567,363),(502,364),(514,364),(611,364),(502,365),(514,365),(612,365),(502,366),(502,367),(502,368),(514,368),(541,368),(626,368),(632,368),(633,368),(502,369),(514,369),(502,370),(514,370),(674,370),(680,370),(681,370),(682,370),(502,371),(514,371),(502,372),(512,372),(514,372),(541,372),(502,373),(514,373),(502,374),(514,374),(502,375),(595,375),(502,376),(503,376),(519,376),(520,376),(521,376),(522,376),(523,376),(524,376),(525,376),(526,376),(527,376),(528,376),(529,376),(530,376),(573,376),(574,376),(598,376),(599,376),(608,376),(616,376),(502,377),(503,377),(514,377),(516,377),(528,377),(626,377),(645,377),(673,377),(502,378),(502,379),(514,379),(536,379),(502,380),(512,380),(514,380),(515,380),(502,381),(508,381),(514,381),(502,382),(537,382),(541,382),(502,383),(514,383),(502,384),(508,384),(514,384),(502,385),(626,385),(652,385),(502,386),(514,386),(502,387),(544,387),(558,387),(559,387),(595,387),(597,387),(673,387),(502,388),(514,388),(502,389),(514,389),(502,390),(502,391),(613,391),(502,392),(514,392),(502,393),(508,393),(514,393),(502,394),(514,394),(534,394),(538,394),(541,394),(543,394),(544,394),(546,394),(672,394),(675,394),(502,395),(502,396),(512,396),(569,396),(595,396),(597,396),(604,396),(502,397),(502,398),(502,399),(502,400),(502,401),(614,401),(502,402),(514,402),(502,403),(508,403),(513,403),(526,403),(502,404),(514,404),(502,405),(514,405),(502,406),(514,406),(502,407),(503,407),(516,407),(528,407),(502,408),(532,408),(502,409),(607,409),(502,410),(547,410),(502,411),(502,412),(611,412),(502,413),(508,413),(514,413),(503,414),(516,414),(503,415),(516,415),(503,416),(555,416),(556,416),(557,416),(562,416),(563,416),(566,416),(604,416),(503,417),(516,417),(528,417),(591,417),(503,418),(516,418),(504,419),(518,419),(530,419),(505,420),(506,420),(507,420),(513,420),(519,420),(520,420),(521,420),(525,420),(526,420),(527,420),(530,420),(595,420),(596,420),(597,420),(598,420),(599,420),(677,420),(507,421),(507,422),(507,423),(507,424),(508,425),(512,426),(512,427),(512,428),(512,429),(512,430),(569,430),(595,430),(597,430),(599,430),(601,430),(607,430),(641,430),(512,431),(513,432),(513,433),(513,434),(513,435),(513,436),(526,436),(513,437),(541,437),(542,437),(543,437),(595,437),(604,437),(513,438),(526,438),(607,438),(514,439),(515,439),(514,440),(514,441),(515,441),(527,441),(530,441),(514,442),(514,443),(514,444),(541,444),(514,445),(515,445),(534,445),(514,446),(514,447),(514,448),(626,448),(632,448),(633,448),(659,448),(667,448),(514,449),(514,450),(514,451),(514,452),(514,453),(514,454),(514,455),(514,456),(514,457),(515,457),(600,457),(514,458),(514,459),(515,460),(527,460),(530,460),(515,461),(538,461),(544,461),(549,461),(516,462),(516,463),(516,464),(516,465),(516,466),(516,467),(546,467),(684,467),(517,468),(529,468),(626,468),(527,469),(533,470),(534,471),(536,471),(544,471),(548,471),(549,471),(550,471),(629,471),(662,471),(534,472),(538,472),(541,472),(542,472),(543,472),(549,472),(559,472),(534,473),(611,473),(614,473),(534,474),(546,474),(572,474),(651,474),(534,475),(536,475),(549,475),(632,475),(633,475),(652,475),(536,476),(586,476),(536,477),(591,477),(536,478),(536,479),(536,480),(589,480),(626,480),(654,480),(536,481),(538,482),(540,482),(543,482),(538,483),(538,484),(544,484),(538,485),(541,485),(542,485),(544,485),(546,485),(549,485),(675,485),(538,486),(543,486),(544,486),(675,486),(538,487),(550,487),(538,488),(539,488),(543,488),(544,488),(680,488),(681,488),(682,488),(541,489),(542,489),(541,490),(541,491),(541,492),(626,492),(632,492),(633,492),(541,493),(542,493),(541,494),(542,494),(541,495),(675,495),(541,496),(542,496),(559,496),(610,496),(613,496),(614,496),(673,496),(541,497),(541,498),(541,499),(542,500),(595,500),(597,500),(542,501),(544,502),(547,502),(568,502),(595,502),(600,502),(602,502),(603,502),(605,502),(672,502),(675,502),(544,503),(546,503),(559,503),(595,503),(597,503),(600,503),(544,504),(544,505),(544,506),(544,507),(546,507),(544,508),(544,509),(544,510),(544,511),(544,512),(544,513),(544,514),(544,515),(544,516),(544,517),(546,517),(545,518),(546,519),(546,520),(606,520),(608,520),(546,521),(546,522),(546,523),(546,524),(546,525),(551,526),(552,526),(553,526),(554,526),(551,527),(552,527),(553,527),(554,527),(561,527),(575,527),(551,528),(552,528),(553,528),(554,528),(551,529),(552,529),(553,529),(554,529),(561,529),(551,530),(552,530),(553,530),(554,530),(561,530),(551,531),(552,531),(553,531),(554,531),(555,531),(556,531),(557,531),(561,531),(551,532),(552,532),(553,532),(554,532),(561,532),(551,533),(552,533),(553,533),(554,533),(561,533),(569,533),(551,534),(552,534),(553,534),(554,534),(560,534),(551,535),(552,535),(553,535),(554,535),(551,536),(552,536),(553,536),(554,536),(559,536),(560,536),(561,536),(555,537),(556,537),(557,537),(558,538),(558,539),(559,539),(595,539),(597,539),(559,540),(626,540),(654,540),(667,540),(673,540),(560,541),(560,542),(622,542),(665,542),(669,542),(560,543),(560,544),(560,545),(560,546),(560,547),(622,547),(665,547),(669,547),(560,548),(561,549),(571,549),(573,549),(574,549),(561,550),(561,551),(562,552),(563,552),(562,553),(563,553),(626,553),(627,553),(628,553),(673,553),(562,554),(563,554),(564,555),(568,555),(676,555),(677,555),(565,556),(566,557),(566,558),(566,559),(566,560),(566,561),(566,562),(566,563),(566,564),(566,565),(566,566),(566,567),(566,568),(566,569),(566,570),(566,571),(566,572),(566,573),(566,574),(566,575),(566,576),(566,577),(566,578),(566,579),(566,580),(566,581),(566,582),(566,583),(567,584),(567,585),(567,586),(567,587),(567,588),(567,589),(567,590),(567,591),(567,592),(600,592),(569,593),(569,594),(570,594),(569,595),(569,596),(569,597),(569,598),(569,599),(570,599),(570,600),(572,601),(600,601),(573,602),(574,602),(577,603),(587,603),(590,603),(591,603),(579,604),(580,605),(581,606),(582,607),(583,608),(583,609),(584,610),(585,611),(587,612),(588,613),(590,614),(591,615),(591,616),(592,617),(593,617),(594,617),(592,618),(593,618),(594,618),(592,619),(593,619),(594,619),(592,620),(593,620),(594,620),(592,621),(593,621),(594,621),(592,622),(593,622),(594,622),(592,623),(593,623),(594,623),(592,624),(592,625),(592,626),(593,626),(594,626),(592,627),(593,627),(594,627),(592,628),(592,629),(592,630),(592,631),(593,631),(594,631),(592,632),(593,632),(594,632),(592,633),(593,633),(594,633),(593,634),(593,635),(594,635),(594,636),(595,637),(597,637),(595,638),(597,638),(595,639),(597,639),(595,640),(597,640),(604,640),(595,641),(597,641),(595,642),(597,642),(595,643),(597,643),(595,644),(597,644),(595,645),(597,645),(595,646),(597,646),(595,647),(597,647),(595,648),(597,648),(595,649),(597,649),(595,650),(600,650),(603,650),(605,650),(595,651),(595,652),(597,652),(595,653),(597,653),(595,654),(597,654),(604,654),(595,655),(597,655),(595,656),(604,656),(595,657),(597,657),(595,658),(596,658),(597,658),(598,658),(600,658),(603,658),(605,658),(595,659),(597,659),(595,660),(597,660),(595,661),(597,661),(595,662),(597,662),(600,663),(600,664),(600,665),(600,666),(602,666),(600,667),(602,667),(600,668),(602,668),(656,668),(673,668),(600,669),(600,670),(679,670),(600,671),(600,672),(602,673),(602,674),(605,675),(606,676),(607,676),(608,676),(609,676),(606,677),(607,677),(606,678),(607,678),(610,679),(613,679),(614,679),(673,679),(611,680),(611,681),(614,682),(632,682),(633,682),(652,682),(667,682),(614,683),(615,684),(615,685),(615,686),(615,687),(617,688),(619,688),(617,689),(618,689),(618,690),(620,690),(626,690),(619,691),(620,691),(621,692),(622,693),(677,693),(622,694),(622,695),(623,696),(624,696),(625,697),(626,698),(631,698),(626,699),(643,699),(644,699),(626,700),(646,700),(626,701),(647,701),(626,702),(651,702),(626,703),(663,703),(673,703),(626,704),(626,705),(645,705),(626,706),(659,706),(626,707),(643,707),(644,707),(626,708),(627,708),(628,708),(629,708),(630,708),(631,708),(632,708),(633,708),(634,708),(635,708),(636,708),(637,708),(638,708),(639,708),(641,708),(643,708),(644,708),(645,708),(646,708),(647,708),(648,708),(649,708),(650,708),(651,708),(652,708),(653,708),(654,708),(655,708),(656,708),(657,708),(658,708),(659,708),(660,708),(661,708),(662,708),(663,708),(664,708),(665,708),(666,708),(667,708),(668,708),(669,708),(670,708),(626,709),(645,709),(650,709),(653,709),(658,709),(664,709),(665,709),(666,709),(673,709),(626,710),(668,710),(626,711),(669,711),(626,712),(670,712),(629,713),(648,713),(662,713),(646,714),(649,715),(657,715),(655,716),(660,717),(661,718),(662,719),(672,720),(675,720),(673,721),(673,722),(673,723),(673,724),(673,725),(673,726),(673,727),(674,728),(675,729),(678,730),(680,731),(681,731),(682,731),(680,732),(681,732),(682,732),(680,733),(681,733),(682,733),(680,734),(681,734),(682,734),(680,735),(681,735),(682,735);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
--

LOCK TABLES `help_topic` WRITE;
/*!40000 ALTER TABLE `help_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `innodb_index_stats`
--

/*!40000 ALTER TABLE `innodb_index_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_index_stats` VALUES ('framework','confirm','PRIMARY','2021-01-06 07:54:35','n_diff_pfx01',0,1,'id'),('framework','confirm','PRIMARY','2021-01-06 07:54:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','confirm','PRIMARY','2021-01-06 07:54:35','size',1,NULL,'Number of pages in the index'),('framework','confirm','index_foreignkey_confirm_user','2021-01-06 07:54:35','n_diff_pfx01',0,1,'user_id'),('framework','confirm','index_foreignkey_confirm_user','2021-01-06 07:54:35','n_diff_pfx02',0,1,'user_id,id'),('framework','confirm','index_foreignkey_confirm_user','2021-01-06 07:54:35','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','confirm','index_foreignkey_confirm_user','2021-01-06 07:54:35','size',1,NULL,'Number of pages in the index'),('framework','fwconfig','PRIMARY','2021-01-06 07:55:00','n_diff_pfx01',20,1,'id'),('framework','fwconfig','PRIMARY','2021-01-06 07:55:00','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','fwconfig','PRIMARY','2021-01-06 07:55:00','size',1,NULL,'Number of pages in the index'),('framework','log','PRIMARY','2021-01-06 09:41:49','n_diff_pfx01',33,1,'id'),('framework','log','PRIMARY','2021-01-06 09:41:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','log','PRIMARY','2021-01-06 09:41:49','size',1,NULL,'Number of pages in the index'),('framework','log','index_foreignkey_log_note','2021-01-06 09:41:49','n_diff_pfx01',13,1,'note_id'),('framework','log','index_foreignkey_log_note','2021-01-06 09:41:49','n_diff_pfx02',33,1,'note_id,id'),('framework','log','index_foreignkey_log_note','2021-01-06 09:41:49','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','log','index_foreignkey_log_note','2021-01-06 09:41:49','size',1,NULL,'Number of pages in the index'),('framework','manage','PRIMARY','2021-01-06 19:24:58','n_diff_pfx01',15,1,'id'),('framework','manage','PRIMARY','2021-01-06 19:24:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','manage','PRIMARY','2021-01-06 19:24:58','size',1,NULL,'Number of pages in the index'),('framework','manage','index_foreignkey_manage_project','2021-01-06 19:24:58','n_diff_pfx01',10,1,'project_id'),('framework','manage','index_foreignkey_manage_project','2021-01-06 19:24:58','n_diff_pfx02',15,1,'project_id,id'),('framework','manage','index_foreignkey_manage_project','2021-01-06 19:24:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','manage','index_foreignkey_manage_project','2021-01-06 19:24:58','size',1,NULL,'Number of pages in the index'),('framework','manage','index_foreignkey_manage_user','2021-01-06 19:24:58','n_diff_pfx01',3,1,'user_id'),('framework','manage','index_foreignkey_manage_user','2021-01-06 19:24:58','n_diff_pfx02',15,1,'user_id,id'),('framework','manage','index_foreignkey_manage_user','2021-01-06 19:24:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','manage','index_foreignkey_manage_user','2021-01-06 19:24:58','size',1,NULL,'Number of pages in the index'),('framework','note','PRIMARY','2021-01-06 09:41:36','n_diff_pfx01',12,1,'id'),('framework','note','PRIMARY','2021-01-06 09:41:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','note','PRIMARY','2021-01-06 09:41:36','size',1,NULL,'Number of pages in the index'),('framework','note','index_foreignkey_note_project','2021-01-06 09:41:36','n_diff_pfx01',7,1,'project_id'),('framework','note','index_foreignkey_note_project','2021-01-06 09:41:36','n_diff_pfx02',12,1,'project_id,id'),('framework','note','index_foreignkey_note_project','2021-01-06 09:41:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','note','index_foreignkey_note_project','2021-01-06 09:41:36','size',1,NULL,'Number of pages in the index'),('framework','page','PRIMARY','2021-01-06 08:14:38','n_diff_pfx01',19,1,'id'),('framework','page','PRIMARY','2021-01-06 08:14:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','page','PRIMARY','2021-01-06 08:14:38','size',1,NULL,'Number of pages in the index'),('framework','pagerole','PRIMARY','2021-01-06 07:55:10','n_diff_pfx01',4,1,'id'),('framework','pagerole','PRIMARY','2021-01-06 07:55:10','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','pagerole','PRIMARY','2021-01-06 07:55:10','size',1,NULL,'Number of pages in the index'),('framework','pagerole','index_foreignkey_pagerole_page','2021-01-06 07:55:10','n_diff_pfx01',3,1,'page_id'),('framework','pagerole','index_foreignkey_pagerole_page','2021-01-06 07:55:10','n_diff_pfx02',4,1,'page_id,id'),('framework','pagerole','index_foreignkey_pagerole_page','2021-01-06 07:55:10','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','pagerole','index_foreignkey_pagerole_page','2021-01-06 07:55:10','size',1,NULL,'Number of pages in the index'),('framework','pagerole','index_foreignkey_pagerole_rolecontext','2021-01-06 07:55:10','n_diff_pfx01',2,1,'rolecontext_id'),('framework','pagerole','index_foreignkey_pagerole_rolecontext','2021-01-06 07:55:10','n_diff_pfx02',4,1,'rolecontext_id,id'),('framework','pagerole','index_foreignkey_pagerole_rolecontext','2021-01-06 07:55:10','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','pagerole','index_foreignkey_pagerole_rolecontext','2021-01-06 07:55:10','size',1,NULL,'Number of pages in the index'),('framework','pagerole','index_foreignkey_pagerole_rolename','2021-01-06 07:55:10','n_diff_pfx01',3,1,'rolename_id'),('framework','pagerole','index_foreignkey_pagerole_rolename','2021-01-06 07:55:10','n_diff_pfx02',4,1,'rolename_id,id'),('framework','pagerole','index_foreignkey_pagerole_rolename','2021-01-06 07:55:10','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','pagerole','index_foreignkey_pagerole_rolename','2021-01-06 07:55:10','size',1,NULL,'Number of pages in the index'),('framework','project','PRIMARY','2021-01-06 19:25:08','n_diff_pfx01',9,1,'id'),('framework','project','PRIMARY','2021-01-06 19:25:08','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','project','PRIMARY','2021-01-06 19:25:08','size',1,NULL,'Number of pages in the index'),('framework','role','PRIMARY','2021-01-06 07:54:38','n_diff_pfx01',2,1,'id'),('framework','role','PRIMARY','2021-01-06 07:54:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','role','PRIMARY','2021-01-06 07:54:38','size',1,NULL,'Number of pages in the index'),('framework','role','index_foreignkey_role_rolecontext','2021-01-06 07:54:38','n_diff_pfx01',1,1,'rolecontext_id'),('framework','role','index_foreignkey_role_rolecontext','2021-01-06 07:54:38','n_diff_pfx02',2,1,'rolecontext_id,id'),('framework','role','index_foreignkey_role_rolecontext','2021-01-06 07:54:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','role','index_foreignkey_role_rolecontext','2021-01-06 07:54:38','size',1,NULL,'Number of pages in the index'),('framework','role','index_foreignkey_role_rolename','2021-01-06 07:54:38','n_diff_pfx01',2,1,'rolename_id'),('framework','role','index_foreignkey_role_rolename','2021-01-06 07:54:38','n_diff_pfx02',2,1,'rolename_id,id'),('framework','role','index_foreignkey_role_rolename','2021-01-06 07:54:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','role','index_foreignkey_role_rolename','2021-01-06 07:54:38','size',1,NULL,'Number of pages in the index'),('framework','role','index_foreignkey_role_user','2021-01-06 07:54:38','n_diff_pfx01',1,1,'user_id'),('framework','role','index_foreignkey_role_user','2021-01-06 07:54:38','n_diff_pfx02',2,1,'user_id,id'),('framework','role','index_foreignkey_role_user','2021-01-06 07:54:38','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','role','index_foreignkey_role_user','2021-01-06 07:54:38','size',1,NULL,'Number of pages in the index'),('framework','rolecontext','PRIMARY','2021-01-06 07:54:36','n_diff_pfx01',0,1,'id'),('framework','rolecontext','PRIMARY','2021-01-06 07:54:36','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','rolecontext','PRIMARY','2021-01-06 07:54:36','size',1,NULL,'Number of pages in the index'),('framework','rolename','PRIMARY','2021-01-06 07:55:20','n_diff_pfx01',3,1,'id'),('framework','rolename','PRIMARY','2021-01-06 07:55:20','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','rolename','PRIMARY','2021-01-06 07:55:20','size',1,NULL,'Number of pages in the index'),('framework','upload','PRIMARY','2021-01-06 09:17:58','n_diff_pfx01',6,1,'id'),('framework','upload','PRIMARY','2021-01-06 09:17:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','upload','PRIMARY','2021-01-06 09:17:58','size',1,NULL,'Number of pages in the index'),('framework','upload','index_foreignkey_upload_note','2021-01-06 09:17:58','n_diff_pfx01',4,1,'note_id'),('framework','upload','index_foreignkey_upload_note','2021-01-06 09:17:58','n_diff_pfx02',6,1,'note_id,id'),('framework','upload','index_foreignkey_upload_note','2021-01-06 09:17:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','upload','index_foreignkey_upload_note','2021-01-06 09:17:58','size',1,NULL,'Number of pages in the index'),('framework','upload','index_foreignkey_upload_user','2021-01-06 09:17:58','n_diff_pfx01',3,1,'user_id'),('framework','upload','index_foreignkey_upload_user','2021-01-06 09:17:58','n_diff_pfx02',6,1,'user_id,id'),('framework','upload','index_foreignkey_upload_user','2021-01-06 09:17:58','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','upload','index_foreignkey_upload_user','2021-01-06 09:17:58','size',1,NULL,'Number of pages in the index'),('framework','user','PRIMARY','2021-01-06 08:57:53','n_diff_pfx01',3,1,'id'),('framework','user','PRIMARY','2021-01-06 08:57:53','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('framework','user','PRIMARY','2021-01-06 08:57:53','size',1,NULL,'Number of pages in the index'),('mysql','component','PRIMARY','2021-01-06 07:36:11','n_diff_pfx01',0,1,'component_id'),('mysql','component','PRIMARY','2021-01-06 07:36:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','component','PRIMARY','2021-01-06 07:36:11','size',1,NULL,'Number of pages in the index'),('mysql','gtid_executed','PRIMARY','2021-01-06 07:36:11','n_diff_pfx01',0,1,'source_uuid'),('mysql','gtid_executed','PRIMARY','2021-01-06 07:36:11','n_diff_pfx02',0,1,'source_uuid,interval_start'),('mysql','gtid_executed','PRIMARY','2021-01-06 07:36:11','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('mysql','gtid_executed','PRIMARY','2021-01-06 07:36:11','size',1,NULL,'Number of pages in the index'),('sys','sys_config','PRIMARY','2021-01-06 07:36:21','n_diff_pfx01',6,1,'variable'),('sys','sys_config','PRIMARY','2021-01-06 07:36:21','n_leaf_pages',1,NULL,'Number of leaf pages in the index'),('sys','sys_config','PRIMARY','2021-01-06 07:36:21','size',1,NULL,'Number of pages in the index');
/*!40000 ALTER TABLE `innodb_index_stats` ENABLE KEYS */;

--
-- Dumping data for table `innodb_table_stats`
--

/*!40000 ALTER TABLE `innodb_table_stats` DISABLE KEYS */;
INSERT  IGNORE INTO `innodb_table_stats` VALUES ('framework','confirm','2021-01-06 07:54:35',0,1,1),('framework','fwconfig','2021-01-06 07:55:00',20,1,0),('framework','log','2021-01-06 09:41:49',33,1,1),('framework','manage','2021-01-06 19:24:58',15,1,2),('framework','note','2021-01-06 09:41:36',12,1,1),('framework','page','2021-01-06 08:14:38',19,1,0),('framework','pagerole','2021-01-06 07:55:10',4,1,3),('framework','project','2021-01-06 19:25:08',9,1,0),('framework','role','2021-01-06 07:54:38',2,1,3),('framework','rolecontext','2021-01-06 07:54:36',0,1,0),('framework','rolename','2021-01-06 07:55:20',3,1,0),('framework','upload','2021-01-06 09:17:58',6,1,2),('framework','user','2021-01-06 08:57:53',3,1,0),('mysql','component','2021-01-06 07:36:11',0,1,0),('mysql','gtid_executed','2021-01-06 07:36:11',0,1,0),('sys','sys_config','2021-01-06 07:36:21',6,1,0);
/*!40000 ALTER TABLE `innodb_table_stats` ENABLE KEYS */;

--
-- Table structure for table `password_history`
--

DROP TABLE IF EXISTS `password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_history` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Password` text COLLATE utf8_bin,
  PRIMARY KEY (`Host`,`User`,`Password_timestamp` DESC)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Password history for user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_history`
--

LOCK TABLES `password_history` WRITE;
/*!40000 ALTER TABLE `password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin`
--

DROP TABLE IF EXISTS `plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL plugins';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin`
--

LOCK TABLES `plugin` WRITE;
/*!40000 ALTER TABLE `plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_priv`
--

DROP TABLE IF EXISTS `procs_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procs_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Procedure privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_priv`
--

LOCK TABLES `procs_priv` WRITE;
/*!40000 ALTER TABLE `procs_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `procs_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies_priv`
--

DROP TABLE IF EXISTS `proxies_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User proxy privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies_priv`
--

LOCK TABLES `proxies_priv` WRITE;
/*!40000 ALTER TABLE `proxies_priv` DISABLE KEYS */;
INSERT INTO `proxies_priv` VALUES ('localhost','root','','',1,'boot@','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `proxies_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_edges`
--

DROP TABLE IF EXISTS `role_edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_edges` (
  `FROM_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `FROM_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TO_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `TO_USER` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `WITH_ADMIN_OPTION` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FROM_HOST`,`FROM_USER`,`TO_HOST`,`TO_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Role hierarchy and role grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_edges`
--

LOCK TABLES `role_edges` WRITE;
/*!40000 ALTER TABLE `role_edges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_edges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_cost`
--

DROP TABLE IF EXISTS `server_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'disk_temptable_create_cost' then 20.0 when _utf8mb3'disk_temptable_row_cost' then 0.5 when _utf8mb3'key_compare_cost' then 0.05 when _utf8mb3'memory_temptable_create_cost' then 1.0 when _utf8mb3'memory_temptable_row_cost' then 0.1 when _utf8mb3'row_evaluate_cost' then 0.1 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_cost`
--

LOCK TABLES `server_cost` WRITE;
/*!40000 ALTER TABLE `server_cost` DISABLE KEYS */;
INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('disk_temptable_create_cost',NULL,'2021-01-06 07:36:11',NULL),('disk_temptable_row_cost',NULL,'2021-01-06 07:36:11',NULL),('key_compare_cost',NULL,'2021-01-06 07:36:11',NULL),('memory_temptable_create_cost',NULL,'2021-01-06 07:36:11',NULL),('memory_temptable_row_cost',NULL,'2021-01-06 07:36:11',NULL),('row_evaluate_cost',NULL,'2021-01-06 07:36:11',NULL);
/*!40000 ALTER TABLE `server_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='MySQL Foreign Servers table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slave_master_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_master_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint unsigned NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int unsigned NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int unsigned NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint unsigned NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Tls version',
  `Public_key_path` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file containing public key of master server.',
  `Get_public_key` tinyint(1) NOT NULL COMMENT 'Preference to get public key from master.',
  `Network_namespace` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Network namespace used for communication with the master server.',
  `Master_compression_algorithm` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Compression algorithm supported for data transfer between master and slave.',
  `Master_zstd_compression_level` int unsigned NOT NULL COMMENT 'Compression level associated with zstd compression algorithm.',
  `Tls_ciphersuites` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Ciphersuites used for TLS 1.3 communication with the master server.',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Master Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_relay_log_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slave_relay_log_info` (
  `Number_of_lines` int unsigned NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint unsigned DEFAULT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int DEFAULT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int unsigned DEFAULT NULL,
  `Id` int unsigned DEFAULT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Privilege_checks_username` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Username part of PRIVILEGE_CHECKS_USER.',
  `Privilege_checks_hostname` char(255) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT 'Hostname part of PRIVILEGE_CHECKS_USER.',
  `Require_row_format` tinyint(1) NOT NULL COMMENT 'Indicates whether the channel shall only accept row based events.',
  `Require_table_primary_key_check` enum('STREAM','ON','OFF') NOT NULL DEFAULT 'STREAM' COMMENT 'Indicates what is the channel policy regarding tables having primary keys on create and alter table queries',
  PRIMARY KEY (`Channel_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Relay Log Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slave_worker_info`
--

DROP TABLE IF EXISTS `slave_worker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slave_worker_info` (
  `Id` int unsigned NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint unsigned NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint unsigned NOT NULL,
  `Checkpoint_seqno` int unsigned NOT NULL,
  `Checkpoint_group_size` int unsigned NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  PRIMARY KEY (`Channel_name`,`Id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Worker Information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slave_worker_info`
--

LOCK TABLES `slave_worker_info` WRITE;
/*!40000 ALTER TABLE `slave_worker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `slave_worker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables_priv`
--

DROP TABLE IF EXISTS `tables_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tables_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` varchar(288) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Table privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables_priv`
--

LOCK TABLES `tables_priv` WRITE;
/*!40000 ALTER TABLE `tables_priv` DISABLE KEYS */;
INSERT INTO `tables_priv` VALUES ('localhost','mysql','mysql.session','user','boot@','0000-00-00 00:00:00','Select',''),('localhost','sys','mysql.sys','sys_config','root@localhost','2021-01-06 07:36:21','Select','');
/*!40000 ALTER TABLE `tables_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone`
--

DROP TABLE IF EXISTS `time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone` (
  `Time_zone_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone`
--

LOCK TABLES `time_zone` WRITE;
/*!40000 ALTER TABLE `time_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_leap_second`
--

DROP TABLE IF EXISTS `time_zone_leap_second`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint NOT NULL,
  `Correction` int NOT NULL,
  PRIMARY KEY (`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Leap seconds information for time zones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_leap_second`
--

LOCK TABLES `time_zone_leap_second` WRITE;
/*!40000 ALTER TABLE `time_zone_leap_second` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_leap_second` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_name`
--

DROP TABLE IF EXISTS `time_zone_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_name`
--

LOCK TABLES `time_zone_name` WRITE;
/*!40000 ALTER TABLE `time_zone_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition`
--

DROP TABLE IF EXISTS `time_zone_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_time` bigint NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition`
--

LOCK TABLES `time_zone_transition` WRITE;
/*!40000 ALTER TABLE `time_zone_transition` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zone_transition_type`
--

DROP TABLE IF EXISTS `time_zone_transition_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int unsigned NOT NULL,
  `Transition_type_id` int unsigned NOT NULL,
  `Offset` int NOT NULL DEFAULT '0',
  `Is_DST` tinyint unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Time zone transition types';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zone_transition_type`
--

LOCK TABLES `time_zone_transition_type` WRITE;
/*!40000 ALTER TABLE `time_zone_transition_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_zone_transition_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int unsigned NOT NULL DEFAULT '0',
  `max_updates` int unsigned NOT NULL DEFAULT '0',
  `max_connections` int unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int unsigned NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'caching_sha2_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint unsigned DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Create_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Drop_role_priv` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `Password_reuse_history` smallint unsigned DEFAULT NULL,
  `Password_reuse_time` smallint unsigned DEFAULT NULL,
  `Password_require_current` enum('N','Y') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `User_attributes` json DEFAULT NULL,
  PRIMARY KEY (`Host`,`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Users and global privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('localhost','framework','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$K2WHjMh#`<	A :	n8AlGXdKKX4yVLYY0zYAAmF2KuVAUyKWOXy/dqVyhZ5','N','2021-01-06 07:36:25',NULL,'N','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.infoschema','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2021-01-06 07:36:21',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.session','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2021-01-06 07:36:21',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','',0,0,0,0,'caching_sha2_password','$A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED','N','2021-01-06 07:36:21',NULL,'Y','N','N',NULL,NULL,NULL,NULL),('localhost','root','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','','','','',0,0,0,0,'caching_sha2_password','','N','2021-01-06 07:36:11',NULL,'N','Y','Y',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint unsigned NOT NULL,
  `server_id` int unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumblob NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slow_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int NOT NULL,
  `rows_examined` int NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int NOT NULL,
  `insert_id` int NOT NULL,
  `server_id` int unsigned NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint unsigned NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=@OLD_INNODB_STATS_AUTO_RECALC */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-06 19:51:11