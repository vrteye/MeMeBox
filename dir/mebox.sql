-- MySQL dump 10.13  Distrib 5.7.24, for macos10.14 (x86_64)
--
-- Host: localhost    Database: mebox
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add user',2,'add_user'),(5,'Can change user',2,'change_user'),(6,'Can delete user',2,'delete_user'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user',7,'add_user'),(20,'Can change user',7,'change_user'),(21,'Can delete user',7,'delete_user'),(22,'Can add wheel',8,'add_wheel'),(23,'Can change wheel',8,'change_wheel'),(24,'Can delete wheel',8,'delete_wheel'),(25,'Can add detail',9,'add_detail'),(26,'Can change detail',9,'change_detail'),(27,'Can delete detail',9,'delete_detail'),(28,'Can add cart',10,'add_cart'),(29,'Can change cart',10,'change_cart'),(30,'Can delete cart',10,'delete_cart');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(2,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(10,'tpsapp','cart'),(9,'tpsapp','detail'),(7,'tpsapp','user'),(8,'tpsapp','wheel');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-01-09 14:20:24.243244'),(2,'auth','0001_initial','2019-01-09 14:20:24.873439'),(3,'admin','0001_initial','2019-01-09 14:20:25.041160'),(4,'admin','0002_logentry_remove_auto_add','2019-01-09 14:20:25.081108'),(5,'contenttypes','0002_remove_content_type_name','2019-01-09 14:20:25.217736'),(6,'auth','0002_alter_permission_name_max_length','2019-01-09 14:20:25.266224'),(7,'auth','0003_alter_user_email_max_length','2019-01-09 14:20:25.358986'),(8,'auth','0004_alter_user_username_opts','2019-01-09 14:20:25.432598'),(9,'auth','0005_alter_user_last_login_null','2019-01-09 14:20:25.531455'),(10,'auth','0006_require_contenttypes_0002','2019-01-09 14:20:25.542722'),(11,'auth','0007_alter_validators_add_error_messages','2019-01-09 14:20:25.624963'),(12,'auth','0008_alter_user_username_max_length','2019-01-09 14:20:25.686219'),(13,'sessions','0001_initial','2019-01-09 14:20:25.727974'),(14,'tpsapp','0001_initial','2019-01-10 09:08:21.851887'),(15,'tpsapp','0002_user_token','2019-01-10 12:30:20.580400'),(16,'tpsapp','0003_user_auth','2019-01-10 12:42:45.366802'),(17,'tpsapp','0004_wheel','2019-01-12 01:47:00.118377'),(18,'tpsapp','0005_auto_20190112_0240','2019-01-12 02:40:35.138627'),(19,'tpsapp','0006_wheel_trackid','2019-01-12 02:43:57.340129'),(20,'tpsapp','0007_auto_20190116_1239','2019-01-16 12:39:38.227638'),(21,'tpsapp','0008_remove_detail_num','2019-01-16 12:49:01.004804'),(22,'tpsapp','0009_detail_img','2019-01-16 13:42:04.824138'),(23,'tpsapp','0010_cart','2019-01-16 15:07:33.965799'),(24,'tpsapp','0011_auto_20190116_1508','2019-01-16 15:08:23.054645');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('116v6o4l833dfjw8ox3tgoyg50hrwcvz','ZDk1ZDg5ZGVkZWU4M2VkMTYyMzliNzViY2NlY2UxMDc0YjU0MWJiMDp7InRva2VuIjoiNWZhNDgxMzU1ODc3MmMwMTkyOWZiY2E0MTljODViOTciLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-12 09:46:55.426882'),('1fnrr48kqt7cihld9y019q8ex4xilfen','ZDk1ZDg5ZGVkZWU4M2VkMTYyMzliNzViY2NlY2UxMDc0YjU0MWJiMDp7InRva2VuIjoiNWZhNDgxMzU1ODc3MmMwMTkyOWZiY2E0MTljODViOTciLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-12 09:52:21.293934'),('3vom4cnl9ffvgtlb9zi7sjlfeszgsn4u','ZGJmMzM0OWIzY2Y5NGU1YjQ4ZTc4M2Q0ZTYzZjA3MzEzNDRiMzE5Mjp7InRva2VuIjoiZWUyZDc1YTcwMzFmNTg1ZjJjYzk1ZWUzNzhkOWU2MjYiLCJjaGVja19udW0iOiI2dXMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-02-04 07:05:43.697586'),('441y5tpeqp9xr6c8rd08n0efnu3tct0f','ZDcxN2RlN2FmNDA0NWFlNjRjNDlmNzFmYjk0ZDI2ZGMxOGI2MTU3Zjp7InRva2VuIjoiYTY2MDVmMzQ4MzJiNTdkMjBkZTFlZmRmNThlMzczNzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-01-30 09:44:20.792928'),('4vpsn13gqatkwlyuegab3b4hxiuohf2o','Mzc2NDQ5MWYxYjM5NWY1ZDNiYjc5NzVlMDE2YWQ4MTg5ZDk5YWEwMDp7ImNoZWNrX251bSI6IkJTMCIsInRva2VuIjoiYWZhNzQxN2NiNzVlZjIxOTNmNzVmNTQzZjYwN2ZhNDkiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-04-01 18:33:31.512122'),('62zat84fo0ss3yncxkl5jmlmxz2tzfl4','OWY0YTU1OTg3NWU5MWI0NWVkOTVlM2RlNGFkZmQyNWFmZGIwNzkyOTp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidG9rZW4iOiJiZWMxZWYzNTg5YzZlZGZiNDVjYWRkOTRmYTUwN2I3OCIsImNoZWNrX251bSI6IjllRSJ9','2019-02-09 13:09:04.228663'),('6e0v0z78s359yhhwhs8dgdi26wwnis0z','MjI3NzRlMDBhMWZkZjVlYjQ5Yzg2MmZkNjZlNDM0NWQ3NjYxN2VjZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiNWZhNDgxMzU1ODc3MmMwMTkyOWZiY2E0MTljODViOTcifQ==','2019-01-15 11:50:19.170741'),('6qqmmp51mtgebh16l9rb9hq914ee10uy','MDQ1NjBlZjQ2YTQwZDRhZDE2YWM3ZTIxN2FmM2YwZWY5NDlhYTUyMjp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiYTY2MDVmMzQ4MzJiNTdkMjBkZTFlZmRmNThlMzczNzMifQ==','2019-01-16 09:35:10.961682'),('6ubvy4tvh3e6or0jo0728vn35qlc8t4u','OGIzZWEwYzU4MzdkNDg1NWVhODhhZDk1ZjgxNThhZWY0OTA1MWE2ZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidG9rZW4iOiJhNjYwNWYzNDgzMmI1N2QyMGRlMWVmZGY1OGUzNzM3MyJ9','2019-02-01 02:36:00.928341'),('9am5xzhzl2m0hqxq8el3wywzgpyipl2w','OGIzZWEwYzU4MzdkNDg1NWVhODhhZDk1ZjgxNThhZWY0OTA1MWE2ZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidG9rZW4iOiJhNjYwNWYzNDgzMmI1N2QyMGRlMWVmZGY1OGUzNzM3MyJ9','2019-02-03 14:37:30.485504'),('9b4osv97kyetwcz1rrs9dqx18jn0bdx4','OGIzZWEwYzU4MzdkNDg1NWVhODhhZDk1ZjgxNThhZWY0OTA1MWE2ZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidG9rZW4iOiJhNjYwNWYzNDgzMmI1N2QyMGRlMWVmZGY1OGUzNzM3MyJ9','2019-02-03 15:11:41.119132'),('bt1p525bdogucs48wbahi50lj3yqzbpf','OGIzZWEwYzU4MzdkNDg1NWVhODhhZDk1ZjgxNThhZWY0OTA1MWE2ZDp7Il9zZXNzaW9uX2V4cGlyeSI6MCwidG9rZW4iOiJhNjYwNWYzNDgzMmI1N2QyMGRlMWVmZGY1OGUzNzM3MyJ9','2019-02-02 01:27:50.333245'),('cyo0jeubfl4dwkvsz2qkx6lcu1beapzd','NDQ2ZDRlOTkwODQ1NTdkNjJhYjdlYjdkNzI2NTZhMzk1ODA5MjI3MTp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiY2hlY2tfbnVtIjoiajJtIiwidG9rZW4iOiJiZWMxZWYzNTg5YzZlZGZiNDVjYWRkOTRmYTUwN2I3OCJ9','2019-02-09 13:03:57.223692'),('doxt4nlqg1mp0xo7qhj74zk7a6gyh5ko','OTBhNDMwOTc5ZDQyNmNjMjI0YjljZmIxMWMxODExYjJmMDBjOWJlZDp7InRva2VuIjoiYTY2MDVmMzQ4MzJiNTdkMjBkZTFlZmRmNThlMzczNzMiLCJfc2Vzc2lvbl9leHBpcnkiOjAsImNoZWNrX251bSI6IlRGMSJ9','2019-02-04 03:27:42.019240'),('dz9iws00c3l5etpmkz75xvzg5y91peb6','ZDk1ZDg5ZGVkZWU4M2VkMTYyMzliNzViY2NlY2UxMDc0YjU0MWJiMDp7InRva2VuIjoiNWZhNDgxMzU1ODc3MmMwMTkyOWZiY2E0MTljODViOTciLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-12 08:07:06.049809'),('evi6pi4mhnio9f8mlgkrlyclhb88gs02','YTE5MjEyMmY1MzRmNjY4ZDJlZDE0YTY2MzczODZiOWFlMjQwOTY4Mjp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiMWMxM2NmZjljNzliN2UwOTAyNDFjNThjZTg0YzY2ZDEifQ==','2019-01-11 10:56:04.464299'),('f77m3nv9ra8ehsf379v8e7grfg61fa9k','ZDcxN2RlN2FmNDA0NWFlNjRjNDlmNzFmYjk0ZDI2ZGMxOGI2MTU3Zjp7InRva2VuIjoiYTY2MDVmMzQ4MzJiNTdkMjBkZTFlZmRmNThlMzczNzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-02-01 11:14:54.816495'),('hygup29kgjk3nmv88b41a6iy9k6pm3l7','ZDcxN2RlN2FmNDA0NWFlNjRjNDlmNzFmYjk0ZDI2ZGMxOGI2MTU3Zjp7InRva2VuIjoiYTY2MDVmMzQ4MzJiNTdkMjBkZTFlZmRmNThlMzczNzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-02-02 08:34:49.072719'),('k1h7nldc21ifwmxlo33fkxrm4n3chzz3','ZTE1MzJjNTc4ZTA0OTk0ZjRmMzkzNzA5ZTUxMTVkOWU5NzZlMDQxZTp7InRva2VuIjoiMTEzM2MxODlmMzU1Y2JkMzZjMThiY2U1N2RjMTU5YTIiLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-11 10:51:37.444243'),('lzg3s1ptilgf7dv8vdyaopnt2y0y0gj0','MjI3NzRlMDBhMWZkZjVlYjQ5Yzg2MmZkNjZlNDM0NWQ3NjYxN2VjZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiNWZhNDgxMzU1ODc3MmMwMTkyOWZiY2E0MTljODViOTcifQ==','2019-01-14 06:46:50.991030'),('m4kkidwc42yty2uars7o1bj5b4v63383','MjI3NzRlMDBhMWZkZjVlYjQ5Yzg2MmZkNjZlNDM0NWQ3NjYxN2VjZjp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiNWZhNDgxMzU1ODc3MmMwMTkyOWZiY2E0MTljODViOTcifQ==','2019-01-11 11:03:07.266156'),('m5gah0zfv58tj0y42ztvw6z228texp3l','ZDcxN2RlN2FmNDA0NWFlNjRjNDlmNzFmYjk0ZDI2ZGMxOGI2MTU3Zjp7InRva2VuIjoiYTY2MDVmMzQ4MzJiNTdkMjBkZTFlZmRmNThlMzczNzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-01-30 12:00:37.655160'),('mgnr4sc4rn43o16q3mghdqqbv2vkc6r5','YWYzNTFhNDU3YmI0NWE1NmM5OTkwMzVkMjIyZjUwZDJlZDFjNDdjZTp7Il9zZXNzaW9uX2V4cGlyeSI6MzAsInRva2VuIjoiZDllMWNiNzQzZjY4NjZmYmY1ODZmMzkyNjM4NDE4Y2MifQ==','2019-01-11 10:49:41.920718'),('s5hsups7rbx1tjybe252r32ww4bueutk','NTAwOTJhNDkwNjFhNTA2MTViYmQ1OWRmMDhiMmY3MmMyNjk3N2I2MDp7ImNoZWNrX251bSI6InVuWCIsInRva2VuIjoiYWZhNzQxN2NiNzVlZjIxOTNmNzVmNTQzZjYwN2ZhNDkiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-04-01 17:30:52.390894'),('t43h1kby4d8u76ycrqiarfy2afpa85u8','NjI1NzhmZWE3YjIxZDdmZWEzYmMxZTFlODIxYjQ2ZGJlZmVkMzQzNTp7ImNoZWNrX251bSI6IklQayIsInRva2VuIjoiZmY1MDNiODI4NmUxZmE5MmU3ZTJmYzlmNTYyOTNhZmEiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-04-02 02:54:56.907189'),('tr54nrgjr3hbgk7gxuh6cf1fwasmxets','ZDk1ZDg5ZGVkZWU4M2VkMTYyMzliNzViY2NlY2UxMDc0YjU0MWJiMDp7InRva2VuIjoiNWZhNDgxMzU1ODc3MmMwMTkyOWZiY2E0MTljODViOTciLCJfc2Vzc2lvbl9leHBpcnkiOjMwfQ==','2019-01-12 07:47:55.842364'),('xusoyv0vbhy3uyy2dv1ce0o3g9p1kg24','ZDcxN2RlN2FmNDA0NWFlNjRjNDlmNzFmYjk0ZDI2ZGMxOGI2MTU3Zjp7InRva2VuIjoiYTY2MDVmMzQ4MzJiNTdkMjBkZTFlZmRmNThlMzczNzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-02-03 09:57:56.028939');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpsapp_cart`
--

DROP TABLE IF EXISTS `tpsapp_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpsapp_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `isselect` tinyint(1) NOT NULL,
  `products_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tpsapp_cart_products_id_a52da638_fk_tpsapp_detail_id` (`products_id`),
  KEY `tpsapp_cart_user_id_04313077_fk_tpsapp_user_id` (`user_id`),
  CONSTRAINT `tpsapp_cart_products_id_a52da638_fk_tpsapp_detail_id` FOREIGN KEY (`products_id`) REFERENCES `tpsapp_detail` (`id`),
  CONSTRAINT `tpsapp_cart_user_id_04313077_fk_tpsapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `tpsapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpsapp_cart`
--

LOCK TABLES `tpsapp_cart` WRITE;
/*!40000 ALTER TABLE `tpsapp_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpsapp_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpsapp_detail`
--

DROP TABLE IF EXISTS `tpsapp_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpsapp_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `addr` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpsapp_detail`
--

LOCK TABLES `tpsapp_detail` WRITE;
/*!40000 ALTER TABLE `tpsapp_detail` DISABLE KEYS */;
INSERT INTO `tpsapp_detail` VALUES (1,'MEIMEIBOX\",\"青春幻彩面膜\n','中国','18','http://wx2.sinaimg.cn/small/006qx0Ksgy1g17j5ehhwoj30dw0dwn8d.jpg'),(2,'JAYJUN\",\"东方柔顺发质护发素\n\n','中国','20','http://wx3.sinaimg.cn/large/a7ab06b1gy1fzas8rbx2hj206y06y74b.jpg');
/*!40000 ALTER TABLE `tpsapp_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpsapp_user`
--

DROP TABLE IF EXISTS `tpsapp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpsapp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `auth` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpsapp_user`
--

LOCK TABLES `tpsapp_user` WRITE;
/*!40000 ALTER TABLE `tpsapp_user` DISABLE KEYS */;
INSERT INTO `tpsapp_user` VALUES (18,'zhang2','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','7f7107fb0922928faa9662a62815cf99',''),(19,'zhang','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','a6605f34832b57d20de1efdf58e37373',''),(20,'zhang1','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','5e49172ecf0ac26fbd1cac0afa72df64',''),(21,'1111','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','240bf995c7047d307ff4af825f020e68',''),(22,'1112','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','8b8981199c540f6073bccffdcb295237',''),(23,'','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','6f356485e018003d1f567d3d76836502',''),(24,'','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','c401bce635d077787a68375deb836541',''),(25,'1113','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','6761e3638bc681426973010878fa48f5',''),(26,'1115','bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a','ee2d75a7031f585f2cc95ee378d9e626',''),(27,'admin','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','bec1ef3589c6edfb45cadd94fa507b78',''),(28,'yz1028959','84c45e72ebff7042e000b2bfd67b22367b18ddcb723ce4c32f9f1b2064999e08','7cbdea14765170f69eb1680505c3cd2b',''),(29,'123','96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e','757f4b5160f3d581039316e0e576db4d',''),(30,'123','a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3','afa7417cb75ef2193f75f543f607fa49',''),(31,'2222','edee29f882543b956620b26d0ee0e7e950399b1c4222f5de05e06425b4c995e9','ff503b8286e1fa92e7e2fc9f56293afa','');
/*!40000 ALTER TABLE `tpsapp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wheel`
--

DROP TABLE IF EXISTS `wheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(200) NOT NULL,
  `trackid` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheel`
--

LOCK TABLES `wheel` WRITE;
/*!40000 ALTER TABLE `wheel` DISABLE KEYS */;
INSERT INTO `wheel` VALUES (1,'http://wx4.sinaimg.cn/large/006qx0Ksgy1g17tmo1sdej30wo06y777.jpg\n','12345'),(2,'http://wx2.sinaimg.cn/large/006qx0Ksgy1g17tmw9vc2j30wo06ydih.jpg\n','12346'),(3,'http://wx1.sinaimg.cn/large/006qx0Ksgy1g17to9v8owj30wo06y106.jpg\n','12347'),(4,'http://wx1.sinaimg.cn/large/006qx0Ksgy1g17tmzr8b5j30wo06yjvj.jpg\n','12348');
/*!40000 ALTER TABLE `wheel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-19 13:27:55
