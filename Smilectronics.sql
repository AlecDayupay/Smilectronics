-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: smilectronics
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add batch',1,'add_batch'),(2,'Can change batch',1,'change_batch'),(3,'Can delete batch',1,'delete_batch'),(4,'Can view batch',1,'view_batch'),(5,'Can add client_company',2,'add_client_company'),(6,'Can change client_company',2,'change_client_company'),(7,'Can delete client_company',2,'delete_client_company'),(8,'Can view client_company',2,'view_client_company'),(9,'Can add delivery',3,'add_delivery'),(10,'Can change delivery',3,'change_delivery'),(11,'Can delete delivery',3,'delete_delivery'),(12,'Can view delivery',3,'view_delivery'),(13,'Can add issuance',4,'add_issuance'),(14,'Can change issuance',4,'change_issuance'),(15,'Can delete issuance',4,'delete_issuance'),(16,'Can view issuance',4,'view_issuance'),(17,'Can add item',5,'add_item'),(18,'Can change item',5,'change_item'),(19,'Can delete item',5,'delete_item'),(20,'Can view item',5,'view_item'),(21,'Can add item_return',6,'add_item_return'),(22,'Can change item_return',6,'change_item_return'),(23,'Can delete item_return',6,'delete_item_return'),(24,'Can view item_return',6,'view_item_return'),(25,'Can add item_transfer',7,'add_item_transfer'),(26,'Can change item_transfer',7,'change_item_transfer'),(27,'Can delete item_transfer',7,'delete_item_transfer'),(28,'Can view item_transfer',7,'view_item_transfer'),(29,'Can add sales_agent',8,'add_sales_agent'),(30,'Can change sales_agent',8,'change_sales_agent'),(31,'Can delete sales_agent',8,'delete_sales_agent'),(32,'Can view sales_agent',8,'view_sales_agent'),(33,'Can add supplier',9,'add_supplier'),(34,'Can change supplier',9,'change_supplier'),(35,'Can delete supplier',9,'delete_supplier'),(36,'Can view supplier',9,'view_supplier'),(37,'Can add warehouse_staff',10,'add_warehouse_staff'),(38,'Can change warehouse_staff',10,'change_warehouse_staff'),(39,'Can delete warehouse_staff',10,'delete_warehouse_staff'),(40,'Can view warehouse_staff',10,'view_warehouse_staff'),(41,'Can add transfer_item',11,'add_transfer_item'),(42,'Can change transfer_item',11,'change_transfer_item'),(43,'Can delete transfer_item',11,'delete_transfer_item'),(44,'Can view transfer_item',11,'view_transfer_item'),(45,'Can add sales_invoice',12,'add_sales_invoice'),(46,'Can change sales_invoice',12,'change_sales_invoice'),(47,'Can delete sales_invoice',12,'delete_sales_invoice'),(48,'Can view sales_invoice',12,'view_sales_invoice'),(49,'Can add return_item',13,'add_return_item'),(50,'Can change return_item',13,'change_return_item'),(51,'Can delete return_item',13,'delete_return_item'),(52,'Can view return_item',13,'view_return_item'),(53,'Can add issuance_item',14,'add_issuance_item'),(54,'Can change issuance_item',14,'change_issuance_item'),(55,'Can delete issuance_item',14,'delete_issuance_item'),(56,'Can view issuance_item',14,'view_issuance_item'),(57,'Can add invoice_item',15,'add_invoice_item'),(58,'Can change invoice_item',15,'change_invoice_item'),(59,'Can delete invoice_item',15,'delete_invoice_item'),(60,'Can view invoice_item',15,'view_invoice_item'),(61,'Can add discount',16,'add_discount'),(62,'Can change discount',16,'change_discount'),(63,'Can delete discount',16,'delete_discount'),(64,'Can view discount',16,'view_discount'),(65,'Can add delivery_item',17,'add_delivery_item'),(66,'Can change delivery_item',17,'change_delivery_item'),(67,'Can delete delivery_item',17,'delete_delivery_item'),(68,'Can view delivery_item',17,'view_delivery_item'),(69,'Can add log entry',18,'add_logentry'),(70,'Can change log entry',18,'change_logentry'),(71,'Can delete log entry',18,'delete_logentry'),(72,'Can view log entry',18,'view_logentry'),(73,'Can add permission',19,'add_permission'),(74,'Can change permission',19,'change_permission'),(75,'Can delete permission',19,'delete_permission'),(76,'Can view permission',19,'view_permission'),(77,'Can add group',20,'add_group'),(78,'Can change group',20,'change_group'),(79,'Can delete group',20,'delete_group'),(80,'Can view group',20,'view_group'),(81,'Can add user',21,'add_user'),(82,'Can change user',21,'change_user'),(83,'Can delete user',21,'delete_user'),(84,'Can view user',21,'view_user'),(85,'Can add content type',22,'add_contenttype'),(86,'Can change content type',22,'change_contenttype'),(87,'Can delete content type',22,'delete_contenttype'),(88,'Can view content type',22,'view_contenttype'),(89,'Can add session',23,'add_session'),(90,'Can change session',23,'change_session'),(91,'Can delete session',23,'delete_session'),(92,'Can view session',23,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$IRk05ZiX9vcp$A4LTYA0hznQ2PbPosDR+JIvdX2G2o4WWQWVIDgkv8DM=','2023-12-03 12:34:00.038269',1,'tae','','','tae@obf.ateneo.edu',1,1,'2023-12-03 12:33:55.501858');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_batch`
--

DROP TABLE IF EXISTS `dashboard_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_batch` (
  `batchid` int NOT NULL,
  PRIMARY KEY (`batchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_batch`
--

LOCK TABLES `dashboard_batch` WRITE;
/*!40000 ALTER TABLE `dashboard_batch` DISABLE KEYS */;
INSERT INTO `dashboard_batch` VALUES (50001),(50002),(50003),(50004),(50005),(50006),(50007),(50008),(50009),(50010);
/*!40000 ALTER TABLE `dashboard_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_client_company`
--

DROP TABLE IF EXISTS `dashboard_client_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_client_company` (
  `clientid` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`clientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_client_company`
--

LOCK TABLES `dashboard_client_company` WRITE;
/*!40000 ALTER TABLE `dashboard_client_company` DISABLE KEYS */;
INSERT INTO `dashboard_client_company` VALUES (30001,'QWE Electronic'),(30002,'Techno Inc.'),(30003,'Nexus Inno'),(30004,'Precision Sys'),(30005,'DigDynamics'),(30006,'BinaryFlow'),(30007,'ABS-JKL'),(30008,'NBA'),(30009,'Coconut Inc.'),(30010,'Amazone');
/*!40000 ALTER TABLE `dashboard_client_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_delivery`
--

DROP TABLE IF EXISTS `dashboard_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_delivery` (
  `deliveryid` int NOT NULL,
  `deliverydate` date NOT NULL,
  `deliverytime` time(6) NOT NULL,
  `staffid_id` int NOT NULL,
  `supplierid_id` int NOT NULL,
  PRIMARY KEY (`deliveryid`),
  KEY `dashboard_delivery_staffid_id_c0146e4e_fk_dashboard` (`staffid_id`),
  KEY `dashboard_delivery_supplierid_id_77f5a356_fk_dashboard` (`supplierid_id`),
  CONSTRAINT `dashboard_delivery_staffid_id_c0146e4e_fk_dashboard` FOREIGN KEY (`staffid_id`) REFERENCES `dashboard_warehouse_staff` (`staffid`),
  CONSTRAINT `dashboard_delivery_supplierid_id_77f5a356_fk_dashboard` FOREIGN KEY (`supplierid_id`) REFERENCES `dashboard_supplier` (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_delivery`
--

LOCK TABLES `dashboard_delivery` WRITE;
/*!40000 ALTER TABLE `dashboard_delivery` DISABLE KEYS */;
INSERT INTO `dashboard_delivery` VALUES (60001,'2009-12-10','08:00:00.000000',10001,1),(60002,'2009-12-13','09:30:00.000000',10002,2),(60003,'2009-12-13','11:00:00.000000',10003,3),(60004,'2009-12-15','13:30:00.000000',10004,4),(60005,'2009-12-16','15:00:00.000000',10005,5),(60006,'2009-12-20','16:30:00.000000',10006,1),(60007,'2009-12-21','18:00:00.000000',10007,2),(60008,'2009-12-22','20:00:00.000000',10008,3),(60009,'2009-12-28','22:00:00.000000',10009,4);
/*!40000 ALTER TABLE `dashboard_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_delivery_item`
--

DROP TABLE IF EXISTS `dashboard_delivery_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_delivery_item` (
  `deliveryitemid` varchar(255) NOT NULL,
  `itemquantity` int NOT NULL,
  `cost` double NOT NULL,
  `totalcost` double NOT NULL,
  `deliveryid_id` int NOT NULL,
  `itemid_id` int NOT NULL,
  PRIMARY KEY (`deliveryitemid`),
  KEY `dashboard_delivery_i_deliveryid_id_627ffc83_fk_dashboard` (`deliveryid_id`),
  KEY `dashboard_delivery_i_itemid_id_835500b9_fk_dashboard` (`itemid_id`),
  CONSTRAINT `dashboard_delivery_i_deliveryid_id_627ffc83_fk_dashboard` FOREIGN KEY (`deliveryid_id`) REFERENCES `dashboard_delivery` (`deliveryid`),
  CONSTRAINT `dashboard_delivery_i_itemid_id_835500b9_fk_dashboard` FOREIGN KEY (`itemid_id`) REFERENCES `dashboard_item` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_delivery_item`
--

LOCK TABLES `dashboard_delivery_item` WRITE;
/*!40000 ALTER TABLE `dashboard_delivery_item` DISABLE KEYS */;
INSERT INTO `dashboard_delivery_item` VALUES ('60001, 40002',15,22500,337500,60001,40002),('60001, 40005',5,12000,60000,60001,40005),('60002, 40003',30,1200,36000,60002,40003),('60002, 40007',10,45000,450000,60002,40007),('60003, 40008',20,13500,270000,60003,40008),('60003, 40009',25,5000,125000,60003,40009),('60004, 40001',30,1380,41400,60004,40001),('60004, 40006',35,3000,105000,60004,40006),('60005, 40003',20,1200,24000,60005,40003),('60005, 40007',12,45000,540000,60005,40007),('60006, 40006',10,3000,30000,60006,40006),('60006, 40009',8,5000,40000,60006,40009),('60007, 40004',10,35000,350000,60007,40004),('60007, 40005',12,12000,144000,60007,40005),('60008, 40002',30,22500,675000,60008,40002),('60008, 40004',15,35000,525000,60008,40004),('60009, 40005',14,12000,168000,60009,40005),('60009, 40008',25,13500,337500,60009,40008);
/*!40000 ALTER TABLE `dashboard_delivery_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_discount`
--

DROP TABLE IF EXISTS `dashboard_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_discount` (
  `discountid` varchar(255) NOT NULL,
  `discountrate` double NOT NULL,
  `clientid_id` int NOT NULL,
  `itemid_id` int NOT NULL,
  PRIMARY KEY (`discountid`),
  KEY `dashboard_discount_clientid_id_e92a3804_fk_dashboard` (`clientid_id`),
  KEY `dashboard_discount_itemid_id_60d3bdeb_fk_dashboard_item_itemid` (`itemid_id`),
  CONSTRAINT `dashboard_discount_clientid_id_e92a3804_fk_dashboard` FOREIGN KEY (`clientid_id`) REFERENCES `dashboard_client_company` (`clientid`),
  CONSTRAINT `dashboard_discount_itemid_id_60d3bdeb_fk_dashboard_item_itemid` FOREIGN KEY (`itemid_id`) REFERENCES `dashboard_item` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_discount`
--

LOCK TABLES `dashboard_discount` WRITE;
/*!40000 ALTER TABLE `dashboard_discount` DISABLE KEYS */;
INSERT INTO `dashboard_discount` VALUES ('30001, 40001',0.05,30001,40001),('30001, 40002',0.07,30001,40002),('30001, 40003',0.1,30001,40003),('30001, 40004',0.08,30001,40004),('30001, 40005',0.05,30001,40005),('30001, 40006',0.05,30001,40006),('30001, 40007',0.08,30001,40007),('30001, 40008',0.1,30001,40008),('30001, 40009',0.07,30001,40009),('30002, 40001',0.08,30002,40001),('30002, 40002',0.11,30002,40002),('30002, 40003',0.06,30002,40003),('30002, 40004',0.09,30002,40004),('30002, 40005',0.07,30002,40005),('30002, 40006',0.05,30002,40006),('30002, 40007',0.12,30002,40007),('30002, 40008',0.1,30002,40008),('30002, 40009',0.05,30002,40009),('30003, 40001',0.1,30003,40001),('30003, 40002',0.08,30003,40002),('30003, 40003',0.06,30003,40003),('30003, 40004',0.11,30003,40004),('30003, 40005',0.07,30003,40005),('30003, 40006',0.09,30003,40006),('30003, 40007',0.05,30003,40007),('30003, 40008',0.12,30003,40008),('30003, 40009',0.05,30003,40009),('30004, 40001',0.07,30004,40001),('30004, 40002',0.1,30004,40002),('30004, 40003',0.06,30004,40003),('30004, 40004',0.08,30004,40004),('30004, 40005',0.11,30004,40005),('30004, 40006',0.05,30004,40006),('30004, 40007',0.09,30004,40007),('30004, 40008',0.12,30004,40008),('30004, 40009',0.07,30004,40009),('30005, 40001',0.11,30005,40001),('30005, 40002',0.06,30005,40002),('30005, 40003',0.08,30005,40003),('30005, 40004',0.07,30005,40004),('30005, 40005',0.1,30005,40005),('30005, 40006',0.05,30005,40006),('30005, 40007',0.09,30005,40007),('30005, 40008',0.12,30005,40008),('30005, 40009',0.06,30005,40009),('30006, 40001',0.1,30006,40001),('30006, 40002',0.07,30006,40002),('30006, 40003',0.06,30006,40003),('30006, 40004',0.11,30006,40004),('30006, 40005',0.08,30006,40005),('30006, 40006',0.05,30006,40006),('30006, 40007',0.09,30006,40007),('30006, 40008',0.12,30006,40008),('30006, 40009',0.07,30006,40009),('30007, 40001',0.08,30007,40001),('30007, 40002',0.11,30007,40002),('30007, 40003',0.06,30007,40003),('30007, 40004',0.09,30007,40004),('30007, 40005',0.07,30007,40005),('30007, 40006',0.05,30007,40006),('30007, 40007',0.12,30007,40007),('30007, 40008',0.1,30007,40008),('30007, 40009',0.05,30007,40009),('30008, 40001',0.07,30008,40001),('30008, 40002',0.1,30008,40002),('30008, 40003',0.06,30008,40003),('30008, 40004',0.09,30008,40004),('30008, 40005',0.08,30008,40005),('30008, 40006',0.11,30008,40006),('30008, 40007',0.05,30008,40007),('30008, 40008',0.12,30008,40008),('30008, 40009',0.07,30008,40009),('30009, 40001',0.1,30009,40001),('30009, 40002',0.06,30009,40002),('30009, 40003',0.08,30009,40003),('30009, 40004',0.07,30009,40004),('30009, 40005',0.11,30009,40005),('30009, 40006',0.05,30009,40006),('30009, 40007',0.09,30009,40007),('30009, 40008',0.12,30009,40008),('30009, 40009',0.06,30009,40009);
/*!40000 ALTER TABLE `dashboard_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_invoice_item`
--

DROP TABLE IF EXISTS `dashboard_invoice_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_invoice_item` (
  `invoiceitemid` varchar(255) NOT NULL,
  `itemquantity` int NOT NULL,
  `srp` double NOT NULL,
  `totalsales` double NOT NULL,
  `invoiceid_id` int NOT NULL,
  `itemid_id` int NOT NULL,
  `discountrate` double NOT NULL,
  PRIMARY KEY (`invoiceitemid`),
  KEY `dashboard_invoice_it_invoiceid_id_e5dbb8be_fk_dashboard` (`invoiceid_id`),
  KEY `dashboard_invoice_it_itemid_id_d5e33df2_fk_dashboard` (`itemid_id`),
  CONSTRAINT `dashboard_invoice_it_invoiceid_id_e5dbb8be_fk_dashboard` FOREIGN KEY (`invoiceid_id`) REFERENCES `dashboard_sales_invoice` (`invoiceid`),
  CONSTRAINT `dashboard_invoice_it_itemid_id_d5e33df2_fk_dashboard` FOREIGN KEY (`itemid_id`) REFERENCES `dashboard_item` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_invoice_item`
--

LOCK TABLES `dashboard_invoice_item` WRITE;
/*!40000 ALTER TABLE `dashboard_invoice_item` DISABLE KEYS */;
INSERT INTO `dashboard_invoice_item` VALUES ('80001, 40001',7,1500,9975,80001,40001,0.05),('80001, 40002',5,25000,116250,80001,40002,0.07),('80002, 40003',2,1500,2820,80002,40003,0.06),('80002, 40006',7,4000,26600,80002,40006,0.05),('80003, 40007',2,50000,95000,80003,40007,0.05),('80003, 40008',8,15000,105600,80003,40008,0.12),('80004, 40006',11,4000,41800,80004,40006,0.05),('80004, 40009',8,6000,44640,80004,40009,0.07),('80005, 40002',8,25000,188000,80005,40002,0.06),('80005, 40005',12,14000,151200,80005,40005,0.1),('80006, 40008',11,15000,145200,80006,40008,0.12),('80006, 40009',9,6000,50220,80006,40009,0.07),('80007, 40001',5,1500,6900,80007,40001,0.08),('80007, 40002',6,25000,133500,80007,40002,0.11),('80008, 40003',5,1500,7050,80008,40003,0.06),('80008, 40007',7,50000,332500,80008,40007,0.05),('80009, 40003',9,1500,12420,80009,40003,0.08),('80009, 40004',8,40000,297600,80009,40004,0.07);
/*!40000 ALTER TABLE `dashboard_invoice_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_issuance`
--

DROP TABLE IF EXISTS `dashboard_issuance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_issuance` (
  `issuanceid` int NOT NULL,
  `issuancedate` date NOT NULL,
  `agentid_id` int NOT NULL,
  `batchid_id` int NOT NULL,
  `staffid_id` int NOT NULL,
  PRIMARY KEY (`issuanceid`),
  KEY `dashboard_issuance_agentid_id_e3bb7b24_fk_dashboard` (`agentid_id`),
  KEY `dashboard_issuance_batchid_id_de2d0ecf_fk_dashboard` (`batchid_id`),
  KEY `dashboard_issuance_staffid_id_cb097e58_fk_dashboard` (`staffid_id`),
  CONSTRAINT `dashboard_issuance_agentid_id_e3bb7b24_fk_dashboard` FOREIGN KEY (`agentid_id`) REFERENCES `dashboard_sales_agent` (`agentid`),
  CONSTRAINT `dashboard_issuance_batchid_id_de2d0ecf_fk_dashboard` FOREIGN KEY (`batchid_id`) REFERENCES `dashboard_batch` (`batchid`),
  CONSTRAINT `dashboard_issuance_staffid_id_cb097e58_fk_dashboard` FOREIGN KEY (`staffid_id`) REFERENCES `dashboard_warehouse_staff` (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_issuance`
--

LOCK TABLES `dashboard_issuance` WRITE;
/*!40000 ALTER TABLE `dashboard_issuance` DISABLE KEYS */;
INSERT INTO `dashboard_issuance` VALUES (70001,'2009-12-12',20001,50001,10010),(70002,'2009-12-15',20002,50002,10001),(70003,'2009-12-15',20003,50003,10009),(70004,'2009-12-17',20004,50004,10002),(70005,'2009-12-18',20005,50005,10008),(70006,'2009-12-22',20006,50006,10003),(70007,'2009-12-23',20007,50007,10007),(70008,'2009-12-25',20008,50008,10004),(70009,'2009-12-30',20009,50009,10005);
/*!40000 ALTER TABLE `dashboard_issuance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_issuance_item`
--

DROP TABLE IF EXISTS `dashboard_issuance_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_issuance_item` (
  `issuanceitemid` varchar(255) NOT NULL,
  `itemquantity` int NOT NULL,
  `issuanceid_id` int NOT NULL,
  `itemid_id` int NOT NULL,
  PRIMARY KEY (`issuanceitemid`),
  KEY `dashboard_issuance_i_issuanceid_id_fa414c6c_fk_dashboard` (`issuanceid_id`),
  KEY `dashboard_issuance_i_itemid_id_de5dc48a_fk_dashboard` (`itemid_id`),
  CONSTRAINT `dashboard_issuance_i_issuanceid_id_fa414c6c_fk_dashboard` FOREIGN KEY (`issuanceid_id`) REFERENCES `dashboard_issuance` (`issuanceid`),
  CONSTRAINT `dashboard_issuance_i_itemid_id_de5dc48a_fk_dashboard` FOREIGN KEY (`itemid_id`) REFERENCES `dashboard_item` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_issuance_item`
--

LOCK TABLES `dashboard_issuance_item` WRITE;
/*!40000 ALTER TABLE `dashboard_issuance_item` DISABLE KEYS */;
INSERT INTO `dashboard_issuance_item` VALUES ('70001, 40001',11,70001,40001),('70001, 40002',9,70001,40002),('70002, 40003',8,70002,40003),('70002, 40006',13,70002,40006),('70003, 40007',8,70003,40007),('70003, 40008',9,70003,40008),('70004, 40006',15,70004,40006),('70004, 40009',14,70004,40009),('70005, 40002',12,70005,40002),('70005, 40005',18,70005,40005),('70006, 40008',17,70006,40008),('70006, 40009',12,70006,40009),('70007, 40001',9,70007,40001),('70007, 40002',10,70007,40002),('70008, 40003',11,70008,40003),('70008, 40007',9,70008,40007),('70009, 40003',15,70009,40003),('70009, 40004',14,70009,40004);
/*!40000 ALTER TABLE `dashboard_issuance_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_item`
--

DROP TABLE IF EXISTS `dashboard_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_item` (
  `itemid` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `cost` double NOT NULL,
  `srp` double NOT NULL,
  `classification` varchar(255) NOT NULL,
  `supplierid_id` int NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `dashboard_item_supplierid_id_3567f795_fk_dashboard` (`supplierid_id`),
  CONSTRAINT `dashboard_item_supplierid_id_3567f795_fk_dashboard` FOREIGN KEY (`supplierid_id`) REFERENCES `dashboard_supplier` (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_item`
--

LOCK TABLES `dashboard_item` WRITE;
/*!40000 ALTER TABLE `dashboard_item` DISABLE KEYS */;
INSERT INTO `dashboard_item` VALUES (40001,'Nokia 1200 Black',1380,1500,'Mobile Phones',1),(40002,'Samsung Galaxy S20',22500,25000,'Mobile Phones',2),(40003,'Canon EOS Rebel T7i',1200,1500,'Digital Cameras',3),(40004,'Canon EOS 70D',35000,40000,'Digital Cameras',4),(40005,'Apple AirPods Pro',12000,14000,'Accessories',5),(40006,'Sony WH-1000XM4 Wireless Headphones',3000,4000,'Accessories',4),(40007,'Canon EOS 90D',45000,50000,'Digital Cameras',1),(40008,'Dyson V8 Absolute Cordless Vacuum',13500,15000,'Small Appliances',3),(40009,'Rolex Daytona',5000,6000,'Small Appliances',2);
/*!40000 ALTER TABLE `dashboard_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_item_return`
--

DROP TABLE IF EXISTS `dashboard_item_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_item_return` (
  `returnid` int NOT NULL,
  `returndate` date NOT NULL,
  `batchid_id` int NOT NULL,
  `staffid_id` int NOT NULL,
  PRIMARY KEY (`returnid`),
  KEY `dashboard_item_retur_staffid_id_3cecdbdf_fk_dashboard` (`staffid_id`),
  KEY `dashboard_item_retur_batchid_id_33fe6f9c_fk_dashboard` (`batchid_id`),
  CONSTRAINT `dashboard_item_retur_batchid_id_33fe6f9c_fk_dashboard` FOREIGN KEY (`batchid_id`) REFERENCES `dashboard_batch` (`batchid`),
  CONSTRAINT `dashboard_item_retur_staffid_id_3cecdbdf_fk_dashboard` FOREIGN KEY (`staffid_id`) REFERENCES `dashboard_warehouse_staff` (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_item_return`
--

LOCK TABLES `dashboard_item_return` WRITE;
/*!40000 ALTER TABLE `dashboard_item_return` DISABLE KEYS */;
INSERT INTO `dashboard_item_return` VALUES (90001,'2009-12-18',50001,10010),(90002,'2009-12-22',50002,10001),(90003,'2009-12-28',50003,10009),(90004,'2009-12-28',50004,10002),(90005,'2009-12-30',50005,10008),(90006,'2010-01-03',50006,10003),(90007,'2010-01-03',50007,10007),(90008,'2010-01-03',50008,10004),(90009,'2010-01-05',50009,10005);
/*!40000 ALTER TABLE `dashboard_item_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_item_transfer`
--

DROP TABLE IF EXISTS `dashboard_item_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_item_transfer` (
  `transferid` int NOT NULL,
  `transferdate` date NOT NULL,
  `fromagentid_id` int NOT NULL,
  `frombatchid_id` int NOT NULL,
  `toagentid_id` int NOT NULL,
  `tobatchid_id` int NOT NULL,
  PRIMARY KEY (`transferid`),
  KEY `dashboard_item_trans_fromagentid_id_9a8bf63b_fk_dashboard` (`fromagentid_id`),
  KEY `dashboard_item_trans_frombatchid_id_c0694ad4_fk_dashboard` (`frombatchid_id`),
  KEY `dashboard_item_trans_toagentid_id_930b8b90_fk_dashboard` (`toagentid_id`),
  KEY `dashboard_item_trans_tobatchid_id_9544a019_fk_dashboard` (`tobatchid_id`),
  CONSTRAINT `dashboard_item_trans_fromagentid_id_9a8bf63b_fk_dashboard` FOREIGN KEY (`fromagentid_id`) REFERENCES `dashboard_sales_agent` (`agentid`),
  CONSTRAINT `dashboard_item_trans_frombatchid_id_c0694ad4_fk_dashboard` FOREIGN KEY (`frombatchid_id`) REFERENCES `dashboard_batch` (`batchid`),
  CONSTRAINT `dashboard_item_trans_toagentid_id_930b8b90_fk_dashboard` FOREIGN KEY (`toagentid_id`) REFERENCES `dashboard_sales_agent` (`agentid`),
  CONSTRAINT `dashboard_item_trans_tobatchid_id_9544a019_fk_dashboard` FOREIGN KEY (`tobatchid_id`) REFERENCES `dashboard_batch` (`batchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_item_transfer`
--

LOCK TABLES `dashboard_item_transfer` WRITE;
/*!40000 ALTER TABLE `dashboard_item_transfer` DISABLE KEYS */;
INSERT INTO `dashboard_item_transfer` VALUES (110001,'2009-12-15',20001,50001,20007,50007),(110002,'2009-12-21',20002,50002,20004,50004),(110003,'2009-12-23',20003,50003,20008,50008),(110004,'2009-12-23',20004,50004,20006,50006),(110005,'2009-12-29',20005,50005,20001,50001),(110006,'2009-12-30',20006,50006,20003,50003),(110007,'2009-12-30',20007,50007,20005,50005),(110008,'2009-12-03',20008,50008,20002,50002),(110009,'2010-01-03',20009,50009,20002,50002);
/*!40000 ALTER TABLE `dashboard_item_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_return_item`
--

DROP TABLE IF EXISTS `dashboard_return_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_return_item` (
  `returnitemid` varchar(255) NOT NULL,
  `itemquantity` int NOT NULL,
  `itemid_id` int NOT NULL,
  `returnid_id` int NOT NULL,
  PRIMARY KEY (`returnitemid`),
  KEY `dashboard_return_ite_itemid_id_b1149b54_fk_dashboard` (`itemid_id`),
  KEY `dashboard_return_ite_returnid_id_0149bfdd_fk_dashboard` (`returnid_id`),
  CONSTRAINT `dashboard_return_ite_itemid_id_b1149b54_fk_dashboard` FOREIGN KEY (`itemid_id`) REFERENCES `dashboard_item` (`itemid`),
  CONSTRAINT `dashboard_return_ite_returnid_id_0149bfdd_fk_dashboard` FOREIGN KEY (`returnid_id`) REFERENCES `dashboard_item_return` (`returnid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_return_item`
--

LOCK TABLES `dashboard_return_item` WRITE;
/*!40000 ALTER TABLE `dashboard_return_item` DISABLE KEYS */;
INSERT INTO `dashboard_return_item` VALUES ('90001, 40001',2,40001,90001),('90001, 40002',6,40002,90001),('90002, 40003',10,40003,90002),('90002, 40006',4,40006,90002),('90003, 40007',5,40007,90003),('90003, 40008',2,40008,90003),('90004, 40006',6,40006,90004),('90004, 40009',5,40009,90004),('90005, 40002',3,40002,90005),('90005, 40005',6,40005,90005),('90006, 40008',5,40008,90006),('90006, 40009',4,40009,90006),('90007, 40001',6,40001,90007),('90007, 40002',3,40002,90007),('90008, 40003',4,40003,90008),('90008, 40007',3,40007,90008),('90009, 40003',4,40003,90009),('90009, 40004',6,40004,90009);
/*!40000 ALTER TABLE `dashboard_return_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_sales_agent`
--

DROP TABLE IF EXISTS `dashboard_sales_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_sales_agent` (
  `agentid` int NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `clientid_id` int NOT NULL,
  PRIMARY KEY (`agentid`),
  KEY `dashboard_sales_agen_clientid_id_307a9b98_fk_dashboard` (`clientid_id`),
  CONSTRAINT `dashboard_sales_agen_clientid_id_307a9b98_fk_dashboard` FOREIGN KEY (`clientid_id`) REFERENCES `dashboard_client_company` (`clientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_sales_agent`
--

LOCK TABLES `dashboard_sales_agent` WRITE;
/*!40000 ALTER TABLE `dashboard_sales_agent` DISABLE KEYS */;
INSERT INTO `dashboard_sales_agent` VALUES (20001,'Smith','Sam',30001),(20002,'Jones','Janice',30002),(20003,'Austin','James',30003),(20004,'Martinez','Shela',30004),(20005,'Kzochsky','Tamara',30005),(20006,'Porter','Lisa',30006),(20007,'Adams','Juan',30007),(20008,'Peterson','Tina',30008),(20009,'White','William',30009),(20010,'Robinson','Robert',30003);
/*!40000 ALTER TABLE `dashboard_sales_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_sales_invoice`
--

DROP TABLE IF EXISTS `dashboard_sales_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_sales_invoice` (
  `invoiceid` int NOT NULL,
  `invoicedate` date NOT NULL,
  `agentid_id` int NOT NULL,
  `clientid_id` int NOT NULL,
  PRIMARY KEY (`invoiceid`),
  KEY `dashboard_sales_invo_agentid_id_47e4991d_fk_dashboard` (`agentid_id`),
  KEY `dashboard_sales_invo_clientid_id_50c9863e_fk_dashboard` (`clientid_id`),
  CONSTRAINT `dashboard_sales_invo_agentid_id_47e4991d_fk_dashboard` FOREIGN KEY (`agentid_id`) REFERENCES `dashboard_sales_agent` (`agentid`),
  CONSTRAINT `dashboard_sales_invo_clientid_id_50c9863e_fk_dashboard` FOREIGN KEY (`clientid_id`) REFERENCES `dashboard_client_company` (`clientid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_sales_invoice`
--

LOCK TABLES `dashboard_sales_invoice` WRITE;
/*!40000 ALTER TABLE `dashboard_sales_invoice` DISABLE KEYS */;
INSERT INTO `dashboard_sales_invoice` VALUES (80001,'2009-12-14',20001,30001),(80002,'2009-12-20',20002,30002),(80003,'2009-12-21',20003,30003),(80004,'2009-12-22',20004,30004),(80005,'2009-12-28',20005,30005),(80006,'2009-12-28',20006,30006),(80007,'2009-12-28',20007,30007),(80008,'2009-12-29',20008,30008),(80009,'2009-12-30',20009,30009);
/*!40000 ALTER TABLE `dashboard_sales_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_supplier`
--

DROP TABLE IF EXISTS `dashboard_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_supplier` (
  `supplierid` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_supplier`
--

LOCK TABLES `dashboard_supplier` WRITE;
/*!40000 ALTER TABLE `dashboard_supplier` DISABLE KEYS */;
INSERT INTO `dashboard_supplier` VALUES (1,'Columbia, Inc'),(2,'JCC Inc.'),(3,'Eclipsio Tech'),(4,'Smartech'),(5,'TechnieWares');
/*!40000 ALTER TABLE `dashboard_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_transfer_item`
--

DROP TABLE IF EXISTS `dashboard_transfer_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_transfer_item` (
  `transferitemid` varchar(255) NOT NULL,
  `itemquantity` int NOT NULL,
  `itemid_id` int NOT NULL,
  `transferid_id` int NOT NULL,
  PRIMARY KEY (`transferitemid`),
  KEY `dashboard_transfer_i_itemid_id_2646c4e3_fk_dashboard` (`itemid_id`),
  KEY `dashboard_transfer_i_transferid_id_c961bed1_fk_dashboard` (`transferid_id`),
  CONSTRAINT `dashboard_transfer_i_itemid_id_2646c4e3_fk_dashboard` FOREIGN KEY (`itemid_id`) REFERENCES `dashboard_item` (`itemid`),
  CONSTRAINT `dashboard_transfer_i_transferid_id_c961bed1_fk_dashboard` FOREIGN KEY (`transferid_id`) REFERENCES `dashboard_item_transfer` (`transferid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_transfer_item`
--

LOCK TABLES `dashboard_transfer_item` WRITE;
/*!40000 ALTER TABLE `dashboard_transfer_item` DISABLE KEYS */;
INSERT INTO `dashboard_transfer_item` VALUES ('110001, 40001',2,40001,110001),('110002, 40006',2,40006,110002),('110003, 40007',1,40007,110003),('110004, 40009',1,40009,110004),('110005, 40002',2,40002,110005),('110006, 40008',1,40008,110006),('110007, 40002',1,40002,110007),('110008, 40003',2,40003,110008),('110009, 40003',2,40003,110009);
/*!40000 ALTER TABLE `dashboard_transfer_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_warehouse_staff`
--

DROP TABLE IF EXISTS `dashboard_warehouse_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_warehouse_staff` (
  `staffid` int NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_warehouse_staff`
--

LOCK TABLES `dashboard_warehouse_staff` WRITE;
/*!40000 ALTER TABLE `dashboard_warehouse_staff` DISABLE KEYS */;
INSERT INTO `dashboard_warehouse_staff` VALUES (10001,'Sciuto','Abby'),(10002,'Lund','Sebastian'),(10003,'Jones','Nell'),(10004,'Garcia','Penelope'),(10005,'Reid','Spencer'),(10006,'Macgyver','Angus'),(10007,'Brown','Karamo'),(10008,'Queen','Oliver'),(10009,'Diaz','Rosa'),(10010,'Ramsay','Gordon');
/*!40000 ALTER TABLE `dashboard_warehouse_staff` ENABLE KEYS */;
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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-03 12:36:16.584200','10001','warehouse_staff object (10001)',1,'[{\"added\": {}}]',10,1),(2,'2023-12-03 12:36:24.761312','10002','warehouse_staff object (10002)',1,'[{\"added\": {}}]',10,1),(3,'2023-12-03 12:36:32.423509','10003','warehouse_staff object (10003)',1,'[{\"added\": {}}]',10,1),(4,'2023-12-03 12:36:39.379195','10004','warehouse_staff object (10004)',1,'[{\"added\": {}}]',10,1),(5,'2023-12-03 12:37:32.823380','10005','warehouse_staff object (10005)',1,'[{\"added\": {}}]',10,1),(6,'2023-12-03 12:38:10.546262','10006','warehouse_staff object (10006)',1,'[{\"added\": {}}]',10,1),(7,'2023-12-03 12:38:17.962875','10007','warehouse_staff object (10007)',1,'[{\"added\": {}}]',10,1),(8,'2023-12-03 12:38:27.104429','10008','warehouse_staff object (10008)',1,'[{\"added\": {}}]',10,1),(9,'2023-12-03 12:38:35.311836','10009','warehouse_staff object (10009)',1,'[{\"added\": {}}]',10,1),(10,'2023-12-03 12:38:42.594476','10010','warehouse_staff object (10010)',1,'[{\"added\": {}}]',10,1),(11,'2023-12-03 12:39:00.605639','1','supplier object (1)',1,'[{\"added\": {}}]',9,1),(12,'2023-12-03 12:39:10.115886','2','supplier object (2)',1,'[{\"added\": {}}]',9,1),(13,'2023-12-03 12:39:16.868640','3','supplier object (3)',1,'[{\"added\": {}}]',9,1),(14,'2023-12-03 12:39:24.656018','4','supplier object (4)',1,'[{\"added\": {}}]',9,1),(15,'2023-12-03 12:39:40.934742','5','supplier object (5)',1,'[{\"added\": {}}]',9,1),(16,'2023-12-03 12:40:18.471657','50001','batch object (50001)',1,'[{\"added\": {}}]',1,1),(17,'2023-12-03 12:40:20.996084','50002','batch object (50002)',1,'[{\"added\": {}}]',1,1),(18,'2023-12-03 12:40:22.734966','50003','batch object (50003)',1,'[{\"added\": {}}]',1,1),(19,'2023-12-03 12:40:28.287849','50004','batch object (50004)',1,'[{\"added\": {}}]',1,1),(20,'2023-12-03 12:40:30.351920','50005','batch object (50005)',1,'[{\"added\": {}}]',1,1),(21,'2023-12-03 12:40:35.927108','50006','batch object (50006)',1,'[{\"added\": {}}]',1,1),(22,'2023-12-03 12:40:39.704129','50007','batch object (50007)',1,'[{\"added\": {}}]',1,1),(23,'2023-12-03 12:40:41.825488','50008','batch object (50008)',1,'[{\"added\": {}}]',1,1),(24,'2023-12-03 12:40:43.905945','50009','batch object (50009)',1,'[{\"added\": {}}]',1,1),(25,'2023-12-03 12:40:52.566712','50010','batch object (50010)',1,'[{\"added\": {}}]',1,1),(26,'2023-12-03 13:31:52.681260','30001','client_company object (30001)',1,'[{\"added\": {}}]',2,1),(27,'2023-12-03 13:33:02.905734','30002','client_company object (30002)',1,'[{\"added\": {}}]',2,1),(28,'2023-12-03 13:33:20.979228','30003','client_company object (30003)',1,'[{\"added\": {}}]',2,1),(29,'2023-12-03 13:33:28.839448','30004','client_company object (30004)',1,'[{\"added\": {}}]',2,1),(30,'2023-12-03 13:33:38.525945','30005','client_company object (30005)',1,'[{\"added\": {}}]',2,1),(31,'2023-12-03 13:33:47.137182','30006','client_company object (30006)',1,'[{\"added\": {}}]',2,1),(32,'2023-12-03 13:33:54.012927','30007','client_company object (30007)',1,'[{\"added\": {}}]',2,1),(33,'2023-12-03 13:34:00.001319','30008','client_company object (30008)',1,'[{\"added\": {}}]',2,1),(34,'2023-12-03 13:34:10.987662','30009','client_company object (30009)',1,'[{\"added\": {}}]',2,1),(35,'2023-12-03 13:34:19.564332','30010','client_company object (30010)',1,'[{\"added\": {}}]',2,1),(36,'2023-12-03 13:34:57.503870','40001','item object (40001)',1,'[{\"added\": {}}]',5,1),(37,'2023-12-03 13:35:16.943743','40002','item object (40002)',1,'[{\"added\": {}}]',5,1),(38,'2023-12-03 13:35:40.677845','40003','item object (40003)',1,'[{\"added\": {}}]',5,1),(39,'2023-12-03 13:36:03.653425','40004','item object (40004)',1,'[{\"added\": {}}]',5,1),(40,'2023-12-03 13:36:20.792554','40005','item object (40005)',1,'[{\"added\": {}}]',5,1),(41,'2023-12-03 13:36:42.223957','40006','item object (40006)',1,'[{\"added\": {}}]',5,1),(42,'2023-12-03 13:38:53.174857','40007','item object (40007)',1,'[{\"added\": {}}]',5,1),(43,'2023-12-03 13:39:13.710751','40008','item object (40008)',1,'[{\"added\": {}}]',5,1),(44,'2023-12-03 13:39:33.280180','40009','item object (40009)',1,'[{\"added\": {}}]',5,1),(45,'2023-12-03 13:39:55.901694','20001','sales_agent object (20001)',1,'[{\"added\": {}}]',8,1),(46,'2023-12-03 13:40:05.449617','20002','sales_agent object (20002)',1,'[{\"added\": {}}]',8,1),(47,'2023-12-03 13:40:16.029709','20003','sales_agent object (20003)',1,'[{\"added\": {}}]',8,1),(48,'2023-12-03 13:40:40.050736','20004','sales_agent object (20004)',1,'[{\"added\": {}}]',8,1),(49,'2023-12-03 13:40:52.552597','20005','sales_agent object (20005)',1,'[{\"added\": {}}]',8,1),(50,'2023-12-03 13:41:03.572536','20006','sales_agent object (20006)',1,'[{\"added\": {}}]',8,1),(51,'2023-12-03 13:41:27.149951','20007','sales_agent object (20007)',1,'[{\"added\": {}}]',8,1),(52,'2023-12-03 13:41:37.241573','20008','sales_agent object (20008)',1,'[{\"added\": {}}]',8,1),(53,'2023-12-03 13:41:50.091801','20009','sales_agent object (20009)',1,'[{\"added\": {}}]',8,1),(54,'2023-12-03 13:41:59.893842','20010','sales_agent object (20010)',1,'[{\"added\": {}}]',8,1),(55,'2023-12-03 13:42:36.585419','60001','delivery object (60001)',1,'[{\"added\": {}}]',3,1),(56,'2023-12-03 13:42:53.326391','60002','delivery object (60002)',1,'[{\"added\": {}}]',3,1),(57,'2023-12-03 13:43:08.509591','60003','delivery object (60003)',1,'[{\"added\": {}}]',3,1),(58,'2023-12-03 13:43:22.460789','60004','delivery object (60004)',1,'[{\"added\": {}}]',3,1),(59,'2023-12-03 13:43:36.354956','60005','delivery object (60005)',1,'[{\"added\": {}}]',3,1),(60,'2023-12-03 13:43:52.853155','60006','delivery object (60006)',1,'[{\"added\": {}}]',3,1),(61,'2023-12-03 13:44:29.984343','60007','delivery object (60007)',1,'[{\"added\": {}}]',3,1),(62,'2023-12-03 13:44:45.389282','60008','delivery object (60008)',1,'[{\"added\": {}}]',3,1),(63,'2023-12-03 13:45:09.283491','60009','delivery object (60009)',1,'[{\"added\": {}}]',3,1),(64,'2023-12-03 13:45:58.797420','60001, 40005','delivery_item object (60001, 40005)',1,'[{\"added\": {}}]',17,1),(65,'2023-12-03 13:46:37.116477','60001, 40002','delivery_item object (60001, 40002)',1,'[{\"added\": {}}]',17,1),(66,'2023-12-03 13:47:01.585127','60002, 40007','delivery_item object (60002, 40007)',1,'[{\"added\": {}}]',17,1),(67,'2023-12-03 13:47:25.326573','60002, 40003','delivery_item object (60002, 40003)',1,'[{\"added\": {}}]',17,1),(68,'2023-12-03 13:50:00.467945','60003, 40008','delivery_item object (60003, 40008)',1,'[{\"added\": {}}]',17,1),(69,'2023-12-03 13:50:20.695639','60003, 40009','delivery_item object (60003, 40009)',1,'[{\"added\": {}}]',17,1),(70,'2023-12-03 13:50:44.323634','60004, 40001','delivery_item object (60004, 40001)',1,'[{\"added\": {}}]',17,1),(71,'2023-12-03 13:51:10.937010','60004, 40006','delivery_item object (60004, 40006)',1,'[{\"added\": {}}]',17,1),(72,'2023-12-03 13:51:56.223849','60005, 40007','delivery_item object (60005, 40007)',1,'[{\"added\": {}}]',17,1),(73,'2023-12-03 13:52:34.098078','60005, 40003','delivery_item object (60005, 40003)',1,'[{\"added\": {}}]',17,1),(74,'2023-12-03 13:52:56.658123','60006, 40009','delivery_item object (60006, 40009)',1,'[{\"added\": {}}]',17,1),(75,'2023-12-03 13:53:59.224912','60006, 40006','delivery_item object (60006, 40006)',1,'[{\"added\": {}}]',17,1),(76,'2023-12-03 13:54:22.829596','60007, 40005','delivery_item object (60007, 40005)',1,'[{\"added\": {}}]',17,1),(77,'2023-12-03 13:54:42.899717','60007, 40004','delivery_item object (60007, 40004)',1,'[{\"added\": {}}]',17,1),(78,'2023-12-03 13:55:08.988696','60008, 40002','delivery_item object (60008, 40002)',1,'[{\"added\": {}}]',17,1),(79,'2023-12-03 13:55:33.451396','60008, 40004','delivery_item object (60008, 40004)',1,'[{\"added\": {}}]',17,1),(80,'2023-12-03 13:56:01.092856','60009, 40008','delivery_item object (60009, 40008)',1,'[{\"added\": {}}]',17,1),(81,'2023-12-03 13:56:21.383770','60009, 40005','delivery_item object (60009, 40005)',1,'[{\"added\": {}}]',17,1),(82,'2023-12-03 13:57:22.788362','70001','issuance object (70001)',1,'[{\"added\": {}}]',4,1),(83,'2023-12-03 13:57:44.173380','70002','issuance object (70002)',1,'[{\"added\": {}}]',4,1),(84,'2023-12-03 13:57:57.538364','70003','issuance object (70003)',1,'[{\"added\": {}}]',4,1),(85,'2023-12-03 13:58:15.382075','70004','issuance object (70004)',1,'[{\"added\": {}}]',4,1),(86,'2023-12-03 13:58:31.365453','70005','issuance object (70005)',1,'[{\"added\": {}}]',4,1),(87,'2023-12-03 13:58:43.694660','70006','issuance object (70006)',1,'[{\"added\": {}}]',4,1),(88,'2023-12-03 13:58:58.145789','70007','issuance object (70007)',1,'[{\"added\": {}}]',4,1),(89,'2023-12-03 13:59:14.919768','70008','issuance object (70008)',1,'[{\"added\": {}}]',4,1),(90,'2023-12-03 13:59:28.797627','70009','issuance object (70009)',1,'[{\"added\": {}}]',4,1),(91,'2023-12-03 14:02:09.964038','70001, 40001','issuance_item object (70001, 40001)',1,'[{\"added\": {}}]',14,1),(92,'2023-12-03 14:02:19.431638','70001, 40002','issuance_item object (70001, 40002)',1,'[{\"added\": {}}]',14,1),(93,'2023-12-03 14:02:32.419290','70002, 40003','issuance_item object (70002, 40003)',1,'[{\"added\": {}}]',14,1),(94,'2023-12-03 14:02:43.057809','70002, 40006','issuance_item object (70002, 40006)',1,'[{\"added\": {}}]',14,1),(95,'2023-12-03 14:03:08.518570','70003, 40007','issuance_item object (70003, 40007)',1,'[{\"added\": {}}]',14,1),(96,'2023-12-03 14:03:21.614951','70003, 40008','issuance_item object (70003, 40008)',1,'[{\"added\": {}}]',14,1),(97,'2023-12-03 14:03:31.539334','70004, 40009','issuance_item object (70004, 40009)',1,'[{\"added\": {}}]',14,1),(98,'2023-12-03 14:03:42.944660','70004, 40006','issuance_item object (70004, 40006)',1,'[{\"added\": {}}]',14,1),(99,'2023-12-03 14:03:52.385935','70005, 40005','issuance_item object (70005, 40005)',1,'[{\"added\": {}}]',14,1),(100,'2023-12-03 14:04:02.353722','70005, 40002','issuance_item object (70005, 40002)',1,'[{\"added\": {}}]',14,1),(101,'2023-12-03 14:04:19.476086','70006, 40008','issuance_item object (70006, 40008)',1,'[{\"added\": {}}]',14,1),(102,'2023-12-03 14:04:32.633365','70006, 40009','issuance_item object (70006, 40009)',1,'[{\"added\": {}}]',14,1),(103,'2023-12-03 14:04:44.336557','70007, 40002','issuance_item object (70007, 40002)',1,'[{\"added\": {}}]',14,1),(104,'2023-12-03 14:04:58.983078','70007, 40001','issuance_item object (70007, 40001)',1,'[{\"added\": {}}]',14,1),(105,'2023-12-03 14:05:07.581781','70008, 40003','issuance_item object (70008, 40003)',1,'[{\"added\": {}}]',14,1),(106,'2023-12-03 14:05:17.627641','70008, 40007','issuance_item object (70008, 40007)',1,'[{\"added\": {}}]',14,1),(107,'2023-12-03 14:05:27.580835','70009, 40004','issuance_item object (70009, 40004)',1,'[{\"added\": {}}]',14,1),(108,'2023-12-03 14:05:39.254463','70009, 40003','issuance_item object (70009, 40003)',1,'[{\"added\": {}}]',14,1),(109,'2023-12-03 14:06:11.859041','80001','sales_invoice object (80001)',1,'[{\"added\": {}}]',12,1),(110,'2023-12-03 14:06:22.105613','80002','sales_invoice object (80002)',1,'[{\"added\": {}}]',12,1),(111,'2023-12-03 14:06:32.582147','80003','sales_invoice object (80003)',1,'[{\"added\": {}}]',12,1),(112,'2023-12-03 14:06:41.570823','80004','sales_invoice object (80004)',1,'[{\"added\": {}}]',12,1),(113,'2023-12-03 14:06:51.355323','80005','sales_invoice object (80005)',1,'[{\"added\": {}}]',12,1),(114,'2023-12-03 14:07:03.459723','80006','sales_invoice object (80006)',1,'[{\"added\": {}}]',12,1),(115,'2023-12-03 14:07:16.202755','80007','sales_invoice object (80007)',1,'[{\"added\": {}}]',12,1),(116,'2023-12-03 14:07:28.928165','80008','sales_invoice object (80008)',1,'[{\"added\": {}}]',12,1),(117,'2023-12-03 14:07:40.426374','80009','sales_invoice object (80009)',1,'[{\"added\": {}}]',12,1),(118,'2023-12-03 14:11:26.116609','80001, 40001','invoice_item object (80001, 40001)',1,'[{\"added\": {}}]',15,1),(119,'2023-12-03 14:11:49.496169','80001, 40002','invoice_item object (80001, 40002)',1,'[{\"added\": {}}]',15,1),(120,'2023-12-03 14:12:21.283218','80002, 40003','invoice_item object (80002, 40003)',1,'[{\"added\": {}}]',15,1),(121,'2023-12-03 14:12:45.725340','80002, 40006','invoice_item object (80002, 40006)',1,'[{\"added\": {}}]',15,1),(122,'2023-12-03 14:13:18.279976','80003, 40007','invoice_item object (80003, 40007)',1,'[{\"added\": {}}]',15,1),(123,'2023-12-03 14:13:45.684562','80003, 40008','invoice_item object (80003, 40008)',1,'[{\"added\": {}}]',15,1),(124,'2023-12-03 14:14:21.040890','80004, 40009','invoice_item object (80004, 40009)',1,'[{\"added\": {}}]',15,1),(125,'2023-12-03 14:14:49.311481','80004, 40006','invoice_item object (80004, 40006)',1,'[{\"added\": {}}]',15,1),(126,'2023-12-03 14:15:11.215881','80005, 40005','invoice_item object (80005, 40005)',1,'[{\"added\": {}}]',15,1),(127,'2023-12-03 14:15:32.396886','80005, 40002','invoice_item object (80005, 40002)',1,'[{\"added\": {}}]',15,1),(128,'2023-12-03 14:16:02.475399','80006, 40008','invoice_item object (80006, 40008)',1,'[{\"added\": {}}]',15,1),(129,'2023-12-03 14:16:32.961119','80006, 40009','invoice_item object (80006, 40009)',1,'[{\"added\": {}}]',15,1),(130,'2023-12-03 14:17:09.018420','80007, 40002','invoice_item object (80007, 40002)',1,'[{\"added\": {}}]',15,1),(131,'2023-12-03 14:17:33.019591','80007, 40001','invoice_item object (80007, 40001)',1,'[{\"added\": {}}]',15,1),(132,'2023-12-03 14:18:39.561203','80008, 40003','invoice_item object (80008, 40003)',1,'[{\"added\": {}}]',15,1),(133,'2023-12-03 14:19:05.430771','80008, 40007','invoice_item object (80008, 40007)',1,'[{\"added\": {}}]',15,1),(134,'2023-12-03 14:19:49.510398','80009, 40004','invoice_item object (80009, 40004)',1,'[{\"added\": {}}]',15,1),(135,'2023-12-03 14:20:13.209812','80009, 40003','invoice_item object (80009, 40003)',1,'[{\"added\": {}}]',15,1),(136,'2023-12-03 14:20:54.539311','90001','item_return object (90001)',1,'[{\"added\": {}}]',6,1),(137,'2023-12-03 14:21:05.314141','90002','item_return object (90002)',1,'[{\"added\": {}}]',6,1),(138,'2023-12-03 14:21:16.061691','90003','item_return object (90003)',1,'[{\"added\": {}}]',6,1),(139,'2023-12-03 14:21:30.921584','90004','item_return object (90004)',1,'[{\"added\": {}}]',6,1),(140,'2023-12-03 14:21:43.967221','90005','item_return object (90005)',1,'[{\"added\": {}}]',6,1),(141,'2023-12-03 14:21:58.186740','90006','item_return object (90006)',1,'[{\"added\": {}}]',6,1),(142,'2023-12-03 14:22:14.626990','90007','item_return object (90007)',1,'[{\"added\": {}}]',6,1),(143,'2023-12-03 14:22:27.442648','90008','item_return object (90008)',1,'[{\"added\": {}}]',6,1),(144,'2023-12-03 14:22:41.896723','90009','item_return object (90009)',1,'[{\"added\": {}}]',6,1),(145,'2023-12-03 14:23:09.835919','90001, 40001','return_item object (90001, 40001)',1,'[{\"added\": {}}]',13,1),(146,'2023-12-03 14:23:23.419867','90001, 40002','return_item object (90001, 40002)',1,'[{\"added\": {}}]',13,1),(147,'2023-12-03 14:23:39.476264','90002, 40003','return_item object (90002, 40003)',1,'[{\"added\": {}}]',13,1),(148,'2023-12-03 14:23:51.371318','90002, 40006','return_item object (90002, 40006)',1,'[{\"added\": {}}]',13,1),(149,'2023-12-03 14:24:01.349957','90003, 40007','return_item object (90003, 40007)',1,'[{\"added\": {}}]',13,1),(150,'2023-12-03 14:24:10.783627','90003, 40008','return_item object (90003, 40008)',1,'[{\"added\": {}}]',13,1),(151,'2023-12-03 14:24:22.626812','90004, 40009','return_item object (90004, 40009)',1,'[{\"added\": {}}]',13,1),(152,'2023-12-03 14:24:31.991977','90004, 40006','return_item object (90004, 40006)',1,'[{\"added\": {}}]',13,1),(153,'2023-12-03 14:24:40.936637','90005, 40005','return_item object (90005, 40005)',1,'[{\"added\": {}}]',13,1),(154,'2023-12-03 14:24:50.039112','90005, 40002','return_item object (90005, 40002)',1,'[{\"added\": {}}]',13,1),(155,'2023-12-03 14:25:00.773000','90006, 40008','return_item object (90006, 40008)',1,'[{\"added\": {}}]',13,1),(156,'2023-12-03 14:25:11.639901','90006, 40009','return_item object (90006, 40009)',1,'[{\"added\": {}}]',13,1),(157,'2023-12-03 14:25:22.819052','90007, 40002','return_item object (90007, 40002)',1,'[{\"added\": {}}]',13,1),(158,'2023-12-03 14:25:33.555179','90007, 40001','return_item object (90007, 40001)',1,'[{\"added\": {}}]',13,1),(159,'2023-12-03 14:25:41.984058','90008, 40003','return_item object (90008, 40003)',1,'[{\"added\": {}}]',13,1),(160,'2023-12-03 14:25:51.078946','90008, 40007','return_item object (90008, 40007)',1,'[{\"added\": {}}]',13,1),(161,'2023-12-03 14:25:59.993200','90009, 40004','return_item object (90009, 40004)',1,'[{\"added\": {}}]',13,1),(162,'2023-12-03 14:26:10.135863','90009, 40003','return_item object (90009, 40003)',1,'[{\"added\": {}}]',13,1),(163,'2023-12-03 14:26:57.512027','110001','item_transfer object (110001)',1,'[{\"added\": {}}]',7,1),(164,'2023-12-03 14:27:12.355300','110002','item_transfer object (110002)',1,'[{\"added\": {}}]',7,1),(165,'2023-12-03 14:27:35.536064','110003','item_transfer object (110003)',1,'[{\"added\": {}}]',7,1),(166,'2023-12-03 14:28:05.202237','110004','item_transfer object (110004)',1,'[{\"added\": {}}]',7,1),(167,'2023-12-03 14:29:02.692360','110005','item_transfer object (110005)',1,'[{\"added\": {}}]',7,1),(168,'2023-12-03 14:29:26.082033','110006','item_transfer object (110006)',1,'[{\"added\": {}}]',7,1),(169,'2023-12-03 14:29:48.097704','110007','item_transfer object (110007)',1,'[{\"added\": {}}]',7,1),(170,'2023-12-03 14:30:07.084448','110008','item_transfer object (110008)',1,'[{\"added\": {}}]',7,1),(171,'2023-12-03 14:30:40.217091','110009','item_transfer object (110009)',1,'[{\"added\": {}}]',7,1),(172,'2023-12-03 14:31:07.899224','110001, 40001','transfer_item object (110001, 40001)',1,'[{\"added\": {}}]',11,1),(173,'2023-12-03 14:31:20.165034','110002, 40006','transfer_item object (110002, 40006)',1,'[{\"added\": {}}]',11,1),(174,'2023-12-03 14:31:30.562074','110003, 40007','transfer_item object (110003, 40007)',1,'[{\"added\": {}}]',11,1),(175,'2023-12-03 14:31:40.276808','110004, 40009','transfer_item object (110004, 40009)',1,'[{\"added\": {}}]',11,1),(176,'2023-12-03 14:31:49.437425','110005, 40002','transfer_item object (110005, 40002)',1,'[{\"added\": {}}]',11,1),(177,'2023-12-03 14:32:01.792843','110006, 40008','transfer_item object (110006, 40008)',1,'[{\"added\": {}}]',11,1),(178,'2023-12-03 14:32:13.667210','110007, 40002','transfer_item object (110007, 40002)',1,'[{\"added\": {}}]',11,1),(179,'2023-12-03 14:32:24.261123','110008, 40003','transfer_item object (110008, 40003)',1,'[{\"added\": {}}]',11,1),(180,'2023-12-03 14:32:42.696576','110009, 40003','transfer_item object (110009, 40003)',1,'[{\"added\": {}}]',11,1),(181,'2023-12-03 14:33:29.427356','30001, 40001','discount object (30001, 40001)',1,'[{\"added\": {}}]',16,1),(182,'2023-12-03 14:33:40.005471','30001, 40002','discount object (30001, 40002)',1,'[{\"added\": {}}]',16,1),(183,'2023-12-03 14:33:52.148058','30001, 40003','discount object (30001, 40003)',1,'[{\"added\": {}}]',16,1),(184,'2023-12-03 14:34:03.141828','30001, 40004','discount object (30001, 40004)',1,'[{\"added\": {}}]',16,1),(185,'2023-12-03 14:34:12.882847','30001, 40005','discount object (30001, 40005)',1,'[{\"added\": {}}]',16,1),(186,'2023-12-03 14:34:23.895877','30001, 40006','discount object (30001, 40006)',1,'[{\"added\": {}}]',16,1),(187,'2023-12-03 14:34:35.332843','30001, 40007','discount object (30001, 40007)',1,'[{\"added\": {}}]',16,1),(188,'2023-12-03 14:34:49.497031','30001, 40008','discount object (30001, 40008)',1,'[{\"added\": {}}]',16,1),(189,'2023-12-03 14:35:00.565170','30001, 40009','discount object (30001, 40009)',1,'[{\"added\": {}}]',16,1),(190,'2023-12-03 14:35:16.637686','30002, 40001','discount object (30002, 40001)',1,'[{\"added\": {}}]',16,1),(191,'2023-12-03 14:35:25.839529','30002, 40002','discount object (30002, 40002)',1,'[{\"added\": {}}]',16,1),(192,'2023-12-03 14:35:36.100938','30002, 40003','discount object (30002, 40003)',1,'[{\"added\": {}}]',16,1),(193,'2023-12-03 14:35:46.614063','30002, 40004','discount object (30002, 40004)',1,'[{\"added\": {}}]',16,1),(194,'2023-12-03 14:35:58.852724','30002, 40005','discount object (30002, 40005)',1,'[{\"added\": {}}]',16,1),(195,'2023-12-03 14:38:58.702131','40001','item object (40001)',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',5,1),(196,'2023-12-03 14:39:01.637681','40001','item object (40001)',2,'[]',5,1),(197,'2023-12-03 14:39:08.557225','40002','item object (40002)',2,'[]',5,1),(198,'2023-12-03 14:39:36.258459','40003','item object (40003)',2,'[{\"changed\": {\"fields\": [\"Classification\"]}}]',5,1),(199,'2023-12-03 14:40:06.600114','40004','item object (40004)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Classification\"]}}]',5,1),(200,'2023-12-03 14:40:15.544913','40005','item object (40005)',2,'[{\"changed\": {\"fields\": [\"Classification\"]}}]',5,1),(201,'2023-12-03 14:40:25.671798','40006','item object (40006)',2,'[{\"changed\": {\"fields\": [\"Classification\"]}}]',5,1),(202,'2023-12-03 14:40:59.185116','40007','item object (40007)',2,'[{\"changed\": {\"fields\": [\"Description\", \"Classification\", \"Supplierid\"]}}]',5,1),(203,'2023-12-03 14:41:01.952925','40001','item object (40001)',2,'[]',5,1),(204,'2023-12-03 14:41:04.244087','40002','item object (40002)',2,'[]',5,1),(205,'2023-12-03 14:41:06.960872','40003','item object (40003)',2,'[]',5,1),(206,'2023-12-03 14:41:10.456746','40004','item object (40004)',2,'[]',5,1),(207,'2023-12-03 14:41:13.600489','40005','item object (40005)',2,'[]',5,1),(208,'2023-12-03 14:41:15.403812','40005','item object (40005)',2,'[]',5,1),(209,'2023-12-03 14:41:19.835758','40006','item object (40006)',2,'[]',5,1),(210,'2023-12-03 14:41:25.808089','40007','item object (40007)',2,'[]',5,1),(211,'2023-12-03 14:41:32.085181','40008','item object (40008)',2,'[]',5,1),(212,'2023-12-03 14:41:44.604078','40009','item object (40009)',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',5,1),(213,'2023-12-03 14:44:34.020893','30002, 40006','discount object (30002, 40006)',1,'[{\"added\": {}}]',16,1),(214,'2023-12-03 14:45:01.148478','30002, 40007','discount object (30002, 40007)',1,'[{\"added\": {}}]',16,1),(215,'2023-12-03 14:45:11.991724','30002, 40008','discount object (30002, 40008)',1,'[{\"added\": {}}]',16,1),(216,'2023-12-03 14:45:25.249011','30002, 40009','discount object (30002, 40009)',1,'[{\"added\": {}}]',16,1),(217,'2023-12-03 14:45:37.434094','30003, 40001','discount object (30003, 40001)',1,'[{\"added\": {}}]',16,1),(218,'2023-12-03 14:45:47.624262','30003, 40002','discount object (30003, 40002)',1,'[{\"added\": {}}]',16,1),(219,'2023-12-03 14:46:02.555335','30003, 40003','discount object (30003, 40003)',1,'[{\"added\": {}}]',16,1),(220,'2023-12-03 14:46:14.707148','30003, 40004','discount object (30003, 40004)',1,'[{\"added\": {}}]',16,1),(221,'2023-12-03 14:46:25.577181','30003, 40005','discount object (30003, 40005)',1,'[{\"added\": {}}]',16,1),(222,'2023-12-03 14:46:36.266232','30003, 40006','discount object (30003, 40006)',1,'[{\"added\": {}}]',16,1),(223,'2023-12-03 14:46:50.134824','30003, 40007','discount object (30003, 40007)',1,'[{\"added\": {}}]',16,1),(224,'2023-12-03 14:47:27.346507','30003, 40008','discount object (30003, 40008)',1,'[{\"added\": {}}]',16,1),(225,'2023-12-03 14:47:38.655123','30003, 40009','discount object (30003, 40009)',1,'[{\"added\": {}}]',16,1),(226,'2023-12-03 14:47:50.120974','30004, 40001','discount object (30004, 40001)',1,'[{\"added\": {}}]',16,1),(227,'2023-12-03 14:48:00.949971','30004, 40002','discount object (30004, 40002)',1,'[{\"added\": {}}]',16,1),(228,'2023-12-03 14:48:11.524895','30004, 40003','discount object (30004, 40003)',1,'[{\"added\": {}}]',16,1),(229,'2023-12-03 14:48:24.305624','30004, 40004','discount object (30004, 40004)',1,'[{\"added\": {}}]',16,1),(230,'2023-12-03 14:48:35.578260','30004, 40005','discount object (30004, 40005)',1,'[{\"added\": {}}]',16,1),(231,'2023-12-03 14:48:50.975502','30004, 40006','discount object (30004, 40006)',1,'[{\"added\": {}}]',16,1),(232,'2023-12-03 14:49:01.305172','30004, 40007','discount object (30004, 40007)',1,'[{\"added\": {}}]',16,1),(233,'2023-12-03 14:49:11.708539','30004, 40008','discount object (30004, 40008)',1,'[{\"added\": {}}]',16,1),(234,'2023-12-03 14:49:24.053276','30004, 40009','discount object (30004, 40009)',1,'[{\"added\": {}}]',16,1),(235,'2023-12-03 14:49:45.184952','30005, 40001','discount object (30005, 40001)',1,'[{\"added\": {}}]',16,1),(236,'2023-12-03 14:49:54.436649','30005, 40002','discount object (30005, 40002)',1,'[{\"added\": {}}]',16,1),(237,'2023-12-03 14:50:04.020115','30005, 40003','discount object (30005, 40003)',1,'[{\"added\": {}}]',16,1),(238,'2023-12-03 14:50:15.221943','30005, 40004','discount object (30005, 40004)',1,'[{\"added\": {}}]',16,1),(239,'2023-12-03 14:50:25.647054','30005, 40005','discount object (30005, 40005)',1,'[{\"added\": {}}]',16,1),(240,'2023-12-03 14:50:44.176265','30005, 40006','discount object (30005, 40006)',1,'[{\"added\": {}}]',16,1),(241,'2023-12-03 14:50:54.719487','30005, 40007','discount object (30005, 40007)',1,'[{\"added\": {}}]',16,1),(242,'2023-12-03 14:52:39.216648','30005, 40008','discount object (30005, 40008)',1,'[{\"added\": {}}]',16,1),(243,'2023-12-03 14:52:53.002585','30005, 40009','discount object (30005, 40009)',1,'[{\"added\": {}}]',16,1),(244,'2023-12-03 14:53:07.806647','30006, 40001','discount object (30006, 40001)',1,'[{\"added\": {}}]',16,1),(245,'2023-12-03 14:53:16.904926','30006, 40002','discount object (30006, 40002)',1,'[{\"added\": {}}]',16,1),(246,'2023-12-03 14:53:26.225822','30006, 40003','discount object (30006, 40003)',1,'[{\"added\": {}}]',16,1),(247,'2023-12-03 14:53:36.494648','30006, 40004','discount object (30006, 40004)',1,'[{\"added\": {}}]',16,1),(248,'2023-12-03 14:53:48.342229','30006, 40005','discount object (30006, 40005)',1,'[{\"added\": {}}]',16,1),(249,'2023-12-03 14:53:58.743221','30006, 40006','discount object (30006, 40006)',1,'[{\"added\": {}}]',16,1),(250,'2023-12-03 14:54:11.583874','30006, 40007','discount object (30006, 40007)',1,'[{\"added\": {}}]',16,1),(251,'2023-12-03 14:54:23.947255','30006, 40008','discount object (30006, 40008)',1,'[{\"added\": {}}]',16,1),(252,'2023-12-03 14:54:39.937941','30006, 40009','discount object (30006, 40009)',1,'[{\"added\": {}}]',16,1),(253,'2023-12-03 14:54:51.973603','30007, 40001','discount object (30007, 40001)',1,'[{\"added\": {}}]',16,1),(254,'2023-12-03 14:55:01.979536','30007, 40002','discount object (30007, 40002)',1,'[{\"added\": {}}]',16,1),(255,'2023-12-03 14:55:12.018049','30007, 40003','discount object (30007, 40003)',1,'[{\"added\": {}}]',16,1),(256,'2023-12-03 14:55:22.516672','30007, 40004','discount object (30007, 40004)',1,'[{\"added\": {}}]',16,1),(257,'2023-12-03 14:55:33.352824','30007, 40005','discount object (30007, 40005)',1,'[{\"added\": {}}]',16,1),(258,'2023-12-03 14:57:33.413050','30007, 40006','discount object (30007, 40006)',1,'[{\"added\": {}}]',16,1),(259,'2023-12-03 14:57:47.674814','30007, 40007','discount object (30007, 40007)',1,'[{\"added\": {}}]',16,1),(260,'2023-12-03 14:57:59.059049','30007, 40008','discount object (30007, 40008)',1,'[{\"added\": {}}]',16,1),(261,'2023-12-03 14:58:09.150719','30007, 40009','discount object (30007, 40009)',1,'[{\"added\": {}}]',16,1),(262,'2023-12-03 14:58:20.772841','30008, 40001','discount object (30008, 40001)',1,'[{\"added\": {}}]',16,1),(263,'2023-12-03 14:58:31.102594','30008, 40002','discount object (30008, 40002)',1,'[{\"added\": {}}]',16,1),(264,'2023-12-03 14:58:40.823761','30008, 40003','discount object (30008, 40003)',1,'[{\"added\": {}}]',16,1),(265,'2023-12-03 14:58:53.524137','30008, 40004','discount object (30008, 40004)',1,'[{\"added\": {}}]',16,1),(266,'2023-12-03 14:58:55.708962','30008, 40004','discount object (30008, 40004)',2,'[]',16,1),(267,'2023-12-03 14:59:10.421193','30008, 40005','discount object (30008, 40005)',1,'[{\"added\": {}}]',16,1),(268,'2023-12-03 14:59:24.232438','30008, 40006','discount object (30008, 40006)',1,'[{\"added\": {}}]',16,1),(269,'2023-12-03 14:59:35.478346','30008, 40007','discount object (30008, 40007)',1,'[{\"added\": {}}]',16,1),(270,'2023-12-03 14:59:49.535763','30008, 40008','discount object (30008, 40008)',1,'[{\"added\": {}}]',16,1),(271,'2023-12-03 15:00:01.356887','30008, 40009','discount object (30008, 40009)',1,'[{\"added\": {}}]',16,1),(272,'2023-12-03 15:01:35.225965','30009, 40001','discount object (30009, 40001)',1,'[{\"added\": {}}]',16,1),(273,'2023-12-03 15:01:46.610849','30009, 40002','discount object (30009, 40002)',1,'[{\"added\": {}}]',16,1),(274,'2023-12-03 15:01:58.822103','30009, 40003','discount object (30009, 40003)',1,'[{\"added\": {}}]',16,1),(275,'2023-12-03 15:02:10.533389','30009, 40004','discount object (30009, 40004)',1,'[{\"added\": {}}]',16,1),(276,'2023-12-03 15:02:27.305914','30009, 40005','discount object (30009, 40005)',1,'[{\"added\": {}}]',16,1),(277,'2023-12-03 15:02:49.552349','30009, 40006','discount object (30009, 40006)',1,'[{\"added\": {}}]',16,1),(278,'2023-12-03 15:03:00.305696','30009, 40007','discount object (30009, 40007)',1,'[{\"added\": {}}]',16,1),(279,'2023-12-03 15:03:10.643109','30009, 40008','discount object (30009, 40008)',1,'[{\"added\": {}}]',16,1),(280,'2023-12-03 15:03:23.364994','30009, 40009','discount object (30009, 40009)',1,'[{\"added\": {}}]',16,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (18,'admin','logentry'),(20,'auth','group'),(19,'auth','permission'),(21,'auth','user'),(22,'contenttypes','contenttype'),(1,'dashboard','batch'),(2,'dashboard','client_company'),(3,'dashboard','delivery'),(17,'dashboard','delivery_item'),(16,'dashboard','discount'),(15,'dashboard','invoice_item'),(4,'dashboard','issuance'),(14,'dashboard','issuance_item'),(5,'dashboard','item'),(6,'dashboard','item_return'),(7,'dashboard','item_transfer'),(13,'dashboard','return_item'),(8,'dashboard','sales_agent'),(12,'dashboard','sales_invoice'),(9,'dashboard','supplier'),(11,'dashboard','transfer_item'),(10,'dashboard','warehouse_staff'),(23,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-03 12:32:52.079971'),(2,'auth','0001_initial','2023-12-03 12:32:52.162622'),(3,'admin','0001_initial','2023-12-03 12:32:52.507287'),(4,'admin','0002_logentry_remove_auto_add','2023-12-03 12:32:52.556825'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-03 12:32:52.562904'),(6,'contenttypes','0002_remove_content_type_name','2023-12-03 12:32:52.605768'),(7,'auth','0002_alter_permission_name_max_length','2023-12-03 12:32:52.632722'),(8,'auth','0003_alter_user_email_max_length','2023-12-03 12:32:52.646763'),(9,'auth','0004_alter_user_username_opts','2023-12-03 12:32:52.652567'),(10,'auth','0005_alter_user_last_login_null','2023-12-03 12:32:52.678179'),(11,'auth','0006_require_contenttypes_0002','2023-12-03 12:32:52.680537'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-03 12:32:52.685115'),(13,'auth','0008_alter_user_username_max_length','2023-12-03 12:32:52.713901'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-03 12:32:52.740160'),(15,'auth','0010_alter_group_name_max_length','2023-12-03 12:32:52.751378'),(16,'auth','0011_update_proxy_permissions','2023-12-03 12:32:52.757088'),(17,'dashboard','0001_initial','2023-12-03 12:32:53.200294'),(18,'sessions','0001_initial','2023-12-03 12:32:53.673447'),(19,'dashboard','0002_invoice_item_discountrate','2023-12-03 14:10:24.769287'),(20,'auth','0012_alter_user_first_name_max_length','2023-12-04 02:42:38.401091');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('kf82ksekz4gchgdq91ht09dt65cq7sz1','M2NmMGNiYWRmNGM4NzIzNjU3ODRkOTE4ZGQwZjZiZDU2N2I2MWZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjJhNzBlOGY2ZTkwOTUxOTA1OTgxMDE5Yjc0Mjc2OTcwMjIxZDFjIn0=','2023-12-17 12:34:00.042269');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 18:25:57
