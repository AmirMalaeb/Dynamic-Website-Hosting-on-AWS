-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: shopwise
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'yo5XHQXr5QPCxeY1GhtuKoYkVFdo8kum',1,'2024-03-11 00:12:12','2024-03-11 00:12:12','2024-03-11 00:12:12');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Homepage middle 1','2029-03-11 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.jpg','/product-categories/headphone',0,1,'published','2024-03-11 00:12:14','2024-03-11 00:12:14',1,NULL,NULL),(2,'Homepage middle 2','2029-03-11 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.jpg','/product-categories/camera',0,2,'published','2024-03-11 00:12:14','2024-03-11 00:12:14',1,NULL,NULL),(3,'Homepage middle 3','2029-03-11 00:00:00','not_set','ZDOZUZZIU7FT','promotion/3.jpg','/product-categories/watches',0,3,'published','2024-03-11 00:12:14','2024-03-11 00:12:14',1,NULL,NULL),(4,'Slide right 1','2029-03-11 00:00:00','not_set','WF2VEBKBGUFA','promotion/4.jpg','/products',0,4,'published','2024-03-11 00:12:14','2024-03-11 00:12:14',1,NULL,NULL),(5,'Slide right 2','2029-03-11 00:00:00','not_set','YKE9S2TUEEJB','promotion/5.jpg','/products',0,5,'published','2024-03-11 00:12:14','2024-03-11 00:12:14',1,NULL,NULL),(6,'Homepage medium 1','2029-03-11 00:00:00','not_set','DHAEBCMWGYJG','promotion/6.jpg','/products',0,6,'published','2024-03-11 00:12:14','2024-03-11 00:12:14',1,NULL,NULL),(7,'Homepage medium 1','2029-03-11 00:00:00','not_set','MDEUVQI9QPKM','promotion/7.jpg','/products',0,7,'published','2024-03-11 00:12:14','2024-03-11 00:12:14',1,NULL,NULL),(8,'Homepage medium 3','2029-03-11 00:00:00','not_set','EYMG7NGZTHJL','promotion/8.jpg','/products',0,8,'published','2024-03-11 00:12:14','2024-03-11 00:12:14',1,NULL,NULL),(9,'Homepage medium 4','2029-03-11 00:00:00','not_set','NKWBGV6NAC3M','promotion/9.jpg','/products',0,9,'published','2024-03-11 00:12:14','2024-03-11 00:12:14',1,NULL,NULL),(10,'Homepage medium 5','2029-03-11 00:00:00','not_set','7W3YFO7XE422','promotion/10.jpg','/products',0,10,'published','2024-03-11 00:12:14','2024-03-11 00:12:14',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Enim similique sed vel distinctio et. Impedit ducimus commodi consectetur sit quis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(2,'Fashion',0,'Velit ea rerum rem. Sapiente illo quia ut doloribus. Dicta soluta sed quae quaerat error eos commodi necessitatibus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(3,'Electronic',0,'Sunt nulla et quisquam numquam sed nesciunt corporis. Harum assumenda omnis iste enim. Nihil praesentium a reiciendis qui.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(4,'Commercial',0,'Quia illo et facere qui. Delectus qui optio veritatis velit. Eius tempora et accusantium. Ab sunt minima molestias et doloribus voluptatem saepe.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-03-11 00:12:11','2024-03-11 00:12:11');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.png','published',0,1,'2024-03-11 00:11:55','2024-03-11 00:11:55'),(2,'Hand crafted',NULL,NULL,'brands/2.png','published',1,1,'2024-03-11 00:11:55','2024-03-11 00:11:55'),(3,'Mestonix',NULL,NULL,'brands/3.png','published',2,1,'2024-03-11 00:11:55','2024-03-11 00:11:55'),(4,'Sunshine',NULL,NULL,'brands/4.png','published',3,1,'2024-03-11 00:11:55','2024-03-11 00:11:55'),(5,'Pure',NULL,NULL,'brands/5.png','published',4,1,'2024-03-11 00:11:55','2024-03-11 00:11:55'),(6,'Anfold',NULL,NULL,'brands/6.png','published',5,1,'2024-03-11 00:11:55','2024-03-11 00:11:55'),(7,'Automotive',NULL,NULL,'brands/7.png','published',6,1,'2024-03-11 00:11:55','2024-03-11 00:11:55');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-03-11 00:11:55','2024-03-11 00:11:55'),(2,'EUR','€',0,2,1,0,0.84,'2024-03-11 00:11:55','2024-03-11 00:11:55'),(3,'VND','₫',0,0,2,0,23203,'2024-03-11 00:11:55','2024-03-11 00:11:55'),(4,'NGN','₦',1,2,2,0,895.52,'2024-03-11 00:11:55','2024-03-11 00:11:55');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Mr. Leonard Swift DDS','customer@botble.com','+18605015730','GL','Washington','South Norrismouth','746 Connelly Mountains Suite 695',1,1,'2024-03-11 00:11:57','2024-03-11 00:11:57','29949-7568'),(2,'Mr. Leonard Swift DDS','customer@botble.com','+19705677164','US','South Dakota','Bruenchester','2067 Myron Ramp',1,0,'2024-03-11 00:11:57','2024-03-11 00:11:57','14778-4494'),(3,'Isaiah Schoen','john.smith@botble.com','+14794109929','VG','Iowa','East Geoffreymouth','1663 Gulgowski Inlet Suite 632',2,1,'2024-03-11 00:11:57','2024-03-11 00:11:57','98048-3357'),(4,'Isaiah Schoen','john.smith@botble.com','+12093288461','GB','Ohio','South Stevie','304 Dickinson Pines Apt. 274',2,0,'2024-03-11 00:11:57','2024-03-11 00:11:57','50963'),(5,'Ben Lakin II','nicholaus.feeney@example.com','+17012794639','AU','Virginia','South Jillian','74024 Mayer Park',3,1,'2024-03-11 00:11:57','2024-03-11 00:11:57','94197-1306'),(6,'Dr. Lucile Cruickshank','rpaucek@example.net','+15673043678','KR','Minnesota','Kozeystad','444 Catherine Hill',4,1,'2024-03-11 00:11:58','2024-03-11 00:11:58','33660-2593'),(7,'Rusty Cummings','newell.herman@example.net','+16787948037','AI','Minnesota','New Jerel','32650 Quitzon Plaza',5,1,'2024-03-11 00:11:58','2024-03-11 00:11:58','76447-0209'),(8,'Dr. Howard Gutkowski III','tatum.pagac@example.net','+19182663181','ZM','Vermont','West Ebbafort','2113 Koss Bridge',6,1,'2024-03-11 00:11:58','2024-03-11 00:11:58','73860'),(9,'Mr. Buford Cartwright Jr.','aufderhar.henderson@example.com','+17373230263','DK','Minnesota','Daphnehaven','58876 Rafaela Stravenue',7,1,'2024-03-11 00:11:58','2024-03-11 00:11:58','14198-5816'),(10,'Miss Claudine Pacocha Sr.','hsteuber@example.org','+13144627680','BZ','Virginia','Kesslerview','148 McKenzie Place Suite 932',8,1,'2024-03-11 00:11:59','2024-03-11 00:11:59','99387-6332'),(11,'Bryana Waters','hgrady@example.net','+16824395588','TR','Delaware','Zboncakmouth','156 Schulist Corner Apt. 137',9,1,'2024-03-11 00:11:59','2024-03-11 00:11:59','80631-5935'),(12,'Mr. Lucas Sanford','kbruen@example.org','+17259930440','MX','Rhode Island','North Tiana','8158 Haley Extension',10,1,'2024-03-11 00:11:59','2024-03-11 00:11:59','50201-6720');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Mr. Leonard Swift DDS','customer@botble.com','$2y$12$gVxmUkNAOatocUyIWVgeBOTLFiXjQtEamyBIBYi6W.NvIvqKQuWYK','customers/2.jpg','1991-02-14','+12317394183',NULL,'2024-03-11 00:11:57','2024-03-11 00:11:57','2024-03-11 07:11:57',NULL,'activated',NULL),(2,'Isaiah Schoen','john.smith@botble.com','$2y$12$eDiVlBVQNfvI.TkzxwASuOkv.0robEKXIOjDLRP92v4zeVxLUc8/e','customers/9.jpg','2002-02-09','+17209828877',NULL,'2024-03-11 00:11:57','2024-03-11 00:11:57','2024-03-11 07:11:57',NULL,'activated',NULL),(3,'Ben Lakin II','nicholaus.feeney@example.com','$2y$12$y5Ksly47RuacQaEwZxdwF.Uk6Xq4rg5VDbpQAUekFtjy2cC1ud3LO','customers/1.jpg','1974-02-09','+18544696178',NULL,'2024-03-11 00:11:57','2024-03-11 00:11:57','2024-03-11 07:11:57',NULL,'activated',NULL),(4,'Dr. Lucile Cruickshank','rpaucek@example.net','$2y$12$9z2OuE.Xhh2qeQQjJFcs..SobEV85pKPfTCz0wgOrgRUWeglD769i','customers/2.jpg','2001-02-20','+16789973804',NULL,'2024-03-11 00:11:58','2024-03-11 00:11:58','2024-03-11 07:11:58',NULL,'activated',NULL),(5,'Rusty Cummings','newell.herman@example.net','$2y$12$zPA54rIy6RAnKrYAiCidpON02HbBeI3MyGBNjwXOlbLp6L/B50OVO','customers/3.jpg','1996-02-22','+17793759913',NULL,'2024-03-11 00:11:58','2024-03-11 00:11:58','2024-03-11 07:11:58',NULL,'activated',NULL),(6,'Dr. Howard Gutkowski III','tatum.pagac@example.net','$2y$12$H5HoG9R1sMQCUzJEoUJ3e.RWjGe3Nbxpuf/n2ChgzvVwdmIh1TNgW','customers/4.jpg','2004-03-08','+19208126147',NULL,'2024-03-11 00:11:58','2024-03-11 00:11:58','2024-03-11 07:11:58',NULL,'activated',NULL),(7,'Mr. Buford Cartwright Jr.','aufderhar.henderson@example.com','$2y$12$rALLBerexGProXlMSQQaQO/8gkFF407jBapTTvATEYzydsl2vqV0u','customers/5.jpg','1998-02-25','+17207651274',NULL,'2024-03-11 00:11:58','2024-03-11 00:11:58','2024-03-11 07:11:58',NULL,'activated',NULL),(8,'Miss Claudine Pacocha Sr.','hsteuber@example.org','$2y$12$M15twnOoZxGhUK2GXlfd8.De12aCqyFzftrdZFyaUMqBOTwT4NUiW','customers/6.jpg','1979-02-15','+14154580429',NULL,'2024-03-11 00:11:59','2024-03-11 00:11:59','2024-03-11 07:11:59',NULL,'activated',NULL),(9,'Bryana Waters','hgrady@example.net','$2y$12$1rV/1LKxOWFQAH42f/vnJu/4ML1twlKatl0wUU4fSECj2zylkajv6','customers/7.jpg','2002-02-15','+15623320183',NULL,'2024-03-11 00:11:59','2024-03-11 00:11:59','2024-03-11 07:11:59',NULL,'activated',NULL),(10,'Mr. Lucas Sanford','kbruen@example.org','$2y$12$Ku58VuGkthYS9ipLSzzBIO.ZbQE1eEOiNDdmz3vgYbpXUupQv9nIC','customers/8.jpg','1997-02-19','+15072075573',NULL,'2024-03-11 00:11:59','2024-03-11 00:11:59','2024-03-11 07:11:59',NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,22,69.66,20,1),(2,19,53.1,18,5);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2024-04-23 00:00:00','published','2024-03-11 00:12:06','2024-03-11 00:12:06'),(2,'Gadgets &amp; Accessories','2024-04-19 00:00:00','published','2024-03-11 00:12:06','2024-03-11 00:12:06');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(1,2,'2 Year',10,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(1,3,'3 Year',20,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(2,4,'4GB',0,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(2,5,'8GB',10,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(2,6,'16GB',20,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(3,7,'Core i5',0,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(3,8,'Core i7',10,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(3,9,'Core i9',20,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(4,10,'128GB',0,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(4,11,'256GB',10,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(4,12,'512GB',20,9999,0,'2024-03-11 00:12:13','2024-03-11 00:12:13');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-03-11 00:12:13','2024-03-11 00:12:13');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',34,'Headphone Ultra Bass',NULL,'products/2.jpg',1,338.00,338.00,33.80,0.00,371.80,'{\"sku\":\"HS-170-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(2,1,'Botble\\Ecommerce\\Models\\Product',49,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',3,126.00,378.00,12.60,0.00,390.60,'{\"sku\":\"HS-120-A0-A2\",\"attributes\":\"(Color: Blue, Size: M)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(3,1,'Botble\\Ecommerce\\Models\\Product',55,'Macbook Pro 13 inch',NULL,'products/12-1.jpg',1,124.00,124.00,12.40,0.00,136.40,'{\"sku\":\"HS-107-A0-A1\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(4,1,'Botble\\Ecommerce\\Models\\Product',98,'Smart Televisions',NULL,'products/30.jpg',3,130.00,390.00,13.00,0.00,403.00,'{\"sku\":\"HS-136-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(5,2,'Botble\\Ecommerce\\Models\\Product',57,'Apple Keyboard (Digital)',NULL,'products/13.jpg',1,125.00,125.00,12.50,0.00,137.50,'{\"sku\":\"HS-142-A0\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(6,2,'Botble\\Ecommerce\\Models\\Product',76,'Macbook Pro 2015 13 inch',NULL,'products/20.jpg',2,111.00,222.00,11.10,0.00,233.10,'{\"sku\":\"HS-148-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(7,3,'Botble\\Ecommerce\\Models\\Product',96,'Red &amp; Black Headphone',NULL,'products/28.jpg',1,53.00,53.00,5.30,0.00,58.30,'{\"sku\":\"HS-131-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(8,3,'Botble\\Ecommerce\\Models\\Product',97,'Audio Equipment (Digital)',NULL,'products/29.jpg',2,60.00,120.00,6.00,0.00,126.00,'{\"sku\":\"HS-107-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(9,4,'Botble\\Ecommerce\\Models\\Product',42,'Camera Samsung SS-24',NULL,'products/6-1.jpg',1,55.00,55.00,5.50,0.00,60.50,'{\"sku\":\"HS-173-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(10,4,'Botble\\Ecommerce\\Models\\Product',54,'Macbook Pro 13 inch',NULL,'products/12.jpg',2,124.00,248.00,12.40,0.00,260.40,'{\"sku\":\"HS-107-A0\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(11,4,'Botble\\Ecommerce\\Models\\Product',90,'Smart Watches',NULL,'products/26.jpg',1,40.50,40.50,4.05,0.00,44.55,'{\"sku\":\"HS-155-A0\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(12,4,'Botble\\Ecommerce\\Models\\Product',92,'Smart Watches',NULL,'products/26-2.jpg',3,40.50,121.50,4.05,0.00,125.55,'{\"sku\":\"HS-155-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(13,5,'Botble\\Ecommerce\\Models\\Product',36,'Boxed - Bluetooth Headphone',NULL,'products/3.jpg',3,286.00,858.00,28.60,0.00,886.60,'{\"sku\":\"HS-124-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(14,5,'Botble\\Ecommerce\\Models\\Product',37,'Boxed - Bluetooth Headphone',NULL,'products/3-1.jpg',2,286.00,572.00,28.60,0.00,600.60,'{\"sku\":\"HS-124-A0-A1\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-03-11 00:12:07','2024-03-11 00:12:07'),(15,6,'Botble\\Ecommerce\\Models\\Product',52,'Macbook Air 12 inch',NULL,'products/10-1.jpg',2,349.00,698.00,34.90,0.00,732.90,'{\"sku\":\"HS-190-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(16,6,'Botble\\Ecommerce\\Models\\Product',69,'Black Smart Watches',NULL,'products/18.jpg',2,129.00,258.00,12.90,0.00,270.90,'{\"sku\":\"HS-136-A0\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(17,6,'Botble\\Ecommerce\\Models\\Product',70,'Black Smart Watches',NULL,'products/18-1.jpg',1,129.00,129.00,12.90,0.00,141.90,'{\"sku\":\"HS-136-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(18,6,'Botble\\Ecommerce\\Models\\Product',102,'Samsung Smart TV',NULL,'products/31.jpg',2,50.00,100.00,5.00,0.00,105.00,'{\"sku\":\"HS-112-A0-A2\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(19,7,'Botble\\Ecommerce\\Models\\Product',58,'Apple Keyboard (Digital)',NULL,'products/13-1.jpg',2,125.00,250.00,12.50,0.00,262.50,'{\"sku\":\"HS-142-A0-A1\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(20,7,'Botble\\Ecommerce\\Models\\Product',78,'Macbook Pro 2015 13 inch',NULL,'products/20.jpg',1,111.00,111.00,11.10,0.00,122.10,'{\"sku\":\"HS-148-A0-A4\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(21,8,'Botble\\Ecommerce\\Models\\Product',36,'Boxed - Bluetooth Headphone',NULL,'products/3.jpg',1,286.00,286.00,28.60,0.00,314.60,'{\"sku\":\"HS-124-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(22,8,'Botble\\Ecommerce\\Models\\Product',52,'Macbook Air 12 inch',NULL,'products/10-1.jpg',1,349.00,349.00,34.90,0.00,383.90,'{\"sku\":\"HS-190-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(23,8,'Botble\\Ecommerce\\Models\\Product',60,'Hand playstation',NULL,'products/15.jpg',3,127.00,381.00,12.70,0.00,393.70,'{\"sku\":\"HS-124-A0\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(24,9,'Botble\\Ecommerce\\Models\\Product',35,'Headphone Ultra Bass',NULL,'products/2-1.jpg',2,338.00,676.00,33.80,0.00,709.80,'{\"sku\":\"HS-170-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(25,9,'Botble\\Ecommerce\\Models\\Product',71,'Black Smart Watches',NULL,'products/18-2.jpg',2,129.00,258.00,12.90,0.00,270.90,'{\"sku\":\"HS-136-A0-A2\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(26,9,'Botble\\Ecommerce\\Models\\Product',75,'Macbook Pro 2015 13 inch',NULL,'products/20-1.jpg',2,111.00,222.00,11.10,0.00,233.10,'{\"sku\":\"HS-148-A0-A1\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(27,9,'Botble\\Ecommerce\\Models\\Product',95,'Beat Headphone',NULL,'products/27.jpg',2,20.00,40.00,2.00,0.00,42.00,'{\"sku\":\"HS-187-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(28,10,'Botble\\Ecommerce\\Models\\Product',46,'Apple iPhone 13 Plus',NULL,'products/8.jpg',3,110.00,330.00,11.00,0.00,341.00,'{\"sku\":\"HS-194-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(29,10,'Botble\\Ecommerce\\Models\\Product',58,'Apple Keyboard (Digital)',NULL,'products/13-1.jpg',1,125.00,125.00,12.50,0.00,137.50,'{\"sku\":\"HS-142-A0-A1\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(30,10,'Botble\\Ecommerce\\Models\\Product',91,'Smart Watches',NULL,'products/26-1.jpg',2,40.50,81.00,4.05,0.00,85.05,'{\"sku\":\"HS-155-A0-A1\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-03-11 00:12:08','2024-03-11 00:12:08'),(31,11,'Botble\\Ecommerce\\Models\\Product',62,'Apple Airpods Serial 3',NULL,'products/16.jpg',2,130.00,260.00,13.00,0.00,273.00,'{\"sku\":\"HS-176-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(32,11,'Botble\\Ecommerce\\Models\\Product',79,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',2,120.00,240.00,12.00,0.00,252.00,'{\"sku\":\"HS-158-A0\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(33,11,'Botble\\Ecommerce\\Models\\Product',101,'Samsung Smart TV',NULL,'products/31-1.jpg',1,50.00,50.00,5.00,0.00,55.00,'{\"sku\":\"HS-112-A0-A1\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(34,12,'Botble\\Ecommerce\\Models\\Product',39,'Chikie - Bluetooth Speaker',NULL,'products/4-1.jpg',3,81.00,243.00,8.10,0.00,251.10,'{\"sku\":\"HS-115-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(35,12,'Botble\\Ecommerce\\Models\\Product',81,'Black Glasses',NULL,'products/22-1.jpg',3,129.00,387.00,12.90,0.00,399.90,'{\"sku\":\"HS-152-A0-A1\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(36,13,'Botble\\Ecommerce\\Models\\Product',36,'Boxed - Bluetooth Headphone',NULL,'products/3.jpg',2,286.00,572.00,28.60,0.00,600.60,'{\"sku\":\"HS-124-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(37,13,'Botble\\Ecommerce\\Models\\Product',65,'Apple Airpods Serial 3',NULL,'products/16.jpg',3,130.00,390.00,13.00,0.00,403.00,'{\"sku\":\"HS-176-A0-A3\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(38,13,'Botble\\Ecommerce\\Models\\Product',81,'Black Glasses',NULL,'products/22-1.jpg',2,129.00,258.00,12.90,0.00,270.90,'{\"sku\":\"HS-152-A0-A1\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(39,13,'Botble\\Ecommerce\\Models\\Product',88,'Dual Camera 20MP (Digital)',NULL,'products/25-1.jpg',3,80.25,240.75,8.03,0.00,248.78,'{\"sku\":\"HS-131-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(40,14,'Botble\\Ecommerce\\Models\\Product',40,'Camera Hikvision HK-35VS8 (Digital)',NULL,'products/5.jpg',2,43.00,86.00,4.30,0.00,90.30,'{\"sku\":\"HS-111-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(41,14,'Botble\\Ecommerce\\Models\\Product',74,'Macbook Pro 2015 13 inch',NULL,'products/20.jpg',2,111.00,222.00,11.10,0.00,233.10,'{\"sku\":\"HS-148-A0\",\"attributes\":\"(Color: Blue, Size: M)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(42,14,'Botble\\Ecommerce\\Models\\Product',90,'Smart Watches',NULL,'products/26.jpg',1,40.50,40.50,4.05,0.00,44.55,'{\"sku\":\"HS-155-A0\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(43,14,'Botble\\Ecommerce\\Models\\Product',98,'Smart Televisions',NULL,'products/30.jpg',2,130.00,260.00,13.00,0.00,273.00,'{\"sku\":\"HS-136-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(44,15,'Botble\\Ecommerce\\Models\\Product',32,'Smart Home Speaker (Digital)',NULL,'products/1.jpg',2,384.00,768.00,38.40,0.00,806.40,'{\"sku\":\"HS-187-A0\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(45,15,'Botble\\Ecommerce\\Models\\Product',72,'Leather Watch Band Serial 3',NULL,'products/19.jpg',1,118.00,118.00,11.80,0.00,129.80,'{\"sku\":\"HS-122-A0\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:12:09','2024-03-11 00:12:09'),(46,16,'Botble\\Ecommerce\\Models\\Product',43,'Camera Samsung SS-24',NULL,'products/6.jpg',1,55.00,55.00,5.50,0.00,60.50,'{\"sku\":\"HS-173-A0-A2\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(47,16,'Botble\\Ecommerce\\Models\\Product',64,'Apple Airpods Serial 3',NULL,'products/16.jpg',1,130.00,130.00,13.00,0.00,143.00,'{\"sku\":\"HS-176-A0-A2\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(48,17,'Botble\\Ecommerce\\Models\\Product',32,'Smart Home Speaker (Digital)',NULL,'products/1.jpg',1,384.00,384.00,38.40,0.00,422.40,'{\"sku\":\"HS-187-A0\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(49,17,'Botble\\Ecommerce\\Models\\Product',66,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',1,111.00,111.00,11.10,0.00,122.10,'{\"sku\":\"HS-149-A0\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(50,17,'Botble\\Ecommerce\\Models\\Product',79,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',3,120.00,360.00,12.00,0.00,372.00,'{\"sku\":\"HS-158-A0\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(51,17,'Botble\\Ecommerce\\Models\\Product',86,'Gaming Keyboard',NULL,'products/24.jpg',2,119.00,238.00,11.90,0.00,249.90,'{\"sku\":\"HS-136-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(52,18,'Botble\\Ecommerce\\Models\\Product',45,'Leather Watch Band',NULL,'products/7-1.jpg',1,130.00,130.00,13.00,0.00,143.00,'{\"sku\":\"HS-148-A0-A1\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(53,18,'Botble\\Ecommerce\\Models\\Product',75,'Macbook Pro 2015 13 inch',NULL,'products/20-1.jpg',3,111.00,333.00,11.10,0.00,344.10,'{\"sku\":\"HS-148-A0-A1\",\"attributes\":\"(Color: Blue, Size: XL)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(54,19,'Botble\\Ecommerce\\Models\\Product',39,'Chikie - Bluetooth Speaker',NULL,'products/4-1.jpg',3,81.00,243.00,8.10,0.00,251.10,'{\"sku\":\"HS-115-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(55,19,'Botble\\Ecommerce\\Models\\Product',40,'Camera Hikvision HK-35VS8 (Digital)',NULL,'products/5.jpg',3,43.00,129.00,4.30,0.00,133.30,'{\"sku\":\"HS-111-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(56,19,'Botble\\Ecommerce\\Models\\Product',59,'MacSafe 80W',NULL,'products/14.jpg',3,113.00,339.00,11.30,0.00,350.30,'{\"sku\":\"HS-154-A0\",\"attributes\":\"(Size: S, Color: Red)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(57,20,'Botble\\Ecommerce\\Models\\Product',34,'Headphone Ultra Bass',NULL,'products/2.jpg',2,338.00,676.00,33.80,0.00,709.80,'{\"sku\":\"HS-170-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10'),(58,20,'Botble\\Ecommerce\\Models\\Product',93,'Beat Headphone',NULL,'products/27.jpg',1,20.00,20.00,2.00,0.00,22.00,'{\"sku\":\"HS-187-A0\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-03-11 00:12:10','2024-03-11 00:12:10');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Dr. Lucile Cruickshank','',NULL,'rpaucek@example.net','+15673043678','444 Catherine Hill, Kozeystad, Minnesota, KR',NULL,1230.00,71.80,0.00,0.00,'1','default',NULL,NULL,1301.80,NULL,1,'completed','2024-03-11 00:12:07','2024-03-06 00:12:06','2024-03-11 00:12:07'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Mr. Buford Cartwright Jr.','',NULL,'aufderhar.henderson@example.com','+17373230263','58876 Rafaela Stravenue, Daphnehaven, Minnesota, DK',NULL,347.00,23.60,0.00,0.00,'1','default',NULL,NULL,370.60,NULL,2,'completed','2024-03-11 00:12:07','2024-03-06 06:12:07','2024-03-11 00:12:07'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Dr. Howard Gutkowski III','',NULL,'tatum.pagac@example.net','+19182663181','2113 Koss Bridge, West Ebbafort, Vermont, ZM',NULL,173.00,11.30,0.00,0.00,'1','default',NULL,NULL,184.30,NULL,3,'completed','2024-03-11 00:12:07','2024-03-06 12:12:07','2024-03-11 00:12:07'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Mr. Leonard Swift DDS','',NULL,'customer@botble.com','+18605015730','746 Connelly Mountains Suite 695, South Norrismouth, Washington, GL',NULL,465.00,26.00,0.00,0.00,'1','default',NULL,NULL,491.00,NULL,4,'completed','2024-03-11 00:12:07','2024-03-08 04:12:07','2024-03-11 00:12:07'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Ben Lakin II','',NULL,'nicholaus.feeney@example.com','+17012794639','74024 Mayer Park, South Jillian, Virginia, AU',NULL,1430.00,57.20,0.00,0.00,'1','default',NULL,NULL,1487.20,NULL,5,'completed','2024-03-11 00:12:07','2024-02-26 16:12:07','2024-03-11 00:12:07'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Dr. Howard Gutkowski III','',NULL,'tatum.pagac@example.net','+19182663181','2113 Koss Bridge, West Ebbafort, Vermont, ZM',NULL,1185.00,65.70,0.00,0.00,'1','default',NULL,NULL,1250.70,NULL,6,'pending',NULL,'2024-03-02 06:12:08','2024-03-11 00:12:08'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Miss Claudine Pacocha Sr.','',NULL,'hsteuber@example.org','+13144627680','148 McKenzie Place Suite 932, Kesslerview, Virginia, BZ',NULL,361.00,23.60,0.00,0.00,'1','default',NULL,NULL,384.60,NULL,7,'completed','2024-03-11 00:12:08','2024-03-07 12:12:08','2024-03-11 00:12:08'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Isaiah Schoen','',NULL,'john.smith@botble.com','+14794109929','1663 Gulgowski Inlet Suite 632, East Geoffreymouth, Iowa, VG',NULL,1016.00,76.20,0.00,0.00,'1','default',NULL,NULL,1092.20,NULL,8,'completed','2024-03-11 00:12:08','2024-02-29 04:12:08','2024-03-11 00:12:08'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Isaiah Schoen','',NULL,'john.smith@botble.com','+14794109929','1663 Gulgowski Inlet Suite 632, East Geoffreymouth, Iowa, VG',NULL,1196.00,59.80,0.00,0.00,'1','default',NULL,NULL,1255.80,NULL,9,'completed','2024-03-11 00:12:08','2024-03-02 00:12:08','2024-03-11 00:12:08'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Isaiah Schoen','',NULL,'john.smith@botble.com','+14794109929','1663 Gulgowski Inlet Suite 632, East Geoffreymouth, Iowa, VG',NULL,536.00,27.55,0.00,0.00,'1','default',NULL,NULL,563.55,NULL,10,'completed','2024-03-11 00:12:08','2024-03-10 02:12:08','2024-03-11 00:12:08'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Rusty Cummings','',NULL,'newell.herman@example.net','+16787948037','32650 Quitzon Plaza, New Jerel, Minnesota, AI',NULL,550.00,30.00,0.00,0.00,'1','default',NULL,NULL,580.00,NULL,11,'completed','2024-03-11 00:12:09','2024-03-10 04:12:09','2024-03-11 00:12:09'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Mr. Lucas Sanford','',NULL,'kbruen@example.org','+17259930440','8158 Haley Extension, North Tiana, Rhode Island, MX',NULL,630.00,21.00,0.00,0.00,'1','default',NULL,NULL,651.00,NULL,12,'completed','2024-03-11 00:12:09','2024-03-05 18:12:09','2024-03-11 00:12:09'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Mr. Lucas Sanford','',NULL,'kbruen@example.org','+17259930440','8158 Haley Extension, North Tiana, Rhode Island, MX',NULL,1460.75,62.53,0.00,0.00,'1','default',NULL,NULL,1523.28,NULL,13,'completed','2024-03-11 00:12:09','2024-03-05 16:12:09','2024-03-11 00:12:09'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Bryana Waters','',NULL,'hgrady@example.net','+16824395588','156 Schulist Corner Apt. 137, Zboncakmouth, Delaware, TR',NULL,608.50,32.45,0.00,0.00,'1','default',NULL,NULL,640.95,NULL,14,'pending',NULL,'2024-03-08 02:12:09','2024-03-11 00:12:09'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Bryana Waters','',NULL,'hgrady@example.net','+16824395588','156 Schulist Corner Apt. 137, Zboncakmouth, Delaware, TR',NULL,886.00,50.20,0.00,0.00,'1','default',NULL,NULL,936.20,NULL,15,'pending',NULL,'2024-03-08 00:12:09','2024-03-11 00:12:09'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Mr. Buford Cartwright Jr.','',NULL,'aufderhar.henderson@example.com','+17373230263','58876 Rafaela Stravenue, Daphnehaven, Minnesota, DK',NULL,185.00,18.50,0.00,0.00,'1','default',NULL,NULL,203.50,NULL,16,'completed','2024-03-11 00:12:10','2024-03-08 02:12:10','2024-03-11 00:12:10'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Mr. Lucas Sanford','',NULL,'kbruen@example.org','+17259930440','8158 Haley Extension, North Tiana, Rhode Island, MX',NULL,1093.00,73.40,0.00,0.00,'1','default',NULL,NULL,1166.40,NULL,17,'pending',NULL,'2024-03-10 16:12:10','2024-03-11 00:12:10'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Mr. Leonard Swift DDS','',NULL,'customer@botble.com','+18605015730','746 Connelly Mountains Suite 695, South Norrismouth, Washington, GL',NULL,463.00,24.10,0.00,0.00,'1','default',NULL,NULL,487.10,NULL,18,'completed','2024-03-11 00:12:10','2024-03-08 12:12:10','2024-03-11 00:12:10'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Dr. Howard Gutkowski III','',NULL,'tatum.pagac@example.net','+19182663181','2113 Koss Bridge, West Ebbafort, Vermont, ZM',NULL,711.00,23.70,0.00,0.00,'1','default',NULL,NULL,734.70,NULL,19,'pending',NULL,'2024-03-10 04:12:10','2024-03-11 00:12:10'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Mr. Buford Cartwright Jr.','',NULL,'aufderhar.henderson@example.com','+17373230263','58876 Rafaela Stravenue, Daphnehaven, Minnesota, DK',NULL,696.00,35.80,0.00,0.00,'1','default',NULL,NULL,731.80,NULL,20,'completed','2024-03-11 00:12:10','2024-03-10 06:12:10','2024-03-11 00:12:10');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Dr. Lucile Cruickshank','+15673043678','rpaucek@example.net','KR','Minnesota','Kozeystad','444 Catherine Hill',1,'33660-2593','shipping_address'),(2,'Mr. Buford Cartwright Jr.','+17373230263','aufderhar.henderson@example.com','DK','Minnesota','Daphnehaven','58876 Rafaela Stravenue',2,'14198-5816','shipping_address'),(3,'Dr. Howard Gutkowski III','+19182663181','tatum.pagac@example.net','ZM','Vermont','West Ebbafort','2113 Koss Bridge',3,'73860','shipping_address'),(4,'Mr. Leonard Swift DDS','+18605015730','customer@botble.com','GL','Washington','South Norrismouth','746 Connelly Mountains Suite 695',4,'29949-7568','shipping_address'),(5,'Ben Lakin II','+17012794639','nicholaus.feeney@example.com','AU','Virginia','South Jillian','74024 Mayer Park',5,'94197-1306','shipping_address'),(6,'Dr. Howard Gutkowski III','+19182663181','tatum.pagac@example.net','ZM','Vermont','West Ebbafort','2113 Koss Bridge',6,'73860','shipping_address'),(7,'Miss Claudine Pacocha Sr.','+13144627680','hsteuber@example.org','BZ','Virginia','Kesslerview','148 McKenzie Place Suite 932',7,'99387-6332','shipping_address'),(8,'Isaiah Schoen','+14794109929','john.smith@botble.com','VG','Iowa','East Geoffreymouth','1663 Gulgowski Inlet Suite 632',8,'98048-3357','shipping_address'),(9,'Isaiah Schoen','+14794109929','john.smith@botble.com','VG','Iowa','East Geoffreymouth','1663 Gulgowski Inlet Suite 632',9,'98048-3357','shipping_address'),(10,'Isaiah Schoen','+14794109929','john.smith@botble.com','VG','Iowa','East Geoffreymouth','1663 Gulgowski Inlet Suite 632',10,'98048-3357','shipping_address'),(11,'Rusty Cummings','+16787948037','newell.herman@example.net','AI','Minnesota','New Jerel','32650 Quitzon Plaza',11,'76447-0209','shipping_address'),(12,'Mr. Lucas Sanford','+17259930440','kbruen@example.org','MX','Rhode Island','North Tiana','8158 Haley Extension',12,'50201-6720','shipping_address'),(13,'Mr. Lucas Sanford','+17259930440','kbruen@example.org','MX','Rhode Island','North Tiana','8158 Haley Extension',13,'50201-6720','shipping_address'),(14,'Bryana Waters','+16824395588','hgrady@example.net','TR','Delaware','Zboncakmouth','156 Schulist Corner Apt. 137',14,'80631-5935','shipping_address'),(15,'Bryana Waters','+16824395588','hgrady@example.net','TR','Delaware','Zboncakmouth','156 Schulist Corner Apt. 137',15,'80631-5935','shipping_address'),(16,'Mr. Buford Cartwright Jr.','+17373230263','aufderhar.henderson@example.com','DK','Minnesota','Daphnehaven','58876 Rafaela Stravenue',16,'14198-5816','shipping_address'),(17,'Mr. Lucas Sanford','+17259930440','kbruen@example.org','MX','Rhode Island','North Tiana','8158 Haley Extension',17,'50201-6720','shipping_address'),(18,'Mr. Leonard Swift DDS','+18605015730','customer@botble.com','GL','Washington','South Norrismouth','746 Connelly Mountains Suite 695',18,'29949-7568','shipping_address'),(19,'Dr. Howard Gutkowski III','+19182663181','tatum.pagac@example.net','ZM','Vermont','West Ebbafort','2113 Koss Bridge',19,'73860','shipping_address'),(20,'Mr. Buford Cartwright Jr.','+17373230263','aufderhar.henderson@example.com','DK','Minnesota','Daphnehaven','58876 Rafaela Stravenue',20,'14198-5816','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2024-03-06 00:12:06','2024-03-06 00:12:06'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2024-03-06 00:12:06','2024-03-06 00:12:06'),(3,'confirm_payment','Payment was confirmed (amount $1,301.80) by %user_name%',0,1,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2024-03-06 06:12:07','2024-03-06 06:12:07'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2024-03-06 06:12:07','2024-03-06 06:12:07'),(7,'confirm_payment','Payment was confirmed (amount $370.60) by %user_name%',0,2,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2024-03-06 12:12:07','2024-03-06 12:12:07'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2024-03-06 12:12:07','2024-03-06 12:12:07'),(12,'confirm_payment','Payment was confirmed (amount $184.30) by %user_name%',0,3,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(14,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2024-03-08 04:12:07','2024-03-08 04:12:07'),(15,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2024-03-08 04:12:07','2024-03-08 04:12:07'),(16,'confirm_payment','Payment was confirmed (amount $491.00) by %user_name%',0,4,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(17,'create_shipment','Created shipment for order',0,4,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(18,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(19,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2024-02-26 16:12:07','2024-02-26 16:12:07'),(20,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2024-02-26 16:12:07','2024-02-26 16:12:07'),(21,'confirm_payment','Payment was confirmed (amount $1,487.20) by %user_name%',0,5,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07'),(22,'create_shipment','Created shipment for order',0,5,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2024-03-02 06:12:08','2024-03-02 06:12:08'),(24,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2024-03-02 06:12:08','2024-03-02 06:12:08'),(25,'create_shipment','Created shipment for order',0,6,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(26,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2024-03-07 12:12:08','2024-03-07 12:12:08'),(27,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2024-03-07 12:12:08','2024-03-07 12:12:08'),(28,'confirm_payment','Payment was confirmed (amount $384.60) by %user_name%',0,7,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2024-02-29 04:12:08','2024-02-29 04:12:08'),(32,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2024-02-29 04:12:08','2024-02-29 04:12:08'),(33,'confirm_payment','Payment was confirmed (amount $1,092.20) by %user_name%',0,8,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(34,'create_shipment','Created shipment for order',0,8,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2024-03-02 00:12:08','2024-03-02 00:12:08'),(36,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2024-03-02 00:12:08','2024-03-02 00:12:08'),(37,'confirm_payment','Payment was confirmed (amount $1,255.80) by %user_name%',0,9,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(38,'create_shipment','Created shipment for order',0,9,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(40,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2024-03-10 02:12:08','2024-03-10 02:12:08'),(41,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2024-03-10 02:12:08','2024-03-10 02:12:08'),(42,'confirm_payment','Payment was confirmed (amount $563.55) by %user_name%',0,10,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08'),(43,'create_shipment','Created shipment for order',0,10,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(44,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(45,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2024-03-10 04:12:09','2024-03-10 04:12:09'),(46,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2024-03-10 04:12:09','2024-03-10 04:12:09'),(47,'confirm_payment','Payment was confirmed (amount $580.00) by %user_name%',0,11,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(48,'create_shipment','Created shipment for order',0,11,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(49,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2024-03-05 18:12:09','2024-03-05 18:12:09'),(50,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2024-03-05 18:12:09','2024-03-05 18:12:09'),(51,'confirm_payment','Payment was confirmed (amount $651.00) by %user_name%',0,12,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(52,'create_shipment','Created shipment for order',0,12,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(53,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(54,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2024-03-05 16:12:09','2024-03-05 16:12:09'),(55,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2024-03-05 16:12:09','2024-03-05 16:12:09'),(56,'confirm_payment','Payment was confirmed (amount $1,523.28) by %user_name%',0,13,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(57,'create_shipment','Created shipment for order',0,13,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2024-03-08 02:12:09','2024-03-08 02:12:09'),(60,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2024-03-08 02:12:09','2024-03-08 02:12:09'),(61,'create_shipment','Created shipment for order',0,14,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09'),(62,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2024-03-08 00:12:09','2024-03-08 00:12:09'),(63,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2024-03-08 00:12:09','2024-03-08 00:12:09'),(64,'create_shipment','Created shipment for order',0,15,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(65,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(66,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2024-03-08 02:12:10','2024-03-08 02:12:10'),(67,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2024-03-08 02:12:10','2024-03-08 02:12:10'),(68,'confirm_payment','Payment was confirmed (amount $203.50) by %user_name%',0,16,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(69,'create_shipment','Created shipment for order',0,16,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(70,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2024-03-10 16:12:10','2024-03-10 16:12:10'),(71,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2024-03-10 16:12:10','2024-03-10 16:12:10'),(72,'create_shipment','Created shipment for order',0,17,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(73,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2024-03-08 12:12:10','2024-03-08 12:12:10'),(75,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2024-03-08 12:12:10','2024-03-08 12:12:10'),(76,'confirm_payment','Payment was confirmed (amount $487.10) by %user_name%',0,18,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(77,'create_shipment','Created shipment for order',0,18,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(78,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(79,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2024-03-10 04:12:10','2024-03-10 04:12:10'),(80,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2024-03-10 04:12:10','2024-03-10 04:12:10'),(81,'create_shipment','Created shipment for order',0,19,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(82,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2024-03-10 06:12:10','2024-03-10 06:12:10'),(83,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2024-03-10 06:12:10','2024-03-10 06:12:10'),(84,'confirm_payment','Payment was confirmed (amount $731.80) by %user_name%',0,20,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10'),(85,'create_shipment','Created shipment for order',0,20,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(86,'update_status','Order confirmed by %user_name%',0,2,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(87,'update_status','Order confirmed by %user_name%',0,4,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(88,'update_status','Order confirmed by %user_name%',0,7,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(89,'update_status','Order confirmed by %user_name%',0,9,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(90,'update_status','Order confirmed by %user_name%',0,10,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(91,'update_status','Order confirmed by %user_name%',0,12,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(92,'update_status','Order confirmed by %user_name%',0,13,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(93,'update_status','Order confirmed by %user_name%',0,18,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,338.00,33.80,'{\"sku\":\"HS-170-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,34,'Headphone Ultra Bass','products/2.jpg',677.00,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','physical',0,NULL),(2,1,3,126.00,12.60,'{\"sku\":\"HS-120-A0-A2\",\"attributes\":\"(Color: Blue, Size: M)\"}',NULL,49,'Macbook Pro 2015 (Digital)','products/9.jpg',2610.00,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','digital',4,NULL),(3,1,1,124.00,12.40,'{\"sku\":\"HS-107-A0-A1\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,55,'Macbook Pro 13 inch','products/12-1.jpg',724.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','physical',0,NULL),(4,1,3,130.00,13.00,'{\"sku\":\"HS-136-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}',NULL,98,'Smart Televisions','products/30.jpg',1641.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','physical',0,NULL),(5,2,1,125.00,12.50,'{\"sku\":\"HS-142-A0\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,57,'Apple Keyboard (Digital)','products/13.jpg',733.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','digital',3,NULL),(6,2,2,111.00,11.10,'{\"sku\":\"HS-148-A0-A2\",\"attributes\":\"(Color: Red, Size: L)\"}',NULL,76,'Macbook Pro 2015 13 inch','products/20.jpg',1228.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','physical',0,NULL),(7,3,1,53.00,5.30,'{\"sku\":\"HS-131-A0\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,96,'Red & Black Headphone','products/28.jpg',687.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','physical',0,NULL),(8,3,2,60.00,6.00,'{\"sku\":\"HS-107-A0\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,97,'Audio Equipment (Digital)','products/29.jpg',1542.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','digital',7,NULL),(9,4,1,55.00,5.50,'{\"sku\":\"HS-173-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,42,'Camera Samsung SS-24','products/6-1.jpg',802.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','physical',0,NULL),(10,4,2,124.00,12.40,'{\"sku\":\"HS-107-A0\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,54,'Macbook Pro 13 inch','products/12.jpg',1448.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','physical',0,NULL),(11,4,1,40.50,4.05,'{\"sku\":\"HS-155-A0\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,90,'Smart Watches','products/26.jpg',791.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','physical',0,NULL),(12,4,3,40.50,4.05,'{\"sku\":\"HS-155-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,92,'Smart Watches','products/26-2.jpg',2373.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','physical',0,NULL),(13,5,3,286.00,28.60,'{\"sku\":\"HS-124-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,36,'Boxed - Bluetooth Headphone','products/3.jpg',2310.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','physical',0,NULL),(14,5,2,286.00,28.60,'{\"sku\":\"HS-124-A0-A1\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,37,'Boxed - Bluetooth Headphone','products/3-1.jpg',1540.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','physical',0,NULL),(15,6,2,349.00,34.90,'{\"sku\":\"HS-190-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,52,'Macbook Air 12 inch','products/10-1.jpg',1622.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(16,6,2,129.00,12.90,'{\"sku\":\"HS-136-A0\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,69,'Black Smart Watches','products/18.jpg',1542.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(17,6,1,129.00,12.90,'{\"sku\":\"HS-136-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,70,'Black Smart Watches','products/18-1.jpg',771.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(18,6,2,50.00,5.00,'{\"sku\":\"HS-112-A0-A2\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,102,'Samsung Smart TV','products/31.jpg',1358.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(19,7,2,125.00,12.50,'{\"sku\":\"HS-142-A0-A1\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,58,'Apple Keyboard (Digital)','products/13-1.jpg',1466.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','digital',3,NULL),(20,7,1,111.00,11.10,'{\"sku\":\"HS-148-A0-A4\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,78,'Macbook Pro 2015 13 inch','products/20.jpg',614.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(21,8,1,286.00,28.60,'{\"sku\":\"HS-124-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,36,'Boxed - Bluetooth Headphone','products/3.jpg',770.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(22,8,1,349.00,34.90,'{\"sku\":\"HS-190-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,52,'Macbook Air 12 inch','products/10-1.jpg',811.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(23,8,3,127.00,12.70,'{\"sku\":\"HS-124-A0\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,60,'Hand playstation','products/15.jpg',1773.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(24,9,2,338.00,33.80,'{\"sku\":\"HS-170-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,35,'Headphone Ultra Bass','products/2-1.jpg',1354.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(25,9,2,129.00,12.90,'{\"sku\":\"HS-136-A0-A2\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,71,'Black Smart Watches','products/18-2.jpg',1542.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(26,9,2,111.00,11.10,'{\"sku\":\"HS-148-A0-A1\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,75,'Macbook Pro 2015 13 inch','products/20-1.jpg',1228.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(27,9,2,20.00,2.00,'{\"sku\":\"HS-187-A0-A2\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,95,'Beat Headphone','products/27.jpg',1224.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(28,10,3,110.00,11.00,'{\"sku\":\"HS-194-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,46,'Apple iPhone 13 Plus','products/8.jpg',2460.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(29,10,1,125.00,12.50,'{\"sku\":\"HS-142-A0-A1\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,58,'Apple Keyboard (Digital)','products/13-1.jpg',733.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','digital',6,NULL),(30,10,2,40.50,4.05,'{\"sku\":\"HS-155-A0-A1\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,91,'Smart Watches','products/26-1.jpg',1582.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','physical',0,NULL),(31,11,2,130.00,13.00,'{\"sku\":\"HS-176-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,62,'Apple Airpods Serial 3','products/16.jpg',1368.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(32,11,2,120.00,12.00,'{\"sku\":\"HS-158-A0\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,79,'Historic Alarm Clock (Digital)','products/21.jpg',1178.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','digital',2,NULL),(33,11,1,50.00,5.00,'{\"sku\":\"HS-112-A0-A1\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,101,'Samsung Smart TV','products/31-1.jpg',679.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(34,12,3,81.00,8.10,'{\"sku\":\"HS-115-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,39,'Chikie - Bluetooth Speaker','products/4-1.jpg',2694.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(35,12,3,129.00,12.90,'{\"sku\":\"HS-152-A0-A1\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,81,'Black Glasses','products/22-1.jpg',2532.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(36,13,2,286.00,28.60,'{\"sku\":\"HS-124-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,36,'Boxed - Bluetooth Headphone','products/3.jpg',1540.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(37,13,3,130.00,13.00,'{\"sku\":\"HS-176-A0-A3\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,65,'Apple Airpods Serial 3','products/16.jpg',2052.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(38,13,2,129.00,12.90,'{\"sku\":\"HS-152-A0-A1\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,81,'Black Glasses','products/22-1.jpg',1688.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(39,13,3,80.25,8.03,'{\"sku\":\"HS-131-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,88,'Dual Camera 20MP (Digital)','products/25-1.jpg',2496.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','digital',2,NULL),(40,14,2,43.00,4.30,'{\"sku\":\"HS-111-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,40,'Camera Hikvision HK-35VS8 (Digital)','products/5.jpg',1098.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','digital',9,NULL),(41,14,2,111.00,11.10,'{\"sku\":\"HS-148-A0\",\"attributes\":\"(Color: Blue, Size: M)\"}',NULL,74,'Macbook Pro 2015 13 inch','products/20.jpg',1228.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(42,14,1,40.50,4.05,'{\"sku\":\"HS-155-A0\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,90,'Smart Watches','products/26.jpg',791.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(43,14,2,130.00,13.00,'{\"sku\":\"HS-136-A0\",\"attributes\":\"(Size: S, Color: Brown)\"}',NULL,98,'Smart Televisions','products/30.jpg',1094.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(44,15,2,384.00,38.40,'{\"sku\":\"HS-187-A0\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,32,'Smart Home Speaker (Digital)','products/1.jpg',1582.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','digital',3,NULL),(45,15,1,118.00,11.80,'{\"sku\":\"HS-122-A0\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,72,'Leather Watch Band Serial 3','products/19.jpg',770.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','physical',0,NULL),(46,16,1,55.00,5.50,'{\"sku\":\"HS-173-A0-A2\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,43,'Camera Samsung SS-24','products/6.jpg',802.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','physical',0,NULL),(47,16,1,130.00,13.00,'{\"sku\":\"HS-176-A0-A2\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,64,'Apple Airpods Serial 3','products/16.jpg',684.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','physical',0,NULL),(48,17,1,384.00,38.40,'{\"sku\":\"HS-187-A0\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,32,'Smart Home Speaker (Digital)','products/1.jpg',791.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','digital',0,NULL),(49,17,1,111.00,11.10,'{\"sku\":\"HS-149-A0\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,66,'Cool Smart Watches (Digital)','products/17.jpg',803.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','digital',10,NULL),(50,17,3,120.00,12.00,'{\"sku\":\"HS-158-A0\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,79,'Historic Alarm Clock (Digital)','products/21.jpg',1767.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','digital',5,NULL),(51,17,2,119.00,11.90,'{\"sku\":\"HS-136-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,86,'Gaming Keyboard','products/24.jpg',1766.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','physical',0,NULL),(52,18,1,130.00,13.00,'{\"sku\":\"HS-148-A0-A1\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,45,'Leather Watch Band','products/7-1.jpg',583.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','physical',0,NULL),(53,18,3,111.00,11.10,'{\"sku\":\"HS-148-A0-A1\",\"attributes\":\"(Color: Blue, Size: XL)\"}',NULL,75,'Macbook Pro 2015 13 inch','products/20-1.jpg',1842.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','physical',0,NULL),(54,19,3,81.00,8.10,'{\"sku\":\"HS-115-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,39,'Chikie - Bluetooth Speaker','products/4-1.jpg',2694.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','physical',0,NULL),(55,19,3,43.00,4.30,'{\"sku\":\"HS-111-A0\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,40,'Camera Hikvision HK-35VS8 (Digital)','products/5.jpg',1647.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','digital',4,NULL),(56,19,3,113.00,11.30,'{\"sku\":\"HS-154-A0\",\"attributes\":\"(Size: S, Color: Red)\"}',NULL,59,'MacSafe 80W','products/14.jpg',2253.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','physical',0,NULL),(57,20,2,338.00,33.80,'{\"sku\":\"HS-170-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,34,'Headphone Ultra Bass','products/2.jpg',1354.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','physical',0,NULL),(58,20,1,20.00,2.00,'{\"sku\":\"HS-187-A0\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,93,'Beat Headphone','products/27.jpg',612.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',4,'1','default','pending',1301.80,71.80,0.00,NULL,NULL,0.00,1230.00,1,NULL,1,NULL,'1IrcHq0uVs7S9tEuTxkN0hzmYLsLT',1,'2024-03-06 00:12:06','2024-03-11 00:12:07',NULL),(2,'#10000002',7,'1','default','completed',370.60,23.60,0.00,NULL,NULL,0.00,347.00,1,NULL,1,'2024-03-11 00:12:11','wj9mo0zhNK8OWCTQMQZZhfqaAyII2',2,'2024-03-06 06:12:07','2024-03-11 00:12:11',NULL),(3,'#10000003',6,'1','default','pending',184.30,11.30,0.00,NULL,NULL,0.00,173.00,1,NULL,1,NULL,'zynwpyTVLlZtGFLqswT0FRzsAoZXM',3,'2024-03-06 12:12:07','2024-03-11 00:12:07',NULL),(4,'#10000004',1,'1','default','completed',491.00,26.00,0.00,NULL,NULL,0.00,465.00,1,NULL,1,'2024-03-11 00:12:11','8FXwTBwxUcWMK4z7xlRF2YCUqdBY1',4,'2024-03-08 04:12:07','2024-03-11 00:12:11',NULL),(5,'#10000005',3,'1','default','pending',1487.20,57.20,0.00,NULL,NULL,0.00,1430.00,1,NULL,1,NULL,'qbC3rSW58bgvPmAp85RS6gJFzrYnK',5,'2024-02-26 16:12:07','2024-03-11 00:12:07',NULL),(6,'#10000006',6,'1','default','pending',1250.70,65.70,0.00,NULL,NULL,0.00,1185.00,1,NULL,1,NULL,'2BroQ2p4tAd9R9sEnPP4KyUVs6Dvf',6,'2024-03-02 06:12:08','2024-03-11 00:12:08',NULL),(7,'#10000007',8,'1','default','completed',384.60,23.60,0.00,NULL,NULL,0.00,361.00,1,NULL,1,'2024-03-11 00:12:11','mTIchq4GsbFbpTyC3Avgf0ZMFZti1',7,'2024-03-07 12:12:08','2024-03-11 00:12:11',NULL),(8,'#10000008',2,'1','default','pending',1092.20,76.20,0.00,NULL,NULL,0.00,1016.00,1,NULL,1,NULL,'Z2QKdfnHvcqAZ1rOOI0gEcrka2V5e',8,'2024-02-29 04:12:08','2024-03-11 00:12:08',NULL),(9,'#10000009',2,'1','default','completed',1255.80,59.80,0.00,NULL,NULL,0.00,1196.00,1,NULL,1,'2024-03-11 00:12:11','Jtfl7D93Vv69fCkuc1Hk0J9okRZlc',9,'2024-03-02 00:12:08','2024-03-11 00:12:11',NULL),(10,'#10000010',2,'1','default','completed',563.55,27.55,0.00,NULL,NULL,0.00,536.00,1,NULL,1,'2024-03-11 00:12:11','YetLCSE9aKiyHa8o3v10qoHeLhp6V',10,'2024-03-10 02:12:08','2024-03-11 00:12:11',NULL),(11,'#10000011',5,'1','default','pending',580.00,30.00,0.00,NULL,NULL,0.00,550.00,1,NULL,1,NULL,'XWUHsuaGPG2J8ClI45r5pPxKfILeQ',11,'2024-03-10 04:12:09','2024-03-11 00:12:09',NULL),(12,'#10000012',10,'1','default','completed',651.00,21.00,0.00,NULL,NULL,0.00,630.00,1,NULL,1,'2024-03-11 00:12:11','GJiKf5e5IM0fAfwNazwXcjpic2zdW',12,'2024-03-05 18:12:09','2024-03-11 00:12:11',NULL),(13,'#10000013',10,'1','default','completed',1523.28,62.53,0.00,NULL,NULL,0.00,1460.75,1,NULL,1,'2024-03-11 00:12:11','LmdOypJFVjzMi90wVawOsYaEYgT8n',13,'2024-03-05 16:12:09','2024-03-11 00:12:11',NULL),(14,'#10000014',9,'1','default','pending',640.95,32.45,0.00,NULL,NULL,0.00,608.50,1,NULL,1,NULL,'0mYMuvBhyW6zFjjKX12hvnafyCfTJ',14,'2024-03-08 02:12:09','2024-03-11 00:12:09',NULL),(15,'#10000015',9,'1','default','completed',936.20,50.20,0.00,NULL,NULL,0.00,886.00,1,NULL,1,'2024-03-11 00:12:10','cduFuNVMEVxRZf0zzpoqopghTIIqf',15,'2024-03-08 00:12:09','2024-03-11 00:12:10',NULL),(16,'#10000016',7,'1','default','pending',203.50,18.50,0.00,NULL,NULL,0.00,185.00,1,NULL,1,NULL,'zPchi237IlfYSQKEvuWL2hMSzYV0J',16,'2024-03-08 02:12:10','2024-03-11 00:12:10',NULL),(17,'#10000017',10,'1','default','completed',1166.40,73.40,0.00,NULL,NULL,0.00,1093.00,1,NULL,1,'2024-03-11 00:12:10','rmbpZ0k22BITqsiDLe22GvMD8y4sA',17,'2024-03-10 16:12:10','2024-03-11 00:12:10',NULL),(18,'#10000018',1,'1','default','completed',487.10,24.10,0.00,NULL,NULL,0.00,463.00,1,NULL,1,'2024-03-11 00:12:11','ISYfZER3PgeFuSqq0T7klfRZ9SbQQ',18,'2024-03-08 12:12:10','2024-03-11 00:12:11',NULL),(19,'#10000019',6,'1','default','pending',734.70,23.70,0.00,NULL,NULL,0.00,711.00,1,NULL,1,NULL,'FZ8dg7sFqujqX5NUTKFxYD7WxFy6U',19,'2024-03-10 04:12:10','2024-03-11 00:12:10',NULL),(20,'#10000020',7,'1','default','pending',731.80,35.80,0.00,NULL,NULL,0.00,696.00,1,NULL,1,NULL,'RWcF31JRIXFNtXYOeIcUfyIcYkBhC',20,'2024-03-10 06:12:10','2024-03-11 00:12:10',NULL);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-03-11 00:11:56','2024-03-11 00:11:56',1),(2,'Size','size','text',1,1,1,'published',1,'2024-03-11 00:11:56','2024-03-11 00:11:56',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-03-11 00:11:56','2024-03-11 00:11:56'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-03-11 00:11:56','2024-03-11 00:11:56'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-03-11 00:11:56','2024-03-11 00:11:56'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-03-11 00:11:56','2024-03-11 00:11:56'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-03-11 00:11:56','2024-03-11 00:11:56'),(6,2,'S','s',NULL,NULL,1,1,'2024-03-11 00:11:56','2024-03-11 00:11:56'),(7,2,'M','m',NULL,NULL,0,2,'2024-03-11 00:11:56','2024-03-11 00:11:56'),(8,2,'L','l',NULL,NULL,0,3,'2024-03-11 00:11:56','2024-03-11 00:11:56'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-03-11 00:11:56','2024-03-11 00:11:56'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-03-11 00:11:56','2024-03-11 00:11:56');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Television',0,NULL,'published',0,'product-categories/p-1.png',1,'2024-03-11 00:11:55','2024-03-11 00:11:55','flaticon-tv',NULL),(2,'Home Audio & Theaters',1,NULL,'published',0,NULL,0,'2024-03-11 00:11:55','2024-03-11 00:11:55',NULL,NULL),(3,'TV & Videos',1,NULL,'published',1,NULL,0,'2024-03-11 00:11:55','2024-03-11 00:11:55',NULL,NULL),(4,'Camera, Photos & Videos',1,NULL,'published',2,NULL,0,'2024-03-11 00:11:55','2024-03-11 00:11:55',NULL,NULL),(5,'Cellphones & Accessories',1,NULL,'published',3,NULL,0,'2024-03-11 00:11:55','2024-03-11 00:11:55',NULL,NULL),(6,'Headphones',1,NULL,'published',4,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(7,'Videos games',1,NULL,'published',5,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(8,'Wireless Speakers',1,NULL,'published',6,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(9,'Office Electronic',1,NULL,'published',7,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(10,'Mobile',0,NULL,'published',1,'product-categories/p-2.png',1,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-responsive',NULL),(11,'Digital Cables',10,NULL,'published',0,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(12,'Audio & Video Cables',10,NULL,'published',1,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(13,'Batteries',10,NULL,'published',2,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(14,'Headphone',0,NULL,'published',2,'product-categories/p-3.png',1,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-headphones',NULL),(15,'Computer & Tablets',14,NULL,'published',0,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(16,'Laptop',14,NULL,'published',1,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(17,'Monitors',14,NULL,'published',2,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(18,'Computer Components',14,NULL,'published',3,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(19,'Watches',0,NULL,'published',3,'product-categories/p-4.png',1,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-watch',NULL),(20,'Drive & Storages',19,NULL,'published',0,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(21,'Gaming Laptop',19,NULL,'published',1,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(22,'Security & Protection',19,NULL,'published',2,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(23,'Accessories',19,NULL,'published',3,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL,NULL),(24,'Game',0,NULL,'published',4,'product-categories/p-5.png',1,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-console',NULL),(25,'Camera',0,NULL,'published',5,'product-categories/p-6.png',1,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-camera',NULL),(26,'Audio',0,NULL,'published',6,'product-categories/p-7.png',1,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-music-system',NULL),(27,'Mobile & Tablet',0,NULL,'published',7,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-responsive',NULL),(28,'Accessories',0,NULL,'published',8,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-plugins',NULL),(29,'Home Audio & Theater',0,NULL,'published',9,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-music-system',NULL),(30,'Tv & Smart Box',0,NULL,'published',10,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-monitor',NULL),(31,'Printer',0,NULL,'published',11,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-printer',NULL),(32,'Computer',0,NULL,'published',12,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-tv',NULL),(33,'Fax Machine',0,NULL,'published',13,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-fax',NULL),(34,'Mouse',0,NULL,'published',14,NULL,0,'2024-03-11 00:11:56','2024-03-11 00:11:56','flaticon-mouse',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,4),(1,20),(2,22),(3,27),(4,15),(4,30),(5,3),(5,24),(6,21),(7,2),(7,6),(7,26),(7,29),(8,5),(8,11),(8,12),(8,23),(9,7),(9,8),(9,13),(9,14),(9,18),(10,17),(10,19),(10,25),(11,10),(11,28),(11,31),(12,16),(14,1),(14,9);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,5),(1,7),(1,10),(1,18),(1,19),(1,21),(1,23),(2,1),(2,3),(2,6),(2,8),(2,11),(2,12),(2,13),(2,15),(2,17),(2,22),(2,25),(2,26),(2,28),(2,30),(3,2),(3,4),(3,9),(3,14),(3,16),(3,20),(3,24),(3,27),(3,29),(3,31);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-03-11 00:11:56','2024-03-11 00:11:56',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-03-11 00:11:56','2024-03-11 00:11:56',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-03-11 00:11:56','2024-03-11 00:11:56',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,2,0,0.00,'fixed',1),(1,3,0,0.00,'fixed',1),(1,22,0,0.00,'fixed',1),(1,27,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,11,0,0.00,'fixed',1),(2,13,0,0.00,'fixed',1),(2,17,0,0.00,'fixed',1),(3,1,0,0.00,'fixed',1),(3,20,0,0.00,'fixed',1),(3,22,0,0.00,'fixed',1),(3,31,0,0.00,'fixed',1),(4,3,0,0.00,'fixed',1),(4,26,0,0.00,'fixed',1),(4,27,0,0.00,'fixed',1),(4,31,0,0.00,'fixed',1),(5,3,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,29,0,0.00,'fixed',1),(5,31,0,0.00,'fixed',1),(6,7,0,0.00,'fixed',1),(6,8,0,0.00,'fixed',1),(6,12,0,0.00,'fixed',1),(6,28,0,0.00,'fixed',1),(7,1,0,0.00,'fixed',1),(7,14,0,0.00,'fixed',1),(7,22,0,0.00,'fixed',1),(7,23,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(8,25,0,0.00,'fixed',1),(8,30,0,0.00,'fixed',1),(8,31,0,0.00,'fixed',1),(9,12,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(9,21,0,0.00,'fixed',1),(9,27,0,0.00,'fixed',1),(10,19,0,0.00,'fixed',1),(10,22,0,0.00,'fixed',1),(10,23,0,0.00,'fixed',1),(10,28,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,10,0,0.00,'fixed',1),(11,14,0,0.00,'fixed',1),(11,25,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,18,0,0.00,'fixed',1),(12,23,0,0.00,'fixed',1),(12,28,0,0.00,'fixed',1),(13,5,0,0.00,'fixed',1),(13,17,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(13,22,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,5,0,0.00,'fixed',1),(14,19,0,0.00,'fixed',1),(14,27,0,0.00,'fixed',1),(15,4,0,0.00,'fixed',1),(15,22,0,0.00,'fixed',1),(15,25,0,0.00,'fixed',1),(15,27,0,0.00,'fixed',1),(16,19,0,0.00,'fixed',1),(16,22,0,0.00,'fixed',1),(16,23,0,0.00,'fixed',1),(16,27,0,0.00,'fixed',1),(17,4,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,21,0,0.00,'fixed',1),(17,28,0,0.00,'fixed',1),(18,2,0,0.00,'fixed',1),(18,3,0,0.00,'fixed',1),(18,12,0,0.00,'fixed',1),(18,30,0,0.00,'fixed',1),(19,8,0,0.00,'fixed',1),(19,18,0,0.00,'fixed',1),(19,24,0,0.00,'fixed',1),(19,30,0,0.00,'fixed',1),(20,12,0,0.00,'fixed',1),(20,14,0,0.00,'fixed',1),(20,22,0,0.00,'fixed',1),(20,23,0,0.00,'fixed',1),(21,1,0,0.00,'fixed',1),(21,4,0,0.00,'fixed',1),(21,29,0,0.00,'fixed',1),(22,4,0,0.00,'fixed',1),(22,13,0,0.00,'fixed',1),(22,14,0,0.00,'fixed',1),(22,17,0,0.00,'fixed',1),(23,2,0,0.00,'fixed',1),(23,3,0,0.00,'fixed',1),(23,12,0,0.00,'fixed',1),(23,21,0,0.00,'fixed',1),(24,5,0,0.00,'fixed',1),(24,8,0,0.00,'fixed',1),(24,13,0,0.00,'fixed',1),(24,31,0,0.00,'fixed',1),(25,8,0,0.00,'fixed',1),(25,9,0,0.00,'fixed',1),(25,15,0,0.00,'fixed',1),(25,30,0,0.00,'fixed',1),(26,19,0,0.00,'fixed',1),(26,22,0,0.00,'fixed',1),(26,30,0,0.00,'fixed',1),(27,4,0,0.00,'fixed',1),(27,14,0,0.00,'fixed',1),(27,15,0,0.00,'fixed',1),(27,21,0,0.00,'fixed',1),(28,4,0,0.00,'fixed',1),(28,12,0,0.00,'fixed',1),(28,15,0,0.00,'fixed',1),(28,19,0,0.00,'fixed',1),(29,4,0,0.00,'fixed',1),(29,6,0,0.00,'fixed',1),(29,16,0,0.00,'fixed',1),(29,17,0,0.00,'fixed',1),(30,4,0,0.00,'fixed',1),(30,13,0,0.00,'fixed',1),(30,31,0,0.00,'fixed',1),(31,18,0,0.00,'fixed',1),(31,26,0,0.00,'fixed',1),(31,27,0,0.00,'fixed',1),(31,28,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,32,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(2,32,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(3,32,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(4,32,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(5,33,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(6,33,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(7,33,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(8,33,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(9,40,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(10,40,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(11,40,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(12,40,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(13,47,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(14,47,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(15,48,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(16,48,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(17,49,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(18,49,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:04\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:04','2024-03-11 00:12:04'),(19,50,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(20,50,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(21,57,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(22,57,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(23,58,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(24,58,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(25,66,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(26,67,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(27,68,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(28,79,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(29,79,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(30,87,'product-files/25.jpg','{\"filename\":\"25.jpg\",\"url\":\"product-files\\/25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"25\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(31,87,'product-files/25-1.jpg','{\"filename\":\"25-1.jpg\",\"url\":\"product-files\\/25-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"25-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(32,88,'product-files/25.jpg','{\"filename\":\"25.jpg\",\"url\":\"product-files\\/25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"25\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(33,88,'product-files/25-1.jpg','{\"filename\":\"25-1.jpg\",\"url\":\"product-files\\/25-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"25-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(34,89,'product-files/25.jpg','{\"filename\":\"25.jpg\",\"url\":\"product-files\\/25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"25\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(35,89,'product-files/25-1.jpg','{\"filename\":\"25-1.jpg\",\"url\":\"product-files\\/25-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:05\",\"name\":\"25-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:05','2024-03-11 00:12:05'),(36,97,'product-files/29.jpg','{\"filename\":\"29.jpg\",\"url\":\"product-files\\/29.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:06\",\"name\":\"29\",\"extension\":\"jpg\"}','2024-03-11 00:12:06','2024-03-11 00:12:06'),(37,97,'product-files/29-1.jpg','{\"filename\":\"29-1.jpg\",\"url\":\"product-files\\/29-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-03-11 07:12:06\",\"name\":\"29-1\",\"extension\":\"jpg\"}','2024-03-11 00:12:06','2024-03-11 00:12:06');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,12),(1,30),(2,6),(2,27),(3,3),(3,9),(3,15),(3,18),(3,21),(3,24);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-03-11 00:11:56','2024-03-11 00:11:56'),(2,'New','#02856e','published','2024-03-11 00:11:56','2024-03-11 00:11:56'),(3,'Sale','#fe9931','published','2024-03-11 00:11:56','2024-03-11 00:11:56');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,4),(1,6),(2,1),(2,2),(2,5),(3,1),(3,3),(3,4),(4,3),(4,4),(5,1),(5,3),(6,1),(6,4),(6,6),(7,1),(7,5),(8,2),(8,4),(8,6),(9,1),(9,2),(9,3),(10,1),(10,2),(10,6),(11,3),(11,4),(11,5),(12,2),(12,6),(13,2),(13,4),(13,5),(14,4),(15,2),(15,3),(15,6),(16,1),(16,2),(16,3),(17,1),(18,3),(18,4),(19,1),(19,2),(19,3),(20,3),(20,4),(21,2),(22,1),(22,4),(22,5),(23,2),(23,5),(24,4),(24,5),(25,1),(25,2),(25,6),(26,3),(26,5),(26,6),(27,1),(27,2),(28,4),(28,5),(29,2),(29,5),(29,6),(30,4),(30,5),(31,2),(31,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-03-11 00:12:06','2024-03-11 00:12:06'),(2,'Mobile',NULL,'published','2024-03-11 00:12:06','2024-03-11 00:12:06'),(3,'Iphone',NULL,'published','2024-03-11 00:12:06','2024-03-11 00:12:06'),(4,'Printer',NULL,'published','2024-03-11 00:12:06','2024-03-11 00:12:06'),(5,'Office',NULL,'published','2024-03-11 00:12:06','2024-03-11 00:12:06'),(6,'IT',NULL,'published','2024-03-11 00:12:06','2024-03-11 00:12:06');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (21,1,11),(53,1,27),(67,1,34),(75,1,38),(83,1,42),(95,1,48),(97,1,49),(101,1,51),(105,1,53),(111,1,56),(119,1,60),(129,1,65),(131,1,66),(141,1,71),(3,2,2),(11,2,6),(19,2,10),(23,2,12),(25,2,13),(29,2,15),(33,2,17),(35,2,18),(61,2,31),(63,2,32),(71,2,36),(85,2,43),(87,2,44),(91,2,46),(103,2,52),(109,2,55),(135,2,68),(139,2,70),(7,3,4),(15,3,8),(41,3,21),(51,3,26),(55,3,28),(59,3,30),(77,3,39),(79,3,40),(89,3,45),(93,3,47),(99,3,50),(107,3,54),(117,3,59),(125,3,63),(127,3,64),(1,4,1),(9,4,5),(13,4,7),(17,4,9),(31,4,16),(37,4,19),(39,4,20),(43,4,22),(45,4,23),(47,4,24),(49,4,25),(57,4,29),(69,4,35),(113,4,57),(121,4,61),(137,4,69),(5,5,3),(27,5,14),(65,5,33),(73,5,37),(81,5,41),(115,5,58),(123,5,62),(133,5,67),(2,6,1),(30,6,15),(38,6,19),(48,6,24),(50,6,25),(56,6,28),(70,6,35),(96,6,48),(100,6,50),(120,6,60),(126,6,63),(128,6,64),(134,6,67),(6,7,3),(14,7,7),(20,7,10),(22,7,11),(26,7,13),(36,7,18),(66,7,33),(84,7,42),(86,7,43),(94,7,47),(114,7,57),(136,7,68),(138,7,69),(28,8,14),(32,8,16),(46,8,23),(52,8,26),(60,8,30),(62,8,31),(72,8,36),(76,8,38),(82,8,41),(90,8,45),(92,8,46),(98,8,49),(102,8,51),(106,8,53),(108,8,54),(110,8,55),(112,8,56),(116,8,58),(142,8,71),(8,9,4),(16,9,8),(40,9,20),(42,9,21),(58,9,29),(64,9,32),(88,9,44),(118,9,59),(122,9,61),(124,9,62),(130,9,65),(4,10,2),(10,10,5),(12,10,6),(18,10,9),(24,10,12),(34,10,17),(44,10,22),(54,10,27),(68,10,34),(74,10,37),(78,10,39),(80,10,40),(104,10,52),(132,10,66),(140,10,70);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,32,1,1),(2,33,1,0),(3,34,2,1),(4,35,2,0),(5,36,3,1),(6,37,3,0),(7,38,4,1),(8,39,4,0),(9,40,5,1),(10,41,6,1),(11,42,6,0),(12,43,6,0),(13,44,7,1),(14,45,7,0),(15,46,8,1),(16,47,9,1),(17,48,9,0),(18,49,9,0),(19,50,9,0),(20,51,10,1),(21,52,10,0),(22,53,11,1),(23,54,12,1),(24,55,12,0),(25,56,12,0),(26,57,13,1),(27,58,13,0),(28,59,14,1),(29,60,15,1),(30,61,15,0),(31,62,16,1),(32,63,16,0),(33,64,16,0),(34,65,16,0),(35,66,17,1),(36,67,17,0),(37,68,17,0),(38,69,18,1),(39,70,18,0),(40,71,18,0),(41,72,19,1),(42,73,19,0),(43,74,20,1),(44,75,20,0),(45,76,20,0),(46,77,20,0),(47,78,20,0),(48,79,21,1),(49,80,22,1),(50,81,22,0),(51,82,22,0),(52,83,23,1),(53,84,23,0),(54,85,23,0),(55,86,24,1),(56,87,25,1),(57,88,25,0),(58,89,25,0),(59,90,26,1),(60,91,26,0),(61,92,26,0),(62,93,27,1),(63,94,27,0),(64,95,27,0),(65,96,28,1),(66,97,29,1),(67,98,30,1),(68,99,30,0),(69,100,31,1),(70,101,31,0),(71,102,31,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-03-11',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0),(1,25,0),(2,25,0),(1,26,0),(2,26,0),(1,27,0),(2,27,0),(1,28,0),(2,28,0),(1,29,0),(2,29,0),(1,30,0),(2,30,0),(1,31,0),(2,31,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]','HS-187-A0',0,13,0,1,1,1,0,0,384,NULL,NULL,NULL,20.00,20.00,12.00,791.00,1,148704,'2024-03-11 00:12:03','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','HS-170-A0',0,12,0,1,1,6,0,0,338,NULL,NULL,NULL,16.00,13.00,10.00,677.00,1,40674,'2024-03-11 00:12:03','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]','HS-124-A0',0,13,0,1,1,6,0,0,286,NULL,NULL,NULL,14.00,10.00,12.00,770.00,1,18974,'2024-03-11 00:12:03','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(4,'Chikie - Bluetooth Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','HS-115-A0',0,18,0,1,1,3,0,0,81,59.13,NULL,NULL,12.00,16.00,17.00,898.00,1,172374,'2024-03-11 00:12:03','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(5,'Camera Hikvision HK-35VS8 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','HS-111-A0',0,13,0,1,1,5,0,0,43,NULL,NULL,NULL,14.00,19.00,11.00,549.00,1,40963,'2024-03-11 00:12:03','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-173-A0',0,13,0,1,1,1,0,0,55,NULL,NULL,NULL,15.00,19.00,17.00,802.00,1,55515,'2024-03-11 00:12:03','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-148-A0',0,15,0,1,1,5,0,0,130,NULL,NULL,NULL,10.00,11.00,14.00,583.00,1,15362,'2024-03-11 00:12:03','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(8,'Apple iPhone 13 Plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-194-A0',0,15,0,1,1,6,0,0,110,97.9,NULL,NULL,17.00,20.00,10.00,820.00,1,189067,'2024-03-11 00:12:03','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(9,'Macbook Pro 2015 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-120-A0',0,11,0,1,1,6,0,0,126,NULL,NULL,NULL,20.00,19.00,18.00,870.00,1,113300,'2024-03-11 00:12:03','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-190-A0',0,14,0,1,1,2,0,0,349,NULL,NULL,NULL,13.00,19.00,15.00,811.00,1,27437,'2024-03-11 00:12:03','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-158-A0',0,19,0,1,1,7,0,0,127,NULL,NULL,NULL,15.00,15.00,12.00,822.00,1,70708,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(12,'Macbook Pro 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-107-A0',0,11,0,1,1,6,0,0,124,102.92,NULL,NULL,12.00,12.00,14.00,724.00,1,199561,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(13,'Apple Keyboard (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-142-A0',0,12,0,1,1,4,0,0,125,NULL,NULL,NULL,15.00,10.00,20.00,733.00,1,188365,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-154-A0',0,17,0,1,1,1,0,0,113,NULL,NULL,NULL,17.00,20.00,20.00,751.00,1,175022,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-124-A0',0,18,0,1,1,7,0,0,127,NULL,NULL,NULL,17.00,11.00,16.00,591.00,1,61391,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(16,'Apple Airpods Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','HS-176-A0',0,13,0,1,1,7,0,0,130,94.9,NULL,NULL,17.00,19.00,15.00,684.00,1,123922,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(17,'Cool Smart Watches (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\"]','HS-149-A0',0,17,0,1,1,4,0,0,111,NULL,NULL,NULL,16.00,11.00,18.00,803.00,1,81160,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]','HS-136-A0',0,11,0,1,1,3,0,0,129,NULL,NULL,NULL,12.00,10.00,13.00,771.00,1,52566,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-122-A0',0,15,0,1,1,1,0,0,118,NULL,NULL,NULL,13.00,20.00,20.00,770.00,1,139874,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(20,'Macbook Pro 2015 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-148-A0',0,10,0,1,1,7,0,0,111,85.47,NULL,NULL,11.00,11.00,18.00,614.00,1,127007,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(21,'Historic Alarm Clock (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-158-A0',0,16,0,1,1,1,0,0,120,NULL,NULL,NULL,15.00,12.00,20.00,589.00,1,49563,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-152-A0',0,17,0,1,1,5,0,0,129,NULL,NULL,NULL,15.00,15.00,13.00,844.00,1,130996,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-108-A0',0,16,0,1,1,5,0,0,117,NULL,NULL,NULL,12.00,20.00,13.00,670.00,1,54105,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(24,'Gaming Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-136-A0',0,18,0,1,1,5,0,0,119,102.34,NULL,NULL,10.00,16.00,16.00,883.00,1,198459,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(25,'Dual Camera 20MP (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25.jpg\",\"products\\/25-1.jpg\"]','HS-131-A0',0,16,0,1,0,3,0,0,80.25,NULL,NULL,NULL,16.00,14.00,11.00,832.00,1,61227,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(26,'Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26.jpg\",\"products\\/26-1.jpg\",\"products\\/26-2.jpg\"]','HS-155-A0',0,16,0,1,0,7,0,0,40.5,NULL,NULL,NULL,14.00,17.00,10.00,791.00,1,128229,'2024-03-11 00:12:04','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(27,'Beat Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27.jpg\",\"products\\/27-1.jpg\"]','HS-187-A0',0,15,0,1,0,4,0,0,20,NULL,NULL,NULL,18.00,19.00,12.00,612.00,1,107380,'2024-03-11 00:12:04','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(28,'Red &amp; Black Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28.jpg\",\"products\\/28-1.jpg\"]','HS-131-A0',0,20,0,1,0,1,0,0,53,39.22,NULL,NULL,11.00,13.00,15.00,687.00,1,86080,'2024-03-11 00:12:04','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(29,'Audio Equipment (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29.jpg\",\"products\\/29-1.jpg\"]','HS-107-A0',0,19,0,1,0,4,0,0,60,NULL,NULL,NULL,10.00,11.00,10.00,771.00,1,171921,'2024-03-11 00:12:04','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(30,'Smart Televisions','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30.jpg\",\"products\\/30-1.jpg\"]','HS-136-A0',0,19,0,1,0,3,0,0,130,NULL,NULL,NULL,14.00,18.00,12.00,547.00,1,193394,'2024-03-11 00:12:04','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(31,'Samsung Smart TV','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31.jpg\",\"products\\/31-1.jpg\"]','HS-112-A0',0,13,0,1,0,4,0,0,50,NULL,NULL,NULL,16.00,13.00,13.00,679.00,1,35373,'2024-03-11 00:12:04','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(32,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-187-A0',0,13,0,1,0,1,1,0,384,NULL,NULL,NULL,20.00,20.00,12.00,791.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(33,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-187-A0-A1',0,13,0,1,0,1,1,0,384,NULL,NULL,NULL,20.00,20.00,12.00,791.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(34,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-170-A0',0,12,0,1,0,6,1,0,338,NULL,NULL,NULL,16.00,13.00,10.00,677.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(35,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-170-A0-A1',0,12,0,1,0,6,1,0,338,NULL,NULL,NULL,16.00,13.00,10.00,677.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(36,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-124-A0',0,13,0,1,0,6,1,0,286,NULL,NULL,NULL,14.00,10.00,12.00,770.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(37,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-124-A0-A1',0,13,0,1,0,6,1,0,286,NULL,NULL,NULL,14.00,10.00,12.00,770.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(38,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-115-A0',0,18,0,1,0,3,1,0,81,59.13,NULL,NULL,12.00,16.00,17.00,898.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(39,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-115-A0-A1',0,18,0,1,0,3,1,0,81,68.04,NULL,NULL,12.00,16.00,17.00,898.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(40,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-111-A0',0,13,0,1,0,5,1,0,43,NULL,NULL,NULL,14.00,19.00,11.00,549.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(41,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-173-A0',0,13,0,1,0,1,1,0,55,NULL,NULL,NULL,15.00,19.00,17.00,802.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(42,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-173-A0-A1',0,13,0,1,0,1,1,0,55,NULL,NULL,NULL,15.00,19.00,17.00,802.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(43,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-173-A0-A2',0,13,0,1,0,1,1,0,55,NULL,NULL,NULL,15.00,19.00,17.00,802.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(44,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-148-A0',0,15,0,1,0,5,1,0,130,NULL,NULL,NULL,10.00,11.00,14.00,583.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(45,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-148-A0-A1',0,15,0,1,0,5,1,0,130,NULL,NULL,NULL,10.00,11.00,14.00,583.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(46,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-194-A0',0,15,0,1,0,6,1,0,110,97.9,NULL,NULL,17.00,20.00,10.00,820.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(47,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-120-A0',0,11,0,1,0,6,1,0,126,NULL,NULL,NULL,20.00,19.00,18.00,870.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(48,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-120-A0-A1',0,11,0,1,0,6,1,0,126,NULL,NULL,NULL,20.00,19.00,18.00,870.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(49,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-120-A0-A2',0,11,0,1,0,6,1,0,126,NULL,NULL,NULL,20.00,19.00,18.00,870.00,NULL,0,'2024-03-11 00:12:04','2024-03-11 00:12:04','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(50,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-120-A0-A3',0,11,0,1,0,6,1,0,126,NULL,NULL,NULL,20.00,19.00,18.00,870.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(51,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-190-A0',0,14,0,1,0,2,1,0,349,NULL,NULL,NULL,13.00,19.00,15.00,811.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(52,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-190-A0-A1',0,14,0,1,0,2,1,0,349,NULL,NULL,NULL,13.00,19.00,15.00,811.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(53,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-158-A0',0,19,0,1,0,7,1,0,127,NULL,NULL,NULL,15.00,15.00,12.00,822.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(54,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-107-A0',0,11,0,1,0,6,1,0,124,102.92,NULL,NULL,12.00,12.00,14.00,724.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(55,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-107-A0-A1',0,11,0,1,0,6,1,0,124,88.04,NULL,NULL,12.00,12.00,14.00,724.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(56,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-107-A0-A2',0,11,0,1,0,6,1,0,124,89.28,NULL,NULL,12.00,12.00,14.00,724.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(57,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-142-A0',0,12,0,1,0,4,1,0,125,NULL,NULL,NULL,15.00,10.00,20.00,733.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(58,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-142-A0-A1',0,12,0,1,0,4,1,0,125,NULL,NULL,NULL,15.00,10.00,20.00,733.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(59,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-154-A0',0,17,0,1,0,1,1,0,113,NULL,NULL,NULL,17.00,20.00,20.00,751.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(60,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-124-A0',0,18,0,1,0,7,1,0,127,NULL,NULL,NULL,17.00,11.00,16.00,591.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(61,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-124-A0-A1',0,18,0,1,0,7,1,0,127,NULL,NULL,NULL,17.00,11.00,16.00,591.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(62,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-176-A0',0,13,0,1,0,7,1,0,130,94.9,NULL,NULL,17.00,19.00,15.00,684.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(63,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-176-A0-A1',0,13,0,1,0,7,1,0,130,91,NULL,NULL,17.00,19.00,15.00,684.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(64,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-176-A0-A2',0,13,0,1,0,7,1,0,130,114.4,NULL,NULL,17.00,19.00,15.00,684.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(65,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-176-A0-A3',0,13,0,1,0,7,1,0,130,117,NULL,NULL,17.00,19.00,15.00,684.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(66,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-149-A0',0,17,0,1,0,4,1,0,111,NULL,NULL,NULL,16.00,11.00,18.00,803.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(67,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-149-A0-A1',0,17,0,1,0,4,1,0,111,NULL,NULL,NULL,16.00,11.00,18.00,803.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(68,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-149-A0-A2',0,17,0,1,0,4,1,0,111,NULL,NULL,NULL,16.00,11.00,18.00,803.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(69,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-136-A0',0,11,0,1,0,3,1,0,129,NULL,NULL,NULL,12.00,10.00,13.00,771.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(70,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-136-A0-A1',0,11,0,1,0,3,1,0,129,NULL,NULL,NULL,12.00,10.00,13.00,771.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(71,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','HS-136-A0-A2',0,11,0,1,0,3,1,0,129,NULL,NULL,NULL,12.00,10.00,13.00,771.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(72,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-122-A0',0,15,0,1,0,1,1,0,118,NULL,NULL,NULL,13.00,20.00,20.00,770.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(73,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-122-A0-A1',0,15,0,1,0,1,1,0,118,NULL,NULL,NULL,13.00,20.00,20.00,770.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(74,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-148-A0',0,10,0,1,0,7,1,0,111,85.47,NULL,NULL,11.00,11.00,18.00,614.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(75,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-148-A0-A1',0,10,0,1,0,7,1,0,111,86.58,NULL,NULL,11.00,11.00,18.00,614.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(76,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-148-A0-A2',0,10,0,1,0,7,1,0,111,78.81,NULL,NULL,11.00,11.00,18.00,614.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(77,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-148-A0-A3',0,10,0,1,0,7,1,0,111,83.25,NULL,NULL,11.00,11.00,18.00,614.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(78,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-148-A0-A4',0,10,0,1,0,7,1,0,111,97.68,NULL,NULL,11.00,11.00,18.00,614.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(79,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-158-A0',0,16,0,1,0,1,1,0,120,NULL,NULL,NULL,15.00,12.00,20.00,589.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(80,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-152-A0',0,17,0,1,0,5,1,0,129,NULL,NULL,NULL,15.00,15.00,13.00,844.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(81,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-152-A0-A1',0,17,0,1,0,5,1,0,129,NULL,NULL,NULL,15.00,15.00,13.00,844.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(82,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-152-A0-A2',0,17,0,1,0,5,1,0,129,NULL,NULL,NULL,15.00,15.00,13.00,844.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(83,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-108-A0',0,16,0,1,0,5,1,0,117,NULL,NULL,NULL,12.00,20.00,13.00,670.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(84,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-108-A0-A1',0,16,0,1,0,5,1,0,117,NULL,NULL,NULL,12.00,20.00,13.00,670.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(85,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-108-A0-A2',0,16,0,1,0,5,1,0,117,NULL,NULL,NULL,12.00,20.00,13.00,670.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(86,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-136-A0',0,18,0,1,0,5,1,0,119,102.34,NULL,NULL,10.00,16.00,16.00,883.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(87,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/25.jpg\"]','HS-131-A0',0,16,0,1,0,3,1,0,80.25,NULL,NULL,NULL,16.00,14.00,11.00,832.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(88,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/25-1.jpg\"]','HS-131-A0-A1',0,16,0,1,0,3,1,0,80.25,NULL,NULL,NULL,16.00,14.00,11.00,832.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(89,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/25.jpg\"]','HS-131-A0-A2',0,16,0,1,0,3,1,0,80.25,NULL,NULL,NULL,16.00,14.00,11.00,832.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(90,'Smart Watches',NULL,NULL,'published','[\"products\\/26.jpg\"]','HS-155-A0',0,16,0,1,0,7,1,0,40.5,NULL,NULL,NULL,14.00,17.00,10.00,791.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(91,'Smart Watches',NULL,NULL,'published','[\"products\\/26-1.jpg\"]','HS-155-A0-A1',0,16,0,1,0,7,1,0,40.5,NULL,NULL,NULL,14.00,17.00,10.00,791.00,NULL,0,'2024-03-11 00:12:05','2024-03-11 00:12:05','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(92,'Smart Watches',NULL,NULL,'published','[\"products\\/26-2.jpg\"]','HS-155-A0-A2',0,16,0,1,0,7,1,0,40.5,NULL,NULL,NULL,14.00,17.00,10.00,791.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(93,'Beat Headphone',NULL,NULL,'published','[\"products\\/27.jpg\"]','HS-187-A0',0,15,0,1,0,4,1,0,20,NULL,NULL,NULL,18.00,19.00,12.00,612.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(94,'Beat Headphone',NULL,NULL,'published','[\"products\\/27-1.jpg\"]','HS-187-A0-A1',0,15,0,1,0,4,1,0,20,NULL,NULL,NULL,18.00,19.00,12.00,612.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(95,'Beat Headphone',NULL,NULL,'published','[\"products\\/27.jpg\"]','HS-187-A0-A2',0,15,0,1,0,4,1,0,20,NULL,NULL,NULL,18.00,19.00,12.00,612.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(96,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/28.jpg\"]','HS-131-A0',0,20,0,1,0,1,1,0,53,39.22,NULL,NULL,11.00,13.00,15.00,687.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(97,'Audio Equipment (Digital)',NULL,NULL,'published','[\"products\\/29.jpg\"]','HS-107-A0',0,19,0,1,0,4,1,0,60,NULL,NULL,NULL,10.00,11.00,10.00,771.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0),(98,'Smart Televisions',NULL,NULL,'published','[\"products\\/30.jpg\"]','HS-136-A0',0,19,0,1,0,3,1,0,130,NULL,NULL,NULL,14.00,18.00,12.00,547.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(99,'Smart Televisions',NULL,NULL,'published','[\"products\\/30-1.jpg\"]','HS-136-A0-A1',0,19,0,1,0,3,1,0,130,NULL,NULL,NULL,14.00,18.00,12.00,547.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(100,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31.jpg\"]','HS-112-A0',0,13,0,1,0,4,1,0,50,NULL,NULL,NULL,16.00,13.00,13.00,679.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(101,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31-1.jpg\"]','HS-112-A0-A1',0,13,0,1,0,4,1,0,50,NULL,NULL,NULL,16.00,13.00,13.00,679.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0),(102,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31.jpg\"]','HS-112-A0-A2',0,13,0,1,0,4,1,0,50,NULL,NULL,NULL,16.00,13.00,13.00,679.00,NULL,0,'2024-03-11 00:12:06','2024-03-11 00:12:06','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,8,4,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/28-1.jpg\",\"products\\/29-1.jpg\"]'),(2,5,15,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9.jpg\",\"products\\/21-1.jpg\"]'),(3,4,9,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-3.jpg\"]'),(4,7,11,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/6-1.jpg\"]'),(5,6,17,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/13-1.jpg\",\"products\\/16.jpg\",\"products\\/26-2.jpg\",\"products\\/28.jpg\"]'),(6,9,7,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/7-1.jpg\",\"products\\/28.jpg\"]'),(7,3,9,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-3.jpg\",\"products\\/18-1.jpg\",\"products\\/23.jpg\",\"products\\/28-1.jpg\"]'),(8,8,29,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5.jpg\"]'),(9,3,29,3.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-1.jpg\",\"products\\/7.jpg\",\"products\\/26-2.jpg\"]'),(10,5,4,1.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/7-1.jpg\",\"products\\/16.jpg\",\"products\\/18-2.jpg\"]'),(11,10,2,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-1.jpg\",\"products\\/3-2.jpg\"]'),(12,3,25,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/22.jpg\",\"products\\/29-1.jpg\"]'),(13,6,31,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/14-1.jpg\",\"products\\/22.jpg\"]'),(14,3,2,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-2.jpg\",\"products\\/5-2.jpg\",\"products\\/23-1.jpg\"]'),(15,5,29,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/10-1.jpg\"]'),(16,5,8,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/31.jpg\"]'),(17,3,15,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\"]'),(18,1,21,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/25.jpg\"]'),(19,6,10,4.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/25-1.jpg\"]'),(20,1,20,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-1.jpg\",\"products\\/11.jpg\",\"products\\/12.jpg\",\"products\\/27-1.jpg\"]'),(21,9,18,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-2.jpg\"]'),(22,4,14,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-2.jpg\",\"products\\/6-1.jpg\",\"products\\/11-1.jpg\"]'),(23,5,13,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\",\"products\\/16.jpg\"]'),(24,9,29,2.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-1.jpg\",\"products\\/5-2.jpg\"]'),(25,7,25,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/21-1.jpg\",\"products\\/30-1.jpg\"]'),(26,3,11,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/7-1.jpg\",\"products\\/19.jpg\"]'),(28,2,2,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\"]'),(29,3,22,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2.jpg\",\"products\\/4-3.jpg\"]'),(30,6,26,4.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9.jpg\"]'),(32,9,23,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/9-1.jpg\",\"products\\/11.jpg\"]'),(33,9,2,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/15.jpg\"]'),(34,4,3,3.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-2.jpg\",\"products\\/7.jpg\",\"products\\/27-1.jpg\"]'),(36,3,20,4.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/10-1.jpg\",\"products\\/24-1.jpg\",\"products\\/26.jpg\"]'),(37,9,15,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-1.jpg\",\"products\\/7.jpg\"]'),(38,5,16,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\",\"products\\/5-2.jpg\",\"products\\/19-1.jpg\",\"products\\/22.jpg\"]'),(39,8,21,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/6.jpg\"]'),(40,3,21,4.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/14-1.jpg\",\"products\\/26-1.jpg\",\"products\\/30-1.jpg\",\"products\\/31.jpg\"]'),(41,8,30,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/14-1.jpg\",\"products\\/24-1.jpg\",\"products\\/25-1.jpg\",\"products\\/26-1.jpg\"]'),(42,2,20,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9.jpg\",\"products\\/23-1.jpg\"]'),(43,8,24,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-2.jpg\",\"products\\/15.jpg\",\"products\\/20-1.jpg\"]'),(45,4,17,2.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/30.jpg\"]'),(46,10,20,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9.jpg\"]'),(47,5,7,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/13-1.jpg\",\"products\\/14-1.jpg\",\"products\\/20-1.jpg\",\"products\\/22.jpg\"]'),(48,6,25,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-1.jpg\",\"products\\/2-3.jpg\",\"products\\/19.jpg\"]'),(50,6,9,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-2.jpg\",\"products\\/10.jpg\",\"products\\/15-1.jpg\"]'),(51,8,11,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-2.jpg\",\"products\\/3.jpg\",\"products\\/4-3.jpg\",\"products\\/10.jpg\"]'),(52,3,6,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-1.jpg\",\"products\\/8-1.jpg\",\"products\\/19.jpg\"]'),(53,7,23,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/29.jpg\"]'),(54,9,24,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/11.jpg\"]'),(55,2,9,2.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\",\"products\\/12.jpg\",\"products\\/24-1.jpg\",\"products\\/28-1.jpg\"]'),(57,4,15,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/4.jpg\",\"products\\/18-2.jpg\",\"products\\/20.jpg\"]'),(58,9,31,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-3.jpg\",\"products\\/4.jpg\",\"products\\/16.jpg\"]'),(59,8,14,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-3.jpg\",\"products\\/21.jpg\",\"products\\/30-1.jpg\",\"products\\/31.jpg\"]'),(60,8,26,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-3.jpg\",\"products\\/2-1.jpg\"]'),(61,10,1,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/19.jpg\"]'),(62,5,3,2.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\",\"products\\/12.jpg\",\"products\\/20.jpg\",\"products\\/25.jpg\"]'),(64,5,20,3.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/26-1.jpg\"]'),(65,5,9,4.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2.jpg\",\"products\\/18-1.jpg\",\"products\\/26-2.jpg\"]'),(67,6,14,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-1.jpg\",\"products\\/18.jpg\",\"products\\/25-1.jpg\"]'),(68,1,30,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/19-1.jpg\"]'),(69,1,13,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-3.jpg\",\"products\\/6-1.jpg\",\"products\\/10-1.jpg\",\"products\\/11-1.jpg\"]'),(70,9,10,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-3.jpg\",\"products\\/9.jpg\",\"products\\/13-1.jpg\",\"products\\/16.jpg\"]'),(72,4,22,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/23.jpg\",\"products\\/27-1.jpg\",\"products\\/28.jpg\",\"products\\/30.jpg\"]'),(73,8,18,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-1.jpg\"]'),(74,6,19,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8.jpg\"]'),(75,6,18,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-3.jpg\",\"products\\/1.jpg\",\"products\\/12-1.jpg\"]'),(76,1,8,3.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-1.jpg\",\"products\\/9.jpg\",\"products\\/12.jpg\",\"products\\/13-1.jpg\"]'),(77,1,23,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/21-1.jpg\"]'),(78,10,5,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4.jpg\",\"products\\/12-1.jpg\"]'),(80,3,4,5.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/23-1.jpg\",\"products\\/24-1.jpg\"]'),(81,8,22,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/18-1.jpg\"]'),(83,5,6,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-2.jpg\",\"products\\/8.jpg\",\"products\\/24.jpg\"]'),(84,4,5,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/11.jpg\",\"products\\/14.jpg\",\"products\\/24-1.jpg\",\"products\\/25-1.jpg\"]'),(85,7,24,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/29-1.jpg\",\"products\\/30-1.jpg\"]'),(86,4,13,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-1.jpg\"]'),(88,8,2,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/14-1.jpg\",\"products\\/27.jpg\",\"products\\/30-1.jpg\"]'),(89,9,1,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-3.jpg\",\"products\\/2-1.jpg\"]'),(91,7,14,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-1.jpg\",\"products\\/3-3.jpg\"]'),(93,4,20,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\",\"products\\/15.jpg\",\"products\\/16.jpg\",\"products\\/20-1.jpg\"]'),(94,9,9,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-1.jpg\",\"products\\/4-2.jpg\",\"products\\/7-1.jpg\",\"products\\/31.jpg\"]'),(97,3,7,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/25-1.jpg\"]'),(98,1,14,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-1.jpg\",\"products\\/21.jpg\",\"products\\/22.jpg\",\"products\\/28-1.jpg\"]'),(99,9,13,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2.jpg\",\"products\\/18-2.jpg\"]'),(101,3,5,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-3.jpg\",\"products\\/7-1.jpg\",\"products\\/8-1.jpg\",\"products\\/15-1.jpg\"]'),(103,5,2,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/6-1.jpg\",\"products\\/29-1.jpg\"]'),(104,2,8,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/12.jpg\"]'),(106,8,13,5.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2.jpg\",\"products\\/18-2.jpg\",\"products\\/26.jpg\",\"products\\/31.jpg\"]'),(107,4,18,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\",\"products\\/10.jpg\",\"products\\/13.jpg\"]'),(108,10,16,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\"]'),(109,10,12,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-2.jpg\",\"products\\/4-3.jpg\",\"products\\/20.jpg\",\"products\\/29.jpg\"]'),(110,10,15,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-3.jpg\",\"products\\/2-1.jpg\",\"products\\/15.jpg\",\"products\\/26-1.jpg\"]'),(111,5,21,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-1.jpg\",\"products\\/19.jpg\",\"products\\/26.jpg\"]'),(112,3,3,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-1.jpg\",\"products\\/3-3.jpg\",\"products\\/25.jpg\"]'),(113,6,29,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\"]'),(116,1,27,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/21-1.jpg\"]'),(117,2,30,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/23-1.jpg\"]'),(118,6,12,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/5-2.jpg\",\"products\\/10.jpg\",\"products\\/26.jpg\"]'),(119,9,30,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2.jpg\",\"products\\/3-2.jpg\",\"products\\/12-1.jpg\"]'),(120,8,17,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/18.jpg\",\"products\\/20-1.jpg\",\"products\\/23-1.jpg\",\"products\\/31.jpg\"]'),(121,3,28,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9.jpg\",\"products\\/31-1.jpg\"]'),(122,4,26,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-1.jpg\",\"products\\/22.jpg\",\"products\\/29-1.jpg\"]'),(125,9,26,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-2.jpg\",\"products\\/31-1.jpg\"]'),(126,6,16,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9-1.jpg\"]'),(127,8,25,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/6.jpg\",\"products\\/19-1.jpg\"]'),(128,2,24,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/15-1.jpg\",\"products\\/29.jpg\"]'),(129,7,26,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8-1.jpg\"]'),(130,2,1,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\"]'),(131,8,10,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/18-2.jpg\",\"products\\/31.jpg\"]'),(133,1,12,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-2.jpg\"]'),(135,9,4,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/7.jpg\",\"products\\/24-1.jpg\"]'),(136,3,8,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9-1.jpg\",\"products\\/21.jpg\"]'),(137,1,29,4.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/5-3.jpg\",\"products\\/7-1.jpg\",\"products\\/9.jpg\"]'),(138,4,29,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/14.jpg\",\"products\\/25.jpg\",\"products\\/30-1.jpg\"]'),(140,3,18,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-1.jpg\",\"products\\/7.jpg\"]'),(141,4,11,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\",\"products\\/18-1.jpg\"]'),(142,6,30,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-2.jpg\",\"products\\/12-1.jpg\",\"products\\/31.jpg\"]'),(145,5,31,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2.jpg\",\"products\\/14-1.jpg\",\"products\\/31.jpg\"]'),(147,4,10,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-1.jpg\"]'),(148,5,14,2.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-3.jpg\",\"products\\/21.jpg\",\"products\\/29.jpg\"]'),(149,3,27,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2.jpg\",\"products\\/4-2.jpg\",\"products\\/26-2.jpg\"]'),(152,3,17,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8-1.jpg\",\"products\\/15.jpg\",\"products\\/26.jpg\"]'),(153,2,29,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-1.jpg\",\"products\\/14.jpg\",\"products\\/26.jpg\"]'),(156,2,13,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\",\"products\\/22.jpg\"]'),(160,6,24,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/2-2.jpg\",\"products\\/8.jpg\",\"products\\/14.jpg\"]'),(161,9,5,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\",\"products\\/22.jpg\"]'),(162,10,26,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-2.jpg\"]'),(163,5,19,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-1.jpg\",\"products\\/16.jpg\",\"products\\/23.jpg\"]'),(164,10,17,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-1.jpg\",\"products\\/26-2.jpg\",\"products\\/26.jpg\"]'),(168,8,23,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/15.jpg\",\"products\\/18-1.jpg\"]'),(172,7,27,4.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-2.jpg\",\"products\\/3-1.jpg\",\"products\\/14-1.jpg\"]'),(176,4,21,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/23-1.jpg\"]'),(177,10,22,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/11.jpg\",\"products\\/12.jpg\",\"products\\/18-2.jpg\",\"products\\/19.jpg\"]'),(178,6,5,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9-1.jpg\",\"products\\/13-1.jpg\",\"products\\/18-2.jpg\"]'),(180,5,1,3.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-2.jpg\",\"products\\/3.jpg\",\"products\\/18.jpg\",\"products\\/26.jpg\"]'),(184,1,9,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/20.jpg\",\"products\\/25.jpg\",\"products\\/26-1.jpg\"]'),(185,6,23,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/23.jpg\"]'),(186,5,25,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-2.jpg\"]'),(187,5,26,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/7.jpg\",\"products\\/19.jpg\",\"products\\/21.jpg\",\"products\\/22.jpg\"]'),(189,8,1,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2.jpg\",\"products\\/4-1.jpg\",\"products\\/22-1.jpg\",\"products\\/26-2.jpg\"]'),(191,9,25,5.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-3.jpg\",\"products\\/6-1.jpg\",\"products\\/26-1.jpg\"]'),(193,7,5,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-2.jpg\",\"products\\/2-3.jpg\",\"products\\/26.jpg\"]'),(194,1,28,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\",\"products\\/3-1.jpg\",\"products\\/8-1.jpg\",\"products\\/10-1.jpg\"]'),(195,1,4,2.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/6.jpg\",\"products\\/12-1.jpg\"]'),(200,2,5,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8.jpg\",\"products\\/30.jpg\"]'),(202,7,18,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-2.jpg\",\"products\\/21.jpg\",\"products\\/27.jpg\",\"products\\/30-1.jpg\"]'),(203,1,31,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8-1.jpg\",\"products\\/26-2.jpg\"]'),(205,2,23,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/14.jpg\",\"products\\/19-1.jpg\",\"products\\/30-1.jpg\"]'),(206,9,11,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-2.jpg\",\"products\\/2.jpg\",\"products\\/12.jpg\",\"products\\/24-1.jpg\"]'),(207,6,3,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/15.jpg\",\"products\\/28-1.jpg\"]'),(209,8,19,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-1.jpg\",\"products\\/29-1.jpg\",\"products\\/30.jpg\"]'),(212,6,11,4.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4.jpg\"]'),(214,2,19,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/12-1.jpg\"]'),(215,5,23,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/10-1.jpg\",\"products\\/27.jpg\"]'),(216,10,27,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/2-2.jpg\",\"products\\/21.jpg\"]'),(217,2,12,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/18.jpg\"]'),(218,7,19,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/5-3.jpg\",\"products\\/5.jpg\",\"products\\/21.jpg\"]'),(220,1,6,5.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4.jpg\",\"products\\/5-1.jpg\",\"products\\/26-1.jpg\"]'),(221,7,13,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\",\"products\\/7.jpg\",\"products\\/26-2.jpg\",\"products\\/27-1.jpg\"]'),(223,6,8,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/18-2.jpg\",\"products\\/21-1.jpg\",\"products\\/29-1.jpg\"]'),(224,8,7,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/12.jpg\",\"products\\/14.jpg\",\"products\\/19-1.jpg\",\"products\\/24.jpg\"]'),(226,1,7,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8.jpg\"]'),(230,3,13,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/6.jpg\"]'),(231,7,22,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-3.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\",\"products\\/12-1.jpg\"]'),(233,1,18,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\",\"products\\/22.jpg\"]'),(235,5,12,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-1.jpg\"]'),(236,10,3,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/20-1.jpg\",\"products\\/27-1.jpg\"]'),(238,6,22,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-3.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\",\"products\\/22.jpg\"]'),(243,3,31,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-2.jpg\",\"products\\/13.jpg\",\"products\\/18.jpg\"]'),(245,3,14,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-3.jpg\"]'),(248,9,21,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4.jpg\",\"products\\/26.jpg\"]'),(249,2,28,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4.jpg\"]'),(253,7,20,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-3.jpg\",\"products\\/9.jpg\",\"products\\/11.jpg\"]'),(256,10,9,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/19.jpg\",\"products\\/28-1.jpg\"]'),(258,10,7,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/10-1.jpg\",\"products\\/26-1.jpg\"]'),(260,2,3,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\",\"products\\/12-1.jpg\",\"products\\/23-1.jpg\"]'),(261,2,18,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-3.jpg\",\"products\\/12.jpg\"]'),(262,2,25,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/20-1.jpg\",\"products\\/21.jpg\",\"products\\/28-1.jpg\"]'),(263,5,22,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/16.jpg\",\"products\\/22.jpg\"]'),(265,10,18,2.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/24-1.jpg\"]'),(266,9,14,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-2.jpg\",\"products\\/9-1.jpg\",\"products\\/28-1.jpg\"]'),(267,7,3,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-2.jpg\",\"products\\/18-1.jpg\",\"products\\/22-1.jpg\"]'),(268,6,21,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/21.jpg\",\"products\\/26-2.jpg\"]'),(269,7,10,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/22.jpg\"]'),(270,6,7,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/10-1.jpg\",\"products\\/23.jpg\"]'),(272,2,21,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\",\"products\\/7.jpg\",\"products\\/25-1.jpg\",\"products\\/30.jpg\"]'),(275,6,1,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/16.jpg\",\"products\\/17.jpg\"]'),(279,8,15,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-1.jpg\",\"products\\/27.jpg\",\"products\\/29.jpg\"]'),(280,8,12,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/13-1.jpg\",\"products\\/18.jpg\",\"products\\/25-1.jpg\",\"products\\/26.jpg\"]'),(281,4,7,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-2.jpg\",\"products\\/3-1.jpg\",\"products\\/4-3.jpg\",\"products\\/6-1.jpg\"]'),(283,10,31,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-1.jpg\",\"products\\/12.jpg\"]'),(287,9,6,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/6-1.jpg\",\"products\\/26.jpg\",\"products\\/31.jpg\"]'),(288,5,28,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/22-1.jpg\",\"products\\/31-1.jpg\"]'),(290,4,4,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-1.jpg\",\"products\\/12.jpg\"]'),(294,5,24,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/9-1.jpg\",\"products\\/15-1.jpg\",\"products\\/28-1.jpg\"]'),(300,1,2,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\",\"products\\/25-1.jpg\"]'),(301,2,27,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/12.jpg\",\"products\\/19-1.jpg\",\"products\\/22.jpg\",\"products\\/28-1.jpg\"]'),(303,8,16,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/24-1.jpg\",\"products\\/30.jpg\"]'),(305,7,9,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/20.jpg\"]'),(306,10,28,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-3.jpg\"]'),(313,8,27,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-2.jpg\",\"products\\/29-1.jpg\"]'),(315,6,28,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/15-1.jpg\",\"products\\/15.jpg\"]'),(316,5,5,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-1.jpg\"]'),(318,9,20,5.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-3.jpg\",\"products\\/5-3.jpg\"]'),(320,7,2,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-1.jpg\",\"products\\/21-1.jpg\",\"products\\/25.jpg\",\"products\\/30-1.jpg\"]'),(321,7,17,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-2.jpg\",\"products\\/22.jpg\",\"products\\/26-2.jpg\",\"products\\/31-1.jpg\"]'),(329,7,12,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/10.jpg\",\"products\\/12.jpg\",\"products\\/28.jpg\"]'),(333,10,24,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/22.jpg\"]'),(334,3,30,3.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\",\"products\\/5-1.jpg\",\"products\\/16.jpg\"]'),(340,4,24,1.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/14-1.jpg\",\"products\\/16.jpg\"]'),(345,7,16,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8-1.jpg\"]'),(351,3,24,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/23-1.jpg\",\"products\\/26-1.jpg\"]'),(352,10,11,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/13.jpg\",\"products\\/16.jpg\",\"products\\/21.jpg\"]'),(354,2,17,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2.jpg\",\"products\\/4.jpg\",\"products\\/24.jpg\"]'),(355,7,1,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/19.jpg\"]'),(356,10,29,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/26-1.jpg\"]'),(359,7,8,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5.jpg\",\"products\\/9-1.jpg\",\"products\\/22.jpg\",\"products\\/28-1.jpg\"]'),(364,6,2,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/18.jpg\"]'),(365,4,16,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/16.jpg\",\"products\\/22.jpg\",\"products\\/27.jpg\"]'),(366,9,22,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/19-1.jpg\"]'),(368,4,2,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/16.jpg\"]'),(369,9,8,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/10-1.jpg\",\"products\\/19.jpg\",\"products\\/25.jpg\"]'),(372,1,5,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/7-1.jpg\",\"products\\/25.jpg\",\"products\\/29.jpg\"]'),(376,3,12,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-1.jpg\"]'),(377,1,10,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/6-1.jpg\",\"products\\/11-1.jpg\",\"products\\/12-1.jpg\"]'),(381,6,6,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-1.jpg\",\"products\\/10-1.jpg\",\"products\\/15.jpg\",\"products\\/20.jpg\"]'),(384,5,17,4.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/22-1.jpg\",\"products\\/23-1.jpg\",\"products\\/26-1.jpg\",\"products\\/30.jpg\"]'),(389,8,5,1.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-1.jpg\",\"products\\/8-1.jpg\",\"products\\/29-1.jpg\",\"products\\/31-1.jpg\"]'),(403,4,28,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-1.jpg\",\"products\\/18-1.jpg\",\"products\\/29.jpg\",\"products\\/30.jpg\"]'),(405,2,14,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-1.jpg\",\"products\\/3-3.jpg\",\"products\\/9.jpg\",\"products\\/22.jpg\"]'),(406,1,15,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/14.jpg\"]'),(412,8,31,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-2.jpg\"]'),(414,2,10,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\",\"products\\/7.jpg\"]'),(416,1,16,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-3.jpg\",\"products\\/6.jpg\",\"products\\/7-1.jpg\"]'),(419,4,25,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-3.jpg\",\"products\\/19.jpg\"]'),(424,8,28,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-3.jpg\"]'),(448,7,15,2.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-2.jpg\",\"products\\/30-1.jpg\"]'),(450,3,1,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/16.jpg\",\"products\\/17.jpg\"]'),(456,4,8,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-2.jpg\",\"products\\/5-1.jpg\",\"products\\/29-1.jpg\"]'),(458,4,19,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8.jpg\",\"products\\/21.jpg\",\"products\\/23-1.jpg\"]'),(459,5,11,1.00,'Best ecommerce CMS online store!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/11-1.jpg\",\"products\\/21-1.jpg\"]'),(461,4,12,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/7-1.jpg\",\"products\\/13.jpg\",\"products\\/31.jpg\"]'),(464,8,9,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\",\"products\\/8.jpg\",\"products\\/15-1.jpg\",\"products\\/21-1.jpg\"]'),(471,4,31,2.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/7-1.jpg\",\"products\\/22-1.jpg\",\"products\\/26-1.jpg\",\"products\\/31.jpg\"]'),(473,10,4,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/18.jpg\",\"products\\/21.jpg\",\"products\\/26-1.jpg\",\"products\\/29-1.jpg\"]'),(476,1,1,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4.jpg\",\"products\\/10-1.jpg\",\"products\\/27.jpg\"]'),(478,7,29,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/10-1.jpg\",\"products\\/15-1.jpg\"]'),(482,7,7,3.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-1.jpg\",\"products\\/30-1.jpg\"]'),(485,9,12,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/6.jpg\",\"products\\/18-1.jpg\",\"products\\/29-1.jpg\"]'),(491,1,3,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-2.jpg\",\"products\\/5-3.jpg\",\"products\\/7.jpg\",\"products\\/25.jpg\"]'),(498,1,25,1.00,'Good app, good backup service and support. Good documentation.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8.jpg\"]'),(500,6,27,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5.jpg\"]'),(502,1,11,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/19.jpg\"]'),(526,2,6,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/6-1.jpg\"]'),(527,1,24,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/6.jpg\",\"products\\/26.jpg\",\"products\\/30.jpg\"]'),(529,9,3,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/11-1.jpg\"]'),(530,9,16,4.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/31.jpg\"]'),(535,3,10,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/22-1.jpg\"]'),(550,2,16,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-3.jpg\",\"products\\/9-1.jpg\",\"products\\/24.jpg\",\"products\\/31-1.jpg\"]'),(553,8,3,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9.jpg\",\"products\\/20.jpg\",\"products\\/30-1.jpg\"]'),(565,7,31,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8-1.jpg\",\"products\\/10.jpg\",\"products\\/25-1.jpg\"]'),(567,10,6,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9-1.jpg\",\"products\\/12.jpg\",\"products\\/20-1.jpg\",\"products\\/20.jpg\"]'),(574,7,30,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/16.jpg\"]'),(576,5,27,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/19-1.jpg\",\"products\\/24.jpg\",\"products\\/26-1.jpg\",\"products\\/29-1.jpg\"]'),(618,9,28,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9-1.jpg\",\"products\\/30-1.jpg\"]'),(620,8,20,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/7.jpg\"]'),(643,10,13,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/9-1.jpg\"]'),(653,4,6,4.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8-1.jpg\",\"products\\/16.jpg\",\"products\\/20-1.jpg\"]'),(655,5,10,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/10.jpg\",\"products\\/14.jpg\",\"products\\/31-1.jpg\"]'),(664,5,30,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1.jpg\",\"products\\/3-2.jpg\",\"products\\/4-2.jpg\",\"products\\/21.jpg\"]'),(670,1,17,3.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/11.jpg\",\"products\\/27-1.jpg\"]'),(678,6,4,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/11.jpg\",\"products\\/21.jpg\"]'),(684,6,20,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8-1.jpg\",\"products\\/28-1.jpg\"]'),(689,10,8,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2.jpg\",\"products\\/22.jpg\",\"products\\/25-1.jpg\"]'),(701,9,27,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/14-1.jpg\"]'),(712,10,19,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/13.jpg\"]'),(724,8,6,4.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/15-1.jpg\"]'),(739,7,21,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5.jpg\",\"products\\/19.jpg\",\"products\\/29-1.jpg\"]'),(741,6,13,4.00,'Clean & perfect source code','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/23-1.jpg\"]'),(751,3,19,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/11.jpg\",\"products\\/14-1.jpg\",\"products\\/28-1.jpg\"]'),(766,10,21,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-1.jpg\"]'),(769,9,17,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/2-1.jpg\",\"products\\/11-1.jpg\",\"products\\/12.jpg\",\"products\\/30-1.jpg\"]'),(771,10,25,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8.jpg\",\"products\\/25.jpg\"]'),(780,10,23,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/22.jpg\"]'),(791,1,19,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/5-2.jpg\",\"products\\/5-3.jpg\",\"products\\/8.jpg\",\"products\\/19.jpg\"]'),(793,2,11,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/6.jpg\",\"products\\/18-1.jpg\"]'),(800,2,22,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/20.jpg\"]'),(801,2,7,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/4-1.jpg\",\"products\\/17.jpg\",\"products\\/20-1.jpg\",\"products\\/25-1.jpg\"]'),(807,2,26,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/8-1.jpg\",\"products\\/17.jpg\"]'),(826,8,8,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/25-1.jpg\"]'),(853,3,23,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3.jpg\",\"products\\/9-1.jpg\",\"products\\/14-1.jpg\",\"products\\/27.jpg\"]'),(855,7,28,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/15.jpg\",\"products\\/20.jpg\",\"products\\/29.jpg\"]'),(925,3,26,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/31.jpg\"]'),(930,2,4,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/31-1.jpg\"]'),(932,4,23,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/18.jpg\",\"products\\/26-1.jpg\"]'),(934,10,30,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/23.jpg\",\"products\\/26-2.jpg\",\"products\\/31-1.jpg\"]'),(947,1,22,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/3-3.jpg\",\"products\\/15-1.jpg\",\"products\\/23.jpg\",\"products\\/26.jpg\"]'),(948,10,14,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/1-1.jpg\",\"products\\/11-1.jpg\",\"products\\/13-1.jpg\",\"products\\/20-1.jpg\"]'),(996,4,1,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-03-11 00:12:06','2024-03-11 00:12:06','[\"products\\/12-1.jpg\",\"products\\/12.jpg\",\"products\\/18.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2024-03-06 00:12:06','2024-03-06 00:12:06','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2024-03-09 08:12:07','2024-03-11 00:12:07','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2024-03-06 06:12:07','2024-03-06 06:12:07','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2024-03-09 10:12:07','2024-03-11 00:12:07','Botble\\ACL\\Models\\User'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2024-03-11 00:12:07','2024-03-11 00:12:07','Botble\\ACL\\Models\\User'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2024-03-06 12:12:07','2024-03-06 12:12:07','Botble\\ACL\\Models\\User'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2024-03-09 12:12:07','2024-03-11 00:12:07','Botble\\ACL\\Models\\User'),(8,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2024-03-08 04:12:07','2024-03-08 04:12:07','Botble\\ACL\\Models\\User'),(9,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2024-03-09 14:12:07','2024-03-11 00:12:07','Botble\\ACL\\Models\\User'),(10,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2024-03-11 00:12:07','2024-03-11 00:12:07','Botble\\ACL\\Models\\User'),(11,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2024-02-26 16:12:07','2024-02-26 16:12:07','Botble\\ACL\\Models\\User'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2024-03-09 16:12:08','2024-03-11 00:12:08','Botble\\ACL\\Models\\User'),(13,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2024-03-02 06:12:08','2024-03-02 06:12:08','Botble\\ACL\\Models\\User'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2024-03-09 18:12:08','2024-03-11 00:12:08','Botble\\ACL\\Models\\User'),(15,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2024-03-07 12:12:08','2024-03-07 12:12:08','Botble\\ACL\\Models\\User'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2024-03-09 20:12:08','2024-03-11 00:12:08','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,7,'2024-03-11 00:12:08','2024-03-11 00:12:08','Botble\\ACL\\Models\\User'),(18,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2024-02-29 04:12:08','2024-02-29 04:12:08','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2024-03-09 22:12:08','2024-03-11 00:12:08','Botble\\ACL\\Models\\User'),(20,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2024-03-02 00:12:08','2024-03-02 00:12:08','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2024-03-10 00:12:08','2024-03-11 00:12:08','Botble\\ACL\\Models\\User'),(22,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2024-03-11 00:12:08','2024-03-11 00:12:08','Botble\\ACL\\Models\\User'),(23,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2024-03-10 02:12:08','2024-03-10 02:12:08','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2024-03-10 02:12:09','2024-03-11 00:12:09','Botble\\ACL\\Models\\User'),(25,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2024-03-11 00:12:09','2024-03-11 00:12:09','Botble\\ACL\\Models\\User'),(26,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2024-03-10 04:12:09','2024-03-10 04:12:09','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2024-03-10 04:12:09','2024-03-11 00:12:09','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2024-03-05 18:12:09','2024-03-05 18:12:09','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2024-03-10 06:12:09','2024-03-11 00:12:09','Botble\\ACL\\Models\\User'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,12,'2024-03-11 00:12:09','2024-03-11 00:12:09','Botble\\ACL\\Models\\User'),(31,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2024-03-05 16:12:09','2024-03-05 16:12:09','Botble\\ACL\\Models\\User'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2024-03-10 08:12:09','2024-03-11 00:12:09','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2024-03-11 00:12:09','2024-03-11 00:12:09','Botble\\ACL\\Models\\User'),(34,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2024-03-08 02:12:09','2024-03-08 02:12:09','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2024-03-10 10:12:09','2024-03-11 00:12:09','Botble\\ACL\\Models\\User'),(36,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2024-03-08 00:12:09','2024-03-08 00:12:09','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2024-03-10 12:12:10','2024-03-11 00:12:10','Botble\\ACL\\Models\\User'),(38,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,15,15,'2024-03-11 00:12:10','2024-03-11 00:12:10','Botble\\ACL\\Models\\User'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2024-03-11 00:12:10','2024-03-11 00:12:10','Botble\\ACL\\Models\\User'),(40,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2024-03-08 02:12:10','2024-03-08 02:12:10','Botble\\ACL\\Models\\User'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2024-03-10 14:12:10','2024-03-11 00:12:10','Botble\\ACL\\Models\\User'),(42,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2024-03-10 16:12:10','2024-03-10 16:12:10','Botble\\ACL\\Models\\User'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2024-03-10 16:12:10','2024-03-11 00:12:10','Botble\\ACL\\Models\\User'),(44,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,17,17,'2024-03-11 00:12:10','2024-03-11 00:12:10','Botble\\ACL\\Models\\User'),(45,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,17,'2024-03-11 00:12:10','2024-03-11 00:12:10','Botble\\ACL\\Models\\User'),(46,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2024-03-08 12:12:10','2024-03-08 12:12:10','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2024-03-10 18:12:10','2024-03-11 00:12:10','Botble\\ACL\\Models\\User'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,18,'2024-03-11 00:12:10','2024-03-11 00:12:10','Botble\\ACL\\Models\\User'),(49,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2024-03-10 04:12:10','2024-03-10 04:12:10','Botble\\ACL\\Models\\User'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2024-03-10 20:12:10','2024-03-11 00:12:10','Botble\\ACL\\Models\\User'),(51,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2024-03-10 06:12:10','2024-03-10 06:12:10','Botble\\ACL\\Models\\User'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2024-03-10 22:12:11','2024-03-11 00:12:11','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,5652.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','JJD0070907307','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:12:07',NULL,NULL,NULL),(2,2,NULL,1961.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','JJD0035182639','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-21 07:12:07','2024-03-11 07:12:07',NULL,NULL),(3,3,NULL,2229.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','JJD0037983734','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 07:12:07',NULL,NULL,NULL),(4,4,NULL,5414.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:07','2024-03-11 00:12:07','JJD0037665194','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-19 07:12:07','2024-03-11 07:12:07',NULL,NULL),(5,5,NULL,3850.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','JJD001612739','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 07:12:08',NULL,NULL,NULL),(6,6,NULL,5293.00,NULL,NULL,'','approved',1250.70,'pending','pending',0.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','JJD0042677045','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 07:12:08',NULL,NULL,NULL),(7,7,NULL,2080.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','JJD0097011821','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-20 07:12:08','2024-03-11 07:12:08',NULL,NULL),(8,8,NULL,3354.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','JJD0058009582','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-17 07:12:08',NULL,NULL,NULL),(9,9,NULL,5348.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:08','2024-03-11 00:12:08','JJD006135467','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:12:08','2024-03-11 07:12:08',NULL,NULL),(10,10,NULL,4775.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','JJD0043359687','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-12 07:12:09','2024-03-11 07:12:09',NULL,NULL),(11,11,NULL,3225.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','JJD0028977954','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-12 07:12:09',NULL,NULL,NULL),(12,12,NULL,5226.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','JJD0084055896','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 07:12:09','2024-03-11 07:12:09',NULL,NULL),(13,13,NULL,7776.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','JJD0078961608','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-13 07:12:09','2024-03-11 07:12:09',NULL,NULL),(14,14,NULL,4211.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:09','2024-03-11 00:12:09','JJD0081236436','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-12 07:12:09',NULL,NULL,NULL),(15,15,NULL,2352.00,NULL,NULL,'','delivered',936.20,'completed','pending',0.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','JJD0054051905','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:12:10','2024-03-11 07:12:10',NULL,NULL),(16,16,NULL,1486.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','JJD0040576098','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-16 07:12:10',NULL,NULL,NULL),(17,17,NULL,5127.00,NULL,NULL,'','delivered',1166.40,'completed','pending',0.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','JJD0016264704','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-12 07:12:10','2024-03-11 07:12:10',NULL,NULL),(18,18,NULL,2425.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','JJD0063001641','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-14 07:12:10','2024-03-11 07:12:10',NULL,NULL),(19,19,NULL,6594.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:10','2024-03-11 00:12:10','JJD0054052652','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-21 07:12:10',NULL,NULL,NULL),(20,20,NULL,1966.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-03-11 00:12:11','2024-03-11 00:12:11','JJD006023251','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-17 07:12:11',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-03-11 00:12:06','2024-03-11 00:12:06');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-03-11 00:12:06','2024-03-11 00:12:06');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shopwise','sales@botble.com','123-456-7890','123 Street, Old Trafford','US','New York','New York',1,1,'2024-03-11 00:12:12','2024-03-11 00:12:12');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-03-11 00:12:06','2024-03-11 00:12:06'),(2,'None',0.000000,2,'published','2024-03-11 00:12:06','2024-03-11 00:12:06'),(3,'Import Tax',15.000000,3,'published','2024-03-11 00:12:06','2024-03-11 00:12:06');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(2,'Payment',1,'published','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(3,'Order &amp; Returns',2,'published','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-03-11 00:12:13','2024-03-11 00:12:13');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','6f0cd8e95ae5f3b49b423fb8b01e88cb',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','c50526b91ed1cb22c7f0d52f793272a0',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','ee71dd9c51eb2e26e78fda4438af8a04',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','88ffb493662ac0162ea80fff43ac199e',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','8545505cd1945abbd38fe2985030be72',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','04af6117e78576f5cc35e0d884bebc5e',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',9803,'brands/1.png','[]','2024-03-11 00:11:54','2024-03-11 00:11:54',NULL),(2,0,'2','2',1,'image/png',9803,'brands/2.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(3,0,'3','3',1,'image/png',9803,'brands/3.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(4,0,'4','4',1,'image/png',9803,'brands/4.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(5,0,'5','5',1,'image/png',9803,'brands/5.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(6,0,'6','6',1,'image/png',9803,'brands/6.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(7,0,'7','7',1,'image/png',9803,'brands/7.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(8,0,'p-1','p-1',2,'image/png',9803,'product-categories/p-1.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(9,0,'p-2','p-2',2,'image/png',9803,'product-categories/p-2.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(10,0,'p-3','p-3',2,'image/png',9803,'product-categories/p-3.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(11,0,'p-4','p-4',2,'image/png',9803,'product-categories/p-4.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(12,0,'p-5','p-5',2,'image/png',9803,'product-categories/p-5.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(13,0,'p-6','p-6',2,'image/png',9803,'product-categories/p-6.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(14,0,'p-7','p-7',2,'image/png',9803,'product-categories/p-7.png','[]','2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(15,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(16,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(17,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(18,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(19,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(20,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(21,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(22,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(23,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(24,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(25,0,'1-1','1-1',4,'image/jpeg',9803,'products/1-1.jpg','[]','2024-03-11 00:11:59','2024-03-11 00:11:59',NULL),(26,0,'1-2','1-2',4,'image/jpeg',9803,'products/1-2.jpg','[]','2024-03-11 00:11:59','2024-03-11 00:11:59',NULL),(27,0,'1-3','1-3',4,'image/jpeg',9803,'products/1-3.jpg','[]','2024-03-11 00:11:59','2024-03-11 00:11:59',NULL),(28,0,'1','1',4,'image/jpeg',9803,'products/1.jpg','[]','2024-03-11 00:11:59','2024-03-11 00:11:59',NULL),(29,0,'10-1','10-1',4,'image/jpeg',9803,'products/10-1.jpg','[]','2024-03-11 00:11:59','2024-03-11 00:11:59',NULL),(30,0,'10','10',4,'image/jpeg',9803,'products/10.jpg','[]','2024-03-11 00:11:59','2024-03-11 00:11:59',NULL),(31,0,'11-1','11-1',4,'image/jpeg',9803,'products/11-1.jpg','[]','2024-03-11 00:11:59','2024-03-11 00:11:59',NULL),(32,0,'11','11',4,'image/jpeg',9803,'products/11.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(33,0,'12-1','12-1',4,'image/jpeg',9803,'products/12-1.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(34,0,'12','12',4,'image/jpeg',9803,'products/12.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(35,0,'13-1','13-1',4,'image/jpeg',9803,'products/13-1.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(36,0,'13','13',4,'image/jpeg',9803,'products/13.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(37,0,'14-1','14-1',4,'image/jpeg',9803,'products/14-1.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(38,0,'14','14',4,'image/jpeg',9803,'products/14.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(39,0,'15-1','15-1',4,'image/jpeg',9803,'products/15-1.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(40,0,'15','15',4,'image/jpeg',9803,'products/15.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(41,0,'16','16',4,'image/jpeg',9803,'products/16.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(42,0,'17','17',4,'image/jpeg',9803,'products/17.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(43,0,'18-1','18-1',4,'image/jpeg',9803,'products/18-1.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(44,0,'18-2','18-2',4,'image/jpeg',9803,'products/18-2.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(45,0,'18','18',4,'image/jpeg',9803,'products/18.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(46,0,'19-1','19-1',4,'image/jpeg',9803,'products/19-1.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(47,0,'19','19',4,'image/jpeg',9803,'products/19.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(48,0,'2-1','2-1',4,'image/jpeg',9803,'products/2-1.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(49,0,'2-2','2-2',4,'image/jpeg',9803,'products/2-2.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(50,0,'2-3','2-3',4,'image/jpeg',9803,'products/2-3.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(51,0,'2','2',4,'image/jpeg',9803,'products/2.jpg','[]','2024-03-11 00:12:00','2024-03-11 00:12:00',NULL),(52,0,'20-1','20-1',4,'image/jpeg',9803,'products/20-1.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(53,0,'20','20',4,'image/jpeg',9803,'products/20.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(54,0,'21-1','21-1',4,'image/jpeg',9803,'products/21-1.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(55,0,'21','21',4,'image/jpeg',9803,'products/21.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(56,0,'22-1','22-1',4,'image/jpeg',9803,'products/22-1.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(57,0,'22','22',4,'image/jpeg',9803,'products/22.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(58,0,'23-1','23-1',4,'image/jpeg',9803,'products/23-1.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(59,0,'23','23',4,'image/jpeg',9803,'products/23.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(60,0,'24-1','24-1',4,'image/jpeg',9803,'products/24-1.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(61,0,'24','24',4,'image/jpeg',9803,'products/24.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(62,0,'25-1','25-1',4,'image/jpeg',9803,'products/25-1.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(63,0,'25','25',4,'image/jpeg',9803,'products/25.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(64,0,'26-1','26-1',4,'image/jpeg',9803,'products/26-1.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(65,0,'26-2','26-2',4,'image/jpeg',9803,'products/26-2.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(66,0,'26','26',4,'image/jpeg',9803,'products/26.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(67,0,'27-1','27-1',4,'image/jpeg',9803,'products/27-1.jpg','[]','2024-03-11 00:12:01','2024-03-11 00:12:01',NULL),(68,0,'27','27',4,'image/jpeg',9803,'products/27.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(69,0,'28-1','28-1',4,'image/jpeg',9803,'products/28-1.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(70,0,'28','28',4,'image/jpeg',9803,'products/28.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(71,0,'29-1','29-1',4,'image/jpeg',9803,'products/29-1.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(72,0,'29','29',4,'image/jpeg',9803,'products/29.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(73,0,'3-1','3-1',4,'image/jpeg',9803,'products/3-1.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(74,0,'3-2','3-2',4,'image/jpeg',9803,'products/3-2.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(75,0,'3-3','3-3',4,'image/jpeg',9803,'products/3-3.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(76,0,'3','3',4,'image/jpeg',9803,'products/3.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(77,0,'30-1','30-1',4,'image/jpeg',9803,'products/30-1.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(78,0,'30','30',4,'image/jpeg',9803,'products/30.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(79,0,'31-1','31-1',4,'image/jpeg',9803,'products/31-1.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(80,0,'31','31',4,'image/jpeg',9803,'products/31.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(81,0,'4-1','4-1',4,'image/jpeg',9803,'products/4-1.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(82,0,'4-2','4-2',4,'image/jpeg',9803,'products/4-2.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(83,0,'4-3','4-3',4,'image/jpeg',9803,'products/4-3.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(84,0,'4','4',4,'image/jpeg',9803,'products/4.jpg','[]','2024-03-11 00:12:02','2024-03-11 00:12:02',NULL),(85,0,'5-1','5-1',4,'image/jpeg',9803,'products/5-1.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(86,0,'5-2','5-2',4,'image/jpeg',9803,'products/5-2.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(87,0,'5-3','5-3',4,'image/jpeg',9803,'products/5-3.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(88,0,'5','5',4,'image/jpeg',9803,'products/5.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(89,0,'6-1','6-1',4,'image/jpeg',9803,'products/6-1.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(90,0,'6','6',4,'image/jpeg',9803,'products/6.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(91,0,'7-1','7-1',4,'image/jpeg',9803,'products/7-1.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(92,0,'7','7',4,'image/jpeg',9803,'products/7.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(93,0,'8-1','8-1',4,'image/jpeg',9803,'products/8-1.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(94,0,'8','8',4,'image/jpeg',9803,'products/8.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(95,0,'9-1','9-1',4,'image/jpeg',9803,'products/9-1.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(96,0,'9','9',4,'image/jpeg',9803,'products/9.jpg','[]','2024-03-11 00:12:03','2024-03-11 00:12:03',NULL),(97,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(98,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(99,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(100,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(101,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(102,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(103,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(104,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(105,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(106,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(107,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(108,0,'1','1',6,'image/jpeg',9803,'testimonials/1.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(109,0,'2','2',6,'image/jpeg',9803,'testimonials/2.jpg','[]','2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(110,0,'3','3',6,'image/jpeg',9803,'testimonials/3.jpg','[]','2024-03-11 00:12:12','2024-03-11 00:12:12',NULL),(111,0,'4','4',6,'image/jpeg',9803,'testimonials/4.jpg','[]','2024-03-11 00:12:12','2024-03-11 00:12:12',NULL),(112,0,'1','1',7,'image/jpeg',11475,'sliders/1.jpg','[]','2024-03-11 00:12:12','2024-03-11 00:12:12',NULL),(113,0,'2','2',7,'image/jpeg',11475,'sliders/2.jpg','[]','2024-03-11 00:12:12','2024-03-11 00:12:12',NULL),(114,0,'3','3',7,'image/jpeg',11475,'sliders/3.jpg','[]','2024-03-11 00:12:12','2024-03-11 00:12:12',NULL),(115,0,'american-express','american-express',8,'image/png',2381,'general/american-express.png','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(116,0,'b-1','b-1',8,'image/jpeg',6042,'general/b-1.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(117,0,'b-2','b-2',8,'image/jpeg',6042,'general/b-2.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(118,0,'b-3','b-3',8,'image/jpeg',6042,'general/b-3.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(119,0,'discover','discover',8,'image/png',1711,'general/discover.png','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(120,0,'favicon','favicon',8,'image/png',960,'general/favicon.png','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(121,0,'furniture-banner3','furniture-banner3',8,'image/jpeg',26362,'general/furniture-banner3.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(122,0,'insta-1','insta-1',8,'image/jpeg',1556,'general/insta-1.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(123,0,'logo-light','logo-light',8,'image/png',3145,'general/logo-light.png','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(124,0,'logo','logo',8,'image/png',3306,'general/logo.png','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(125,0,'master-card','master-card',8,'image/png',2540,'general/master-card.png','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(126,0,'newsletter','newsletter',8,'image/jpeg',5748,'general/newsletter.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(127,0,'paypal','paypal',8,'image/png',1937,'general/paypal.png','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(128,0,'visa','visa',8,'image/png',2041,'general/visa.png','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(129,0,'1','1',9,'image/jpeg',13645,'promotion/1.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(130,0,'10','10',9,'image/jpeg',19195,'promotion/10.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(131,0,'2','2',9,'image/jpeg',13930,'promotion/2.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(132,0,'3','3',9,'image/jpeg',16561,'promotion/3.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(133,0,'4','4',9,'image/jpeg',17689,'promotion/4.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(134,0,'5','5',9,'image/jpeg',17665,'promotion/5.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(135,0,'6','6',9,'image/jpeg',8445,'promotion/6.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(136,0,'7','7',9,'image/jpeg',8675,'promotion/7.jpg','[]','2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(137,0,'8','8',9,'image/jpeg',9228,'promotion/8.jpg','[]','2024-03-11 00:12:14','2024-03-11 00:12:14',NULL),(138,0,'9','9',9,'image/jpeg',11178,'promotion/9.jpg','[]','2024-03-11 00:12:14','2024-03-11 00:12:14',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-03-11 00:11:54','2024-03-11 00:11:54',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-03-11 00:11:55','2024-03-11 00:11:55',NULL),(3,0,'customers',NULL,'customers',0,'2024-03-11 00:11:56','2024-03-11 00:11:56',NULL),(4,0,'products',NULL,'products',0,'2024-03-11 00:11:59','2024-03-11 00:11:59',NULL),(5,0,'news',NULL,'news',0,'2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(6,0,'testimonials',NULL,'testimonials',0,'2024-03-11 00:12:11','2024-03-11 00:12:11',NULL),(7,0,'sliders',NULL,'sliders',0,'2024-03-11 00:12:12','2024-03-11 00:12:12',NULL),(8,0,'general',NULL,'general',0,'2024-03-11 00:12:13','2024-03-11 00:12:13',NULL),(9,0,'promotion',NULL,'promotion',0,'2024-03-11 00:12:13','2024-03-11 00:12:13',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-03-11 00:12:13','2024-03-11 00:12:13');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(2,1,1,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(3,1,1,10,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Homepage 2',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(4,1,1,11,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Homepage 3',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(5,1,1,12,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Homepage 4',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(6,1,1,13,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Homepage 5',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(7,1,1,14,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Homepage 6',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(8,1,0,NULL,NULL,'/products',NULL,0,'Products',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(9,1,0,NULL,NULL,'#',NULL,0,'Shop',NULL,'_self',1,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(10,1,9,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Product Category',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(11,1,9,1,'Botble\\Ecommerce\\Models\\Brand','/brands/fashion-live',NULL,0,'Brand',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(12,1,9,1,'Botble\\Ecommerce\\Models\\ProductTag','/product-tags/electronic',NULL,0,'Product Tag',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(13,1,9,NULL,NULL,'products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(14,1,0,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(15,1,14,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(16,1,14,1,'Botble\\Blog\\Models\\Category','/blog/ecommerce',NULL,0,'Blog Category',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(17,1,14,1,'Botble\\Blog\\Models\\Tag','/tag/general',NULL,0,'Blog Tag',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(18,1,14,NULL,NULL,'news/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Blog Single',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(19,1,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(20,1,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(21,2,0,4,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(22,2,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(23,2,0,6,'Botble\\Page\\Models\\Page','/location',NULL,0,'Location',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(24,2,0,7,'Botble\\Page\\Models\\Page','/affiliates',NULL,0,'Affiliates',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(25,2,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(26,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Television',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(27,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Mobile',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(28,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Headphone',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(29,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Watches',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(30,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Game',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(31,4,0,NULL,NULL,'/customer/overview',NULL,0,'My profile',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(32,4,0,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(33,4,0,NULL,NULL,'customer/orders',NULL,0,'Orders',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13'),(34,4,0,NULL,NULL,'/orders/tracking',NULL,0,'Order tracking',NULL,'_self',0,'2024-03-11 00:12:13','2024-03-11 00:12:13');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(2,'Useful Links','useful-links','published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(3,'Categories','categories','published','2024-03-11 00:12:13','2024-03-11 00:12:13'),(4,'My Account','my-account','published','2024-03-11 00:12:13','2024-03-11 00:12:13');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:03','2024-03-11 00:12:03'),(2,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:03','2024-03-11 00:12:03'),(3,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:03','2024-03-11 00:12:03'),(4,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:03','2024-03-11 00:12:03'),(5,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:03','2024-03-11 00:12:03'),(6,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:03','2024-03-11 00:12:03'),(7,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:03','2024-03-11 00:12:03'),(8,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:03','2024-03-11 00:12:03'),(9,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:03','2024-03-11 00:12:03'),(10,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(11,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(12,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(13,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(14,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',25,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',26,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',27,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',28,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',29,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',30,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',31,'Botble\\Ecommerce\\Models\\Product','2024-03-11 00:12:04','2024-03-11 00:12:04'),(32,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-11 00:12:12','2024-03-11 00:12:12'),(33,'sub_title','[\"New Tranding\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-11 00:12:12','2024-03-11 00:12:12'),(34,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-11 00:12:12','2024-03-11 00:12:12'),(35,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-03-11 00:12:12','2024-03-11 00:12:12');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2020_11_18_150916_ads_create_ads_table',2),(34,'2021_12_02_035301_add_ads_translations_table',2),(35,'2023_04_17_062645_add_open_in_new_tab',2),(36,'2023_11_07_023805_add_tablet_mobile_image',2),(37,'2015_06_29_025744_create_audit_history',3),(38,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(39,'2015_06_18_033822_create_blog_table',4),(40,'2021_02_16_092633_remove_default_value_for_author_type',4),(41,'2021_12_03_030600_create_blog_translations',4),(42,'2022_04_19_113923_add_index_to_table_posts',4),(43,'2023_08_29_074620_make_column_author_id_nullable',4),(44,'2016_06_17_091537_create_contacts_table',5),(45,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(46,'2020_03_05_041139_create_ecommerce_tables',6),(47,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(48,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(49,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(50,'2021_02_18_073505_update_table_ec_reviews',6),(51,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(52,'2021_03_10_025153_change_column_tax_amount',6),(53,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(54,'2021_04_28_074008_ecommerce_create_product_label_table',6),(55,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(56,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(57,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(58,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(59,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(60,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(61,'2021_11_23_071403_correct_languages_for_product_variations',6),(62,'2021_11_28_031808_add_product_tags_translations',6),(63,'2021_12_01_031123_add_featured_image_to_ec_products',6),(64,'2022_01_01_033107_update_table_ec_shipments',6),(65,'2022_02_16_042457_improve_product_attribute_sets',6),(66,'2022_03_22_075758_correct_product_name',6),(67,'2022_04_19_113334_add_index_to_ec_products',6),(68,'2022_04_28_144405_remove_unused_table',6),(69,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(70,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(71,'2022_06_16_095633_add_index_to_some_tables',6),(72,'2022_06_30_035148_create_order_referrals_table',6),(73,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(74,'2022_08_14_032836_create_ec_order_returns_table',6),(75,'2022_08_14_033554_create_ec_order_return_items_table',6),(76,'2022_08_15_040324_add_billing_address',6),(77,'2022_08_30_091114_support_digital_products_table',6),(78,'2022_09_13_095744_create_options_table',6),(79,'2022_09_13_104347_create_option_value_table',6),(80,'2022_10_05_163518_alter_table_ec_order_product',6),(81,'2022_10_12_041517_create_invoices_table',6),(82,'2022_10_12_142226_update_orders_table',6),(83,'2022_10_13_024916_update_table_order_returns',6),(84,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(85,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(86,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(87,'2022_11_19_041643_add_ec_tax_product_table',6),(88,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(89,'2022_12_17_041532_fix_address_in_order_invoice',6),(90,'2022_12_26_070329_create_ec_product_views_table',6),(91,'2023_01_04_033051_fix_product_categories',6),(92,'2023_01_09_050400_add_ec_global_options_translations_table',6),(93,'2023_01_10_093754_add_missing_option_value_id',6),(94,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(95,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(96,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(97,'2023_02_27_095752_remove_duplicate_reviews',6),(98,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(99,'2023_04_21_082427_create_ec_product_categorizables_table',6),(100,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(101,'2023_05_17_025812_fix_invoice_issue',6),(102,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(103,'2023_05_27_144611_fix_exchange_rate_setting',6),(104,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(105,'2023_06_30_042512_create_ec_order_tax_information_table',6),(106,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',6),(107,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',6),(108,'2023_08_15_064505_create_ec_tax_rules_table',6),(109,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',6),(110,'2023_08_22_094114_drop_unique_for_barcode',6),(111,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',6),(112,'2023_09_07_094312_add_index_to_product_sku_and_translations',6),(113,'2023_09_19_024955_create_discount_product_categories_table',6),(114,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',6),(115,'2023_11_22_154643_add_unique_in_table_ec_products_variations',6),(116,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',6),(117,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',6),(118,'2023_12_25_040604_ec_create_review_replies_table',6),(119,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',6),(120,'2024_01_16_070706_fix_translation_tables',6),(121,'2024_01_23_075227_add_proof_file_to_ec_orders_table',6),(122,'2018_07_09_221238_create_faq_table',7),(123,'2021_12_03_082134_create_faq_translations',7),(124,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(125,'2016_10_03_032336_create_languages_table',8),(126,'2023_09_14_022423_add_index_for_language_table',8),(127,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(128,'2021_12_03_075608_create_page_translations',9),(129,'2023_07_06_011444_create_slug_translations_table',9),(130,'2019_11_18_061011_create_country_table',10),(131,'2021_12_03_084118_create_location_translations',10),(132,'2021_12_03_094518_migrate_old_location_data',10),(133,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(134,'2022_01_16_085908_improve_plugin_location',10),(135,'2022_08_04_052122_delete_location_backup_tables',10),(136,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(137,'2023_07_26_041451_add_more_columns_to_location_table',10),(138,'2023_07_27_041451_add_more_columns_to_location_translation_table',10),(139,'2023_08_15_073307_drop_unique_in_states_cities_translations',10),(140,'2023_10_21_065016_make_state_id_in_table_cities_nullable',10),(141,'2017_10_24_154832_create_newsletter_table',11),(142,'2017_05_18_080441_create_payment_tables',12),(143,'2021_03_27_144913_add_customer_type_into_table_payments',12),(144,'2021_05_24_034720_make_column_currency_nullable',12),(145,'2021_08_09_161302_add_metadata_column_to_payments_table',12),(146,'2021_10_19_020859_update_metadata_field',12),(147,'2022_06_28_151901_activate_paypal_stripe_plugin',12),(148,'2022_07_07_153354_update_charge_id_in_table_payments',12),(149,'2017_07_11_140018_create_simple_slider_table',13),(150,'2018_07_09_214610_create_testimonial_table',14),(151,'2021_12_03_083642_create_testimonials_translations',14),(152,'2016_10_07_193005_create_translations_table',15),(153,'2023_12_12_105220_drop_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider with_product_categories=\"\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products title=\"Trending Products\"][/trending-products]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" subtitle2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(2,'Contact us','<div>[contact-form][/contact-form]</div><div>[google-map]959 Homestead Street Eastlake, NYC[/google-map]</div>',1,NULL,'default',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(3,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(4,'About us','<p>March Hare. \'Sixteenth,\' added the Gryphon, the squeaking of the bread-and-butter. Just at this moment the King, and the Queen said--\' \'Get to your little boy, And beat him when he sneezes: He only does it to annoy, Because he knows it teases.\' CHORUS. (In which the March Hare, \'that \"I breathe when I sleep\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must have a trial: For really this morning I\'ve nothing to what I like\"!\' \'You might just as well. The twelve jurors.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(5,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(6,'Location','<p>Alice, who was trembling down to look over their heads. She felt that she let the Dormouse again, so she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' said Two, in a coaxing tone, and she went out, but it all is! I\'ll try if I would talk on such a thing. After a minute or two, which gave the Pigeon in a tone of great surprise. \'Of course twinkling begins with an M, such as mouse-traps, and the little door about fifteen inches high: she tried hard to whistle to.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(7,'Affiliates','<p>Alice soon came upon a neat little house, and wondering whether she ought not to her, though, as they were all locked; and when she had put on your head-- Do you think, at your age, it is right?\' \'In my youth,\' Father William replied to his ear. Alice considered a little, half expecting to see what would happen next. The first thing she heard a voice sometimes choked with sobs, to sing you a couple?\' \'You are old, Father William,\' the young Crab, a little way out of the thing at all. \'But.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(8,'Brands','<p>[all-brands][/all-brands]</p>',1,NULL,'default',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(10,'Homepage 2','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-2\" key=\"home-slider\"][/simple-slider]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"DHAEBCMWGYJG\" key_2=\"MDEUVQI9QPKM\" style=\"style-2\"][/theme-ads]</div><div>[flash-sale style=\"style-2\" title=\"Deal Of The Days\" flash_sale_id=\"1\"][/flash-sale]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[product-blocks featured_product_title=\"Featured Products\" style=\"style-2\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[newsletter-form style=\"style-2\" title=\"Subscribe Our Newsletter\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(11,'Homepage 3','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-3\" key=\"home-slider\"][/simple-slider]</div><div>[our-features style=\"style-3\" icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Worldwide\" icon2=\"flaticon-money-back\" title2=\"Money Returns\" subtitle2=\"30 Days money return\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Customer Support\" icon4=\"flaticon-lock\" title4=\"Payment Security\" subtitle4=\"Safe Payment\"][/our-features]</div><div>[product-blocks featured_product_title=\"Exclusive Products\" style=\"style-3\" number_of_displays=\"8\"][/product-blocks]</div><div>[theme-ads style=\"style-3\" key_1=\"EYMG7NGZTHJL\" key_2=\"NKWBGV6NAC3M\"][/theme-ads]</div><div>[trending-products style=\"style-3\" title=\"Trending Items\"][/trending-products]</div><div>[instagram title=\"instagram\" username=\"@shoppingzone\" images=\"general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg,general/insta-1.jpg\"][/instagram]</div><div>[featured-brands style=\"style-3\" title=\"Our Brands\"][/featured-brands]</div>',1,NULL,'homepage',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(12,'Homepage 4','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-4\" key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories style=\"style-4\" link=\"products\" title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[trending-products style=\"style-4\" number_of_displays=\"8\" title=\"Our Top Products\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/trending-products]</div><div>[flash-sale style=\"style-4\" flash_sale_id=\"1\" background_image=\"general/furniture-banner3.jpg\" show_newsletter=\"yes\" title=\"Big Sale Deal\" description=\"Sale 40% Off\" button_url=\"/products\"][/flash-sale]</div><div>[product-blocks style=\"style-4\" on_sale_product_title=\"Special Offers\" on_sale_product_description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/product-blocks]</div><div>[featured-news title=\"Latest News\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.\"][/featured-news]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(13,'Homepage 5','<div>[simple-slider collapsing_product_categories=\"no\" style=\"style-5\" key=\"home-slider\" ads_1=\"WF2VEBKBGUFA\" ads_2=\"YKE9S2TUEEJB\"][/simple-slider]</div><div>[product-collections style=\"style-5\" ads_key=\"WF2VEBKBGUFA\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[trending-products ads_key=\"YKE9S2TUEEJB\" title=\"Trending Products\"][/trending-products]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(14,'Homepage 6','<div>[simple-slider collapsing_product_categories=\"yes\" style=\"style-6\" key=\"home-slider\"][/simple-slider]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[product-collections style=\"style-6\" title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"7W3YFO7XE422\"][/theme-ads]</div><div>[trending-products title=\"Trending Products\"][/trending-products]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[featured-brands title=\"Our Brands\" style=\"style-3\"][/featured-brands]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'NOX0GIOGAU','sslcommerz',NULL,1301.80,1,'completed','confirm',4,NULL,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'APJFAEDWXF','paystack',NULL,370.60,2,'completed','confirm',7,NULL,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'XDMJIQQCLX','paystack',NULL,184.30,3,'completed','confirm',6,NULL,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'GGVAPIAW4Q','paypal',NULL,491.00,4,'completed','confirm',1,NULL,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'XUWGIJI7UP','mollie',NULL,1487.20,5,'completed','confirm',3,NULL,NULL,'2024-03-11 00:12:07','2024-03-11 00:12:07','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'4XT64GOTDQ','cod',NULL,1250.70,6,'pending','confirm',6,NULL,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'MUOJABU3CK','paypal',NULL,384.60,7,'completed','confirm',8,NULL,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'MTLRABUCFK','paystack',NULL,1092.20,8,'completed','confirm',2,NULL,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'WZ3MZGFOLM','sslcommerz',NULL,1255.80,9,'completed','confirm',2,NULL,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'9XOIVYGP4O','sslcommerz',NULL,563.55,10,'completed','confirm',2,NULL,NULL,'2024-03-11 00:12:08','2024-03-11 00:12:08','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'0ABR5MVISD','paystack',NULL,580.00,11,'completed','confirm',5,NULL,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'IWVWFUU0LS','razorpay',NULL,651.00,12,'completed','confirm',10,NULL,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'ZNVXVESWLQ','mollie',NULL,1523.28,13,'completed','confirm',10,NULL,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'P9M3D3SSSK','bank_transfer',NULL,640.95,14,'pending','confirm',9,NULL,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'HL23EPCO9U','cod',NULL,936.20,15,'pending','confirm',9,NULL,NULL,'2024-03-11 00:12:09','2024-03-11 00:12:09','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'YJLGMGWI4E','mollie',NULL,203.50,16,'completed','confirm',7,NULL,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'B2LW50SVRJ','cod',NULL,1166.40,17,'pending','confirm',10,NULL,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'WBWVYUXTWV','mollie',NULL,487.10,18,'completed','confirm',1,NULL,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'QRPRF7OTY2','bank_transfer',NULL,734.70,19,'pending','confirm',6,NULL,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'BFX0FX0REG','sslcommerz',NULL,731.80,20,'completed','confirm',7,NULL,NULL,'2024-03-11 00:12:10','2024-03-11 00:12:10','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(2,2),(3,2),(1,3),(3,3),(2,4),(3,4),(2,5),(3,5),(2,6),(4,6),(1,7),(3,7),(1,8),(4,8),(2,9),(4,9),(1,10),(4,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1597,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1036,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1449,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2312,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1387,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',728,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1256,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',2358,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1847,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',574,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',400,NULL,'2024-03-11 00:12:11','2024-03-11 00:12:11');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-03-11 00:12:12','2024-03-11 00:12:12');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-03-11 00:12:12'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-03-11 00:12:12'),(8,'language_hide_default','1',NULL,'2024-03-11 00:12:12'),(10,'language_display','all',NULL,'2024-03-11 00:12:12'),(11,'language_hide_languages','[]',NULL,'2024-03-11 00:12:12'),(12,'media_random_hash','d4f8737d3c7e2ec04548f08f7384614c',NULL,NULL),(13,'payment_cod_status','1',NULL,NULL),(14,'payment_bank_transfer_status','1',NULL,NULL),(15,'theme','shopwise',NULL,NULL),(16,'show_admin_bar','1',NULL,NULL),(17,'language_switcher_display','dropdown',NULL,NULL),(18,'admin_favicon','general/favicon.png',NULL,NULL),(19,'admin_logo','general/logo-light.png',NULL,NULL),(20,'permalink-botble-blog-models-post','blog',NULL,NULL),(21,'permalink-botble-blog-models-category','blog',NULL,NULL),(22,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(23,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(24,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(25,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(26,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(28,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(29,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,NULL),(30,'ecommerce_product_sku_format','SW-2443-[%S]',NULL,NULL),(31,'simple_slider_using_assets','0',NULL,NULL),(32,'ecommerce_store_name','Shopwise',NULL,NULL),(33,'ecommerce_store_phone','123-456-7890',NULL,NULL),(34,'ecommerce_store_address','123 Street, Old Trafford',NULL,NULL),(35,'ecommerce_store_state','New York',NULL,NULL),(36,'ecommerce_store_city','New York',NULL,NULL),(37,'ecommerce_store_country','US',NULL,NULL),(38,'theme-shopwise-site_title','Shopwise - Laravel Ecommerce system',NULL,NULL),(39,'theme-shopwise-seo_description','Shopwise is designed for the eCommerce site. His design is suitable for small and big projects. It was built for your Shopping store, fashion store, clothing store, digital store, watch store, men store, women store, kids store, accessories store, Shoe store and etc.',NULL,NULL),(40,'theme-shopwise-copyright','© 2024 Botble Technologies. All Rights Reserved.',NULL,NULL),(41,'theme-shopwise-favicon','general/favicon.png',NULL,NULL),(42,'theme-shopwise-logo','general/logo.png',NULL,NULL),(43,'theme-shopwise-logo_footer','general/logo-light.png',NULL,NULL),(44,'theme-shopwise-address','959 Homestead Street Eastlake, NYC',NULL,NULL),(45,'theme-shopwise-hotline','123-456-7890',NULL,NULL),(46,'theme-shopwise-email','info@sitename.com',NULL,NULL),(47,'theme-shopwise-payment_methods','[\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]',NULL,NULL),(48,'theme-shopwise-newsletter_image','general/newsletter.jpg',NULL,NULL),(49,'theme-shopwise-homepage_id','1',NULL,NULL),(50,'theme-shopwise-blog_page_id','3',NULL,NULL),(51,'theme-shopwise-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(52,'theme-shopwise-cookie_consent_learn_more_url','https://shopwise.test/cookie-policy',NULL,NULL),(53,'theme-shopwise-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(54,'theme-shopwise-about-us','If you are going to use of Lorem Ipsum need to be sure there isn\'t hidden of text',NULL,NULL),(58,'theme-shopwise-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ion-social-facebook\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3b5998\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ion-social-twitter\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#00acee\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"ion-social-youtube\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#c4302b\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ion-social-instagram\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3f729b\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Woman Fashion','sliders/1.jpg','products','Get up to 50% off Today Only!',1,'2024-03-11 00:12:12','2024-03-11 00:12:12'),(2,1,'Man Fashion','sliders/2.jpg','products','50% off in all products',2,'2024-03-11 00:12:12','2024-03-11 00:12:12'),(3,1,'Summer Sale','sliders/3.jpg','products','Taking your Viewing Experience to Next Level',3,'2024-03-11 00:12:12','2024-03-11 00:12:12');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider',NULL,'published','2024-03-11 00:12:12','2024-03-11 00:12:12');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:11:55','2024-03-11 00:11:55'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:11:55','2024-03-11 00:11:55'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:11:55','2024-03-11 00:11:55'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:11:55','2024-03-11 00:11:55'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:11:55','2024-03-11 00:11:55'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:11:55','2024-03-11 00:11:55'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-03-11 00:11:55','2024-03-11 00:11:55'),(8,'television',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:55','2024-03-11 00:11:55'),(9,'home-audio-theaters',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:55','2024-03-11 00:11:55'),(10,'tv-videos',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:55','2024-03-11 00:11:55'),(11,'camera-photos-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:55','2024-03-11 00:11:55'),(12,'cellphones-accessories',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:55','2024-03-11 00:11:55'),(13,'headphones',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(14,'videos-games',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(15,'wireless-speakers',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(16,'office-electronic',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(17,'mobile',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(18,'digital-cables',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(19,'audio-video-cables',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(20,'batteries',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(21,'headphone',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(22,'computer-tablets',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(23,'laptop',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(24,'monitors',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(25,'computer-components',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(26,'watches',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(27,'drive-storages',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(28,'gaming-laptop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(29,'security-protection',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(30,'accessories',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(31,'game',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(32,'camera',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(33,'audio',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(34,'mobile-tablet',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(35,'accessories',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(36,'home-audio-theater',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(37,'tv-smart-box',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(38,'printer',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(39,'computer',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(40,'fax-machine',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(41,'mouse',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-03-11 00:11:56','2024-03-11 00:11:56'),(42,'smart-home-speaker-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:03','2024-03-11 00:12:14'),(43,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:03','2024-03-11 00:12:03'),(44,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:03','2024-03-11 00:12:03'),(45,'chikie-bluetooth-speaker',4,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:03','2024-03-11 00:12:03'),(46,'camera-hikvision-hk-35vs8-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:03','2024-03-11 00:12:14'),(47,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:03','2024-03-11 00:12:03'),(48,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:03','2024-03-11 00:12:03'),(49,'apple-iphone-13-plus',8,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:03','2024-03-11 00:12:03'),(50,'macbook-pro-2015-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:03','2024-03-11 00:12:14'),(51,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(52,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(53,'macbook-pro-13-inch',12,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(54,'apple-keyboard-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:14'),(55,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(56,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(57,'apple-airpods-serial-3',16,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(58,'cool-smart-watches-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:14'),(59,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(60,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(61,'macbook-pro-2015-13-inch',20,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(62,'historic-alarm-clock-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:14'),(63,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(64,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(65,'gaming-keyboard',24,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(66,'dual-camera-20mp-digital',25,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:14'),(67,'smart-watches',26,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(68,'beat-headphone',27,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(69,'red-black-headphone',28,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(70,'audio-equipment-digital',29,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:14'),(71,'smart-televisions',30,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(72,'samsung-smart-tv',31,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:04','2024-03-11 00:12:04'),(73,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:12:06','2024-03-11 00:12:06'),(74,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:12:06','2024-03-11 00:12:06'),(75,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:12:06','2024-03-11 00:12:06'),(76,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:12:06','2024-03-11 00:12:06'),(77,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:12:06','2024-03-11 00:12:06'),(78,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-03-11 00:12:06','2024-03-11 00:12:06'),(79,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(80,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(81,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(82,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(83,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-03-11 00:12:11','2024-03-11 00:12:11'),(84,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-03-11 00:12:11','2024-03-11 00:12:11'),(85,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-03-11 00:12:11','2024-03-11 00:12:11'),(86,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-03-11 00:12:11','2024-03-11 00:12:11'),(87,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-03-11 00:12:11','2024-03-11 00:12:11'),(88,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(89,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(90,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(91,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(92,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(93,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(94,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(95,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(96,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(97,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(98,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-03-11 00:12:11','2024-03-11 00:12:12'),(99,'homepage',1,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(100,'contact-us',2,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(101,'blog',3,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(102,'about-us',4,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(103,'faq',5,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(104,'location',6,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(105,'affiliates',7,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(106,'brands',8,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(107,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(108,'homepage-2',10,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(109,'homepage-3',11,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(110,'homepage-4',12,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(111,'homepage-5',13,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(112,'homepage-6',14,'Botble\\Page\\Models\\Page','','2024-03-11 00:12:12','2024-03-11 00:12:12'),(113,'smart-home-speaker-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(114,'smart-home-speaker-digital',33,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(115,'headphone-ultra-bass',34,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(116,'headphone-ultra-bass',35,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(117,'boxed-bluetooth-headphone',36,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(118,'boxed-bluetooth-headphone',37,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(119,'chikie-bluetooth-speaker',38,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(120,'chikie-bluetooth-speaker',39,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(121,'camera-hikvision-hk-35vs8-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(122,'camera-samsung-ss-24',41,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(123,'camera-samsung-ss-24',42,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(124,'camera-samsung-ss-24',43,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(125,'leather-watch-band',44,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(126,'leather-watch-band',45,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(127,'apple-iphone-13-plus',46,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(128,'macbook-pro-2015-digital',47,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(129,'macbook-pro-2015-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(130,'macbook-pro-2015-digital',49,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(131,'macbook-pro-2015-digital',50,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(132,'macbook-air-12-inch',51,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(133,'macbook-air-12-inch',52,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(134,'apple-watch-serial-7',53,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(135,'macbook-pro-13-inch',54,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(136,'macbook-pro-13-inch',55,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(137,'macbook-pro-13-inch',56,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(138,'apple-keyboard-digital',57,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(139,'apple-keyboard-digital',58,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(140,'macsafe-80w',59,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(141,'hand-playstation',60,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(142,'hand-playstation',61,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(143,'apple-airpods-serial-3',62,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(144,'apple-airpods-serial-3',63,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(145,'apple-airpods-serial-3',64,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(146,'apple-airpods-serial-3',65,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(147,'cool-smart-watches-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(148,'cool-smart-watches-digital',67,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(149,'cool-smart-watches-digital',68,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(150,'black-smart-watches',69,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(151,'black-smart-watches',70,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(152,'black-smart-watches',71,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(153,'leather-watch-band-serial-3',72,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(154,'leather-watch-band-serial-3',73,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(155,'macbook-pro-2015-13-inch',74,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(156,'macbook-pro-2015-13-inch',75,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(157,'macbook-pro-2015-13-inch',76,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(158,'macbook-pro-2015-13-inch',77,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(159,'macbook-pro-2015-13-inch',78,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(160,'historic-alarm-clock-digital',79,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(161,'black-glasses',80,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(162,'black-glasses',81,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(163,'black-glasses',82,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(164,'phillips-mouse',83,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(165,'phillips-mouse',84,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(166,'phillips-mouse',85,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(167,'gaming-keyboard',86,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(168,'dual-camera-20mp-digital',87,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(169,'dual-camera-20mp-digital',88,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(170,'dual-camera-20mp-digital',89,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(171,'smart-watches',90,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(172,'smart-watches',91,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(173,'smart-watches',92,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(174,'beat-headphone',93,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(175,'beat-headphone',94,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(176,'beat-headphone',95,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(177,'red-black-headphone',96,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(178,'audio-equipment-digital',97,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(179,'smart-televisions',98,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(180,'smart-televisions',99,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(181,'samsung-smart-tv',100,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(182,'samsung-smart-tv',101,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14'),(183,'samsung-smart-tv',102,'Botble\\Ecommerce\\Models\\Product','products','2024-03-11 00:12:14','2024-03-11 00:12:14');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-11 00:12:11','2024-03-11 00:12:11'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-11 00:12:11','2024-03-11 00:12:11'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-11 00:12:11','2024-03-11 00:12:11'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-11 00:12:11','2024-03-11 00:12:11'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-03-11 00:12:11','2024-03-11 00:12:11');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Adam Williams','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/1.jpg','CEO Of Microsoft','published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(2,'Retha Deowalim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/2.jpg','CEO Of Apple','published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(3,'Sam J. Wasim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/3.jpg','Pio Founder','published','2024-03-11 00:12:12','2024-03-11 00:12:12'),(4,'Usan Gulwarm','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/4.jpg','CEO Of Facewarm','published','2024-03-11 00:12:12','2024-03-11 00:12:12');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mills.aleen@anderson.org',NULL,'$2y$12$lFGIvko12jUKhVSvw1Jfy.xjKWHWXMP3mWERmE2DwSfocywQ2icum',NULL,'2024-03-11 00:12:12','2024-03-11 00:12:12','Donna','Deckow','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','shopwise',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}','2024-03-11 00:12:13','2024-03-11 00:12:13'),(2,'CustomMenuWidget','footer_sidebar','shopwise',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}','2024-03-11 00:12:13','2024-03-11 00:12:13'),(3,'CustomMenuWidget','footer_sidebar','shopwise',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-03-11 00:12:13','2024-03-11 00:12:13'),(4,'BlogSearchWidget','primary_sidebar','shopwise',0,'{\"id\":\"BlogSearchWidget\"}','2024-03-11 00:12:13','2024-03-11 00:12:13'),(5,'BlogCategoriesWidget','primary_sidebar','shopwise',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":10}','2024-03-11 00:12:13','2024-03-11 00:12:13'),(6,'RecentPostsWidget','primary_sidebar','shopwise',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-03-11 00:12:13','2024-03-11 00:12:13'),(7,'TagsWidget','primary_sidebar','shopwise',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2024-03-11 00:12:13','2024-03-11 00:12:13');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-11 14:12:15
