-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: muk_support_portal
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `academic_college`
--

DROP TABLE IF EXISTS `academic_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_college` (
  `college_id` int NOT NULL AUTO_INCREMENT,
  `college_name` varchar(100) NOT NULL,
  `description` longtext,
  `created_at` datetime(6) NOT NULL,
  `campus_location` varchar(100) NOT NULL,
  `dean_user_id_id` int DEFAULT NULL,
  PRIMARY KEY (`college_id`),
  UNIQUE KEY `college_name` (`college_name`),
  KEY `academic_college_dean_user_id_id_439cfa17` (`dean_user_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_college`
--

LOCK TABLES `academic_college` WRITE;
/*!40000 ALTER TABLE `academic_college` DISABLE KEYS */;
INSERT INTO `academic_college` VALUES (1,'College of Agricultural and Environmental Sciences','The School of Agricultural Sciences','2025-03-26 12:00:40.832555','Makerere Main Campus - Kampala',3),(2,'College of Business and Management Sciences','The School of Economics, School of Business, School of Statistics and Planning','2025-03-27 07:34:34.654175','Main Campus - Kampala',1),(3,'College of Computing and Information Sciences','School of Computing and Informatics Technology (CIT), East African School of Library and Information Science (EASLIS)','2025-03-27 07:36:12.356911','Makerere Main Campus',1),(4,'College of Education and External Studies','The School of Education (SoE), The School of Distance and Lifelong Learning (SoDLL)','2025-03-27 07:37:00.914689','Makerere Main Campus',1),(5,'College of Engineering, Design, Art and Technology','School of Engineering, School of the Built Environment, The Margaret Trowell School of Industrial and Fine Art','2025-03-27 07:39:42.322176','Makerere Main Campus',1),(6,'College of Health Sciences','The College of Health Sciences was established on 1st December 2007 under the ΓÇ£Universities and Other Tertiary Institutions Act (Establishment of College of Health Sciences, Makerere University) Order, 2008. T','2025-03-27 07:44:22.311505','Makerere Main Campus',1),(7,'College of Humanities and Social Sciences','The School of Liberal and Performing Arts, The School of Women and Gender Studies, The School of Languages, Literature and Communication, School of Psychology, The School of Social Sciences, Makerere Institute of Social Research (MISR)','2025-03-27 07:47:19.771014','Jinja Main Campus',1),(8,'College of Natural Sciences','The School of Physical Sciences, The School of Biosciences','2025-03-27 07:52:42.626601','Makerere Main Campus',1),(9,'College of Veterinary Medicine, Animal Resources & Bio-security','The School of Bio-security, Biotechnical and Laboratory Sciences, The School of Veterinary and Animal Resources','2025-03-27 07:53:27.634384','Makerere Main Campus',1),(10,'The School of Law','The School of Law attained College Status effective 1st July 2014, within the meaning of the Universities and Other Tertiary Institutions (Management of Constituent Colleges of Makerere University) Statute 2012. Although a College, it retained the name ΓÇ£School of LawΓÇ¥.','2025-03-27 07:53:56.362389','Makerere Main Campus',1);
/*!40000 ALTER TABLE `academic_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academic_department`
--

DROP TABLE IF EXISTS `academic_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) NOT NULL,
  `description` longtext,
  `created_at` datetime(6) NOT NULL,
  `college_id` int NOT NULL,
  `head_user_id_id` int DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `dept_name` (`dept_name`),
  KEY `academic_department_college_id_dcdd52ce` (`college_id`),
  KEY `academic_department_head_user_id_id_69a33733` (`head_user_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_department`
--

LOCK TABLES `academic_department` WRITE;
/*!40000 ALTER TABLE `academic_department` DISABLE KEYS */;
INSERT INTO `academic_department` VALUES (96,'Agribusiness and Natural Resource Economics (Ag & NRE)','','2025-03-27 09:20:59.639962',1,NULL),(95,'Agricultural Production (AP)','','2025-03-27 09:20:44.739864',1,NULL),(3,'Extension & Innovations (EI)','','2025-03-27 08:49:42.990292',1,NULL),(4,'Department of Economic Theory and Analysis','','2025-03-27 08:50:23.641655',2,NULL),(5,'Department of Policy and Development Economics','','2025-03-27 08:50:34.509369',2,NULL),(6,'Department of Marketing & Management','','2025-03-27 08:50:49.238108',2,NULL),(7,'Department of Accounting and Finance.','','2025-03-27 08:51:05.445631',2,NULL),(8,'Department of Planning and Applied Statistics','','2025-03-27 08:51:20.842511',2,NULL),(9,'Department of Population Studies','','2025-03-27 08:51:34.444696',2,NULL),(10,'Department of Statistics and Actuarial Science','','2025-03-27 08:51:43.744739',2,NULL),(11,'Department of Computer Science','','2025-03-27 08:52:06.279180',3,NULL),(12,'Department of Information Technology','','2025-03-27 08:52:22.267030',3,NULL),(13,'Department of Information Systems','','2025-03-27 08:52:33.636460',3,NULL),(14,'Department of Networks','','2025-03-27 08:52:42.980989',3,NULL),(15,'Department of Library and Information Sciences','','2025-03-27 08:53:06.390930',3,NULL),(16,'Department of Records and Archives Management','','2025-03-27 08:53:19.921251',3,NULL),(17,'Department of Social Sciences & Arts Education','','2025-03-27 08:53:37.147203',4,NULL),(18,'Department of Science, Technology & Vocational Education (DSTVE)','','2025-03-27 08:53:52.983232',4,NULL),(19,'Department of Foundations & Curriculum Studies (DFCS)','','2025-03-27 08:54:02.074216',4,NULL),(20,'Department of Adult & Community Education (DACE)','','2025-03-27 08:54:17.226671',4,NULL),(21,'Institute of Open Distance and eLearning','','2025-03-27 08:54:30.485629',4,NULL),(22,'Institute of Education Research','','2025-03-27 08:54:52.590500',4,NULL),(23,'Centre for Teaching and Learning Support','','2025-03-27 08:55:01.699771',4,NULL),(24,'Centre for Lifelong Learning','','2025-03-27 08:55:11.361460',4,NULL),(25,'Department of Civil and Environmental Engineering','','2025-03-27 08:55:28.480085',5,NULL),(26,'Department of Electrical and Computer Engineering','','2025-03-27 08:55:41.257853',5,NULL),(27,'Department of Mechanical Engineering','','2025-03-27 08:55:55.525880',5,NULL),(28,'Department of Architecture and Physical Planning','','2025-03-27 08:56:10.174885',5,NULL),(29,'Department of Construction Economics and Management','','2025-03-27 08:56:21.520477',5,NULL),(30,'Department of Geomatics and Land Management','','2025-03-27 08:56:31.829943',5,NULL),(31,'Department of Fine Art','','2025-03-27 08:56:42.274575',5,NULL),(32,'Department of Visual Communication Design and Multi-media','','2025-03-27 08:56:54.612277',5,NULL),(33,'Department of Industrial Art and Applied Design','','2025-03-27 08:57:05.552972',5,NULL),(34,'Department of Internal Medicine','','2025-03-27 08:58:00.991563',6,NULL),(35,'Department of Surgery','','2025-03-27 08:58:15.056173',6,NULL),(36,'Department Obstetrics & Gynaecology','','2025-03-27 08:58:25.863859',6,NULL),(37,'Department of Psychiatry','','2025-03-27 08:58:37.911250',6,NULL),(38,'Department of Family Medicine','','2025-03-27 08:58:47.609781',6,NULL),(39,'Department of Anaesthesia','','2025-03-27 08:58:56.396719',6,NULL),(40,'Department of Ear Nose Throat','','2025-03-27 08:59:08.031118',6,NULL),(41,'Department of Ophthalmology','','2025-03-27 09:02:53.358231',6,NULL),(42,'Department of Orthopaedics','','2025-03-27 09:03:09.041103',6,NULL),(43,'Department of Radiology & Radio Therapy','','2025-03-27 09:03:20.916943',6,NULL),(44,'Medical Research Centre','','2025-03-27 09:03:34.922486',6,NULL),(45,'Reproductive Health Unit','','2025-03-27 09:03:43.451863',6,NULL),(46,'Department of Paediatrics & Child Health','','2025-03-27 09:03:54.487743',6,NULL),(47,'Department of Health Policy & Management','','2025-03-27 09:04:22.469159',6,NULL),(48,'Department of Epidemic& Biostatistics','','2025-03-27 09:04:40.894065',6,NULL),(49,'Department of Community Health & Behavioral Sciences','','2025-03-27 09:04:50.272212',6,NULL),(50,'Department of Disease Control & Environmental Health','','2025-03-27 09:05:07.076695',6,NULL),(51,'Department of Human Anatomy','','2025-03-27 09:05:17.937385',6,NULL),(52,'Department of Biochemistry','','2025-03-27 09:05:29.130944',6,NULL),(53,'Department of Microbiology','','2025-03-27 09:05:46.463977',6,NULL),(54,'Department of Pathology','','2025-03-27 09:06:00.815347',6,NULL),(55,'Department of Physiology','','2025-03-27 09:06:16.385954',6,NULL),(56,'Department of Pharmacology & Therapeutics','','2025-03-27 09:06:25.143382',6,NULL),(57,'Department of Anatomy','','2025-03-27 09:06:34.679432',6,NULL),(58,'Department of Medical Illustration','','2025-03-27 09:06:43.497183',6,NULL),(59,'Department of Pharmacy','','2025-03-27 09:06:55.713379',6,NULL),(60,'Department of Dentistry','','2025-03-27 09:07:04.711224',6,NULL),(61,'Department of Nursing Department of Allied Health Sciences','','2025-03-27 09:07:15.406108',6,NULL),(62,'Department of Philosophy','','2025-03-27 09:07:33.695431',7,NULL),(63,'Department of Development Studies','','2025-03-27 09:07:42.749399',7,NULL),(64,'Department of Religion and Peace Studies','','2025-03-27 09:07:52.024713',7,NULL),(65,'Department of Performing Arts & Film','','2025-03-27 09:08:00.868967',7,NULL),(66,'Department of History, Archaeology & Organizational Studies','','2025-03-27 09:08:11.332204',7,NULL),(67,'Department of Literature','','2025-03-27 09:08:24.188726',7,NULL),(68,'Department of Linguistics, English Language Studies & Communication Skills','','2025-03-27 09:08:33.470837',7,NULL),(69,'Department of European and Oriental Languages','','2025-03-27 09:09:08.542055',7,NULL),(70,'Department of African Languages','','2025-03-27 09:09:17.801065',7,NULL),(71,'Department of Journalism and Communication','','2025-03-27 09:09:27.472249',7,NULL),(72,'Department of Journalism and Communication - Student Projects','','2025-03-27 09:09:39.367311',7,NULL),(73,'Centres - Centre for Language and Communication Services','','2025-03-27 09:09:55.073138',7,NULL),(74,'Centres - Confucius Institute','','2025-03-27 09:10:07.396608',7,NULL),(75,'Department of Mental Health and Community Psychology','','2025-03-27 09:10:17.170818',7,NULL),(76,'Department of Educational, Organizational and Social Psychology','','2025-03-27 09:10:48.520733',7,NULL),(77,'Department of Sociology & Anthropology','','2025-03-27 09:11:00.961754',7,NULL),(78,'Department of Social Work and Social Administration','','2025-03-27 09:11:10.437059',7,NULL),(79,'Projects -  Child Trafficking Project','','2025-03-27 09:11:20.991813',7,NULL),(80,'Department of Political Science and Public Administration','','2025-03-27 09:11:31.592334',7,NULL),(81,'Department of Physics','','2025-03-27 09:11:53.902582',8,NULL),(82,'Department of Chemistry','','2025-03-27 09:12:03.188753',8,NULL),(83,'Department of Geology and Petroleum Studies','','2025-03-27 09:12:13.100966',8,NULL),(84,'Department of Mathematics','','2025-03-27 09:12:23.017670',8,NULL),(85,'Department of Plant Sciences, Microbiology and Biotechnology','','2025-03-27 09:12:34.988923',8,NULL),(86,'Department of Biochemistry and Sports Science','','2025-03-27 09:12:45.749073',8,NULL),(87,'Department of Zoology, Entomology and Fisheries Sciences','','2025-03-27 09:12:57.155854',8,NULL),(88,'School of Bio-security, Biotechnical and Laboratory Sciences','','2025-03-27 09:13:23.731723',9,NULL),(89,'School of Veterinary and Animal Resources','','2025-03-27 09:13:35.746591',9,NULL),(90,'Department of Law and Jurisprudence','','2025-03-27 09:13:50.807456',10,NULL),(91,'Department of Public Law','','2025-03-27 09:14:00.426450',10,NULL),(92,'Department of Commercial Law','','2025-03-27 09:14:12.593756',10,NULL),(93,'Department of Environmental Law','','2025-03-27 09:14:24.401952',10,NULL),(94,'Department of Human Rights and Peace Centre','','2025-03-27 09:14:36.992460',10,NULL);
/*!40000 ALTER TABLE `academic_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academic_program`
--

DROP TABLE IF EXISTS `academic_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_program` (
  `program_id` int NOT NULL AUTO_INCREMENT,
  `program_name` varchar(100) NOT NULL,
  `degree_level` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `college_id` int NOT NULL,
  `department_id` int NOT NULL,
  `program_head_id` int DEFAULT NULL,
  PRIMARY KEY (`program_id`),
  UNIQUE KEY `academic_program_program_name_degree_leve_2eedbad9_uniq` (`program_name`,`degree_level`,`department_id`),
  KEY `academic_program_college_id_7e0537f5` (`college_id`),
  KEY `academic_program_department_id_d2896b6e` (`department_id`),
  KEY `academic_program_program_head_id_12bd31b2` (`program_head_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_program`
--

LOCK TABLES `academic_program` WRITE;
/*!40000 ALTER TABLE `academic_program` DISABLE KEYS */;
INSERT INTO `academic_program` VALUES (1,'Bachelor of Science in Computer Science','bachelors',1,3,11,1);
/*!40000 ALTER TABLE `academic_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add Token',6,'add_token'),(22,'Can change Token',6,'change_token'),(23,'Can delete Token',6,'delete_token'),(24,'Can view Token',6,'view_token'),(25,'Can add Token',7,'add_tokenproxy'),(26,'Can change Token',7,'change_tokenproxy'),(27,'Can delete Token',7,'delete_tokenproxy'),(28,'Can view Token',7,'view_tokenproxy'),(29,'Can add role',8,'add_role'),(30,'Can change role',8,'change_role'),(31,'Can delete role',8,'delete_role'),(32,'Can view role',8,'view_role'),(33,'Can add user',9,'add_user'),(34,'Can change user',9,'change_user'),(35,'Can delete user',9,'delete_user'),(36,'Can view user',9,'view_user'),(37,'Can add student',10,'add_student'),(38,'Can change student',10,'change_student'),(39,'Can delete student',10,'delete_student'),(40,'Can view student',10,'view_student'),(41,'Can add attachment',11,'add_attachment'),(42,'Can change attachment',11,'change_attachment'),(43,'Can delete attachment',11,'delete_attachment'),(44,'Can view attachment',11,'view_attachment'),(45,'Can add category',12,'add_category'),(46,'Can change category',12,'change_category'),(47,'Can delete category',12,'delete_category'),(48,'Can view category',12,'view_category'),(49,'Can add comment',13,'add_comment'),(50,'Can change comment',13,'change_comment'),(51,'Can delete comment',13,'delete_comment'),(52,'Can view comment',13,'view_comment'),(53,'Can add issue',14,'add_issue'),(54,'Can change issue',14,'change_issue'),(55,'Can delete issue',14,'delete_issue'),(56,'Can view issue',14,'view_issue'),(57,'Can add issue history',15,'add_issuehistory'),(58,'Can change issue history',15,'change_issuehistory'),(59,'Can delete issue history',15,'delete_issuehistory'),(60,'Can view issue history',15,'view_issuehistory'),(61,'Can add notification',16,'add_notification'),(62,'Can change notification',16,'change_notification'),(63,'Can delete notification',16,'delete_notification'),(64,'Can view notification',16,'view_notification'),(65,'Can add priority',17,'add_priority'),(66,'Can change priority',17,'change_priority'),(67,'Can delete priority',17,'delete_priority'),(68,'Can view priority',17,'view_priority'),(69,'Can add status',18,'add_status'),(70,'Can change status',18,'change_status'),(71,'Can delete status',18,'delete_status'),(72,'Can view status',18,'view_status'),(73,'Can add college',19,'add_college'),(74,'Can change college',19,'change_college'),(75,'Can delete college',19,'delete_college'),(76,'Can view college',19,'view_college'),(77,'Can add department',20,'add_department'),(78,'Can change department',20,'change_department'),(79,'Can delete department',20,'delete_department'),(80,'Can view department',20,'view_department'),(81,'Can add program',21,'add_program'),(82,'Can change program',21,'change_program'),(83,'Can delete program',21,'delete_program'),(84,'Can view program',21,'view_program'),(85,'Can add file upload',22,'add_fileupload'),(86,'Can change file upload',22,'change_fileupload'),(87,'Can delete file upload',22,'delete_fileupload'),(88,'Can view file upload',22,'view_fileupload');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-03-26 12:00:40.834641','1','College of Agricultural and Environmental Sciences',1,'[{\"added\": {}}]',19,1),(2,'2025-03-26 12:01:24.830189','1','Missing Marks',1,'[{\"added\": {}}]',12,1),(3,'2025-03-27 07:34:34.656178','2','College of Business and Management Sciences',1,'[{\"added\": {}}]',19,1),(4,'2025-03-27 07:35:21.605380','2','College of Business and Management Sciences',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',19,1),(5,'2025-03-27 07:36:12.357911','3','College of Computing and Information Sciences',1,'[{\"added\": {}}]',19,1),(6,'2025-03-27 07:37:00.915687','4','College of Education and External Studies',1,'[{\"added\": {}}]',19,1),(7,'2025-03-27 07:39:42.323178','5','College of Engineering, Design, Art and Technology',1,'[{\"added\": {}}]',19,1),(8,'2025-03-27 07:44:22.312509','6','College of Health Sciences',1,'[{\"added\": {}}]',19,1),(9,'2025-03-27 07:47:19.772019','7','College of Humanities and Social Sciences',1,'[{\"added\": {}}]',19,1),(10,'2025-03-27 07:52:42.627601','8','College of Natural Sciences',1,'[{\"added\": {}}]',19,1),(11,'2025-03-27 07:53:27.635385','9','College of Veterinary Medicine, Animal Resources & Bio-security',1,'[{\"added\": {}}]',19,1),(12,'2025-03-27 07:53:56.363391','10','The School of Law',1,'[{\"added\": {}}]',19,1),(13,'2025-03-27 07:57:21.918066','1','Agricultural Production (AP)',1,'[{\"added\": {}}]',20,1),(14,'2025-03-27 07:58:23.815571','2','Agribusiness and Natural Resource Economics (Ag & NRE)',1,'[{\"added\": {}}]',20,1),(15,'2025-03-27 11:29:17.608617','1','Open',1,'[{\"added\": {}}]',18,1),(16,'2025-03-27 11:29:57.686914','2','In Progress',1,'[{\"added\": {}}]',18,1),(17,'2025-03-27 11:30:33.806104','3','Resolved',1,'[{\"added\": {}}]',18,1),(18,'2025-03-27 11:36:07.951258','1','Critical',1,'[{\"added\": {}}]',17,1),(19,'2025-03-27 11:36:38.088816','2','High',1,'[{\"added\": {}}]',17,1),(20,'2025-03-27 11:37:12.501802','3','Medium',1,'[{\"added\": {}}]',17,1),(21,'2025-03-27 11:37:22.301393','4','Low',1,'[{\"added\": {}}]',17,1),(22,'2025-03-27 11:37:53.554292','9','Missing OOP marks',2,'[{\"changed\": {\"fields\": [\"Priority\", \"Status\", \"College\"]}}]',14,1),(23,'2025-03-27 12:19:02.847893','2','Grading Disputes',1,'[{\"added\": {}}]',12,1),(24,'2025-03-27 12:19:47.050059','2','Exam Scheduling',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(25,'2025-03-27 12:20:18.274107','3','Grading Disputes',1,'[{\"added\": {}}]',12,1),(26,'2025-03-27 12:20:50.880397','4','Course Registration',1,'[{\"added\": {}}]',12,1),(27,'2025-03-27 12:21:16.982070','5','Academic Advising',1,'[{\"added\": {}}]',12,1),(28,'2025-03-27 12:22:25.652938','6','Fee Payments',1,'[{\"added\": {}}]',12,1),(29,'2025-03-27 12:23:04.127860','7','Transcripts',1,'[{\"added\": {}}]',12,1),(30,'2025-03-27 12:23:31.586092','8','Student Records',1,'[{\"added\": {}}]',12,1),(31,'2025-03-27 12:23:54.974335','9','Admissions',1,'[{\"added\": {}}]',12,1),(32,'2025-03-27 12:24:27.062312','10','Visa/Sponsorship',1,'[{\"added\": {}}]',12,1),(33,'2025-03-27 12:26:38.530390','10','Academic Issues',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(34,'2025-03-27 12:27:22.220234','9','Administrative Issues',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(35,'2025-03-27 12:27:58.691542','8','IT Support',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(36,'2025-03-27 12:28:28.826118','7','Facilities & Infrastructure',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(37,'2025-03-27 12:29:12.470889','6','Library Services',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(38,'2025-03-27 12:29:41.349457','5','Student Life',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(39,'2025-03-27 12:30:23.302638','4','College & Staff Support',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(40,'2025-03-27 12:30:56.562873','3','Security & Safety',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(41,'2025-03-27 12:31:33.150962','2','Events & Activities',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(42,'2025-03-27 12:32:08.041692','1','Compliance & Policies',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',12,1),(43,'2025-03-27 12:54:57.088962','13','Data Structures marks seem to miss',3,'',14,1),(44,'2025-03-27 12:54:57.088962','12','Probability marks missing',3,'',14,1),(45,'2025-03-27 12:54:57.088962','11','Data Structures marks seem to miss',3,'',14,1),(46,'2025-03-27 12:54:57.088962','10','Data Structures marks seem to miss',3,'',14,1),(47,'2025-03-27 12:54:57.088962','9','Missing OOP marks',3,'',14,1),(48,'2025-03-27 12:54:57.088962','8','kyocera A3 mfp ecosys m4125i dn',3,'',14,1),(49,'2025-03-27 12:54:57.088962','7','OOP-Programming-assignment',3,'',14,1),(50,'2025-03-27 12:54:57.088962','6','Digital Innovation Assignment marks',3,'',14,1),(51,'2025-03-27 12:54:57.088962','5','Software Development marks missing',3,'',14,1),(52,'2025-03-27 12:54:57.088962','4','Mathematics marks missing',3,'',14,1),(53,'2025-03-27 12:54:57.088962','3','Algorithms missing marks',3,'',14,1),(54,'2025-03-27 12:54:57.088962','2','Communication Skills Marks Missing',3,'',14,1),(55,'2025-03-27 12:54:57.088962','1','Data Structures marks seem to miss',3,'',14,1),(56,'2025-04-01 11:39:34.135257','1','Bachelor of Science in Computer Science (Bachelors)',1,'[{\"added\": {}}]',21,1),(57,'2025-04-01 11:41:23.944669','1','Namaara Amon (2147483647)',1,'[{\"added\": {}}]',10,1),(58,'2025-04-08 08:04:48.836611','15','Missing marks',3,'',14,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(6,'authtoken','token'),(7,'authtoken','tokenproxy'),(8,'users','role'),(9,'users','user'),(10,'users','student'),(11,'issues','attachment'),(12,'issues','category'),(13,'issues','comment'),(14,'issues','issue'),(15,'issues','issuehistory'),(16,'issues','notification'),(17,'issues','priority'),(18,'issues','status'),(19,'academic','college'),(20,'academic','department'),(21,'academic','program'),(22,'files','fileupload');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-03-25 14:30:47.164330'),(2,'contenttypes','0002_remove_content_type_name','2025-03-25 14:30:47.363029'),(3,'auth','0001_initial','2025-03-25 14:30:48.244184'),(4,'auth','0002_alter_permission_name_max_length','2025-03-25 14:30:48.317421'),(5,'auth','0003_alter_user_email_max_length','2025-03-25 14:30:48.336025'),(6,'auth','0004_alter_user_username_opts','2025-03-25 14:30:48.350444'),(7,'auth','0005_alter_user_last_login_null','2025-03-25 14:30:48.371052'),(8,'auth','0006_require_contenttypes_0002','2025-03-25 14:30:48.372778'),(9,'auth','0007_alter_validators_add_error_messages','2025-03-25 14:30:48.386011'),(10,'auth','0008_alter_user_username_max_length','2025-03-25 14:30:48.397142'),(11,'auth','0009_alter_user_last_name_max_length','2025-03-25 14:30:48.409229'),(12,'auth','0010_alter_group_name_max_length','2025-03-25 14:30:48.484218'),(13,'auth','0011_update_proxy_permissions','2025-03-25 14:30:48.498934'),(14,'auth','0012_alter_user_first_name_max_length','2025-03-25 14:30:48.512089'),(15,'academic','0001_initial','2025-03-25 14:30:48.665145'),(16,'users','0001_initial','2025-03-25 14:30:50.531379'),(17,'academic','0002_initial','2025-03-25 14:30:51.616366'),(18,'admin','0001_initial','2025-03-25 14:30:52.062381'),(19,'admin','0002_logentry_remove_auto_add','2025-03-25 14:30:52.115150'),(20,'admin','0003_logentry_add_action_flag_choices','2025-03-25 14:30:52.152005'),(21,'authtoken','0001_initial','2025-03-25 14:30:52.274347'),(22,'authtoken','0002_auto_20160226_1747','2025-03-25 14:30:52.442722'),(23,'authtoken','0003_tokenproxy','2025-03-25 14:30:52.446212'),(24,'authtoken','0004_alter_tokenproxy_options','2025-03-25 14:30:52.456597'),(25,'issues','0001_initial','2025-03-25 14:30:52.637298'),(26,'issues','0002_initial','2025-03-25 14:30:55.503653'),(27,'sessions','0001_initial','2025-03-25 14:30:55.587788'),(28,'files','0001_initial','2025-03-26 12:41:07.259863'),(29,'issues','0003_alter_attachment_issue','2025-03-26 12:49:41.078161'),(30,'issues','0003_add_open_status','2025-03-27 11:45:05.322568'),(31,'issues','0004_merge_20250327_1444','2025-03-27 11:45:05.324570'),(32,'users','0002_student_department_student_registration_number_and_more','2025-04-01 10:04:29.498950'),(33,'users','0003_auto_20250401_1304','2025-04-01 10:04:56.134744'),(34,'users','0004_alter_student_department_and_more','2025-04-01 10:10:38.587506'),(35,'users','0005_auto_20250401_1310','2025-04-01 10:11:09.928687'),(36,'users','0006_auto_20250401_1312','2025-04-01 10:12:24.786525'),(37,'users','0007_remove_student_semester_student_current_semester_and_more','2025-04-01 10:20:30.944780'),(38,'users','0008_auto_20250401_1320','2025-04-01 10:20:31.003786'),(39,'users','0009_alter_student_student_number','2025-04-01 10:24:13.963225');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('cw4l26p78bemp0bitkeemvtf5rxkicag','.eJxVjDsOwjAQBe_iGln-xjElfc5g7Xo3OIAcKU4qxN1JpBTQzsx7b5FgW0vaGi9pInEVWlx-GUJ-cj0EPaDeZ5nnui4TyiORp21ymIlft7P9OyjQyr72WuuOulFZihmZfPAj9DEqa40D1SH2ihlVcKNlvTNC5YIBb33Who34fAHUtzdX:1u0Cq3:d6-E1jxAg-Fbx6Ij74ko6LQz699O847gUFH9Fovd1Os','2025-04-17 05:10:03.877457'),('q02a7uwef6cow5qxova2b2dzh34p86bu','.eJxVjDsOwjAQBe_iGln-xjElfc5g7Xo3OIAcKU4qxN1JpBTQzsx7b5FgW0vaGi9pInEVWlx-GUJ-cj0EPaDeZ5nnui4TyiORp21ymIlft7P9OyjQyr72WuuOulFZihmZfPAj9DEqa40D1SH2ihlVcKNlvTNC5YIBb33Who34fAHUtzdX:1tzYC6:X51PA_rVqrzv8mcloFXeBMAqcx6HVeSQG6JO0beyCU8','2025-04-15 09:46:06.452457');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_fileupload`
--

DROP TABLE IF EXISTS `files_fileupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_fileupload` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `file_size` int NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `uploaded_by_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_fileupload_uploaded_by_id_734f8586` (`uploaded_by_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_fileupload`
--

LOCK TABLES `files_fileupload` WRITE;
/*!40000 ALTER TABLE `files_fileupload` DISABLE KEYS */;
INSERT INTO `files_fileupload` VALUES (1,'uploads/2025-03-25_15_40_15-My_Provisional_Results_and_35_more_pages_-_Personal_-_Microsoft_Edge.png','2025-03-25 15_40_15-My Provisional Results and 35 more pages - Personal - Microsoft Edge.png','image/png',22743,'2025-03-26 12:42:19.724074',3);
/*!40000 ALTER TABLE `files_fileupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues_attachment`
--

DROP TABLE IF EXISTS `issues_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues_attachment` (
  `attachment_id` int NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `file_size` int NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  `issue_id` int DEFAULT NULL,
  PRIMARY KEY (`attachment_id`),
  KEY `issues_attachment_user_id_421eefa1` (`user_id`),
  KEY `issues_attachment_issue_id_67821106` (`issue_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues_attachment`
--

LOCK TABLES `issues_attachment` WRITE;
/*!40000 ALTER TABLE `issues_attachment` DISABLE KEYS */;
INSERT INTO `issues_attachment` VALUES (1,'2025-03-25 15_40_15-My Provisional Results and 35 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-03-25_15_40_15-My_Provisional_Results_and_35_more_pages_-_Persona_KShDwyY.png','image/png',22743,'2025-03-26 12:50:21.748128',3,NULL),(2,'2025-03-25 15_40_15-My Provisional Results and 35 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-03-25_15_40_15-My_Provisional_Results_and_35_more_pages_-_Persona_AoOMvW6.png','image/png',22743,'2025-03-26 12:53:03.737070',3,NULL),(3,'2025-03-25 15_40_15-My Provisional Results and 35 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-03-25_15_40_15-My_Provisional_Results_and_35_more_pages_-_Persona_qWmkIef.png','image/png',22743,'2025-03-26 12:55:41.823559',3,NULL),(4,'2025-03-25 15_40_15-My Provisional Results and 35 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-03-25_15_40_15-My_Provisional_Results_and_35_more_pages_-_Persona_6Be7iX5.png','image/png',22743,'2025-03-26 13:00:08.964523',3,NULL),(5,'2025-03-25 15_40_15-My Provisional Results and 35 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-03-25_15_40_15-My_Provisional_Results_and_35_more_pages_-_Persona_0nJfrd2.png','image/png',22743,'2025-03-26 13:13:35.366983',3,NULL),(6,'2025-03-25 15_40_15-My Provisional Results and 35 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-03-25_15_40_15-My_Provisional_Results_and_35_more_pages_-_Persona_BbWA0Nr.png','image/png',22743,'2025-03-26 13:19:56.094309',3,NULL),(7,'2025-03-25 15_40_15-My Provisional Results and 35 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-03-25_15_40_15-My_Provisional_Results_and_35_more_pages_-_Persona_DI5pYgb.png','image/png',22743,'2025-03-26 14:14:14.779991',3,NULL),(8,'2025-03-25 15_40_15-My Provisional Results and 35 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-03-25_15_40_15-My_Provisional_Results_and_35_more_pages_-_Persona_bUdm3O3.png','image/png',22743,'2025-03-26 14:24:16.981051',3,NULL),(9,'2025-03-26 12_45_44-Vite + React and 36 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-03-26_12_45_44-Vite__React_and_36_more_pages_-_Personal_-_Microsoft_Edge.png','image/png',35577,'2025-03-27 12:41:51.174408',3,NULL),(10,'2025-03-26 12_45_44-Vite + React and 36 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-03-26_12_45_44-Vite__React_and_36_more_pages_-_Personal_-_Microso_0hYdU3l.png','image/png',35577,'2025-03-27 14:42:36.205138',3,NULL),(11,'2025-04-01 06_55_41-Log in to the site _ MUELE and 34 more pages - Personal - Microsoft Edge.png','issue_attachments/2025-04-01_06_55_41-Log_in_to_the_site___MUELE_and_34_more_pages_-_Per_7VClUeB.png','image/png',215798,'2025-04-01 03:56:03.801822',3,NULL);
/*!40000 ALTER TABLE `issues_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues_category`
--

DROP TABLE IF EXISTS `issues_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext,
  `is_active` tinyint(1) NOT NULL,
  `college_id` int DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `name` (`name`),
  KEY `issues_category_college_id_d99a1445` (`college_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues_category`
--

LOCK TABLES `issues_category` WRITE;
/*!40000 ALTER TABLE `issues_category` DISABLE KEYS */;
INSERT INTO `issues_category` VALUES (1,'Compliance & Policies','Policy Violations : Reports of violations of university policies.\r\nCompliance Issues : Ensuring adherence to legal or regulatory requirements.\r\nDisciplinary Actions : Requests for reviews or appeals of disciplinary decisions.\r\nEthics Concerns : Reporting unethical behavior or conflicts of interest.\r\nGDPR/Privacy : Issues related to data protection or privacy concerns.',1,1),(2,'Events & Activities','Event Scheduling : Conflicts or issues with event dates/times.\r\nVenue Bookings : Requests for booking lecture halls or event spaces.\r\nTechnical Setup : Assistance with audiovisual or technical needs for events.\r\nMarketing Materials : Requests for posters, flyers, or digital promotions.\r\nFeedback Collection : Post-event feedback or suggestions.',1,3),(3,'Security & Safety','Access Control : Issues with ID cards, building access, or security systems.\r\nEmergency Alerts : Reporting emergencies or requesting alerts.\r\nLost & Found : Items lost on campus or found by others.\r\nSurveillance : Requests for CCTV footage or camera placement.\r\nIncident Reporting : Reporting theft, vandalism, or other incidents.',1,3),(4,'College & Staff Support','Research Grants : Assistance with grant applications or reporting.\r\nTeaching Tools : Issues with learning management systems (e.g., Moodle, Blackboard).\r\nOffice Supplies : Requests for office equipment or supplies.\r\nProfessional Development : Enrollment in workshops or training programs.\r\nPayroll Issues : Problems with salary payments, benefits, or deductions.',1,3),(5,'Student Life','Clubs & Organizations : Issues with club activities, funding, or events.\r\nHousing : Problems with dormitory assignments, maintenance, or roommate conflicts.\r\nCounseling Services : Requests for mental health or career counseling.\r\nDining Services : Feedback or complaints about campus food options.\r\nTransportation : Issues with shuttle services or parking permits.',1,3),(6,'Library Services','Book Availability : Requests for specific books or resources.\r\nBorrowing Issues : Problems with borrowing or returning materials.\r\nDigital Resources : Access issues with e-books, journals, or databases.\r\nStudy Spaces : Booking or availability of study rooms or quiet areas.\r\nInterlibrary Loans : Requests for books or articles not available locally.',1,3),(7,'Facilities & Infrastructure','Classroom Equipment : Issues with projectors, microphones, or other classroom tech.\r\nBuilding Maintenance : Repairs needed for classrooms, offices, or common areas.\r\nCleaning Services : Complaints about cleanliness or waste management.\r\nAccessibility : Requests for accommodations or improvements for accessibility.\r\nSafety Hazards : Reporting unsafe conditions (e.g., broken stairs, faulty wiring).',1,3),(8,'IT Support','Network Connectivity : Wi-Fi or internet access issues.\r\nEmail Accounts : Problems with email setup, access, or spam.\r\nSoftware Licenses : Requests for software installations or license keys.\r\nHardware Maintenance : Issues with university-owned devices or labs.\r\nData Recovery : Assistance with recovering lost files or data.',1,3),(9,'Administrative Issues','Fee Payments : Issues with tuition payments, scholarships, or refunds.\r\nTranscripts : Requests for official transcripts or errors in transcript records.\r\nStudent Records : Incorrect personal information or updates needed.\r\nAdmissions : Queries or issues related to the admissions process.\r\nVisa/Sponsorship : International student-related matters (e.g., visa extensions).',1,3),(10,'Academic Issues','Grading Disputes : Concerns about grades or grade calculations.\r\nExam Scheduling : Issues with exam dates, times, or locations.\r\nCourse Registration : Problems with course enrollment or dropping courses.\r\nAcademic Advising : Requests for academic counseling or program changes.\r\nPlagiarism/Integrity : Reports of academic dishonesty.',1,3);
/*!40000 ALTER TABLE `issues_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues_comment`
--

DROP TABLE IF EXISTS `issues_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues_comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `is_internal` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `issue_id` int NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `issues_comment_user_id_a55a31a0` (`user_id`),
  KEY `issues_comment_issue_id_ea7f321f` (`issue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues_comment`
--

LOCK TABLES `issues_comment` WRITE;
/*!40000 ALTER TABLE `issues_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `issues_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues_issue`
--

DROP TABLE IF EXISTS `issues_issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues_issue` (
  `issue_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `due_date` datetime(6) DEFAULT NULL,
  `resolved_at` datetime(6) DEFAULT NULL,
  `is_student_issue` tinyint(1) NOT NULL,
  `assignee_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `college_id` int DEFAULT NULL,
  `reporter_id` int NOT NULL,
  `priority_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `issues_issue_assignee_id_a39069db` (`assignee_id`),
  KEY `issues_issue_category_id_53a7fdd2` (`category_id`),
  KEY `issues_issue_college_id_1b849d6b` (`college_id`),
  KEY `issues_issue_reporter_id_0b69a16d` (`reporter_id`),
  KEY `issues_issue_priority_id_93842a93` (`priority_id`),
  KEY `issues_issue_status_id_64473cf1` (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues_issue`
--

LOCK TABLES `issues_issue` WRITE;
/*!40000 ALTER TABLE `issues_issue` DISABLE KEYS */;
INSERT INTO `issues_issue` VALUES (25,'Can\'t enroll course unit','Am unable to enroll a course unit in MUELE','2025-04-01 04:16:25.646271','2025-04-01 04:16:25.646271',NULL,NULL,1,NULL,8,NULL,3,3,1),(24,'Accessing my MUELE Account','Am unable to access the MUELE account. My username and password seem incorrect when i try to login','2025-04-01 03:56:03.883826','2025-04-01 03:56:03.883826',NULL,NULL,1,NULL,8,NULL,3,3,1),(23,'Borrowing of OOP E-book','I need to borrow an E-book from the library','2025-03-27 14:42:36.237137','2025-03-27 14:42:36.237137',NULL,NULL,1,NULL,6,NULL,3,3,1),(22,'MUCOSA Hand over party','Where will the party take place','2025-03-27 14:10:50.532255','2025-03-27 14:10:50.532255',NULL,NULL,1,NULL,2,NULL,3,3,1),(21,'What\'s the policy for Makerere on Pragiarism','Copying in exams','2025-03-27 13:58:10.580594','2025-03-27 13:58:10.580594',NULL,NULL,1,NULL,1,NULL,3,3,1),(20,'Registration','Unable Can\'t register online','2025-03-27 13:48:43.414249','2025-03-27 13:48:43.414249',NULL,NULL,1,NULL,8,NULL,3,3,1),(19,'Access MUK premises','access granting','2025-03-27 13:03:02.190266','2025-03-27 13:03:02.190266',NULL,NULL,1,NULL,9,NULL,3,1,1),(18,'OOP-Programming-assignment','dwdwdwd','2025-03-27 13:02:21.572781','2025-03-27 13:02:21.572781',NULL,NULL,1,NULL,10,NULL,3,2,1),(17,'kyocera A3 mfp ecosys m4125i dn','f44f4f4f','2025-03-27 12:56:56.480568','2025-03-27 12:56:56.480568',NULL,NULL,1,NULL,8,NULL,3,3,1),(16,'Data Structures marks seem to miss','edede','2025-03-27 12:56:39.327743','2025-03-27 12:56:39.327743',NULL,NULL,1,NULL,1,NULL,3,3,1),(14,'Can\'t access my exam permit','Am unbale to printout my exam permit off my portal','2025-03-27 12:41:51.194405','2025-03-27 12:41:51.194405',NULL,NULL,1,NULL,9,NULL,3,3,1);
/*!40000 ALTER TABLE `issues_issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues_issuehistory`
--

DROP TABLE IF EXISTS `issues_issuehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues_issuehistory` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `field_name` varchar(100) NOT NULL,
  `old_value` longtext,
  `new_value` longtext,
  `changed_at` datetime(6) NOT NULL,
  `issue_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`history_id`),
  KEY `issues_issuehistory_issue_id_2bccca29` (`issue_id`),
  KEY `issues_issuehistory_user_id_5d736c70` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues_issuehistory`
--

LOCK TABLES `issues_issuehistory` WRITE;
/*!40000 ALTER TABLE `issues_issuehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `issues_issuehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues_notification`
--

DROP TABLE IF EXISTS `issues_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues_notification` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `issue_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `issues_notification_issue_id_e614fb44` (`issue_id`),
  KEY `issues_notification_user_id_8f162c47` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues_notification`
--

LOCK TABLES `issues_notification` WRITE;
/*!40000 ALTER TABLE `issues_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `issues_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues_priority`
--

DROP TABLE IF EXISTS `issues_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues_priority` (
  `priority_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `level` int NOT NULL,
  `sla_hours` int NOT NULL,
  PRIMARY KEY (`priority_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues_priority`
--

LOCK TABLES `issues_priority` WRITE;
/*!40000 ALTER TABLE `issues_priority` DISABLE KEYS */;
INSERT INTO `issues_priority` VALUES (1,'Critical',1,6),(2,'High',2,12),(3,'Medium',3,18),(4,'Low',4,24);
/*!40000 ALTER TABLE `issues_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues_status`
--

DROP TABLE IF EXISTS `issues_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` longtext,
  `is_terminal` tinyint(1) NOT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues_status`
--

LOCK TABLES `issues_status` WRITE;
/*!40000 ALTER TABLE `issues_status` DISABLE KEYS */;
INSERT INTO `issues_status` VALUES (1,'Open','Ticket hasn\'t been worked upon',0),(2,'In Progress','Issue is being worked upon',0),(3,'Resolved','Issue has been worked upon and closed',1);
/*!40000 ALTER TABLE `issues_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_role`
--

DROP TABLE IF EXISTS `users_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `description` longtext,
  `permissions` json NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_role`
--

LOCK TABLES `users_role` WRITE;
/*!40000 ALTER TABLE `users_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_student`
--

DROP TABLE IF EXISTS `users_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_number` int NOT NULL,
  `year_level` int NOT NULL,
  `enrollment_status` varchar(20) NOT NULL,
  `admission_date` date NOT NULL,
  `expected_graduation` date DEFAULT NULL,
  `college_id` int NOT NULL,
  `program_id` int NOT NULL,
  `user_id` int NOT NULL,
  `department_id` int NOT NULL,
  `registration_number` varchar(20) NOT NULL,
  `current_semester` int NOT NULL,
  `semester_in_year` int NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `registration_number` (`registration_number`),
  UNIQUE KEY `student_number` (`student_number`),
  KEY `users_student_college_id_75aa77cb` (`college_id`),
  KEY `users_student_program_id_dbc19f50` (`program_id`),
  KEY `users_student_department_id_6aa3ffc2` (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_student`
--

LOCK TABLES `users_student` WRITE;
/*!40000 ALTER TABLE `users_student` DISABLE KEYS */;
INSERT INTO `users_student` VALUES (1,2147483647,1,'enrolled','2024-08-01','2027-01-01',3,1,4,11,'24/U/25967/EVE',1,1);
/*!40000 ALTER TABLE `users_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user` (
  `password` varchar(128) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `department_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `users_user_department_id_626c0154` (`department_id`),
  KEY `users_user_role_id_854f2687` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES ('pbkdf2_sha256$870000$1uiAkry17u2pjAKgmpm1Uv$UaJiNe7KhIw2FtTw+dfqcSd/myOUTl2FwqllSYJ53Rg=',1,1,'kats','amonkats8@gmail.com','Namaara Amon','2025-03-25 14:34:29.380760','2025-04-03 05:10:03.874457',1,1,'admin',NULL,NULL),('pbkdf2_sha256$870000$h7WNCHAlkrLDQaXIoUc07A$p6PyooTawCrcYd1sD+8DQwaTI7AUhBStTohob4YpXLY=',0,2,'lecturer1','lecturer@muk.ac.ug','Test Lecturer','2025-03-26 09:33:20.221334','2025-03-26 09:33:19.064341',1,0,'lecturer',NULL,NULL),('pbkdf2_sha256$870000$JYYp0EEzHzKtnhrhaxeGdk$RFrEb6DFPIzx2nHg3vkIxSDtGLHOUpydjPBvig6KU5Y=',0,3,'student1','student@muk.ac.ug','Test Student','2025-03-26 09:33:21.785295','2025-03-26 09:33:20.239979',1,0,'student',NULL,NULL),('pbkdf2_sha256$870000$8AcWrUqQlL7KoGIqjiBsHf$9qG4rkOcnEIR5uFreu8JHWU53sFu8xsI5/HN/2tutBA=',0,4,'amon.namaara','amon.namaara@student.mak.ac.ug','Namaara Amon','2025-04-01 10:40:32.702899','2025-04-01 10:40:31.276325',1,0,'student',NULL,NULL);
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_user_id_5f6f5a90` (`user_id`),
  KEY `users_user_groups_group_id_9afc8d0e` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_permissions_user_id_20aca447` (`user_id`),
  KEY `users_user_user_permissions_permission_id_0b93982e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-11  9:26:44
