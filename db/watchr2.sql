-- MySQL dump 10.14  Distrib 5.5.47-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: watchr2
-- ------------------------------------------------------
-- Server version	5.5.47-MariaDB

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
-- Table structure for table `friendly_id_slugs`
--

DROP TABLE IF EXISTS `friendly_id_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendly_id_slugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `sluggable_id` int(11) NOT NULL,
  `sluggable_type` varchar(50) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope` (`slug`,`sluggable_type`,`scope`),
  KEY `index_friendly_id_slugs_on_sluggable_id` (`sluggable_id`),
  KEY `index_friendly_id_slugs_on_slug_and_sluggable_type` (`slug`,`sluggable_type`),
  KEY `index_friendly_id_slugs_on_sluggable_type` (`sluggable_type`),
  KEY `index_friendly_id_slugs_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendly_id_slugs`
--

LOCK TABLES `friendly_id_slugs` WRITE;
/*!40000 ALTER TABLE `friendly_id_slugs` DISABLE KEYS */;
INSERT INTO `friendly_id_slugs` VALUES (1,'ruby-on-rails-tote',1,'Spree::Product',NULL,'2016-07-14 21:04:41',NULL),(2,'ruby-on-rails-bag',2,'Spree::Product',NULL,'2016-07-14 21:04:41',NULL),(3,'ruby-on-rails-baseball-jersey',3,'Spree::Product',NULL,'2016-07-14 21:04:42',NULL),(4,'ruby-on-rails-jr-spaghetti',4,'Spree::Product',NULL,'2016-07-14 21:04:42',NULL),(5,'ruby-on-rails-ringer-t-shirt',5,'Spree::Product',NULL,'2016-07-14 21:04:42',NULL),(6,'ruby-baseball-jersey',6,'Spree::Product',NULL,'2016-07-14 21:04:42',NULL),(7,'apache-baseball-jersey',7,'Spree::Product',NULL,'2016-07-14 21:04:43',NULL),(8,'spree-baseball-jersey',8,'Spree::Product',NULL,'2016-07-14 21:04:43',NULL),(9,'spree-jr-spaghetti',9,'Spree::Product',NULL,'2016-07-14 21:04:43',NULL),(10,'spree-ringer-t-shirt',10,'Spree::Product',NULL,'2016-07-14 21:04:43',NULL),(11,'spree-tote',11,'Spree::Product',NULL,'2016-07-14 21:04:44',NULL),(12,'spree-bag',12,'Spree::Product',NULL,'2016-07-14 21:04:44',NULL),(13,'ruby-on-rails-mug',13,'Spree::Product',NULL,'2016-07-14 21:04:44',NULL),(14,'ruby-on-rails-stein',14,'Spree::Product',NULL,'2016-07-14 21:04:44',NULL),(15,'spree-stein',15,'Spree::Product',NULL,'2016-07-14 21:04:45',NULL),(16,'spree-mug',16,'Spree::Product',NULL,'2016-07-14 21:04:45',NULL),(17,'test',17,'Spree::Product',NULL,'2016-07-26 15:04:28',NULL),(18,'rolex-submariner',18,'Spree::Product',NULL,'2016-07-26 15:24:44',NULL);
/*!40000 ALTER TABLE `friendly_id_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msends`
--

DROP TABLE IF EXISTS `msends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `message` text,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msends`
--

LOCK TABLES `msends` WRITE;
/*!40000 ALTER TABLE `msends` DISABLE KEYS */;
/*!40000 ALTER TABLE `msends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20101109134351'),('20101109134453'),('20160623102016'),('20160712194520'),('20160714130025'),('20160714174400'),('20160714174410'),('20160714174411'),('20160714174413'),('20160714174414'),('20160714174417'),('20160714174418'),('20160714210345'),('20160714210346'),('20160714210347'),('20160714210348'),('20160714210349'),('20160714210350'),('20160714210351'),('20160714210352'),('20160714210353'),('20160714210354'),('20160714210355'),('20160714210356'),('20160714210357'),('20160714210358'),('20160714210359'),('20160714210360'),('20160714210361'),('20160714210362'),('20160714210363'),('20160714210364'),('20160714210365'),('20160714210366'),('20160714210367'),('20160714210368'),('20160714210369'),('20160714210370'),('20160714210371'),('20160714210372'),('20160714210373'),('20160714210374'),('20160714210375'),('20160714210376'),('20160714210377'),('20160714210378'),('20160714210379'),('20160714210380'),('20160714210381'),('20160714210382'),('20160714210383'),('20160714210384'),('20160714210385'),('20160714210386'),('20160714210387'),('20160714210388'),('20160714210389'),('20160714210390'),('20160714210391'),('20160714210392'),('20160714210393'),('20160714210394'),('20160714210395'),('20160714210396'),('20160714210397'),('20160714210398'),('20160714210399'),('20160714210400'),('20160714210401'),('20160714210402'),('20160714210403'),('20160714210404'),('20160714210405'),('20160714210406'),('20160714210407'),('20160714210408'),('20160714210409'),('20160714210410'),('20160714210411'),('20160714210412'),('20160714210413'),('20160714210414'),('20160714210415'),('20160714210416'),('20160714210417'),('20160714210418'),('20160714210419'),('20160714210420'),('20160714210421'),('20160714210422'),('20160714210423'),('20160714210424'),('20160714210425'),('20160714210426'),('20160714210427'),('20160714210428'),('20160714210429'),('20160714210430'),('20160714210431'),('20160714210432'),('20160714210433'),('20160714210434'),('20160714210435'),('20160714210436'),('20160714210437'),('20160714210438'),('20160714210439'),('20160714210440'),('20160714210441'),('20160714210442'),('20160714210443'),('20160714210444'),('20160714210445'),('20160714210446'),('20160714210447'),('20160714210448'),('20160714210449'),('20160714210450'),('20160714210451'),('20160714210452'),('20160714210453'),('20160714210454'),('20160714210455'),('20160714210456'),('20160714210457'),('20160714210458'),('20160714210459'),('20160714210460'),('20160714210461'),('20160714210462'),('20160714210463'),('20160714210464'),('20160714210465'),('20160714210466'),('20160714210467'),('20160714210468'),('20160714210469'),('20160714210470'),('20160714210471'),('20160714210472'),('20160714210473'),('20160714210474'),('20160714210475'),('20160714210476'),('20160714210477'),('20160714210478'),('20160714210479'),('20160714210480'),('20160714210481'),('20160714210482'),('20160714210483'),('20160714210484'),('20160714210485'),('20160714210486'),('20160714210487'),('20160714210488'),('20160714210489'),('20160714210490'),('20160714210491'),('20160714210492'),('20160714210493'),('20160714210494'),('20160714210495'),('20160714210496'),('20160714210497'),('20160714210498'),('20160714210499'),('20160714210500'),('20160714210501'),('20160714210502'),('20160714210503'),('20160714210504'),('20160714210505'),('20160714210506'),('20160714210507'),('20160714210508'),('20160714210509'),('20160714210510'),('20160714210511'),('20160714210512'),('20160714210513'),('20160714210514'),('20160714210515'),('20160714210516'),('20160714210517'),('20160714210518'),('20160714210519'),('20160714210520'),('20160714210521'),('20160714210522'),('20160714210523'),('20160714210524'),('20160714210525'),('20160714210526'),('20160714210527'),('20160714210528'),('20160714210529'),('20160714210530'),('20160714210531'),('20160714210532'),('20160714210533'),('20160714210534'),('20160714210535'),('20160714210536'),('20160714210537'),('20160714210538'),('20160714210539'),('20160714210540'),('20160714210541'),('20160714210542'),('20160714210543'),('20160714210544'),('20160714210545'),('20160714210546'),('20160714210547'),('20160714210548'),('20160714210549'),('20160714210550'),('20160714210551'),('20160714210552'),('20160714210553'),('20160714210554'),('20160714210555'),('20160714210556'),('20160714210557'),('20160714210558'),('20160714210559'),('20160714210560'),('20160714210561'),('20160714210562'),('20160714210563'),('20160714210564'),('20160714210565'),('20160714210566'),('20160714210567'),('20160719101019'),('20160719101020'),('20160720174451'),('20160725152405'),('20160725164400'),('20160725190243'),('20160726063336');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_images`
--

DROP TABLE IF EXISTS `seller_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `upload_session` varchar(255) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `attachment_file_name` varchar(255) DEFAULT NULL,
  `attachment_content_type` varchar(255) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_images`
--

LOCK TABLES `seller_images` WRITE;
/*!40000 ALTER TABLE `seller_images` DISABLE KEYS */;
INSERT INTO `seller_images` VALUES (1,'2016-07-19 12:02:54','2016-07-19 12:02:54','163278a8076abb87e378',NULL,'Выделение_002.png','image/png',828375,'2016-07-19 12:02:53'),(2,'2016-07-25 06:05:40','2016-07-25 06:05:40','bb50db4ae6a38dea15d0',NULL,'222.JPG','image/jpeg',3597602,'2016-07-25 06:05:37'),(3,'2016-07-25 06:15:10','2016-07-25 06:15:10','163278a8076abb87e378',NULL,'HPGzMpIWXsE.jpg','image/jpeg',31832,'2016-07-25 06:15:09'),(4,'2016-07-25 06:17:18','2016-07-25 06:17:18','891240f72e3cf0e84056',NULL,'HPGzMpIWXsE.jpg','image/jpeg',31832,'2016-07-25 06:17:17'),(5,'2016-07-25 12:00:54','2016-07-25 12:00:54','8d87a055bb024ffb581b',NULL,'HPGzMpIWXsE.jpg','image/jpeg',31832,'2016-07-25 12:00:54'),(6,'2016-07-25 12:09:11','2016-07-25 12:09:11','8d87a055bb024ffb581b',NULL,'HPGzMpIWXsE.jpg','image/jpeg',31832,'2016-07-25 12:09:11'),(7,'2016-07-25 12:11:54','2016-07-25 12:11:54','7ec12a7dd316ed5a66a9',NULL,'HPGzMpIWXsE.jpg','image/jpeg',31832,'2016-07-25 12:11:53'),(8,'2016-07-25 12:19:50','2016-07-25 12:19:50','8d87a055bb024ffb581b',NULL,'HPGzMpIWXsE.jpg','image/jpeg',31832,'2016-07-25 12:19:50');
/*!40000 ALTER TABLE `seller_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `comment` text,
  `period` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_upload` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (1,'test','test','test','tsst',2323,'Box and certificate','teest','\n day:28 - Thu, time: Early Morning',16,'9a3c2e96fbe6098c221a','2016-07-18 19:33:21','2016-07-18 19:33:21'),(2,'rolex','husdsu','djhfd','fhd',909,'Box and certificate','jhrdfd','\n day:20 - Wed, time: Early Morning\n day:21 - Thu, time: Late Morning\n day:22 - Fri, time: Late Afternoon\n day:26 - Tue, time: Late Afternoon',17,'77b9dcd6396b1975439f','2016-07-20 15:38:05','2016-07-20 15:38:05'),(3,'23','23','23','23',23,'I don’t have any of them','','',12,'adc5ab659467e594e221','2016-07-23 02:43:49','2016-07-23 02:43:49'),(4,'12333','12333','123','123',1231,'Only box available','zdfgsdfgsdfg','\n day:27 - Wed, time: Late Morning',26,'bb50db4ae6a38dea15d0','2016-07-25 06:05:49','2016-07-25 06:05:49'),(5,'afdsgs','sdfg','sdfg','sdfg',1212,'Only box available','qsdfgasdfsdf','\n day:25 - Mon, time: Late Afternoon',26,'163278a8076abb87e378','2016-07-25 06:15:15','2016-07-25 06:15:15'),(6,'sfdfhgdxfgh','s','gsdfg','dfgsdf',23223,'Only box available','','\n day:25 - Mon, time: Early Afternoon',13,'891240f72e3cf0e84056','2016-07-25 06:17:23','2016-07-25 06:17:23'),(7,'44','44','44','44',444,'I don’t have any of them','','',55,'58db698f7cbc8bb3d64b','2016-07-26 03:24:59','2016-07-26 03:24:59'),(8,'44','4','44','444',44,'I don’t have any of them','','',55,'387aad522b6e69b44e0e','2016-07-26 03:34:28','2016-07-26 03:34:28'),(9,'t','t','t','t',1909,'I don’t have any of them','','\n day:4 - Thu, time: Late Morning',18,'835cd385f9b5733b8e3b','2016-07-26 13:00:53','2016-07-26 13:00:53'),(10,'q','q','q','q',2000,'I don’t have any of them','','\n day:26 - Tue, time: Early Morning\n day:2 - Tue, time: Late Afternoon\n day:3 - Wed, time: Late Morning\n day:4 - Thu, time: Late Afternoon\n day:5 - Fri, time: Late Afternoon',18,'8e98e127ee05203c4392','2016-07-26 15:58:05','2016-07-26 15:58:05');
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sendmessages`
--

DROP TABLE IF EXISTS `sendmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sendmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `message` text,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sendmessages`
--

LOCK TABLES `sendmessages` WRITE;
/*!40000 ALTER TABLE `sendmessages` DISABLE KEYS */;
INSERT INTO `sendmessages` VALUES (1,'gggg','ggg','ggg','4444444',NULL,'2016-07-25 16:57:44','2016-07-25 16:57:44'),(2,'gggg','ggg','ggg','4444444',NULL,'2016-07-25 17:00:00','2016-07-25 17:00:00'),(3,'gggg','ggg','ggg','4444444',NULL,'2016-07-25 17:30:37','2016-07-25 17:30:37'),(4,'gggg','ggg','ggg','4444444',NULL,'2016-07-25 17:31:40','2016-07-25 17:31:40');
/*!40000 ALTER TABLE `sendmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_addresses`
--

DROP TABLE IF EXISTS `spree_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `alternative_phone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`),
  KEY `index_spree_addresses_on_country_id` (`country_id`),
  KEY `index_spree_addresses_on_state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_addresses`
--

LOCK TABLES `spree_addresses` WRITE;
/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
INSERT INTO `spree_addresses` VALUES (1,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','123123123123',NULL,NULL,NULL,1069,77,'2016-07-14 21:05:23','2016-07-15 11:28:31'),(2,'Caitlyn','Hahn','386 Roma Rapids','Apt. 453','New Greta','16804','(495)916-1787 x836',NULL,NULL,NULL,3561,232,'2016-07-14 21:05:23','2016-07-14 21:05:23'),(3,'Ivan','1212','45 Maydwell House','Thomas Road','London','E14 7AP','2341234',NULL,NULL,NULL,1069,77,'2016-07-15 10:53:32','2016-07-15 10:54:22'),(4,'Ivan','1212','45 Maydwell House','Thomas Road','London','E14 7AP','2341234',NULL,NULL,NULL,1069,77,'2016-07-15 10:53:32','2016-07-15 10:54:22'),(5,'Ivan','1212','45 Maydwell House','Thomas Road','London','E14 7AP','2341234',NULL,NULL,NULL,1069,77,'2016-07-15 11:24:00','2016-07-17 09:11:20'),(6,'Ivan','1212','45 Maydwell House','Thomas Road','London','E14 7AP','2341234',NULL,NULL,NULL,1069,77,'2016-07-15 11:24:00','2016-07-17 09:11:20'),(7,'Ivan','1212','45 Maydwell House','Thomas Road','London','E14 7AP','2341234',NULL,NULL,NULL,1069,77,'2016-07-15 11:30:12','2016-07-15 11:51:54'),(8,'Ivan','1212','45 Maydwell House','Thomas Road','London','E14 7AP','2341234',NULL,NULL,NULL,1069,77,'2016-07-15 11:30:12','2016-07-15 11:51:54'),(9,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','123123123123',NULL,NULL,NULL,1069,77,'2016-07-15 12:28:30','2016-07-15 12:28:30'),(10,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','123123123123',NULL,NULL,NULL,1069,77,'2016-07-15 13:20:17','2016-07-15 13:20:17'),(11,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','123123123123',NULL,NULL,NULL,1069,77,'2016-07-15 13:20:17','2016-07-15 13:20:17'),(12,'солнца','Иванйцук','45 Maydwell House','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-15 20:55:29','2016-07-15 20:55:29'),(13,'солнца','Иванйцук','45 Maydwell House','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-15 20:55:31','2016-07-15 20:55:31'),(14,'Enaf','Sasha','45 Maydwell House Thomas Road  E14 7AP','','London','E14 7AP','121212',NULL,NULL,NULL,1069,77,'2016-07-15 20:55:31','2016-07-15 20:55:31'),(15,'солнца','Иванйцук','45 Maydwell House','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-15 20:56:21','2016-07-15 20:56:21'),(16,'солнца','Иванйцук','45 Maydwell House','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-15 20:56:22','2016-07-15 20:56:22'),(17,'солнца','Иванйцук','45 Maydwell Houseу','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-15 20:58:01','2016-07-15 20:58:01'),(18,'солнца','Иванйцук','45 Maydwell Houseуаааа','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-15 20:58:30','2016-07-15 20:58:30'),(19,'солнца','Иванйцук','45 Maydwell Houseуаааа','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-15 20:58:47','2016-07-15 20:58:47'),(20,'солнца','Иванйцук','aydwell Houseуаааа','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-15 20:59:53','2016-07-15 20:59:53'),(21,'солнца','Иванйцук','aydwell Houseуаааа','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-15 21:00:37','2016-07-15 21:00:37'),(22,'Enaf','Sasha','eeee','ererer','dfdf','E14 7AP','121212',NULL,NULL,NULL,1069,77,'2016-07-15 21:01:09','2016-07-15 21:01:09'),(23,'Enaf','Sasha','eeee','ererer','dfdf','E14 7AP','121212',NULL,NULL,NULL,1069,77,'2016-07-15 21:01:35','2016-07-15 21:01:35'),(24,'солнца','Иванйцук','aydwell Houseуаааа','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-16 07:59:20','2016-07-16 07:59:20'),(25,'солнца','Иванйцук','aydwell Houseуаааа','Thomas Road','London','E14 7AP','234234234234',NULL,NULL,NULL,1069,77,'2016-07-16 08:04:11','2016-07-16 08:04:11'),(26,'rer','rrrr','dfdfdf','dfdfdf','ddfdfdf','E14 7AP','111111',NULL,NULL,NULL,1069,77,'2016-07-16 09:13:14','2016-07-16 09:13:14'),(27,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','1231234123123',NULL,NULL,NULL,1069,77,'2016-07-16 09:37:29','2016-07-16 09:37:29'),(28,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','1231234123123',NULL,NULL,NULL,1069,77,'2016-07-16 09:44:42','2016-07-16 09:44:42'),(29,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-16 10:35:55','2016-07-16 10:35:55'),(30,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-16 10:36:59','2016-07-16 10:36:59'),(31,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-16 10:44:31','2016-07-16 10:44:31'),(32,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-16 11:30:49','2016-07-16 11:30:49'),(33,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-16 12:01:59','2016-07-16 12:01:59'),(34,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-16 13:29:48','2016-07-16 13:29:48'),(35,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 08:43:58','2016-07-17 08:43:58'),(36,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 09:02:20','2016-07-17 09:02:20'),(37,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 09:02:21','2016-07-17 09:02:21'),(38,'Ivan','1212','45 Maydwell House','Thomas Road','London','E14 7AP','2341234',NULL,NULL,NULL,1069,77,'2016-07-17 09:08:35','2016-07-17 09:11:19'),(39,'Ivan','1212','45 Maydwell House','Thomas Road','London','E14 7AP','2341234',NULL,NULL,NULL,1069,77,'2016-07-17 09:08:35','2016-07-17 09:11:19'),(40,'1321321321','321321321321','45 Maydwell House','Thomas Road','London','E14 7AP','1231321321321321',NULL,NULL,NULL,1069,77,'2016-07-17 09:15:36','2016-07-17 09:16:28'),(41,'1321321321','321321321321','45 Maydwell House','Thomas Road','London','E14 7AP','1231321321321321',NULL,NULL,NULL,1069,77,'2016-07-17 09:15:36','2016-07-17 09:16:28'),(42,'sdhgs dfg sdfg','sdfg sdf gsdf g','45 Maydwell House','Thomas Road','London','E14 7AP','123123',NULL,NULL,NULL,1069,77,'2016-07-17 09:35:37','2016-07-17 09:36:36'),(43,'sdhgs dfg sdfg','sdfg sdf gsdf g','45 Maydwell House','Thomas Road','London','E14 7AP','123123',NULL,NULL,NULL,1069,77,'2016-07-17 09:35:37','2016-07-17 09:36:36'),(44,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 09:43:30','2016-07-17 09:43:30'),(45,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 10:06:34','2016-07-17 10:06:34'),(46,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 10:13:12','2016-07-17 10:13:12'),(47,'45 Maydwell House','45 Maydwell House','45 Maydwell House','Thomas Road','London','E14 7AP','345234523452345',NULL,NULL,NULL,1069,77,'2016-07-17 10:21:51','2016-07-17 10:22:43'),(48,'45 Maydwell House','45 Maydwell House','45 Maydwell House','Thomas Road','London','E14 7AP','345234523452345',NULL,NULL,NULL,1069,77,'2016-07-17 10:21:52','2016-07-17 10:22:43'),(49,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 10:46:15','2016-07-17 10:46:15'),(50,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 10:46:29','2016-07-17 10:46:29'),(51,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 10:47:30','2016-07-17 10:47:30'),(52,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 10:51:03','2016-07-17 10:51:03'),(53,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 11:04:25','2016-07-17 11:04:25'),(54,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 11:04:25','2016-07-17 11:04:25'),(55,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 11:05:05','2016-07-17 11:05:05'),(56,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 11:06:33','2016-07-17 11:06:33'),(57,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-17 11:21:24','2016-07-17 11:21:24'),(58,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-17 14:02:17','2016-07-17 14:02:17'),(59,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 15:25:26','2016-07-17 15:25:26'),(60,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 15:30:17','2016-07-17 15:30:17'),(61,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 15:32:50','2016-07-17 15:32:50'),(62,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 15:34:22','2016-07-17 15:34:22'),(63,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 15:34:55','2016-07-17 15:34:55'),(64,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 15:38:23','2016-07-17 15:38:23'),(65,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 15:42:09','2016-07-17 15:42:09'),(66,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 16:19:14','2016-07-17 16:19:14'),(67,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-17 16:43:53','2016-07-17 16:43:53'),(68,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-17 16:51:55','2016-07-17 16:51:55'),(69,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-17 17:01:46','2016-07-17 17:01:46'),(70,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:04:31','2016-07-17 17:04:31'),(71,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:09:20','2016-07-17 17:09:20'),(72,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:09:51','2016-07-17 17:09:51'),(73,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:10:47','2016-07-17 17:10:47'),(74,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:12:51','2016-07-17 17:12:51'),(75,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:13:26','2016-07-17 17:13:26'),(76,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:13:26','2016-07-17 17:13:26'),(77,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:17:31','2016-07-17 17:17:31'),(78,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:18:30','2016-07-17 17:18:30'),(79,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:21:27','2016-07-17 17:21:27'),(80,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:22:09','2016-07-17 17:22:09'),(81,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:22:13','2016-07-17 17:22:13'),(82,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:22:57','2016-07-17 17:22:57'),(83,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:24:54','2016-07-17 17:24:54'),(84,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:25:21','2016-07-17 17:25:21'),(85,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-17 17:27:35','2016-07-17 17:27:35'),(86,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:42:59','2016-07-17 17:42:59'),(87,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-17 17:43:25','2016-07-17 17:43:25'),(88,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-17 17:46:39','2016-07-17 17:46:39'),(89,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:48:28','2016-07-17 17:48:28'),(90,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 17:52:52','2016-07-17 17:52:52'),(91,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 21:07:10','2016-07-17 21:07:10'),(92,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 21:07:13','2016-07-17 21:07:13'),(93,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 21:15:22','2016-07-17 21:15:22'),(94,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 21:21:27','2016-07-17 21:21:27'),(95,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-17 21:32:48','2016-07-17 21:32:48'),(96,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-17 21:35:02','2016-07-17 21:35:02'),(97,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-18 08:27:22','2016-07-18 08:27:22'),(98,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-18 10:37:07','2016-07-18 10:37:07'),(99,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-18 10:53:11','2016-07-18 10:53:11'),(100,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-18 11:19:42','2016-07-18 11:19:42'),(101,'mariolina','sangalli','dk','sk','u','94102','6768898',NULL,NULL,NULL,3529,232,'2016-07-18 12:12:27','2016-07-18 12:12:27'),(102,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-20 00:46:11','2016-07-20 00:46:11'),(103,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-20 10:34:29','2016-07-20 10:34:29'),(104,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-20 10:51:11','2016-07-20 10:51:11'),(105,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-20 10:51:32','2016-07-20 10:51:32'),(106,'123','1234','Kiev',NULL,'Kiev','92274','1234123421',NULL,NULL,NULL,3529,232,'2016-07-20 10:55:12','2016-07-20 10:55:12'),(107,'123','1234','Kiev',NULL,'Kiev','92274','1234123421',NULL,NULL,NULL,3529,232,'2016-07-20 10:57:42','2016-07-20 10:57:42'),(108,'326375237642','326375237642','hdfgshjdgfsdf','hdfgshjdgfsdf','hdfgshjdgfsdf','01200','326375237642',NULL,NULL,NULL,3509,229,'2016-07-20 10:59:17','2016-07-20 10:59:17'),(109,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-20 11:02:58','2016-07-20 11:02:58'),(110,'326375237642','326375237642','hdfgshjdgfsdf','hdfgshjdgfsdf','hdfgshjdgfsdf','01200','326375237642',NULL,NULL,NULL,3509,229,'2016-07-20 11:14:17','2016-07-20 11:14:17'),(111,'326375237642','326375237642','hdfgshjdgfsdf','hdfgshjdgfsdf','hdfgshjdgfsdf','01200','326375237642',NULL,NULL,NULL,3509,229,'2016-07-20 11:14:47','2016-07-20 11:14:47'),(112,'326375237642','326375237642','hdfgshjdgfsdf','hdfgshjdgfsdf','hdfgshjdgfsdf','01200','326375237642',NULL,NULL,NULL,3509,229,'2016-07-20 11:14:54','2016-07-20 11:14:54'),(113,'Enaf','Sasha','eeeee','eeee','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-20 11:19:07','2016-07-20 11:19:07'),(114,'Enaf','Sasha','eeeee','11111','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-20 11:19:17','2016-07-20 11:19:17'),(115,'Enaf','Sasha','eeeee','11111','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-20 11:19:29','2016-07-20 11:19:29'),(116,'Enaf','Sasha','eeeee','11111','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-20 11:19:35','2016-07-20 11:19:35'),(117,'Enaf','Sasha','eeeee','','eeee','E14 7AP','11111111111111111111',NULL,NULL,NULL,1069,77,'2016-07-20 13:56:30','2016-07-20 13:56:30'),(118,'123','1234','Kiev',NULL,'Kiev','92274','1234123421',NULL,NULL,NULL,3529,232,'2016-07-20 15:42:32','2016-07-20 15:42:32'),(119,'123','1234','Kiev',NULL,'Kiev','92274','1234123421',NULL,NULL,NULL,3529,232,'2016-07-20 15:42:38','2016-07-20 15:42:38'),(120,'123','1234','Kiev',NULL,'Kiev','92274','1234123421',NULL,NULL,NULL,3529,232,'2016-07-20 15:44:20','2016-07-20 15:44:20'),(121,'солнца','Иван','45 Maydwell House','Thomas Road','London','E14 7AP','79088895832',NULL,NULL,NULL,1069,77,'2016-07-20 18:08:12','2016-07-20 18:08:12'),(122,'m','s','s','w','s','90001','33333',NULL,NULL,NULL,3529,232,'2016-07-21 17:30:08','2016-07-21 17:30:08'),(123,'m','s','s','w','s','90001','33333',NULL,NULL,NULL,3529,232,'2016-07-21 18:58:21','2016-07-21 18:58:21'),(124,'m','s','s','w','s','90001','33333',NULL,NULL,NULL,3529,232,'2016-07-21 18:59:50','2016-07-21 18:59:50'),(125,'Enaf','Sasha','4','dddd','dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 03:40:01','2016-07-26 03:40:01'),(126,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 07:07:06','2016-07-26 07:07:06'),(127,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 07:40:45','2016-07-26 07:40:45'),(128,'Enaf','Sasha','4','dddd','dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 08:12:08','2016-07-26 08:12:08'),(129,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:32:14','2016-07-26 08:32:14'),(130,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:32:38','2016-07-26 08:32:38'),(131,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:34:44','2016-07-26 08:34:44'),(132,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:35:37','2016-07-26 08:35:37'),(133,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:40:21','2016-07-26 08:40:21'),(134,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:43:19','2016-07-26 08:43:19'),(135,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:43:49','2016-07-26 08:43:49'),(136,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:44:04','2016-07-26 08:44:04'),(137,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 08:46:27','2016-07-26 10:33:33'),(138,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:46:34','2016-07-26 08:46:34'),(139,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:47:55','2016-07-26 08:47:55'),(140,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:54:38','2016-07-26 08:54:38'),(141,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 08:58:44','2016-07-26 08:58:44'),(142,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:00:12','2016-07-26 10:26:06'),(143,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:00:13','2016-07-26 09:00:13'),(144,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:00:46','2016-07-26 09:00:46'),(145,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:15:33','2016-07-26 09:15:33'),(146,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:16:18','2016-07-26 09:16:18'),(147,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:25:53','2016-07-26 09:25:53'),(148,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:29:16','2016-07-26 09:29:16'),(149,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:34:31','2016-07-26 09:34:31'),(150,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:35:29','2016-07-26 09:35:29'),(151,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:43:17','2016-07-26 09:43:17'),(152,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:43:36','2016-07-26 09:43:36'),(153,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:47:19','2016-07-26 09:47:19'),(154,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:47:46','2016-07-26 09:47:46'),(155,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:50:29','2016-07-26 09:50:29'),(156,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:50:33','2016-07-26 09:50:33'),(157,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:50:33','2016-07-26 09:50:33'),(158,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:55:48','2016-07-26 09:55:48'),(159,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:56:16','2016-07-26 09:56:16'),(160,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:57:12','2016-07-26 09:57:12'),(161,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:57:53','2016-07-26 09:57:53'),(162,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:59:21','2016-07-26 09:59:21'),(163,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:59:25','2016-07-26 09:59:25'),(164,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 09:59:25','2016-07-26 09:59:25'),(165,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:02:02','2016-07-26 10:02:02'),(166,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:02:04','2016-07-26 10:02:04'),(167,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:02:04','2016-07-26 10:02:04'),(168,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:03:44','2016-07-26 10:03:44'),(169,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:03:47','2016-07-26 10:03:47'),(170,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:03:47','2016-07-26 10:03:47'),(171,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:04:26','2016-07-26 10:04:26'),(172,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:04:31','2016-07-26 10:04:31'),(173,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:04:31','2016-07-26 10:04:31'),(174,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:14:32','2016-07-26 10:14:32'),(175,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:14:36','2016-07-26 10:14:36'),(176,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:14:36','2016-07-26 10:14:36'),(177,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:17:18','2016-07-26 10:17:18'),(178,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:17:21','2016-07-26 10:17:21'),(179,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:17:21','2016-07-26 10:17:21'),(180,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:22:43','2016-07-26 10:22:43'),(181,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:22:50','2016-07-26 10:22:50'),(182,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:22:50','2016-07-26 10:22:50'),(183,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:24:46','2016-07-26 10:24:46'),(184,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:24:47','2016-07-26 10:24:47'),(185,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:24:47','2016-07-26 10:24:47'),(186,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:25:58','2016-07-26 10:26:06'),(187,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:26:06','2016-07-26 10:26:06'),(188,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:26:06','2016-07-26 10:26:06'),(189,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:29:36','2016-07-26 10:29:38'),(190,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:29:37','2016-07-26 10:29:37'),(191,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:29:37','2016-07-26 10:29:37'),(192,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 10:33:33','2016-07-26 10:33:33'),(193,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 10:33:33','2016-07-26 10:33:33'),(194,'Enaf','Sasha','4',NULL,'dddd','E14 7AP','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 10:33:33','2016-07-26 11:02:59'),(195,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:43:44','2016-07-26 10:43:54'),(196,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:43:53','2016-07-26 10:43:53'),(197,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:43:53','2016-07-26 10:43:53'),(198,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:45:34','2016-07-26 10:45:35'),(199,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:45:35','2016-07-26 10:45:35'),(200,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:45:35','2016-07-26 10:45:35'),(201,'test','test','45 Maydwell House','Thomas Road','London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:48:01','2016-07-26 10:48:01'),(202,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 10:51:57','2016-07-26 10:51:57'),(203,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 10:51:57','2016-07-26 10:51:57'),(204,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:53:13','2016-07-26 10:53:18'),(205,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:53:18','2016-07-26 10:53:18'),(206,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:53:18','2016-07-26 10:53:18'),(207,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 10:53:32','2016-07-26 10:53:35'),(208,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 10:53:34','2016-07-26 10:53:34'),(209,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 10:53:34','2016-07-26 10:53:34'),(210,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:58:50','2016-07-26 10:58:56'),(211,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:58:55','2016-07-26 10:58:55'),(212,'test','test','45 Maydwell House',NULL,'London','E14 7AP','12121212',NULL,NULL,NULL,1069,77,'2016-07-26 10:58:55','2016-07-26 10:58:55'),(213,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:00:00','2016-07-26 11:00:02'),(214,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:00:01','2016-07-26 11:00:01'),(215,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:00:01','2016-07-26 11:00:01'),(216,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:01:55','2016-07-26 11:01:58'),(217,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:01:58','2016-07-26 11:01:58'),(218,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:01:58','2016-07-26 11:01:58'),(219,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:02:05','2016-07-26 11:02:05'),(220,'Enaf','Sasha','4',NULL,'dddd','WC2N 5RJ','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:02:05','2016-07-26 11:02:05'),(221,'Enaf','Sasha','4',NULL,'dddd','E14 7AP','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:02:57','2016-07-26 11:02:59'),(222,'Enaf','Sasha','4',NULL,'dddd','E14 7AP','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:02:59','2016-07-26 11:02:59'),(223,'Enaf','Sasha','4',NULL,'dddd','E14 7AP','0987194026',NULL,NULL,NULL,1069,77,'2016-07-26 11:02:59','2016-07-26 11:02:59');
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustments`
--

DROP TABLE IF EXISTS `spree_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `adjustable_id` int(11) DEFAULT NULL,
  `adjustable_type` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `included` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`),
  KEY `index_spree_adjustments_on_adjustable_id_and_adjustable_type` (`adjustable_id`,`adjustable_type`),
  KEY `index_spree_adjustments_on_eligible` (`eligible`),
  KEY `index_spree_adjustments_on_order_id` (`order_id`),
  KEY `index_spree_adjustments_on_source_id_and_source_type` (`source_id`,`source_type`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustments`
--

LOCK TABLES `spree_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
INSERT INTO `spree_adjustments` VALUES (2,1,'Spree::TaxRate',1,'Spree::LineItem',0.80,'North America 5.0%',0,1,'2016-07-14 21:05:24','2016-07-14 21:05:25','open',1,0),(4,1,'Spree::TaxRate',2,'Spree::LineItem',1.15,'North America 5.0%',0,1,'2016-07-14 21:05:24','2016-07-14 21:05:26','open',2,0),(5,1,'Spree::TaxRate',1,'Spree::Order',0.84,'Tax',1,1,'2016-07-14 21:05:25','2016-07-14 21:05:25','open',1,0),(6,1,'Spree::TaxRate',2,'Spree::Order',1.21,'Tax',1,1,'2016-07-14 21:05:25','2016-07-14 21:05:26','open',2,0),(8,1,'Spree::TaxRate',782,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-18 12:22:52','2016-07-18 12:22:52','open',71,0),(10,1,'Spree::TaxRate',1811,'Spree::LineItem',29.35,'North America 5.0%',NULL,1,'2016-07-22 11:36:03','2016-07-22 11:36:03','open',79,0),(25,1,'Spree::TaxRate',2979,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 08:43:18','2016-07-26 08:43:18','open',122,0),(34,1,'Spree::TaxRate',2987,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 08:46:37','2016-07-26 08:46:37','open',124,0),(37,1,'Spree::TaxRate',2989,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 08:54:36','2016-07-26 08:54:36','open',126,0),(38,1,'Spree::TaxRate',2992,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:00:12','2016-07-26 09:00:13','open',128,0),(39,1,'Spree::TaxRate',2993,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:00:44','2016-07-26 09:00:45','open',129,0),(40,1,'Spree::TaxRate',2994,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:00:52','2016-07-26 09:00:53','open',130,0),(41,1,'Spree::TaxRate',2998,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:25:56','2016-07-26 09:25:56','open',133,0),(42,1,'Spree::TaxRate',2999,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:29:22','2016-07-26 09:29:22','open',135,0),(43,1,'Spree::TaxRate',3000,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:34:33','2016-07-26 09:34:33','open',136,0),(44,1,'Spree::TaxRate',3002,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:35:31','2016-07-26 09:35:31','open',137,0),(50,1,'Spree::TaxRate',3005,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:47:21','2016-07-26 09:47:21','open',138,0),(53,1,'Spree::TaxRate',3006,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:47:38','2016-07-26 09:47:44','open',125,0),(56,1,'Spree::TaxRate',3007,'Spree::LineItem',5.55,'North America 5.0%',NULL,1,'2016-07-26 09:47:40','2016-07-26 09:47:44','open',125,0),(59,1,'Spree::TaxRate',3008,'Spree::LineItem',44.40,'North America 5.0%',NULL,1,'2016-07-26 09:47:43','2016-07-26 09:47:44','open',125,0),(61,1,'Spree::TaxRate',3010,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:50:36','2016-07-26 09:50:37','open',140,0),(62,1,'Spree::TaxRate',3011,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 09:59:25','2016-07-26 09:59:25','open',141,0),(63,1,'Spree::TaxRate',3012,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 10:02:04','2016-07-26 10:02:05','open',142,0),(92,1,'Spree::TaxRate',3027,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 10:22:50','2016-07-26 10:22:51','open',143,0),(100,1,'Spree::TaxRate',3053,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 10:29:38','2016-07-26 10:29:39','open',146,0),(101,1,'Spree::TaxRate',3078,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 10:33:33','2016-07-26 10:33:34','open',147,0),(102,1,'Spree::TaxRate',3079,'Spree::LineItem',5.55,'North America 5.0%',NULL,1,'2016-07-26 10:33:33','2016-07-26 10:33:34','open',147,0),(103,1,'Spree::TaxRate',3080,'Spree::LineItem',44.40,'North America 5.0%',NULL,1,'2016-07-26 10:33:33','2016-07-26 10:33:34','open',147,0),(104,1,'Spree::TaxRate',3089,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 10:43:54','2016-07-26 10:43:55','open',148,0),(105,1,'Spree::TaxRate',3090,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 10:45:35','2016-07-26 10:45:36','open',149,0),(106,1,'Spree::TaxRate',3091,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 10:51:57','2016-07-26 10:51:57','open',152,0),(107,1,'Spree::TaxRate',3092,'Spree::LineItem',5.55,'North America 5.0%',NULL,1,'2016-07-26 10:51:57','2016-07-26 10:51:57','open',152,0),(108,1,'Spree::TaxRate',3093,'Spree::LineItem',44.40,'North America 5.0%',NULL,1,'2016-07-26 10:51:57','2016-07-26 10:51:57','open',152,0),(109,1,'Spree::TaxRate',3094,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 10:53:18','2016-07-26 10:57:37','closed',154,0),(115,1,'Spree::TaxRate',3098,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 10:57:03','2016-07-26 10:57:04','open',155,0),(118,1,'Spree::TaxRate',3099,'Spree::LineItem',5.55,'North America 5.0%',NULL,1,'2016-07-26 10:57:04','2016-07-26 10:57:04','open',155,0),(121,1,'Spree::TaxRate',3100,'Spree::LineItem',44.40,'North America 5.0%',NULL,1,'2016-07-26 10:57:04','2016-07-26 10:57:04','open',155,0),(122,1,'Spree::TaxRate',3101,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 10:58:56','2016-07-26 10:58:57','open',158,0),(168,1,'Spree::TaxRate',3120,'Spree::LineItem',49.95,'North America 5.0%',NULL,1,'2016-07-26 11:02:59','2016-07-26 11:03:00','open',160,0),(169,1,'Spree::TaxRate',3121,'Spree::LineItem',5.55,'North America 5.0%',NULL,1,'2016-07-26 11:02:59','2016-07-26 11:03:00','open',160,0),(170,1,'Spree::TaxRate',3122,'Spree::LineItem',44.40,'North America 5.0%',NULL,1,'2016-07-26 11:02:59','2016-07-26 11:03:00','open',160,0);
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_assets`
--

DROP TABLE IF EXISTS `spree_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(255) DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `attachment_content_type` varchar(255) DEFAULT NULL,
  `attachment_file_name` varchar(255) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_assets`
--

LOCK TABLES `spree_assets` WRITE;
/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
INSERT INTO `spree_assets` VALUES (1,17,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2016-07-14 21:04:56',NULL,'2016-07-14 21:04:57','2016-07-14 21:04:57'),(2,17,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2016-07-14 21:04:57',NULL,'2016-07-14 21:04:57','2016-07-14 21:04:57'),(3,18,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2016-07-14 21:04:57',NULL,'2016-07-14 21:04:58','2016-07-14 21:04:58'),(4,18,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2016-07-14 21:04:58',NULL,'2016-07-14 21:04:58','2016-07-14 21:04:58'),(5,19,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2016-07-14 21:04:59',NULL,'2016-07-14 21:04:59','2016-07-14 21:04:59'),(6,19,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2016-07-14 21:04:59',NULL,'2016-07-14 21:04:59','2016-07-14 21:04:59'),(7,20,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2016-07-14 21:05:00',NULL,'2016-07-14 21:05:00','2016-07-14 21:05:00'),(8,20,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2016-07-14 21:05:00',NULL,'2016-07-14 21:05:01','2016-07-14 21:05:01'),(9,21,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2016-07-14 21:05:01',NULL,'2016-07-14 21:05:01','2016-07-14 21:05:01'),(10,21,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2016-07-14 21:05:01',NULL,'2016-07-14 21:05:02','2016-07-14 21:05:02'),(11,22,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2016-07-14 21:05:02',NULL,'2016-07-14 21:05:03','2016-07-14 21:05:03'),(12,22,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2016-07-14 21:05:03',NULL,'2016-07-14 21:05:03','2016-07-14 21:05:03'),(13,23,'Spree::Variant',240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2016-07-14 21:05:03',NULL,'2016-07-14 21:05:04','2016-07-14 21:05:04'),(14,23,'Spree::Variant',240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2016-07-14 21:05:04',NULL,'2016-07-14 21:05:04','2016-07-14 21:05:04'),(15,24,'Spree::Variant',240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2016-07-14 21:05:04',NULL,'2016-07-14 21:05:05','2016-07-14 21:05:05'),(16,24,'Spree::Variant',240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2016-07-14 21:05:05',NULL,'2016-07-14 21:05:06','2016-07-14 21:05:06'),(17,25,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2016-07-14 21:05:06',NULL,'2016-07-14 21:05:06','2016-07-14 21:05:06'),(18,25,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2016-07-14 21:05:06',NULL,'2016-07-14 21:05:07','2016-07-14 21:05:07'),(19,26,'Spree::Variant',240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2016-07-14 21:05:07',NULL,'2016-07-14 21:05:07','2016-07-14 21:05:07'),(20,26,'Spree::Variant',240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2016-07-14 21:05:07',NULL,'2016-07-14 21:05:08','2016-07-14 21:05:08'),(21,1,'Spree::Variant',360,360,31490,1,'image/jpeg','ror_tote.jpeg','Spree::Image','2016-07-14 21:05:08',NULL,'2016-07-14 21:05:08','2016-07-14 21:05:08'),(22,1,'Spree::Variant',360,360,28620,2,'image/jpeg','ror_tote_back.jpeg','Spree::Image','2016-07-14 21:05:08',NULL,'2016-07-14 21:05:09','2016-07-14 21:05:09'),(23,2,'Spree::Variant',360,360,28230,1,'image/jpeg','ror_bag.jpeg','Spree::Image','2016-07-14 21:05:09',NULL,'2016-07-14 21:05:09','2016-07-14 21:05:09'),(24,3,'Spree::Variant',360,360,27626,1,'image/jpeg','ror_baseball.jpeg','Spree::Image','2016-07-14 21:05:09',NULL,'2016-07-14 21:05:10','2016-07-14 21:05:10'),(25,3,'Spree::Variant',360,360,23490,2,'image/jpeg','ror_baseball_back.jpeg','Spree::Image','2016-07-14 21:05:10',NULL,'2016-07-14 21:05:10','2016-07-14 21:05:10'),(26,4,'Spree::Variant',360,360,14083,1,'image/jpeg','ror_jr_spaghetti.jpeg','Spree::Image','2016-07-14 21:05:10',NULL,'2016-07-14 21:05:11','2016-07-14 21:05:11'),(27,13,'Spree::Variant',360,360,20026,1,'image/jpeg','ror_mug.jpeg','Spree::Image','2016-07-14 21:05:11',NULL,'2016-07-14 21:05:11','2016-07-14 21:05:11'),(28,13,'Spree::Variant',360,360,10929,2,'image/jpeg','ror_mug_back.jpeg','Spree::Image','2016-07-14 21:05:11',NULL,'2016-07-14 21:05:12','2016-07-14 21:05:12'),(29,5,'Spree::Variant',360,360,18252,1,'image/jpeg','ror_ringer.jpeg','Spree::Image','2016-07-14 21:05:12',NULL,'2016-07-14 21:05:12','2016-07-14 21:05:12'),(30,5,'Spree::Variant',360,360,13276,2,'image/jpeg','ror_ringer_back.jpeg','Spree::Image','2016-07-14 21:05:13',NULL,'2016-07-14 21:05:13','2016-07-14 21:05:13'),(31,14,'Spree::Variant',360,360,20714,1,'image/jpeg','ror_stein.jpeg','Spree::Image','2016-07-14 21:05:13',NULL,'2016-07-14 21:05:13','2016-07-14 21:05:13'),(32,14,'Spree::Variant',360,360,20619,2,'image/jpeg','ror_stein_back.jpeg','Spree::Image','2016-07-14 21:05:14',NULL,'2016-07-14 21:05:14','2016-07-14 21:05:14'),(33,7,'Spree::Variant',504,484,123779,1,'image/png','apache_baseball.png','Spree::Image','2016-07-14 21:05:14',NULL,'2016-07-14 21:05:15','2016-07-14 21:05:15'),(34,6,'Spree::Variant',495,477,138622,1,'image/png','ruby_baseball.png','Spree::Image','2016-07-14 21:05:15',NULL,'2016-07-14 21:05:16','2016-07-14 21:05:16'),(35,12,'Spree::Variant',480,480,38369,1,'image/jpeg','spree_bag.jpeg','Spree::Image','2016-07-14 21:05:16',NULL,'2016-07-14 21:05:16','2016-07-14 21:05:16'),(36,11,'Spree::Variant',480,480,44579,1,'image/jpeg','spree_tote_front.jpeg','Spree::Image','2016-07-14 21:05:16',NULL,'2016-07-14 21:05:17','2016-07-14 21:05:17'),(37,11,'Spree::Variant',480,480,16947,2,'image/jpeg','spree_tote_back.jpeg','Spree::Image','2016-07-14 21:05:17',NULL,'2016-07-14 21:05:17','2016-07-14 21:05:17'),(38,10,'Spree::Variant',480,480,17641,1,'image/jpeg','spree_ringer_t.jpeg','Spree::Image','2016-07-14 21:05:18',NULL,'2016-07-14 21:05:18','2016-07-14 21:05:18'),(39,10,'Spree::Variant',480,480,10514,2,'image/jpeg','spree_ringer_t_back.jpeg','Spree::Image','2016-07-14 21:05:18',NULL,'2016-07-14 21:05:19','2016-07-14 21:05:19'),(40,9,'Spree::Variant',480,480,5898,1,'image/jpeg','spree_spaghetti.jpeg','Spree::Image','2016-07-14 21:05:19',NULL,'2016-07-14 21:05:19','2016-07-14 21:05:19'),(41,8,'Spree::Variant',480,480,18012,1,'image/jpeg','spree_jersey.jpeg','Spree::Image','2016-07-14 21:05:19',NULL,'2016-07-14 21:05:20','2016-07-14 21:05:20'),(42,8,'Spree::Variant',480,480,17868,2,'image/jpeg','spree_jersey_back.jpeg','Spree::Image','2016-07-14 21:05:20',NULL,'2016-07-14 21:05:20','2016-07-14 21:05:20'),(43,15,'Spree::Variant',480,480,12999,1,'image/jpeg','spree_stein.jpeg','Spree::Image','2016-07-14 21:05:21',NULL,'2016-07-14 21:05:21','2016-07-14 21:05:21'),(44,15,'Spree::Variant',480,480,12687,2,'image/jpeg','spree_stein_back.jpeg','Spree::Image','2016-07-14 21:05:21',NULL,'2016-07-14 21:05:22','2016-07-14 21:05:22'),(45,16,'Spree::Variant',240,240,4148,1,'image/jpeg','spree_mug.jpeg','Spree::Image','2016-07-14 21:05:22',NULL,'2016-07-14 21:05:22','2016-07-14 21:05:22'),(46,16,'Spree::Variant',240,240,4428,2,'image/jpeg','spree_mug_back.jpeg','Spree::Image','2016-07-14 21:05:22',NULL,'2016-07-14 21:05:23','2016-07-14 21:05:23'),(47,28,'Spree::Variant',610,330,37277,1,'image/jpeg','download1.jpeg','Spree::Image','2016-07-26 15:29:30','','2016-07-26 15:29:31','2016-07-26 15:29:31'),(48,28,'Spree::Variant',610,330,38481,2,'image/jpeg','download2.jpeg','Spree::Image','2016-07-26 15:31:19','','2016-07-26 15:31:20','2016-07-26 15:31:20'),(49,28,'Spree::Variant',610,330,41927,3,'image/jpeg','download3.jpeg','Spree::Image','2016-07-26 15:31:34','','2016-07-26 15:31:35','2016-07-26 15:31:35');
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_calculators`
--

DROP TABLE IF EXISTS `spree_calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `calculable_id` int(11) DEFAULT NULL,
  `calculable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `preferences` text,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_calculators_on_id_and_type` (`id`,`type`),
  KEY `index_spree_calculators_on_calculable_id_and_calculable_type` (`calculable_id`,`calculable_type`),
  KEY `index_spree_calculators_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_calculators`
--

LOCK TABLES `spree_calculators` WRITE;
/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
INSERT INTO `spree_calculators` VALUES (1,'Spree::Calculator::Shipping::FlatRate',1,'Spree::ShippingMethod','2016-07-14 21:04:38','2016-07-15 11:42:06','---\n:amount: !ruby/object:BigDecimal 18:0.5E1\n:currency: GBP\n','2016-07-19 14:25:35'),(2,'Spree::Calculator::Shipping::FlatRate',2,'Spree::ShippingMethod','2016-07-14 21:04:38','2016-07-26 09:01:37','---\n:amount: !ruby/object:BigDecimal 18:0.1E2\n:currency: GBP\n','2016-07-26 09:02:04'),(3,'Spree::Calculator::Shipping::FlatRate',3,'Spree::ShippingMethod','2016-07-14 21:04:38','2016-07-15 11:42:12','---\n:amount: !ruby/object:BigDecimal 18:0.15E2\n:currency: GBP\n',NULL),(4,'Spree::Calculator::Shipping::FlatRate',4,'Spree::ShippingMethod','2016-07-14 21:04:38','2016-07-15 11:42:17','---\n:amount: !ruby/object:BigDecimal 18:0.5E1\n:currency: GBP\n',NULL),(5,'Spree::Calculator::Shipping::FlatRate',5,'Spree::ShippingMethod','2016-07-14 21:04:38','2016-07-15 11:42:24','---\n:amount: !ruby/object:BigDecimal 18:0.8E1\n:currency: GBP\n',NULL),(6,'Spree::Calculator::DefaultTax',1,'Spree::TaxRate','2016-07-14 21:04:40','2016-07-14 21:04:40',NULL,NULL),(7,'Spree::Calculator::Shipping::FlatPercentItemTotal',1,'Spree::ShippingMethod','2016-07-19 14:25:35','2016-07-26 08:35:13','---\n:flat_percent: !ruby/object:BigDecimal 18:0.1E2\n','2016-07-26 08:37:35'),(8,'Spree::Calculator::Shipping::FlatPercentItemTotal',2,'Spree::ShippingMethod','2016-07-26 09:02:04','2016-07-26 09:02:11','---\n:flat_percent: !ruby/object:BigDecimal 18:0.1E2\n',NULL);
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_countries`
--

DROP TABLE IF EXISTS `spree_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) DEFAULT NULL,
  `iso` varchar(255) DEFAULT NULL,
  `iso3` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `states_required` tinyint(1) DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_countries`
--

LOCK TABLES `spree_countries` WRITE;
/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
INSERT INTO `spree_countries` VALUES (1,'ANDORRA','AD','AND','Andorra',20,1,NULL),(2,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates',784,1,NULL),(3,'AFGHANISTAN','AF','AFG','Afghanistan',4,1,NULL),(4,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda',28,1,NULL),(5,'ANGUILLA','AI','AIA','Anguilla',660,0,NULL),(6,'ALBANIA','AL','ALB','Albania',8,1,NULL),(7,'ARMENIA','AM','ARM','Armenia',51,1,NULL),(8,'ANGOLA','AO','AGO','Angola',24,1,NULL),(9,'ANTARCTICA','AQ','ATA','Antarctica',10,0,NULL),(10,'ARGENTINA','AR','ARG','Argentina',32,1,NULL),(11,'AMERICAN SAMOA','AS','ASM','American Samoa',16,0,NULL),(12,'AUSTRIA','AT','AUT','Austria',40,1,NULL),(13,'AUSTRALIA','AU','AUS','Australia',36,1,NULL),(14,'ARUBA','AW','ABW','Aruba',533,0,NULL),(15,'ÅLAND ISLANDS','AX','ALA','Åland Islands',248,0,NULL),(16,'AZERBAIJAN','AZ','AZE','Azerbaijan',31,1,NULL),(17,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina',70,1,NULL),(18,'BARBADOS','BB','BRB','Barbados',52,1,NULL),(19,'BANGLADESH','BD','BGD','Bangladesh',50,1,NULL),(20,'BELGIUM','BE','BEL','Belgium',56,1,NULL),(21,'BURKINA FASO','BF','BFA','Burkina Faso',854,1,NULL),(22,'BULGARIA','BG','BGR','Bulgaria',100,1,NULL),(23,'BAHRAIN','BH','BHR','Bahrain',48,1,NULL),(24,'BURUNDI','BI','BDI','Burundi',108,1,NULL),(25,'BENIN','BJ','BEN','Benin',204,1,NULL),(26,'SAINT BARTHéLEMY','BL','BLM','Saint Barthélemy',652,0,NULL),(27,'BERMUDA','BM','BMU','Bermuda',60,0,NULL),(28,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam',96,1,NULL),(29,'BOLIVIA, PLURINATIONAL STATE OF','BO','BOL','Bolivia, Plurinational State of',68,1,NULL),(30,'BONAIRE, SINT EUSTATIUS AND SABA','BQ','BES','Bonaire, Sint Eustatius and Saba',535,1,NULL),(31,'BRAZIL','BR','BRA','Brazil',76,1,NULL),(32,'BAHAMAS','BS','BHS','Bahamas',44,1,NULL),(33,'BHUTAN','BT','BTN','Bhutan',64,1,NULL),(34,'BOUVET ISLAND','BV','BVT','Bouvet Island',74,0,NULL),(35,'BOTSWANA','BW','BWA','Botswana',72,1,NULL),(36,'BELARUS','BY','BLR','Belarus',112,1,NULL),(37,'BELIZE','BZ','BLZ','Belize',84,1,NULL),(38,'CANADA','CA','CAN','Canada',124,1,NULL),(39,'COCOS (KEELING) ISLANDS','CC','CCK','Cocos (Keeling) Islands',166,0,NULL),(40,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, The Democratic Republic of the',180,1,NULL),(41,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic',140,1,NULL),(42,'CONGO','CG','COG','Congo',178,1,NULL),(43,'SWITZERLAND','CH','CHE','Switzerland',756,1,NULL),(44,'CôTE D\'IVOIRE','CI','CIV','Côte d\'Ivoire',384,1,NULL),(45,'COOK ISLANDS','CK','COK','Cook Islands',184,0,NULL),(46,'CHILE','CL','CHL','Chile',152,1,NULL),(47,'CAMEROON','CM','CMR','Cameroon',120,1,NULL),(48,'CHINA','CN','CHN','China',156,1,NULL),(49,'COLOMBIA','CO','COL','Colombia',170,1,NULL),(50,'COSTA RICA','CR','CRI','Costa Rica',188,1,NULL),(51,'CUBA','CU','CUB','Cuba',192,1,NULL),(52,'CAPE VERDE','CV','CPV','Cape Verde',132,1,NULL),(53,'CURAçAO','CW','CUW','Curaçao',531,0,NULL),(54,'CHRISTMAS ISLAND','CX','CXR','Christmas Island',162,0,NULL),(55,'CYPRUS','CY','CYP','Cyprus',196,1,NULL),(56,'CZECH REPUBLIC','CZ','CZE','Czech Republic',203,1,NULL),(57,'GERMANY','DE','DEU','Germany',276,1,NULL),(58,'DJIBOUTI','DJ','DJI','Djibouti',262,1,NULL),(59,'DENMARK','DK','DNK','Denmark',208,1,NULL),(60,'DOMINICA','DM','DMA','Dominica',212,1,NULL),(61,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic',214,1,NULL),(62,'ALGERIA','DZ','DZA','Algeria',12,1,NULL),(63,'ECUADOR','EC','ECU','Ecuador',218,1,NULL),(64,'ESTONIA','EE','EST','Estonia',233,1,NULL),(65,'EGYPT','EG','EGY','Egypt',818,1,NULL),(66,'WESTERN SAHARA','EH','ESH','Western Sahara',732,0,NULL),(67,'ERITREA','ER','ERI','Eritrea',232,1,NULL),(68,'SPAIN','ES','ESP','Spain',724,1,NULL),(69,'ETHIOPIA','ET','ETH','Ethiopia',231,1,NULL),(70,'FINLAND','FI','FIN','Finland',246,1,NULL),(71,'FIJI','FJ','FJI','Fiji',242,1,NULL),(72,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)',238,0,NULL),(73,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of',583,1,NULL),(74,'FAROE ISLANDS','FO','FRO','Faroe Islands',234,0,NULL),(75,'FRANCE','FR','FRA','France',250,1,NULL),(76,'GABON','GA','GAB','Gabon',266,1,NULL),(77,'UNITED KINGDOM','GB','GBR','United Kingdom',826,1,NULL),(78,'GRENADA','GD','GRD','Grenada',308,1,NULL),(79,'GEORGIA','GE','GEO','Georgia',268,1,NULL),(80,'FRENCH GUIANA','GF','GUF','French Guiana',254,0,NULL),(81,'GUERNSEY','GG','GGY','Guernsey',831,0,NULL),(82,'GHANA','GH','GHA','Ghana',288,1,NULL),(83,'GIBRALTAR','GI','GIB','Gibraltar',292,0,NULL),(84,'GREENLAND','GL','GRL','Greenland',304,1,NULL),(85,'GAMBIA','GM','GMB','Gambia',270,1,NULL),(86,'GUINEA','GN','GIN','Guinea',324,1,NULL),(87,'GUADELOUPE','GP','GLP','Guadeloupe',312,0,NULL),(88,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea',226,1,NULL),(89,'GREECE','GR','GRC','Greece',300,1,NULL),(90,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','GS','SGS','South Georgia and the South Sandwich Islands',239,0,NULL),(91,'GUATEMALA','GT','GTM','Guatemala',320,1,NULL),(92,'GUAM','GU','GUM','Guam',316,0,NULL),(93,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau',624,1,NULL),(94,'GUYANA','GY','GUY','Guyana',328,1,NULL),(95,'HONG KONG','HK','HKG','Hong Kong',344,0,NULL),(96,'HEARD ISLAND AND MCDONALD ISLANDS','HM','HMD','Heard Island and McDonald Islands',334,0,NULL),(97,'HONDURAS','HN','HND','Honduras',340,1,NULL),(98,'CROATIA','HR','HRV','Croatia',191,1,NULL),(99,'HAITI','HT','HTI','Haiti',332,1,NULL),(100,'HUNGARY','HU','HUN','Hungary',348,1,NULL),(101,'INDONESIA','ID','IDN','Indonesia',360,1,NULL),(102,'IRELAND','IE','IRL','Ireland',372,1,NULL),(103,'ISRAEL','IL','ISR','Israel',376,1,NULL),(104,'ISLE OF MAN','IM','IMN','Isle of Man',833,0,NULL),(105,'INDIA','IN','IND','India',356,1,NULL),(106,'BRITISH INDIAN OCEAN TERRITORY','IO','IOT','British Indian Ocean Territory',86,0,NULL),(107,'IRAQ','IQ','IRQ','Iraq',368,1,NULL),(108,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of',364,1,NULL),(109,'ICELAND','IS','ISL','Iceland',352,1,NULL),(110,'ITALY','IT','ITA','Italy',380,1,NULL),(111,'JERSEY','JE','JEY','Jersey',832,0,NULL),(112,'JAMAICA','JM','JAM','Jamaica',388,1,NULL),(113,'JORDAN','JO','JOR','Jordan',400,1,NULL),(114,'JAPAN','JP','JPN','Japan',392,1,NULL),(115,'KENYA','KE','KEN','Kenya',404,1,NULL),(116,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan',417,1,NULL),(117,'CAMBODIA','KH','KHM','Cambodia',116,1,NULL),(118,'KIRIBATI','KI','KIR','Kiribati',296,1,NULL),(119,'COMOROS','KM','COM','Comoros',174,1,NULL),(120,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis',659,1,NULL),(121,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','Korea, Democratic People\'s Republic of',408,1,NULL),(122,'KOREA, REPUBLIC OF','KR','KOR','Korea, Republic of',410,1,NULL),(123,'KUWAIT','KW','KWT','Kuwait',414,1,NULL),(124,'CAYMAN ISLANDS','KY','CYM','Cayman Islands',136,0,NULL),(125,'KAZAKHSTAN','KZ','KAZ','Kazakhstan',398,1,NULL),(126,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic',418,1,NULL),(127,'LEBANON','LB','LBN','Lebanon',422,1,NULL),(128,'SAINT LUCIA','LC','LCA','Saint Lucia',662,0,NULL),(129,'LIECHTENSTEIN','LI','LIE','Liechtenstein',438,1,NULL),(130,'SRI LANKA','LK','LKA','Sri Lanka',144,1,NULL),(131,'LIBERIA','LR','LBR','Liberia',430,1,NULL),(132,'LESOTHO','LS','LSO','Lesotho',426,1,NULL),(133,'LITHUANIA','LT','LTU','Lithuania',440,1,NULL),(134,'LUXEMBOURG','LU','LUX','Luxembourg',442,1,NULL),(135,'LATVIA','LV','LVA','Latvia',428,1,NULL),(136,'LIBYA','LY','LBY','Libya',434,1,NULL),(137,'MOROCCO','MA','MAR','Morocco',504,1,NULL),(138,'MONACO','MC','MCO','Monaco',492,1,NULL),(139,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of',498,1,NULL),(140,'MONTENEGRO','ME','MNE','Montenegro',499,1,NULL),(141,'SAINT MARTIN (FRENCH PART)','MF','MAF','Saint Martin (French part)',663,0,NULL),(142,'MADAGASCAR','MG','MDG','Madagascar',450,1,NULL),(143,'MARSHALL ISLANDS','MH','MHL','Marshall Islands',584,1,NULL),(144,'MACEDONIA, REPUBLIC OF','MK','MKD','Macedonia, Republic of',807,1,NULL),(145,'MALI','ML','MLI','Mali',466,1,NULL),(146,'MYANMAR','MM','MMR','Myanmar',104,1,NULL),(147,'MONGOLIA','MN','MNG','Mongolia',496,1,NULL),(148,'MACAO','MO','MAC','Macao',446,0,NULL),(149,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands',580,0,NULL),(150,'MARTINIQUE','MQ','MTQ','Martinique',474,0,NULL),(151,'MAURITANIA','MR','MRT','Mauritania',478,1,NULL),(152,'MONTSERRAT','MS','MSR','Montserrat',500,0,NULL),(153,'MALTA','MT','MLT','Malta',470,1,NULL),(154,'MAURITIUS','MU','MUS','Mauritius',480,1,NULL),(155,'MALDIVES','MV','MDV','Maldives',462,1,NULL),(156,'MALAWI','MW','MWI','Malawi',454,1,NULL),(157,'MEXICO','MX','MEX','Mexico',484,1,NULL),(158,'MALAYSIA','MY','MYS','Malaysia',458,1,NULL),(159,'MOZAMBIQUE','MZ','MOZ','Mozambique',508,1,NULL),(160,'NAMIBIA','NA','NAM','Namibia',516,1,NULL),(161,'NEW CALEDONIA','NC','NCL','New Caledonia',540,0,NULL),(162,'NIGER','NE','NER','Niger',562,1,NULL),(163,'NORFOLK ISLAND','NF','NFK','Norfolk Island',574,0,NULL),(164,'NIGERIA','NG','NGA','Nigeria',566,1,NULL),(165,'NICARAGUA','NI','NIC','Nicaragua',558,1,NULL),(166,'NETHERLANDS','NL','NLD','Netherlands',528,1,NULL),(167,'NORWAY','NO','NOR','Norway',578,1,NULL),(168,'NEPAL','NP','NPL','Nepal',524,1,NULL),(169,'NAURU','NR','NRU','Nauru',520,1,NULL),(170,'NIUE','NU','NIU','Niue',570,0,NULL),(171,'NEW ZEALAND','NZ','NZL','New Zealand',554,1,NULL),(172,'OMAN','OM','OMN','Oman',512,1,NULL),(173,'PANAMA','PA','PAN','Panama',591,1,NULL),(174,'PERU','PE','PER','Peru',604,1,NULL),(175,'FRENCH POLYNESIA','PF','PYF','French Polynesia',258,0,NULL),(176,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea',598,1,NULL),(177,'PHILIPPINES','PH','PHL','Philippines',608,1,NULL),(178,'PAKISTAN','PK','PAK','Pakistan',586,1,NULL),(179,'POLAND','PL','POL','Poland',616,1,NULL),(180,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon',666,0,NULL),(181,'PITCAIRN','PN','PCN','Pitcairn',612,0,NULL),(182,'PALESTINE, STATE OF','PS','PSE','Palestine, State of',275,1,NULL),(183,'PORTUGAL','PT','PRT','Portugal',620,1,NULL),(184,'PALAU','PW','PLW','Palau',585,1,NULL),(185,'PARAGUAY','PY','PRY','Paraguay',600,1,NULL),(186,'QATAR','QA','QAT','Qatar',634,1,NULL),(187,'RéUNION','RE','REU','Réunion',638,0,NULL),(188,'ROMANIA','RO','ROU','Romania',642,1,NULL),(189,'SERBIA','RS','SRB','Serbia',688,1,NULL),(190,'RUSSIAN FEDERATION','RU','RUS','Russian Federation',643,1,NULL),(191,'RWANDA','RW','RWA','Rwanda',646,1,NULL),(192,'SAUDI ARABIA','SA','SAU','Saudi Arabia',682,1,NULL),(193,'SOLOMON ISLANDS','SB','SLB','Solomon Islands',90,1,NULL),(194,'SEYCHELLES','SC','SYC','Seychelles',690,1,NULL),(195,'SUDAN','SD','SDN','Sudan',729,1,NULL),(196,'SWEDEN','SE','SWE','Sweden',752,1,NULL),(197,'SINGAPORE','SG','SGP','Singapore',534,1,NULL),(198,'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA','SH','SHN','Saint Helena, Ascension and Tristan da Cunha',654,1,NULL),(199,'SLOVENIA','SI','SVN','Slovenia',705,1,NULL),(200,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen',744,0,NULL),(201,'SLOVAKIA','SK','SVK','Slovakia',703,1,NULL),(202,'SIERRA LEONE','SL','SLE','Sierra Leone',694,1,NULL),(203,'SAN MARINO','SM','SMR','San Marino',674,1,NULL),(204,'SENEGAL','SN','SEN','Senegal',686,1,NULL),(205,'SOMALIA','SO','SOM','Somalia',706,1,NULL),(206,'SURINAME','SR','SUR','Suriname',740,1,NULL),(207,'SOUTH SUDAN','SS','SSD','South Sudan',728,1,NULL),(208,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe',678,1,NULL),(209,'EL SALVADOR','SV','SLV','El Salvador',222,1,NULL),(210,'SINT MAARTEN (DUTCH PART)','SX','SXM','Sint Maarten (Dutch part)',534,0,NULL),(211,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic',760,1,NULL),(212,'SWAZILAND','SZ','SWZ','Swaziland',748,1,NULL),(213,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands',796,0,NULL),(214,'CHAD','TD','TCD','Chad',148,1,NULL),(215,'FRENCH SOUTHERN TERRITORIES','TF','ATF','French Southern Territories',260,0,NULL),(216,'TOGO','TG','TGO','Togo',768,1,NULL),(217,'THAILAND','TH','THA','Thailand',764,1,NULL),(218,'TAJIKISTAN','TJ','TJK','Tajikistan',762,1,NULL),(219,'TOKELAU','TK','TKL','Tokelau',772,0,NULL),(220,'TIMOR-LESTE','TL','TLS','Timor-Leste',626,1,NULL),(221,'TURKMENISTAN','TM','TKM','Turkmenistan',795,1,NULL),(222,'TUNISIA','TN','TUN','Tunisia',788,1,NULL),(223,'TONGA','TO','TON','Tonga',776,1,NULL),(224,'TURKEY','TR','TUR','Turkey',792,1,NULL),(225,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago',780,1,NULL),(226,'TUVALU','TV','TUV','Tuvalu',798,1,NULL),(227,'TAIWAN','TW','TWN','Taiwan',158,1,NULL),(228,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of',834,1,NULL),(229,'UKRAINE','UA','UKR','Ukraine',804,1,NULL),(230,'UGANDA','UG','UGA','Uganda',800,1,NULL),(231,'UNITED STATES MINOR OUTLYING ISLANDS','UM','UMI','United States Minor Outlying Islands',581,1,NULL),(232,'UNITED STATES','US','USA','United States',840,1,NULL),(233,'URUGUAY','UY','URY','Uruguay',858,1,NULL),(234,'UZBEKISTAN','UZ','UZB','Uzbekistan',860,1,NULL),(235,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)',336,0,NULL),(236,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines',670,1,NULL),(237,'VENEZUELA, BOLIVARIAN REPUBLIC OF','VE','VEN','Venezuela, Bolivarian Republic of',862,1,NULL),(238,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British',92,0,NULL),(239,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.',850,0,NULL),(240,'VIETNAM','VN','VNM','Vietnam',704,1,NULL),(241,'VANUATU','VU','VUT','Vanuatu',548,1,NULL),(242,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna',876,0,NULL),(243,'SAMOA','WS','WSM','Samoa',882,1,NULL),(244,'YEMEN','YE','YEM','Yemen',887,1,NULL),(245,'MAYOTTE','YT','MYT','Mayotte',175,0,NULL),(246,'SOUTH AFRICA','ZA','ZAF','South Africa',710,1,NULL),(247,'ZAMBIA','ZM','ZMB','Zambia',894,1,NULL),(248,'ZIMBABWE','ZW','ZWE','Zimbabwe',716,1,NULL);
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_credit_cards`
--

DROP TABLE IF EXISTS `spree_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `last_digits` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_credit_cards_on_user_id` (`user_id`),
  KEY `index_spree_credit_cards_on_payment_method_id` (`payment_method_id`),
  KEY `index_spree_credit_cards_on_address_id` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_credit_cards`
--

LOCK TABLES `spree_credit_cards` WRITE;
/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
INSERT INTO `spree_credit_cards` VALUES (1,'12','2018','visa','1111',NULL,'BGS-1234',NULL,'2016-07-14 21:05:25','2016-07-14 21:05:25','Sean Schofield',NULL,NULL,0),(2,'12','2017','visa','4242',NULL,'cus_8p8iQxvFoMz21c','card_18XURAGAEkO6IgrVn5EOAUTl','2016-07-15 11:24:53','2016-07-15 11:25:04','424242',1,1,1),(3,'12','2017',NULL,'4242',NULL,'cus_8pG0qUOnQrdcdB','card_18XbUCGAEkO6IgrVRJlrBXhn','2016-07-15 18:56:31','2016-07-15 18:56:32','John Smith',3,1,0),(4,'12','2017',NULL,'4242',NULL,'cus_8pT6z0pPwnDn7o','card_18Xo9zGAEkO6IgrVWrdKvckm','2016-07-16 08:28:29','2016-07-16 08:28:32','John Smith',6,1,0),(5,'12','2017',NULL,'4242',NULL,'cus_8pTBE7RLM7Ileo','card_18XoEyGAEkO6IgrVm0NxGBpL','2016-07-16 08:33:39','2016-07-16 08:33:40','John Smith',6,1,0),(6,'12','2017',NULL,'4242',NULL,'cus_8pTCQtWQZDcHcg','card_18XoGQGAEkO6IgrVaxXkNmPu','2016-07-16 08:35:09','2016-07-16 08:35:11','John Smith',6,1,1),(7,'12','2017',NULL,'4242',NULL,'cus_8pVTnkzZTkvIlq','card_18XqT1GAEkO6IgrVJBXClKgI','2016-07-16 10:56:18','2016-07-16 10:56:20','John Smith',11,1,0),(8,'12','2017',NULL,'4242',NULL,'cus_8pWHYaAoB7dW4I','card_18XrEjGAEkO6IgrVdSYS7qCE','2016-07-16 11:45:36','2016-07-16 11:45:38','John Smith',11,1,0),(9,'12','2017',NULL,'8210',NULL,'cus_8pWJ25jasUMfi5','card_18XrHGGAEkO6IgrVCEfkc2bD','2016-07-16 11:48:13','2016-07-16 11:48:14','John Smith',11,1,0),(10,'12','2017',NULL,'8210',NULL,'cus_8pWNYMdSoJRhqx','card_18XrKTGAEkO6IgrVNQ8MANaV','2016-07-16 11:51:32','2016-07-16 11:51:33','John Smith',11,1,0),(11,'12','2017',NULL,'1117',NULL,'cus_8pWUc02l1QANsq','card_18XrR5GAEkO6IgrVMtj25uST','2016-07-16 11:58:19','2016-07-16 11:58:23','John Smith',11,1,0),(13,'1','2017',NULL,'0077',NULL,'cus_8pY9tLJF9mpmZf','card_18Xt3HKg2L9oKTOlSk9Hhv0d','2016-07-16 13:41:54','2016-07-16 13:41:55','4000000000000077',11,1,0),(14,'12','2017',NULL,'4242',NULL,'cus_8pqmunkkIly4zn','card_18YB4sKg2L9oKTOlawYKTcQ4','2016-07-17 08:56:45','2016-07-17 08:56:47','John Smith',11,1,0),(16,'12','2017','american_express','0005',NULL,'cus_8pr7yyy2bxFHqB','card_18YBPOKg2L9oKTOlnO2nMlzb','2016-07-17 09:17:58','2016-07-17 09:17:59','1321321321 321321321321',NULL,1,0),(17,'12','2017','visa','4242',NULL,'cus_8prQ5Y6Bic5ivj','card_18YBhyDxzTpLqVl9m2UkQmy8','2016-07-17 09:37:09','2016-07-17 09:37:10','sdhgs dfg sdfg sdfg sdf gsdf g',NULL,1,0),(18,'12','2017',NULL,'4242',NULL,'cus_8ps6EU0gNLrkIj','card_18YCM7Kg2L9oKTOlAGBE5fpq','2016-07-17 10:18:33','2016-07-17 10:18:41','John Smith',11,1,0),(20,'12','2017','visa','4242',NULL,'cus_8psBRzXVE3H4qE','card_18YCQsKg2L9oKTOlqCO0DSea','2016-07-17 10:23:33','2016-07-17 10:23:34','45 Maydwell House 45 Maydwell House',NULL,1,0),(21,'12','2017',NULL,'4242',NULL,'cus_8psbgKQQtxDoeg','card_18YCq6Kg2L9oKTOly1dpwX5L','2016-07-17 10:49:37','2016-07-17 10:49:40','John Smith',11,1,1),(22,'12','2017',NULL,'4242',NULL,'cus_8pxqvpbfkXtAVa','card_18YHvCKg2L9oKTOl1bxK67As','2016-07-17 16:15:13','2016-07-17 16:15:15','FASDFASDFASDF',13,1,0),(23,'12','2017',NULL,'4242',NULL,'cus_8pxuqot0JfgyLK','card_18YHz7Kg2L9oKTOlNRcrQEZq','2016-07-17 16:19:16','2016-07-17 16:19:17','FASDFASDFASDF',13,1,0),(24,'12','2017',NULL,'4242',NULL,'cus_8pxxfcLgSmUDhz','card_18YI1rKg2L9oKTOlKfY0plYT','2016-07-17 16:22:06','2016-07-17 16:22:07','FASDFASDFASDF',13,1,0),(25,'12','2017',NULL,'4242',NULL,'cus_8py2xXorzmBpxv','card_18YI6UKg2L9oKTOlvcYb2lZb','2016-07-17 16:26:53','2016-07-17 16:26:55','FASDFASDFASDF',13,1,0),(26,'12','2017',NULL,'4242',NULL,'cus_8py47tcBORJgxC','card_18YI8fKg2L9oKTOlKykaNJH3','2016-07-17 16:29:08','2016-07-17 16:29:09','FASDFASDFASDF',13,1,0),(27,'12','2017',NULL,'4242',NULL,'cus_8py57iz6xhRlIX','card_18YI8yKg2L9oKTOlIYoXn2Bf','2016-07-17 16:29:27','2016-07-17 16:29:28','FASDFASDFASDF',13,1,0),(28,'12','2017',NULL,'4242',NULL,'cus_8py5bY0nIhHA00','card_18YI9MKg2L9oKTOlg1nbbb7J','2016-07-17 16:29:51','2016-07-17 16:29:53','FASDFASDFASDF',13,1,0),(29,'12','2017',NULL,'4242',NULL,'cus_8py7uPAvI5SZEP','card_18YIAmKg2L9oKTOloFLLLq82','2016-07-17 16:31:19','2016-07-17 16:31:20','FASDFASDFASDF',13,1,0),(30,'12','2017',NULL,'4242',NULL,'cus_8py7XimMzSPsoc','card_18YIBUKg2L9oKTOld6Owilcu','2016-07-17 16:32:03','2016-07-17 16:32:05','FASDFASDFASDF',13,1,0),(31,'12','2017',NULL,'4242',NULL,'cus_8pyAnLNCCM8tMZ','card_18YIEZKg2L9oKTOlPaLdslsx','2016-07-17 16:35:14','2016-07-17 16:35:15','FASDFASDFASDF',13,1,0),(44,'12','2017',NULL,'4242',NULL,'cus_8pyzx5Qil9Xizj','card_18YJ1MKg2L9oKTOlyTQkDv54','2016-07-17 17:25:39','2016-07-17 17:25:41','123123',13,1,0),(45,'12','2017',NULL,'4242',NULL,'cus_8pzGwaq3t7mxD4','card_18YJIKKg2L9oKTOltI2QSI2f','2016-07-17 17:43:11','2016-07-17 17:43:12','123123',13,1,0),(50,'12','2017',NULL,'4242',NULL,'cus_8q2cXXBnVvka5b','card_18YMWuKg2L9oKTOlZ27N6nPG','2016-07-17 21:10:27','2016-07-17 21:10:28','asdf',13,1,0),(51,'12','2017',NULL,'4242',NULL,'cus_8q2hoTtzTElCxN','card_18YMbsKg2L9oKTOlo8wftsU9','2016-07-17 21:15:35','2016-07-17 21:15:36','asdf',13,1,0),(55,'12','2017',NULL,'4242',NULL,'cus_8q2zazKtW6KLME','card_18YMt3Kg2L9oKTOlvqtgwE73','2016-07-17 21:33:20','2016-07-17 21:33:21','SDFASDF',13,1,0),(61,'12','2017',NULL,'4242',NULL,'cus_8q33h1J3m9MavY','card_18YMwuKg2L9oKTOlR46FHGoZ','2016-07-17 21:37:20','2016-07-17 21:37:21','44',12,1,0),(62,'12','2017',NULL,'4242',NULL,'cus_8qDXu9bqcTLF1U','card_18YX6JKg2L9oKTOlay3GtfL6','2016-07-18 08:27:42','2016-07-18 08:27:44','4242',13,1,0),(64,'12','2017',NULL,'0005',NULL,'cus_8qHKVba1ot8KYn','card_18YalqKg2L9oKTOlLQI6R9Z2','2016-07-18 12:22:48','2016-07-18 12:22:50','Anton',15,1,0),(65,'12','2017',NULL,'4242',NULL,'cus_8r7M4DmpFhuDXt','card_18ZP7TKg2L9oKTOlyp3EDBj3','2016-07-20 18:08:30','2016-07-20 18:08:31','4242',11,1,0),(68,'11','2020',NULL,'4242',NULL,'cus_8rlTc3ApgOhVIk','card_18a1wiKg2L9oKTOlJRXUyzMn','2016-07-22 11:35:59','2016-07-22 11:36:00','k',18,1,0),(71,'12','2017',NULL,'4242',NULL,'cus_8tC45M6Qb0rBW5','card_18bPfvKg2L9oKTOlGXtf80bd','2016-07-26 07:08:20','2016-07-26 07:08:23','test',13,1,0),(72,'12','2017',NULL,'4242',NULL,'cus_8tFP079KR9p3tZ','card_18bSujKg2L9oKTOll5i8WAXL','2016-07-26 10:35:50','2016-07-26 10:35:54','sadfgafgsdaf',13,1,0),(73,'12','2017',NULL,'4242',NULL,'cus_8tFX2YqRMS7v2m','card_18bT2bKg2L9oKTOljXhAh1dl','2016-07-26 10:44:00','2016-07-26 10:44:02','sadfgafgsdaf',13,1,0),(74,'12','2017',NULL,'4444',NULL,'cus_8tFZqUHjHVa7lO','card_18bT4eKg2L9oKTOl59wHSbTc','2016-07-26 10:46:07','2016-07-26 10:46:08','sadfgafgsdaf',13,1,0),(75,'12','2017',NULL,'4444',NULL,'cus_8tFb0jTZHew7H4','card_18bT6YKg2L9oKTOlcZtPYGOb','2016-07-26 10:48:05','2016-07-26 10:48:06','sadfgafgsdaf',13,1,0),(79,'12','2017',NULL,'4444',NULL,'cus_8tFlINRSk3vnbN','card_18bTFjKg2L9oKTOlSov5lmg0','2016-07-26 10:57:34','2016-07-26 10:57:37','sadfgafgsdaf',13,1,1),(80,'12','2017',NULL,'4444',NULL,'cus_8tFmskvOwdiejs','card_18bTH6Kg2L9oKTOl2zrjnkwo','2016-07-26 10:58:59','2016-07-26 10:59:01','sadfgafgsdaf',13,1,0),(81,'12','2017',NULL,'4242',NULL,'cus_8tFsSpuzqF41Dh','card_18bTMOKg2L9oKTOla9g8NWax','2016-07-26 11:04:27','2016-07-26 11:04:29','12йцфыяч',54,1,0);
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_currencies`
--

DROP TABLE IF EXISTS `spree_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_code` varchar(255) NOT NULL,
  `char_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `basic` tinyint(1) DEFAULT '0',
  `locale` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_currencies`
--

LOCK TABLES `spree_currencies` WRITE;
/*!40000 ALTER TABLE `spree_currencies` DISABLE KEYS */;
INSERT INTO `spree_currencies` VALUES (1,'826','GBP','',0,NULL,'2016-07-15 00:00:00','2016-07-15 00:00:00'),(2,'840','USD','',0,NULL,'2016-07-15 00:00:00','2016-07-15 00:00:00'),(3,'978','EUR','',1,NULL,'2016-07-15 00:00:00','2016-07-15 11:00:19');
/*!40000 ALTER TABLE `spree_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_currency_converters`
--

DROP TABLE IF EXISTS `spree_currency_converters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_currency_converters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) NOT NULL,
  `date_req` datetime NOT NULL,
  `nominal` float NOT NULL DEFAULT '1',
  `value` float NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_currency_converters`
--

LOCK TABLES `spree_currency_converters` WRITE;
/*!40000 ALTER TABLE `spree_currency_converters` DISABLE KEYS */;
INSERT INTO `spree_currency_converters` VALUES (19,2,'2016-07-14 00:00:00',1.1157,1,'2016-07-15 11:14:55','2016-07-15 11:14:55'),(20,1,'2016-07-14 00:00:00',0.83311,1,'2016-07-15 11:14:55','2016-07-15 11:14:55'),(21,3,'2016-07-14 00:00:00',1,1,'2016-07-15 11:14:56','2016-07-15 11:14:56');
/*!40000 ALTER TABLE `spree_currency_converters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_customer_returns`
--

DROP TABLE IF EXISTS `spree_customer_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_customer_returns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_customer_returns`
--

LOCK TABLES `spree_customer_returns` WRITE;
/*!40000 ALTER TABLE `spree_customer_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_customer_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_favorites`
--

DROP TABLE IF EXISTS `spree_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_favorites_on_user_id_and_product_id` (`user_id`,`product_id`),
  KEY `index_spree_favorites_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_favorites`
--

LOCK TABLES `spree_favorites` WRITE;
/*!40000 ALTER TABLE `spree_favorites` DISABLE KEYS */;
INSERT INTO `spree_favorites` VALUES (112,16,16,'2016-07-20 19:10:48','2016-07-20 19:10:48'),(124,18,1,'2016-07-22 12:00:32','2016-07-22 12:00:32'),(132,17,1,'2016-07-22 18:38:55','2016-07-22 18:38:55'),(134,17,2,'2016-07-22 18:39:05','2016-07-22 18:39:05'),(147,54,1,'2016-07-25 08:40:17','2016-07-25 08:40:17');
/*!40000 ALTER TABLE `spree_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_gateways`
--

DROP TABLE IF EXISTS `spree_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) DEFAULT 'development',
  `server` varchar(255) DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `preferences` text,
  PRIMARY KEY (`id`),
  KEY `index_spree_gateways_on_active` (`active`),
  KEY `index_spree_gateways_on_test_mode` (`test_mode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_gateways`
--

LOCK TABLES `spree_gateways` WRITE;
/*!40000 ALTER TABLE `spree_gateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_inventory_units`
--

DROP TABLE IF EXISTS `spree_inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pending` tinyint(1) DEFAULT '1',
  `line_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`),
  KEY `index_spree_inventory_units_on_line_item_id` (`line_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_inventory_units`
--

LOCK TABLES `spree_inventory_units` WRITE;
/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
INSERT INTO `spree_inventory_units` VALUES (1,'on_hand',1,1,1,'2016-07-14 21:05:24','2016-07-14 21:05:24',1,1),(2,'on_hand',2,2,2,'2016-07-14 21:05:25','2016-07-14 21:05:25',1,2),(4,'on_hand',2,3,4,'2016-07-15 11:24:00','2016-07-15 11:25:04',0,5),(5,'on_hand',2,3,4,'2016-07-15 11:24:00','2016-07-15 11:25:04',0,5),(6,'on_hand',2,3,4,'2016-07-15 11:24:00','2016-07-15 11:25:04',0,5),(7,'on_hand',2,3,4,'2016-07-15 11:24:00','2016-07-15 11:25:04',0,5),(20,'on_hand',1,6,15,'2016-07-15 11:51:55','2016-07-15 11:52:24',0,17),(26,'on_hand',1,4,17,'2016-07-15 13:18:55','2016-07-15 13:18:55',1,26),(27,'on_hand',1,4,17,'2016-07-15 13:18:55','2016-07-15 13:18:55',1,26),(28,'on_hand',1,4,17,'2016-07-15 13:18:55','2016-07-15 13:18:55',1,26),(29,'on_hand',1,4,17,'2016-07-15 13:18:55','2016-07-15 13:18:55',1,26),(30,'on_hand',1,4,17,'2016-07-15 13:18:55','2016-07-15 13:18:55',1,26),(31,'on_hand',2,5,18,'2016-07-15 13:21:17','2016-07-15 13:21:17',1,7),(119,'on_hand',1,11,31,'2016-07-15 18:46:01','2016-07-15 18:46:01',1,28),(120,'on_hand',1,11,31,'2016-07-15 18:46:01','2016-07-15 18:46:01',1,28),(121,'on_hand',1,11,31,'2016-07-15 18:46:01','2016-07-15 18:46:01',1,28),(122,'on_hand',1,11,31,'2016-07-15 18:46:01','2016-07-15 18:46:01',1,28),(123,'on_hand',1,11,31,'2016-07-15 18:46:01','2016-07-15 18:46:01',1,28),(124,'on_hand',1,11,31,'2016-07-15 18:46:01','2016-07-15 18:46:01',1,28),(127,'on_hand',2,25,33,'2016-07-17 09:16:29','2016-07-17 09:18:19',0,486),(128,'on_hand',2,26,34,'2016-07-17 09:36:36','2016-07-17 09:37:17',0,487),(129,'on_hand',12,31,35,'2016-07-17 10:22:43','2016-07-17 10:23:39',0,500),(130,'on_hand',1,128,36,'2016-07-26 09:00:13','2016-07-26 09:00:13',1,2992),(132,'on_hand',1,146,38,'2016-07-26 10:29:38','2016-07-26 10:29:38',1,3053),(133,'on_hand',1,147,39,'2016-07-26 10:33:34','2016-07-26 10:33:34',1,3078),(134,'on_hand',2,147,39,'2016-07-26 10:33:34','2016-07-26 10:33:34',1,3079),(135,'on_hand',5,147,39,'2016-07-26 10:33:34','2016-07-26 10:33:34',1,3080),(136,'on_hand',1,148,40,'2016-07-26 10:43:55','2016-07-26 10:43:55',1,3089),(137,'on_hand',1,149,41,'2016-07-26 10:45:35','2016-07-26 10:45:35',1,3090),(138,'on_hand',1,152,42,'2016-07-26 10:51:57','2016-07-26 10:51:57',1,3091),(139,'on_hand',2,152,42,'2016-07-26 10:51:57','2016-07-26 10:51:57',1,3092),(140,'on_hand',5,152,42,'2016-07-26 10:51:57','2016-07-26 10:51:57',1,3093),(141,'on_hand',1,154,43,'2016-07-26 10:53:19','2016-07-26 10:57:37',0,3094),(145,'on_hand',1,158,45,'2016-07-26 10:58:57','2016-07-26 10:58:57',1,3101),(155,'on_hand',1,160,49,'2016-07-26 11:03:00','2016-07-26 11:03:00',1,3120),(156,'on_hand',2,160,49,'2016-07-26 11:03:00','2016-07-26 11:03:00',1,3121),(157,'on_hand',5,160,49,'2016-07-26 11:03:00','2016-07-26 11:03:00',1,3122);
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_items`
--

DROP TABLE IF EXISTS `spree_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `adjustment_total` decimal(10,2) DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pre_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`),
  KEY `index_spree_line_items_on_tax_category_id` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3285 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_items`
--

LOCK TABLES `spree_line_items` WRITE;
/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
INSERT INTO `spree_line_items` VALUES (1,1,1,1,15.99,'2016-07-14 21:05:23','2016-07-14 21:05:25','USD',17.00,1,0.80,0.80,0.00,0.00,15.9900),(2,2,2,1,22.99,'2016-07-14 21:05:24','2016-07-14 21:05:26','USD',21.00,1,1.15,1.15,0.00,0.00,22.9900),(5,2,3,4,148.65,'2016-07-15 11:23:51','2016-07-15 11:23:54','USD',21.00,1,0.00,0.00,0.00,0.00,0.0000),(7,2,5,1,111.00,'2016-07-15 11:27:17','2016-07-15 11:27:17','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(17,1,6,1,999.00,'2016-07-15 11:51:18','2016-07-15 11:51:18','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(26,1,4,5,999.00,'2016-07-15 12:27:42','2016-07-15 12:27:42','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(28,1,11,6,999.00,'2016-07-15 16:33:04','2016-07-15 16:38:08','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(34,2,10,1,111.00,'2016-07-15 19:10:20','2016-07-15 19:10:20','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(140,1,14,2,999.00,'2016-07-15 20:06:43','2016-07-15 20:06:44','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(141,2,14,2,111.00,'2016-07-15 20:06:43','2016-07-15 20:06:44','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(142,3,14,2,123.00,'2016-07-15 20:06:44','2016-07-15 20:06:44','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(143,1,15,1,999.00,'2016-07-15 20:06:44','2016-07-15 20:06:44','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(144,4,14,2,587.00,'2016-07-15 20:06:44','2016-07-15 20:06:44','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(145,2,15,1,111.00,'2016-07-15 20:06:44','2016-07-15 20:06:44','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(146,3,15,1,123.00,'2016-07-15 20:06:44','2016-07-15 20:06:44','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(147,4,15,1,587.00,'2016-07-15 20:06:44','2016-07-15 20:06:45','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(340,1,12,1,999.00,'2016-07-15 21:01:40','2016-07-15 21:01:40','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(341,2,12,1,111.00,'2016-07-15 21:01:40','2016-07-15 21:01:40','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(342,3,12,1,123.00,'2016-07-15 21:01:40','2016-07-15 21:01:40','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(343,4,12,1,587.00,'2016-07-15 21:01:40','2016-07-15 21:01:40','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(344,6,12,1,111.00,'2016-07-15 21:01:40','2016-07-15 21:01:40','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(420,1,17,1,999.00,'2016-07-16 10:26:45','2016-07-16 10:26:45','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(425,5,18,2,888.00,'2016-07-16 10:30:36','2016-07-16 10:30:37','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(426,2,18,1,111.00,'2016-07-16 10:30:37','2016-07-16 10:30:38','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(427,3,18,1,123.00,'2016-07-16 10:30:38','2016-07-16 10:30:38','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(428,4,18,1,587.00,'2016-07-16 10:30:38','2016-07-16 10:30:38','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(429,6,18,1,111.00,'2016-07-16 10:30:38','2016-07-16 10:30:38','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(430,5,18,1,888.00,'2016-07-16 10:30:38','2016-07-16 10:30:38','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(439,2,21,1,111.00,'2016-07-16 10:36:11','2016-07-16 10:36:12','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(440,3,21,1,123.00,'2016-07-16 10:36:12','2016-07-16 10:36:12','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(441,4,21,1,587.00,'2016-07-16 10:36:12','2016-07-16 10:36:12','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(442,5,21,1,888.00,'2016-07-16 10:36:12','2016-07-16 10:36:12','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(443,6,21,1,111.00,'2016-07-16 10:36:12','2016-07-16 10:36:13','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(471,2,23,1,111.00,'2016-07-16 13:46:50','2016-07-16 13:46:50','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(472,3,23,1,123.00,'2016-07-16 13:46:50','2016-07-16 13:46:50','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(473,4,23,1,587.00,'2016-07-16 13:46:50','2016-07-16 13:46:50','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(474,5,23,1,888.00,'2016-07-16 13:46:50','2016-07-16 13:46:50','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(475,6,23,1,111.00,'2016-07-16 13:46:50','2016-07-16 13:46:51','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(484,2,24,1,148.65,'2016-07-17 09:12:14','2016-07-17 09:14:09','USD',21.00,1,0.00,0.00,0.00,0.00,0.0000),(486,2,25,1,111.00,'2016-07-17 09:15:11','2016-07-17 09:15:11','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(487,2,26,1,111.00,'2016-07-17 09:35:25','2016-07-17 09:35:25','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(491,2,27,1,111.00,'2016-07-17 09:43:32','2016-07-17 09:43:32','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(495,2,28,1,111.00,'2016-07-17 10:06:35','2016-07-17 10:06:35','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(496,2,30,1,111.00,'2016-07-17 10:13:04','2016-07-17 10:13:05','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(500,12,31,1,7444.00,'2016-07-17 10:21:40','2016-07-17 10:21:40','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(511,2,33,1,111.00,'2016-07-17 10:52:46','2016-07-17 10:52:47','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(512,2,35,1,111.00,'2016-07-17 10:52:50','2016-07-17 10:52:50','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(513,2,34,1,111.00,'2016-07-17 10:52:50','2016-07-17 10:52:50','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(514,2,36,1,111.00,'2016-07-17 11:06:34','2016-07-17 11:06:34','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(517,2,37,1,111.00,'2016-07-17 11:21:24','2016-07-17 11:21:25','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(520,6,38,1,111.00,'2016-07-17 15:42:12','2016-07-17 15:42:13','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(523,6,39,1,111.00,'2016-07-17 16:19:14','2016-07-17 16:19:14','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(524,6,39,1,111.00,'2016-07-17 16:19:14','2016-07-17 16:19:14','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(558,2,41,1,111.00,'2016-07-17 17:01:46','2016-07-17 17:01:46','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(559,6,41,1,111.00,'2016-07-17 17:01:46','2016-07-17 17:01:46','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(560,7,41,1,2221.00,'2016-07-17 17:01:46','2016-07-17 17:01:46','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(561,1,40,1,999.00,'2016-07-17 17:04:32','2016-07-17 17:04:32','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(562,2,40,1,111.00,'2016-07-17 17:04:32','2016-07-17 17:04:32','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(563,5,40,1,888.00,'2016-07-17 17:04:32','2016-07-17 17:04:32','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(570,1,42,1,999.00,'2016-07-17 17:09:22','2016-07-17 17:09:22','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(571,2,42,1,111.00,'2016-07-17 17:09:22','2016-07-17 17:09:22','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(572,5,42,1,888.00,'2016-07-17 17:09:22','2016-07-17 17:09:22','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(573,1,43,1,999.00,'2016-07-17 17:09:51','2016-07-17 17:09:52','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(574,2,43,1,111.00,'2016-07-17 17:09:52','2016-07-17 17:09:52','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(575,5,43,1,888.00,'2016-07-17 17:09:52','2016-07-17 17:09:52','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(576,1,44,1,999.00,'2016-07-17 17:10:47','2016-07-17 17:10:47','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(577,2,44,1,111.00,'2016-07-17 17:10:47','2016-07-17 17:10:48','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(578,5,44,1,888.00,'2016-07-17 17:10:48','2016-07-17 17:10:48','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(579,1,45,1,999.00,'2016-07-17 17:12:52','2016-07-17 17:12:52','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(580,2,45,1,111.00,'2016-07-17 17:12:52','2016-07-17 17:12:52','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(581,5,45,1,888.00,'2016-07-17 17:12:52','2016-07-17 17:12:52','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(583,2,46,1,111.00,'2016-07-17 17:13:27','2016-07-17 17:13:27','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(584,5,46,1,888.00,'2016-07-17 17:13:27','2016-07-17 17:13:27','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(585,1,46,1,999.00,'2016-07-17 17:13:28','2016-07-17 17:13:28','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(586,2,46,1,111.00,'2016-07-17 17:13:28','2016-07-17 17:13:28','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(587,5,46,1,888.00,'2016-07-17 17:13:28','2016-07-17 17:13:28','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(588,1,47,1,999.00,'2016-07-17 17:17:32','2016-07-17 17:17:32','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(589,2,47,1,111.00,'2016-07-17 17:17:32','2016-07-17 17:17:32','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(590,5,47,1,888.00,'2016-07-17 17:17:32','2016-07-17 17:17:33','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(591,1,48,1,999.00,'2016-07-17 17:18:30','2016-07-17 17:18:30','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(592,2,48,1,111.00,'2016-07-17 17:18:31','2016-07-17 17:18:31','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(593,5,48,1,888.00,'2016-07-17 17:18:31','2016-07-17 17:18:31','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(594,1,49,1,999.00,'2016-07-17 17:21:28','2016-07-17 17:21:28','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(595,2,49,1,111.00,'2016-07-17 17:21:28','2016-07-17 17:21:28','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(596,5,49,1,888.00,'2016-07-17 17:21:28','2016-07-17 17:21:28','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(600,1,50,1,999.00,'2016-07-17 17:22:14','2016-07-17 17:22:14','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(601,2,50,1,111.00,'2016-07-17 17:22:14','2016-07-17 17:22:14','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(602,5,50,1,888.00,'2016-07-17 17:22:14','2016-07-17 17:22:14','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(603,1,51,1,999.00,'2016-07-17 17:22:58','2016-07-17 17:22:58','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(604,2,51,1,111.00,'2016-07-17 17:22:58','2016-07-17 17:22:58','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(605,5,51,1,888.00,'2016-07-17 17:22:58','2016-07-17 17:22:58','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(606,1,52,1,999.00,'2016-07-17 17:24:56','2016-07-17 17:24:56','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(607,2,52,1,111.00,'2016-07-17 17:24:56','2016-07-17 17:24:56','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(608,5,52,1,888.00,'2016-07-17 17:24:56','2016-07-17 17:24:56','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(609,1,53,1,999.00,'2016-07-17 17:25:22','2016-07-17 17:25:22','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(610,2,53,1,111.00,'2016-07-17 17:25:22','2016-07-17 17:25:22','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(611,5,53,1,888.00,'2016-07-17 17:25:22','2016-07-17 17:25:22','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(621,2,54,1,111.00,'2016-07-17 17:27:35','2016-07-17 17:27:35','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(622,6,54,1,111.00,'2016-07-17 17:27:35','2016-07-17 17:27:35','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(623,7,54,1,2221.00,'2016-07-17 17:27:35','2016-07-17 17:27:35','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(630,1,56,1,999.00,'2016-07-17 17:43:02','2016-07-17 17:43:02','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(631,2,56,1,111.00,'2016-07-17 17:43:02','2016-07-17 17:43:02','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(632,5,56,1,888.00,'2016-07-17 17:43:02','2016-07-17 17:43:02','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(642,2,57,1,111.00,'2016-07-17 17:43:25','2016-07-17 17:43:25','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(643,6,57,1,111.00,'2016-07-17 17:43:26','2016-07-17 17:43:26','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(644,7,57,1,2221.00,'2016-07-17 17:43:26','2016-07-17 17:43:26','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(651,2,58,1,111.00,'2016-07-17 17:46:40','2016-07-17 17:46:40','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(652,6,58,1,111.00,'2016-07-17 17:46:40','2016-07-17 17:46:40','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(653,7,58,1,2221.00,'2016-07-17 17:46:40','2016-07-17 17:46:40','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(660,1,59,1,999.00,'2016-07-17 17:48:29','2016-07-17 17:48:30','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(661,2,59,1,111.00,'2016-07-17 17:48:30','2016-07-17 17:48:30','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(662,5,59,1,888.00,'2016-07-17 17:48:30','2016-07-17 17:48:30','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(669,1,60,1,999.00,'2016-07-17 17:52:52','2016-07-17 17:52:52','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(670,2,60,1,111.00,'2016-07-17 17:52:52','2016-07-17 17:52:52','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(671,5,60,1,888.00,'2016-07-17 17:52:52','2016-07-17 17:52:52','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(696,1,62,1,999.00,'2016-07-17 21:15:22','2016-07-17 21:15:23','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(697,2,62,1,111.00,'2016-07-17 21:15:23','2016-07-17 21:15:23','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(698,5,62,1,888.00,'2016-07-17 21:15:23','2016-07-17 21:15:23','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(714,1,64,1,999.00,'2016-07-17 21:32:48','2016-07-17 21:32:48','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(715,2,64,1,111.00,'2016-07-17 21:32:49','2016-07-17 21:32:49','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(716,5,64,1,888.00,'2016-07-17 21:32:49','2016-07-17 21:32:49','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(722,2,65,1,111.00,'2016-07-17 21:35:02','2016-07-17 21:35:02','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(735,1,66,1,999.00,'2016-07-18 08:27:22','2016-07-18 08:27:23','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(736,2,66,1,111.00,'2016-07-18 08:27:23','2016-07-18 08:27:23','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(737,5,66,1,888.00,'2016-07-18 08:27:23','2016-07-18 08:27:23','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(782,1,71,1,999.00,'2016-07-18 12:12:28','2016-07-18 12:22:52','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(795,1,67,1,999.00,'2016-07-18 14:00:12','2016-07-18 14:00:12','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(796,2,67,1,111.00,'2016-07-18 14:00:12','2016-07-18 14:00:12','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(797,5,67,1,888.00,'2016-07-18 14:00:12','2016-07-18 14:00:12','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(1163,1,75,1,999.00,'2016-07-20 10:48:32','2016-07-20 10:48:32','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(1376,6,86,1,111.00,'2016-07-20 12:28:24','2016-07-20 12:28:25','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(1519,2,82,1,111.00,'2016-07-20 16:00:10','2016-07-20 16:00:10','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(1520,6,82,1,111.00,'2016-07-20 16:00:10','2016-07-20 16:00:10','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(1530,2,77,1,111.00,'2016-07-20 18:08:12','2016-07-20 18:08:12','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(1531,6,77,1,111.00,'2016-07-20 18:08:12','2016-07-20 18:08:12','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(1532,2,90,1,111.00,'2016-07-20 18:17:38','2016-07-20 18:17:38','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(1533,6,90,1,111.00,'2016-07-20 18:17:38','2016-07-20 18:17:38','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(1538,1,80,1,999.00,'2016-07-21 09:33:25','2016-07-21 09:33:25','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(1707,1,68,1,999.00,'2016-07-22 09:08:29','2016-07-22 09:08:29','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(1708,2,68,1,111.00,'2016-07-22 09:08:29','2016-07-22 09:08:29','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(1709,7,68,1,2221.00,'2016-07-22 09:08:29','2016-07-22 09:08:29','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(1811,4,79,1,587.00,'2016-07-22 11:34:58','2016-07-22 11:36:03','GBP',17.00,1,29.35,29.35,0.00,0.00,587.0000),(2614,1,95,1,999.00,'2016-07-24 09:17:59','2016-07-24 09:18:00','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2615,2,95,1,111.00,'2016-07-24 09:18:00','2016-07-24 09:18:00','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2616,1,96,1,999.00,'2016-07-24 09:19:05','2016-07-24 09:19:05','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2617,2,96,1,111.00,'2016-07-24 09:19:05','2016-07-24 09:19:05','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2618,1,97,1,999.00,'2016-07-24 09:22:34','2016-07-24 09:22:34','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2619,2,97,1,111.00,'2016-07-24 09:22:34','2016-07-24 09:22:34','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2620,1,98,1,999.00,'2016-07-24 09:23:35','2016-07-24 09:23:35','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2621,2,98,1,111.00,'2016-07-24 09:23:35','2016-07-24 09:23:35','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2626,1,99,1,999.00,'2016-07-24 09:26:11','2016-07-24 09:26:11','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2627,2,99,1,111.00,'2016-07-24 09:26:11','2016-07-24 09:26:11','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2630,1,100,1,999.00,'2016-07-24 09:27:18','2016-07-24 09:27:18','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2631,2,100,1,111.00,'2016-07-24 09:27:18','2016-07-24 09:27:19','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2632,1,101,1,999.00,'2016-07-24 09:29:01','2016-07-24 09:29:01','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2633,2,101,1,111.00,'2016-07-24 09:29:01','2016-07-24 09:29:01','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2638,1,106,1,999.00,'2016-07-24 09:52:21','2016-07-24 09:52:21','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2639,2,106,1,111.00,'2016-07-24 09:52:21','2016-07-24 09:52:21','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2646,1,107,1,999.00,'2016-07-24 11:07:51','2016-07-24 11:07:51','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2647,2,107,1,111.00,'2016-07-24 11:07:51','2016-07-24 11:07:52','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2648,1,110,1,999.00,'2016-07-24 11:14:49','2016-07-24 11:14:49','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2649,2,110,1,111.00,'2016-07-24 11:14:49','2016-07-24 11:14:49','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2658,1,111,1,999.00,'2016-07-24 11:17:57','2016-07-24 11:17:58','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2659,2,111,1,111.00,'2016-07-24 11:17:58','2016-07-24 11:17:58','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2743,1,85,1,999.00,'2016-07-25 11:08:16','2016-07-25 11:08:16','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2764,2,91,1,111.00,'2016-07-25 11:56:04','2016-07-25 11:56:04','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2825,2,93,1,111.00,'2016-07-25 17:55:10','2016-07-25 17:55:10','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2875,1,118,1,999.00,'2016-07-26 03:35:16','2016-07-26 03:35:16','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2876,2,118,1,111.00,'2016-07-26 03:35:16','2016-07-26 03:35:16','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2877,5,118,1,888.00,'2016-07-26 03:35:16','2016-07-26 03:35:16','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2946,1,117,1,999.00,'2016-07-26 07:07:06','2016-07-26 07:07:06','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2967,1,116,1,999.00,'2016-07-26 08:22:28','2016-07-26 08:22:28','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2968,2,116,1,111.00,'2016-07-26 08:22:28','2016-07-26 08:22:28','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(2969,5,116,1,888.00,'2016-07-26 08:22:28','2016-07-26 08:22:28','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2970,1,119,1,999.00,'2016-07-26 08:31:12','2016-07-26 08:31:13','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2972,1,120,1,999.00,'2016-07-26 08:32:38','2016-07-26 08:32:38','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2973,1,121,1,999.00,'2016-07-26 08:34:45','2016-07-26 08:34:45','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2979,1,122,1,999.00,'2016-07-26 08:43:17','2016-07-26 08:43:18','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(2980,1,123,1,999.00,'2016-07-26 08:43:49','2016-07-26 08:43:49','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2987,1,124,1,999.00,'2016-07-26 08:46:36','2016-07-26 08:46:37','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(2989,1,126,1,999.00,'2016-07-26 08:54:35','2016-07-26 08:54:36','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(2992,1,128,1,999.00,'2016-07-26 09:00:11','2016-07-26 09:00:13','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(2993,1,129,1,999.00,'2016-07-26 09:00:43','2016-07-26 09:00:45','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(2994,1,130,1,999.00,'2016-07-26 09:00:52','2016-07-26 09:00:53','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(2995,1,131,1,999.00,'2016-07-26 09:03:05','2016-07-26 09:03:05','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2996,1,132,1,999.00,'2016-07-26 09:16:19','2016-07-26 09:16:19','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(2998,1,133,1,999.00,'2016-07-26 09:25:55','2016-07-26 09:25:56','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(2999,1,135,1,999.00,'2016-07-26 09:29:21','2016-07-26 09:29:22','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3000,1,136,1,999.00,'2016-07-26 09:34:32','2016-07-26 09:34:33','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3002,1,137,1,999.00,'2016-07-26 09:35:30','2016-07-26 09:35:31','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3005,1,138,1,999.00,'2016-07-26 09:47:21','2016-07-26 09:47:21','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3006,1,125,1,999.00,'2016-07-26 09:47:36','2016-07-26 09:47:44','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3007,2,125,1,111.00,'2016-07-26 09:47:38','2016-07-26 09:47:44','GBP',21.00,1,5.55,5.55,0.00,0.00,111.0000),(3008,5,125,1,888.00,'2016-07-26 09:47:41','2016-07-26 09:47:44','GBP',17.00,1,44.40,44.40,0.00,0.00,888.0000),(3009,1,139,1,999.00,'2016-07-26 09:47:49','2016-07-26 09:47:49','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3010,1,140,1,999.00,'2016-07-26 09:50:31','2016-07-26 09:50:37','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3011,1,141,1,999.00,'2016-07-26 09:59:23','2016-07-26 09:59:25','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3012,1,142,1,999.00,'2016-07-26 10:02:03','2016-07-26 10:02:05','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3027,1,143,1,999.00,'2016-07-26 10:22:47','2016-07-26 10:22:51','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3029,2,127,1,111.00,'2016-07-26 10:23:13','2016-07-26 10:23:13','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(3030,1,127,1,999.00,'2016-07-26 10:23:13','2016-07-26 10:23:13','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3033,1,145,1,999.00,'2016-07-26 10:24:46','2016-07-26 10:24:47','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3053,1,146,1,999.00,'2016-07-26 10:29:36','2016-07-26 10:29:39','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3078,1,147,1,999.00,'2016-07-26 10:33:32','2016-07-26 10:33:34','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3079,2,147,1,111.00,'2016-07-26 10:33:32','2016-07-26 10:33:34','GBP',21.00,1,5.55,5.55,0.00,0.00,111.0000),(3080,5,147,1,888.00,'2016-07-26 10:33:32','2016-07-26 10:33:34','GBP',17.00,1,44.40,44.40,0.00,0.00,888.0000),(3081,1,144,1,999.00,'2016-07-26 10:37:18','2016-07-26 10:37:18','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3082,1,144,1,999.00,'2016-07-26 10:37:18','2016-07-26 10:37:18','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3083,2,144,1,111.00,'2016-07-26 10:37:18','2016-07-26 10:37:18','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(3084,6,144,1,111.00,'2016-07-26 10:37:18','2016-07-26 10:37:18','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3085,2,144,1,111.00,'2016-07-26 10:37:18','2016-07-26 10:37:18','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(3086,7,144,1,2221.00,'2016-07-26 10:37:18','2016-07-26 10:37:18','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3087,6,144,1,111.00,'2016-07-26 10:37:18','2016-07-26 10:37:18','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3088,7,144,1,2221.00,'2016-07-26 10:37:18','2016-07-26 10:37:18','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3089,1,148,1,999.00,'2016-07-26 10:43:45','2016-07-26 10:43:55','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3090,1,149,1,999.00,'2016-07-26 10:45:35','2016-07-26 10:45:36','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3091,1,152,1,999.00,'2016-07-26 10:51:56','2016-07-26 10:51:57','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3092,2,152,1,111.00,'2016-07-26 10:51:56','2016-07-26 10:51:57','GBP',21.00,1,5.55,5.55,0.00,0.00,111.0000),(3093,5,152,1,888.00,'2016-07-26 10:51:56','2016-07-26 10:51:57','GBP',17.00,1,44.40,44.40,0.00,0.00,888.0000),(3094,1,154,1,999.00,'2016-07-26 10:53:15','2016-07-26 10:57:37','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3098,1,155,1,999.00,'2016-07-26 10:57:02','2016-07-26 10:57:04','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3099,2,155,1,111.00,'2016-07-26 10:57:03','2016-07-26 10:57:04','GBP',21.00,1,5.55,5.55,0.00,0.00,111.0000),(3100,5,155,1,888.00,'2016-07-26 10:57:04','2016-07-26 10:57:04','GBP',17.00,1,44.40,44.40,0.00,0.00,888.0000),(3101,1,158,1,999.00,'2016-07-26 10:58:54','2016-07-26 10:58:57','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3120,1,160,1,999.00,'2016-07-26 11:02:57','2016-07-26 11:03:00','GBP',17.00,1,49.95,49.95,0.00,0.00,999.0000),(3121,2,160,1,111.00,'2016-07-26 11:02:58','2016-07-26 11:03:00','GBP',21.00,1,5.55,5.55,0.00,0.00,111.0000),(3122,5,160,1,888.00,'2016-07-26 11:02:58','2016-07-26 11:03:00','GBP',17.00,1,44.40,44.40,0.00,0.00,888.0000),(3154,2,163,1,111.00,'2016-07-26 12:22:00','2016-07-26 12:22:00','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(3155,6,163,1,111.00,'2016-07-26 12:22:00','2016-07-26 12:22:00','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3156,1,163,1,999.00,'2016-07-26 12:22:00','2016-07-26 12:22:00','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3157,2,163,1,111.00,'2016-07-26 12:22:00','2016-07-26 12:22:01','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(3158,6,163,1,111.00,'2016-07-26 12:22:01','2016-07-26 12:22:01','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3202,1,164,1,999.00,'2016-07-26 15:32:36','2016-07-26 15:32:36','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3205,1,166,1,999.00,'2016-07-26 15:46:39','2016-07-26 15:46:39','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3206,7,166,1,2221.00,'2016-07-26 15:46:39','2016-07-26 15:46:39','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3261,1,161,1,999.00,'2016-07-26 16:47:47','2016-07-26 16:47:47','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3262,2,161,1,111.00,'2016-07-26 16:47:47','2016-07-26 16:47:47','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(3263,6,161,1,111.00,'2016-07-26 16:47:47','2016-07-26 16:47:47','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3282,1,167,1,999.00,'2016-07-27 07:42:59','2016-07-27 07:42:59','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000),(3283,2,167,1,111.00,'2016-07-27 07:43:00','2016-07-27 07:43:00','GBP',21.00,1,0.00,0.00,0.00,0.00,0.0000),(3284,5,167,1,888.00,'2016-07-27 07:43:00','2016-07-27 07:43:00','GBP',17.00,1,0.00,0.00,0.00,0.00,0.0000);
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_log_entries`
--

DROP TABLE IF EXISTS `spree_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `details` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_log_entries_on_source_id_and_source_type` (`source_id`,`source_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_log_entries`
--

LOCK TABLES `spree_log_entries` WRITE;
/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
INSERT INTO `spree_log_entries` VALUES (1,3,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18XURIGAEkO6IgrVar9gVXt7\n  object: charge\n  amount: 59960\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: \n  captured: false\n  created: 1468581904\n  currency: usd\n  customer: cus_8p8iQxvFoMz21c\n  description: \'Spree Order ID: R344286079-P0RWVQ8J\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18XURIGAEkO6IgrVar9gVXt7/refunds\"\n  shipping: \n  source:\n    id: card_18XURAGAEkO6IgrVn5EOAUTl\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: 45 Maydwell House\n    address_line1_check: pass\n    address_line2: Thomas Road\n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: Visa\n    country: US\n    customer: cus_8p8iQxvFoMz21c\n    cvc_check: pass\n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: CsCBGFQyXXKicbkj\n    funding: credit\n    last4: \'4242\'\n    metadata: {}\n    name: \'424242\'\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18XURIGAEkO6IgrVar9gVXt7\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-15 11:25:04','2016-07-15 11:25:04'),(2,5,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18XUrkGAEkO6IgrVZ96JhfPj\n  object: charge\n  amount: 100400\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: \n  captured: false\n  created: 1468583544\n  currency: gbp\n  customer: cus_8p8iQxvFoMz21c\n  description: \'Spree Order ID: R844936027-PTNZ77SJ\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18XUrkGAEkO6IgrVZ96JhfPj/refunds\"\n  shipping: \n  source:\n    id: card_18XURAGAEkO6IgrVn5EOAUTl\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: 45 Maydwell House\n    address_line1_check: pass\n    address_line2: Thomas Road\n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: Visa\n    country: US\n    customer: cus_8p8iQxvFoMz21c\n    cvc_check: \n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: CsCBGFQyXXKicbkj\n    funding: credit\n    last4: \'4242\'\n    metadata: {}\n    name: \'424242\'\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18XUrkGAEkO6IgrVZ96JhfPj\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-15 11:52:24','2016-07-15 11:52:24'),(3,15,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18XoGRGAEkO6IgrV6r8iesCI\n  object: charge\n  amount: 111500\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: \n  captured: false\n  created: 1468658111\n  currency: gbp\n  customer: cus_8pTCQtWQZDcHcg\n  description: \'Spree Order ID: R216516959-PICTAOBN\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18XoGRGAEkO6IgrV6r8iesCI/refunds\"\n  shipping: \n  source:\n    id: card_18XoGQGAEkO6IgrVaxXkNmPu\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: aydwell Houseуаааа\n    address_line1_check: pass\n    address_line2: Thomas Road\n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: Visa\n    country: US\n    customer: cus_8pTCQtWQZDcHcg\n    cvc_check: pass\n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: CsCBGFQyXXKicbkj\n    funding: credit\n    last4: \'4242\'\n    metadata: {}\n    name: John Smith\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18XoGRGAEkO6IgrV6r8iesCI\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-16 08:35:11','2016-07-16 08:35:11'),(4,37,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18XrEkGAEkO6IgrVay9Q5uvM\n  object: charge\n  amount: 111000\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: \n  captured: false\n  created: 1468669538\n  currency: gbp\n  customer: cus_8pWHYaAoB7dW4I\n  description: \'Spree Order ID: R236434522-PYQJLNMP\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18XrEkGAEkO6IgrVay9Q5uvM/refunds\"\n  shipping: \n  source:\n    id: card_18XrEjGAEkO6IgrVdSYS7qCE\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: 45 Maydwell House\n    address_line1_check: pass\n    address_line2: Thomas Road\n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: Visa\n    country: US\n    customer: cus_8pWHYaAoB7dW4I\n    cvc_check: pass\n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: CsCBGFQyXXKicbkj\n    funding: credit\n    last4: \'4242\'\n    metadata: {}\n    name: John Smith\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18XrEkGAEkO6IgrVay9Q5uvM\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-16 11:45:38','2016-07-16 11:45:38'),(5,55,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18YB4tKg2L9oKTOl1GGdlb6T\n  object: charge\n  amount: 11100\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: \n  captured: false\n  created: 1468745807\n  currency: gbp\n  customer: cus_8pqmunkkIly4zn\n  description: \'Spree Order ID: R864827341-PXHTIWU8\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18YB4tKg2L9oKTOl1GGdlb6T/refunds\"\n  shipping: \n  source:\n    id: card_18YB4sKg2L9oKTOlawYKTcQ4\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: 45 Maydwell House\n    address_line1_check: pass\n    address_line2: Thomas Road\n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: Visa\n    country: US\n    customer: cus_8pqmunkkIly4zn\n    cvc_check: pass\n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: JREKEf4C8b8oIQko\n    funding: credit\n    last4: \'4242\'\n    metadata: {}\n    name: John Smith\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18YB4tKg2L9oKTOl1GGdlb6T\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-17 08:56:47','2016-07-17 08:56:47'),(6,60,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18YBPjKg2L9oKTOljsf7c2tr\n  object: charge\n  amount: 11600\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: \n  captured: false\n  created: 1468747099\n  currency: gbp\n  customer: cus_8pr7yyy2bxFHqB\n  description: \'Spree Order ID: R963564670-P4HLV96C\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18YBPjKg2L9oKTOljsf7c2tr/refunds\"\n  shipping: \n  source:\n    id: card_18YBPOKg2L9oKTOlnO2nMlzb\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: 45 Maydwell House\n    address_line1_check: pass\n    address_line2: Thomas Road\n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: American Express\n    country: US\n    customer: cus_8pr7yyy2bxFHqB\n    cvc_check: pass\n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: xTkaO2ymszed1ep7\n    funding: credit\n    last4: \'0005\'\n    metadata: {}\n    name: 1321321321 321321321321\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18YBPjKg2L9oKTOljsf7c2tr\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-17 09:18:19','2016-07-17 09:18:19'),(7,61,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18YBi4DxzTpLqVl9B9sg61Bw\n  object: charge\n  amount: 11600\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: txn_18YBi4DxzTpLqVl9ZBzka3Po\n  captured: true\n  created: 1468748236\n  currency: gbp\n  customer: cus_8prQ5Y6Bic5ivj\n  description: \'Spree Order ID: R393541638-PIL0OZII\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18YBi4DxzTpLqVl9B9sg61Bw/refunds\"\n  shipping: \n  source:\n    id: card_18YBhyDxzTpLqVl9m2UkQmy8\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: 45 Maydwell House\n    address_line1_check: pass\n    address_line2: Thomas Road\n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: Visa\n    country: US\n    customer: cus_8prQ5Y6Bic5ivj\n    cvc_check: pass\n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: cDaPsXRZCpChKneF\n    funding: credit\n    last4: \'4242\'\n    metadata: {}\n    name: sdhgs dfg sdfg sdfg sdf gsdf g\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18YBi4DxzTpLqVl9B9sg61Bw\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-17 09:37:17','2016-07-17 09:37:17'),(8,71,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18YCM8Kg2L9oKTOleyHF8dQX\n  object: charge\n  amount: 11100\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: txn_18YCM8Kg2L9oKTOlZMUIWbjK\n  captured: true\n  created: 1468750720\n  currency: gbp\n  customer: cus_8ps6EU0gNLrkIj\n  description: \'Spree Order ID: R090871566-PHEP3ZDY\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18YCM8Kg2L9oKTOleyHF8dQX/refunds\"\n  shipping: \n  source:\n    id: card_18YCM7Kg2L9oKTOlAGBE5fpq\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: 45 Maydwell House\n    address_line1_check: pass\n    address_line2: Thomas Road\n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: Visa\n    country: US\n    customer: cus_8ps6EU0gNLrkIj\n    cvc_check: pass\n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: JREKEf4C8b8oIQko\n    funding: credit\n    last4: \'4242\'\n    metadata: {}\n    name: John Smith\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18YCM8Kg2L9oKTOleyHF8dQX\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-17 10:18:40','2016-07-17 10:18:40'),(9,73,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18YCQwKg2L9oKTOl71gnHBHs\n  object: charge\n  amount: 744900\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: txn_18YCQwKg2L9oKTOlP5FVv7Kg\n  captured: true\n  created: 1468751018\n  currency: gbp\n  customer: cus_8psBRzXVE3H4qE\n  description: \'Spree Order ID: R315845979-P9RFEV97\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18YCQwKg2L9oKTOl71gnHBHs/refunds\"\n  shipping: \n  source:\n    id: card_18YCQsKg2L9oKTOlqCO0DSea\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: 45 Maydwell House\n    address_line1_check: pass\n    address_line2: Thomas Road\n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: Visa\n    country: US\n    customer: cus_8psBRzXVE3H4qE\n    cvc_check: pass\n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: JREKEf4C8b8oIQko\n    funding: credit\n    last4: \'4242\'\n    metadata: {}\n    name: 45 Maydwell House 45 Maydwell House\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18YCQwKg2L9oKTOl71gnHBHs\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-17 10:23:38','2016-07-17 10:23:38'),(10,77,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18YCq7Kg2L9oKTOl0kx013qj\n  object: charge\n  amount: 11100\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: txn_18YCq7Kg2L9oKTOl7A9Z78pC\n  captured: true\n  created: 1468752579\n  currency: gbp\n  customer: cus_8psbgKQQtxDoeg\n  description: \'Spree Order ID: R783286826-PF9WWY7M\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18YCq7Kg2L9oKTOl0kx013qj/refunds\"\n  shipping: \n  source:\n    id: card_18YCq6Kg2L9oKTOly1dpwX5L\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: 45 Maydwell House\n    address_line1_check: pass\n    address_line2: Thomas Road\n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: Visa\n    country: US\n    customer: cus_8psbgKQQtxDoeg\n    cvc_check: pass\n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: JREKEf4C8b8oIQko\n    funding: credit\n    last4: \'4242\'\n    metadata: {}\n    name: John Smith\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18YCq7Kg2L9oKTOl0kx013qj\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-17 10:49:40','2016-07-17 10:49:40'),(11,148,'Spree::Payment','--- !ruby/object:ActiveMerchant::Billing::Response\nparams:\n  id: ch_18bTFlKg2L9oKTOlDS6h6SO5\n  object: charge\n  amount: 105395\n  amount_refunded: 0\n  application_fee: \n  balance_transaction: txn_18bTFlKg2L9oKTOlUL2sXMS4\n  captured: true\n  created: 1469530657\n  currency: gbp\n  customer: cus_8tFlINRSk3vnbN\n  description: \'Spree Order ID: R695798486-PFMSVPF6\'\n  destination: \n  dispute: \n  failure_code: \n  failure_message: \n  fraud_details: {}\n  invoice: \n  livemode: false\n  metadata: {}\n  order: \n  paid: true\n  receipt_email: \n  receipt_number: \n  refunded: false\n  refunds:\n    object: list\n    data: []\n    has_more: false\n    total_count: 0\n    url: \"/v1/charges/ch_18bTFlKg2L9oKTOlDS6h6SO5/refunds\"\n  shipping: \n  source:\n    id: card_18bTFjKg2L9oKTOlSov5lmg0\n    object: card\n    address_city: London\n    address_country: United Kingdom\n    address_line1: 45 Maydwell House\n    address_line1_check: pass\n    address_line2: \n    address_state: London, City of\n    address_zip: E14 7AP\n    address_zip_check: pass\n    brand: MasterCard\n    country: US\n    customer: cus_8tFlINRSk3vnbN\n    cvc_check: pass\n    dynamic_last4: \n    exp_month: 12\n    exp_year: 2017\n    fingerprint: tVOqwbr5bQ9laIzQ\n    funding: credit\n    last4: \'4444\'\n    metadata: {}\n    name: sadfgafgsdaf\n    tokenization_method: \n  source_transfer: \n  statement_descriptor: \n  status: succeeded\nmessage: Transaction approved\nsuccess: true\ntest: true\nauthorization: ch_18bTFlKg2L9oKTOlDS6h6SO5\nfraud_review: \nerror_code: \navs_result:\n  code: \n  message: \n  street_match: \n  postal_match: \ncvv_result:\n  code: \n  message: \n','2016-07-26 10:57:37','2016-07-26 10:57:37');
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_msends`
--

DROP TABLE IF EXISTS `spree_msends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_msends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `message` text,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_msends`
--

LOCK TABLES `spree_msends` WRITE;
/*!40000 ALTER TABLE `spree_msends` DISABLE KEYS */;
INSERT INTO `spree_msends` VALUES (1,'test@mfsa.re','fgjfgj','fgjfgj','fgjhfj','5634563456','2016-07-26 06:36:51','2016-07-26 06:36:51'),(2,'test@mfsa.re','fgjfgj','fgjfgj','fgjhfj','5634563456','2016-07-26 06:36:57','2016-07-26 06:36:57'),(3,'test@mfsa.re','fgjfgj','fgjfgj','fgjhfj','5634563456','2016-07-26 06:36:58','2016-07-26 06:36:58'),(4,'test@mfsa.re','fgjfgj','fgjfgj','fgjhfj','5634563456','2016-07-26 06:37:15','2016-07-26 06:37:15'),(5,'test@mfsa.re','fgjfgj','fgjfgj','fgjhfj','5634563456','2016-07-26 06:37:24','2016-07-26 06:37:24'),(6,'test@mfsa.re','fgjfgj','fgjfgj','fgjhfj','5634563456','2016-07-26 06:39:06','2016-07-26 06:39:06'),(7,'test@mfsa.re','fgjfgj','fgjfgj','fgjhfj','5634563456','2016-07-26 06:41:53','2016-07-26 06:41:53'),(8,'test@mfsa.re','fgjfgj','fgjfgj','fgjhfj','5634563456','2016-07-26 06:42:31','2016-07-26 06:42:31'),(9,'test@mfsa.ru','fgjfgj','fgjfgj','fgjhfj','5634563456','2016-07-26 06:53:05','2016-07-26 06:53:05'),(10,'claueio@tj.om','test','test','test',NULL,'2016-07-26 14:54:08','2016-07-26 14:54:08'),(11,'claueio@tj.om','test','test','test','6343434353545343434','2016-07-26 14:54:15','2016-07-26 14:54:15');
/*!40000 ALTER TABLE `spree_msends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types`
--

DROP TABLE IF EXISTS `spree_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `presentation` varchar(100) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_option_types_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types`
--

LOCK TABLES `spree_option_types` WRITE;
/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
INSERT INTO `spree_option_types` VALUES (1,'tshirt-size','Size',1,'2016-07-14 21:04:47','2016-07-14 21:04:47'),(2,'tshirt-color','Color',2,'2016-07-14 21:04:47','2016-07-14 21:04:47');
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types_prototypes`
--

DROP TABLE IF EXISTS `spree_option_types_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types_prototypes`
--

LOCK TABLES `spree_option_types_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_option_types_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_types_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values`
--

DROP TABLE IF EXISTS `spree_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_option_values_on_option_type_id` (`option_type_id`),
  KEY `index_spree_option_values_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values`
--

LOCK TABLES `spree_option_values` WRITE;
/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
INSERT INTO `spree_option_values` VALUES (1,1,'Small','S',1,'2016-07-14 21:04:47','2016-07-14 21:04:47'),(2,2,'Medium','M',1,'2016-07-14 21:04:47','2016-07-14 21:04:47'),(3,3,'Large','L',1,'2016-07-14 21:04:47','2016-07-14 21:04:47'),(4,4,'Extra Large','XL',1,'2016-07-14 21:04:47','2016-07-14 21:04:47'),(5,1,'Red','Red',2,'2016-07-14 21:04:47','2016-07-14 21:04:47'),(6,2,'Green','Green',2,'2016-07-14 21:04:47','2016-07-14 21:04:47'),(7,3,'Blue','Blue',2,'2016-07-14 21:04:47','2016-07-14 21:04:47');
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values_variants`
--

DROP TABLE IF EXISTS `spree_option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values_variants`
--

LOCK TABLES `spree_option_values_variants` WRITE;
/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
INSERT INTO `spree_option_values_variants` VALUES (17,1),(17,5),(18,1),(18,7),(19,1),(19,6),(20,2),(20,5),(21,2),(21,7),(22,2),(22,6),(23,3),(23,5),(24,3),(24,7),(25,3),(25,6),(26,4),(26,6);
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders`
--

DROP TABLE IF EXISTS `spree_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) DEFAULT NULL,
  `item_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) DEFAULT NULL,
  `adjustment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(10,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) DEFAULT NULL,
  `payment_state` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `special_instructions` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `last_ip_address` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `shipment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `channel` varchar(255) DEFAULT 'spree',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_count` int(11) DEFAULT '0',
  `approver_id` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `confirmation_delivered` tinyint(1) DEFAULT '0',
  `considered_risky` tinyint(1) DEFAULT '0',
  `guest_token` varchar(255) DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `canceler_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `state_lock_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_number` (`number`),
  KEY `index_spree_orders_on_user_id` (`user_id`),
  KEY `index_spree_orders_on_completed_at` (`completed_at`),
  KEY `index_spree_orders_on_approver_id` (`approver_id`),
  KEY `index_spree_orders_on_bill_address_id` (`bill_address_id`),
  KEY `index_spree_orders_on_confirmation_delivered` (`confirmation_delivered`),
  KEY `index_spree_orders_on_considered_risky` (`considered_risky`),
  KEY `index_spree_orders_on_created_by_id` (`created_by_id`),
  KEY `index_spree_orders_on_ship_address_id` (`ship_address_id`),
  KEY `index_spree_orders_on_shipping_method_id` (`shipping_method_id`),
  KEY `index_spree_orders_on_user_id_and_created_by_id` (`user_id`,`created_by_id`),
  KEY `index_spree_orders_on_guest_token` (`guest_token`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders`
--

LOCK TABLES `spree_orders` WRITE;
/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
INSERT INTO `spree_orders` VALUES (160,'R090769267',1998.00,2102.90,'confirm',99.90,54,NULL,221,221,0.00,1,NULL,NULL,'tilgaaleksandr@meta.ua',NULL,'2016-07-26 10:59:52','2016-07-26 11:04:30','GBP',NULL,NULL,5.00,99.90,0.00,'spree',0.00,3,NULL,NULL,0,0,'G_pX0GrsOpy4xiFOfkLwQg1469530792220',NULL,NULL,NULL,0),(161,'R861080111',1221.00,1221.00,'cart',0.00,18,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'mariolina@gmail.com',NULL,'2016-07-26 11:00:19','2016-07-26 16:47:47','GBP',NULL,NULL,0.00,0.00,0.00,'spree',0.00,3,NULL,NULL,0,0,'hQ-Sp0mT--wV6CnCjzDnXg1469530819859',NULL,NULL,NULL,0),(162,'R441563012',0.00,0.00,'cart',0.00,23,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'subbed@mm.com',NULL,'2016-07-26 11:35:03','2016-07-26 11:35:03','GBP',NULL,NULL,0.00,0.00,0.00,'spree',0.00,0,NULL,NULL,0,0,'F9mezVkg6dGtEyWDMV9lrw1469532903910',NULL,NULL,NULL,0),(163,'R263256414',1443.00,1443.00,'cart',0.00,15,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'mariolina@watchr.co.uk',NULL,'2016-07-26 12:21:39','2016-07-26 12:22:01','GBP',NULL,NULL,0.00,0.00,0.00,'spree',0.00,5,NULL,NULL,0,0,'EDCd5MY_amJUklmssj0NBg1469535699418',NULL,NULL,NULL,0),(164,'R750207515',999.00,999.00,'cart',0.00,17,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'claudio.degiovanni@gmail.com',NULL,'2016-07-26 12:45:34','2016-07-26 15:32:37','GBP',NULL,NULL,0.00,0.00,0.00,'spree',0.00,1,NULL,NULL,0,0,'GLp4x1QFUqgPB_K84K7tUw1469537134446',NULL,NULL,NULL,0),(165,'R496836617',0.00,0.00,'cart',0.00,13,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'test@mfsa.ru',NULL,'2016-07-26 15:04:34','2016-07-26 15:04:34','GBP',NULL,NULL,0.00,0.00,0.00,'spree',0.00,0,NULL,NULL,0,0,'E-fICajBhjZ0hTEdwrzqow1469545474576',NULL,NULL,NULL,0),(166,'R756442450',3220.00,3220.00,'cart',0.00,19,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'hdhdhf@mail.com',NULL,'2016-07-26 15:46:27','2016-07-26 15:46:39','GBP',NULL,NULL,0.00,0.00,0.00,'spree',0.00,2,NULL,NULL,0,0,'OIcJ6F0j7N7Cf4L5M2oWnw1469547987553',NULL,NULL,NULL,0),(167,'R660675444',1998.00,1998.00,'cart',0.00,54,NULL,NULL,NULL,0.00,NULL,NULL,NULL,'tilgaaleksandr@meta.ua',NULL,'2016-07-26 15:49:50','2016-07-27 07:43:00','GBP',NULL,NULL,0.00,0.00,0.00,'spree',0.00,3,NULL,NULL,0,0,'ouzEQaiWb5_y7NK65NzsUA1469548190501',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders_promotions`
--

DROP TABLE IF EXISTS `spree_orders_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders_promotions` (
  `order_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  KEY `index_spree_orders_promotions_on_order_id_and_promotion_id` (`order_id`,`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders_promotions`
--

LOCK TABLES `spree_orders_promotions` WRITE;
/*!40000 ALTER TABLE `spree_orders_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_orders_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_capture_events`
--

DROP TABLE IF EXISTS `spree_payment_capture_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_capture_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) DEFAULT '0.00',
  `payment_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payment_capture_events_on_payment_id` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_capture_events`
--

LOCK TABLES `spree_payment_capture_events` WRITE;
/*!40000 ALTER TABLE `spree_payment_capture_events` DISABLE KEYS */;
INSERT INTO `spree_payment_capture_events` VALUES (1,116.00,61,'2016-07-17 09:37:17','2016-07-17 09:37:17'),(2,111.00,71,'2016-07-17 10:18:41','2016-07-17 10:18:41'),(3,7449.00,73,'2016-07-17 10:23:38','2016-07-17 10:23:38'),(4,111.00,77,'2016-07-17 10:49:40','2016-07-17 10:49:40'),(5,1053.95,148,'2016-07-26 10:57:37','2016-07-26 10:57:37');
/*!40000 ALTER TABLE `spree_payment_capture_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_methods`
--

DROP TABLE IF EXISTS `spree_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `display_on` varchar(255) DEFAULT NULL,
  `auto_capture` tinyint(1) DEFAULT NULL,
  `preferences` text,
  `currency_id` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payment_methods_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_methods`
--

LOCK TABLES `spree_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
INSERT INTO `spree_payment_methods` VALUES (1,'Spree::Gateway::StripeGateway','GBP credit-card','',1,NULL,'2016-07-14 21:04:38','2016-07-26 10:47:27','',1,'---\n:secret_key: sk_test_ITCN98fSvSqclqObVPaGFvBo\n:publishable_key: pk_test_IbGnlXIgw51u6J1rIexwyU83\n:server: https://api.stripe.com\n:test_mode: false\n',NULL,'GBP','card'),(2,'Spree::Gateway::StripeGateway','USD credit-card','',1,NULL,'2016-07-14 21:04:38','2016-07-17 09:34:47','',1,'---\n:secret_key: sk_test_eKMqHtYiObBvAKQh3ibiijZk\n:publishable_key: pk_test_IvqYtmJ3X1XM1OUAMFQjHXZb\n:server: https://api.stripe.com\n:test_mode: true\n',NULL,'USD','card'),(3,'Spree::Gateway::StripeGateway','EUR credit-card','',1,NULL,'2016-07-15 11:22:00','2016-07-15 11:22:13','',NULL,'---\n:secret_key: sk_test_7FHizWICOV68DnBFjgc1OQ1B\n:publishable_key: pk_test_zb1Gg2kNljJ5DoNTf6O2t4ZC\n:server: test\n:test_mode: true\n',NULL,'EUR','card'),(4,'Spree::Gateway::PayPalGateway','PayPall','',1,NULL,'2016-07-19 12:34:48','2016-07-19 12:34:48','',NULL,'---\n:login: \n:password: \n:signature: \n:currency_code: \n:server: test\n:test_mode: true\n',NULL,NULL,NULL);
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payments`
--

DROP TABLE IF EXISTS `spree_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `response_code` varchar(255) DEFAULT NULL,
  `avs_response` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cvv_response_code` varchar(255) DEFAULT NULL,
  `cvv_response_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payments_on_order_id` (`order_id`),
  KEY `index_spree_payments_on_payment_method_id` (`payment_method_id`),
  KEY `index_spree_payments_on_source_id_and_source_type` (`source_id`,`source_type`),
  KEY `index_spree_payments_on_number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payments`
--

LOCK TABLES `spree_payments` WRITE;
/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
INSERT INTO `spree_payments` VALUES (63,111.00,27,NULL,NULL,1,'invalid',NULL,NULL,'2016-07-17 09:43:34','2016-07-17 09:43:34','PG121NLA',NULL,NULL),(64,111.00,27,14,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 09:43:34','2016-07-17 10:03:54','PXZ835YA',NULL,NULL),(65,111.00,27,NULL,NULL,1,'checkout',NULL,NULL,'2016-07-17 10:03:54','2016-07-17 10:03:54','PO1U44Z2',NULL,NULL),(66,111.00,28,NULL,NULL,1,'invalid',NULL,NULL,'2016-07-17 10:06:41','2016-07-17 10:06:41','PUWZ1CYG',NULL,NULL),(67,111.00,28,14,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 10:06:41','2016-07-17 10:07:19','PE8IJAE0',NULL,NULL),(68,111.00,28,NULL,NULL,1,'checkout',NULL,NULL,'2016-07-17 10:07:19','2016-07-17 10:07:19','PQV5CH7A',NULL,NULL),(69,111.00,29,NULL,NULL,1,'invalid',NULL,NULL,'2016-07-17 10:13:16','2016-07-17 10:13:17','PL62725T',NULL,NULL),(70,111.00,29,14,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 10:13:17','2016-07-17 10:18:33','PZG5IO0A',NULL,NULL),(71,111.00,29,18,'Spree::CreditCard',1,'completed','ch_18YCM8Kg2L9oKTOleyHF8dQX',NULL,'2016-07-17 10:18:33','2016-07-17 10:18:40','PHEP3ZDY',NULL,NULL),(73,7449.00,31,20,'Spree::CreditCard',1,'completed','ch_18YCQwKg2L9oKTOl71gnHBHs',NULL,'2016-07-17 10:23:33','2016-07-17 10:23:38','P9RFEV97',NULL,NULL),(74,111.00,32,NULL,NULL,1,'invalid',NULL,NULL,'2016-07-17 10:47:29','2016-07-17 10:48:39','P60LRVC1',NULL,NULL),(75,111.00,32,NULL,NULL,1,'invalid',NULL,NULL,'2016-07-17 10:48:39','2016-07-17 10:48:39','PRH90ZXW',NULL,NULL),(76,111.00,32,18,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 10:48:39','2016-07-17 10:49:37','PJ1YENEE',NULL,NULL),(77,111.00,32,21,'Spree::CreditCard',1,'completed','ch_18YCq7Kg2L9oKTOl0kx013qj',NULL,'2016-07-17 10:49:37','2016-07-17 10:49:40','PF9WWY7M',NULL,NULL),(78,111.00,37,NULL,NULL,1,'invalid',NULL,NULL,'2016-07-17 11:21:56','2016-07-17 11:22:10','PDJ8RS4O',NULL,NULL),(79,111.00,37,NULL,NULL,1,'invalid',NULL,NULL,'2016-07-17 11:22:10','2016-07-17 11:22:10','POA59XHT',NULL,NULL),(80,111.00,37,21,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-17 11:22:10','2016-07-17 11:22:10','PUT04VU8',NULL,NULL),(81,111.00,38,22,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-17 16:15:13','2016-07-17 16:15:13','P12OHF57',NULL,NULL),(82,222.00,39,23,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 16:19:16','2016-07-17 16:22:06','PBS0L7UJ',NULL,NULL),(83,222.00,39,24,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 16:22:06','2016-07-17 16:26:53','PPETJ9A4',NULL,NULL),(84,222.00,39,25,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 16:26:53','2016-07-17 16:29:08','PUG6OB6C',NULL,NULL),(85,222.00,39,26,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 16:29:08','2016-07-17 16:29:27','PWDSGR2Q',NULL,NULL),(86,222.00,39,27,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 16:29:27','2016-07-17 16:29:52','P0XTMRZO',NULL,NULL),(87,222.00,39,28,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 16:29:51','2016-07-17 16:31:19','PZRDVZSD',NULL,NULL),(88,222.00,39,29,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 16:31:19','2016-07-17 16:32:03','PUI9BFPG',NULL,NULL),(89,222.00,39,30,'Spree::CreditCard',1,'invalid',NULL,NULL,'2016-07-17 16:32:03','2016-07-17 16:35:14','PTIT4A54',NULL,NULL),(90,222.00,39,31,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-17 16:35:14','2016-07-17 16:35:14','PZVSP8CQ',NULL,NULL),(103,1998.00,53,44,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-17 17:25:39','2016-07-17 17:25:39','POKNQ2R2',NULL,NULL),(104,1998.00,56,45,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-17 17:43:11','2016-07-17 17:43:11','PP9RT2OC',NULL,NULL),(109,0.00,61,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-17 21:10:27','2016-07-17 21:10:27','P86DD4Y3',NULL,NULL),(110,1998.00,62,51,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-17 21:15:35','2016-07-17 21:15:35','P545OUAD',NULL,NULL),(114,1998.00,64,55,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-17 21:33:20','2016-07-17 21:33:20','PXKP5727',NULL,NULL),(120,111.00,65,61,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-17 21:37:20','2016-07-17 21:37:20','PA85BP59',NULL,NULL),(121,1998.00,66,62,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-18 08:27:42','2016-07-18 08:27:42','P4UFLN36',NULL,NULL),(123,999.00,71,64,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-18 12:22:49','2016-07-18 12:22:49','PAR3Q0O3',NULL,NULL),(124,222.00,77,65,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-20 18:08:30','2016-07-20 18:08:30','PFPZGH0O',NULL,NULL),(127,587.00,79,68,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-22 11:35:59','2016-07-22 11:35:59','PV6F1YQY',NULL,NULL),(130,999.00,117,71,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 07:08:20','2016-07-26 07:08:20','PEU2XKXP',NULL,NULL),(131,999.00,129,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 09:00:44','2016-07-26 09:00:44','PHUMOKW5',NULL,NULL),(132,999.00,130,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 09:00:52','2016-07-26 09:00:52','PH4JI16S',NULL,NULL),(133,999.00,133,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 09:25:56','2016-07-26 09:25:56','PT5O8HNI',NULL,NULL),(134,999.00,135,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 09:29:22','2016-07-26 09:29:22','P4N6J7PN',NULL,NULL),(135,999.00,136,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 09:34:33','2016-07-26 09:34:33','P2129D0I',NULL,NULL),(136,999.00,137,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 09:35:31','2016-07-26 09:35:31','PTFH4GRP',NULL,NULL),(137,999.00,140,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 09:50:34','2016-07-26 09:50:34','PRHJXRNP',NULL,NULL),(138,999.00,141,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 09:59:25','2016-07-26 09:59:25','PPIQ8KOR',NULL,NULL),(139,999.00,142,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 10:02:05','2016-07-26 10:02:05','PME4N2B5',NULL,NULL),(140,999.00,143,50,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 10:03:47','2016-07-26 10:03:47','PM5VW7SX',NULL,NULL),(141,1053.95,146,72,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 10:35:50','2016-07-26 10:35:50','PVGVX3WV',NULL,NULL),(142,1053.95,148,73,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 10:44:00','2016-07-26 10:44:00','PDQDMGVZ',NULL,NULL),(143,1053.95,149,74,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 10:46:07','2016-07-26 10:46:07','PGXEBE1T',NULL,NULL),(144,0.00,151,75,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 10:48:05','2016-07-26 10:48:05','PTDAA3I9',NULL,NULL),(148,1053.95,154,79,'Spree::CreditCard',1,'completed','ch_18bTFlKg2L9oKTOlDS6h6SO5',NULL,'2016-07-26 10:57:34','2016-07-26 10:57:37','PFMSVPF6',NULL,NULL),(149,1053.95,158,80,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 10:58:59','2016-07-26 10:58:59','PDZILJFP',NULL,NULL),(150,2102.90,160,81,'Spree::CreditCard',1,'checkout',NULL,NULL,'2016-07-26 11:04:27','2016-07-26 11:04:27','PHDHKW5Y',NULL,NULL);
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_preferences`
--

DROP TABLE IF EXISTS `spree_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text,
  `key` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_preferences`
--

LOCK TABLES `spree_preferences` WRITE;
/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
INSERT INTO `spree_preferences` VALUES (1,'--- 232\n...\n','spree/app_configuration/default_country_id','2016-07-14 21:04:10','2016-07-14 21:04:10'),(2,'--- GBP\n...\n','spree/app_configuration/currency','2016-07-14 21:04:40','2016-07-23 20:17:25'),(3,'--- \"/spree/img/watchr_logo.png\"\n','spree/app_configuration/admin_interface_logo','2016-07-15 10:47:52','2016-07-15 10:47:52'),(4,'--- \"/spree/img/watchr_logo.png\"\n','spree/app_configuration/logo','2016-07-15 10:47:52','2016-07-15 10:47:52'),(5,'--- USD, EUR, GBP\n...\n','spree/app_configuration/supported_currencies','2016-07-15 11:07:11','2016-07-15 11:49:58'),(6,'--- true\n...\n','spree/app_configuration/allow_currency_change','2016-07-15 11:07:11','2016-07-15 11:07:11'),(7,'--- true\n...\n','spree/app_configuration/show_currency_selector','2016-07-15 11:07:11','2016-07-15 11:07:11'),(8,'--- 169bad4f2d80257704b104728a848a70-us13\n...\n','spree/app_configuration/mailchimp_api_key','2016-07-20 18:10:37','2016-07-20 18:10:37'),(9,'--- test\n...\n','spree/app_configuration/mailchimp_list_id','2016-07-20 18:10:37','2016-07-20 18:12:06'),(10,'--- false\n...\n','spree/app_configuration/mailchimp_checkbox_during_registration','2016-07-20 18:10:37','2016-07-20 18:10:37'),(11,'--- true\n...\n','spree/app_configuration/mailchimp_user_must_opt_in','2016-07-20 18:10:37','2016-07-20 18:10:37'),(12,'--- true\n...\n','spree/app_configuration/enable_mail_delivery','2016-07-25 05:44:23','2016-07-25 05:44:23'),(13,'--- spree@example.com\n...\n','spree/app_configuration/mails_from','2016-07-25 05:44:23','2016-07-25 05:44:23'),(14,'--- spree@example.com\n...\n','spree/app_configuration/mail_bcc','2016-07-25 05:44:23','2016-07-25 05:44:23'),(15,'--- \'\'\n','spree/app_configuration/intercept_email','2016-07-25 05:44:23','2016-07-25 05:44:23'),(16,'--- localhost\n...\n','spree/app_configuration/mail_domain','2016-07-25 05:44:23','2016-07-25 05:44:23'),(17,'--- localhost\n...\n','spree/app_configuration/mail_host','2016-07-25 05:44:23','2016-07-25 05:44:23'),(18,'--- 25\n...\n','spree/app_configuration/mail_port','2016-07-25 05:44:23','2016-07-25 05:44:23'),(19,'--- None\n...\n','spree/app_configuration/secure_connection_type','2016-07-25 05:44:23','2016-07-25 05:44:23'),(20,'--- None\n...\n','spree/app_configuration/mail_auth_type','2016-07-25 05:44:23','2016-07-25 05:44:23'),(21,'--- \'\'\n','spree/app_configuration/smtp_username','2016-07-25 05:44:23','2016-07-25 05:44:23'),(22,'--- \'\'\n','spree/app_configuration/smtp_password','2016-07-25 05:44:23','2016-07-25 05:44:23');
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prices`
--

DROP TABLE IF EXISTS `spree_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_prices_on_variant_id_and_currency` (`variant_id`,`currency`),
  KEY `index_spree_prices_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prices`
--

LOCK TABLES `spree_prices` WRITE;
/*!40000 ALTER TABLE `spree_prices` DISABLE KEYS */;
INSERT INTO `spree_prices` VALUES (53,7,2221.00,'GBP',NULL),(54,6,111.00,'GBP',NULL),(55,2,111.00,'GBP',NULL),(56,3,123.00,'GBP',NULL),(57,17,4211.00,'GBP',NULL),(58,18,1244.00,'GBP',NULL),(59,19,1200.00,'GBP',NULL),(60,20,120.00,'GBP',NULL),(61,21,124.00,'GBP',NULL),(62,22,147.00,'GBP',NULL),(63,23,147.00,'GBP',NULL),(64,24,155.00,'GBP',NULL),(65,25,156.00,'GBP',NULL),(66,26,255.00,'GBP',NULL),(67,4,587.00,'GBP',NULL),(68,13,566.00,'GBP',NULL),(69,5,888.00,'GBP',NULL),(70,14,777.00,'GBP',NULL),(71,1,999.00,'GBP',NULL),(72,12,7444.00,'GBP',NULL),(93,7,2974.36,'USD',NULL),(94,6,148.65,'USD',NULL),(95,2,148.65,'USD',NULL),(96,3,164.72,'USD',NULL),(97,17,5639.37,'USD',NULL),(98,18,1665.96,'USD',NULL),(99,19,1607.04,'USD',NULL),(100,20,160.70,'USD',NULL),(101,21,166.06,'USD',NULL),(102,22,196.86,'USD',NULL),(103,23,196.86,'USD',NULL),(104,24,207.58,'USD',NULL),(105,25,208.92,'USD',NULL),(106,26,341.50,'USD',NULL),(107,4,786.11,'USD',NULL),(108,13,757.99,'USD',NULL),(109,5,1189.21,'USD',NULL),(110,14,1040.56,'USD',NULL),(111,1,1337.86,'USD',NULL),(112,12,9969.00,'USD',NULL),(113,7,3570.19,'EUR',NULL),(114,6,178.43,'EUR',NULL),(115,2,178.43,'EUR',NULL),(116,3,197.72,'EUR',NULL),(117,17,6769.06,'EUR',NULL),(118,18,1999.69,'EUR',NULL),(119,19,1928.96,'EUR',NULL),(120,20,192.89,'EUR',NULL),(121,21,199.33,'EUR',NULL),(122,22,236.30,'EUR',NULL),(123,23,236.30,'EUR',NULL),(124,24,249.16,'EUR',NULL),(125,25,250.77,'EUR',NULL),(126,26,409.91,'EUR',NULL),(127,4,943.58,'EUR',NULL),(128,13,909.83,'EUR',NULL),(129,5,1427.43,'EUR',NULL),(130,14,1249.01,'EUR',NULL),(131,1,1605.86,'EUR',NULL),(132,12,11966.01,'EUR',NULL),(133,8,0.00,'GBP',NULL),(134,9,0.00,'GBP',NULL),(135,16,0.00,'GBP',NULL),(136,10,0.00,'GBP',NULL),(137,15,0.00,'GBP',NULL),(138,11,0.00,'GBP',NULL),(139,27,2771.00,'GBP',NULL),(140,28,10999.00,'GBP',NULL);
/*!40000 ALTER TABLE `spree_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_option_types`
--

DROP TABLE IF EXISTS `spree_product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_product_option_types_on_option_type_id` (`option_type_id`),
  KEY `index_spree_product_option_types_on_product_id` (`product_id`),
  KEY `index_spree_product_option_types_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_option_types`
--

LOCK TABLES `spree_product_option_types` WRITE;
/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
INSERT INTO `spree_product_option_types` VALUES (1,1,3,1,'2016-07-14 21:04:47','2016-07-14 21:04:47'),(2,2,3,2,'2016-07-14 21:04:47','2016-07-14 21:04:47'),(3,1,8,1,'2016-07-14 21:04:48','2016-07-14 21:04:48'),(4,2,8,2,'2016-07-14 21:04:48','2016-07-14 21:04:48');
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_properties`
--

DROP TABLE IF EXISTS `spree_product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`),
  KEY `index_spree_product_properties_on_position` (`position`),
  KEY `index_spree_product_properties_on_property_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_properties`
--

LOCK TABLES `spree_product_properties` WRITE;
/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
INSERT INTO `spree_product_properties` VALUES (1,'Wilson',3,1,'2016-07-14 21:04:48','2016-07-14 21:04:48',1),(2,'Wannabe Sports',3,2,'2016-07-14 21:04:48','2016-07-14 21:04:48',2),(3,'JK1002',3,3,'2016-07-14 21:04:48','2016-07-14 21:04:48',3),(4,'Baseball Jersey',3,4,'2016-07-14 21:04:48','2016-07-14 21:04:48',4),(5,'Long',3,5,'2016-07-14 21:04:48','2016-07-14 21:04:48',5),(6,'100% cotton',3,6,'2016-07-14 21:04:48','2016-07-14 21:04:48',6),(7,'Loose',3,7,'2016-07-14 21:04:48','2016-07-14 21:04:48',7),(8,'Men\'s',3,8,'2016-07-14 21:04:48','2016-07-14 21:04:48',8),(9,'Jerseys',4,1,'2016-07-14 21:04:48','2016-07-14 21:04:48',1),(10,'Resiliance',4,2,'2016-07-14 21:04:48','2016-07-14 21:04:48',2),(11,'TL174',4,3,'2016-07-14 21:04:48','2016-07-14 21:04:48',3),(12,'Jr. Spaghetti T',4,4,'2016-07-14 21:04:48','2016-07-14 21:04:48',4),(13,'None',4,5,'2016-07-14 21:04:48','2016-07-14 21:04:48',5),(14,'90% Cotton, 10% Nylon',4,6,'2016-07-14 21:04:48','2016-07-14 21:04:48',6),(15,'Form',4,7,'2016-07-14 21:04:48','2016-07-14 21:04:48',7),(16,'Women\'s',4,8,'2016-07-14 21:04:48','2016-07-14 21:04:48',8),(17,'Jerseys',5,1,'2016-07-14 21:04:48','2016-07-14 21:04:48',1),(18,'Conditioned',5,2,'2016-07-14 21:04:48','2016-07-14 21:04:48',2),(19,'TL9002',5,3,'2016-07-14 21:04:48','2016-07-14 21:04:48',3),(20,'Ringer T',5,4,'2016-07-14 21:04:49','2016-07-14 21:04:49',4),(21,'Short',5,5,'2016-07-14 21:04:49','2016-07-14 21:04:49',5),(22,'100% Vellum',5,6,'2016-07-14 21:04:49','2016-07-14 21:04:49',6),(23,'Loose',5,7,'2016-07-14 21:04:49','2016-07-14 21:04:49',7),(24,'Men\'s',5,8,'2016-07-14 21:04:49','2016-07-14 21:04:49',8),(25,'Tote',1,9,'2016-07-14 21:04:49','2016-07-14 21:04:49',1),(26,'15\" x 18\" x 6\"',1,10,'2016-07-14 21:04:49','2016-07-14 21:04:49',2),(27,'Canvas',1,11,'2016-07-14 21:04:49','2016-07-14 21:04:49',3),(28,'Messenger',2,9,'2016-07-14 21:04:49','2016-07-14 21:04:49',1),(29,'14 1/2\" x 12\" x 5\"',2,10,'2016-07-14 21:04:49','2016-07-14 21:04:49',2),(30,'600 Denier Polyester',2,11,'2016-07-14 21:04:49','2016-07-14 21:04:49',3),(31,'Mug',13,9,'2016-07-14 21:04:49','2016-07-14 21:04:49',1),(32,'4.5\" tall, 3.25\" dia.',13,10,'2016-07-14 21:04:50','2016-07-14 21:04:50',2),(33,'Stein',14,9,'2016-07-14 21:04:50','2016-07-14 21:04:50',1),(34,'6.75\" tall, 3.75\" dia. base, 3\" dia. rim',14,10,'2016-07-14 21:04:50','2016-07-14 21:04:50',2),(35,'Stein',15,9,'2016-07-14 21:04:50','2016-07-14 21:04:50',1),(36,'6.75\" tall, 3.75\" dia. base, 3\" dia. rim',15,10,'2016-07-14 21:04:50','2016-07-14 21:04:50',2),(37,'Mug',16,9,'2016-07-14 21:04:50','2016-07-14 21:04:50',1),(38,'4.5\" tall, 3.25\" dia.',16,10,'2016-07-14 21:04:50','2016-07-14 21:04:50',2),(39,'Tote',11,9,'2016-07-14 21:04:50','2016-07-14 21:04:50',1),(40,'15\" x 18\" x 6\"',11,10,'2016-07-14 21:04:50','2016-07-14 21:04:50',2),(41,'Messenger',12,9,'2016-07-14 21:04:50','2016-07-14 21:04:50',1),(42,'14 1/2\" x 12\" x 5\"',12,10,'2016-07-14 21:04:50','2016-07-14 21:04:50',2),(43,'Wilson',8,1,'2016-07-14 21:04:50','2016-07-14 21:04:50',1),(44,'Wannabe Sports',8,2,'2016-07-14 21:04:50','2016-07-14 21:04:50',2),(45,'JK1002',8,3,'2016-07-14 21:04:50','2016-07-14 21:04:50',3),(46,'Baseball Jersey',8,4,'2016-07-14 21:04:50','2016-07-14 21:04:50',4),(47,'Long',8,5,'2016-07-14 21:04:50','2016-07-14 21:04:50',5),(48,'100% cotton',8,6,'2016-07-14 21:04:50','2016-07-14 21:04:50',6),(49,'Loose',8,7,'2016-07-14 21:04:50','2016-07-14 21:04:50',7),(50,'Men\'s',8,8,'2016-07-14 21:04:50','2016-07-14 21:04:50',8),(51,'Jerseys',9,1,'2016-07-14 21:04:50','2016-07-14 21:04:50',1),(52,'Resiliance',9,2,'2016-07-14 21:04:51','2016-07-14 21:04:51',2),(53,'TL174',9,3,'2016-07-14 21:04:51','2016-07-14 21:04:51',3),(54,'Jr. Spaghetti T',9,4,'2016-07-14 21:04:51','2016-07-14 21:04:51',4),(55,'None',9,5,'2016-07-14 21:04:51','2016-07-14 21:04:51',5),(56,'90% Cotton, 10% Nylon',9,6,'2016-07-14 21:04:51','2016-07-14 21:04:51',6),(57,'Form',9,7,'2016-07-14 21:04:51','2016-07-14 21:04:51',7),(58,'Women\'s',9,8,'2016-07-14 21:04:51','2016-07-14 21:04:51',8),(59,'Jerseys',10,1,'2016-07-14 21:04:51','2016-07-14 21:04:51',1),(60,'Conditioned',10,2,'2016-07-14 21:04:51','2016-07-14 21:04:51',2),(61,'TL9002',10,3,'2016-07-14 21:04:51','2016-07-14 21:04:51',3),(62,'Ringer T',10,4,'2016-07-14 21:04:51','2016-07-14 21:04:51',4),(63,'Short',10,5,'2016-07-14 21:04:51','2016-07-14 21:04:51',5),(64,'100% Vellum',10,6,'2016-07-14 21:04:51','2016-07-14 21:04:51',6),(65,'Loose',10,7,'2016-07-14 21:04:51','2016-07-14 21:04:51',7),(66,'Men\'s',10,8,'2016-07-14 21:04:51','2016-07-14 21:04:51',8),(67,NULL,17,1,'2016-07-26 15:04:27','2016-07-26 15:04:27',1),(68,NULL,17,2,'2016-07-26 15:04:27','2016-07-26 15:04:27',2),(69,NULL,17,3,'2016-07-26 15:04:27','2016-07-26 15:04:27',3),(70,NULL,17,4,'2016-07-26 15:04:28','2016-07-26 15:04:28',4),(71,NULL,17,5,'2016-07-26 15:04:28','2016-07-26 15:04:28',5),(72,NULL,17,11,'2016-07-26 15:04:28','2016-07-26 15:04:28',6),(73,NULL,17,7,'2016-07-26 15:04:28','2016-07-26 15:04:28',7),(74,NULL,17,8,'2016-07-26 15:04:28','2016-07-26 15:04:28',8);
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products`
--

DROP TABLE IF EXISTS `spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `promotionable` tinyint(1) DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_products_on_slug` (`slug`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`),
  KEY `index_spree_products_on_shipping_category_id` (`shipping_category_id`),
  KEY `index_spree_products_on_tax_category_id` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products`
--

LOCK TABLES `spree_products` WRITE;
/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
INSERT INTO `spree_products` VALUES (1,'Ruby on Rails Tote','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'ruby-on-rails-tote','','',1,1,'2016-07-14 21:04:41','2016-07-26 10:57:38',1,''),(2,'Ruby on Rails Bag','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'ruby-on-rails-bag','','',1,1,'2016-07-14 21:04:41','2016-07-17 09:37:17',1,''),(3,'Ruby on Rails Baseball Jersey','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'ruby-on-rails-baseball-jersey','','',1,1,'2016-07-14 21:04:42','2016-07-15 11:47:13',1,''),(4,'Ruby on Rails Jr. Spaghetti','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'ruby-on-rails-jr-spaghetti','','',1,1,'2016-07-14 21:04:42','2016-07-15 11:47:18',1,''),(5,'Ruby on Rails Ringer T-Shirt','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'ruby-on-rails-ringer-t-shirt','','',1,1,'2016-07-14 21:04:42','2016-07-15 11:48:01',1,''),(6,'Ruby Baseball Jersey','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'ruby-baseball-jersey','','',1,1,'2016-07-14 21:04:42','2016-07-16 08:35:11',1,''),(7,'Apache Baseball Jersey','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'apache-baseball-jersey','','',1,1,'2016-07-14 21:04:43','2016-07-15 11:46:21',1,''),(8,'Spree Baseball Jersey','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'spree-baseball-jersey','','',1,1,'2016-07-14 21:04:43','2016-07-15 11:48:16',1,''),(9,'Spree Jr. Spaghetti','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'spree-jr-spaghetti','','',1,1,'2016-07-14 21:04:43','2016-07-15 11:48:20',1,''),(10,'Spree Ringer T-Shirt','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'spree-ringer-t-shirt','','',1,1,'2016-07-14 21:04:43','2016-07-15 11:48:28',1,''),(11,'Spree Tote','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'spree-tote','','',1,1,'2016-07-14 21:04:44','2016-07-19 14:06:21',1,''),(12,'Spree Bag','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'spree-bag','','',1,1,'2016-07-14 21:04:44','2016-07-17 10:23:39',1,''),(13,'Ruby on Rails Mug','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'ruby-on-rails-mug','','',NULL,1,'2016-07-14 21:04:44','2016-07-15 11:47:56',1,''),(14,'Ruby on Rails Stein','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'ruby-on-rails-stein','','',NULL,1,'2016-07-14 21:04:44','2016-07-15 11:48:05',1,''),(15,'Spree Stein','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'spree-stein','','',NULL,1,'2016-07-14 21:04:45','2016-07-15 11:48:32',1,''),(16,'Spree Mug','Veritatis velit temporibus eveniet veniam aut. Quis corrupti praesentium tempore facere occaecati doloremque. Quia tempore amet consequatur possimus. Ullam dolorem enim dolores fugit eos et ad et.','2016-07-14 00:00:00',NULL,'spree-mug','','',NULL,1,'2016-07-14 21:04:45','2016-07-15 11:48:23',1,''),(17,'test',NULL,'2016-07-20 00:00:00',NULL,'test',NULL,NULL,NULL,1,'2016-07-26 15:04:27','2016-07-26 15:04:28',1,NULL),(18,'Rolex Submariner','The Rolex Oyster Perpetual Submariner is a line of sports watches designed for diving manufactured by Rolex, known for their resistance to water and corrosion.[1] The first Submariner was introduced to the public in 1954 at the Basel Watch Fair. The Rolex Submariner is considered \"a classic among wristwatches\",[1] manufactured by one of the most widely recognized luxury brands in the world,[2][3][4][5] and due to its popularity has become the subject of massive counterfeiting. The Rolex Submariner is part of Rolex\'s Oyster Perpetual line.','2016-07-08 00:00:00',NULL,'rolex-submariner','','',NULL,1,'2016-07-26 15:24:44','2016-07-26 15:31:35',1,'');
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_promotion_rules`
--

DROP TABLE IF EXISTS `spree_products_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_promotion_rules`
--

LOCK TABLES `spree_products_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_products_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_products_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_taxons`
--

DROP TABLE IF EXISTS `spree_products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`),
  KEY `index_spree_products_taxons_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_taxons`
--

LOCK TABLES `spree_products_taxons` WRITE;
/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
INSERT INTO `spree_products_taxons` VALUES (1,3,1,1),(2,3,2,2),(11,3,3,3),(12,3,4,4),(13,4,5,1),(14,4,6,2),(15,4,7,3),(16,4,8,4),(4,6,9,1),(9,6,10,2),(3,7,11,1),(5,7,12,2),(7,7,13,3),(6,7,14,4),(8,7,15,5),(10,7,16,6),(6,8,17,1),(7,9,18,1),(15,10,19,1),(16,10,20,2),(10,10,21,3),(8,10,22,4),(11,10,23,5),(12,10,24,6),(9,10,25,7),(1,11,26,1),(2,11,27,2),(13,11,28,3),(14,11,29,4),(3,11,30,5),(4,11,31,6),(5,11,32,7),(7,12,33,1),(6,12,34,2),(2,12,35,3),(3,12,36,4),(4,12,37,5),(13,12,38,6),(5,12,39,7);
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `spree_promotion_action_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_spree_promotion_action_line_items_on_promotion_action_id` (`promotion_action_id`),
  KEY `index_spree_promotion_action_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_action_line_items`
--

LOCK TABLES `spree_promotion_action_line_items` WRITE;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_actions`
--

DROP TABLE IF EXISTS `spree_promotion_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_promotion_actions_on_id_and_type` (`id`,`type`),
  KEY `index_spree_promotion_actions_on_promotion_id` (`promotion_id`),
  KEY `index_spree_promotion_actions_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_actions`
--

LOCK TABLES `spree_promotion_actions` WRITE;
/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_categories`
--

DROP TABLE IF EXISTS `spree_promotion_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_categories`
--

LOCK TABLES `spree_promotion_categories` WRITE;
/*!40000 ALTER TABLE `spree_promotion_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules`
--

DROP TABLE IF EXISTS `spree_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `preferences` text,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`),
  KEY `index_spree_promotion_rules_on_promotion_id` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules`
--

LOCK TABLES `spree_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `spree_promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_promotion_rules_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_users`
--

LOCK TABLES `spree_promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotions`
--

DROP TABLE IF EXISTS `spree_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) DEFAULT 'all',
  `code` varchar(255) DEFAULT NULL,
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `promotion_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_promotions_on_id_and_type` (`id`,`type`),
  KEY `index_spree_promotions_on_code` (`code`),
  KEY `index_spree_promotions_on_expires_at` (`expires_at`),
  KEY `index_spree_promotions_on_starts_at` (`starts_at`),
  KEY `index_spree_promotions_on_advertise` (`advertise`),
  KEY `index_spree_promotions_on_promotion_category_id` (`promotion_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotions`
--

LOCK TABLES `spree_promotions` WRITE;
/*!40000 ALTER TABLE `spree_promotions` DISABLE KEYS */;
INSERT INTO `spree_promotions` VALUES (1,'start','2016-07-27 00:00:00','2016-07-03 00:00:00','100  Phound',NULL,1000,'all','start',0,NULL,'2016-07-19 14:15:55','2016-07-19 14:15:55',NULL);
/*!40000 ALTER TABLE `spree_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties`
--

DROP TABLE IF EXISTS `spree_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties`
--

LOCK TABLES `spree_properties` WRITE;
/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
INSERT INTO `spree_properties` VALUES (1,'Manufacturer','Manufacturer','2016-07-14 21:04:48','2016-07-14 21:04:48'),(2,'Brand','Brand','2016-07-14 21:04:48','2016-07-14 21:04:48'),(3,'Model','Model','2016-07-14 21:04:48','2016-07-14 21:04:48'),(4,'Shirt Type','Shirt Type','2016-07-14 21:04:48','2016-07-14 21:04:48'),(5,'Sleeve Type','Sleeve Type','2016-07-14 21:04:48','2016-07-14 21:04:48'),(6,'Made from','Made from','2016-07-14 21:04:48','2016-07-14 21:04:48'),(7,'Fit','Fit','2016-07-14 21:04:48','2016-07-14 21:04:48'),(8,'Gender','Gender','2016-07-14 21:04:48','2016-07-14 21:04:48'),(9,'Type','Type','2016-07-14 21:04:49','2016-07-14 21:04:49'),(10,'Size','Size','2016-07-14 21:04:49','2016-07-14 21:04:49'),(11,'Material','Material','2016-07-14 21:04:49','2016-07-14 21:04:49');
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties_prototypes`
--

DROP TABLE IF EXISTS `spree_properties_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties_prototypes`
--

LOCK TABLES `spree_properties_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_properties_prototypes` DISABLE KEYS */;
INSERT INTO `spree_properties_prototypes` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,11),(1,7),(1,8),(2,9),(2,10),(2,11),(3,10),(3,9);
/*!40000 ALTER TABLE `spree_properties_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototypes`
--

DROP TABLE IF EXISTS `spree_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototypes`
--

LOCK TABLES `spree_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
INSERT INTO `spree_prototypes` VALUES (1,'Shirt','2016-07-14 21:04:51','2016-07-14 21:04:51'),(2,'Bag','2016-07-14 21:04:52','2016-07-14 21:04:52'),(3,'Mugs','2016-07-14 21:04:52','2016-07-14 21:04:52');
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_refund_reasons`
--

DROP TABLE IF EXISTS `spree_refund_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_refund_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `mutable` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_refund_reasons`
--

LOCK TABLES `spree_refund_reasons` WRITE;
/*!40000 ALTER TABLE `spree_refund_reasons` DISABLE KEYS */;
INSERT INTO `spree_refund_reasons` VALUES (1,'Return processing',1,0,'2016-07-14 21:04:00','2016-07-14 21:04:00');
/*!40000 ALTER TABLE `spree_refund_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_refunds`
--

DROP TABLE IF EXISTS `spree_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_refunds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `refund_reason_id` int(11) DEFAULT NULL,
  `reimbursement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refunds_on_refund_reason_id` (`refund_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_refunds`
--

LOCK TABLES `spree_refunds` WRITE;
/*!40000 ALTER TABLE `spree_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_reimbursement_credits`
--

DROP TABLE IF EXISTS `spree_reimbursement_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_reimbursement_credits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reimbursement_id` int(11) DEFAULT NULL,
  `creditable_id` int(11) DEFAULT NULL,
  `creditable_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_reimbursement_credits`
--

LOCK TABLES `spree_reimbursement_credits` WRITE;
/*!40000 ALTER TABLE `spree_reimbursement_credits` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_reimbursement_credits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_reimbursement_types`
--

DROP TABLE IF EXISTS `spree_reimbursement_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_reimbursement_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `mutable` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_reimbursement_types_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_reimbursement_types`
--

LOCK TABLES `spree_reimbursement_types` WRITE;
/*!40000 ALTER TABLE `spree_reimbursement_types` DISABLE KEYS */;
INSERT INTO `spree_reimbursement_types` VALUES (1,'original',1,1,'2016-07-14 21:04:00','2016-07-14 21:04:01','Spree::ReimbursementType::OriginalPayment');
/*!40000 ALTER TABLE `spree_reimbursement_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_reimbursements`
--

DROP TABLE IF EXISTS `spree_reimbursements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_reimbursements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `reimbursement_status` varchar(255) DEFAULT NULL,
  `customer_return_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_reimbursements_on_customer_return_id` (`customer_return_id`),
  KEY `index_spree_reimbursements_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_reimbursements`
--

LOCK TABLES `spree_reimbursements` WRITE;
/*!40000 ALTER TABLE `spree_reimbursements` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_reimbursements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorization_reasons`
--

DROP TABLE IF EXISTS `spree_return_authorization_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorization_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `mutable` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorization_reasons`
--

LOCK TABLES `spree_return_authorization_reasons` WRITE;
/*!40000 ALTER TABLE `spree_return_authorization_reasons` DISABLE KEYS */;
INSERT INTO `spree_return_authorization_reasons` VALUES (1,'Better price available',1,1,'2016-07-14 21:04:00','2016-07-14 21:04:00'),(2,'Missed estimated delivery date',1,1,'2016-07-14 21:04:00','2016-07-14 21:04:00'),(3,'Missing parts or accessories',1,1,'2016-07-14 21:04:00','2016-07-14 21:04:00'),(4,'Damaged/Defective',1,1,'2016-07-14 21:04:00','2016-07-14 21:04:00'),(5,'Different from what was ordered',1,1,'2016-07-14 21:04:00','2016-07-14 21:04:00'),(6,'Different from description',1,1,'2016-07-14 21:04:00','2016-07-14 21:04:00'),(7,'No longer needed/wanted',1,1,'2016-07-14 21:04:00','2016-07-14 21:04:00'),(8,'Accidental order',1,1,'2016-07-14 21:04:00','2016-07-14 21:04:00'),(9,'Unauthorized purchase',1,1,'2016-07-14 21:04:00','2016-07-14 21:04:00');
/*!40000 ALTER TABLE `spree_return_authorization_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorizations`
--

DROP TABLE IF EXISTS `spree_return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `memo` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `return_authorization_reason_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_return_authorizations_on_return_authorization_reason_id` (`return_authorization_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorizations`
--

LOCK TABLES `spree_return_authorizations` WRITE;
/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_items`
--

DROP TABLE IF EXISTS `spree_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `return_authorization_id` int(11) DEFAULT NULL,
  `inventory_unit_id` int(11) DEFAULT NULL,
  `exchange_variant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pre_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `included_tax_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `additional_tax_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `reception_status` varchar(255) DEFAULT NULL,
  `acceptance_status` varchar(255) DEFAULT NULL,
  `customer_return_id` int(11) DEFAULT NULL,
  `reimbursement_id` int(11) DEFAULT NULL,
  `exchange_inventory_unit_id` int(11) DEFAULT NULL,
  `acceptance_status_errors` text,
  `preferred_reimbursement_type_id` int(11) DEFAULT NULL,
  `override_reimbursement_type_id` int(11) DEFAULT NULL,
  `resellable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_return_items_on_customer_return_id` (`customer_return_id`),
  KEY `index_spree_return_items_on_exchange_inventory_unit_id` (`exchange_inventory_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_items`
--

LOCK TABLES `spree_return_items` WRITE;
/*!40000 ALTER TABLE `spree_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles`
--

DROP TABLE IF EXISTS `spree_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles`
--

LOCK TABLES `spree_roles` WRITE;
/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
INSERT INTO `spree_roles` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles_users`
--

DROP TABLE IF EXISTS `spree_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles_users`
--

LOCK TABLES `spree_roles_users` WRITE;
/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
INSERT INTO `spree_roles_users` VALUES (1,1);
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipments`
--

DROP TABLE IF EXISTS `spree_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT '0.00',
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `adjustment_total` decimal(10,2) DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pre_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`),
  KEY `index_spree_shipments_on_order_id` (`order_id`),
  KEY `index_spree_shipments_on_stock_location_id` (`stock_location_id`),
  KEY `index_spree_shipments_on_address_id` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipments`
--

LOCK TABLES `spree_shipments` WRITE;
/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
INSERT INTO `spree_shipments` VALUES (1,NULL,'H42029034547',5.00,NULL,1,1,'pending','2016-07-14 21:05:24','2016-07-14 21:05:26',1,0.00,0.00,0.00,0.00,0.0000),(2,NULL,'H73548404887',5.00,NULL,2,1,'pending','2016-07-14 21:05:25','2016-07-14 21:05:27',1,0.00,0.00,0.00,0.00,0.0000),(4,NULL,'H23995440409',5.00,NULL,3,4,'pending','2016-07-15 11:24:00','2016-07-15 11:25:04',1,0.00,0.00,0.00,0.00,0.0000),(15,NULL,'H98953990185',5.00,NULL,6,8,'pending','2016-07-15 11:51:55','2016-07-15 11:52:24',1,0.00,0.00,0.00,0.00,0.0000),(17,NULL,'H91928036467',5.00,NULL,4,1,'pending','2016-07-15 13:18:55','2016-07-15 13:19:01',1,0.00,0.00,0.00,0.00,0.0000),(18,NULL,'H63689936503',5.00,NULL,5,11,'pending','2016-07-15 13:21:17','2016-07-15 13:21:17',1,0.00,0.00,0.00,0.00,0.0000),(31,NULL,'H58729382880',5.00,NULL,11,1,'pending','2016-07-15 18:46:01','2016-07-15 18:56:32',1,0.00,0.00,0.00,0.00,0.0000),(33,NULL,'H82474980416',5.00,NULL,25,41,'pending','2016-07-17 09:16:29','2016-07-17 09:18:19',1,0.00,0.00,0.00,0.00,0.0000),(34,NULL,'H33113123619',5.00,NULL,26,43,'ready','2016-07-17 09:36:36','2016-07-17 09:37:17',1,0.00,0.00,0.00,0.00,0.0000),(35,NULL,'H34247424297',5.00,NULL,31,48,'ready','2016-07-17 10:22:43','2016-07-17 10:23:39',1,0.00,0.00,0.00,0.00,0.0000),(36,NULL,'H70480262639',5.00,NULL,128,141,'pending','2016-07-26 09:00:13','2016-07-26 09:00:13',1,0.00,0.00,0.00,0.00,0.0000),(38,NULL,'H94295441643',5.00,NULL,146,191,'pending','2016-07-26 10:29:38','2016-07-26 10:35:54',1,0.00,0.00,0.00,0.00,0.0000),(39,NULL,'H73498527366',5.00,NULL,147,193,'pending','2016-07-26 10:33:34','2016-07-26 10:33:34',1,0.00,0.00,0.00,0.00,0.0000),(40,NULL,'H11511638156',5.00,NULL,148,197,'pending','2016-07-26 10:43:55','2016-07-26 10:44:02',1,0.00,0.00,0.00,0.00,0.0000),(41,NULL,'H04184150074',5.00,NULL,149,200,'pending','2016-07-26 10:45:35','2016-07-26 10:46:08',1,0.00,0.00,0.00,0.00,0.0000),(42,NULL,'H78538848664',5.00,NULL,152,203,'pending','2016-07-26 10:51:57','2016-07-26 10:51:57',1,0.00,0.00,0.00,0.00,0.0000),(43,NULL,'H48425899443',5.00,NULL,154,206,'ready','2016-07-26 10:53:19','2016-07-26 10:57:37',1,0.00,0.00,0.00,0.00,0.0000),(45,NULL,'H46188887680',5.00,NULL,158,212,'pending','2016-07-26 10:58:57','2016-07-26 10:59:01',1,0.00,0.00,0.00,0.00,0.0000),(49,NULL,'H87047489889',5.00,NULL,160,223,'pending','2016-07-26 11:03:00','2016-07-26 11:04:29',1,0.00,0.00,0.00,0.00,0.0000);
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_categories`
--

DROP TABLE IF EXISTS `spree_shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_categories`
--

LOCK TABLES `spree_shipping_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_categories` VALUES (1,'Default','2016-07-14 21:03:58','2016-07-14 21:03:58');
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_method_categories`
--

DROP TABLE IF EXISTS `spree_shipping_method_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_method_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_spree_shipping_method_categories` (`shipping_category_id`,`shipping_method_id`),
  KEY `index_spree_shipping_method_categories_on_shipping_method_id` (`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_method_categories`
--

LOCK TABLES `spree_shipping_method_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_method_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_method_categories` VALUES (2,2,1,'2016-07-14 21:04:39','2016-07-14 21:04:39'),(3,3,1,'2016-07-14 21:04:39','2016-07-14 21:04:39'),(4,4,1,'2016-07-14 21:04:39','2016-07-14 21:04:39'),(5,5,1,'2016-07-14 21:04:39','2016-07-14 21:04:39');
/*!40000 ALTER TABLE `spree_shipping_method_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods`
--

DROP TABLE IF EXISTS `spree_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `display_on` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tracking_url` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_shipping_methods_on_deleted_at` (`deleted_at`),
  KEY `index_spree_shipping_methods_on_tax_category_id` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods`
--

LOCK TABLES `spree_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods` VALUES (1,'UPS Ground (USD)','','2016-07-26 08:37:35','2016-07-14 21:04:39','2016-07-15 11:41:48','','',NULL,''),(2,'UPS Two Day (USD)','',NULL,'2016-07-14 21:04:39','2016-07-26 09:01:37','','',1,''),(3,'UPS One Day (USD)','',NULL,'2016-07-14 21:04:39','2016-07-15 11:42:11','','',NULL,''),(4,'UPS Ground (EU)','',NULL,'2016-07-14 21:04:39','2016-07-15 11:42:17','','',NULL,''),(5,'UPS Ground (EUR)','',NULL,'2016-07-14 21:04:39','2016-07-15 11:42:24','','',NULL,'');
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods_zones`
--

DROP TABLE IF EXISTS `spree_shipping_methods_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods_zones` (
  `shipping_method_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods_zones`
--

LOCK TABLES `spree_shipping_methods_zones` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods_zones` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods_zones` VALUES (1,2),(2,2),(3,2),(4,1),(5,1),(1,1),(2,1);
/*!40000 ALTER TABLE `spree_shipping_methods_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_rates`
--

DROP TABLE IF EXISTS `spree_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT '0',
  `cost` decimal(8,2) DEFAULT '0.00',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `spree_shipping_rates_join_index` (`shipment_id`,`shipping_method_id`),
  KEY `index_spree_shipping_rates_on_selected` (`selected`),
  KEY `index_spree_shipping_rates_on_tax_rate_id` (`tax_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_rates`
--

LOCK TABLES `spree_shipping_rates` WRITE;
/*!40000 ALTER TABLE `spree_shipping_rates` DISABLE KEYS */;
INSERT INTO `spree_shipping_rates` VALUES (10,1,1,1,5.00,'2016-07-14 21:05:26','2016-07-14 21:05:26',NULL),(11,1,2,0,10.00,'2016-07-14 21:05:26','2016-07-14 21:05:26',NULL),(12,1,3,0,15.00,'2016-07-14 21:05:26','2016-07-14 21:05:26',NULL),(16,2,1,1,5.00,'2016-07-14 21:05:27','2016-07-14 21:05:27',NULL),(17,2,2,0,10.00,'2016-07-14 21:05:27','2016-07-14 21:05:27',NULL),(18,2,3,0,15.00,'2016-07-14 21:05:27','2016-07-14 21:05:27',NULL),(20,4,4,1,5.00,'2016-07-15 11:24:00','2016-07-15 11:24:04',NULL),(21,15,4,1,5.00,'2016-07-15 11:51:55','2016-07-15 11:52:10',NULL),(22,15,5,0,8.00,'2016-07-15 11:51:55','2016-07-15 11:51:55',NULL),(25,17,4,1,5.00,'2016-07-15 13:18:55','2016-07-15 13:18:55',NULL),(26,17,5,0,8.00,'2016-07-15 13:18:55','2016-07-15 13:18:55',NULL),(27,18,4,1,5.00,'2016-07-15 13:21:17','2016-07-15 13:21:17',NULL),(28,18,5,0,8.00,'2016-07-15 13:21:17','2016-07-15 13:21:17',NULL),(33,31,4,1,5.00,'2016-07-15 18:46:01','2016-07-15 18:46:01',NULL),(34,31,5,0,8.00,'2016-07-15 18:46:01','2016-07-15 18:46:01',NULL),(37,33,4,1,5.00,'2016-07-17 09:16:29','2016-07-17 09:16:45',NULL),(38,33,5,0,8.00,'2016-07-17 09:16:29','2016-07-17 09:16:29',NULL),(39,34,4,1,5.00,'2016-07-17 09:36:36','2016-07-17 09:36:40',NULL),(40,34,5,0,8.00,'2016-07-17 09:36:36','2016-07-17 09:36:36',NULL),(41,35,4,1,5.00,'2016-07-17 10:22:43','2016-07-17 10:22:46',NULL),(42,35,5,0,8.00,'2016-07-17 10:22:43','2016-07-17 10:22:43',NULL),(43,36,4,1,5.00,'2016-07-26 09:00:13','2016-07-26 09:00:13',NULL),(44,36,5,0,8.00,'2016-07-26 09:00:13','2016-07-26 09:00:13',NULL),(45,36,2,0,10.00,'2016-07-26 09:00:13','2016-07-26 09:00:13',NULL),(55,39,4,1,5.00,'2016-07-26 10:38:27','2016-07-26 10:38:27',NULL),(56,39,5,0,8.00,'2016-07-26 10:38:27','2016-07-26 10:38:27',NULL),(57,39,2,0,199.80,'2016-07-26 10:38:27','2016-07-26 10:38:27',1),(58,38,4,1,5.00,'2016-07-26 10:38:51','2016-07-26 10:38:51',NULL),(59,38,5,0,8.00,'2016-07-26 10:38:51','2016-07-26 10:38:51',NULL),(60,38,2,0,99.90,'2016-07-26 10:38:51','2016-07-26 10:38:51',1),(61,40,4,1,5.00,'2016-07-26 10:43:55','2016-07-26 10:43:55',NULL),(62,40,5,0,8.00,'2016-07-26 10:43:55','2016-07-26 10:43:55',NULL),(63,40,2,0,99.90,'2016-07-26 10:43:55','2016-07-26 10:43:55',1),(64,41,4,1,5.00,'2016-07-26 10:45:35','2016-07-26 10:45:35',NULL),(65,41,5,0,8.00,'2016-07-26 10:45:35','2016-07-26 10:45:35',NULL),(66,41,2,0,99.90,'2016-07-26 10:45:35','2016-07-26 10:45:35',1),(67,42,4,1,5.00,'2016-07-26 10:51:57','2016-07-26 10:51:57',NULL),(68,42,5,0,8.00,'2016-07-26 10:51:57','2016-07-26 10:51:57',NULL),(69,42,2,0,199.80,'2016-07-26 10:51:57','2016-07-26 10:51:57',1),(70,43,4,1,5.00,'2016-07-26 10:53:19','2016-07-26 10:53:19',NULL),(71,43,5,0,8.00,'2016-07-26 10:53:19','2016-07-26 10:53:19',NULL),(72,43,2,0,99.90,'2016-07-26 10:53:19','2016-07-26 10:53:19',1),(76,45,4,1,5.00,'2016-07-26 10:58:57','2016-07-26 10:58:57',NULL),(77,45,5,0,8.00,'2016-07-26 10:58:57','2016-07-26 10:58:57',NULL),(78,45,2,0,99.90,'2016-07-26 10:58:57','2016-07-26 10:58:57',1),(88,49,4,1,5.00,'2016-07-26 11:03:00','2016-07-26 11:03:00',NULL),(89,49,5,0,8.00,'2016-07-26 11:03:00','2016-07-26 11:03:00',NULL),(90,49,2,0,199.80,'2016-07-26 11:03:00','2016-07-26 11:03:00',1);
/*!40000 ALTER TABLE `spree_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_skrill_transactions`
--

DROP TABLE IF EXISTS `spree_skrill_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_skrill_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_skrill_transactions`
--

LOCK TABLES `spree_skrill_transactions` WRITE;
/*!40000 ALTER TABLE `spree_skrill_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_skrill_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_state_changes`
--

DROP TABLE IF EXISTS `spree_state_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `previous_state` varchar(255) DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stateful_type` varchar(255) DEFAULT NULL,
  `next_state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_state_changes_on_stateful_id_and_stateful_type` (`stateful_id`,`stateful_type`),
  KEY `index_spree_state_changes_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_state_changes`
--

LOCK TABLES `spree_state_changes` WRITE;
/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
INSERT INTO `spree_state_changes` VALUES (1,'payment',NULL,1,NULL,'Spree::Order','balance_due','2016-07-14 21:05:25','2016-07-14 21:05:25'),(2,'shipment',NULL,1,NULL,'Spree::Order','pending','2016-07-14 21:05:26','2016-07-14 21:05:26'),(3,'payment',NULL,2,NULL,'Spree::Order','balance_due','2016-07-14 21:05:26','2016-07-14 21:05:26'),(4,'shipment',NULL,2,NULL,'Spree::Order','pending','2016-07-14 21:05:26','2016-07-14 21:05:26'),(5,'order','cart',3,NULL,'Spree::Order','address','2016-07-15 10:53:24','2016-07-15 10:53:24'),(6,'order','address',3,NULL,'Spree::Order','delivery','2016-07-15 10:54:23','2016-07-15 10:54:23'),(7,'order','cart',3,1,'Spree::Order','address','2016-07-15 11:23:54','2016-07-15 11:23:54'),(8,'order','address',3,1,'Spree::Order','delivery','2016-07-15 11:24:00','2016-07-15 11:24:00'),(9,'order','delivery',3,1,'Spree::Order','payment','2016-07-15 11:24:05','2016-07-15 11:24:05'),(10,'order','payment',3,1,'Spree::Order','confirm','2016-07-15 11:24:57','2016-07-15 11:24:57'),(11,'payment','checkout',3,NULL,'Spree::Payment','processing','2016-07-15 11:25:03','2016-07-15 11:25:03'),(12,'payment','processing',3,NULL,'Spree::Payment','pending','2016-07-15 11:25:04','2016-07-15 11:25:04'),(13,'order','confirm',3,1,'Spree::Order','complete','2016-07-15 11:25:04','2016-07-15 11:25:04'),(14,'payment',NULL,3,1,'Spree::Order','balance_due','2016-07-15 11:25:04','2016-07-15 11:25:04'),(15,'shipment',NULL,3,1,'Spree::Order','pending','2016-07-15 11:25:04','2016-07-15 11:25:04'),(17,'order','address',6,1,'Spree::Order','delivery','2016-07-15 11:51:55','2016-07-15 11:51:55'),(18,'order','delivery',6,1,'Spree::Order','payment','2016-07-15 11:52:10','2016-07-15 11:52:10'),(19,'payment','checkout',4,NULL,'Spree::Payment','invalid','2016-07-15 11:52:18','2016-07-15 11:52:18'),(20,'order','payment',6,1,'Spree::Order','confirm','2016-07-15 11:52:18','2016-07-15 11:52:18'),(21,'payment','checkout',5,NULL,'Spree::Payment','processing','2016-07-15 11:52:23','2016-07-15 11:52:23'),(22,'payment','processing',5,NULL,'Spree::Payment','pending','2016-07-15 11:52:24','2016-07-15 11:52:24'),(23,'order','confirm',6,1,'Spree::Order','complete','2016-07-15 11:52:24','2016-07-15 11:52:24'),(24,'payment',NULL,6,1,'Spree::Order','balance_due','2016-07-15 11:52:24','2016-07-15 11:52:24'),(25,'shipment',NULL,6,1,'Spree::Order','pending','2016-07-15 11:52:25','2016-07-15 11:52:25'),(26,'order','cart',4,3,'Spree::Order','address','2016-07-15 12:28:14','2016-07-15 12:28:14'),(27,'order','address',4,3,'Spree::Order','delivery','2016-07-15 12:28:30','2016-07-15 12:28:30'),(28,'order','delivery',4,3,'Spree::Order','payment','2016-07-15 12:28:34','2016-07-15 12:28:34'),(29,'order','cart',4,3,'Spree::Order','address','2016-07-15 13:18:47','2016-07-15 13:18:47'),(30,'order','address',4,3,'Spree::Order','delivery','2016-07-15 13:18:56','2016-07-15 13:18:56'),(31,'order','delivery',4,3,'Spree::Order','payment','2016-07-15 13:19:01','2016-07-15 13:19:01'),(32,'order','cart',5,3,'Spree::Order','address','2016-07-15 13:20:17','2016-07-15 13:20:17'),(33,'order','address',5,3,'Spree::Order','delivery','2016-07-15 13:21:17','2016-07-15 13:21:17'),(35,'order','cart',11,3,'Spree::Order','address','2016-07-15 18:30:01','2016-07-15 18:30:01'),(36,'order','address',11,3,'Spree::Order','delivery','2016-07-15 18:31:25','2016-07-15 18:31:25'),(37,'order','delivery',11,3,'Spree::Order','payment','2016-07-15 18:32:25','2016-07-15 18:32:25'),(38,'order','address',11,3,'Spree::Order','delivery','2016-07-15 18:44:35','2016-07-15 18:44:35'),(39,'order','delivery',11,3,'Spree::Order','payment','2016-07-15 18:44:41','2016-07-15 18:44:41'),(40,'order','address',11,3,'Spree::Order','delivery','2016-07-15 18:46:01','2016-07-15 18:46:01'),(41,'order','delivery',11,3,'Spree::Order','payment','2016-07-15 18:46:04','2016-07-15 18:46:04'),(42,'order','payment',11,3,'Spree::Order','confirm','2016-07-15 18:56:32','2016-07-15 18:56:32'),(46,'payment','checkout',7,NULL,'Spree::Payment','invalid','2016-07-16 08:17:55','2016-07-16 08:17:55'),(48,'payment','checkout',8,NULL,'Spree::Payment','invalid','2016-07-16 08:22:53','2016-07-16 08:22:53'),(50,'payment','checkout',9,NULL,'Spree::Payment','invalid','2016-07-16 08:23:14','2016-07-16 08:23:14'),(52,'payment','checkout',10,NULL,'Spree::Payment','invalid','2016-07-16 08:28:29','2016-07-16 08:28:29'),(54,'payment','checkout',11,NULL,'Spree::Payment','invalid','2016-07-16 08:30:43','2016-07-16 08:30:43'),(56,'payment','checkout',12,NULL,'Spree::Payment','invalid','2016-07-16 08:30:58','2016-07-16 08:30:58'),(58,'payment','checkout',13,NULL,'Spree::Payment','invalid','2016-07-16 08:33:39','2016-07-16 08:33:39'),(60,'payment','checkout',14,NULL,'Spree::Payment','invalid','2016-07-16 08:35:09','2016-07-16 08:35:09'),(61,'payment','checkout',15,NULL,'Spree::Payment','processing','2016-07-16 08:35:10','2016-07-16 08:35:10'),(62,'payment','processing',15,NULL,'Spree::Payment','pending','2016-07-16 08:35:11','2016-07-16 08:35:11'),(69,'payment','checkout',16,NULL,'Spree::Payment','invalid','2016-07-16 08:42:52','2016-07-16 08:42:52'),(71,'payment','checkout',17,NULL,'Spree::Payment','invalid','2016-07-16 08:55:15','2016-07-16 08:55:15'),(76,'payment','checkout',19,NULL,'Spree::Payment','invalid','2016-07-16 09:13:49','2016-07-16 09:13:49'),(78,'payment','checkout',20,NULL,'Spree::Payment','invalid','2016-07-16 09:21:28','2016-07-16 09:21:28'),(80,'payment','checkout',18,NULL,'Spree::Payment','invalid','2016-07-16 09:30:49','2016-07-16 09:30:49'),(81,'order','payment',13,6,'Spree::Order','confirm','2016-07-16 09:30:50','2016-07-16 09:30:50'),(83,'payment','checkout',23,NULL,'Spree::Payment','invalid','2016-07-16 09:37:55','2016-07-16 09:37:55'),(85,'payment','checkout',24,NULL,'Spree::Payment','invalid','2016-07-16 09:46:51','2016-07-16 09:46:51'),(87,'payment','checkout',25,NULL,'Spree::Payment','invalid','2016-07-16 09:48:42','2016-07-16 09:48:42'),(89,'payment','checkout',26,NULL,'Spree::Payment','invalid','2016-07-16 09:49:24','2016-07-16 09:49:24'),(99,'payment','checkout',28,NULL,'Spree::Payment','invalid','2016-07-16 11:00:16','2016-07-16 11:00:16'),(102,'payment','checkout',29,NULL,'Spree::Payment','invalid','2016-07-16 11:01:13','2016-07-16 11:01:13'),(105,'payment','checkout',30,NULL,'Spree::Payment','invalid','2016-07-16 11:01:43','2016-07-16 11:01:43'),(108,'payment','checkout',31,NULL,'Spree::Payment','invalid','2016-07-16 11:03:19','2016-07-16 11:03:19'),(111,'payment','checkout',32,NULL,'Spree::Payment','invalid','2016-07-16 11:04:24','2016-07-16 11:04:24'),(114,'payment','checkout',33,NULL,'Spree::Payment','invalid','2016-07-16 11:04:59','2016-07-16 11:04:59'),(117,'payment','checkout',34,NULL,'Spree::Payment','invalid','2016-07-16 11:14:08','2016-07-16 11:14:08'),(120,'payment','checkout',35,NULL,'Spree::Payment','invalid','2016-07-16 11:28:19','2016-07-16 11:28:19'),(123,'payment','checkout',36,NULL,'Spree::Payment','invalid','2016-07-16 11:45:36','2016-07-16 11:45:36'),(124,'payment','checkout',37,NULL,'Spree::Payment','processing','2016-07-16 11:45:37','2016-07-16 11:45:37'),(125,'payment','processing',37,NULL,'Spree::Payment','pending','2016-07-16 11:45:38','2016-07-16 11:45:38'),(128,'payment','checkout',38,NULL,'Spree::Payment','invalid','2016-07-16 11:48:48','2016-07-16 11:48:48'),(129,'payment','checkout',39,NULL,'Spree::Payment','invalid','2016-07-16 11:51:32','2016-07-16 11:51:32'),(130,'payment','checkout',40,NULL,'Spree::Payment','invalid','2016-07-16 11:58:19','2016-07-16 11:58:19'),(131,'payment','balance_due',19,11,'Spree::Order','paid','2016-07-16 12:02:10','2016-07-16 12:02:10'),(132,'payment','checkout',41,NULL,'Spree::Payment','invalid','2016-07-16 12:02:10','2016-07-16 12:02:10'),(133,'payment','balance_due',19,11,'Spree::Order','paid','2016-07-16 12:02:11','2016-07-16 12:02:11'),(134,'order','delivery',19,11,'Spree::Order','complete','2016-07-16 12:02:11','2016-07-16 12:02:11'),(135,'payment','checkout',42,NULL,'Spree::Payment','invalid','2016-07-16 12:02:12','2016-07-16 12:02:12'),(136,'order','delivery',19,11,'Spree::Order','complete','2016-07-16 12:02:13','2016-07-16 12:02:13'),(137,'payment','checkout',43,NULL,'Spree::Payment','invalid','2016-07-16 12:02:24','2016-07-16 12:02:24'),(138,'order','delivery',19,11,'Spree::Order','complete','2016-07-16 12:02:24','2016-07-16 12:02:24'),(143,'payment','checkout',46,NULL,'Spree::Payment','invalid','2016-07-16 12:23:28','2016-07-16 12:23:28'),(145,'payment','checkout',48,NULL,'Spree::Payment','invalid','2016-07-16 13:37:03','2016-07-16 13:37:03'),(148,'payment','checkout',50,NULL,'Spree::Payment','invalid','2016-07-16 13:38:04','2016-07-16 13:38:04'),(151,'payment','checkout',51,NULL,'Spree::Payment','invalid','2016-07-16 13:41:54','2016-07-16 13:41:54'),(154,'order','delivery',23,12,'Spree::Order','payment','2016-07-16 13:47:05','2016-07-16 13:47:05'),(155,'order','payment',23,12,'Spree::Order','confirm','2016-07-16 13:47:05','2016-07-16 13:47:05'),(156,'payment','checkout',52,NULL,'Spree::Payment','invalid','2016-07-17 08:53:10','2016-07-17 08:53:10'),(159,'payment','checkout',54,NULL,'Spree::Payment','invalid','2016-07-17 08:56:45','2016-07-17 08:56:45'),(160,'payment','checkout',55,NULL,'Spree::Payment','processing','2016-07-17 08:56:46','2016-07-17 08:56:46'),(161,'payment','processing',55,NULL,'Spree::Payment','pending','2016-07-17 08:56:47','2016-07-17 08:56:47'),(166,'payment','checkout',56,NULL,'Spree::Payment','invalid','2016-07-17 09:05:36','2016-07-17 09:05:36'),(168,'payment','checkout',57,NULL,'Spree::Payment','invalid','2016-07-17 09:07:37','2016-07-17 09:07:37'),(170,'order','cart',24,1,'Spree::Order','address','2016-07-17 09:08:35','2016-07-17 09:08:35'),(171,'order','cart',25,NULL,'Spree::Order','address','2016-07-17 09:15:22','2016-07-17 09:15:22'),(172,'order','address',25,NULL,'Spree::Order','delivery','2016-07-17 09:16:29','2016-07-17 09:16:29'),(173,'order','delivery',25,NULL,'Spree::Order','payment','2016-07-17 09:16:45','2016-07-17 09:16:45'),(174,'order','payment',25,NULL,'Spree::Order','confirm','2016-07-17 09:17:59','2016-07-17 09:17:59'),(175,'payment','checkout',60,NULL,'Spree::Payment','processing','2016-07-17 09:18:18','2016-07-17 09:18:18'),(176,'payment','processing',60,NULL,'Spree::Payment','pending','2016-07-17 09:18:19','2016-07-17 09:18:19'),(177,'order','confirm',25,NULL,'Spree::Order','complete','2016-07-17 09:18:19','2016-07-17 09:18:19'),(178,'payment',NULL,25,NULL,'Spree::Order','balance_due','2016-07-17 09:18:19','2016-07-17 09:18:19'),(179,'shipment',NULL,25,NULL,'Spree::Order','pending','2016-07-17 09:18:19','2016-07-17 09:18:19'),(180,'order','cart',26,NULL,'Spree::Order','address','2016-07-17 09:35:28','2016-07-17 09:35:28'),(181,'order','address',26,NULL,'Spree::Order','delivery','2016-07-17 09:36:36','2016-07-17 09:36:36'),(182,'order','delivery',26,NULL,'Spree::Order','payment','2016-07-17 09:36:40','2016-07-17 09:36:40'),(183,'order','payment',26,NULL,'Spree::Order','confirm','2016-07-17 09:37:11','2016-07-17 09:37:11'),(184,'payment','checkout',61,NULL,'Spree::Payment','processing','2016-07-17 09:37:15','2016-07-17 09:37:15'),(185,'payment','processing',61,NULL,'Spree::Payment','completed','2016-07-17 09:37:17','2016-07-17 09:37:17'),(186,'order','confirm',26,NULL,'Spree::Order','complete','2016-07-17 09:37:17','2016-07-17 09:37:17'),(187,'payment',NULL,26,NULL,'Spree::Order','paid','2016-07-17 09:37:17','2016-07-17 09:37:17'),(188,'shipment',NULL,26,NULL,'Spree::Order','ready','2016-07-17 09:37:17','2016-07-17 09:37:17'),(189,'payment','checkout',58,NULL,'Spree::Payment','invalid','2016-07-17 09:41:43','2016-07-17 09:41:43'),(190,'order','delivery',22,11,'Spree::Order','complete','2016-07-17 09:41:43','2016-07-17 09:41:43'),(191,'payment','checkout',63,NULL,'Spree::Payment','invalid','2016-07-17 09:43:34','2016-07-17 09:43:34'),(192,'order','delivery',27,11,'Spree::Order','payment','2016-07-17 09:43:35','2016-07-17 09:43:35'),(193,'order','payment',27,11,'Spree::Order','confirm','2016-07-17 09:43:35','2016-07-17 09:43:35'),(194,'payment','checkout',64,NULL,'Spree::Payment','invalid','2016-07-17 10:03:54','2016-07-17 10:03:54'),(195,'order','delivery',27,11,'Spree::Order','payment','2016-07-17 10:03:55','2016-07-17 10:03:55'),(196,'order','payment',27,11,'Spree::Order','confirm','2016-07-17 10:03:55','2016-07-17 10:03:55'),(197,'payment','checkout',66,NULL,'Spree::Payment','invalid','2016-07-17 10:06:41','2016-07-17 10:06:41'),(198,'order','delivery',28,11,'Spree::Order','payment','2016-07-17 10:06:41','2016-07-17 10:06:41'),(199,'order','payment',28,11,'Spree::Order','confirm','2016-07-17 10:06:41','2016-07-17 10:06:41'),(200,'payment','checkout',67,NULL,'Spree::Payment','invalid','2016-07-17 10:07:19','2016-07-17 10:07:19'),(201,'order','delivery',28,11,'Spree::Order','payment','2016-07-17 10:07:19','2016-07-17 10:07:19'),(202,'order','payment',28,11,'Spree::Order','confirm','2016-07-17 10:07:19','2016-07-17 10:07:19'),(203,'payment','checkout',69,NULL,'Spree::Payment','invalid','2016-07-17 10:13:17','2016-07-17 10:13:17'),(206,'payment','checkout',70,NULL,'Spree::Payment','invalid','2016-07-17 10:18:33','2016-07-17 10:18:33'),(207,'payment','checkout',71,NULL,'Spree::Payment','processing','2016-07-17 10:18:39','2016-07-17 10:18:39'),(208,'payment','processing',71,NULL,'Spree::Payment','completed','2016-07-17 10:18:40','2016-07-17 10:18:40'),(211,'order','cart',31,NULL,'Spree::Order','address','2016-07-17 10:21:43','2016-07-17 10:21:43'),(212,'order','address',31,NULL,'Spree::Order','delivery','2016-07-17 10:22:43','2016-07-17 10:22:43'),(213,'order','delivery',31,NULL,'Spree::Order','payment','2016-07-17 10:22:46','2016-07-17 10:22:46'),(214,'order','payment',31,NULL,'Spree::Order','confirm','2016-07-17 10:23:34','2016-07-17 10:23:34'),(215,'payment','checkout',73,NULL,'Spree::Payment','processing','2016-07-17 10:23:37','2016-07-17 10:23:37'),(216,'payment','processing',73,NULL,'Spree::Payment','completed','2016-07-17 10:23:38','2016-07-17 10:23:38'),(217,'order','confirm',31,NULL,'Spree::Order','complete','2016-07-17 10:23:38','2016-07-17 10:23:38'),(218,'payment',NULL,31,NULL,'Spree::Order','paid','2016-07-17 10:23:39','2016-07-17 10:23:39'),(219,'shipment',NULL,31,NULL,'Spree::Order','ready','2016-07-17 10:23:39','2016-07-17 10:23:39'),(221,'payment','checkout',74,NULL,'Spree::Payment','invalid','2016-07-17 10:48:39','2016-07-17 10:48:39'),(222,'payment','checkout',75,NULL,'Spree::Payment','invalid','2016-07-17 10:48:39','2016-07-17 10:48:39'),(225,'payment','checkout',76,NULL,'Spree::Payment','invalid','2016-07-17 10:49:37','2016-07-17 10:49:37'),(226,'payment','checkout',77,NULL,'Spree::Payment','processing','2016-07-17 10:49:39','2016-07-17 10:49:39'),(227,'payment','processing',77,NULL,'Spree::Payment','completed','2016-07-17 10:49:40','2016-07-17 10:49:40'),(230,'order','payment',37,11,'Spree::Order','confirm','2016-07-17 11:21:56','2016-07-17 11:21:56'),(231,'payment','checkout',78,NULL,'Spree::Payment','invalid','2016-07-17 11:22:10','2016-07-17 11:22:10'),(232,'payment','checkout',79,NULL,'Spree::Payment','invalid','2016-07-17 11:22:10','2016-07-17 11:22:10'),(233,'order','delivery',37,11,'Spree::Order','payment','2016-07-17 11:22:11','2016-07-17 11:22:11'),(234,'order','payment',37,11,'Spree::Order','confirm','2016-07-17 11:22:11','2016-07-17 11:22:11'),(235,'order','delivery',38,13,'Spree::Order','payment','2016-07-17 15:43:31','2016-07-17 15:43:31'),(236,'order','delivery',38,13,'Spree::Order','payment','2016-07-17 15:44:09','2016-07-17 15:44:09'),(237,'order','delivery',38,13,'Spree::Order','payment','2016-07-17 15:44:58','2016-07-17 15:44:58'),(238,'order','delivery',38,13,'Spree::Order','payment','2016-07-17 15:45:23','2016-07-17 15:45:23'),(239,'order','delivery',38,13,'Spree::Order','payment','2016-07-17 16:13:42','2016-07-17 16:13:42'),(240,'order','delivery',38,13,'Spree::Order','payment','2016-07-17 16:15:15','2016-07-17 16:15:15'),(241,'order','payment',38,13,'Spree::Order','confirm','2016-07-17 16:15:16','2016-07-17 16:15:16'),(242,'order','delivery',39,13,'Spree::Order','payment','2016-07-17 16:19:17','2016-07-17 16:19:17'),(243,'order','payment',39,13,'Spree::Order','confirm','2016-07-17 16:19:18','2016-07-17 16:19:18'),(244,'payment','checkout',82,NULL,'Spree::Payment','invalid','2016-07-17 16:22:06','2016-07-17 16:22:06'),(245,'order','delivery',39,13,'Spree::Order','payment','2016-07-17 16:22:08','2016-07-17 16:22:08'),(246,'order','payment',39,13,'Spree::Order','confirm','2016-07-17 16:22:08','2016-07-17 16:22:08'),(247,'payment','checkout',83,NULL,'Spree::Payment','invalid','2016-07-17 16:26:53','2016-07-17 16:26:53'),(248,'order','delivery',39,13,'Spree::Order','payment','2016-07-17 16:26:55','2016-07-17 16:26:55'),(249,'order','payment',39,13,'Spree::Order','confirm','2016-07-17 16:26:56','2016-07-17 16:26:56'),(250,'payment','checkout',84,NULL,'Spree::Payment','invalid','2016-07-17 16:29:08','2016-07-17 16:29:08'),(251,'order','delivery',39,13,'Spree::Order','payment','2016-07-17 16:29:09','2016-07-17 16:29:09'),(252,'order','payment',39,13,'Spree::Order','confirm','2016-07-17 16:29:10','2016-07-17 16:29:10'),(253,'payment','checkout',85,NULL,'Spree::Payment','invalid','2016-07-17 16:29:27','2016-07-17 16:29:27'),(254,'order','delivery',39,13,'Spree::Order','payment','2016-07-17 16:29:28','2016-07-17 16:29:28'),(255,'order','payment',39,13,'Spree::Order','confirm','2016-07-17 16:29:29','2016-07-17 16:29:29'),(256,'payment','checkout',86,NULL,'Spree::Payment','invalid','2016-07-17 16:29:52','2016-07-17 16:29:52'),(257,'order','delivery',39,13,'Spree::Order','payment','2016-07-17 16:29:53','2016-07-17 16:29:53'),(258,'order','payment',39,13,'Spree::Order','confirm','2016-07-17 16:29:54','2016-07-17 16:29:54'),(259,'payment','checkout',87,NULL,'Spree::Payment','invalid','2016-07-17 16:31:19','2016-07-17 16:31:19'),(260,'order','delivery',39,13,'Spree::Order','payment','2016-07-17 16:31:20','2016-07-17 16:31:20'),(261,'order','payment',39,13,'Spree::Order','confirm','2016-07-17 16:31:21','2016-07-17 16:31:21'),(262,'payment','checkout',88,NULL,'Spree::Payment','invalid','2016-07-17 16:32:03','2016-07-17 16:32:03'),(263,'order','delivery',39,13,'Spree::Order','payment','2016-07-17 16:32:05','2016-07-17 16:32:05'),(264,'order','payment',39,13,'Spree::Order','confirm','2016-07-17 16:32:06','2016-07-17 16:32:06'),(265,'payment','checkout',89,NULL,'Spree::Payment','invalid','2016-07-17 16:35:14','2016-07-17 16:35:14'),(266,'order','delivery',39,13,'Spree::Order','payment','2016-07-17 16:35:16','2016-07-17 16:35:16'),(267,'order','payment',39,13,'Spree::Order','confirm','2016-07-17 16:35:17','2016-07-17 16:35:17'),(268,'order','delivery',41,12,'Spree::Order','payment','2016-07-17 17:01:59','2016-07-17 17:01:59'),(269,'order','delivery',40,13,'Spree::Order','payment','2016-07-17 17:04:43','2016-07-17 17:04:43'),(270,'order','delivery',42,13,'Spree::Order','payment','2016-07-17 17:09:32','2016-07-17 17:09:32'),(271,'order','delivery',43,13,'Spree::Order','payment','2016-07-17 17:10:03','2016-07-17 17:10:03'),(272,'order','delivery',44,13,'Spree::Order','payment','2016-07-17 17:10:58','2016-07-17 17:10:58'),(273,'order','delivery',45,13,'Spree::Order','payment','2016-07-17 17:13:00','2016-07-17 17:13:00'),(274,'order','delivery',46,13,'Spree::Order','payment','2016-07-17 17:13:41','2016-07-17 17:13:41'),(275,'order','delivery',47,13,'Spree::Order','payment','2016-07-17 17:17:38','2016-07-17 17:17:38'),(276,'order','delivery',48,13,'Spree::Order','payment','2016-07-17 17:18:37','2016-07-17 17:18:37'),(277,'order','delivery',49,13,'Spree::Order','payment','2016-07-17 17:21:38','2016-07-17 17:21:38'),(278,'order','delivery',50,13,'Spree::Order','payment','2016-07-17 17:22:19','2016-07-17 17:22:19'),(279,'order','delivery',51,13,'Spree::Order','payment','2016-07-17 17:23:04','2016-07-17 17:23:04'),(280,'order','delivery',52,13,'Spree::Order','payment','2016-07-17 17:25:04','2016-07-17 17:25:04'),(281,'order','delivery',53,13,'Spree::Order','payment','2016-07-17 17:25:41','2016-07-17 17:25:41'),(282,'order','payment',53,13,'Spree::Order','confirm','2016-07-17 17:25:42','2016-07-17 17:25:42'),(283,'order','delivery',54,12,'Spree::Order','payment','2016-07-17 17:27:46','2016-07-17 17:27:46'),(284,'order','delivery',55,12,'Spree::Order','complete','2016-07-17 17:28:13','2016-07-17 17:28:13'),(285,'payment',NULL,55,12,'Spree::Order','paid','2016-07-17 17:28:13','2016-07-17 17:28:13'),(286,'order','delivery',56,13,'Spree::Order','payment','2016-07-17 17:43:12','2016-07-17 17:43:12'),(287,'order','payment',56,13,'Spree::Order','confirm','2016-07-17 17:43:14','2016-07-17 17:43:14'),(288,'order','delivery',57,12,'Spree::Order','payment','2016-07-17 17:43:34','2016-07-17 17:43:34'),(289,'order','delivery',58,12,'Spree::Order','payment','2016-07-17 17:46:51','2016-07-17 17:46:51'),(290,'order','delivery',59,13,'Spree::Order','payment','2016-07-17 17:48:54','2016-07-17 17:48:54'),(291,'order','delivery',60,13,'Spree::Order','payment','2016-07-17 17:53:00','2016-07-17 17:53:00'),(292,'order','delivery',61,13,'Spree::Order','complete','2016-07-17 21:10:28','2016-07-17 21:10:28'),(293,'payment',NULL,61,13,'Spree::Order','paid','2016-07-17 21:10:28','2016-07-17 21:10:28'),(294,'order','delivery',62,13,'Spree::Order','payment','2016-07-17 21:15:36','2016-07-17 21:15:36'),(295,'order','payment',62,13,'Spree::Order','confirm','2016-07-17 21:15:37','2016-07-17 21:15:37'),(296,'order','delivery',64,13,'Spree::Order','payment','2016-07-17 21:33:22','2016-07-17 21:33:22'),(297,'order','delivery',64,13,'Spree::Order','payment','2016-07-17 21:33:22','2016-07-17 21:33:22'),(298,'order','delivery',65,12,'Spree::Order','payment','2016-07-17 21:37:21','2016-07-17 21:37:21'),(299,'order','delivery',65,12,'Spree::Order','payment','2016-07-17 21:37:21','2016-07-17 21:37:21'),(300,'order','delivery',66,13,'Spree::Order','payment','2016-07-18 08:27:45','2016-07-18 08:27:45'),(301,'order','delivery',66,13,'Spree::Order','payment','2016-07-18 08:27:46','2016-07-18 08:27:46'),(302,'order','delivery',71,15,'Spree::Order','payment','2016-07-18 12:22:51','2016-07-18 12:22:51'),(303,'order','delivery',71,15,'Spree::Order','payment','2016-07-18 12:22:52','2016-07-18 12:22:52'),(304,'order','delivery',77,11,'Spree::Order','payment','2016-07-20 18:08:31','2016-07-20 18:08:31'),(305,'order','delivery',77,11,'Spree::Order','payment','2016-07-20 18:08:32','2016-07-20 18:08:32'),(306,'order','delivery',79,18,'Spree::Order','payment','2016-07-22 11:36:01','2016-07-22 11:36:01'),(307,'order','delivery',79,18,'Spree::Order','payment','2016-07-22 11:36:03','2016-07-22 11:36:03'),(308,'order','delivery',117,13,'Spree::Order','payment','2016-07-26 07:08:23','2016-07-26 07:08:23'),(309,'order','delivery',117,13,'Spree::Order','payment','2016-07-26 07:08:24','2016-07-26 07:08:24'),(310,'order','cart',122,13,'Spree::Order','address','2016-07-26 08:43:18','2016-07-26 08:43:18'),(311,'order','cart',123,13,'Spree::Order','address','2016-07-26 08:43:50','2016-07-26 08:43:50'),(312,'order','cart',124,13,'Spree::Order','address','2016-07-26 08:46:37','2016-07-26 08:46:37'),(313,'order','cart',126,13,'Spree::Order','address','2016-07-26 08:54:36','2016-07-26 08:54:36'),(314,'order','address',128,13,'Spree::Order','delivery','2016-07-26 09:00:13','2016-07-26 09:00:13'),(315,'order','delivery',129,13,'Spree::Order','payment','2016-07-26 09:00:45','2016-07-26 09:00:45'),(316,'order','delivery',130,13,'Spree::Order','payment','2016-07-26 09:00:53','2016-07-26 09:00:53'),(317,'order','delivery',133,13,'Spree::Order','payment','2016-07-26 09:25:56','2016-07-26 09:25:56'),(318,'order','delivery',135,13,'Spree::Order','payment','2016-07-26 09:29:22','2016-07-26 09:29:22'),(319,'order','delivery',136,13,'Spree::Order','payment','2016-07-26 09:34:33','2016-07-26 09:34:33'),(320,'order','delivery',137,13,'Spree::Order','payment','2016-07-26 09:35:31','2016-07-26 09:35:31'),(321,'order','delivery',140,13,'Spree::Order','payment','2016-07-26 09:50:34','2016-07-26 09:50:34'),(322,'order','delivery',140,13,'Spree::Order','payment','2016-07-26 09:50:37','2016-07-26 09:50:37'),(323,'order','delivery',141,13,'Spree::Order','payment','2016-07-26 09:59:25','2016-07-26 09:59:25'),(324,'order','delivery',142,13,'Spree::Order','payment','2016-07-26 10:02:05','2016-07-26 10:02:05'),(329,'order','delivery',143,13,'Spree::Order','payment','2016-07-26 10:22:50','2016-07-26 10:22:50'),(330,'order','cart',145,13,'Spree::Order','address','2016-07-26 10:24:47','2016-07-26 10:24:47'),(332,'order','address',146,13,'Spree::Order','delivery','2016-07-26 10:29:38','2016-07-26 10:29:38'),(333,'order','address',147,54,'Spree::Order','delivery','2016-07-26 10:33:34','2016-07-26 10:33:34'),(334,'order','payment',146,13,'Spree::Order','confirm','2016-07-26 10:35:54','2016-07-26 10:35:54'),(335,'order','payment',146,13,'Spree::Order','confirm','2016-07-26 10:35:55','2016-07-26 10:35:55'),(336,'order','address',148,13,'Spree::Order','delivery','2016-07-26 10:43:55','2016-07-26 10:43:55'),(337,'order','payment',148,13,'Spree::Order','confirm','2016-07-26 10:44:02','2016-07-26 10:44:02'),(338,'order','payment',148,13,'Spree::Order','confirm','2016-07-26 10:44:02','2016-07-26 10:44:02'),(339,'order','address',149,13,'Spree::Order','delivery','2016-07-26 10:45:36','2016-07-26 10:45:36'),(340,'order','payment',149,13,'Spree::Order','confirm','2016-07-26 10:46:08','2016-07-26 10:46:08'),(341,'order','payment',149,13,'Spree::Order','confirm','2016-07-26 10:46:09','2016-07-26 10:46:09'),(342,'order','payment',151,13,'Spree::Order','confirm','2016-07-26 10:48:07','2016-07-26 10:48:07'),(343,'order','payment',151,13,'Spree::Order','confirm','2016-07-26 10:48:07','2016-07-26 10:48:07'),(344,'order','address',152,54,'Spree::Order','delivery','2016-07-26 10:51:57','2016-07-26 10:51:57'),(345,'order','address',154,13,'Spree::Order','delivery','2016-07-26 10:53:19','2016-07-26 10:53:19'),(347,'payment','checkout',148,NULL,'Spree::Payment','processing','2016-07-26 10:57:36','2016-07-26 10:57:36'),(348,'payment','processing',148,NULL,'Spree::Payment','completed','2016-07-26 10:57:37','2016-07-26 10:57:37'),(349,'order','confirm',154,13,'Spree::Order','complete','2016-07-26 10:57:37','2016-07-26 10:57:37'),(350,'payment',NULL,154,13,'Spree::Order','paid','2016-07-26 10:57:37','2016-07-26 10:57:37'),(351,'shipment',NULL,154,13,'Spree::Order','ready','2016-07-26 10:57:38','2016-07-26 10:57:38'),(352,'order','address',158,13,'Spree::Order','delivery','2016-07-26 10:58:57','2016-07-26 10:58:57'),(353,'order','payment',158,13,'Spree::Order','confirm','2016-07-26 10:59:01','2016-07-26 10:59:01'),(354,'order','payment',158,13,'Spree::Order','confirm','2016-07-26 10:59:02','2016-07-26 10:59:02'),(358,'order','address',160,54,'Spree::Order','delivery','2016-07-26 11:03:00','2016-07-26 11:03:00'),(359,'order','payment',160,54,'Spree::Order','confirm','2016-07-26 11:04:29','2016-07-26 11:04:29'),(360,'order','payment',160,54,'Spree::Order','confirm','2016-07-26 11:04:30','2016-07-26 11:04:30');
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_states`
--

DROP TABLE IF EXISTS `spree_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_states_on_country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3777 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_states`
--

LOCK TABLES `spree_states` WRITE;
/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
INSERT INTO `spree_states` VALUES (1,'Canillo','02',1,NULL),(2,'Encamp','03',1,NULL),(3,'La Massana','04',1,NULL),(4,'Ordino','05',1,NULL),(5,'Sant Julià de Lòria','06',1,NULL),(6,'Andorra la Vella','07',1,NULL),(7,'Escaldes-Engordany','08',1,NULL),(8,'\'Ajmān','AJ',2,NULL),(9,'Abū Ȥaby [Abu Dhabi]','AZ',2,NULL),(10,'Dubayy','DU',2,NULL),(11,'Al Fujayrah','FU',2,NULL),(12,'Ra’s al Khaymah','RK',2,NULL),(13,'Ash Shāriqah','SH',2,NULL),(14,'Umm al Qaywayn','UQ',2,NULL),(15,'Balkh','BAL',3,NULL),(16,'Bāmyān','BAM',3,NULL),(17,'Bādghīs','BDG',3,NULL),(18,'Badakhshān','BDS',3,NULL),(19,'Baghlān','BGL',3,NULL),(20,'Dāykundī','DAY',3,NULL),(21,'Farāh','FRA',3,NULL),(22,'Fāryāb','FYB',3,NULL),(23,'Ghaznī','GHA',3,NULL),(24,'Ghōr','GHO',3,NULL),(25,'Helmand','HEL',3,NULL),(26,'Herāt','HER',3,NULL),(27,'Jowzjān','JOW',3,NULL),(28,'Kābul','KAB',3,NULL),(29,'Kandahār','KAN',3,NULL),(30,'Kāpīsā','KAP',3,NULL),(31,'Kunduz','KDZ',3,NULL),(32,'Khōst','KHO',3,NULL),(33,'Kunar','KNR',3,NULL),(34,'Laghmān','LAG',3,NULL),(35,'Lōgar','LOG',3,NULL),(36,'Nangarhār','NAN',3,NULL),(37,'Nīmrōz','NIM',3,NULL),(38,'Nūristān','NUR',3,NULL),(39,'Panjshayr','PAN',3,NULL),(40,'Parwān','PAR',3,NULL),(41,'Paktiyā','PIA',3,NULL),(42,'Paktīkā','PKA',3,NULL),(43,'Samangān','SAM',3,NULL),(44,'Sar-e Pul','SAR',3,NULL),(45,'Takhār','TAK',3,NULL),(46,'Uruzgān','URU',3,NULL),(47,'Wardak','WAR',3,NULL),(48,'Zābul','ZAB',3,NULL),(49,'Saint George','03',4,NULL),(50,'Saint John','04',4,NULL),(51,'Saint Mary','05',4,NULL),(52,'Saint Paul','06',4,NULL),(53,'Saint Peter','07',4,NULL),(54,'Saint Philip','08',4,NULL),(55,'Barbuda','10',4,NULL),(56,'Redonda','11',4,NULL),(57,'Berat','01',6,NULL),(58,'Durrës','02',6,NULL),(59,'Elbasan','03',6,NULL),(60,'Fier','04',6,NULL),(61,'Gjirokastër','05',6,NULL),(62,'Korçë','06',6,NULL),(63,'Kukës','07',6,NULL),(64,'Lezhë','08',6,NULL),(65,'Dibër','09',6,NULL),(66,'Shkodër','10',6,NULL),(67,'Tiranë','11',6,NULL),(68,'Vlorë','12',6,NULL),(69,'Aragacotn','AG',7,NULL),(70,'Ararat','AR',7,NULL),(71,'Armavir','AV',7,NULL),(72,'Erevan','ER',7,NULL),(73,'Gegarkunik\'','GR',7,NULL),(74,'Kotayk\'','KT',7,NULL),(75,'Lory','LO',7,NULL),(76,'Sirak','SH',7,NULL),(77,'Syunik\'','SU',7,NULL),(78,'Tavus','TV',7,NULL),(79,'Vayoc Jor','VD',7,NULL),(80,'Bengo','BGO',8,NULL),(81,'Benguela','BGU',8,NULL),(82,'Bié','BIE',8,NULL),(83,'Cabinda','CAB',8,NULL),(84,'Cuando-Cubango','CCU',8,NULL),(85,'Cunene','CNN',8,NULL),(86,'Cuanza Norte','CNO',8,NULL),(87,'Cuanza Sul','CUS',8,NULL),(88,'Huambo','HUA',8,NULL),(89,'Huíla','HUI',8,NULL),(90,'Lunda Norte','LNO',8,NULL),(91,'Lunda Sul','LSU',8,NULL),(92,'Luanda','LUA',8,NULL),(93,'Malange','MAL',8,NULL),(94,'Moxico','MOX',8,NULL),(95,'Namibe','NAM',8,NULL),(96,'Uíge','UIG',8,NULL),(97,'Zaire','ZAI',8,NULL),(98,'Salta','A',10,NULL),(99,'Buenos Aires','B',10,NULL),(100,'Ciudad Autónoma de Buenos Aires','C',10,NULL),(101,'San Luis','D',10,NULL),(102,'Entre Rios','E',10,NULL),(103,'Santiago del Estero','G',10,NULL),(104,'Chaco','H',10,NULL),(105,'San Juan','J',10,NULL),(106,'Catamarca','K',10,NULL),(107,'La Pampa','L',10,NULL),(108,'Mendoza','M',10,NULL),(109,'Misiones','N',10,NULL),(110,'Formosa','P',10,NULL),(111,'Neuquen','Q',10,NULL),(112,'Rio Negro','R',10,NULL),(113,'Santa Fe','S',10,NULL),(114,'Tucuman','T',10,NULL),(115,'Chubut','U',10,NULL),(116,'Tierra del Fuego','V',10,NULL),(117,'Corrientes','W',10,NULL),(118,'Cordoba','X',10,NULL),(119,'Jujuy','Y',10,NULL),(120,'Santa Cruz','Z',10,NULL),(121,'La Rioja','F',10,NULL),(122,'Burgenland','1',12,NULL),(123,'Kärnten','2',12,NULL),(124,'Niederösterreich','3',12,NULL),(125,'Oberösterreich','4',12,NULL),(126,'Salzburg','5',12,NULL),(127,'Steiermark','6',12,NULL),(128,'Tirol','7',12,NULL),(129,'Vorarlberg','8',12,NULL),(130,'Wien','9',12,NULL),(131,'Australian Capital Territory','ACT',13,NULL),(132,'New South Wales','NSW',13,NULL),(133,'Northern Territory','NT',13,NULL),(134,'Queensland','QLD',13,NULL),(135,'South Australia','SA',13,NULL),(136,'Tasmania','TAS',13,NULL),(137,'Victoria','VIC',13,NULL),(138,'Western Australia','WA',13,NULL),(139,'Abşeron','ABS',16,NULL),(140,'Ağstafa','AGA',16,NULL),(141,'Ağcabədi','AGC',16,NULL),(142,'Ağdam','AGM',16,NULL),(143,'Ağdaş','AGS',16,NULL),(144,'Ağsu','AGU',16,NULL),(145,'Astara','AST',16,NULL),(146,'Bakı','BA',16,NULL),(147,'Balakən','BAL',16,NULL),(148,'Bərdə','BAR',16,NULL),(149,'Beyləqan','BEY',16,NULL),(150,'Biləsuvar','BIL',16,NULL),(151,'Cəbrayıl','CAB',16,NULL),(152,'Cəlilabab','CAL',16,NULL),(153,'Daşkəsən','DAS',16,NULL),(154,'Füzuli','FUZ',16,NULL),(155,'Gəncə','GA',16,NULL),(156,'Gədəbəy','GAD',16,NULL),(157,'Goranboy','GOR',16,NULL),(158,'Göyçay','GOY',16,NULL),(159,'Göygöl','GYG',16,NULL),(160,'Hacıqabul','HAC',16,NULL),(161,'İmişli','IMI',16,NULL),(162,'İsmayıllı','ISM',16,NULL),(163,'Kəlbəcər','KAL',16,NULL),(164,'Kürdəmir','KUR',16,NULL),(165,'Lənkəran','LA',16,NULL),(166,'Laçın','LAC',16,NULL),(167,'Lənkəran','LAN',16,NULL),(168,'Lerik','LER',16,NULL),(169,'Masallı','MAS',16,NULL),(170,'Mingəçevir','MI',16,NULL),(171,'Naftalan','NA',16,NULL),(172,'Neftçala','NEF',16,NULL),(173,'Naxçıvan','NX',16,NULL),(174,'Oğuz','OGU',16,NULL),(175,'Qəbələ','QAB',16,NULL),(176,'Qax','QAX',16,NULL),(177,'Qazax','QAZ',16,NULL),(178,'Quba','QBA',16,NULL),(179,'Qubadlı','QBI',16,NULL),(180,'Qobustan','QOB',16,NULL),(181,'Qusar','QUS',16,NULL),(182,'Şəki','SA',16,NULL),(183,'Sabirabad','SAB',16,NULL),(184,'Şəki','SAK',16,NULL),(185,'Salyan','SAL',16,NULL),(186,'Saatlı','SAT',16,NULL),(187,'Şabran','SBN',16,NULL),(188,'Siyəzən','SIY',16,NULL),(189,'Şəmkir','SKR',16,NULL),(190,'Sumqayıt','SM',16,NULL),(191,'Şamaxı','SMI',16,NULL),(192,'Samux','SMX',16,NULL),(193,'Şirvan','SR',16,NULL),(194,'Şuşa','SUS',16,NULL),(195,'Tərtər','TAR',16,NULL),(196,'Tovuz','TOV',16,NULL),(197,'Ucar','UCA',16,NULL),(198,'Xankəndi','XA',16,NULL),(199,'Xaçmaz','XAC',16,NULL),(200,'Xocalı','XCI',16,NULL),(201,'Xızı','XIZ',16,NULL),(202,'Xocavənd','XVD',16,NULL),(203,'Yardımlı','YAR',16,NULL),(204,'Yevlax','YE',16,NULL),(205,'Yevlax','YEV',16,NULL),(206,'Zəngilan','ZAN',16,NULL),(207,'Zaqatala','ZAQ',16,NULL),(208,'Zərdab','ZAR',16,NULL),(209,'Federacija Bosne i Hercegovine','BIH',17,NULL),(210,'Brčko distrikt','BRC',17,NULL),(211,'Republika Srpska','SRP',17,NULL),(212,'Christ Church','01',18,NULL),(213,'Saint Andrew','02',18,NULL),(214,'Saint George','03',18,NULL),(215,'Saint James','04',18,NULL),(216,'Saint John','05',18,NULL),(217,'Saint Joseph','06',18,NULL),(218,'Saint Lucy','07',18,NULL),(219,'Saint Michael','08',18,NULL),(220,'Saint Peter','09',18,NULL),(221,'Saint Philip','10',18,NULL),(222,'Saint Thomas','11',18,NULL),(223,'Barisal','A',19,NULL),(224,'Chittagong','B',19,NULL),(225,'Dhaka','C',19,NULL),(226,'Khulna','D',19,NULL),(227,'Rajshahi','E',19,NULL),(228,'Rangpur','F',19,NULL),(229,'Sylhet','G',19,NULL),(230,'Bruxelles-Capitale, Région de;Brussels Hoofdstedelijk Gewest','BRU',20,NULL),(231,'Vlaams Gewest','VLG',20,NULL),(232,'wallonne, Région','WAL',20,NULL),(233,'Boucle du Mouhoun','01',21,NULL),(234,'Cascades','02',21,NULL),(235,'Centre','03',21,NULL),(236,'Centre-Est','04',21,NULL),(237,'Centre-Nord','05',21,NULL),(238,'Centre-Ouest','06',21,NULL),(239,'Centre-Sud','07',21,NULL),(240,'Est','08',21,NULL),(241,'Hauts-Bassins','09',21,NULL),(242,'Nord','10',21,NULL),(243,'Plateau-Central','11',21,NULL),(244,'Sahel','12',21,NULL),(245,'Sud-Ouest','13',21,NULL),(246,'Blagoevgrad','01',22,NULL),(247,'Burgas','02',22,NULL),(248,'Varna','03',22,NULL),(249,'Veliko Tarnovo','04',22,NULL),(250,'Vidin','05',22,NULL),(251,'Vratsa','06',22,NULL),(252,'Gabrovo','07',22,NULL),(253,'Dobrich','08',22,NULL),(254,'Kardzhali','09',22,NULL),(255,'Kyustendil','10',22,NULL),(256,'Lovech','11',22,NULL),(257,'Montana','12',22,NULL),(258,'Pazardzhik','13',22,NULL),(259,'Pernik','14',22,NULL),(260,'Pleven','15',22,NULL),(261,'Plovdiv','16',22,NULL),(262,'Razgrad','17',22,NULL),(263,'Ruse','18',22,NULL),(264,'Silistra','19',22,NULL),(265,'Sliven','20',22,NULL),(266,'Smolyan','21',22,NULL),(267,'Sofia-Grad','22',22,NULL),(268,'Sofia','23',22,NULL),(269,'Stara Zagora','24',22,NULL),(270,'Targovishte','25',22,NULL),(271,'Haskovo','26',22,NULL),(272,'Shumen','27',22,NULL),(273,'Yambol','28',22,NULL),(274,'Al Manāmah (Al ‘Āşimah)','13',23,NULL),(275,'Al Janūbīyah','14',23,NULL),(276,'Al Muḩarraq','15',23,NULL),(277,'Al Wusţá','16',23,NULL),(278,'Ash Shamālīyah','17',23,NULL),(279,'Bubanza','BB',24,NULL),(280,'Bujumbura Rural','BL',24,NULL),(281,'Bujumbura Mairie','BM',24,NULL),(282,'Bururi','BR',24,NULL),(283,'Cankuzo','CA',24,NULL),(284,'Cibitoke','CI',24,NULL),(285,'Gitega','GI',24,NULL),(286,'Kirundo','KI',24,NULL),(287,'Karuzi','KR',24,NULL),(288,'Kayanza','KY',24,NULL),(289,'Makamba','MA',24,NULL),(290,'Muramvya','MU',24,NULL),(291,'Mwaro','MW',24,NULL),(292,'Ngozi','NG',24,NULL),(293,'Rutana','RT',24,NULL),(294,'Ruyigi','RY',24,NULL),(295,'Atakora','AK',25,NULL),(296,'Alibori','AL',25,NULL),(297,'Atlantique','AQ',25,NULL),(298,'Borgou','BO',25,NULL),(299,'Collines','CO',25,NULL),(300,'Donga','DO',25,NULL),(301,'Kouffo','KO',25,NULL),(302,'Littoral','LI',25,NULL),(303,'Mono','MO',25,NULL),(304,'Ouémé','OU',25,NULL),(305,'Plateau','PL',25,NULL),(306,'Zou','ZO',25,NULL),(307,'Belait','BE',28,NULL),(308,'Brunei-Muara','BM',28,NULL),(309,'Temburong','TE',28,NULL),(310,'Tutong','TU',28,NULL),(311,'El Beni','B',29,NULL),(312,'Cochabamba','C',29,NULL),(313,'Chuquisaca','H',29,NULL),(314,'La Paz','L',29,NULL),(315,'Pando','N',29,NULL),(316,'Oruro','O',29,NULL),(317,'Potosí','P',29,NULL),(318,'Santa Cruz','S',29,NULL),(319,'Tarija','T',29,NULL),(320,'Bonaire','BO',30,NULL),(321,'Saba','SA',30,NULL),(322,'Sint Eustatius','SE',30,NULL),(323,'Acre','AC',31,NULL),(324,'Alagoas','AL',31,NULL),(325,'Amazonas','AM',31,NULL),(326,'Amapá','AP',31,NULL),(327,'Bahia','BA',31,NULL),(328,'Ceará','CE',31,NULL),(329,'Distrito Federal','DF',31,NULL),(330,'Espírito Santo','ES',31,NULL),(331,'Fernando de Noronha','FN',31,NULL),(332,'Goiás','GO',31,NULL),(333,'Maranhão','MA',31,NULL),(334,'Minas Gerais','MG',31,NULL),(335,'Mato Grosso do Sul','MS',31,NULL),(336,'Mato Grosso','MT',31,NULL),(337,'Pará','PA',31,NULL),(338,'Paraíba','PB',31,NULL),(339,'Pernambuco','PE',31,NULL),(340,'Piauí','PI',31,NULL),(341,'Paraná','PR',31,NULL),(342,'Rio de Janeiro','RJ',31,NULL),(343,'Rio Grande do Norte','RN',31,NULL),(344,'Rondônia','RO',31,NULL),(345,'Roraima','RR',31,NULL),(346,'Rio Grande do Sul','RS',31,NULL),(347,'Santa Catarina','SC',31,NULL),(348,'Sergipe','SE',31,NULL),(349,'São Paulo','SP',31,NULL),(350,'Tocantins','TO',31,NULL),(351,'Acklins','AK',32,NULL),(352,'Bimini','BI',32,NULL),(353,'Black Point','BP',32,NULL),(354,'Berry Islands','BY',32,NULL),(355,'Central Eleuthera','CE',32,NULL),(356,'Cat Island','CI',32,NULL),(357,'Crooked Island and Long Cay','CK',32,NULL),(358,'Central Abaco','CO',32,NULL),(359,'Central Andros','CS',32,NULL),(360,'East Grand Bahama','EG',32,NULL),(361,'Exuma','EX',32,NULL),(362,'City of Freeport','FP',32,NULL),(363,'Grand Cay','GC',32,NULL),(364,'Harbour Island','HI',32,NULL),(365,'Hope Town','HT',32,NULL),(366,'Inagua','IN',32,NULL),(367,'Long Island','LI',32,NULL),(368,'Mangrove Cay','MC',32,NULL),(369,'Mayaguana','MG',32,NULL),(370,'Moore\'s Island','MI',32,NULL),(371,'North Eleuthera','NE',32,NULL),(372,'North Abaco','NO',32,NULL),(373,'North Andros','NS',32,NULL),(374,'Rum Cay','RC',32,NULL),(375,'Ragged Island','RI',32,NULL),(376,'South Andros','SA',32,NULL),(377,'South Eleuthera','SE',32,NULL),(378,'South Abaco','SO',32,NULL),(379,'San Salvador','SS',32,NULL),(380,'Spanish Wells','SW',32,NULL),(381,'West Grand Bahama','WG',32,NULL),(382,'Paro','11',33,NULL),(383,'Chhukha','12',33,NULL),(384,'Ha','13',33,NULL),(385,'Samtee','14',33,NULL),(386,'Thimphu','15',33,NULL),(387,'Tsirang','21',33,NULL),(388,'Dagana','22',33,NULL),(389,'Punakha','23',33,NULL),(390,'Wangdue Phodrang','24',33,NULL),(391,'Sarpang','31',33,NULL),(392,'Trongsa','32',33,NULL),(393,'Bumthang','33',33,NULL),(394,'Zhemgang','34',33,NULL),(395,'Trashigang','41',33,NULL),(396,'Monggar','42',33,NULL),(397,'Pemagatshel','43',33,NULL),(398,'Lhuentse','44',33,NULL),(399,'Samdrup Jongkha','45',33,NULL),(400,'Gasa','GA',33,NULL),(401,'Trashi Yangtse','TY',33,NULL),(402,'Central','CE',35,NULL),(403,'Ghanzi','GH',35,NULL),(404,'Kgalagadi','KG',35,NULL),(405,'Kgatleng','KL',35,NULL),(406,'Kweneng','KW',35,NULL),(407,'North-East','NE',35,NULL),(408,'North-West','NW',35,NULL),(409,'South-East','SE',35,NULL),(410,'Southern','SO',35,NULL),(411,'Brèsckaja voblasc\'','BR',36,NULL),(412,'Horad Minsk','HM',36,NULL),(413,'Homel\'skaja voblasc\'','HO',36,NULL),(414,'Hrodzenskaja voblasc\'','HR',36,NULL),(415,'Mahilëuskaja voblasc\'','MA',36,NULL),(416,'Minskaja voblasc\'','MI',36,NULL),(417,'Vicebskaja voblasc\'','VI',36,NULL),(418,'Belize','BZ',37,NULL),(419,'Cayo','CY',37,NULL),(420,'Corozal','CZL',37,NULL),(421,'Orange Walk','OW',37,NULL),(422,'Stann Creek','SC',37,NULL),(423,'Toledo','TOL',37,NULL),(424,'Alberta','AB',38,NULL),(425,'British Columbia','BC',38,NULL),(426,'Manitoba','MB',38,NULL),(427,'New Brunswick','NB',38,NULL),(428,'Newfoundland and Labrador','NL',38,NULL),(429,'Nova Scotia','NS',38,NULL),(430,'Northwest Territories','NT',38,NULL),(431,'Nunavut','NU',38,NULL),(432,'Ontario','ON',38,NULL),(433,'Prince Edward Island','PE',38,NULL),(434,'Quebec','QC',38,NULL),(435,'Saskatchewan','SK',38,NULL),(436,'Yukon Territory','YT',38,NULL),(437,'Bas-Congo','BC',40,NULL),(438,'Bandundu','BN',40,NULL),(439,'Équateur','EQ',40,NULL),(440,'Katanga','KA',40,NULL),(441,'Kasai-Oriental','KE',40,NULL),(442,'Kinshasa','KN',40,NULL),(443,'Kasai-Occidental','KW',40,NULL),(444,'Maniema','MA',40,NULL),(445,'Nord-Kivu','NK',40,NULL),(446,'Orientale','OR',40,NULL),(447,'Sud-Kivu','SK',40,NULL),(448,'Ouham','AC',41,NULL),(449,'Bamingui-Bangoran','BB',41,NULL),(450,'Bangui','BGF',41,NULL),(451,'Basse-Kotto','BK',41,NULL),(452,'Haute-Kotto','HK',41,NULL),(453,'Haut-Mbomou','HM',41,NULL),(454,'Haute-Sangha / Mambéré-Kadéï','HS',41,NULL),(455,'Gribingui','KB',41,NULL),(456,'Kémo-Gribingui','KG',41,NULL),(457,'Lobaye','LB',41,NULL),(458,'Mbomou','MB',41,NULL),(459,'Ombella-M\'poko','MP',41,NULL),(460,'Nana-Mambéré','NM',41,NULL),(461,'Ouham-Pendé','OP',41,NULL),(462,'Sangha','SE',41,NULL),(463,'Ouaka','UK',41,NULL),(464,'Vakaga','VK',41,NULL),(465,'Bouenza','11',42,NULL),(466,'Pool','12',42,NULL),(467,'Sangha','13',42,NULL),(468,'Plateaux','14',42,NULL),(469,'Cuvette-Ouest','15',42,NULL),(470,'Lékoumou','2',42,NULL),(471,'Kouilou','5',42,NULL),(472,'Likouala','7',42,NULL),(473,'Cuvette','8',42,NULL),(474,'Niari','9',42,NULL),(475,'Brazzaville','BZV',42,NULL),(476,'Aargau','AG',43,NULL),(477,'Appenzell Innerrhoden','AI',43,NULL),(478,'Appenzell Ausserrhoden','AR',43,NULL),(479,'Bern','BE',43,NULL),(480,'Basel-Landschaft','BL',43,NULL),(481,'Basel-Stadt','BS',43,NULL),(482,'Fribourg','FR',43,NULL),(483,'Genève','GE',43,NULL),(484,'Glarus','GL',43,NULL),(485,'Graubünden','GR',43,NULL),(486,'Jura','JU',43,NULL),(487,'Luzern','LU',43,NULL),(488,'Neuchâtel','NE',43,NULL),(489,'Nidwalden','NW',43,NULL),(490,'Obwalden','OW',43,NULL),(491,'Sankt Gallen','SG',43,NULL),(492,'Schaffhausen','SH',43,NULL),(493,'Solothurn','SO',43,NULL),(494,'Schwyz','SZ',43,NULL),(495,'Thurgau','TG',43,NULL),(496,'Ticino','TI',43,NULL),(497,'Uri','UR',43,NULL),(498,'Vaud','VD',43,NULL),(499,'Valais','VS',43,NULL),(500,'Zug','ZG',43,NULL),(501,'Zürich','ZH',43,NULL),(502,'Lagunes (Région des)','01',44,NULL),(503,'Haut-Sassandra (Région du)','02',44,NULL),(504,'Savanes (Région des)','03',44,NULL),(505,'Vallée du Bandama (Région de la)','04',44,NULL),(506,'Moyen-Comoé (Région du)','05',44,NULL),(507,'18 Montagnes (Région des)','06',44,NULL),(508,'Lacs (Région des)','07',44,NULL),(509,'Zanzan (Région du)','08',44,NULL),(510,'Bas-Sassandra (Région du)','09',44,NULL),(511,'Denguélé (Région du)','10',44,NULL),(512,'Nzi-Comoé (Région)','11',44,NULL),(513,'Marahoué (Région de la)','12',44,NULL),(514,'Sud-Comoé (Région du)','13',44,NULL),(515,'Worodouqou (Région du)','14',44,NULL),(516,'Sud-Bandama (Région du)','15',44,NULL),(517,'Agnébi (Région de l\')','16',44,NULL),(518,'Bafing (Région du)','17',44,NULL),(519,'Fromager (Région du)','18',44,NULL),(520,'Moyen-Cavally (Région du)','19',44,NULL),(521,'Aisén del General Carlos Ibáñez del Campo','AI',46,NULL),(522,'Antofagasta','AN',46,NULL),(523,'Arica y Parinacota','AP',46,NULL),(524,'Araucanía','AR',46,NULL),(525,'Atacama','AT',46,NULL),(526,'Bío-Bío','BI',46,NULL),(527,'Coquimbo','CO',46,NULL),(528,'Libertador General Bernardo O\'Higgins','LI',46,NULL),(529,'Los Lagos','LL',46,NULL),(530,'Los Ríos','LR',46,NULL),(531,'Magallanes y Antártica Chilena','MA',46,NULL),(532,'Maule','ML',46,NULL),(533,'Región Metropolitana de Santiago','RM',46,NULL),(534,'Tarapacá','TA',46,NULL),(535,'Valparaíso','VS',46,NULL),(536,'Adamaoua','AD',47,NULL),(537,'Centre','CE',47,NULL),(538,'Far North','EN',47,NULL),(539,'East','ES',47,NULL),(540,'Littoral','LT',47,NULL),(541,'North','NO',47,NULL),(542,'North-West (Cameroon)','NW',47,NULL),(543,'West','OU',47,NULL),(544,'South','SU',47,NULL),(545,'South-West','SW',47,NULL),(546,'Beijing','11',48,NULL),(547,'Tianjin','12',48,NULL),(548,'Hebei','13',48,NULL),(549,'Shanxi','14',48,NULL),(550,'Nei Mongol','15',48,NULL),(551,'Liaoning','21',48,NULL),(552,'Jilin','22',48,NULL),(553,'Heilongjiang','23',48,NULL),(554,'Shanghai','31',48,NULL),(555,'Jiangsu','32',48,NULL),(556,'Zhejiang','33',48,NULL),(557,'Anhui','34',48,NULL),(558,'Fujian','35',48,NULL),(559,'Jiangxi','36',48,NULL),(560,'Shandong','37',48,NULL),(561,'Henan','41',48,NULL),(562,'Hubei','42',48,NULL),(563,'Hunan','43',48,NULL),(564,'Guangdong','44',48,NULL),(565,'Guangxi','45',48,NULL),(566,'Hainan','46',48,NULL),(567,'Chongqing','50',48,NULL),(568,'Sichuan','51',48,NULL),(569,'Guizhou','52',48,NULL),(570,'Yunnan','53',48,NULL),(571,'Xizang','54',48,NULL),(572,'Shaanxi','61',48,NULL),(573,'Gansu','62',48,NULL),(574,'Qinghai','63',48,NULL),(575,'Ningxia','64',48,NULL),(576,'Xinjiang','65',48,NULL),(577,'Taiwan','71',48,NULL),(578,'Xianggang (Hong-Kong)','91',48,NULL),(579,'Aomen (Macau)','92',48,NULL),(580,'Amazonas','AMA',49,NULL),(581,'Antioquia','ANT',49,NULL),(582,'Arauca','ARA',49,NULL),(583,'Atlántico','ATL',49,NULL),(584,'Bolívar','BOL',49,NULL),(585,'Boyacá','BOY',49,NULL),(586,'Caldas','CAL',49,NULL),(587,'Caquetá','CAQ',49,NULL),(588,'Casanare','CAS',49,NULL),(589,'Cauca','CAU',49,NULL),(590,'Cesar','CES',49,NULL),(591,'Chocó','CHO',49,NULL),(592,'Córdoba','COR',49,NULL),(593,'Cundinamarca','CUN',49,NULL),(594,'Distrito Capital de Bogotá','DC',49,NULL),(595,'Guainía','GUA',49,NULL),(596,'Guaviare','GUV',49,NULL),(597,'Huila','HUI',49,NULL),(598,'La Guajira','LAG',49,NULL),(599,'Magdalena','MAG',49,NULL),(600,'Meta','MET',49,NULL),(601,'Nariño','NAR',49,NULL),(602,'Norte de Santander','NSA',49,NULL),(603,'Putumayo','PUT',49,NULL),(604,'Quindío','QUI',49,NULL),(605,'Risaralda','RIS',49,NULL),(606,'Santander','SAN',49,NULL),(607,'San Andrés, Providencia y Santa Catalina','SAP',49,NULL),(608,'Sucre','SUC',49,NULL),(609,'Tolima','TOL',49,NULL),(610,'Valle del Cauca','VAC',49,NULL),(611,'Vaupés','VAU',49,NULL),(612,'Vichada','VID',49,NULL),(613,'Alajuela','A',50,NULL),(614,'Cartago','C',50,NULL),(615,'Guanacaste','G',50,NULL),(616,'Heredia','H',50,NULL),(617,'Limón','L',50,NULL),(618,'Puntarenas','P',50,NULL),(619,'San José','SJ',50,NULL),(620,'Pinar del Rio','01',51,NULL),(621,'La Habana','02',51,NULL),(622,'Ciudad de La Habana','03',51,NULL),(623,'Matanzas','04',51,NULL),(624,'Villa Clara','05',51,NULL),(625,'Cienfuegos','06',51,NULL),(626,'Sancti Spíritus','07',51,NULL),(627,'Ciego de Ávila','08',51,NULL),(628,'Camagüey','09',51,NULL),(629,'Las Tunas','10',51,NULL),(630,'Holguín','11',51,NULL),(631,'Granma','12',51,NULL),(632,'Santiago de Cuba','13',51,NULL),(633,'Guantánamo','14',51,NULL),(634,'Isla de la Juventud','99',51,NULL),(635,'Ilhas de Barlavento','B',52,NULL),(636,'Ilhas de Sotavento','S',52,NULL),(637,'Lefkosía','01',55,NULL),(638,'Lemesós','02',55,NULL),(639,'Lárnaka','03',55,NULL),(640,'Ammóchostos','04',55,NULL),(641,'Páfos','05',55,NULL),(642,'Kerýneia','06',55,NULL),(643,'Jihočeský kraj','JC',56,NULL),(644,'Jihomoravský kraj','JM',56,NULL),(645,'Karlovarský kraj','KA',56,NULL),(646,'Královéhradecký kraj','KR',56,NULL),(647,'Liberecký kraj','LI',56,NULL),(648,'Moravskoslezský kraj','MO',56,NULL),(649,'Olomoucký kraj','OL',56,NULL),(650,'Pardubický kraj','PA',56,NULL),(651,'Plzeňský kraj','PL',56,NULL),(652,'Praha, hlavní město','PR',56,NULL),(653,'Středočeský kraj','ST',56,NULL),(654,'Ústecký kraj','US',56,NULL),(655,'Vysočina','VY',56,NULL),(656,'Zlínský kraj','ZL',56,NULL),(657,'Brandenburg','BB',57,NULL),(658,'Berlin','BE',57,NULL),(659,'Baden-Württemberg','BW',57,NULL),(660,'Bayern','BY',57,NULL),(661,'Bremen','HB',57,NULL),(662,'Hessen','HE',57,NULL),(663,'Hamburg','HH',57,NULL),(664,'Mecklenburg-Vorpommern','MV',57,NULL),(665,'Niedersachsen','NI',57,NULL),(666,'Nordrhein-Westfalen','NW',57,NULL),(667,'Rheinland-Pfalz','RP',57,NULL),(668,'Schleswig-Holstein','SH',57,NULL),(669,'Saarland','SL',57,NULL),(670,'Sachsen','SN',57,NULL),(671,'Sachsen-Anhalt','ST',57,NULL),(672,'Thüringen','TH',57,NULL),(673,'Arta','AR',58,NULL),(674,'Ali Sabieh','AS',58,NULL),(675,'Dikhil','DI',58,NULL),(676,'Djibouti','DJ',58,NULL),(677,'Obock','OB',58,NULL),(678,'Tadjourah','TA',58,NULL),(679,'Nordjylland','81',59,NULL),(680,'Midtjylland','82',59,NULL),(681,'Syddanmark','83',59,NULL),(682,'Hovedstaden','84',59,NULL),(683,'Sjælland','85',59,NULL),(684,'Saint Peter','01',60,NULL),(685,'Saint Andrew','02',60,NULL),(686,'Saint David','03',60,NULL),(687,'Saint George','04',60,NULL),(688,'Saint John','05',60,NULL),(689,'Saint Joseph','06',60,NULL),(690,'Saint Luke','07',60,NULL),(691,'Saint Mark','08',60,NULL),(692,'Saint Patrick','09',60,NULL),(693,'Saint Paul','10',60,NULL),(694,'Distrito Nacional (Santo Domingo)','01',61,NULL),(695,'Azua','02',61,NULL),(696,'Bahoruco','03',61,NULL),(697,'Barahona','04',61,NULL),(698,'Dajabón','05',61,NULL),(699,'Duarte','06',61,NULL),(700,'La Estrelleta [Elías Piña]','07',61,NULL),(701,'El Seybo [El Seibo]','08',61,NULL),(702,'Espaillat','09',61,NULL),(703,'Independencia','10',61,NULL),(704,'La Altagracia','11',61,NULL),(705,'La Romana','12',61,NULL),(706,'La Vega','13',61,NULL),(707,'María Trinidad Sánchez','14',61,NULL),(708,'Monte Cristi','15',61,NULL),(709,'Pedernales','16',61,NULL),(710,'Peravia','17',61,NULL),(711,'Puerto Plata','18',61,NULL),(712,'Salcedo','19',61,NULL),(713,'Samaná','20',61,NULL),(714,'San Cristóbal','21',61,NULL),(715,'San Juan','22',61,NULL),(716,'San Pedro de Macorís','23',61,NULL),(717,'Sánchez Ramírez','24',61,NULL),(718,'Santiago','25',61,NULL),(719,'Santiago Rodríguez','26',61,NULL),(720,'Valverde','27',61,NULL),(721,'Monseñor Nouel','28',61,NULL),(722,'Monte Plata','29',61,NULL),(723,'Hato Mayor','30',61,NULL),(724,'Adrar','01',62,NULL),(725,'Chlef','02',62,NULL),(726,'Laghouat','03',62,NULL),(727,'Oum el Bouaghi','04',62,NULL),(728,'Batna','05',62,NULL),(729,'Béjaïa','06',62,NULL),(730,'Biskra','07',62,NULL),(731,'Béchar','08',62,NULL),(732,'Blida','09',62,NULL),(733,'Bouira','10',62,NULL),(734,'Tamanghasset','11',62,NULL),(735,'Tébessa','12',62,NULL),(736,'Tlemcen','13',62,NULL),(737,'Tiaret','14',62,NULL),(738,'Tizi Ouzou','15',62,NULL),(739,'Alger','16',62,NULL),(740,'Djelfa','17',62,NULL),(741,'Jijel','18',62,NULL),(742,'Sétif','19',62,NULL),(743,'Saïda','20',62,NULL),(744,'Skikda','21',62,NULL),(745,'Sidi Bel Abbès','22',62,NULL),(746,'Annaba','23',62,NULL),(747,'Guelma','24',62,NULL),(748,'Constantine','25',62,NULL),(749,'Médéa','26',62,NULL),(750,'Mostaganem','27',62,NULL),(751,'Msila','28',62,NULL),(752,'Mascara','29',62,NULL),(753,'Ouargla','30',62,NULL),(754,'Oran','31',62,NULL),(755,'El Bayadh','32',62,NULL),(756,'Illizi','33',62,NULL),(757,'Bordj Bou Arréridj','34',62,NULL),(758,'Boumerdès','35',62,NULL),(759,'El Tarf','36',62,NULL),(760,'Tindouf','37',62,NULL),(761,'Tissemsilt','38',62,NULL),(762,'El Oued','39',62,NULL),(763,'Khenchela','40',62,NULL),(764,'Souk Ahras','41',62,NULL),(765,'Tipaza','42',62,NULL),(766,'Mila','43',62,NULL),(767,'Aïn Defla','44',62,NULL),(768,'Naama','45',62,NULL),(769,'Aïn Témouchent','46',62,NULL),(770,'Ghardaïa','47',62,NULL),(771,'Relizane','48',62,NULL),(772,'Azuay','A',63,NULL),(773,'Bolívar','B',63,NULL),(774,'Carchi','C',63,NULL),(775,'Orellana','D',63,NULL),(776,'Esmeraldas','E',63,NULL),(777,'Cañar','F',63,NULL),(778,'Guayas','G',63,NULL),(779,'Chimborazo','H',63,NULL),(780,'Imbabura','I',63,NULL),(781,'Loja','L',63,NULL),(782,'Manabí','M',63,NULL),(783,'Napo','N',63,NULL),(784,'El Oro','O',63,NULL),(785,'Pichincha','P',63,NULL),(786,'Los Ríos','R',63,NULL),(787,'Morona-Santiago','S',63,NULL),(788,'Santo Domingo de los Tsáchilas','SD',63,NULL),(789,'Santa Elena','SE',63,NULL),(790,'Tungurahua','T',63,NULL),(791,'Sucumbíos','U',63,NULL),(792,'Galápagos','W',63,NULL),(793,'Cotopaxi','X',63,NULL),(794,'Pastaza','Y',63,NULL),(795,'Zamora-Chinchipe','Z',63,NULL),(796,'Harjumaa','37',64,NULL),(797,'Hiiumaa','39',64,NULL),(798,'Ida-Virumaa','44',64,NULL),(799,'Jõgevamaa','49',64,NULL),(800,'Järvamaa','51',64,NULL),(801,'Läänemaa','57',64,NULL),(802,'Lääne-Virumaa','59',64,NULL),(803,'Põlvamaa','65',64,NULL),(804,'Pärnumaa','67',64,NULL),(805,'Raplamaa','70',64,NULL),(806,'Saaremaa','74',64,NULL),(807,'Tartumaa','78',64,NULL),(808,'Valgamaa','82',64,NULL),(809,'Viljandimaa','84',64,NULL),(810,'Võrumaa','86',64,NULL),(811,'Al Iskandarīyah','ALX',65,NULL),(812,'Aswān','ASN',65,NULL),(813,'Asyūt','AST',65,NULL),(814,'Al Bahr al Ahmar','BA',65,NULL),(815,'Al Buhayrah','BH',65,NULL),(816,'Banī Suwayf','BNS',65,NULL),(817,'Al Qāhirah','C',65,NULL),(818,'Ad Daqahlīyah','DK',65,NULL),(819,'Dumyāt','DT',65,NULL),(820,'Al Fayyūm','FYM',65,NULL),(821,'Al Gharbīyah','GH',65,NULL),(822,'Al Jīzah','GZ',65,NULL),(823,'Ḩulwān','HU',65,NULL),(824,'Al Ismā`īlīyah','IS',65,NULL),(825,'Janūb Sīnā\'','JS',65,NULL),(826,'Al Qalyūbīyah','KB',65,NULL),(827,'Kafr ash Shaykh','KFS',65,NULL),(828,'Qinā','KN',65,NULL),(829,'Al Minyā','MN',65,NULL),(830,'Al Minūfīyah','MNF',65,NULL),(831,'Matrūh','MT',65,NULL),(832,'Būr Sa`īd','PTS',65,NULL),(833,'Sūhāj','SHG',65,NULL),(834,'Ash Sharqīyah','SHR',65,NULL),(835,'Shamal Sīnā\'','SIN',65,NULL),(836,'As Sādis min Uktūbar','SU',65,NULL),(837,'As Suways','SUZ',65,NULL),(838,'Al Wādī al Jadīd','WAD',65,NULL),(839,'Ansabā','AN',67,NULL),(840,'Janūbī al Baḩrī al Aḩmar','DK',67,NULL),(841,'Al Janūbī','DU',67,NULL),(842,'Qāsh-Barkah','GB',67,NULL),(843,'Al Awsaţ','MA',67,NULL),(844,'Shimālī al Baḩrī al Aḩmar','SK',67,NULL),(845,'Andalucía','AN',68,NULL),(846,'Aragón','AR',68,NULL),(847,'Asturias, Principado de','AS',68,NULL),(848,'Cantabria','CB',68,NULL),(849,'Ceuta','CE',68,NULL),(850,'Castilla y León','CL',68,NULL),(851,'Castilla-La Mancha','CM',68,NULL),(852,'Canarias','CN',68,NULL),(853,'Catalunya','CT',68,NULL),(854,'Extremadura','EX',68,NULL),(855,'Galicia','GA',68,NULL),(856,'Illes Balears','IB',68,NULL),(857,'Murcia, Región de','MC',68,NULL),(858,'Madrid, Comunidad de','MD',68,NULL),(859,'Melilla','ML',68,NULL),(860,'Navarra, Comunidad Foral de / Nafarroako Foru Komunitatea','NC',68,NULL),(861,'País Vasco / Euskal Herria','PV',68,NULL),(862,'La Rioja','RI',68,NULL),(863,'Valenciana, Comunidad / Valenciana, Comunitat ','VC',68,NULL),(864,'Ādīs Ābeba','AA',69,NULL),(865,'Āfar','AF',69,NULL),(866,'Āmara','AM',69,NULL),(867,'Bīnshangul Gumuz','BE',69,NULL),(868,'Dirē Dawa','DD',69,NULL),(869,'Gambēla Hizboch','GA',69,NULL),(870,'Hārerī Hizb','HA',69,NULL),(871,'Oromīya','OR',69,NULL),(872,'YeDebub Bihēroch Bihēreseboch na Hizboch','SN',69,NULL),(873,'Sumalē','SO',69,NULL),(874,'Tigray','TI',69,NULL),(875,'Ahvenanmaan maakunta','01',70,NULL),(876,'Etelä-Karjala','02',70,NULL),(877,'Etelä-Pohjanmaa','03',70,NULL),(878,'Etelä-Savo','04',70,NULL),(879,'Kainuu','05',70,NULL),(880,'Kanta-Häme','06',70,NULL),(881,'Keski-Pohjanmaa','07',70,NULL),(882,'Keski-Suomi','08',70,NULL),(883,'Kymenlaakso','09',70,NULL),(884,'Lappi','10',70,NULL),(885,'Pirkanmaa','11',70,NULL),(886,'Pohjanmaa','12',70,NULL),(887,'Pohjois-Karjala','13',70,NULL),(888,'Pohjois-Pohjanmaa','14',70,NULL),(889,'Pohjois-Savo','15',70,NULL),(890,'Päijät-Häme','16',70,NULL),(891,'Satakunta','17',70,NULL),(892,'Uusimaa','18',70,NULL),(893,'Varsinais-Suomi','19',70,NULL),(894,'Central','C',71,NULL),(895,'Eastern','E',71,NULL),(896,'Northern','N',71,NULL),(897,'Rotuma','R',71,NULL),(898,'Western','W',71,NULL),(899,'Kosrae','KSA',73,NULL),(900,'Pohnpei','PNI',73,NULL),(901,'Chuuk','TRK',73,NULL),(902,'Yap','YAP',73,NULL),(903,'Alsace','A',75,NULL),(904,'Aquitaine','B',75,NULL),(905,'Saint-Barthélemy','BL',75,NULL),(906,'Auvergne','C',75,NULL),(907,'Clipperton','CP',75,NULL),(908,'Bourgogne','D',75,NULL),(909,'Bretagne','E',75,NULL),(910,'Centre','F',75,NULL),(911,'Champagne-Ardenne','G',75,NULL),(912,'Guyane','GF',75,NULL),(913,'Guadeloupe','GP',75,NULL),(914,'Corse','H',75,NULL),(915,'Franche-Comté','I',75,NULL),(916,'Île-de-France','J',75,NULL),(917,'Languedoc-Roussillon','K',75,NULL),(918,'Limousin','L',75,NULL),(919,'Lorraine','M',75,NULL),(920,'Saint-Martin','MF',75,NULL),(921,'Martinique','MQ',75,NULL),(922,'Midi-Pyrénées','N',75,NULL),(923,'Nouvelle-Calédonie','NC',75,NULL),(924,'Nord-Pas-de-Calais','O',75,NULL),(925,'Basse-Normandie','P',75,NULL),(926,'Polynésie française','PF',75,NULL),(927,'Saint-Pierre-et-Miquelon','PM',75,NULL),(928,'Haute-Normandie','Q',75,NULL),(929,'Pays de la Loire','R',75,NULL),(930,'La Réunion','RE',75,NULL),(931,'Picardie','S',75,NULL),(932,'Poitou-Charentes','T',75,NULL),(933,'Terres australes françaises','TF',75,NULL),(934,'Provence-Alpes-Côte d\'Azur','U',75,NULL),(935,'Rhône-Alpes','V',75,NULL),(936,'Wallis-et-Futuna','WF',75,NULL),(937,'Mayotte','YT',75,NULL),(938,'Estuaire','1',76,NULL),(939,'Haut-Ogooué','2',76,NULL),(940,'Moyen-Ogooué','3',76,NULL),(941,'Ngounié','4',76,NULL),(942,'Nyanga','5',76,NULL),(943,'Ogooué-Ivindo','6',76,NULL),(944,'Ogooué-Lolo','7',76,NULL),(945,'Ogooué-Maritime','8',76,NULL),(946,'Woleu-Ntem','9',76,NULL),(947,'Aberdeenshire','ABD',77,NULL),(948,'Aberdeen City','ABE',77,NULL),(949,'Argyll and Bute','AGB',77,NULL),(950,'Isle of Anglesey;Sir Ynys Môn','AGY',77,NULL),(951,'Angus','ANS',77,NULL),(952,'Antrim','ANT',77,NULL),(953,'Ards','ARD',77,NULL),(954,'Armagh','ARM',77,NULL),(955,'Bath and North East Somerset','BAS',77,NULL),(956,'Blackburn with Darwen','BBD',77,NULL),(957,'Bedford','BDF',77,NULL),(958,'Barking and Dagenham','BDG',77,NULL),(959,'Brent','BEN',77,NULL),(960,'Bexley','BEX',77,NULL),(961,'Belfast','BFS',77,NULL),(962,'Bridgend;Pen-y-bont ar Ogwr','BGE',77,NULL),(963,'Blaenau Gwent','BGW',77,NULL),(964,'Birmingham','BIR',77,NULL),(965,'Buckinghamshire','BKM',77,NULL),(966,'Ballymena','BLA',77,NULL),(967,'Ballymoney','BLY',77,NULL),(968,'Bournemouth','BMH',77,NULL),(969,'Banbridge','BNB',77,NULL),(970,'Barnet','BNE',77,NULL),(971,'Brighton and Hove','BNH',77,NULL),(972,'Barnsley','BNS',77,NULL),(973,'Bolton','BOL',77,NULL),(974,'Blackpool','BPL',77,NULL),(975,'Bracknell Forest','BRC',77,NULL),(976,'Bradford','BRD',77,NULL),(977,'Bromley','BRY',77,NULL),(978,'Bristol, City of','BST',77,NULL),(979,'Bury','BUR',77,NULL),(980,'Cambridgeshire','CAM',77,NULL),(981,'Caerphilly;Caerffili','CAY',77,NULL),(982,'Central Bedfordshire','CBF',77,NULL),(983,'Ceredigion;Sir Ceredigion','CGN',77,NULL),(984,'Craigavon','CGV',77,NULL),(985,'Cheshire East','CHE',77,NULL),(986,'Cheshire West and Chester','CHW',77,NULL),(987,'Carrickfergus','CKF',77,NULL),(988,'Cookstown','CKT',77,NULL),(989,'Calderdale','CLD',77,NULL),(990,'Clackmannanshire','CLK',77,NULL),(991,'Coleraine','CLR',77,NULL),(992,'Cumbria','CMA',77,NULL),(993,'Camden','CMD',77,NULL),(994,'Carmarthenshire;Sir Gaerfyrddin','CMN',77,NULL),(995,'Cornwall','CON',77,NULL),(996,'Coventry','COV',77,NULL),(997,'Cardiff;Caerdydd','CRF',77,NULL),(998,'Croydon','CRY',77,NULL),(999,'Castlereagh','CSR',77,NULL),(1000,'Conwy','CWY',77,NULL),(1001,'Darlington','DAL',77,NULL),(1002,'Derbyshire','DBY',77,NULL),(1003,'Denbighshire;Sir Ddinbych','DEN',77,NULL),(1004,'Derby','DER',77,NULL),(1005,'Devon','DEV',77,NULL),(1006,'Dungannon and South Tyrone','DGN',77,NULL),(1007,'Dumfries and Galloway','DGY',77,NULL),(1008,'Doncaster','DNC',77,NULL),(1009,'Dundee City','DND',77,NULL),(1010,'Dorset','DOR',77,NULL),(1011,'Down','DOW',77,NULL),(1012,'Derry','DRY',77,NULL),(1013,'Dudley','DUD',77,NULL),(1014,'Durham, County','DUR',77,NULL),(1015,'Ealing','EAL',77,NULL),(1016,'England and Wales','EAW',77,NULL),(1017,'East Ayrshire','EAY',77,NULL),(1018,'Edinburgh, City of','EDH',77,NULL),(1019,'East Dunbartonshire','EDU',77,NULL),(1020,'East Lothian','ELN',77,NULL),(1021,'Eilean Siar','ELS',77,NULL),(1022,'Enfield','ENF',77,NULL),(1023,'England','ENG',77,NULL),(1024,'East Renfrewshire','ERW',77,NULL),(1025,'East Riding of Yorkshire','ERY',77,NULL),(1026,'Essex','ESS',77,NULL),(1027,'East Sussex','ESX',77,NULL),(1028,'Falkirk','FAL',77,NULL),(1029,'Fermanagh','FER',77,NULL),(1030,'Fife','FIF',77,NULL),(1031,'Flintshire;Sir y Fflint','FLN',77,NULL),(1032,'Gateshead','GAT',77,NULL),(1033,'Great Britain','GBN',77,NULL),(1034,'Glasgow City','GLG',77,NULL),(1035,'Gloucestershire','GLS',77,NULL),(1036,'Greenwich','GRE',77,NULL),(1037,'Gwynedd','GWN',77,NULL),(1038,'Halton','HAL',77,NULL),(1039,'Hampshire','HAM',77,NULL),(1040,'Havering','HAV',77,NULL),(1041,'Hackney','HCK',77,NULL),(1042,'Herefordshire','HEF',77,NULL),(1043,'Hillingdon','HIL',77,NULL),(1044,'Highland','HLD',77,NULL),(1045,'Hammersmith and Fulham','HMF',77,NULL),(1046,'Hounslow','HNS',77,NULL),(1047,'Hartlepool','HPL',77,NULL),(1048,'Hertfordshire','HRT',77,NULL),(1049,'Harrow','HRW',77,NULL),(1050,'Haringey','HRY',77,NULL),(1051,'Isle of Wight','IOW',77,NULL),(1052,'Islington','ISL',77,NULL),(1053,'Inverclyde','IVC',77,NULL),(1054,'Kensington and Chelsea','KEC',77,NULL),(1055,'Kent','KEN',77,NULL),(1056,'Kingston upon Hull','KHL',77,NULL),(1057,'Kirklees','KIR',77,NULL),(1058,'Kingston upon Thames','KTT',77,NULL),(1059,'Knowsley','KWL',77,NULL),(1060,'Lancashire','LAN',77,NULL),(1061,'Lambeth','LBH',77,NULL),(1062,'Leicester','LCE',77,NULL),(1063,'Leeds','LDS',77,NULL),(1064,'Leicestershire','LEC',77,NULL),(1065,'Lewisham','LEW',77,NULL),(1066,'Lincolnshire','LIN',77,NULL),(1067,'Liverpool','LIV',77,NULL),(1068,'Limavady','LMV',77,NULL),(1069,'London, City of','LND',77,NULL),(1070,'Larne','LRN',77,NULL),(1071,'Lisburn','LSB',77,NULL),(1072,'Luton','LUT',77,NULL),(1073,'Manchester','MAN',77,NULL),(1074,'Middlesbrough','MDB',77,NULL),(1075,'Medway','MDW',77,NULL),(1076,'Magherafelt','MFT',77,NULL),(1077,'Milton Keynes','MIK',77,NULL),(1078,'Midlothian','MLN',77,NULL),(1079,'Monmouthshire;Sir Fynwy','MON',77,NULL),(1080,'Merton','MRT',77,NULL),(1081,'Moray','MRY',77,NULL),(1082,'Merthyr Tydfil;Merthyr Tudful','MTY',77,NULL),(1083,'Moyle','MYL',77,NULL),(1084,'North Ayrshire','NAY',77,NULL),(1085,'Northumberland','NBL',77,NULL),(1086,'North Down','NDN',77,NULL),(1087,'North East Lincolnshire','NEL',77,NULL),(1088,'Newcastle upon Tyne','NET',77,NULL),(1089,'Norfolk','NFK',77,NULL),(1090,'Nottingham','NGM',77,NULL),(1091,'Northern Ireland','NIR',77,NULL),(1092,'North Lanarkshire','NLK',77,NULL),(1093,'North Lincolnshire','NLN',77,NULL),(1094,'North Somerset','NSM',77,NULL),(1095,'Newtownabbey','NTA',77,NULL),(1096,'Northamptonshire','NTH',77,NULL),(1097,'Neath Port Talbot;Castell-nedd Port Talbot','NTL',77,NULL),(1098,'Nottinghamshire','NTT',77,NULL),(1099,'North Tyneside','NTY',77,NULL),(1100,'Newham','NWM',77,NULL),(1101,'Newport;Casnewydd','NWP',77,NULL),(1102,'North Yorkshire','NYK',77,NULL),(1103,'Newry and Mourne','NYM',77,NULL),(1104,'Oldham','OLD',77,NULL),(1105,'Omagh','OMH',77,NULL),(1106,'Orkney Islands','ORK',77,NULL),(1107,'Oxfordshire','OXF',77,NULL),(1108,'Pembrokeshire;Sir Benfro','PEM',77,NULL),(1109,'Perth and Kinross','PKN',77,NULL),(1110,'Plymouth','PLY',77,NULL),(1111,'Poole','POL',77,NULL),(1112,'Portsmouth','POR',77,NULL),(1113,'Powys','POW',77,NULL),(1114,'Peterborough','PTE',77,NULL),(1115,'Redcar and Cleveland','RCC',77,NULL),(1116,'Rochdale','RCH',77,NULL),(1117,'Rhondda, Cynon, Taff;Rhondda, Cynon,Taf','RCT',77,NULL),(1118,'Redbridge','RDB',77,NULL),(1119,'Reading','RDG',77,NULL),(1120,'Renfrewshire','RFW',77,NULL),(1121,'Richmond upon Thames','RIC',77,NULL),(1122,'Rotherham','ROT',77,NULL),(1123,'Rutland','RUT',77,NULL),(1124,'Sandwell','SAW',77,NULL),(1125,'South Ayrshire','SAY',77,NULL),(1126,'Scottish Borders, The','SCB',77,NULL),(1127,'Scotland','SCT',77,NULL),(1128,'Suffolk','SFK',77,NULL),(1129,'Sefton','SFT',77,NULL),(1130,'South Gloucestershire','SGC',77,NULL),(1131,'Sheffield','SHF',77,NULL),(1132,'St. Helens','SHN',77,NULL),(1133,'Shropshire','SHR',77,NULL),(1134,'Stockport','SKP',77,NULL),(1135,'Salford','SLF',77,NULL),(1136,'Slough','SLG',77,NULL),(1137,'South Lanarkshire','SLK',77,NULL),(1138,'Sunderland','SND',77,NULL),(1139,'Solihull','SOL',77,NULL),(1140,'Somerset','SOM',77,NULL),(1141,'Southend-on-Sea','SOS',77,NULL),(1142,'Surrey','SRY',77,NULL),(1143,'Strabane','STB',77,NULL),(1144,'Stoke-on-Trent','STE',77,NULL),(1145,'Stirling','STG',77,NULL),(1146,'Southampton','STH',77,NULL),(1147,'Sutton','STN',77,NULL),(1148,'Staffordshire','STS',77,NULL),(1149,'Stockton-on-Tees','STT',77,NULL),(1150,'South Tyneside','STY',77,NULL),(1151,'Swansea;Abertawe','SWA',77,NULL),(1152,'Swindon','SWD',77,NULL),(1153,'Southwark','SWK',77,NULL),(1154,'Tameside','TAM',77,NULL),(1155,'Telford and Wrekin','TFW',77,NULL),(1156,'Thurrock','THR',77,NULL),(1157,'Torbay','TOB',77,NULL),(1158,'Torfaen;Tor-faen','TOF',77,NULL),(1159,'Trafford','TRF',77,NULL),(1160,'Tower Hamlets','TWH',77,NULL),(1161,'United Kingdom','UKM',77,NULL),(1162,'Vale of Glamorgan, The;Bro Morgannwg','VGL',77,NULL),(1163,'Warwickshire','WAR',77,NULL),(1164,'West Berkshire','WBK',77,NULL),(1165,'West Dunbartonshire','WDU',77,NULL),(1166,'Waltham Forest','WFT',77,NULL),(1167,'Wigan','WGN',77,NULL),(1168,'Wakefield','WKF',77,NULL),(1169,'Walsall','WLL',77,NULL),(1170,'West Lothian','WLN',77,NULL),(1171,'Wales','WLS',77,NULL),(1172,'Wolverhampton','WLV',77,NULL),(1173,'Wandsworth','WND',77,NULL),(1174,'Windsor and Maidenhead','WNM',77,NULL),(1175,'Wokingham','WOK',77,NULL),(1176,'Worcestershire','WOR',77,NULL),(1177,'Wirral','WRL',77,NULL),(1178,'Warrington','WRT',77,NULL),(1179,'Wrexham;Wrecsam','WRX',77,NULL),(1180,'Westminster','WSM',77,NULL),(1181,'West Sussex','WSX',77,NULL),(1182,'York','YOR',77,NULL),(1183,'Shetland Islands','ZET',77,NULL),(1184,'Wiltshire','WIL',77,NULL),(1185,'Saint Andrew','01',78,NULL),(1186,'Saint David','02',78,NULL),(1187,'Saint George','03',78,NULL),(1188,'Saint John','04',78,NULL),(1189,'Saint Mark','05',78,NULL),(1190,'Saint Patrick','06',78,NULL),(1191,'Southern Grenadine Islands','10',78,NULL),(1192,'Abkhazia','AB',79,NULL),(1193,'Ajaria','AJ',79,NULL),(1194,'Guria','GU',79,NULL),(1195,'Imeret’i','IM',79,NULL),(1196,'Kakhet’i','KA',79,NULL),(1197,'K’vemo K’art’li','KK',79,NULL),(1198,'Mts’khet’a-Mt’ianet’i','MM',79,NULL),(1199,'Racha-Lech’khumi-K’vemo Svanet’i','RL',79,NULL),(1200,'Samts’khe-Javakhet’i','SJ',79,NULL),(1201,'Shida K’art’li','SK',79,NULL),(1202,'Samegrelo-Zemo Svanet’i','SZ',79,NULL),(1203,'T’bilisi','TB',79,NULL),(1204,'Greater Accra','AA',82,NULL),(1205,'Ashanti','AH',82,NULL),(1206,'Brong-Ahafo','BA',82,NULL),(1207,'Central','CP',82,NULL),(1208,'Eastern','EP',82,NULL),(1209,'Northern','NP',82,NULL),(1210,'Volta','TV',82,NULL),(1211,'Upper East','UE',82,NULL),(1212,'Upper West','UW',82,NULL),(1213,'Western','WP',82,NULL),(1214,'Kommune Kujalleq','KU',84,NULL),(1215,'Qaasuitsup Kommunia','QA',84,NULL),(1216,'Qeqqata Kommunia','QE',84,NULL),(1217,'Kommuneqarfik Sermersooq','SM',84,NULL),(1218,'Banjul','B',85,NULL),(1219,'Lower River','L',85,NULL),(1220,'Central River','M',85,NULL),(1221,'North Bank','N',85,NULL),(1222,'Upper River','U',85,NULL),(1223,'Western','W',85,NULL),(1224,'Boké','B',86,NULL),(1225,'Conakry','C',86,NULL),(1226,'Kindia','D',86,NULL),(1227,'Faranah','F',86,NULL),(1228,'Kankan','K',86,NULL),(1229,'Labé','L',86,NULL),(1230,'Mamou','M',86,NULL),(1231,'Nzérékoré','N',86,NULL),(1232,'Región Continental','C',88,NULL),(1233,'Región Insular','I',88,NULL),(1234,'Agio Oros','69',89,NULL),(1235,'Anatoliki Makedonia kai Thraki','A',89,NULL),(1236,'Kentriki Makedonia','B',89,NULL),(1237,'Dytiki Makedonia','C',89,NULL),(1238,'Ipeiros','D',89,NULL),(1239,'Thessalia','E',89,NULL),(1240,'Ionia Nisia','F',89,NULL),(1241,'Dytiki Ellada','G',89,NULL),(1242,'Sterea Ellada','H',89,NULL),(1243,'Attiki','I',89,NULL),(1244,'Peloponnisos','J',89,NULL),(1245,'Voreio Aigaio','K',89,NULL),(1246,'Notio Aigaio','L',89,NULL),(1247,'Kriti','M',89,NULL),(1248,'Alta Verapaz','AV',91,NULL),(1249,'Baja Verapaz','BV',91,NULL),(1250,'Chimaltenango','CM',91,NULL),(1251,'Chiquimula','CQ',91,NULL),(1252,'Escuintla','ES',91,NULL),(1253,'Guatemala','GU',91,NULL),(1254,'Huehuetenango','HU',91,NULL),(1255,'Izabal','IZ',91,NULL),(1256,'Jalapa','JA',91,NULL),(1257,'Jutiapa','JU',91,NULL),(1258,'Petén','PE',91,NULL),(1259,'El Progreso','PR',91,NULL),(1260,'Quiché','QC',91,NULL),(1261,'Quetzaltenango','QZ',91,NULL),(1262,'Retalhuleu','RE',91,NULL),(1263,'Sacatepéquez','SA',91,NULL),(1264,'San Marcos','SM',91,NULL),(1265,'Sololá','SO',91,NULL),(1266,'Santa Rosa','SR',91,NULL),(1267,'Suchitepéquez','SU',91,NULL),(1268,'Totonicapán','TO',91,NULL),(1269,'Zacapa','ZA',91,NULL),(1270,'Bissau','BS',93,NULL),(1271,'Leste','L',93,NULL),(1272,'Norte','N',93,NULL),(1273,'Sul','S',93,NULL),(1274,'Barima-Waini','BA',94,NULL),(1275,'Cuyuni-Mazaruni','CU',94,NULL),(1276,'Demerara-Mahaica','DE',94,NULL),(1277,'East Berbice-Corentyne','EB',94,NULL),(1278,'Essequibo Islands-West Demerara','ES',94,NULL),(1279,'Mahaica-Berbice','MA',94,NULL),(1280,'Pomeroon-Supenaam','PM',94,NULL),(1281,'Potaro-Siparuni','PT',94,NULL),(1282,'Upper Demerara-Berbice','UD',94,NULL),(1283,'Upper Takutu-Upper Essequibo','UT',94,NULL),(1284,'Atlántida','AT',97,NULL),(1285,'Choluteca','CH',97,NULL),(1286,'Colón','CL',97,NULL),(1287,'Comayagua','CM',97,NULL),(1288,'Copán','CP',97,NULL),(1289,'Cortés','CR',97,NULL),(1290,'El Paraíso','EP',97,NULL),(1291,'Francisco Morazán','FM',97,NULL),(1292,'Gracias a Dios','GD',97,NULL),(1293,'Islas de la Bahía','IB',97,NULL),(1294,'Intibucá','IN',97,NULL),(1295,'Lempira','LE',97,NULL),(1296,'La Paz','LP',97,NULL),(1297,'Ocotepeque','OC',97,NULL),(1298,'Olancho','OL',97,NULL),(1299,'Santa Bárbara','SB',97,NULL),(1300,'Valle','VA',97,NULL),(1301,'Yoro','YO',97,NULL),(1302,'Zagrebačka županija','01',98,NULL),(1303,'Krapinsko-zagorska županija','02',98,NULL),(1304,'Sisačko-moslavačka županija','03',98,NULL),(1305,'Karlovačka županija','04',98,NULL),(1306,'Varaždinska županija','05',98,NULL),(1307,'Koprivničko-križevačka županija','06',98,NULL),(1308,'Bjelovarsko-bilogorska županija','07',98,NULL),(1309,'Primorsko-goranska županija','08',98,NULL),(1310,'Ličko-senjska županija','09',98,NULL),(1311,'Virovitičko-podravska županija','10',98,NULL),(1312,'Požeško-slavonska županija','11',98,NULL),(1313,'Brodsko-posavska županija','12',98,NULL),(1314,'Zadarska županija','13',98,NULL),(1315,'Osječko-baranjska županija','14',98,NULL),(1316,'Šibensko-kninska županija','15',98,NULL),(1317,'Vukovarsko-srijemska županija','16',98,NULL),(1318,'Splitsko-dalmatinska županija','17',98,NULL),(1319,'Istarska županija','18',98,NULL),(1320,'Dubrovačko-neretvanska županija','19',98,NULL),(1321,'Međimurska županija','20',98,NULL),(1322,'Grad Zagreb','21',98,NULL),(1323,'Artibonite','AR',99,NULL),(1324,'Centre','CE',99,NULL),(1325,'Grande-Anse','GA',99,NULL),(1326,'Nord','ND',99,NULL),(1327,'Nord-Est','NE',99,NULL),(1328,'Nord-Ouest','NO',99,NULL),(1329,'Ouest','OU',99,NULL),(1330,'Sud','SD',99,NULL),(1331,'Sud-Est','SE',99,NULL),(1332,'Baranya','BA',100,NULL),(1333,'Békéscsaba','BC',100,NULL),(1334,'Békés','BE',100,NULL),(1335,'Bács-Kiskun','BK',100,NULL),(1336,'Budapest','BU',100,NULL),(1337,'Borsod-Abaúj-Zemplén','BZ',100,NULL),(1338,'Csongrád','CS',100,NULL),(1339,'Debrecen','DE',100,NULL),(1340,'Dunaújváros','DU',100,NULL),(1341,'Eger','EG',100,NULL),(1342,'Érd','ER',100,NULL),(1343,'Fejér','FE',100,NULL),(1344,'Győr-Moson-Sopron','GS',100,NULL),(1345,'Győr','GY',100,NULL),(1346,'Hajdú-Bihar','HB',100,NULL),(1347,'Heves','HE',100,NULL),(1348,'Hódmezővásárhely','HV',100,NULL),(1349,'Jász-Nagykun-Szolnok','JN',100,NULL),(1350,'Komárom-Esztergom','KE',100,NULL),(1351,'Kecskemét','KM',100,NULL),(1352,'Kaposvár','KV',100,NULL),(1353,'Miskolc','MI',100,NULL),(1354,'Nagykanizsa','NK',100,NULL),(1355,'Nógrád','NO',100,NULL),(1356,'Nyíregyháza','NY',100,NULL),(1357,'Pest','PE',100,NULL),(1358,'Pécs','PS',100,NULL),(1359,'Szeged','SD',100,NULL),(1360,'Székesfehérvár','SF',100,NULL),(1361,'Szombathely','SH',100,NULL),(1362,'Szolnok','SK',100,NULL),(1363,'Sopron','SN',100,NULL),(1364,'Somogy','SO',100,NULL),(1365,'Szekszárd','SS',100,NULL),(1366,'Salgótarján','ST',100,NULL),(1367,'Szabolcs-Szatmár-Bereg','SZ',100,NULL),(1368,'Tatabánya','TB',100,NULL),(1369,'Tolna','TO',100,NULL),(1370,'Vas','VA',100,NULL),(1371,'Veszprém (county)','VE',100,NULL),(1372,'Veszprém','VM',100,NULL),(1373,'Zala','ZA',100,NULL),(1374,'Zalaegerszeg','ZE',100,NULL),(1375,'Papua','IJ',101,NULL),(1376,'Jawa','JW',101,NULL),(1377,'Kalimantan','KA',101,NULL),(1378,'Maluku','ML',101,NULL),(1379,'Nusa Tenggara','NU',101,NULL),(1380,'Sulawesi','SL',101,NULL),(1381,'Sumatera','SM',101,NULL),(1382,'Connacht','C',102,NULL),(1383,'Leinster','L',102,NULL),(1384,'Munster','M',102,NULL),(1385,'Ulster','U',102,NULL),(1386,'HaDarom','D',103,NULL),(1387,'Hefa','HA',103,NULL),(1388,'Yerushalayim Al Quds','JM',103,NULL),(1389,'HaMerkaz','M',103,NULL),(1390,'Tel-Aviv','TA',103,NULL),(1391,'HaZafon','Z',103,NULL),(1392,'Andaman and Nicobar Islands','AN',105,NULL),(1393,'Andhra Pradesh','AP',105,NULL),(1394,'Arunachal Pradesh','AR',105,NULL),(1395,'Assam','AS',105,NULL),(1396,'Bihar','BR',105,NULL),(1397,'Chandigarh','CH',105,NULL),(1398,'Chhattisgarh','CT',105,NULL),(1399,'Damen and Diu','DD',105,NULL),(1400,'Delhi','DL',105,NULL),(1401,'Dadra and Nagar Haveli','DN',105,NULL),(1402,'Goa','GA',105,NULL),(1403,'Gujarat','GJ',105,NULL),(1404,'Himachal Pradesh','HP',105,NULL),(1405,'Haryana','HR',105,NULL),(1406,'Jharkhand','JH',105,NULL),(1407,'Jammu and Kashmir','JK',105,NULL),(1408,'Karnataka','KA',105,NULL),(1409,'Kerala','KL',105,NULL),(1410,'Lakshadweep','LD',105,NULL),(1411,'Maharashtra','MH',105,NULL),(1412,'Meghalaya','ML',105,NULL),(1413,'Manipur','MN',105,NULL),(1414,'Madhya Pradesh','MP',105,NULL),(1415,'Mizoram','MZ',105,NULL),(1416,'Nagaland','NL',105,NULL),(1417,'Orissa','OR',105,NULL),(1418,'Punjab','PB',105,NULL),(1419,'Puducherry','PY',105,NULL),(1420,'Rajasthan','RJ',105,NULL),(1421,'Sikkim','SK',105,NULL),(1422,'Tamil Nadu','TN',105,NULL),(1423,'Tripura','TR',105,NULL),(1424,'Uttar Pradesh','UP',105,NULL),(1425,'Uttarakhand','UT',105,NULL),(1426,'West Bengal','WB',105,NULL),(1427,'Al Anbar','AN',107,NULL),(1428,'Arbil','AR',107,NULL),(1429,'Al Basrah','BA',107,NULL),(1430,'Babil','BB',107,NULL),(1431,'Baghdad','BG',107,NULL),(1432,'Dahuk','DA',107,NULL),(1433,'Diyala','DI',107,NULL),(1434,'Dhi Qar','DQ',107,NULL),(1435,'Karbala\'','KA',107,NULL),(1436,'Maysan','MA',107,NULL),(1437,'Al Muthanna','MU',107,NULL),(1438,'An Najef','NA',107,NULL),(1439,'Ninawa','NI',107,NULL),(1440,'Al Qadisiyah','QA',107,NULL),(1441,'Salah ad Din','SD',107,NULL),(1442,'As Sulaymaniyah','SW',107,NULL),(1443,'At Ta\'mim','TS',107,NULL),(1444,'Wasit','WA',107,NULL),(1445,'Āzarbāyjān-e Sharqī','01',108,NULL),(1446,'Āzarbāyjān-e Gharbī','02',108,NULL),(1447,'Ardabīl','03',108,NULL),(1448,'Eşfahān','04',108,NULL),(1449,'Īlām','05',108,NULL),(1450,'Būshehr','06',108,NULL),(1451,'Tehrān','07',108,NULL),(1452,'Chahār Mahāll va Bakhtīārī','08',108,NULL),(1453,'Khūzestān','10',108,NULL),(1454,'Zanjān','11',108,NULL),(1455,'Semnān','12',108,NULL),(1456,'Sīstān va Balūchestān','13',108,NULL),(1457,'Fārs','14',108,NULL),(1458,'Kermān','15',108,NULL),(1459,'Kordestān','16',108,NULL),(1460,'Kermānshāh','17',108,NULL),(1461,'Kohgīlūyeh va Būyer Ahmad','18',108,NULL),(1462,'Gīlān','19',108,NULL),(1463,'Lorestān','20',108,NULL),(1464,'Māzandarān','21',108,NULL),(1465,'Markazī','22',108,NULL),(1466,'Hormozgān','23',108,NULL),(1467,'Hamadān','24',108,NULL),(1468,'Yazd','25',108,NULL),(1469,'Qom','26',108,NULL),(1470,'Golestān','27',108,NULL),(1471,'Qazvīn','28',108,NULL),(1472,'Khorāsān-e Janūbī','29',108,NULL),(1473,'Khorāsān-e Razavī','30',108,NULL),(1474,'Khorāsān-e Shemālī','31',108,NULL),(1475,'Reykjavík','0',109,NULL),(1476,'Höfuðborgarsvæðið','1',109,NULL),(1477,'Suðurnes','2',109,NULL),(1478,'Vesturland','3',109,NULL),(1479,'Vestfirðir','4',109,NULL),(1480,'Norðurland vestra','5',109,NULL),(1481,'Norðurland eystra','6',109,NULL),(1482,'Austurland','7',109,NULL),(1483,'Suðurland','8',109,NULL),(1484,'Piemonte','21',110,NULL),(1485,'Valle d\'Aosta','23',110,NULL),(1486,'Lombardia','25',110,NULL),(1487,'Trentino-Alto Adige','32',110,NULL),(1488,'Veneto','34',110,NULL),(1489,'Friuli-Venezia Giulia','36',110,NULL),(1490,'Liguria','42',110,NULL),(1491,'Emilia-Romagna','45',110,NULL),(1492,'Toscana','52',110,NULL),(1493,'Umbria','55',110,NULL),(1494,'Marche','57',110,NULL),(1495,'Lazio','62',110,NULL),(1496,'Abruzzo','65',110,NULL),(1497,'Molise','67',110,NULL),(1498,'Campania','72',110,NULL),(1499,'Puglia','75',110,NULL),(1500,'Basilicata','77',110,NULL),(1501,'Calabria','78',110,NULL),(1502,'Sicilia','82',110,NULL),(1503,'Sardegna','88',110,NULL),(1504,'Kingston','01',112,NULL),(1505,'Saint Andrew','02',112,NULL),(1506,'Saint Thomas','03',112,NULL),(1507,'Portland','04',112,NULL),(1508,'Saint Mary','05',112,NULL),(1509,'Saint Ann','06',112,NULL),(1510,'Trelawny','07',112,NULL),(1511,'Saint James','08',112,NULL),(1512,'Hanover','09',112,NULL),(1513,'Westmoreland','10',112,NULL),(1514,'Saint Elizabeth','11',112,NULL),(1515,'Manchester','12',112,NULL),(1516,'Clarendon','13',112,NULL),(1517,'Saint Catherine','14',112,NULL),(1518,'‘Ajlūn','AJ',113,NULL),(1519,'‘Ammān (Al ‘Aşimah)','AM',113,NULL),(1520,'Al ‘Aqabah','AQ',113,NULL),(1521,'Aţ Ţafīlah','AT',113,NULL),(1522,'Az Zarqā\'','AZ',113,NULL),(1523,'Al Balqā\'','BA',113,NULL),(1524,'Irbid','IR',113,NULL),(1525,'Jarash','JA',113,NULL),(1526,'Al Karak','KA',113,NULL),(1527,'Al Mafraq','MA',113,NULL),(1528,'Mādabā','MD',113,NULL),(1529,'Ma‘ān','MN',113,NULL),(1530,'Hokkaido','01',114,NULL),(1531,'Aomori','02',114,NULL),(1532,'Iwate','03',114,NULL),(1533,'Miyagi','04',114,NULL),(1534,'Akita','05',114,NULL),(1535,'Yamagata','06',114,NULL),(1536,'Fukushima','07',114,NULL),(1537,'Ibaraki','08',114,NULL),(1538,'Tochigi','09',114,NULL),(1539,'Gunma','10',114,NULL),(1540,'Saitama','11',114,NULL),(1541,'Chiba','12',114,NULL),(1542,'Tokyo','13',114,NULL),(1543,'Kanagawa','14',114,NULL),(1544,'Niigata','15',114,NULL),(1545,'Toyama','16',114,NULL),(1546,'Ishikawa','17',114,NULL),(1547,'Fukui','18',114,NULL),(1548,'Yamanashi','19',114,NULL),(1549,'Nagano','20',114,NULL),(1550,'Gifu','21',114,NULL),(1551,'Shizuoka','22',114,NULL),(1552,'Aichi','23',114,NULL),(1553,'Mie','24',114,NULL),(1554,'Shiga','25',114,NULL),(1555,'Kyoto','26',114,NULL),(1556,'Osaka','27',114,NULL),(1557,'Hyogo','28',114,NULL),(1558,'Nara','29',114,NULL),(1559,'Wakayama','30',114,NULL),(1560,'Tottori','31',114,NULL),(1561,'Shimane','32',114,NULL),(1562,'Okayama','33',114,NULL),(1563,'Hiroshima','34',114,NULL),(1564,'Yamaguchi','35',114,NULL),(1565,'Tokushima','36',114,NULL),(1566,'Kagawa','37',114,NULL),(1567,'Ehime','38',114,NULL),(1568,'Kochi','39',114,NULL),(1569,'Fukuoka','40',114,NULL),(1570,'Saga','41',114,NULL),(1571,'Nagasaki','42',114,NULL),(1572,'Kumamoto','43',114,NULL),(1573,'Oita','44',114,NULL),(1574,'Miyazaki','45',114,NULL),(1575,'Kagoshima','46',114,NULL),(1576,'Okinawa','47',114,NULL),(1577,'Nairobi Municipality','110',115,NULL),(1578,'Central','200',115,NULL),(1579,'Coast','300',115,NULL),(1580,'Eastern','400',115,NULL),(1581,'North-Eastern Kaskazini Mashariki','500',115,NULL),(1582,'Rift Valley','700',115,NULL),(1583,'Western Magharibi','800',115,NULL),(1584,'Batken','B',116,NULL),(1585,'Chü','C',116,NULL),(1586,'Bishkek','GB',116,NULL),(1587,'Jalal-Abad','J',116,NULL),(1588,'Naryn','N',116,NULL),(1589,'Osh','O',116,NULL),(1590,'Talas','T',116,NULL),(1591,'Ysyk-Köl','Y',116,NULL),(1592,'Banteay Mean Chey','1',117,NULL),(1593,'Krachoh','10',117,NULL),(1594,'Mondol Kiri','11',117,NULL),(1595,'Phnom Penh','12',117,NULL),(1596,'Preah Vihear','13',117,NULL),(1597,'Prey Veaeng','14',117,NULL),(1598,'Pousaat','15',117,NULL),(1599,'Rotanak Kiri','16',117,NULL),(1600,'Siem Reab','17',117,NULL),(1601,'Krong Preah Sihanouk','18',117,NULL),(1602,'Stueng Traeng','19',117,NULL),(1603,'Battambang','2',117,NULL),(1604,'Svaay Rieng','20',117,NULL),(1605,'Taakaev','21',117,NULL),(1606,'Otdar Mean Chey','22',117,NULL),(1607,'Krong Kaeb','23',117,NULL),(1608,'Krong Pailin','24',117,NULL),(1609,'Kampong Cham','3',117,NULL),(1610,'Kampong Chhnang','4',117,NULL),(1611,'Kampong Speu','5',117,NULL),(1612,'Kampong Thom','6',117,NULL),(1613,'Kampot','7',117,NULL),(1614,'Kandal','8',117,NULL),(1615,'Kach Kong','9',117,NULL),(1616,'Gilbert Islands','G',118,NULL),(1617,'Line Islands','L',118,NULL),(1618,'Phoenix Islands','P',118,NULL),(1619,'Andjouân (Anjwān)','A',119,NULL),(1620,'Andjazîdja (Anjazījah)','G',119,NULL),(1621,'Moûhîlî (Mūhīlī)','M',119,NULL),(1622,'Saint Kitts','K',120,NULL),(1623,'Nevis','N',120,NULL),(1624,'P’yŏngyang','01',121,NULL),(1625,'P’yŏngan-namdo','02',121,NULL),(1626,'P’yŏngan-bukto','03',121,NULL),(1627,'Chagang-do','04',121,NULL),(1628,'Hwanghae-namdo','05',121,NULL),(1629,'Hwanghae-bukto','06',121,NULL),(1630,'Kangwŏn-do','07',121,NULL),(1631,'Hamgyŏng-namdo','08',121,NULL),(1632,'Hamgyŏng-bukto','09',121,NULL),(1633,'Yanggang-do','10',121,NULL),(1634,'Nasŏn (Najin-Sŏnbong)','13',121,NULL),(1635,'Seoul Teugbyeolsi','11',122,NULL),(1636,'Busan Gwang\'yeogsi','26',122,NULL),(1637,'Daegu Gwang\'yeogsi','27',122,NULL),(1638,'Incheon Gwang\'yeogsi','28',122,NULL),(1639,'Gwangju Gwang\'yeogsi','29',122,NULL),(1640,'Daejeon Gwang\'yeogsi','30',122,NULL),(1641,'Ulsan Gwang\'yeogsi','31',122,NULL),(1642,'Gyeonggido','41',122,NULL),(1643,'Gang\'weondo','42',122,NULL),(1644,'Chungcheongbukdo','43',122,NULL),(1645,'Chungcheongnamdo','44',122,NULL),(1646,'Jeonrabukdo','45',122,NULL),(1647,'Jeonranamdo','46',122,NULL),(1648,'Gyeongsangbukdo','47',122,NULL),(1649,'Gyeongsangnamdo','48',122,NULL),(1650,'Jejudo','49',122,NULL),(1651,'Al Ahmadi','AH',123,NULL),(1652,'Al Farwānīyah','FA',123,NULL),(1653,'Hawallī','HA',123,NULL),(1654,'Al Jahrrā’','JA',123,NULL),(1655,'Al Kuwayt (Al ‘Āşimah)','KU',123,NULL),(1656,'Mubārak al Kabīr','MU',123,NULL),(1657,'Aqmola oblysy','AKM',125,NULL),(1658,'Aqtöbe oblysy','AKT',125,NULL),(1659,'Almaty','ALA',125,NULL),(1660,'Almaty oblysy','ALM',125,NULL),(1661,'Astana','AST',125,NULL),(1662,'Atyraū oblysy','ATY',125,NULL),(1663,'Qaraghandy oblysy','KAR',125,NULL),(1664,'Qostanay oblysy','KUS',125,NULL),(1665,'Qyzylorda oblysy','KZY',125,NULL),(1666,'Mangghystaū oblysy','MAN',125,NULL),(1667,'Pavlodar oblysy','PAV',125,NULL),(1668,'Soltüstik Quzaqstan oblysy','SEV',125,NULL),(1669,'Shyghys Qazaqstan oblysy','VOS',125,NULL),(1670,'Ongtüstik Qazaqstan oblysy','YUZ',125,NULL),(1671,'Batys Quzaqstan oblysy','ZAP',125,NULL),(1672,'Zhambyl oblysy','ZHA',125,NULL),(1673,'Attapu','AT',126,NULL),(1674,'Bokèo','BK',126,NULL),(1675,'Bolikhamxai','BL',126,NULL),(1676,'Champasak','CH',126,NULL),(1677,'Houaphan','HO',126,NULL),(1678,'Khammouan','KH',126,NULL),(1679,'Louang Namtha','LM',126,NULL),(1680,'Louangphabang','LP',126,NULL),(1681,'Oudômxai','OU',126,NULL),(1682,'Phôngsali','PH',126,NULL),(1683,'Salavan','SL',126,NULL),(1684,'Savannakhét','SV',126,NULL),(1685,'Vientiane','VI',126,NULL),(1686,'Vientiane','VT',126,NULL),(1687,'Xaignabouli','XA',126,NULL),(1688,'Xékong','XE',126,NULL),(1689,'Xiangkhoang','XI',126,NULL),(1690,'Xiasômboun','XN',126,NULL),(1691,'Aakkâr','AK',127,NULL),(1692,'Liban-Nord','AS',127,NULL),(1693,'Beyrouth','BA',127,NULL),(1694,'Baalbek-Hermel','BH',127,NULL),(1695,'Béqaa','BI',127,NULL),(1696,'Liban-Sud','JA',127,NULL),(1697,'Mont-Liban','JL',127,NULL),(1698,'Nabatîyé','NA',127,NULL),(1699,'Balzers','01',129,NULL),(1700,'Eschen','02',129,NULL),(1701,'Gamprin','03',129,NULL),(1702,'Mauren','04',129,NULL),(1703,'Planken','05',129,NULL),(1704,'Ruggell','06',129,NULL),(1705,'Schaan','07',129,NULL),(1706,'Schellenberg','08',129,NULL),(1707,'Triesen','09',129,NULL),(1708,'Triesenberg','10',129,NULL),(1709,'Vaduz','11',129,NULL),(1710,'Basnāhira paḷāta','1',130,NULL),(1711,'Madhyama paḷāta','2',130,NULL),(1712,'Dakuṇu paḷāta','3',130,NULL),(1713,'Uturu paḷāta','4',130,NULL),(1714,'Næ̆gĕnahira paḷāta','5',130,NULL),(1715,'Vayamba paḷāta','6',130,NULL),(1716,'Uturumæ̆da paḷāta','7',130,NULL),(1717,'Ūva paḷāta','8',130,NULL),(1718,'Sabaragamuva paḷāta','9',130,NULL),(1719,'Bong','BG',131,NULL),(1720,'Bomi','BM',131,NULL),(1721,'Grand Cape Mount','CM',131,NULL),(1722,'Grand Bassa','GB',131,NULL),(1723,'Grand Gedeh','GG',131,NULL),(1724,'Grand Kru','GK',131,NULL),(1725,'Lofa','LO',131,NULL),(1726,'Margibi','MG',131,NULL),(1727,'Montserrado','MO',131,NULL),(1728,'Maryland','MY',131,NULL),(1729,'Nimba','NI',131,NULL),(1730,'Rivercess','RI',131,NULL),(1731,'Sinoe','SI',131,NULL),(1732,'Maseru','A',132,NULL),(1733,'Butha-Buthe','B',132,NULL),(1734,'Leribe','C',132,NULL),(1735,'Berea','D',132,NULL),(1736,'Mafeteng','E',132,NULL),(1737,'Mohale\'s Hoek','F',132,NULL),(1738,'Quthing','G',132,NULL),(1739,'Qacha\'s Nek','H',132,NULL),(1740,'Mokhotlong','J',132,NULL),(1741,'Thaba-Tseka','K',132,NULL),(1742,'Alytaus Apskritis','AL',133,NULL),(1743,'Klaipėdos Apskritis','KL',133,NULL),(1744,'Kauno Apskritis','KU',133,NULL),(1745,'Marijampolės Apskritis','MR',133,NULL),(1746,'Panevėžio Apskritis','PN',133,NULL),(1747,'Šiaulių Apskritis','SA',133,NULL),(1748,'Tauragés Apskritis','TA',133,NULL),(1749,'Telšių Apskritis','TE',133,NULL),(1750,'Utenos Apskritis','UT',133,NULL),(1751,'Vilniaus Apskritis','VL',133,NULL),(1752,'Diekirch','D',134,NULL),(1753,'Grevenmacher','G',134,NULL),(1754,'Luxembourg','L',134,NULL),(1755,'Aglonas novads','001',135,NULL),(1756,'Aizkraukles novads','002',135,NULL),(1757,'Aizputes novads','003',135,NULL),(1758,'Aknīstes novads','004',135,NULL),(1759,'Alojas novads','005',135,NULL),(1760,'Alsungas novads','006',135,NULL),(1761,'Alūksnes novads','007',135,NULL),(1762,'Amatas novads','008',135,NULL),(1763,'Apes novads','009',135,NULL),(1764,'Auces novads','010',135,NULL),(1765,'Ādažu novads','011',135,NULL),(1766,'Babītes novads','012',135,NULL),(1767,'Baldones novads','013',135,NULL),(1768,'Baltinavas novads','014',135,NULL),(1769,'Balvu novads','015',135,NULL),(1770,'Bauskas novads','016',135,NULL),(1771,'Beverīnas novads','017',135,NULL),(1772,'Brocēnu novads','018',135,NULL),(1773,'Burtnieku novads','019',135,NULL),(1774,'Carnikavas novads','020',135,NULL),(1775,'Cesvaines novads','021',135,NULL),(1776,'Cēsu novads','022',135,NULL),(1777,'Ciblas novads','023',135,NULL),(1778,'Dagdas novads','024',135,NULL),(1779,'Daugavpils novads','025',135,NULL),(1780,'Dobeles novads','026',135,NULL),(1781,'Dundagas novads','027',135,NULL),(1782,'Durbes novads','028',135,NULL),(1783,'Engures novads','029',135,NULL),(1784,'Ērgļu novads','030',135,NULL),(1785,'Garkalnes novads','031',135,NULL),(1786,'Grobiņas novads','032',135,NULL),(1787,'Gulbenes novads','033',135,NULL),(1788,'Iecavas novads','034',135,NULL),(1789,'Ikšķiles novads','035',135,NULL),(1790,'Ilūkstes novads','036',135,NULL),(1791,'Inčukalna novads','037',135,NULL),(1792,'Jaunjelgavas novads','038',135,NULL),(1793,'Jaunpiebalgas novads','039',135,NULL),(1794,'Jaunpils novads','040',135,NULL),(1795,'Jelgavas novads','041',135,NULL),(1796,'Jēkabpils novads','042',135,NULL),(1797,'Kandavas novads','043',135,NULL),(1798,'Kārsavas novads','044',135,NULL),(1799,'Kocēnu novads','045',135,NULL),(1800,'Kokneses novads','046',135,NULL),(1801,'Krāslavas novads','047',135,NULL),(1802,'Krimuldas novads','048',135,NULL),(1803,'Krustpils novads','049',135,NULL),(1804,'Kuldīgas novads','050',135,NULL),(1805,'Ķeguma novads','051',135,NULL),(1806,'Ķekavas novads','052',135,NULL),(1807,'Lielvārdes novads','053',135,NULL),(1808,'Limbažu novads','054',135,NULL),(1809,'Līgatnes novads','055',135,NULL),(1810,'Līvānu novads','056',135,NULL),(1811,'Lubānas novads','057',135,NULL),(1812,'Ludzas novads','058',135,NULL),(1813,'Madonas novads','059',135,NULL),(1814,'Mazsalacas novads','060',135,NULL),(1815,'Mālpils novads','061',135,NULL),(1816,'Mārupes novads','062',135,NULL),(1817,'Mērsraga novads','063',135,NULL),(1818,'Naukšēnu novads','064',135,NULL),(1819,'Neretas novads','065',135,NULL),(1820,'Nīcas novads','066',135,NULL),(1821,'Ogres novads','067',135,NULL),(1822,'Olaines novads','068',135,NULL),(1823,'Ozolnieku novads','069',135,NULL),(1824,'Pārgaujas novads','070',135,NULL),(1825,'Pāvilostas novads','071',135,NULL),(1826,'Pļaviņu novads','072',135,NULL),(1827,'Preiļu novads','073',135,NULL),(1828,'Priekules novads','074',135,NULL),(1829,'Priekuļu novads','075',135,NULL),(1830,'Raunas novads','076',135,NULL),(1831,'Rēzeknes novads','077',135,NULL),(1832,'Riebiņu novads','078',135,NULL),(1833,'Rojas novads','079',135,NULL),(1834,'Ropažu novads','080',135,NULL),(1835,'Rucavas novads','081',135,NULL),(1836,'Rugāju novads','082',135,NULL),(1837,'Rundāles novads','083',135,NULL),(1838,'Rūjienas novads','084',135,NULL),(1839,'Salas novads','085',135,NULL),(1840,'Salacgrīvas novads','086',135,NULL),(1841,'Salaspils novads','087',135,NULL),(1842,'Saldus novads','088',135,NULL),(1843,'Saulkrastu novads','089',135,NULL),(1844,'Sējas novads','090',135,NULL),(1845,'Siguldas novads','091',135,NULL),(1846,'Skrīveru novads','092',135,NULL),(1847,'Skrundas novads','093',135,NULL),(1848,'Smiltenes novads','094',135,NULL),(1849,'Stopiņu novads','095',135,NULL),(1850,'Strenču novads','096',135,NULL),(1851,'Talsu novads','097',135,NULL),(1852,'Tērvetes novads','098',135,NULL),(1853,'Tukuma novads','099',135,NULL),(1854,'Vaiņodes novads','100',135,NULL),(1855,'Valkas novads','101',135,NULL),(1856,'Varakļānu novads','102',135,NULL),(1857,'Vārkavas novads','103',135,NULL),(1858,'Vecpiebalgas novads','104',135,NULL),(1859,'Vecumnieku novads','105',135,NULL),(1860,'Ventspils novads','106',135,NULL),(1861,'Viesītes novads','107',135,NULL),(1862,'Viļakas novads','108',135,NULL),(1863,'Viļānu novads','109',135,NULL),(1864,'Zilupes novads','110',135,NULL),(1865,'Daugavpils','DGV',135,NULL),(1866,'Jelgava','JEL',135,NULL),(1867,'Jēkabpils','JKB',135,NULL),(1868,'Jūrmala','JUR',135,NULL),(1869,'Liepāja','LPX',135,NULL),(1870,'Rēzekne','REZ',135,NULL),(1871,'Rīga','RIX',135,NULL),(1872,'Ventspils','VEN',135,NULL),(1873,'Valmiera','VMR',135,NULL),(1874,'Banghāzī','BA',136,NULL),(1875,'Al Buţnān','BU',136,NULL),(1876,'Darnah','DR',136,NULL),(1877,'Ghāt','GT',136,NULL),(1878,'Al Jabal al Akhḑar','JA',136,NULL),(1879,'Jaghbūb','JB',136,NULL),(1880,'Al Jabal al Gharbī','JG',136,NULL),(1881,'Al Jifārah','JI',136,NULL),(1882,'Al Jufrah','JU',136,NULL),(1883,'Al Kufrah','KF',136,NULL),(1884,'Al Marqab','MB',136,NULL),(1885,'Mişrātah','MI',136,NULL),(1886,'Al Marj','MJ',136,NULL),(1887,'Murzuq','MQ',136,NULL),(1888,'Nālūt','NL',136,NULL),(1889,'An Nuqaţ al Khams','NQ',136,NULL),(1890,'Sabhā','SB',136,NULL),(1891,'Surt','SR',136,NULL),(1892,'Ţarābulus','TB',136,NULL),(1893,'Al Wāḩāt','WA',136,NULL),(1894,'Wādī al Ḩayāt','WD',136,NULL),(1895,'Wādī ash Shāţiʾ','WS',136,NULL),(1896,'Az Zāwiyah','ZA',136,NULL),(1897,'Tanger-Tétouan','01',137,NULL),(1898,'Gharb-Chrarda-Beni Hssen','02',137,NULL),(1899,'Taza-Al Hoceima-Taounate','03',137,NULL),(1900,'L\'Oriental','04',137,NULL),(1901,'Fès-Boulemane','05',137,NULL),(1902,'Meknès-Tafilalet','06',137,NULL),(1903,'Rabat-Salé-Zemmour-Zaer','07',137,NULL),(1904,'Grand Casablanca','08',137,NULL),(1905,'Chaouia-Ouardigha','09',137,NULL),(1906,'Doukhala-Abda','10',137,NULL),(1907,'Marrakech-Tensift-Al Haouz','11',137,NULL),(1908,'Tadla-Azilal','12',137,NULL),(1909,'Sous-Massa-Draa','13',137,NULL),(1910,'Guelmim-Es Smara','14',137,NULL),(1911,'Laâyoune-Boujdour-Sakia el Hamra','15',137,NULL),(1912,'Oued ed Dahab-Lagouira','16',137,NULL),(1913,'La Colle','CL',138,NULL),(1914,'La Condamine','CO',138,NULL),(1915,'Fontvieille','FO',138,NULL),(1916,'La Gare','GA',138,NULL),(1917,'Jardin Exotique','JE',138,NULL),(1918,'Larvotto','LA',138,NULL),(1919,'Malbousquet','MA',138,NULL),(1920,'Monte-Carlo','MC',138,NULL),(1921,'Moneghetti','MG',138,NULL),(1922,'Monaco-Ville','MO',138,NULL),(1923,'Moulins','MU',138,NULL),(1924,'Port-Hercule','PH',138,NULL),(1925,'Sainte-Dévote','SD',138,NULL),(1926,'La Source','SO',138,NULL),(1927,'Spélugues','SP',138,NULL),(1928,'Saint-Roman','SR',138,NULL),(1929,'Vallon de la Rousse','VR',138,NULL),(1930,'Anenii Noi','AN',139,NULL),(1931,'Bălți','BA',139,NULL),(1932,'Tighina','BD',139,NULL),(1933,'Briceni','BR',139,NULL),(1934,'Basarabeasca','BS',139,NULL),(1935,'Cahul','CA',139,NULL),(1936,'Călărași','CL',139,NULL),(1937,'Cimișlia','CM',139,NULL),(1938,'Criuleni','CR',139,NULL),(1939,'Căușeni','CS',139,NULL),(1940,'Cantemir','CT',139,NULL),(1941,'Chișinău','CU',139,NULL),(1942,'Dondușeni','DO',139,NULL),(1943,'Drochia','DR',139,NULL),(1944,'Dubăsari','DU',139,NULL),(1945,'Edineț','ED',139,NULL),(1946,'Fălești','FA',139,NULL),(1947,'Florești','FL',139,NULL),(1948,'Găgăuzia, Unitatea teritorială autonomă','GA',139,NULL),(1949,'Glodeni','GL',139,NULL),(1950,'Hîncești','HI',139,NULL),(1951,'Ialoveni','IA',139,NULL),(1952,'Leova','LE',139,NULL),(1953,'Nisporeni','NI',139,NULL),(1954,'Ocnița','OC',139,NULL),(1955,'Orhei','OR',139,NULL),(1956,'Rezina','RE',139,NULL),(1957,'Rîșcani','RI',139,NULL),(1958,'Șoldănești','SD',139,NULL),(1959,'Sîngerei','SI',139,NULL),(1960,'Stînga Nistrului, unitatea teritorială din','SN',139,NULL),(1961,'Soroca','SO',139,NULL),(1962,'Strășeni','ST',139,NULL),(1963,'Ștefan Vodă','SV',139,NULL),(1964,'Taraclia','TA',139,NULL),(1965,'Telenești','TE',139,NULL),(1966,'Ungheni','UN',139,NULL),(1967,'Andrijevica','01',140,NULL),(1968,'Bar','02',140,NULL),(1969,'Berane','03',140,NULL),(1970,'Bijelo Polje','04',140,NULL),(1971,'Budva','05',140,NULL),(1972,'Cetinje','06',140,NULL),(1973,'Danilovgrad','07',140,NULL),(1974,'Herceg-Novi','08',140,NULL),(1975,'Kolašin','09',140,NULL),(1976,'Kotor','10',140,NULL),(1977,'Mojkovac','11',140,NULL),(1978,'Nikšić','12',140,NULL),(1979,'Plav','13',140,NULL),(1980,'Pljevlja','14',140,NULL),(1981,'Plužine','15',140,NULL),(1982,'Podgorica','16',140,NULL),(1983,'Rožaje','17',140,NULL),(1984,'Šavnik','18',140,NULL),(1985,'Tivat','19',140,NULL),(1986,'Ulcinj','20',140,NULL),(1987,'Žabljak','21',140,NULL),(1988,'Toamasina','A',142,NULL),(1989,'Antsiranana','D',142,NULL),(1990,'Fianarantsoa','F',142,NULL),(1991,'Mahajanga','M',142,NULL),(1992,'Antananarivo','T',142,NULL),(1993,'Toliara','U',142,NULL),(1994,'Ralik chain','L',143,NULL),(1995,'Ratak chain','T',143,NULL),(1996,'Aerodrom','01',144,NULL),(1997,'Aračinovo','02',144,NULL),(1998,'Berovo','03',144,NULL),(1999,'Bitola','04',144,NULL),(2000,'Bogdanci','05',144,NULL),(2001,'Bogovinje','06',144,NULL),(2002,'Bosilovo','07',144,NULL),(2003,'Brvenica','08',144,NULL),(2004,'Butel','09',144,NULL),(2005,'Valandovo','10',144,NULL),(2006,'Vasilevo','11',144,NULL),(2007,'Vevčani','12',144,NULL),(2008,'Veles','13',144,NULL),(2009,'Vinica','14',144,NULL),(2010,'Vraneštica','15',144,NULL),(2011,'Vrapčište','16',144,NULL),(2012,'Gazi Baba','17',144,NULL),(2013,'Gevgelija','18',144,NULL),(2014,'Gostivar','19',144,NULL),(2015,'Gradsko','20',144,NULL),(2016,'Debar','21',144,NULL),(2017,'Debarca','22',144,NULL),(2018,'Delčevo','23',144,NULL),(2019,'Demir Kapija','24',144,NULL),(2020,'Demir Hisar','25',144,NULL),(2021,'Dojran','26',144,NULL),(2022,'Dolneni','27',144,NULL),(2023,'Drugovo','28',144,NULL),(2024,'Gjorče Petrov','29',144,NULL),(2025,'Želino','30',144,NULL),(2026,'Zajas','31',144,NULL),(2027,'Zelenikovo','32',144,NULL),(2028,'Zrnovci','33',144,NULL),(2029,'Ilinden','34',144,NULL),(2030,'Jegunovce','35',144,NULL),(2031,'Kavadarci','36',144,NULL),(2032,'Karbinci','37',144,NULL),(2033,'Karpoš','38',144,NULL),(2034,'Kisela Voda','39',144,NULL),(2035,'Kičevo','40',144,NULL),(2036,'Konče','41',144,NULL),(2037,'Kočani','42',144,NULL),(2038,'Kratovo','43',144,NULL),(2039,'Kriva Palanka','44',144,NULL),(2040,'Krivogaštani','45',144,NULL),(2041,'Kruševo','46',144,NULL),(2042,'Kumanovo','47',144,NULL),(2043,'Lipkovo','48',144,NULL),(2044,'Lozovo','49',144,NULL),(2045,'Mavrovo-i-Rostuša','50',144,NULL),(2046,'Makedonska Kamenica','51',144,NULL),(2047,'Makedonski Brod','52',144,NULL),(2048,'Mogila','53',144,NULL),(2049,'Negotino','54',144,NULL),(2050,'Novaci','55',144,NULL),(2051,'Novo Selo','56',144,NULL),(2052,'Oslomej','57',144,NULL),(2053,'Ohrid','58',144,NULL),(2054,'Petrovec','59',144,NULL),(2055,'Pehčevo','60',144,NULL),(2056,'Plasnica','61',144,NULL),(2057,'Prilep','62',144,NULL),(2058,'Probištip','63',144,NULL),(2059,'Radoviš','64',144,NULL),(2060,'Rankovce','65',144,NULL),(2061,'Resen','66',144,NULL),(2062,'Rosoman','67',144,NULL),(2063,'Saraj','68',144,NULL),(2064,'Sveti Nikole','69',144,NULL),(2065,'Sopište','70',144,NULL),(2066,'Staro Nagoričane','71',144,NULL),(2067,'Struga','72',144,NULL),(2068,'Strumica','73',144,NULL),(2069,'Studeničani','74',144,NULL),(2070,'Tearce','75',144,NULL),(2071,'Tetovo','76',144,NULL),(2072,'Centar','77',144,NULL),(2073,'Centar Župa','78',144,NULL),(2074,'Čair','79',144,NULL),(2075,'Čaška','80',144,NULL),(2076,'Češinovo-Obleševo','81',144,NULL),(2077,'Čučer Sandevo','82',144,NULL),(2078,'Štip','83',144,NULL),(2079,'Šuto Orizari','84',144,NULL),(2080,'Kayes','1',145,NULL),(2081,'Koulikoro','2',145,NULL),(2082,'Sikasso','3',145,NULL),(2083,'Ségou','4',145,NULL),(2084,'Mopti','5',145,NULL),(2085,'Tombouctou','6',145,NULL),(2086,'Gao','7',145,NULL),(2087,'Kidal','8',145,NULL),(2088,'Bamako','BK0',145,NULL),(2089,'Sagaing','01',146,NULL),(2090,'Bago','02',146,NULL),(2091,'Magway','03',146,NULL),(2092,'Mandalay','04',146,NULL),(2093,'Tanintharyi','05',146,NULL),(2094,'Yangon','06',146,NULL),(2095,'Ayeyarwady','07',146,NULL),(2096,'Kachin','11',146,NULL),(2097,'Kayah','12',146,NULL),(2098,'Kayin','13',146,NULL),(2099,'Chin','14',146,NULL),(2100,'Mon','15',146,NULL),(2101,'Rakhine','16',146,NULL),(2102,'Shan','17',146,NULL),(2103,'Orhon','035',147,NULL),(2104,'Darhan uul','037',147,NULL),(2105,'Hentiy','039',147,NULL),(2106,'Hövsgöl','041',147,NULL),(2107,'Hovd','043',147,NULL),(2108,'Uvs','046',147,NULL),(2109,'Töv','047',147,NULL),(2110,'Selenge','049',147,NULL),(2111,'Sühbaatar','051',147,NULL),(2112,'Ömnögovi','053',147,NULL),(2113,'Övörhangay','055',147,NULL),(2114,'Dzavhan','057',147,NULL),(2115,'Dundgovi','059',147,NULL),(2116,'Dornod','061',147,NULL),(2117,'Dornogovi','063',147,NULL),(2118,'Govi-Sumber','064',147,NULL),(2119,'Govi-Altay','065',147,NULL),(2120,'Bulgan','067',147,NULL),(2121,'Bayanhongor','069',147,NULL),(2122,'Bayan-Ölgiy','071',147,NULL),(2123,'Arhangay','073',147,NULL),(2124,'Ulanbaatar','1',147,NULL),(2125,'Hodh ech Chargui','01',151,NULL),(2126,'Hodh el Charbi','02',151,NULL),(2127,'Assaba','03',151,NULL),(2128,'Gorgol','04',151,NULL),(2129,'Brakna','05',151,NULL),(2130,'Trarza','06',151,NULL),(2131,'Adrar','07',151,NULL),(2132,'Dakhlet Nouadhibou','08',151,NULL),(2133,'Tagant','09',151,NULL),(2134,'Guidimaka','10',151,NULL),(2135,'Tiris Zemmour','11',151,NULL),(2136,'Inchiri','12',151,NULL),(2137,'Nouakchott','NKC',151,NULL),(2138,'Attard','01',153,NULL),(2139,'Balzan','02',153,NULL),(2140,'Birgu','03',153,NULL),(2141,'Birkirkara','04',153,NULL),(2142,'Birżebbuġa','05',153,NULL),(2143,'Bormla','06',153,NULL),(2144,'Dingli','07',153,NULL),(2145,'Fgura','08',153,NULL),(2146,'Floriana','09',153,NULL),(2147,'Fontana','10',153,NULL),(2148,'Gudja','11',153,NULL),(2149,'Gżira','12',153,NULL),(2150,'Għajnsielem','13',153,NULL),(2151,'Għarb','14',153,NULL),(2152,'Għargħur','15',153,NULL),(2153,'Għasri','16',153,NULL),(2154,'Għaxaq','17',153,NULL),(2155,'Ħamrun','18',153,NULL),(2156,'Iklin','19',153,NULL),(2157,'Isla','20',153,NULL),(2158,'Kalkara','21',153,NULL),(2159,'Kerċem','22',153,NULL),(2160,'Kirkop','23',153,NULL),(2161,'Lija','24',153,NULL),(2162,'Luqa','25',153,NULL),(2163,'Marsa','26',153,NULL),(2164,'Marsaskala','27',153,NULL),(2165,'Marsaxlokk','28',153,NULL),(2166,'Mdina','29',153,NULL),(2167,'Mellieħa','30',153,NULL),(2168,'Mġarr','31',153,NULL),(2169,'Mosta','32',153,NULL),(2170,'Mqabba','33',153,NULL),(2171,'Msida','34',153,NULL),(2172,'Mtarfa','35',153,NULL),(2173,'Munxar','36',153,NULL),(2174,'Nadur','37',153,NULL),(2175,'Naxxar','38',153,NULL),(2176,'Paola','39',153,NULL),(2177,'Pembroke','40',153,NULL),(2178,'Pietà','41',153,NULL),(2179,'Qala','42',153,NULL),(2180,'Qormi','43',153,NULL),(2181,'Qrendi','44',153,NULL),(2182,'Rabat Għawdex','45',153,NULL),(2183,'Rabat Malta','46',153,NULL),(2184,'Safi','47',153,NULL),(2185,'San Ġiljan','48',153,NULL),(2186,'San Ġwann','49',153,NULL),(2187,'San Lawrenz','50',153,NULL),(2188,'San Pawl il-Baħar','51',153,NULL),(2189,'Sannat','52',153,NULL),(2190,'Santa Luċija','53',153,NULL),(2191,'Santa Venera','54',153,NULL),(2192,'Siġġiewi','55',153,NULL),(2193,'Sliema','56',153,NULL),(2194,'Swieqi','57',153,NULL),(2195,'Ta’ Xbiex','58',153,NULL),(2196,'Tarxien','59',153,NULL),(2197,'Valletta','60',153,NULL),(2198,'Xagħra','61',153,NULL),(2199,'Xewkija','62',153,NULL),(2200,'Xgħajra','63',153,NULL),(2201,'Żabbar','64',153,NULL),(2202,'Żebbuġ Għawdex','65',153,NULL),(2203,'Żebbuġ Malta','66',153,NULL),(2204,'Żejtun','67',153,NULL),(2205,'Żurrieq','68',153,NULL),(2206,'Agalega Islands','AG',154,NULL),(2207,'Black River','BL',154,NULL),(2208,'Beau Bassin-Rose Hill','BR',154,NULL),(2209,'Cargados Carajos Shoals','CC',154,NULL),(2210,'Curepipe','CU',154,NULL),(2211,'Flacq','FL',154,NULL),(2212,'Grand Port','GP',154,NULL),(2213,'Moka','MO',154,NULL),(2214,'Pamplemousses','PA',154,NULL),(2215,'Port Louis','PL',154,NULL),(2216,'Port Louis','PU',154,NULL),(2217,'Plaines Wilhems','PW',154,NULL),(2218,'Quatre Bornes','QB',154,NULL),(2219,'Rodrigues Island','RO',154,NULL),(2220,'Rivière du Rempart','RP',154,NULL),(2221,'Savanne','SA',154,NULL),(2222,'Vacoas-Phoenix','VP',154,NULL),(2223,'Central','CE',155,NULL),(2224,'Male','MLE',155,NULL),(2225,'North Central','NC',155,NULL),(2226,'North','NO',155,NULL),(2227,'South Central','SC',155,NULL),(2228,'South','SU',155,NULL),(2229,'Upper North','UN',155,NULL),(2230,'Upper South','US',155,NULL),(2231,'Central Region','C',156,NULL),(2232,'Northern Region','N',156,NULL),(2233,'Southern Region','S',156,NULL),(2234,'Aguascalientes','AGU',157,NULL),(2235,'Baja California','BCN',157,NULL),(2236,'Baja California Sur','BCS',157,NULL),(2237,'Campeche','CAM',157,NULL),(2238,'Chihuahua','CHH',157,NULL),(2239,'Chiapas','CHP',157,NULL),(2240,'Coahuila','COA',157,NULL),(2241,'Colima','COL',157,NULL),(2242,'Distrito Federal','DIF',157,NULL),(2243,'Durango','DUR',157,NULL),(2244,'Guerrero','GRO',157,NULL),(2245,'Guanajuato','GUA',157,NULL),(2246,'Hidalgo','HID',157,NULL),(2247,'Jalisco','JAL',157,NULL),(2248,'México','MEX',157,NULL),(2249,'Michoacán','MIC',157,NULL),(2250,'Morelos','MOR',157,NULL),(2251,'Nayarit','NAY',157,NULL),(2252,'Nuevo León','NLE',157,NULL),(2253,'Oaxaca','OAX',157,NULL),(2254,'Puebla','PUE',157,NULL),(2255,'Querétaro','QUE',157,NULL),(2256,'Quintana Roo','ROO',157,NULL),(2257,'Sinaloa','SIN',157,NULL),(2258,'San Luis Potosí','SLP',157,NULL),(2259,'Sonora','SON',157,NULL),(2260,'Tabasco','TAB',157,NULL),(2261,'Tamaulipas','TAM',157,NULL),(2262,'Tlaxcala','TLA',157,NULL),(2263,'Veracruz','VER',157,NULL),(2264,'Yucatán','YUC',157,NULL),(2265,'Zacatecas','ZAC',157,NULL),(2266,'Johor','01',158,NULL),(2267,'Kedah','02',158,NULL),(2268,'Kelantan','03',158,NULL),(2269,'Melaka','04',158,NULL),(2270,'Negeri Sembilan','05',158,NULL),(2271,'Pahang','06',158,NULL),(2272,'Pulau Pinang','07',158,NULL),(2273,'Perak','08',158,NULL),(2274,'Perlis','09',158,NULL),(2275,'Selangor','10',158,NULL),(2276,'Terengganu','11',158,NULL),(2277,'Sabah','12',158,NULL),(2278,'Sarawak','13',158,NULL),(2279,'Wilayah Persekutuan Kuala Lumpur','14',158,NULL),(2280,'Wilayah Persekutuan Labuan','15',158,NULL),(2281,'Wilayah Persekutuan Putrajaya','16',158,NULL),(2282,'Niassa','A',159,NULL),(2283,'Manica','B',159,NULL),(2284,'Gaza','G',159,NULL),(2285,'Inhambane','I',159,NULL),(2286,'Maputo','L',159,NULL),(2287,'Maputo (city)','MPM',159,NULL),(2288,'Numpula','N',159,NULL),(2289,'Cabo Delgado','P',159,NULL),(2290,'Zambezia','Q',159,NULL),(2291,'Sofala','S',159,NULL),(2292,'Tete','T',159,NULL),(2293,'Caprivi','CA',160,NULL),(2294,'Erongo','ER',160,NULL),(2295,'Hardap','HA',160,NULL),(2296,'Karas','KA',160,NULL),(2297,'Khomas','KH',160,NULL),(2298,'Kunene','KU',160,NULL),(2299,'Otjozondjupa','OD',160,NULL),(2300,'Omaheke','OH',160,NULL),(2301,'Okavango','OK',160,NULL),(2302,'Oshana','ON',160,NULL),(2303,'Omusati','OS',160,NULL),(2304,'Oshikoto','OT',160,NULL),(2305,'Ohangwena','OW',160,NULL),(2306,'Agadez','1',162,NULL),(2307,'Diffa','2',162,NULL),(2308,'Dosso','3',162,NULL),(2309,'Maradi','4',162,NULL),(2310,'Tahoua','5',162,NULL),(2311,'Tillabéri','6',162,NULL),(2312,'Zinder','7',162,NULL),(2313,'Niamey','8',162,NULL),(2314,'Abia','AB',164,NULL),(2315,'Adamawa','AD',164,NULL),(2316,'Akwa Ibom','AK',164,NULL),(2317,'Anambra','AN',164,NULL),(2318,'Bauchi','BA',164,NULL),(2319,'Benue','BE',164,NULL),(2320,'Borno','BO',164,NULL),(2321,'Bayelsa','BY',164,NULL),(2322,'Cross River','CR',164,NULL),(2323,'Delta','DE',164,NULL),(2324,'Ebonyi','EB',164,NULL),(2325,'Edo','ED',164,NULL),(2326,'Ekiti','EK',164,NULL),(2327,'Enugu','EN',164,NULL),(2328,'Abuja Capital Territory','FC',164,NULL),(2329,'Gombe','GO',164,NULL),(2330,'Imo','IM',164,NULL),(2331,'Jigawa','JI',164,NULL),(2332,'Kaduna','KD',164,NULL),(2333,'Kebbi','KE',164,NULL),(2334,'Kano','KN',164,NULL),(2335,'Kogi','KO',164,NULL),(2336,'Katsina','KT',164,NULL),(2337,'Kwara','KW',164,NULL),(2338,'Lagos','LA',164,NULL),(2339,'Nassarawa','NA',164,NULL),(2340,'Niger','NI',164,NULL),(2341,'Ogun','OG',164,NULL),(2342,'Ondo','ON',164,NULL),(2343,'Osun','OS',164,NULL),(2344,'Oyo','OY',164,NULL),(2345,'Plateau','PL',164,NULL),(2346,'Rivers','RI',164,NULL),(2347,'Sokoto','SO',164,NULL),(2348,'Taraba','TA',164,NULL),(2349,'Yobe','YO',164,NULL),(2350,'Zamfara','ZA',164,NULL),(2351,'Atlántico Norte','AN',165,NULL),(2352,'Atlántico Sur','AS',165,NULL),(2353,'Boaco','BO',165,NULL),(2354,'Carazo','CA',165,NULL),(2355,'Chinandega','CI',165,NULL),(2356,'Chontales','CO',165,NULL),(2357,'Estelí','ES',165,NULL),(2358,'Granada','GR',165,NULL),(2359,'Jinotega','JI',165,NULL),(2360,'León','LE',165,NULL),(2361,'Madriz','MD',165,NULL),(2362,'Managua','MN',165,NULL),(2363,'Masaya','MS',165,NULL),(2364,'Matagalpa','MT',165,NULL),(2365,'Nueva Segovia','NS',165,NULL),(2366,'Rivas','RI',165,NULL),(2367,'Río San Juan','SJ',165,NULL),(2368,'Aruba','AW',166,NULL),(2369,'Bonaire','BQ1',166,NULL),(2370,'Saba','BQ2',166,NULL),(2371,'Sint Eustatius','BQ3',166,NULL),(2372,'Curaçao','CW',166,NULL),(2373,'Drenthe','DR',166,NULL),(2374,'Flevoland','FL',166,NULL),(2375,'Friesland','FR',166,NULL),(2376,'Gelderland','GE',166,NULL),(2377,'Groningen','GR',166,NULL),(2378,'Limburg','LI',166,NULL),(2379,'Noord-Brabant','NB',166,NULL),(2380,'Noord-Holland','NH',166,NULL),(2381,'Overijssel','OV',166,NULL),(2382,'Sint Maarten','SX',166,NULL),(2383,'Utrecht','UT',166,NULL),(2384,'Zeeland','ZE',166,NULL),(2385,'Zuid-Holland','ZH',166,NULL),(2386,'Østfold','01',167,NULL),(2387,'Akershus','02',167,NULL),(2388,'Oslo','03',167,NULL),(2389,'Hedmark','04',167,NULL),(2390,'Oppland','05',167,NULL),(2391,'Buskerud','06',167,NULL),(2392,'Vestfold','07',167,NULL),(2393,'Telemark','08',167,NULL),(2394,'Aust-Agder','09',167,NULL),(2395,'Vest-Agder','10',167,NULL),(2396,'Rogaland','11',167,NULL),(2397,'Hordaland','12',167,NULL),(2398,'Sogn og Fjordane','14',167,NULL),(2399,'Møre og Romsdal','15',167,NULL),(2400,'Sør-Trøndelag','16',167,NULL),(2401,'Nord-Trøndelag','17',167,NULL),(2402,'Nordland','18',167,NULL),(2403,'Troms','19',167,NULL),(2404,'Finnmark','20',167,NULL),(2405,'Svalbard (Arctic Region)','21',167,NULL),(2406,'Jan Mayen (Arctic Region)','22',167,NULL),(2407,'Madhyamanchal','1',168,NULL),(2408,'Madhya Pashchimanchal','2',168,NULL),(2409,'Pashchimanchal','3',168,NULL),(2410,'Purwanchal','4',168,NULL),(2411,'Sudur Pashchimanchal','5',168,NULL),(2412,'Aiwo','01',169,NULL),(2413,'Anabar','02',169,NULL),(2414,'Anetan','03',169,NULL),(2415,'Anibare','04',169,NULL),(2416,'Baiti','05',169,NULL),(2417,'Boe','06',169,NULL),(2418,'Buada','07',169,NULL),(2419,'Denigomodu','08',169,NULL),(2420,'Ewa','09',169,NULL),(2421,'Ijuw','10',169,NULL),(2422,'Meneng','11',169,NULL),(2423,'Nibok','12',169,NULL),(2424,'Uaboe','13',169,NULL),(2425,'Yaren','14',169,NULL),(2426,'Chatham Islands Territory','CIT',171,NULL),(2427,'North Island','N',171,NULL),(2428,'South Island','S',171,NULL),(2429,'Al Bāţinah','BA',172,NULL),(2430,'Al Buraymī','BU',172,NULL),(2431,'Ad Dākhilīya','DA',172,NULL),(2432,'Masqaţ','MA',172,NULL),(2433,'Musandam','MU',172,NULL),(2434,'Ash Sharqīyah','SH',172,NULL),(2435,'Al Wusţá','WU',172,NULL),(2436,'Az̧ Z̧āhirah','ZA',172,NULL),(2437,'Z̧ufār','ZU',172,NULL),(2438,'Bocas del Toro','1',173,NULL),(2439,'Coclé','2',173,NULL),(2440,'Colón','3',173,NULL),(2441,'Chiriquí','4',173,NULL),(2442,'Darién','5',173,NULL),(2443,'Herrera','6',173,NULL),(2444,'Los Santos','7',173,NULL),(2445,'Panamá','8',173,NULL),(2446,'Veraguas','9',173,NULL),(2447,'Emberá','EM',173,NULL),(2448,'Kuna Yala','KY',173,NULL),(2449,'Ngöbe-Buglé','NB',173,NULL),(2450,'Amazonas','AMA',174,NULL),(2451,'Ancash','ANC',174,NULL),(2452,'Apurímac','APU',174,NULL),(2453,'Arequipa','ARE',174,NULL),(2454,'Ayacucho','AYA',174,NULL),(2455,'Cajamarca','CAJ',174,NULL),(2456,'El Callao','CAL',174,NULL),(2457,'Cusco [Cuzco]','CUS',174,NULL),(2458,'Huánuco','HUC',174,NULL),(2459,'Huancavelica','HUV',174,NULL),(2460,'Ica','ICA',174,NULL),(2461,'Junín','JUN',174,NULL),(2462,'La Libertad','LAL',174,NULL),(2463,'Lambayeque','LAM',174,NULL),(2464,'Lima','LIM',174,NULL),(2465,'Municipalidad Metropolitana de Lima','LMA',174,NULL),(2466,'Loreto','LOR',174,NULL),(2467,'Madre de Dios','MDD',174,NULL),(2468,'Moquegua','MOQ',174,NULL),(2469,'Pasco','PAS',174,NULL),(2470,'Piura','PIU',174,NULL),(2471,'Puno','PUN',174,NULL),(2472,'San Martín','SAM',174,NULL),(2473,'Tacna','TAC',174,NULL),(2474,'Tumbes','TUM',174,NULL),(2475,'Ucayali','UCA',174,NULL),(2476,'Chimbu','CPK',176,NULL),(2477,'Central','CPM',176,NULL),(2478,'East New Britain','EBR',176,NULL),(2479,'Eastern Highlands','EHG',176,NULL),(2480,'Enga','EPW',176,NULL),(2481,'East Sepik','ESW',176,NULL),(2482,'Gulf','GPK',176,NULL),(2483,'Milne Bay','MBA',176,NULL),(2484,'Morobe','MPL',176,NULL),(2485,'Madang','MPM',176,NULL),(2486,'Manus','MRL',176,NULL),(2487,'National Capital District (Port Moresby)','NCD',176,NULL),(2488,'New Ireland','NIK',176,NULL),(2489,'Northern','NPP',176,NULL),(2490,'Bougainville','NSB',176,NULL),(2491,'Sandaun','SAN',176,NULL),(2492,'Southern Highlands','SHM',176,NULL),(2493,'West New Britain','WBK',176,NULL),(2494,'Western Highlands','WHM',176,NULL),(2495,'Western','WPD',176,NULL),(2496,'National Capital Region','00',177,NULL),(2497,'Ilocos (Region I)','01',177,NULL),(2498,'Cagayan Valley (Region II)','02',177,NULL),(2499,'Central Luzon (Region III)','03',177,NULL),(2500,'Bicol (Region V)','05',177,NULL),(2501,'Western Visayas (Region VI)','06',177,NULL),(2502,'Central Visayas (Region VII)','07',177,NULL),(2503,'Eastern Visayas (Region VIII)','08',177,NULL),(2504,'Zamboanga Peninsula (Region IX)','09',177,NULL),(2505,'Northern Mindanao (Region X)','10',177,NULL),(2506,'Davao (Region XI)','11',177,NULL),(2507,'Soccsksargen (Region XII)','12',177,NULL),(2508,'Caraga (Region XIII)','13',177,NULL),(2509,'Autonomous Region in Muslim Mindanao (ARMM)','14',177,NULL),(2510,'Cordillera Administrative Region (CAR)','15',177,NULL),(2511,'CALABARZON (Region IV-A)','40',177,NULL),(2512,'MIMAROPA (Region IV-B)','41',177,NULL),(2513,'Balochistan','BA',178,NULL),(2514,'Gilgit-Baltistan','GB',178,NULL),(2515,'Islamabad','IS',178,NULL),(2516,'Azad Kashmir','JK',178,NULL),(2517,'Khyber Pakhtunkhwa','KP',178,NULL),(2518,'Punjab','PB',178,NULL),(2519,'Sindh','SD',178,NULL),(2520,'Federally Administered Tribal Areas','TA',178,NULL),(2521,'Dolnośląskie','DS',179,NULL),(2522,'Kujawsko-pomorskie','KP',179,NULL),(2523,'Lubuskie','LB',179,NULL),(2524,'Łódzkie','LD',179,NULL),(2525,'Lubelskie','LU',179,NULL),(2526,'Małopolskie','MA',179,NULL),(2527,'Mazowieckie','MZ',179,NULL),(2528,'Opolskie','OP',179,NULL),(2529,'Podlaskie','PD',179,NULL),(2530,'Podkarpackie','PK',179,NULL),(2531,'Pomorskie','PM',179,NULL),(2532,'Świętokrzyskie','SK',179,NULL),(2533,'Śląskie','SL',179,NULL),(2534,'Warmińsko-mazurskie','WN',179,NULL),(2535,'Wielkopolskie','WP',179,NULL),(2536,'Zachodniopomorskie','ZP',179,NULL),(2537,'Bethlehem','BTH',182,NULL),(2538,'Deir El Balah','DEB',182,NULL),(2539,'Gaza','GZA',182,NULL),(2540,'Hebron','HBN',182,NULL),(2541,'Jerusalem','JEM',182,NULL),(2542,'Jenin','JEN',182,NULL),(2543,'Jericho - Al Aghwar','JRH',182,NULL),(2544,'Khan Yunis','KYS',182,NULL),(2545,'Nablus','NBS',182,NULL),(2546,'North Gaza','NGZ',182,NULL),(2547,'Qalqilya','QQA',182,NULL),(2548,'Ramallah','RBH',182,NULL),(2549,'Rafah','RFH',182,NULL),(2550,'Salfit','SLT',182,NULL),(2551,'Tubas','TBS',182,NULL),(2552,'Tulkarm','TKM',182,NULL),(2553,'Aveiro','01',183,NULL),(2554,'Beja','02',183,NULL),(2555,'Braga','03',183,NULL),(2556,'Bragança','04',183,NULL),(2557,'Castelo Branco','05',183,NULL),(2558,'Coimbra','06',183,NULL),(2559,'Évora','07',183,NULL),(2560,'Faro','08',183,NULL),(2561,'Guarda','09',183,NULL),(2562,'Leiria','10',183,NULL),(2563,'Lisboa','11',183,NULL),(2564,'Portalegre','12',183,NULL),(2565,'Porto','13',183,NULL),(2566,'Santarém','14',183,NULL),(2567,'Setúbal','15',183,NULL),(2568,'Viana do Castelo','16',183,NULL),(2569,'Vila Real','17',183,NULL),(2570,'Viseu','18',183,NULL),(2571,'Região Autónoma dos Açores','20',183,NULL),(2572,'Região Autónoma da Madeira','30',183,NULL),(2573,'Aimeliik','002',184,NULL),(2574,'Airai','004',184,NULL),(2575,'Angaur','010',184,NULL),(2576,'Hatobohei','050',184,NULL),(2577,'Kayangel','100',184,NULL),(2578,'Koror','150',184,NULL),(2579,'Melekeok','212',184,NULL),(2580,'Ngaraard','214',184,NULL),(2581,'Ngarchelong','218',184,NULL),(2582,'Ngardmau','222',184,NULL),(2583,'Ngatpang','224',184,NULL),(2584,'Ngchesar','226',184,NULL),(2585,'Ngeremlengui','227',184,NULL),(2586,'Ngiwal','228',184,NULL),(2587,'Peleliu','350',184,NULL),(2588,'Sonsorol','370',184,NULL),(2589,'Concepción','1',185,NULL),(2590,'Alto Paraná','10',185,NULL),(2591,'Central','11',185,NULL),(2592,'Ñeembucú','12',185,NULL),(2593,'Amambay','13',185,NULL),(2594,'Canindeyú','14',185,NULL),(2595,'Presidente Hayes','15',185,NULL),(2596,'Alto Paraguay','16',185,NULL),(2597,'Boquerón','19',185,NULL),(2598,'San Pedro','2',185,NULL),(2599,'Cordillera','3',185,NULL),(2600,'Guairá','4',185,NULL),(2601,'Caaguazú','5',185,NULL),(2602,'Caazapá','6',185,NULL),(2603,'Itapúa','7',185,NULL),(2604,'Misiones','8',185,NULL),(2605,'Paraguarí','9',185,NULL),(2606,'Asunción','ASU',185,NULL),(2607,'Ad Dawhah','DA',186,NULL),(2608,'Al Khawr wa adh Dhakhīrah','KH',186,NULL),(2609,'Ash Shamal','MS',186,NULL),(2610,'Ar Rayyan','RA',186,NULL),(2611,'Umm Salal','US',186,NULL),(2612,'Al Wakrah','WA',186,NULL),(2613,'Az̧ Z̧a‘āyin','ZA',186,NULL),(2614,'Alba','AB',188,NULL),(2615,'Argeș','AG',188,NULL),(2616,'Arad','AR',188,NULL),(2617,'București','B',188,NULL),(2618,'Bacău','BC',188,NULL),(2619,'Bihor','BH',188,NULL),(2620,'Bistrița-Năsăud','BN',188,NULL),(2621,'Brăila','BR',188,NULL),(2622,'Botoșani','BT',188,NULL),(2623,'Brașov','BV',188,NULL),(2624,'Buzău','BZ',188,NULL),(2625,'Cluj','CJ',188,NULL),(2626,'Călărași','CL',188,NULL),(2627,'Caraș-Severin','CS',188,NULL),(2628,'Constanța','CT',188,NULL),(2629,'Covasna','CV',188,NULL),(2630,'Dâmbovița','DB',188,NULL),(2631,'Dolj','DJ',188,NULL),(2632,'Gorj','GJ',188,NULL),(2633,'Galați','GL',188,NULL),(2634,'Giurgiu','GR',188,NULL),(2635,'Hunedoara','HD',188,NULL),(2636,'Harghita','HR',188,NULL),(2637,'Ilfov','IF',188,NULL),(2638,'Ialomița','IL',188,NULL),(2639,'Iași','IS',188,NULL),(2640,'Mehedinți','MH',188,NULL),(2641,'Maramureș','MM',188,NULL),(2642,'Mureș','MS',188,NULL),(2643,'Neamț','NT',188,NULL),(2644,'Olt','OT',188,NULL),(2645,'Prahova','PH',188,NULL),(2646,'Sibiu','SB',188,NULL),(2647,'Sălaj','SJ',188,NULL),(2648,'Satu Mare','SM',188,NULL),(2649,'Suceava','SV',188,NULL),(2650,'Tulcea','TL',188,NULL),(2651,'Timiș','TM',188,NULL),(2652,'Teleorman','TR',188,NULL),(2653,'Vâlcea','VL',188,NULL),(2654,'Vrancea','VN',188,NULL),(2655,'Vaslui','VS',188,NULL),(2656,'Beograd','00',189,NULL),(2657,'Mačvanski okrug','08',189,NULL),(2658,'Kolubarski okrug','09',189,NULL),(2659,'Podunavski okrug','10',189,NULL),(2660,'Braničevski okrug','11',189,NULL),(2661,'Šumadijski okrug','12',189,NULL),(2662,'Pomoravski okrug','13',189,NULL),(2663,'Borski okrug','14',189,NULL),(2664,'Zaječarski okrug','15',189,NULL),(2665,'Zlatiborski okrug','16',189,NULL),(2666,'Moravički okrug','17',189,NULL),(2667,'Raški okrug','18',189,NULL),(2668,'Rasinski okrug','19',189,NULL),(2669,'Nišavski okrug','20',189,NULL),(2670,'Toplički okrug','21',189,NULL),(2671,'Pirotski okrug','22',189,NULL),(2672,'Jablanički okrug','23',189,NULL),(2673,'Pčinjski okrug','24',189,NULL),(2674,'Kosovo-Metohija','KM',189,NULL),(2675,'Vojvodina','VO',189,NULL),(2676,'Adygeya, Respublika','AD',190,NULL),(2677,'Altay, Respublika','AL',190,NULL),(2678,'Altayskiy kray','ALT',190,NULL),(2679,'Amurskaya oblast\'','AMU',190,NULL),(2680,'Arkhangel\'skaya oblast\'','ARK',190,NULL),(2681,'Astrakhanskaya oblast\'','AST',190,NULL),(2682,'Bashkortostan, Respublika','BA',190,NULL),(2683,'Belgorodskaya oblast\'','BEL',190,NULL),(2684,'Bryanskaya oblast\'','BRY',190,NULL),(2685,'Buryatiya, Respublika','BU',190,NULL),(2686,'Chechenskaya Respublika','CE',190,NULL),(2687,'Chelyabinskaya oblast\'','CHE',190,NULL),(2688,'Chukotskiy avtonomnyy okrug','CHU',190,NULL),(2689,'Chuvashskaya Respublika','CU',190,NULL),(2690,'Dagestan, Respublika','DA',190,NULL),(2691,'Respublika Ingushetiya','IN',190,NULL),(2692,'Irkutiskaya oblast\'','IRK',190,NULL),(2693,'Ivanovskaya oblast\'','IVA',190,NULL),(2694,'Kamchatskiy kray','KAM',190,NULL),(2695,'Kabardino-Balkarskaya Respublika','KB',190,NULL),(2696,'Karachayevo-Cherkesskaya Respublika','KC',190,NULL),(2697,'Krasnodarskiy kray','KDA',190,NULL),(2698,'Kemerovskaya oblast\'','KEM',190,NULL),(2699,'Kaliningradskaya oblast\'','KGD',190,NULL),(2700,'Kurganskaya oblast\'','KGN',190,NULL),(2701,'Khabarovskiy kray','KHA',190,NULL),(2702,'Khanty-Mansiysky avtonomnyy okrug-Yugra','KHM',190,NULL),(2703,'Kirovskaya oblast\'','KIR',190,NULL),(2704,'Khakasiya, Respublika','KK',190,NULL),(2705,'Kalmykiya, Respublika','KL',190,NULL),(2706,'Kaluzhskaya oblast\'','KLU',190,NULL),(2707,'Komi, Respublika','KO',190,NULL),(2708,'Kostromskaya oblast\'','KOS',190,NULL),(2709,'Kareliya, Respublika','KR',190,NULL),(2710,'Kurskaya oblast\'','KRS',190,NULL),(2711,'Krasnoyarskiy kray','KYA',190,NULL),(2712,'Leningradskaya oblast\'','LEN',190,NULL),(2713,'Lipetskaya oblast\'','LIP',190,NULL),(2714,'Magadanskaya oblast\'','MAG',190,NULL),(2715,'Mariy El, Respublika','ME',190,NULL),(2716,'Mordoviya, Respublika','MO',190,NULL),(2717,'Moskovskaya oblast\'','MOS',190,NULL),(2718,'Moskva','MOW',190,NULL),(2719,'Murmanskaya oblast\'','MUR',190,NULL),(2720,'Nenetskiy avtonomnyy okrug','NEN',190,NULL),(2721,'Novgorodskaya oblast\'','NGR',190,NULL),(2722,'Nizhegorodskaya oblast\'','NIZ',190,NULL),(2723,'Novosibirskaya oblast\'','NVS',190,NULL),(2724,'Omskaya oblast\'','OMS',190,NULL),(2725,'Orenburgskaya oblast\'','ORE',190,NULL),(2726,'Orlovskaya oblast\'','ORL',190,NULL),(2727,'Permskiy kray','PER',190,NULL),(2728,'Penzenskaya oblast\'','PNZ',190,NULL),(2729,'Primorskiy kray','PRI',190,NULL),(2730,'Pskovskaya oblast\'','PSK',190,NULL),(2731,'Rostovskaya oblast\'','ROS',190,NULL),(2732,'Ryazanskaya oblast\'','RYA',190,NULL),(2733,'Sakha, Respublika [Yakutiya]','SA',190,NULL),(2734,'Sakhalinskaya oblast\'','SAK',190,NULL),(2735,'Samaraskaya oblast\'','SAM',190,NULL),(2736,'Saratovskaya oblast\'','SAR',190,NULL),(2737,'Severnaya Osetiya-Alaniya, Respublika','SE',190,NULL),(2738,'Smolenskaya oblast\'','SMO',190,NULL),(2739,'Sankt-Peterburg','SPE',190,NULL),(2740,'Stavropol\'skiy kray','STA',190,NULL),(2741,'Sverdlovskaya oblast\'','SVE',190,NULL),(2742,'Tatarstan, Respublika','TA',190,NULL),(2743,'Tambovskaya oblast\'','TAM',190,NULL),(2744,'Tomskaya oblast\'','TOM',190,NULL),(2745,'Tul\'skaya oblast\'','TUL',190,NULL),(2746,'Tverskaya oblast\'','TVE',190,NULL),(2747,'Tyva, Respublika [Tuva]','TY',190,NULL),(2748,'Tyumenskaya oblast\'','TYU',190,NULL),(2749,'Udmurtskaya Respublika','UD',190,NULL),(2750,'Ul\'yanovskaya oblast\'','ULY',190,NULL),(2751,'Volgogradskaya oblast\'','VGG',190,NULL),(2752,'Vladimirskaya oblast\'','VLA',190,NULL),(2753,'Vologodskaya oblast\'','VLG',190,NULL),(2754,'Voronezhskaya oblast\'','VOR',190,NULL),(2755,'Yamalo-Nenetskiy avtonomnyy okrug','YAN',190,NULL),(2756,'Yaroslavskaya oblast\'','YAR',190,NULL),(2757,'Yevreyskaya avtonomnaya oblast\'','YEV',190,NULL),(2758,'Zabajkal\'skij kraj','ZAB',190,NULL),(2759,'Ville de Kigali','01',191,NULL),(2760,'Est','02',191,NULL),(2761,'Nord','03',191,NULL),(2762,'Ouest','04',191,NULL),(2763,'Sud','05',191,NULL),(2764,'Ar Riyāḍ','01',192,NULL),(2765,'Makkah','02',192,NULL),(2766,'Al Madīnah','03',192,NULL),(2767,'Ash Sharqīyah','04',192,NULL),(2768,'Al Qaşīm','05',192,NULL),(2769,'Ḥā\'il','06',192,NULL),(2770,'Tabūk','07',192,NULL),(2771,'Al Ḥudūd ash Shamāliyah','08',192,NULL),(2772,'Jīzan','09',192,NULL),(2773,'Najrān','10',192,NULL),(2774,'Al Bāhah','11',192,NULL),(2775,'Al Jawf','12',192,NULL),(2776,'`Asīr','14',192,NULL),(2777,'Central','CE',193,NULL),(2778,'Choiseul','CH',193,NULL),(2779,'Capital Territory (Honiara)','CT',193,NULL),(2780,'Guadalcanal','GU',193,NULL),(2781,'Isabel','IS',193,NULL),(2782,'Makira','MK',193,NULL),(2783,'Malaita','ML',193,NULL),(2784,'Rennell and Bellona','RB',193,NULL),(2785,'Temotu','TE',193,NULL),(2786,'Western','WE',193,NULL),(2787,'Anse aux Pins','01',194,NULL),(2788,'Anse Boileau','02',194,NULL),(2789,'Anse Etoile','03',194,NULL),(2790,'Anse Louis','04',194,NULL),(2791,'Anse Royale','05',194,NULL),(2792,'Baie Lazare','06',194,NULL),(2793,'Baie Sainte Anne','07',194,NULL),(2794,'Beau Vallon','08',194,NULL),(2795,'Bel Air','09',194,NULL),(2796,'Bel Ombre','10',194,NULL),(2797,'Cascade','11',194,NULL),(2798,'Glacis','12',194,NULL),(2799,'Grand Anse Mahe','13',194,NULL),(2800,'Grand Anse Praslin','14',194,NULL),(2801,'La Digue','15',194,NULL),(2802,'English River','16',194,NULL),(2803,'Mont Buxton','17',194,NULL),(2804,'Mont Fleuri','18',194,NULL),(2805,'Plaisance','19',194,NULL),(2806,'Pointe Larue','20',194,NULL),(2807,'Port Glaud','21',194,NULL),(2808,'Saint Louis','22',194,NULL),(2809,'Takamaka','23',194,NULL),(2810,'Les Mamelles','24',194,NULL),(2811,'Roche Caiman','25',194,NULL),(2812,'Zalingei','DC',195,NULL),(2813,'Sharq Dārfūr','DE',195,NULL),(2814,'Shamāl Dārfūr','DN',195,NULL),(2815,'Janūb Dārfūr','DS',195,NULL),(2816,'Gharb Dārfūr','DW',195,NULL),(2817,'Al Qaḑārif','GD',195,NULL),(2818,'Al Jazīrah','GZ',195,NULL),(2819,'Kassalā','KA',195,NULL),(2820,'Al Kharţūm','KH',195,NULL),(2821,'Shamāl Kurdufān','KN',195,NULL),(2822,'Janūb Kurdufān','KS',195,NULL),(2823,'An Nīl al Azraq','NB',195,NULL),(2824,'Ash Shamālīyah','NO',195,NULL),(2825,'An Nīl','NR',195,NULL),(2826,'An Nīl al Abyaḑ','NW',195,NULL),(2827,'Al Baḩr al Aḩmar','RS',195,NULL),(2828,'Sinnār','SI',195,NULL),(2829,'Stockholms län','AB',196,NULL),(2830,'Västerbottens län','AC',196,NULL),(2831,'Norrbottens län','BD',196,NULL),(2832,'Uppsala län','C',196,NULL),(2833,'Södermanlands län','D',196,NULL),(2834,'Östergötlands län','E',196,NULL),(2835,'Jönköpings län','F',196,NULL),(2836,'Kronobergs län','G',196,NULL),(2837,'Kalmar län','H',196,NULL),(2838,'Gotlands län','I',196,NULL),(2839,'Blekinge län','K',196,NULL),(2840,'Skåne län','M',196,NULL),(2841,'Hallands län','N',196,NULL),(2842,'Västra Götalands län','O',196,NULL),(2843,'Värmlands län','S',196,NULL),(2844,'Örebro län','T',196,NULL),(2845,'Västmanlands län','U',196,NULL),(2846,'Dalarnas län','W',196,NULL),(2847,'Gävleborgs län','X',196,NULL),(2848,'Västernorrlands län','Y',196,NULL),(2849,'Jämtlands län','Z',196,NULL),(2850,'Central Singapore','01',197,NULL),(2851,'North East','02',197,NULL),(2852,'North West','03',197,NULL),(2853,'South East','04',197,NULL),(2854,'South West','05',197,NULL),(2855,'Ascension','AC',198,NULL),(2856,'Saint Helena','HL',198,NULL),(2857,'Tristan da Cunha','TA',198,NULL),(2858,'Ajdovščina','001',199,NULL),(2859,'Beltinci','002',199,NULL),(2860,'Bled','003',199,NULL),(2861,'Bohinj','004',199,NULL),(2862,'Borovnica','005',199,NULL),(2863,'Bovec','006',199,NULL),(2864,'Brda','007',199,NULL),(2865,'Brezovica','008',199,NULL),(2866,'Brežice','009',199,NULL),(2867,'Tišina','010',199,NULL),(2868,'Celje','011',199,NULL),(2869,'Cerklje na Gorenjskem','012',199,NULL),(2870,'Cerknica','013',199,NULL),(2871,'Cerkno','014',199,NULL),(2872,'Črenšovci','015',199,NULL),(2873,'Črna na Koroškem','016',199,NULL),(2874,'Črnomelj','017',199,NULL),(2875,'Destrnik','018',199,NULL),(2876,'Divača','019',199,NULL),(2877,'Dobrepolje','020',199,NULL),(2878,'Dobrova-Polhov Gradec','021',199,NULL),(2879,'Dol pri Ljubljani','022',199,NULL),(2880,'Domžale','023',199,NULL),(2881,'Dornava','024',199,NULL),(2882,'Dravograd','025',199,NULL),(2883,'Duplek','026',199,NULL),(2884,'Gorenja vas-Poljane','027',199,NULL),(2885,'Gorišnica','028',199,NULL),(2886,'Gornja Radgona','029',199,NULL),(2887,'Gornji Grad','030',199,NULL),(2888,'Gornji Petrovci','031',199,NULL),(2889,'Grosuplje','032',199,NULL),(2890,'Šalovci','033',199,NULL),(2891,'Hrastnik','034',199,NULL),(2892,'Hrpelje-Kozina','035',199,NULL),(2893,'Idrija','036',199,NULL),(2894,'Ig','037',199,NULL),(2895,'Ilirska Bistrica','038',199,NULL),(2896,'Ivančna Gorica','039',199,NULL),(2897,'Izola/Isola','040',199,NULL),(2898,'Jesenice','041',199,NULL),(2899,'Juršinci','042',199,NULL),(2900,'Kamnik','043',199,NULL),(2901,'Kanal','044',199,NULL),(2902,'Kidričevo','045',199,NULL),(2903,'Kobarid','046',199,NULL),(2904,'Kobilje','047',199,NULL),(2905,'Kočevje','048',199,NULL),(2906,'Komen','049',199,NULL),(2907,'Koper/Capodistria','050',199,NULL),(2908,'Kozje','051',199,NULL),(2909,'Kranj','052',199,NULL),(2910,'Kranjska Gora','053',199,NULL),(2911,'Krško','054',199,NULL),(2912,'Kungota','055',199,NULL),(2913,'Kuzma','056',199,NULL),(2914,'Laško','057',199,NULL),(2915,'Lenart','058',199,NULL),(2916,'Lendava/Lendva','059',199,NULL),(2917,'Litija','060',199,NULL),(2918,'Ljubljana','061',199,NULL),(2919,'Ljubno','062',199,NULL),(2920,'Ljutomer','063',199,NULL),(2921,'Logatec','064',199,NULL),(2922,'Loška dolina','065',199,NULL),(2923,'Loški Potok','066',199,NULL),(2924,'Luče','067',199,NULL),(2925,'Lukovica','068',199,NULL),(2926,'Majšperk','069',199,NULL),(2927,'Maribor','070',199,NULL),(2928,'Medvode','071',199,NULL),(2929,'Mengeš','072',199,NULL),(2930,'Metlika','073',199,NULL),(2931,'Mežica','074',199,NULL),(2932,'Miren-Kostanjevica','075',199,NULL),(2933,'Mislinja','076',199,NULL),(2934,'Moravče','077',199,NULL),(2935,'Moravske Toplice','078',199,NULL),(2936,'Mozirje','079',199,NULL),(2937,'Murska Sobota','080',199,NULL),(2938,'Muta','081',199,NULL),(2939,'Naklo','082',199,NULL),(2940,'Nazarje','083',199,NULL),(2941,'Nova Gorica','084',199,NULL),(2942,'Novo mesto','085',199,NULL),(2943,'Odranci','086',199,NULL),(2944,'Ormož','087',199,NULL),(2945,'Osilnica','088',199,NULL),(2946,'Pesnica','089',199,NULL),(2947,'Piran/Pirano','090',199,NULL),(2948,'Pivka','091',199,NULL),(2949,'Podčetrtek','092',199,NULL),(2950,'Podvelka','093',199,NULL),(2951,'Postojna','094',199,NULL),(2952,'Preddvor','095',199,NULL),(2953,'Ptuj','096',199,NULL),(2954,'Puconci','097',199,NULL),(2955,'Rače-Fram','098',199,NULL),(2956,'Radeče','099',199,NULL),(2957,'Radenci','100',199,NULL),(2958,'Radlje ob Dravi','101',199,NULL),(2959,'Radovljica','102',199,NULL),(2960,'Ravne na Koroškem','103',199,NULL),(2961,'Ribnica','104',199,NULL),(2962,'Rogašovci','105',199,NULL),(2963,'Rogaška Slatina','106',199,NULL),(2964,'Rogatec','107',199,NULL),(2965,'Ruše','108',199,NULL),(2966,'Semič','109',199,NULL),(2967,'Sevnica','110',199,NULL),(2968,'Sežana','111',199,NULL),(2969,'Slovenj Gradec','112',199,NULL),(2970,'Slovenska Bistrica','113',199,NULL),(2971,'Slovenske Konjice','114',199,NULL),(2972,'Starče','115',199,NULL),(2973,'Sveti Jurij','116',199,NULL),(2974,'Šenčur','117',199,NULL),(2975,'Šentilj','118',199,NULL),(2976,'Šentjernej','119',199,NULL),(2977,'Šentjur','120',199,NULL),(2978,'Škocjan','121',199,NULL),(2979,'Škofja Loka','122',199,NULL),(2980,'Škofljica','123',199,NULL),(2981,'Šmarje pri Jelšah','124',199,NULL),(2982,'Šmartno ob Paki','125',199,NULL),(2983,'Šoštanj','126',199,NULL),(2984,'Štore','127',199,NULL),(2985,'Tolmin','128',199,NULL),(2986,'Trbovlje','129',199,NULL),(2987,'Trebnje','130',199,NULL),(2988,'Tržič','131',199,NULL),(2989,'Turnišče','132',199,NULL),(2990,'Velenje','133',199,NULL),(2991,'Velike Lašče','134',199,NULL),(2992,'Videm','135',199,NULL),(2993,'Vipava','136',199,NULL),(2994,'Vitanje','137',199,NULL),(2995,'Vodice','138',199,NULL),(2996,'Vojnik','139',199,NULL),(2997,'Vrhnika','140',199,NULL),(2998,'Vuzenica','141',199,NULL),(2999,'Zagorje ob Savi','142',199,NULL),(3000,'Zavrč','143',199,NULL),(3001,'Zreče','144',199,NULL),(3002,'Železniki','146',199,NULL),(3003,'Žiri','147',199,NULL),(3004,'Benedikt','148',199,NULL),(3005,'Bistrica ob Sotli','149',199,NULL),(3006,'Bloke','150',199,NULL),(3007,'Braslovče','151',199,NULL),(3008,'Cankova','152',199,NULL),(3009,'Cerkvenjak','153',199,NULL),(3010,'Dobje','154',199,NULL),(3011,'Dobrna','155',199,NULL),(3012,'Dobrovnik/Dobronak','156',199,NULL),(3013,'Dolenjske Toplice','157',199,NULL),(3014,'Grad','158',199,NULL),(3015,'Hajdina','159',199,NULL),(3016,'Hoče-Slivnica','160',199,NULL),(3017,'Hodoš/Hodos','161',199,NULL),(3018,'Horjul','162',199,NULL),(3019,'Jezersko','163',199,NULL),(3020,'Komenda','164',199,NULL),(3021,'Kostel','165',199,NULL),(3022,'Križevci','166',199,NULL),(3023,'Lovrenc na Pohorju','167',199,NULL),(3024,'Markovci','168',199,NULL),(3025,'Miklavž na Dravskem polju','169',199,NULL),(3026,'Mirna Peč','170',199,NULL),(3027,'Oplotnica','171',199,NULL),(3028,'Podlehnik','172',199,NULL),(3029,'Polzela','173',199,NULL),(3030,'Prebold','174',199,NULL),(3031,'Prevalje','175',199,NULL),(3032,'Razkrižje','176',199,NULL),(3033,'Ribnica na Pohorju','177',199,NULL),(3034,'Selnica ob Dravi','178',199,NULL),(3035,'Sodražica','179',199,NULL),(3036,'Solčava','180',199,NULL),(3037,'Sveta Ana','181',199,NULL),(3038,'Sveta Andraž v Slovenskih Goricah','182',199,NULL),(3039,'Šempeter-Vrtojba','183',199,NULL),(3040,'Tabor','184',199,NULL),(3041,'Trnovska vas','185',199,NULL),(3042,'Trzin','186',199,NULL),(3043,'Velika Polana','187',199,NULL),(3044,'Veržej','188',199,NULL),(3045,'Vransko','189',199,NULL),(3046,'Žalec','190',199,NULL),(3047,'Žetale','191',199,NULL),(3048,'Žirovnica','192',199,NULL),(3049,'Žužemberk','193',199,NULL),(3050,'Šmartno pri Litiji','194',199,NULL),(3051,'Apače','195',199,NULL),(3052,'Cirkulane','196',199,NULL),(3053,'Kosanjevica na Krki','197',199,NULL),(3054,'Makole','198',199,NULL),(3055,'Mokronog-Trebelno','199',199,NULL),(3056,'Poljčane','200',199,NULL),(3057,'Renče-Vogrsko','201',199,NULL),(3058,'Središče ob Dravi','202',199,NULL),(3059,'Straža','203',199,NULL),(3060,'Sveta Trojica v Slovenskih Goricah','204',199,NULL),(3061,'Sveti Tomaž','205',199,NULL),(3062,'Šmarjeske Topliče','206',199,NULL),(3063,'Gorje','207',199,NULL),(3064,'Log-Dragomer','208',199,NULL),(3065,'Rečica ob Savinji','209',199,NULL),(3066,'Sveti Jurij v Slovenskih Goricah','210',199,NULL),(3067,'Šentrupert','211',199,NULL),(3068,'Banskobystrický kraj','BC',201,NULL),(3069,'Bratislavský kraj','BL',201,NULL),(3070,'Košický kraj','KI',201,NULL),(3071,'Nitriansky kraj','NI',201,NULL),(3072,'Prešovský kraj','PV',201,NULL),(3073,'Trnavský kraj','TA',201,NULL),(3074,'Trenčiansky kraj','TC',201,NULL),(3075,'Žilinský kraj','ZI',201,NULL),(3076,'Eastern','E',202,NULL),(3077,'Northern','N',202,NULL),(3078,'Southern (Sierra Leone)','S',202,NULL),(3079,'Western Area (Freetown)','W',202,NULL),(3080,'Acquaviva','01',203,NULL),(3081,'Chiesanuova','02',203,NULL),(3082,'Domagnano','03',203,NULL),(3083,'Faetano','04',203,NULL),(3084,'Fiorentino','05',203,NULL),(3085,'Borgo Maggiore','06',203,NULL),(3086,'San Marino','07',203,NULL),(3087,'Montegiardino','08',203,NULL),(3088,'Serravalle','09',203,NULL),(3089,'Diourbel','DB',204,NULL),(3090,'Dakar','DK',204,NULL),(3091,'Fatick','FK',204,NULL),(3092,'Kaffrine','KA',204,NULL),(3093,'Kolda','KD',204,NULL),(3094,'Kédougou','KE',204,NULL),(3095,'Kaolack','KL',204,NULL),(3096,'Louga','LG',204,NULL),(3097,'Matam','MT',204,NULL),(3098,'Sédhiou','SE',204,NULL),(3099,'Saint-Louis','SL',204,NULL),(3100,'Tambacounda','TC',204,NULL),(3101,'Thiès','TH',204,NULL),(3102,'Ziguinchor','ZG',204,NULL),(3103,'Awdal','AW',205,NULL),(3104,'Bakool','BK',205,NULL),(3105,'Banaadir','BN',205,NULL),(3106,'Bari','BR',205,NULL),(3107,'Bay','BY',205,NULL),(3108,'Galguduud','GA',205,NULL),(3109,'Gedo','GE',205,NULL),(3110,'Hiirsan','HI',205,NULL),(3111,'Jubbada Dhexe','JD',205,NULL),(3112,'Jubbada Hoose','JH',205,NULL),(3113,'Mudug','MU',205,NULL),(3114,'Nugaal','NU',205,NULL),(3115,'Saneag','SA',205,NULL),(3116,'Shabeellaha Dhexe','SD',205,NULL),(3117,'Shabeellaha Hoose','SH',205,NULL),(3118,'Sool','SO',205,NULL),(3119,'Togdheer','TO',205,NULL),(3120,'Woqooyi Galbeed','WO',205,NULL),(3121,'Brokopondo','BR',206,NULL),(3122,'Commewijne','CM',206,NULL),(3123,'Coronie','CR',206,NULL),(3124,'Marowijne','MA',206,NULL),(3125,'Nickerie','NI',206,NULL),(3126,'Paramaribo','PM',206,NULL),(3127,'Para','PR',206,NULL),(3128,'Saramacca','SA',206,NULL),(3129,'Sipaliwini','SI',206,NULL),(3130,'Wanica','WA',206,NULL),(3131,'Northern Bahr el-Ghazal','BN',207,NULL),(3132,'Western Bahr el-Ghazal','BW',207,NULL),(3133,'Central Equatoria','EC',207,NULL),(3134,'Eastern Equatoria','EE8',207,NULL),(3135,'Western Equatoria','EW',207,NULL),(3136,'Jonglei','JG',207,NULL),(3137,'Lakes','LK',207,NULL),(3138,'Upper Nile','NU',207,NULL),(3139,'Unity','UY',207,NULL),(3140,'Warrap','WR',207,NULL),(3141,'Príncipe','P',208,NULL),(3142,'São Tomé','S',208,NULL),(3143,'Ahuachapán','AH',209,NULL),(3144,'Cabañas','CA',209,NULL),(3145,'Chalatenango','CH',209,NULL),(3146,'Cuscatlán','CU',209,NULL),(3147,'La Libertad','LI',209,NULL),(3148,'Morazán','MO',209,NULL),(3149,'La Paz','PA',209,NULL),(3150,'Santa Ana','SA',209,NULL),(3151,'San Miguel','SM',209,NULL),(3152,'Sonsonate','SO',209,NULL),(3153,'San Salvador','SS',209,NULL),(3154,'San Vicente','SV',209,NULL),(3155,'La Unión','UN',209,NULL),(3156,'Usulután','US',209,NULL),(3157,'Dimashq','DI',211,NULL),(3158,'Dar\'a','DR',211,NULL),(3159,'Dayr az Zawr','DY',211,NULL),(3160,'Al Hasakah','HA',211,NULL),(3161,'Homs','HI',211,NULL),(3162,'Halab','HL',211,NULL),(3163,'Hamah','HM',211,NULL),(3164,'Idlib','ID',211,NULL),(3165,'Al Ladhiqiyah','LA',211,NULL),(3166,'Al Qunaytirah','QU',211,NULL),(3167,'Ar Raqqah','RA',211,NULL),(3168,'Rif Dimashq','RD',211,NULL),(3169,'As Suwayda\'','SU',211,NULL),(3170,'Tartus','TA',211,NULL),(3171,'Hhohho','HH',212,NULL),(3172,'Lubombo','LU',212,NULL),(3173,'Manzini','MA',212,NULL),(3174,'Shiselweni','SH',212,NULL),(3175,'Al Baṭḩah','BA',214,NULL),(3176,'Baḩr al Ghazāl','BG',214,NULL),(3177,'Būrkū','BO',214,NULL),(3178,'Shārī Bāqirmī','CB',214,NULL),(3179,'Innīdī','EN',214,NULL),(3180,'Qīrā','GR',214,NULL),(3181,'Ḥajjar Lamīs','HL',214,NULL),(3182,'Kānim','KA',214,NULL),(3183,'Al Buḩayrah','LC',214,NULL),(3184,'Lūqūn al Gharbī','LO',214,NULL),(3185,'Lūqūn ash Sharqī','LR',214,NULL),(3186,'Māndūl','MA',214,NULL),(3187,'Shārī al Awsaṭ','MC',214,NULL),(3188,'Māyū Kībbī ash Sharqī','ME',214,NULL),(3189,'Māyū Kībbī al Gharbī','MO',214,NULL),(3190,'Madīnat Injamīnā','ND',214,NULL),(3191,'Waddāy','OD',214,NULL),(3192,'Salāmāt','SA',214,NULL),(3193,'Sīlā','SI',214,NULL),(3194,'Tānjilī','TA',214,NULL),(3195,'Tibastī','TI',214,NULL),(3196,'Wādī Fīrā','WF',214,NULL),(3197,'Région du Centre','C',216,NULL),(3198,'Région de la Kara','K',216,NULL),(3199,'Région Maritime','M',216,NULL),(3200,'Région des Plateaux','P',216,NULL),(3201,'Région des Savannes','S',216,NULL),(3202,'Krung Thep Maha Nakhon Bangkok','10',217,NULL),(3203,'Samut Prakan','11',217,NULL),(3204,'Nonthaburi','12',217,NULL),(3205,'Pathum Thani','13',217,NULL),(3206,'Phra Nakhon Si Ayutthaya','14',217,NULL),(3207,'Ang Thong','15',217,NULL),(3208,'Lop Buri','16',217,NULL),(3209,'Sing Buri','17',217,NULL),(3210,'Chai Nat','18',217,NULL),(3211,'Saraburi','19',217,NULL),(3212,'Chon Buri','20',217,NULL),(3213,'Rayong','21',217,NULL),(3214,'Chanthaburi','22',217,NULL),(3215,'Trat','23',217,NULL),(3216,'Chachoengsao','24',217,NULL),(3217,'Prachin Buri','25',217,NULL),(3218,'Nakhon Nayok','26',217,NULL),(3219,'Sa Kaeo','27',217,NULL),(3220,'Nakhon Ratchasima','30',217,NULL),(3221,'Buri Ram','31',217,NULL),(3222,'Surin','32',217,NULL),(3223,'Si Sa Ket','33',217,NULL),(3224,'Ubon Ratchathani','34',217,NULL),(3225,'Yasothon','35',217,NULL),(3226,'Chaiyaphum','36',217,NULL),(3227,'Amnat Charoen','37',217,NULL),(3228,'Nong Bua Lam Phu','39',217,NULL),(3229,'Khon Kaen','40',217,NULL),(3230,'Udon Thani','41',217,NULL),(3231,'Loei','42',217,NULL),(3232,'Nong Khai','43',217,NULL),(3233,'Maha Sarakham','44',217,NULL),(3234,'Roi Et','45',217,NULL),(3235,'Kalasin','46',217,NULL),(3236,'Sakon Nakhon','47',217,NULL),(3237,'Nakhon Phanom','48',217,NULL),(3238,'Mukdahan','49',217,NULL),(3239,'Chiang Mai','50',217,NULL),(3240,'Lamphun','51',217,NULL),(3241,'Lampang','52',217,NULL),(3242,'Uttaradit','53',217,NULL),(3243,'Phrae','54',217,NULL),(3244,'Nan','55',217,NULL),(3245,'Phayao','56',217,NULL),(3246,'Chiang Rai','57',217,NULL),(3247,'Mae Hong Son','58',217,NULL),(3248,'Nakhon Sawan','60',217,NULL),(3249,'Uthai Thani','61',217,NULL),(3250,'Kamphaeng Phet','62',217,NULL),(3251,'Tak','63',217,NULL),(3252,'Sukhothai','64',217,NULL),(3253,'Phitsanulok','65',217,NULL),(3254,'Phichit','66',217,NULL),(3255,'Phetchabun','67',217,NULL),(3256,'Ratchaburi','70',217,NULL),(3257,'Kanchanaburi','71',217,NULL),(3258,'Suphan Buri','72',217,NULL),(3259,'Nakhon Pathom','73',217,NULL),(3260,'Samut Sakhon','74',217,NULL),(3261,'Samut Songkhram','75',217,NULL),(3262,'Phetchaburi','76',217,NULL),(3263,'Prachuap Khiri Khan','77',217,NULL),(3264,'Nakhon Si Thammarat','80',217,NULL),(3265,'Krabi','81',217,NULL),(3266,'Phangnga','82',217,NULL),(3267,'Phuket','83',217,NULL),(3268,'Surat Thani','84',217,NULL),(3269,'Ranong','85',217,NULL),(3270,'Chumphon','86',217,NULL),(3271,'Songkhla','90',217,NULL),(3272,'Satun','91',217,NULL),(3273,'Trang','92',217,NULL),(3274,'Phatthalung','93',217,NULL),(3275,'Pattani','94',217,NULL),(3276,'Yala','95',217,NULL),(3277,'Narathiwat','96',217,NULL),(3278,'Phatthaya','S',217,NULL),(3279,'Gorno-Badakhshan','GB',218,NULL),(3280,'Khatlon','KT',218,NULL),(3281,'Sughd','SU',218,NULL),(3282,'Aileu','AL',220,NULL),(3283,'Ainaro','AN',220,NULL),(3284,'Baucau','BA',220,NULL),(3285,'Bobonaro','BO',220,NULL),(3286,'Cova Lima','CO',220,NULL),(3287,'Díli','DI',220,NULL),(3288,'Ermera','ER',220,NULL),(3289,'Lautem','LA',220,NULL),(3290,'Liquiça','LI',220,NULL),(3291,'Manufahi','MF',220,NULL),(3292,'Manatuto','MT',220,NULL),(3293,'Oecussi','OE',220,NULL),(3294,'Viqueque','VI',220,NULL),(3295,'Ahal','A',221,NULL),(3296,'Balkan','B',221,NULL),(3297,'Daşoguz','D',221,NULL),(3298,'Lebap','L',221,NULL),(3299,'Mary','M',221,NULL),(3300,'Aşgabat','S',221,NULL),(3301,'Tunis','11',222,NULL),(3302,'Ariana','12',222,NULL),(3303,'Ben Arous','13',222,NULL),(3304,'La Manouba','14',222,NULL),(3305,'Nabeul','21',222,NULL),(3306,'Zaghouan','22',222,NULL),(3307,'Bizerte','23',222,NULL),(3308,'Béja','31',222,NULL),(3309,'Jendouba','32',222,NULL),(3310,'Le Kef','33',222,NULL),(3311,'Siliana','34',222,NULL),(3312,'Kairouan','41',222,NULL),(3313,'Kasserine','42',222,NULL),(3314,'Sidi Bouzid','43',222,NULL),(3315,'Sousse','51',222,NULL),(3316,'Monastir','52',222,NULL),(3317,'Mahdia','53',222,NULL),(3318,'Sfax','61',222,NULL),(3319,'Gafsa','71',222,NULL),(3320,'Tozeur','72',222,NULL),(3321,'Kebili','73',222,NULL),(3322,'Gabès','81',222,NULL),(3323,'Medenine','82',222,NULL),(3324,'Tataouine','83',222,NULL),(3325,'\'Eua','01',223,NULL),(3326,'Ha\'apai','02',223,NULL),(3327,'Niuas','03',223,NULL),(3328,'Tongatapu','04',223,NULL),(3329,'Vava\'u','05',223,NULL),(3330,'Adana','01',224,NULL),(3331,'Adıyaman','02',224,NULL),(3332,'Afyonkarahisar','03',224,NULL),(3333,'Ağrı','04',224,NULL),(3334,'Amasya','05',224,NULL),(3335,'Ankara','06',224,NULL),(3336,'Antalya','07',224,NULL),(3337,'Artvin','08',224,NULL),(3338,'Aydın','09',224,NULL),(3339,'Balıkesir','10',224,NULL),(3340,'Bilecik','11',224,NULL),(3341,'Bingöl','12',224,NULL),(3342,'Bitlis','13',224,NULL),(3343,'Bolu','14',224,NULL),(3344,'Burdur','15',224,NULL),(3345,'Bursa','16',224,NULL),(3346,'Çanakkale','17',224,NULL),(3347,'Çankırı','18',224,NULL),(3348,'Çorum','19',224,NULL),(3349,'Denizli','20',224,NULL),(3350,'Diyarbakır','21',224,NULL),(3351,'Edirne','22',224,NULL),(3352,'Elazığ','23',224,NULL),(3353,'Erzincan','24',224,NULL),(3354,'Erzurum','25',224,NULL),(3355,'Eskişehir','26',224,NULL),(3356,'Gaziantep','27',224,NULL),(3357,'Giresun','28',224,NULL),(3358,'Gümüşhane','29',224,NULL),(3359,'Hakkâri','30',224,NULL),(3360,'Hatay','31',224,NULL),(3361,'Isparta','32',224,NULL),(3362,'Mersin','33',224,NULL),(3363,'İstanbul','34',224,NULL),(3364,'İzmir','35',224,NULL),(3365,'Kars','36',224,NULL),(3366,'Kastamonu','37',224,NULL),(3367,'Kayseri','38',224,NULL),(3368,'Kırklareli','39',224,NULL),(3369,'Kırşehir','40',224,NULL),(3370,'Kocaeli','41',224,NULL),(3371,'Konya','42',224,NULL),(3372,'Kütahya','43',224,NULL),(3373,'Malatya','44',224,NULL),(3374,'Manisa','45',224,NULL),(3375,'Kahramanmaraş','46',224,NULL),(3376,'Mardin','47',224,NULL),(3377,'Muğla','48',224,NULL),(3378,'Muş','49',224,NULL),(3379,'Nevşehir','50',224,NULL),(3380,'Niğde','51',224,NULL),(3381,'Ordu','52',224,NULL),(3382,'Rize','53',224,NULL),(3383,'Sakarya','54',224,NULL),(3384,'Samsun','55',224,NULL),(3385,'Siirt','56',224,NULL),(3386,'Sinop','57',224,NULL),(3387,'Sivas','58',224,NULL),(3388,'Tekirdağ','59',224,NULL),(3389,'Tokat','60',224,NULL),(3390,'Trabzon','61',224,NULL),(3391,'Tunceli','62',224,NULL),(3392,'Şanlıurfa','63',224,NULL),(3393,'Uşak','64',224,NULL),(3394,'Van','65',224,NULL),(3395,'Yozgat','66',224,NULL),(3396,'Zonguldak','67',224,NULL),(3397,'Aksaray','68',224,NULL),(3398,'Bayburt','69',224,NULL),(3399,'Karaman','70',224,NULL),(3400,'Kırıkkale','71',224,NULL),(3401,'Batman','72',224,NULL),(3402,'Şırnak','73',224,NULL),(3403,'Bartın','74',224,NULL),(3404,'Ardahan','75',224,NULL),(3405,'Iğdır','76',224,NULL),(3406,'Yalova','77',224,NULL),(3407,'Karabük','78',224,NULL),(3408,'Kilis','79',224,NULL),(3409,'Osmaniye','80',224,NULL),(3410,'Düzce','81',224,NULL),(3411,'Arima','ARI',225,NULL),(3412,'Chaguanas','CHA',225,NULL),(3413,'Couva-Tabaquite-Talparo','CTT',225,NULL),(3414,'Diego Martin','DMN',225,NULL),(3415,'Eastern Tobago','ETO',225,NULL),(3416,'Penal-Debe','PED',225,NULL),(3417,'Port of Spain','POS',225,NULL),(3418,'Princes Town','PRT',225,NULL),(3419,'Point Fortin','PTF',225,NULL),(3420,'Rio Claro-Mayaro','RCM',225,NULL),(3421,'San Fernando','SFO',225,NULL),(3422,'Sangre Grande','SGE',225,NULL),(3423,'Siparia','SIP',225,NULL),(3424,'San Juan-Laventille','SJL',225,NULL),(3425,'Tunapuna-Piarco','TUP',225,NULL),(3426,'Western Tobago','WTO',225,NULL),(3427,'Funafuti','FUN',226,NULL),(3428,'Niutao','NIT',226,NULL),(3429,'Nukufetau','NKF',226,NULL),(3430,'Nukulaelae','NKL',226,NULL),(3431,'Nanumea','NMA',226,NULL),(3432,'Nanumanga','NMG',226,NULL),(3433,'Nui','NUI',226,NULL),(3434,'Vaitupu','VAI',226,NULL),(3435,'Changhua','CHA',227,NULL),(3436,'Chiay City','CYI',227,NULL),(3437,'Chiayi','CYQ',227,NULL),(3438,'Hsinchu','HSQ',227,NULL),(3439,'Hsinchui City','HSZ',227,NULL),(3440,'Hualien','HUA',227,NULL),(3441,'Ilan','ILA',227,NULL),(3442,'Keelung City','KEE',227,NULL),(3443,'Kaohsiung City','KHH',227,NULL),(3444,'Kaohsiung','KHQ',227,NULL),(3445,'Miaoli','MIA',227,NULL),(3446,'Nantou','NAN',227,NULL),(3447,'Penghu','PEN',227,NULL),(3448,'Pingtung','PIF',227,NULL),(3449,'Taoyuan','TAO',227,NULL),(3450,'Tainan City','TNN',227,NULL),(3451,'Tainan','TNQ',227,NULL),(3452,'Taipei City','TPE',227,NULL),(3453,'Taipei','TPQ',227,NULL),(3454,'Taitung','TTT',227,NULL),(3455,'Taichung City','TXG',227,NULL),(3456,'Taichung','TXQ',227,NULL),(3457,'Yunlin','YUN',227,NULL),(3458,'Arusha','01',228,NULL),(3459,'Dar-es-Salaam','02',228,NULL),(3460,'Dodoma','03',228,NULL),(3461,'Iringa','04',228,NULL),(3462,'Kagera','05',228,NULL),(3463,'Kaskazini Pemba','06',228,NULL),(3464,'Kaskazini Unguja','07',228,NULL),(3465,'Kigoma','08',228,NULL),(3466,'Kilimanjaro','09',228,NULL),(3467,'Kusini Pemba','10',228,NULL),(3468,'Kusini Unguja','11',228,NULL),(3469,'Lindi','12',228,NULL),(3470,'Mara','13',228,NULL),(3471,'Mbeya','14',228,NULL),(3472,'Mjini Magharibi','15',228,NULL),(3473,'Morogoro','16',228,NULL),(3474,'Mtwara','17',228,NULL),(3475,'Mwanza','18',228,NULL),(3476,'Pwani','19',228,NULL),(3477,'Rukwa','20',228,NULL),(3478,'Ruvuma','21',228,NULL),(3479,'Shinyanga','22',228,NULL),(3480,'Singida','23',228,NULL),(3481,'Tabora','24',228,NULL),(3482,'Tanga','25',228,NULL),(3483,'Manyara','26',228,NULL),(3484,'Vinnyts\'ka Oblast\'','05',229,NULL),(3485,'Volyns\'ka Oblast\'','07',229,NULL),(3486,'Luhans\'ka Oblast\'','09',229,NULL),(3487,'Dnipropetrovs\'ka Oblast\'','12',229,NULL),(3488,'Donets\'ka Oblast\'','14',229,NULL),(3489,'Zhytomyrs\'ka Oblast\'','18',229,NULL),(3490,'Zakarpats\'ka Oblast\'','21',229,NULL),(3491,'Zaporiz\'ka Oblast\'','23',229,NULL),(3492,'Ivano-Frankivs\'ka Oblast\'','26',229,NULL),(3493,'Kyïvs\'ka mis\'ka rada','30',229,NULL),(3494,'Kyïvs\'ka Oblast\'','32',229,NULL),(3495,'Kirovohrads\'ka Oblast\'','35',229,NULL),(3496,'Sevastopol','40',229,NULL),(3497,'Respublika Krym','43',229,NULL),(3498,'L\'vivs\'ka Oblast\'','46',229,NULL),(3499,'Mykolaïvs\'ka Oblast\'','48',229,NULL),(3500,'Odes\'ka Oblast\'','51',229,NULL),(3501,'Poltavs\'ka Oblast\'','53',229,NULL),(3502,'Rivnens\'ka Oblast\'','56',229,NULL),(3503,'Sums \'ka Oblast\'','59',229,NULL),(3504,'Ternopil\'s\'ka Oblast\'','61',229,NULL),(3505,'Kharkivs\'ka Oblast\'','63',229,NULL),(3506,'Khersons\'ka Oblast\'','65',229,NULL),(3507,'Khmel\'nyts\'ka Oblast\'','68',229,NULL),(3508,'Cherkas\'ka Oblast\'','71',229,NULL),(3509,'Chernihivs\'ka Oblast\'','74',229,NULL),(3510,'Chernivets\'ka Oblast\'','77',229,NULL),(3511,'Central','C',230,NULL),(3512,'Eastern','E',230,NULL),(3513,'Northern','N',230,NULL),(3514,'Western','W',230,NULL),(3515,'Johnston Atoll','67',231,NULL),(3516,'Midway Islands','71',231,NULL),(3517,'Navassa Island','76',231,NULL),(3518,'Wake Island','79',231,NULL),(3519,'Baker Island','81',231,NULL),(3520,'Howland Island','84',231,NULL),(3521,'Jarvis Island','86',231,NULL),(3522,'Kingman Reef','89',231,NULL),(3523,'Palmyra Atoll','95',231,NULL),(3524,'Alaska','AK',232,NULL),(3525,'Alabama','AL',232,NULL),(3526,'Arkansas','AR',232,NULL),(3527,'American Samoa','AS',232,NULL),(3528,'Arizona','AZ',232,NULL),(3529,'California','CA',232,NULL),(3530,'Colorado','CO',232,NULL),(3531,'Connecticut','CT',232,NULL),(3532,'District of Columbia','DC',232,NULL),(3533,'Delaware','DE',232,NULL),(3534,'Florida','FL',232,NULL),(3535,'Georgia','GA',232,NULL),(3536,'Guam','GU',232,NULL),(3537,'Hawaii','HI',232,NULL),(3538,'Iowa','IA',232,NULL),(3539,'Idaho','ID',232,NULL),(3540,'Illinois','IL',232,NULL),(3541,'Indiana','IN',232,NULL),(3542,'Kansas','KS',232,NULL),(3543,'Kentucky','KY',232,NULL),(3544,'Louisiana','LA',232,NULL),(3545,'Massachusetts','MA',232,NULL),(3546,'Maryland','MD',232,NULL),(3547,'Maine','ME',232,NULL),(3548,'Michigan','MI',232,NULL),(3549,'Minnesota','MN',232,NULL),(3550,'Missouri','MO',232,NULL),(3551,'Northern Mariana Islands','MP',232,NULL),(3552,'Mississippi','MS',232,NULL),(3553,'Montana','MT',232,NULL),(3554,'North Carolina','NC',232,NULL),(3555,'North Dakota','ND',232,NULL),(3556,'Nebraska','NE',232,NULL),(3557,'New Hampshire','NH',232,NULL),(3558,'New Jersey','NJ',232,NULL),(3559,'New Mexico','NM',232,NULL),(3560,'Nevada','NV',232,NULL),(3561,'New York','NY',232,NULL),(3562,'Ohio','OH',232,NULL),(3563,'Oklahoma','OK',232,NULL),(3564,'Oregon','OR',232,NULL),(3565,'Pennsylvania','PA',232,NULL),(3566,'Puerto Rico','PR',232,NULL),(3567,'Rhode Island','RI',232,NULL),(3568,'South Carolina','SC',232,NULL),(3569,'South Dakota','SD',232,NULL),(3570,'Tennessee','TN',232,NULL),(3571,'Texas','TX',232,NULL),(3572,'United States Minor Outlying Islands','UM',232,NULL),(3573,'Utah','UT',232,NULL),(3574,'Virginia','VA',232,NULL),(3575,'Virgin Islands','VI',232,NULL),(3576,'Vermont','VT',232,NULL),(3577,'Washington','WA',232,NULL),(3578,'Wisconsin','WI',232,NULL),(3579,'West Virginia','WV',232,NULL),(3580,'Wyoming','WY',232,NULL),(3581,'Armed Forces Americas (except Canada)','AA',232,NULL),(3582,'Armed Forces Africa, Canada, Europe, Middle East','AE',232,NULL),(3583,'Armed Forces Pacific','AP',232,NULL),(3584,'Artigas','AR',233,NULL),(3585,'Canelones','CA',233,NULL),(3586,'Cerro Largo','CL',233,NULL),(3587,'Colonia','CO',233,NULL),(3588,'Durazno','DU',233,NULL),(3589,'Florida','FD',233,NULL),(3590,'Flores','FS',233,NULL),(3591,'Lavalleja','LA',233,NULL),(3592,'Maldonado','MA',233,NULL),(3593,'Montevideo','MO',233,NULL),(3594,'Paysandú','PA',233,NULL),(3595,'Río Negro','RN',233,NULL),(3596,'Rocha','RO',233,NULL),(3597,'Rivera','RV',233,NULL),(3598,'Salto','SA',233,NULL),(3599,'San José','SJ',233,NULL),(3600,'Soriano','SO',233,NULL),(3601,'Tacuarembó','TA',233,NULL),(3602,'Treinta y Tres','TT',233,NULL),(3603,'Andijon','AN',234,NULL),(3604,'Buxoro','BU',234,NULL),(3605,'Farg\'ona','FA',234,NULL),(3606,'Jizzax','JI',234,NULL),(3607,'Namangan','NG',234,NULL),(3608,'Navoiy','NW',234,NULL),(3609,'Qashqadaryo','QA',234,NULL),(3610,'Qoraqalpog\'iston Respublikasi','QR',234,NULL),(3611,'Samarqand','SA',234,NULL),(3612,'Sirdaryo','SI',234,NULL),(3613,'Surxondaryo','SU',234,NULL),(3614,'Toshkent','TK',234,NULL),(3615,'Toshkent','TO',234,NULL),(3616,'Xorazm','XO',234,NULL),(3617,'Charlotte','01',236,NULL),(3618,'Saint Andrew','02',236,NULL),(3619,'Saint David','03',236,NULL),(3620,'Saint George','04',236,NULL),(3621,'Saint Patrick','05',236,NULL),(3622,'Grenadines','06',236,NULL),(3623,'Distrito Federal','A',237,NULL),(3624,'Anzoátegui','B',237,NULL),(3625,'Apure','C',237,NULL),(3626,'Aragua','D',237,NULL),(3627,'Barinas','E',237,NULL),(3628,'Bolívar','F',237,NULL),(3629,'Carabobo','G',237,NULL),(3630,'Cojedes','H',237,NULL),(3631,'Falcón','I',237,NULL),(3632,'Guárico','J',237,NULL),(3633,'Lara','K',237,NULL),(3634,'Mérida','L',237,NULL),(3635,'Miranda','M',237,NULL),(3636,'Monagas','N',237,NULL),(3637,'Nueva Esparta','O',237,NULL),(3638,'Portuguesa','P',237,NULL),(3639,'Sucre','R',237,NULL),(3640,'Táchira','S',237,NULL),(3641,'Trujillo','T',237,NULL),(3642,'Yaracuy','U',237,NULL),(3643,'Zulia','V',237,NULL),(3644,'Dependencias Federales','W',237,NULL),(3645,'Vargas','X',237,NULL),(3646,'Delta Amacuro','Y',237,NULL),(3647,'Amazonas','Z',237,NULL),(3648,'Lai Châu','01',240,NULL),(3649,'Lào Cai','02',240,NULL),(3650,'Hà Giang','03',240,NULL),(3651,'Cao Bằng','04',240,NULL),(3652,'Sơn La','05',240,NULL),(3653,'Yên Bái','06',240,NULL),(3654,'Tuyên Quang','07',240,NULL),(3655,'Lạng Sơn','09',240,NULL),(3656,'Quảng Ninh','13',240,NULL),(3657,'Hoà Bình','14',240,NULL),(3658,'Hà Tây','15',240,NULL),(3659,'Ninh Bình','18',240,NULL),(3660,'Thái Bình','20',240,NULL),(3661,'Thanh Hóa','21',240,NULL),(3662,'Nghệ An','22',240,NULL),(3663,'Hà Tỉnh','23',240,NULL),(3664,'Quảng Bình','24',240,NULL),(3665,'Quảng Trị','25',240,NULL),(3666,'Thừa Thiên-Huế','26',240,NULL),(3667,'Quảng Nam','27',240,NULL),(3668,'Kon Tum','28',240,NULL),(3669,'Quảng Ngãi','29',240,NULL),(3670,'Gia Lai','30',240,NULL),(3671,'Bình Định','31',240,NULL),(3672,'Phú Yên','32',240,NULL),(3673,'Đắc Lắk','33',240,NULL),(3674,'Khánh Hòa','34',240,NULL),(3675,'Lâm Đồng','35',240,NULL),(3676,'Ninh Thuận','36',240,NULL),(3677,'Tây Ninh','37',240,NULL),(3678,'Đồng Nai','39',240,NULL),(3679,'Bình Thuận','40',240,NULL),(3680,'Long An','41',240,NULL),(3681,'Bà Rịa-Vũng Tàu','43',240,NULL),(3682,'An Giang','44',240,NULL),(3683,'Đồng Tháp','45',240,NULL),(3684,'Tiền Giang','46',240,NULL),(3685,'Kiên Giang','47',240,NULL),(3686,'Vĩnh Long','49',240,NULL),(3687,'Bến Tre','50',240,NULL),(3688,'Trà Vinh','51',240,NULL),(3689,'Sóc Trăng','52',240,NULL),(3690,'Bắc Kạn','53',240,NULL),(3691,'Bắc Giang','54',240,NULL),(3692,'Bạc Liêu','55',240,NULL),(3693,'Bắc Ninh','56',240,NULL),(3694,'Bình Dương','57',240,NULL),(3695,'Bình Phước','58',240,NULL),(3696,'Cà Mau','59',240,NULL),(3697,'Hải Duong','61',240,NULL),(3698,'Hà Nam','63',240,NULL),(3699,'Hưng Yên','66',240,NULL),(3700,'Nam Định','67',240,NULL),(3701,'Phú Thọ','68',240,NULL),(3702,'Thái Nguyên','69',240,NULL),(3703,'Vĩnh Phúc','70',240,NULL),(3704,'Điện Biên','71',240,NULL),(3705,'Đắk Nông','72',240,NULL),(3706,'Hậu Giang','73',240,NULL),(3707,'Cần Thơ','CT',240,NULL),(3708,'Đà Nẵng','DN',240,NULL),(3709,'Hà Nội','HN',240,NULL),(3710,'Hải Phòng','HP',240,NULL),(3711,'Hồ Chí Minh [Sài Gòn]','SG',240,NULL),(3712,'Malampa','MAP',241,NULL),(3713,'Pénama','PAM',241,NULL),(3714,'Sanma','SAM',241,NULL),(3715,'Shéfa','SEE',241,NULL),(3716,'Taféa','TAE',241,NULL),(3717,'Torba','TOB',241,NULL),(3718,'A\'ana','AA',243,NULL),(3719,'Aiga-i-le-Tai','AL',243,NULL),(3720,'Atua','AT',243,NULL),(3721,'Fa\'asaleleaga','FA',243,NULL),(3722,'Gaga\'emauga','GE',243,NULL),(3723,'Gagaifomauga','GI',243,NULL),(3724,'Palauli','PA',243,NULL),(3725,'Satupa\'itea','SA',243,NULL),(3726,'Tuamasaga','TU',243,NULL),(3727,'Va\'a-o-Fonoti','VF',243,NULL),(3728,'Vaisigano','VS',243,NULL),(3729,'Abyān','AB',244,NULL),(3730,'\'Adan','AD',244,NULL),(3731,'\'Amrān','AM',244,NULL),(3732,'Al Bayḑā\'','BA',244,NULL),(3733,'Aḑ Ḑāli‘','DA',244,NULL),(3734,'Dhamār','DH',244,NULL),(3735,'Ḩaḑramawt','HD',244,NULL),(3736,'Ḩajjah','HJ',244,NULL),(3737,'Ibb','IB',244,NULL),(3738,'Al Jawf','JA',244,NULL),(3739,'Laḩij','LA',244,NULL),(3740,'Ma\'rib','MA',244,NULL),(3741,'Al Mahrah','MR',244,NULL),(3742,'Al Ḩudaydah','MU',244,NULL),(3743,'Al Maḩwīt','MW',244,NULL),(3744,'Raymah','RA',244,NULL),(3745,'Şa\'dah','SD',244,NULL),(3746,'Shabwah','SH',244,NULL),(3747,'Şan\'ā\'','SN',244,NULL),(3748,'Tā\'izz','TA',244,NULL),(3749,'Eastern Cape','EC',246,NULL),(3750,'Free State','FS',246,NULL),(3751,'Gauteng','GP',246,NULL),(3752,'Limpopo','LP',246,NULL),(3753,'Mpumalanga','MP',246,NULL),(3754,'Northern Cape','NC',246,NULL),(3755,'North-West (South Africa)','NW',246,NULL),(3756,'Western Cape','WC',246,NULL),(3757,'Kwazulu-Natal','ZN',246,NULL),(3758,'Western','01',247,NULL),(3759,'Central','02',247,NULL),(3760,'Eastern','03',247,NULL),(3761,'Luapula','04',247,NULL),(3762,'Northern','05',247,NULL),(3763,'North-Western','06',247,NULL),(3764,'Southern (Zambia)','07',247,NULL),(3765,'Copperbelt','08',247,NULL),(3766,'Lusaka','09',247,NULL),(3767,'Bulawayo','BU',248,NULL),(3768,'Harare','HA',248,NULL),(3769,'Manicaland','MA',248,NULL),(3770,'Mashonaland Central','MC',248,NULL),(3771,'Mashonaland East','ME',248,NULL),(3772,'Midlands','MI',248,NULL),(3773,'Matabeleland North','MN',248,NULL),(3774,'Matabeleland South','MS',248,NULL),(3775,'Masvingo','MV',248,NULL),(3776,'Mashonaland West','MW',248,NULL);
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_items`
--

DROP TABLE IF EXISTS `spree_stock_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_location_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `backorderable` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_items_on_stock_location_id` (`stock_location_id`),
  KEY `stock_item_by_loc_and_var_id` (`stock_location_id`,`variant_id`),
  KEY `index_spree_stock_items_on_deleted_at` (`deleted_at`),
  KEY `index_spree_stock_items_on_backorderable` (`backorderable`),
  KEY `index_spree_stock_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_items`
--

LOCK TABLES `spree_stock_items` WRITE;
/*!40000 ALTER TABLE `spree_stock_items` DISABLE KEYS */;
INSERT INTO `spree_stock_items` VALUES (1,1,1,7,'2016-07-14 21:04:41','2016-07-26 10:57:38',1,NULL),(2,1,2,4,'2016-07-14 21:04:41','2016-07-17 09:37:17',1,NULL),(3,1,3,10,'2016-07-14 21:04:42','2016-07-14 21:04:54',1,NULL),(4,1,4,10,'2016-07-14 21:04:42','2016-07-14 21:04:54',1,NULL),(5,1,5,10,'2016-07-14 21:04:42','2016-07-14 21:04:54',1,NULL),(6,1,6,9,'2016-07-14 21:04:42','2016-07-16 08:35:11',1,NULL),(7,1,7,10,'2016-07-14 21:04:43','2016-07-14 21:04:55',1,NULL),(8,1,8,10,'2016-07-14 21:04:43','2016-07-14 21:04:55',1,NULL),(9,1,9,10,'2016-07-14 21:04:43','2016-07-14 21:04:55',1,NULL),(10,1,10,10,'2016-07-14 21:04:43','2016-07-14 21:04:55',1,NULL),(11,1,11,10,'2016-07-14 21:04:44','2016-07-14 21:04:55',1,NULL),(12,1,12,9,'2016-07-14 21:04:44','2016-07-17 10:23:39',1,NULL),(13,1,13,10,'2016-07-14 21:04:44','2016-07-14 21:04:55',1,NULL),(14,1,14,10,'2016-07-14 21:04:44','2016-07-14 21:04:55',1,NULL),(15,1,15,10,'2016-07-14 21:04:45','2016-07-14 21:04:55',1,NULL),(16,1,16,10,'2016-07-14 21:04:45','2016-07-14 21:04:55',1,NULL),(17,1,17,10,'2016-07-14 21:04:52','2016-07-14 21:04:55',1,NULL),(18,1,18,10,'2016-07-14 21:04:52','2016-07-14 21:04:55',1,NULL),(19,1,19,10,'2016-07-14 21:04:52','2016-07-14 21:04:55',1,NULL),(20,1,20,10,'2016-07-14 21:04:52','2016-07-14 21:04:55',1,NULL),(21,1,21,10,'2016-07-14 21:04:52','2016-07-14 21:04:56',1,NULL),(22,1,22,10,'2016-07-14 21:04:52','2016-07-14 21:04:56',1,NULL),(23,1,23,10,'2016-07-14 21:04:53','2016-07-14 21:04:56',1,NULL),(24,1,24,10,'2016-07-14 21:04:53','2016-07-14 21:04:56',1,NULL),(25,1,25,10,'2016-07-14 21:04:53','2016-07-14 21:04:56',1,NULL),(26,1,26,10,'2016-07-14 21:04:53','2016-07-14 21:04:56',1,NULL),(27,1,27,0,'2016-07-26 15:04:27','2016-07-26 15:04:27',1,NULL),(28,1,28,0,'2016-07-26 15:24:44','2016-07-26 15:24:44',1,NULL);
/*!40000 ALTER TABLE `spree_stock_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_locations`
--

DROP TABLE IF EXISTS `spree_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `backorderable_default` tinyint(1) DEFAULT '0',
  `propagate_all_variants` tinyint(1) DEFAULT '1',
  `admin_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_locations_on_active` (`active`),
  KEY `index_spree_stock_locations_on_backorderable_default` (`backorderable_default`),
  KEY `index_spree_stock_locations_on_country_id` (`country_id`),
  KEY `index_spree_stock_locations_on_propagate_all_variants` (`propagate_all_variants`),
  KEY `index_spree_stock_locations_on_state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_locations`
--

LOCK TABLES `spree_stock_locations` WRITE;
/*!40000 ALTER TABLE `spree_stock_locations` DISABLE KEYS */;
INSERT INTO `spree_stock_locations` VALUES (1,'default','2016-07-14 21:03:56','2016-07-14 21:03:56',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL);
/*!40000 ALTER TABLE `spree_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_movements`
--

DROP TABLE IF EXISTS `spree_stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_movements_on_stock_item_id` (`stock_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_movements`
--

LOCK TABLES `spree_stock_movements` WRITE;
/*!40000 ALTER TABLE `spree_stock_movements` DISABLE KEYS */;
INSERT INTO `spree_stock_movements` VALUES (1,1,10,NULL,'2016-07-14 21:04:54','2016-07-14 21:04:54',NULL,NULL),(2,2,10,NULL,'2016-07-14 21:04:54','2016-07-14 21:04:54',NULL,NULL),(3,3,10,NULL,'2016-07-14 21:04:54','2016-07-14 21:04:54',NULL,NULL),(4,4,10,NULL,'2016-07-14 21:04:54','2016-07-14 21:04:54',NULL,NULL),(5,5,10,NULL,'2016-07-14 21:04:54','2016-07-14 21:04:54',NULL,NULL),(6,6,10,NULL,'2016-07-14 21:04:54','2016-07-14 21:04:54',NULL,NULL),(7,7,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(8,8,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(9,9,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(10,10,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(11,11,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(12,12,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(13,13,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(14,14,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(15,15,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(16,16,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(17,17,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(18,18,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(19,19,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(20,20,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(21,21,10,NULL,'2016-07-14 21:04:55','2016-07-14 21:04:55',NULL,NULL),(22,22,10,NULL,'2016-07-14 21:04:56','2016-07-14 21:04:56',NULL,NULL),(23,23,10,NULL,'2016-07-14 21:04:56','2016-07-14 21:04:56',NULL,NULL),(24,24,10,NULL,'2016-07-14 21:04:56','2016-07-14 21:04:56',NULL,NULL),(25,25,10,NULL,'2016-07-14 21:04:56','2016-07-14 21:04:56',NULL,NULL),(26,26,10,NULL,'2016-07-14 21:04:56','2016-07-14 21:04:56',NULL,NULL),(27,2,-4,NULL,'2016-07-15 11:25:04','2016-07-15 11:25:04',4,'Spree::Shipment'),(28,1,-1,NULL,'2016-07-15 11:52:24','2016-07-15 11:52:24',15,'Spree::Shipment'),(29,1,-1,NULL,'2016-07-16 08:35:11','2016-07-16 08:35:11',32,'Spree::Shipment'),(30,6,-1,NULL,'2016-07-16 08:35:11','2016-07-16 08:35:11',32,'Spree::Shipment'),(31,2,-1,NULL,'2016-07-17 09:18:19','2016-07-17 09:18:19',33,'Spree::Shipment'),(32,2,-1,NULL,'2016-07-17 09:37:17','2016-07-17 09:37:17',34,'Spree::Shipment'),(33,12,-1,NULL,'2016-07-17 10:23:39','2016-07-17 10:23:39',35,'Spree::Shipment'),(34,1,-1,NULL,'2016-07-26 10:57:38','2016-07-26 10:57:38',43,'Spree::Shipment');
/*!40000 ALTER TABLE `spree_stock_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_transfers`
--

DROP TABLE IF EXISTS `spree_stock_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `source_location_id` int(11) DEFAULT NULL,
  `destination_location_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_transfers_on_number` (`number`),
  KEY `index_spree_stock_transfers_on_source_location_id` (`source_location_id`),
  KEY `index_spree_stock_transfers_on_destination_location_id` (`destination_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_transfers`
--

LOCK TABLES `spree_stock_transfers` WRITE;
/*!40000 ALTER TABLE `spree_stock_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_stock_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stores`
--

DROP TABLE IF EXISTS `spree_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `seo_title` varchar(255) DEFAULT NULL,
  `mail_from_address` varchar(255) DEFAULT NULL,
  `default_currency` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stores_on_code` (`code`),
  KEY `index_spree_stores_on_default` (`default`),
  KEY `index_spree_stores_on_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stores`
--

LOCK TABLES `spree_stores` WRITE;
/*!40000 ALTER TABLE `spree_stores` DISABLE KEYS */;
INSERT INTO `spree_stores` VALUES (1,'WatchR','http://watchr.co.uk','','','','spree@example.com',NULL,'spree',1,'2016-07-14 21:03:59','2016-07-15 11:07:26');
/*!40000 ALTER TABLE `spree_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tax_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_tax_categories_on_deleted_at` (`deleted_at`),
  KEY `index_spree_tax_categories_on_is_default` (`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_categories`
--

LOCK TABLES `spree_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
INSERT INTO `spree_tax_categories` VALUES (1,'Clothing',NULL,0,NULL,'2016-07-14 21:04:39','2016-07-14 21:04:39',NULL),(2,'Food',NULL,0,NULL,'2016-07-14 21:04:39','2016-07-14 21:04:39',NULL);
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rates`
--

DROP TABLE IF EXISTS `spree_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `show_rate_in_label` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_tax_rates_on_deleted_at` (`deleted_at`),
  KEY `index_spree_tax_rates_on_included_in_price` (`included_in_price`),
  KEY `index_spree_tax_rates_on_show_rate_in_label` (`show_rate_in_label`),
  KEY `index_spree_tax_rates_on_tax_category_id` (`tax_category_id`),
  KEY `index_spree_tax_rates_on_zone_id` (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rates`
--

LOCK TABLES `spree_tax_rates` WRITE;
/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
INSERT INTO `spree_tax_rates` VALUES (1,0.05000,1,1,0,'2016-07-14 21:04:40','2016-07-26 08:36:24','North America',1,NULL);
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxonomies`
--

DROP TABLE IF EXISTS `spree_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_taxonomies_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxonomies`
--

LOCK TABLES `spree_taxonomies` WRITE;
/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
INSERT INTO `spree_taxonomies` VALUES (1,'Categories','2016-07-14 21:04:45','2016-07-26 10:57:38',1),(2,'Brand','2016-07-14 21:04:45','2016-07-26 10:57:38',2),(3,'Front view','2016-07-15 11:01:01','2016-07-17 09:37:17',3),(4,'Colour','2016-07-18 14:58:22','2016-07-18 14:58:42',4);
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons`
--

DROP TABLE IF EXISTS `spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `icon_content_type` varchar(255) DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`),
  KEY `index_spree_taxons_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons`
--

LOCK TABLES `spree_taxons` WRITE;
/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
INSERT INTO `spree_taxons` VALUES (1,NULL,0,'Categories','categories',1,1,12,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:45','2016-07-26 10:57:38',NULL,NULL,NULL,0),(2,NULL,0,'Brand','brand',2,13,24,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:45','2016-07-26 10:57:38',NULL,NULL,NULL,0),(3,1,1,'Bags','categories/bags',1,2,3,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:45','2016-07-26 10:57:38',NULL,NULL,NULL,1),(4,1,2,'Mugs','categories/mugs',1,4,5,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:46','2016-07-15 11:48:32',NULL,NULL,NULL,1),(5,1,0,'Clothing','categories/clothing',1,6,11,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:46','2016-07-16 08:35:11',NULL,NULL,NULL,1),(6,5,0,'Shirts','categories/clothing/shirts',1,7,8,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:46','2016-07-15 11:48:20',NULL,NULL,NULL,2),(7,5,0,'T-Shirts','categories/clothing/t-shirts',1,9,10,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:46','2016-07-16 08:35:11',NULL,NULL,NULL,2),(8,2,0,'Ruby','brand/ruby',2,14,15,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:46','2016-07-16 08:35:11',NULL,NULL,NULL,1),(9,2,0,'Apache','brand/apache',2,16,17,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:47','2016-07-15 11:46:21',NULL,NULL,NULL,1),(10,2,0,'Spree','brand/spree',2,18,19,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:47','2016-07-19 14:06:21',NULL,NULL,NULL,1),(11,2,0,'Rails','brand/rails',2,20,21,NULL,NULL,NULL,NULL,NULL,'2016-07-14 21:04:47','2016-07-26 10:57:38',NULL,NULL,NULL,1),(12,NULL,0,'Front view','front-view',3,25,26,NULL,NULL,NULL,NULL,NULL,'2016-07-15 11:01:01','2016-07-18 15:00:29',NULL,NULL,NULL,0),(13,NULL,0,'Colour','colour',4,27,32,NULL,NULL,NULL,NULL,NULL,'2016-07-18 14:58:22','2016-07-18 15:00:29',NULL,NULL,NULL,0),(14,13,0,'red','colour/red',4,28,29,NULL,NULL,NULL,NULL,NULL,'2016-07-18 14:58:30','2016-07-18 15:00:29',NULL,NULL,NULL,1),(15,13,0,'white','colour/white',4,30,31,NULL,NULL,NULL,NULL,NULL,'2016-07-18 14:58:35','2016-07-18 15:00:29',NULL,NULL,NULL,1),(16,2,0,'Nike','brand/nike',2,22,23,NULL,NULL,NULL,NULL,NULL,'2016-07-18 15:00:29','2016-07-18 15:00:29',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons_promotion_rules`
--

DROP TABLE IF EXISTS `spree_taxons_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxon_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_taxons_promotion_rules_on_taxon_id` (`taxon_id`),
  KEY `index_spree_taxons_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons_promotion_rules`
--

LOCK TABLES `spree_taxons_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_taxons_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_taxons_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons_prototypes`
--

DROP TABLE IF EXISTS `spree_taxons_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxon_id` int(11) DEFAULT NULL,
  `prototype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_taxons_prototypes_on_taxon_id` (`taxon_id`),
  KEY `index_spree_taxons_prototypes_on_prototype_id` (`prototype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons_prototypes`
--

LOCK TABLES `spree_taxons_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_taxons_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_taxons_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_trackers`
--

DROP TABLE IF EXISTS `spree_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `analytics_id` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_trackers_on_active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_trackers`
--

LOCK TABLES `spree_trackers` WRITE;
/*!40000 ALTER TABLE `spree_trackers` DISABLE KEYS */;
INSERT INTO `spree_trackers` VALUES (1,'1212',1,'2016-07-19 14:28:33','2016-07-19 14:28:33');
/*!40000 ALTER TABLE `spree_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_users`
--

DROP TABLE IF EXISTS `spree_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) DEFAULT NULL,
  `password_salt` varchar(128) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `perishable_token` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  `unlock_token` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `spree_api_key` varchar(48) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `adres2` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `countries_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `adres` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mailchimp_opt_in` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`),
  KEY `index_spree_users_on_spree_api_key` (`spree_api_key`),
  KEY `index_spree_users_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_users`
--

LOCK TABLES `spree_users` WRITE;
/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
INSERT INTO `spree_users` VALUES (1,'955c6a899c77ccae4b3420fe21f729200997078b52c08cd2a5b4e0eef164dc44ef94d45f05e2e6166537836e0c06bd57e28780f62625ead58dc92f1e9615b07e','Q6YndFAWosu1RSdpjsHt','spree@example.com','kBTx3sFsp_UetKDztNn4',NULL,NULL,NULL,18,0,NULL,'2016-07-26 15:22:42','2016-07-26 14:59:25','94.119.96.94','94.100.221.35','spree@example.com',6,5,NULL,NULL,NULL,NULL,'2016-07-14 21:04:31','2016-07-26 15:22:42','12qwaszx@300','2016-07-26 15:22:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(2,'eb4f8f6ec1a84b00741dcf84a6af9999936e82747daa99a2955c942bf1814073e6154e5617cba633963d371c622a58d129f64e289965e260a8e9b68c0787b861','vsWXPD9Fe3HY4ME7ZSwS','demo@watchr.co.uk',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'demo@watchr.co.uk',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-15 11:04:35','2016-07-15 11:04:42','guest',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(13,'3f9362841e7839d131b70749440fe0a5a73d9fa4d10885427f4034796ef804ff54bdb2eb44fcb0d1cf8e34b56dd3ec3186276f629389dcd1a255af02d855e92b','YX9Moxrs8Xa-v-PWKcjL','test@mfsa.ru',NULL,NULL,'cdd9efa46815bf72a8ad9633ff80bd1605bd5013d739dd8fbd65742b54f19c66',NULL,1,0,NULL,'2016-07-25 06:19:10','2016-07-25 06:19:10','185.10.180.140','185.10.180.140','test@mfsa.ru',210,142,NULL,NULL,NULL,'2016-07-25 13:50:42','2016-07-17 15:23:45','2016-07-26 10:58:50','1438489335746d013fc4d344cf63489f189cb652c9616b8c',NULL,NULL,NULL,NULL,NULL,'Thomas Road','12','E14 7AP','London, City of',77,1069,'test','test','45 Maydwell House','United Kingdom','London','12121212',0),(14,'a5b1a55eb864da6a7e165e72b4d4e0862727537aef86c5ffbf0919d292ffa24f63a0b146314e17dff17e7a6072143b9f59151737393c200fcec58d7aa07a68c3','DP2nEjBzu--r6yQNb2t-','12131232423423411121213@mail.tese',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'12131232423423411121213@mail.tese',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-18 11:36:49','2016-07-18 11:36:49','6d2e4e67fc4013849aaa28c1ed54b6ed929be766038faf53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1212121','212121',NULL,NULL,NULL,'21212123',0),(15,'9a062e2c0ed7f227cf3cc1d20e956253613d536e623bd1fc12a788f221fb6a7eae028021bd40adac7c16d2f010ff652e5f3c1f0c395dbbb8ad61ee434dabd995','qSGSvLmXjAWxz3T1-Q-Q','mariolina@watchr.co.uk',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'mariolina@watchr.co.uk',101,NULL,NULL,NULL,NULL,NULL,'2016-07-18 12:05:20','2016-07-18 12:12:27','c243c2e16bc87fa8a3ae6ff078f246de90dce0ea2020514b',NULL,NULL,NULL,NULL,NULL,'sk','j','94102','California',232,3529,'mariolina','sangalli','dk','United States','u','6768898',0),(16,'55397a6d79965150c4bc3c6b9bb8b15e63876117cf28dabc7f8fd8f80384371188cd3801b765dff75be06bcc0118c34e7c68327a72806b19f62b3d2075f29cd5','2e1smHUgyCn8wdgudPaa','qwefasdfsd@mail.ru',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'qwefasdfsd@mail.ru',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-18 14:37:44','2016-07-18 14:37:44','093d61a801c099d860cd10df17f5ee17a1ba9a3c0df4df0e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'afdsafg','afdgsdf',NULL,NULL,NULL,'2321342134',0),(17,'75a27faabe442fff3e3e28c0d3c94088081b7ecc723f79c183e75b0a9b46fb1ecc144f8f1e3c9e4a323a6ef173e3f8782029c44dc1da68dbc45b17bfda8dd35d','Bt-mqQ9zsxnypFf5vckc','claudio.degiovanni@gmail.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'claudio.degiovanni@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-18 19:32:56','2016-07-18 19:32:56','726e5ee8380a7060a49f21d25a7f3e8b67f3f53a3ba5cec6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'de Giovanni','Claudio',NULL,NULL,NULL,'07437760954',0),(18,'b92fc1582dee4943ded37cc172efb601a092b6e8317610c5c129ca6c66d80d911592e777ffe68419b8f65e7335b81917309fe544bfa187d0386a6b7110deac7d','yb6T3hEmytpsuU3VUMeb','mariolina@gmail.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'mariolina@gmail.com',124,NULL,NULL,NULL,NULL,NULL,'2016-07-19 18:39:56','2016-07-21 18:59:50','efad30a5279af5a905f7076fb7a4d2f13d0bf6ba95c27752',NULL,NULL,NULL,NULL,NULL,'w','2','90001','California',232,3529,'m','s','s','United States','s','33333',0),(19,'070d457608a71ced9d5b57554e994b94cad4ab62bc2688714d45988569944fa034bdd6957bb11e4bf93749a8490424945ad5f76678780b685d898cecc1e9b33b','bBn3HSMp14_issKhvaKJ','hdhdhf@mail.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'hdhdhf@mail.com',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-20 10:30:14','2016-07-20 10:30:14','535af2621df60aab741296371ea67e2e5988b50304670259',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hdhdhhx','chhchxjxj',NULL,NULL,NULL,'16363647',0),(20,'036ba12e94a8380d61acc4359ebdbc3830e0c37493afccef3b606edc3250c8425b91565bc1c6f1ab387489268987d8d1ca5beebc9822c02b4abc7a8a40517bf8','1ehanR4jDvQo9NVnCkqW','sdfjsdhfks@mail.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'sdfjsdhfks@mail.com',112,NULL,NULL,NULL,NULL,NULL,'2016-07-20 10:51:23','2016-07-20 11:14:54','5d18155cadf1c683245249e125719f4d6f3ad5326b2dfd10',NULL,NULL,NULL,NULL,NULL,'hdfgshjdgfsdf','hdfgshjdgfsdf','01200','Chernihivs\'ka Oblast\'',229,3509,'326375237642','326375237642','hdfgshjdgfsdf','Ukraine','hdfgshjdgfsdf','326375237642',0),(21,'e01427fc23ee17f1b433293973c5ad9acb3927727ee72d1650ed4f229861c02631d9d06fa5c32fbae24461eee7fa0e50fd5a0affb91ad54d238bb552ed04414d','3kr8E2JypKSvBTsxDiHL','asdfwdgt@mom.ua',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'asdfwdgt@mom.ua',120,NULL,NULL,NULL,NULL,NULL,'2016-07-20 10:51:39','2016-07-20 15:44:20','8d62b2918bac86aff0e13a4c530c61357e7c93508c0306d3',NULL,NULL,NULL,NULL,NULL,NULL,'12','92274','California',232,3529,'123','1234','Kiev','United States','Kiev','1234123421',0),(22,'3c08876525fb6bb9b226719a102cd907c358098f8894f56ed5fd16f704dc56081eb35eeadc4fe3116d5947727704ad17f075b6c26d019f4ceef7fa845d35e835','d7Msz32j4CwBHCBfnmbs','gggff@mail.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'gggff@mail.com',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-20 11:19:26','2016-07-20 11:19:26','fc61f9ce1dbce6500dd22837e75679f3df6f76036c0dcd6c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3раовралов','3раовралов',NULL,NULL,NULL,'12123234234',0),(23,'953c3cb20aade06e1057083f736d4015e50c0932613a028c21df08b29c7f14547c3f7181bcb34b0eae7b538587fca80fb12820fa7a0890332e742266fa827daf','PsZAzcwxMuQQ6pEpH6vm','subbed@mm.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'subbed@mm.com',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-20 11:31:23','2016-07-20 11:31:23','090558df008c4c91e3a571e66d6dd23f60670ec8800fdbce',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ровпаровпа','ровпаровпа',NULL,NULL,NULL,'1231243423',0),(24,'db16edd38d938ecb3bb203a41eeb6612550ba85054ac6ad1b444139bb060dc5db8fb5059c50d430e7aa3d886e92697332b0072d481b30fecfa17e31977e0fd46','xY-k8kMxdBcEV7_92rhR','eee@jfjf.ru',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'eee@jfjf.ru',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-20 11:57:19','2016-07-20 11:57:19','90e91422f088807ba7d08b0fa508c1a755a3d55ba8c1a31c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'сп','роаорапор',NULL,NULL,NULL,'34561111',0),(25,'5f008f0e521a3e9f275a616a4c33270b1971cb0683760b4a2df582b581afa544a01eb3febd3aafbb8a36ab6bc2812c6f815596303d6afd0084057572e8fb03ee','u3AgxuymxtTBwnneLJK-','qqq@ddd.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'qqq@ddd.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-20 12:32:29','2016-07-20 12:32:29','3405bb96062795f68cb4718ef0c5cbe58d1bae74092a724b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'121212','121212',NULL,NULL,NULL,'121212',0),(26,'9f37a2f097dc80ea2e96752cb7337b9ba96c6e3f796416b2a4da9bde6d993e1aad4b1df2ced712071b71daf33ce93346b5026293724822358f3ba6c5b63985a0','YwJpLtALnxcL3vz6tfo1','sunflynumber@gmail.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'sunflynumber@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-20 18:19:21','2016-07-20 18:19:21','6a55c38f31b31581538ffdcf34fc2a8e674dec09f8b98640',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'солнца','Иван',NULL,NULL,NULL,'790888354132132132',0),(27,'a06233bb9c79dd2d378e2c94deb594c8ee463f7338fe8d102e4e057ff741a86f77f4d49f2bd1bbc98615ebd18b9355560086ef54a125787a1f65acf4176a2667','R_Sf1zTZLxx8-K4RYSuV','ww@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'ww@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:02:39','2016-07-24 09:02:39','ed1c8f0b05d247822422c5e8457e9c689790962162809636',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ww','ww',NULL,NULL,NULL,'121212',0),(28,'94e45e324eeec37cc67e66222e6facc39b8779d878f56643a1ae9482c966a42be5bfbc01631489b15f7706480904547c3bb2f3f5ded57436523f0650e82320fd','UxDxQzGmfxGs2KqE3ke9','ww3434@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'ww3434@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:12:04','2016-07-24 09:12:04','e71eb16d639552eced4ede195273f5ad5232b751b494c783',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ww','ww',NULL,NULL,NULL,'121212',0),(29,'80b085f9c3ffdce03e1b34c6cad3b3edcae5d550262e0aff40f691184d8077bad3968ec9b27122164924d012c76214fa2abe22d9d286111e49d89b1061381c05','aHwsp4BskZJuCxxsfNrf','ww33434@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'ww33434@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:12:12','2016-07-24 09:12:12','472c074a1285508fe988dfa40c6d299e530bb13f56bc163a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ww','ww',NULL,NULL,NULL,'121212',0),(30,'67f64675c3c4e707febb94b3877d0b364fd4dadc6316ad21a81ff9fc9083eb5aeb3353155c86fa41c6315d25d3223336593d9ec58102cd2231e7b1446530335b','sVQJy-AgwDxEjH99zBZk','w2323w@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'w2323w@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:13:51','2016-07-24 09:13:51','166ede72ca170317d9569943193b94b0d36e69b4da07384a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wwww','wwww',NULL,NULL,NULL,'121212',0),(31,'4923844c62ddcefca72290841e5cbcd6ff4f7b235c58e62ce7d12962b5de9c41bf840a6b9afadab38e9fcceb7533d9c057f514e2385625e5d3b617b6688418e7','9VQeiAt4yoh8-syBudsL','w1212w@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'w1212w@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:15:19','2016-07-24 09:15:19','db05e3740754a2d087830f755220aadc4bdb285e29dabbb1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'er','er',NULL,NULL,NULL,'121212',0),(32,'e01e5dd28c818f3d3222faa42967afb516306495a29499d9f7d8b2e1dc4a5e79b938581e846b1415538aaf40bda69b25701e911f3f03e823a295a155e1e84952','ARmgmdLvRqmy-oUeZHdH','dfd@er.rt',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'dfd@er.rt',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:17:53','2016-07-24 09:17:53','ed20a1bd8a37963c3759c36158efbb346a2674c39e09922c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'er','er',NULL,NULL,NULL,'121212',0),(33,'4a86f3c018373187b142d71500dc8c2f177da368b619a26f765760bd4235f92e6d153f084f1a044736bf2155a3f97b557a981e5403944bfb9fbf29cc43b97dfb','1iiapEGn-gwh5_EqkFsx','w3434w@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'w3434w@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:18:58','2016-07-24 09:18:58','6c1acd30be1be95713b682b72e0c2e5f6dbe0d79907e992e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ww','ww',NULL,NULL,NULL,'121212',0),(34,'8a9bd5ea6410a31ad2a713763ef3fbfe1d35e304b2103e9b2b5fa76d24f37cf5a265b62f98cc491f7dc80dc3bba7414f84e63b8b33843256cfeaa8e8baba6a35','FG7wTHt_x1TrVt389Gai','www@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'www@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:22:29','2016-07-24 09:22:29','f8a1207b6d8088ab96dbc4098ad52aae6ed0b1a154afd90a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ww','ww',NULL,NULL,NULL,'121212',0),(35,'da786b85dcc0f89aa7dc630302bbc2742451a77d3ea0c8db0cb8e3ecd8a8cc36fb86bb46b22a7a0c64346881b7ab688478ab77ebcdc8a57800d6b4f7f6aa9016','uxmkkGcSUQBo4fvsiv42','wwww@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'wwww@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:23:30','2016-07-24 09:23:30','6d36febc56a89cde93e6a77e7361a1be972605ca18aac63a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'www@ww.ww','www@ww.ww',NULL,NULL,NULL,'111111',0),(36,'dd48e18328486ff1f720453a03c0bc639ef464edd6efd44f7ad3616f5718b01f90194371a26b3573d0f0102db1076b73445cdd7253f0cf34e4d157a085bbfa7d','bJ5WFmRtZiopX-s9Tp7M','wwwww@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'wwwww@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:25:25','2016-07-24 09:25:25','e628c872af52f1cf2c9bb51a76f8a2af0d80c05afc3e4e6a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'wwww','wwww',NULL,NULL,NULL,'111111',0),(37,'cac6d9f76c27c30fedf74aa2c9375ebc8c44f0d03ddefc482ef11cfe09a43e0a7e233c867aa52503b737d46a28996926edc57d3151dfc82014285b4c19bfcd84','kPwMjXz259c-aFRfaAxv','wwwwww@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'wwwwww@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:27:01','2016-07-24 09:27:01','6235bdbf5a77f99d400a8833fd38d379906f75a0814199b4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'112','12',NULL,NULL,NULL,'12121',0),(38,'74c6ef9a47bbc78fc0b057a5d8d198d520d03a5cd1e52471f041cc568a29ec1edacabd1c1e0a7876af6e641023f564ab3fd703480f1cdf5c3b3ab47cf17f234e','gxDiiHXS-QdcwmHvbXxr','22ww@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'22ww@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:28:56','2016-07-24 09:28:56','67a84d99365a0923910b0d2a9a79a4b8a13abf8a1fcd3802',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12','12',NULL,NULL,NULL,'121212',0),(39,'9bbbec32250520491b4120ec7865ac4e6ed0e4967d895f21cb1a90d9e2e58edc7f44fb69d60df8b9af1005db53ce4a8df298459d7d8394562c9eb96b70955144','Bx8tjyNS7ymSXC4Udr_f','qwqw@qw.qw',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'qwqw@qw.qw',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:31:02','2016-07-24 09:31:02','4b560c0a0aaead70369ae5bc1c811db4498ae8fd6f35dfcf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12','2',NULL,NULL,NULL,'121212',0),(40,'c461530982f9bdf2994ce0e4cc056d96453e9de8686488070da1834c3434df3e357d0b9c8ca75e6231c3f8044b59f2f14ca1d2ff8050e6e8aaf05afeee0b279f','d19EUuM4zYyHUKE3bxxR','qqww@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'qqww@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:38:43','2016-07-24 09:38:43','634c1b036060a4bca3e8685bf8aff00e07859fef55735a21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ee','ee',NULL,NULL,NULL,'111111',0),(41,'6f0620c9124ed427e23cafb2d086ef9f6d849721ba6b581995b04898825fd611eebfe72a99ca7321884c3f6c514758a81cffd6e8606a94cf3ae4e736820a8581','i8Um3czqySEKvKpTsFRp','qqq@1212.ru',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'qqq@1212.ru',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:38:54','2016-07-24 09:38:54','761990e33b6cb39c5ec3e9b96d9384b86aad4fcf7920896e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tete','tete',NULL,NULL,NULL,'121212',0),(42,'466ae537a7e1c3ececdc972d4ec1b9812b9470e119f95d81a090ab6dff2bb6e8a911ae9706c28190b0ac80edf14f05387f84fdfd02108453ccd202986e4a3c73','okQiPNKtxhWBryCnHRLz','qwqwqw@qw.qw',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'qwqwqw@qw.qw',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:48:14','2016-07-24 09:48:14','3fcafd2911237c21b9a7daa43a904d2dfd3e4eb7147ed971',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'23','323',NULL,NULL,NULL,'232323232',0),(43,'912fc259cd52969e8c5aa45cd3ebfeced75105c803563fef1ea9ab1a98798535b4b30a7c5c96c2f956cc5e9a6a8be167d8753adc42b3545c09424a07a1d77465','mBgnhzEVzSvMcyCGxYmn','qwqwqwqw@qw.qw',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'qwqwqwqw@qw.qw',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:52:14','2016-07-24 09:52:14','3f5882ea6d2fd87ec3a0a0be7b3bb9a632f596e0dff3744b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'we','we',NULL,NULL,NULL,'121212',0),(44,'976e6655120f816060475e0c18f4355864ca744a23b4fd769a9e15f48d9c6ae3d4ce383e9c8062f8e0feac3bf028d8d2d891d6e78dd64e3a86a9039c708125a1','zGzWs4AxUAhYqSLLy1rW','asas@asas.asas',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'asas@asas.asas',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 09:53:24','2016-07-24 09:53:24','4a4144f23777af276bd76caa56606ec951efc5c01cde95d4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asas','asas',NULL,NULL,NULL,'121212',0),(45,'653475a7f47b52c890c27c09c571e8a754abf9dbd25f4dec6ce4ddd358333b3e31100f45747b7062f643aa789d3a66045f60269e12afe582ba157e1d210ccbfe','KWHy7gP4kh_P6v9sTMVE','weweqw@qw.qw',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'weweqw@qw.qw',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 10:03:08','2016-07-24 10:03:08','1f47faab0f3997ccccd03b06f367aff2f9c5b96963beb876',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'er','erer',NULL,NULL,NULL,'121212',0),(46,'da56aef2c7d47cecc740c1acd8d81400ab5052540f43bf3cba24c2204b33e2087b1d1bd860411f49aff1b31fff3dee01d031e7028308af59876b86c004a3accc','v8FqYeX-DZ9hxexd2LtL','sdsdsd@df.df',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'sdsdsd@df.df',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 11:05:50','2016-07-24 11:05:50','7468c08028cbb98af746727e40eb2586907a4980c3a41319',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'er','er',NULL,NULL,NULL,'121212',0),(47,'0e24c333af8c4bb8bd27e53a7f36dbde81326feb243a5d915d02bec5c37cf4831d36a2b0fcfa42260f5669964244af7734a0b2f86111fafea84a2d47013b2fbf','z9J9SmMGMCd5xJs21oqS','asas@asas.asasw',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'asas@asas.asasw',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 11:14:43','2016-07-24 11:14:43','771ca4113c56165607e3a4c417bb1f45b1e6bb11cdfde305',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'er','er',NULL,NULL,NULL,'121212',0),(48,'4a07d0bc829630bd6877af6f5383c95cfbf92b7cb477c004c251bd39fa42682934937f68274138f0fd1624690603f5380b00636a05f4b444dbeb26b185b8eaf1','EWnyFsmxunZH3GyvmYTH','aasas@asas.asas',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'aasas@asas.asas',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 11:15:44','2016-07-24 11:15:44','42a1d87368771f48f46ff0cc650fe48609c8cbffbc61358d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'asas@asas.asas','asas@asas.asas',NULL,NULL,NULL,'1111111',0),(49,'08d875e1d44eeb3da7bc950e421820fd83e1aaa77fa68e3338cdfad176a2fb84f5445305c687e3d3353c105c271b1f58f9dc7c1abe948fdecc074aafc39baa6c','zy_QMFXWFTtSDFX3ZDas','vv@vv.vv',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'vv@vv.vv',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-24 11:19:06','2016-07-24 11:19:06','400000149a8abcc3f60b10e86ac2f3662552e7bd01f56e7a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vv','vv',NULL,NULL,NULL,'121212',0),(50,'ebb23bc8643736764698cca3dd1b6e81471eea5ddebea18ff7d311e3866c0d689a22dddff1b9931a7909a2de6a54ead503d847a21eac146d022e76daf970413c','jXhpT7gdFBxNJoRx6ceJ','dfdf@sd.er',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'dfdf@sd.er',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-25 00:24:59','2016-07-25 00:24:59','128f7685c1f3390cb04b0dd8c8552ee98d50872859564890',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rt','rt',NULL,NULL,NULL,'121212',0),(51,'f27fbb7a66ac5840b7bb0e49a8e60ccc1ad322aeba83a6e97e984710398890e9f792b82cde4628cdbfa4dad0267a3502b6f76616cee474230a6a8d826a4a52c5','Rc5nQ_Sy-asC7c6zCS5f','rrr@rrr.rrr',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'rrr@rrr.rrr',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-25 00:29:54','2016-07-25 00:29:54','3b873fa31e4dc7cbba806e1164811ae175354ab90cbb5373',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rrr','rrr',NULL,NULL,NULL,'09812',0),(52,'b5b7ee5c3bfa4cd6460f26b33291b1067fb01586edd1237fd17347ff128d1f1402ee93ddfe068d4d1d2605ae63e3b0b22accc0cc9eed5107cb89c2a82eb49531','jQd4PKhyAWMzL_D8fkpD','safeapply@safeapply.sa',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'safeapply@safeapply.sa',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-25 00:45:03','2016-07-25 00:45:03','7a2a83f1803a7d79787ac51048b2d690edafcf574a2aaa1f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rrr','rrr',NULL,NULL,NULL,'121212',0),(53,'b4b95a1e1206df452f90f448fef9a056151170c4f19b5d21d050aed498b68fc5bbc7795c379e05d3ee859fba7503a88df45ce958099474bb414aab264508ccf3','Mm1ETKM1jfF_ACSNDHv-','www.ww@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'www.ww@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-25 01:10:42','2016-07-25 01:10:42','7b2f283af5adb56fce7eee1000f86e69527b6a83a7703722',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'www.ww@ww.ww','www.ww@ww.ww',NULL,NULL,NULL,'121212',0),(54,'00218808d5553297c30661c79fc565a6e99e82139da3c83c4fd2d6d53e6bd99eb606218e7cb1f4f60bc1e7fcf268a4abbc32a09a1507d59019a478596800da95','6xnhbpJ4_macfe9WnTq7','tilgaaleksandr@meta.ua',NULL,NULL,'d4f3a766eda97b56d3d31636a07420d98dc1f449688f6708a693d940a1af987d',NULL,0,0,NULL,NULL,NULL,NULL,NULL,'tilgaaleksandr@meta.ua',221,194,NULL,NULL,NULL,'2016-07-25 05:39:25','2016-07-25 02:50:27','2016-07-26 11:02:57','90741e168a63e05ab93bc200256fba0c0cebf3dff3d0123b',NULL,NULL,NULL,NULL,NULL,'dddd44','ddd','E14 7AP','London, City of',77,1069,'Enaf','Sasha','4','United Kingdom','dddd','0987194026',0),(55,'1eca66660fec75b8e23481c2570247e7973a20e49e1dd9b81ebee0474741657805d5f3779e764b8f7b34a04868552d0deccd2d7960cd6088dd82ecc247e7c3c9','2tgKHzKTSz-UWHHL-8BR','wqwrw@ww.ww',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'wqwrw@ww.ww',NULL,NULL,NULL,NULL,NULL,NULL,'2016-07-25 17:39:25','2016-07-25 17:39:25','9abb15c409fa78b3f88242e44c58cf6925d67287ee1065f4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'44','444',NULL,NULL,NULL,'444444',0);
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variants`
--

DROP TABLE IF EXISTS `spree_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `weight` decimal(8,2) DEFAULT '0.00',
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `cost_currency` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `track_inventory` tinyint(1) DEFAULT '1',
  `tax_category_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `stock_items_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_product_id` (`product_id`),
  KEY `index_spree_variants_on_sku` (`sku`),
  KEY `index_spree_variants_on_tax_category_id` (`tax_category_id`),
  KEY `index_spree_variants_on_deleted_at` (`deleted_at`),
  KEY `index_spree_variants_on_is_master` (`is_master`),
  KEY `index_spree_variants_on_position` (`position`),
  KEY `index_spree_variants_on_track_inventory` (`track_inventory`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variants`
--

LOCK TABLES `spree_variants` WRITE;
/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
INSERT INTO `spree_variants` VALUES (1,'ROR-00011',0.00,NULL,NULL,NULL,NULL,1,1,17.00,'GBP',1,1,NULL,'2016-07-26 10:57:38',1),(2,'ROR-00012',0.00,NULL,NULL,NULL,NULL,1,2,21.00,'GBP',1,1,NULL,'2016-07-17 09:37:17',1),(3,'ROR-001',0.00,NULL,NULL,NULL,NULL,1,3,17.00,'GBP',1,1,NULL,'2016-07-15 11:47:13',1),(4,'ROR-00013',0.00,NULL,NULL,NULL,NULL,1,4,17.00,'GBP',1,1,NULL,'2016-07-15 11:47:18',1),(5,'ROR-00015',0.00,NULL,NULL,NULL,NULL,1,5,17.00,'GBP',1,1,NULL,'2016-07-15 11:48:01',1),(6,'RUB-00001',0.00,NULL,NULL,NULL,NULL,1,6,17.00,'GBP',1,1,NULL,'2016-07-16 08:35:11',1),(7,'APC-00001',0.00,NULL,NULL,NULL,NULL,1,7,17.00,'GBP',1,1,NULL,'2016-07-15 11:46:21',1),(8,'SPR-00001',0.00,NULL,NULL,NULL,NULL,1,8,17.00,'GBP',1,1,NULL,'2016-07-15 11:48:16',1),(9,'SPR-00013',0.00,NULL,NULL,NULL,NULL,1,9,17.00,'GBP',1,1,NULL,'2016-07-15 11:48:20',1),(10,'SPR-00015',0.00,NULL,NULL,NULL,NULL,1,10,17.00,'GBP',1,1,NULL,'2016-07-15 11:48:28',1),(11,'SPR-00011',0.00,NULL,NULL,NULL,NULL,1,11,13.00,'GBP',1,1,NULL,'2016-07-19 14:06:21',1),(12,'SPR-00012',0.00,NULL,NULL,NULL,NULL,1,12,21.00,'GBP',1,1,NULL,'2016-07-17 10:23:39',1),(13,'ROR-00014',0.00,NULL,NULL,NULL,NULL,1,13,11.00,'GBP',1,1,NULL,'2016-07-15 11:47:56',1),(14,'ROR-00016',0.00,NULL,NULL,NULL,NULL,1,14,15.00,'GBP',1,1,NULL,'2016-07-15 11:48:05',1),(15,'SPR-00016',0.00,NULL,NULL,NULL,NULL,1,15,15.00,'GBP',1,1,NULL,'2016-07-15 11:48:32',1),(16,'SPR-00014',0.00,NULL,NULL,NULL,NULL,1,16,11.00,'GBP',1,1,NULL,'2016-07-15 11:48:23',1),(17,'ROR-00001',0.00,NULL,NULL,NULL,NULL,0,3,17.00,'USD',2,1,NULL,'2016-07-15 11:14:57',1),(18,'ROR-00002',0.00,NULL,NULL,NULL,NULL,0,3,17.00,'USD',3,1,NULL,'2016-07-15 11:14:57',1),(19,'ROR-00003',0.00,NULL,NULL,NULL,NULL,0,3,17.00,'USD',4,1,NULL,'2016-07-15 11:14:57',1),(20,'ROR-00004',0.00,NULL,NULL,NULL,NULL,0,3,17.00,'USD',5,1,NULL,'2016-07-15 11:14:57',1),(21,'ROR-00005',0.00,NULL,NULL,NULL,NULL,0,3,17.00,'USD',6,1,NULL,'2016-07-15 11:14:57',1),(22,'ROR-00006',0.00,NULL,NULL,NULL,NULL,0,3,17.00,'USD',7,1,NULL,'2016-07-15 11:14:57',1),(23,'ROR-00007',0.00,NULL,NULL,NULL,NULL,0,3,17.00,'USD',8,1,NULL,'2016-07-15 11:14:57',1),(24,'ROR-00008',0.00,NULL,NULL,NULL,NULL,0,3,17.00,'USD',9,1,NULL,'2016-07-15 11:14:57',1),(25,'ROR-00009',0.00,NULL,NULL,NULL,NULL,0,3,17.00,'USD',10,1,NULL,'2016-07-15 11:14:57',1),(26,'ROR-00010',0.00,NULL,NULL,NULL,NULL,0,3,17.00,'USD',11,1,NULL,'2016-07-15 11:14:57',1),(27,'test1',0.00,NULL,NULL,NULL,NULL,1,17,NULL,'GBP',1,1,NULL,'2016-07-26 15:04:27',1),(28,'092183293',0.00,NULL,NULL,NULL,NULL,1,18,NULL,'GBP',1,1,NULL,'2016-07-26 15:31:35',1);
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zone_members`
--

DROP TABLE IF EXISTS `spree_zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_zone_members_on_zone_id` (`zone_id`),
  KEY `index_spree_zone_members_on_zoneable_id_and_zoneable_type` (`zoneable_id`,`zoneable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zone_members`
--

LOCK TABLES `spree_zone_members` WRITE;
/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
INSERT INTO `spree_zone_members` VALUES (1,179,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(2,70,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(3,183,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(4,188,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(5,57,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(6,75,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(7,201,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(8,100,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(9,199,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(10,102,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(11,12,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(12,68,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(13,110,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(14,20,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(15,196,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(16,135,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(17,22,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(18,77,'Spree::Country',1,'2016-07-14 21:04:12','2016-07-14 21:04:12'),(19,133,'Spree::Country',1,'2016-07-14 21:04:13','2016-07-14 21:04:13'),(20,55,'Spree::Country',1,'2016-07-14 21:04:13','2016-07-14 21:04:13'),(21,134,'Spree::Country',1,'2016-07-14 21:04:13','2016-07-14 21:04:13'),(22,153,'Spree::Country',1,'2016-07-14 21:04:13','2016-07-14 21:04:13'),(23,59,'Spree::Country',1,'2016-07-14 21:04:13','2016-07-14 21:04:13'),(24,166,'Spree::Country',1,'2016-07-14 21:04:13','2016-07-14 21:04:13'),(25,64,'Spree::Country',1,'2016-07-14 21:04:13','2016-07-14 21:04:13'),(26,232,'Spree::Country',2,'2016-07-14 21:04:13','2016-07-14 21:04:13'),(27,38,'Spree::Country',2,'2016-07-14 21:04:13','2016-07-14 21:04:13');
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zones`
--

DROP TABLE IF EXISTS `spree_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `default_tax` tinyint(1) DEFAULT '0',
  `zone_members_count` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `kind` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_zones_on_default_tax` (`default_tax`),
  KEY `index_spree_zones_on_kind` (`kind`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zones`
--

LOCK TABLES `spree_zones` WRITE;
/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
INSERT INTO `spree_zones` VALUES (1,'EU_VAT','Countries that make up the EU VAT zone.',0,25,'2016-07-14 21:04:12','2016-07-14 21:04:12',NULL),(2,'North America','USA + Canada',0,2,'2016-07-14 21:04:12','2016-07-14 21:04:12',NULL);
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-27 13:24:41
