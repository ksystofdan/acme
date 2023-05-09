-- MariaDB dump 10.19  Distrib 10.6.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: acme
-- ------------------------------------------------------
-- Server version	10.6.3-MariaDB-1:10.6.3+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_application_references` (`reference`),
  UNIQUE KEY `unique_application_domains` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,'Default','default','acme.bettr.lt',1);
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications_domains`
--

DROP TABLE IF EXISTS `applications_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_application_aliases` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications_domains`
--

LOCK TABLES `applications_domains` WRITE;
/*!40000 ALTER TABLE `applications_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `applications_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_addons_addons`
--

DROP TABLE IF EXISTS `default_addons_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_addons_addons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `versions` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `marketplace` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `requires` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `suggests` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `licenses` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `authors` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `support` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `assets` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `readme` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `182be0c5cdcd5072bb1864cdee4d3d6e` (`name`),
  UNIQUE KEY `e369853df766fa44e1ed0ff613f563bd` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_addons_addons`
--

LOCK TABLES `default_addons_addons` WRITE;
/*!40000 ALTER TABLE `default_addons_addons` DISABLE KEYS */;
INSERT INTO `default_addons_addons` VALUES (1,1,'2022-09-20 17:29:39',1,'2022-09-20 17:29:39',1,'extension','anomaly/accordion_block-extension','anomaly.extension.accordion_block','Accordion Block','a:3:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";}','a:0:{}','Display content within collapsible accordions.','http://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:68:\"https://github.com/anomalylabs/accordion_block-extension/tree/v1.0.2\";}','a:0:{}','# Accordion Block Extension\n'),(2,2,'2022-09-20 17:29:40',1,'2022-09-21 12:54:02',1,'field_type','anomaly/addon-field_type','anomaly.field_type.addon','anomaly.field_type.addon::addon.title','a:0:{}','a:0:{}','An addon dropdown field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Addon Field Type\n\n*anomaly.field_type.addon*\n\n#### An addon dropdown field type.\n\nThe addon field type provides a addons dropdown input.\n'),(3,3,'2022-09-20 17:29:41',1,'2022-09-21 12:54:23',1,'module','anomaly/addons-module','anomaly.module.addons','anomaly.module.addons::addon.title','a:0:{}','a:0:{}','Addon information and management.','http://pyrocms.com/addons/anomaly/addons-module','a:2:{s:17:\"composer/composer\";s:4:\"^1.6\";s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:47:\"https://pyrocms.com/documentation/addons-module\";s:5:\"forum\";s:48:\"https://pyrocms.com/forum/channels/addons-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:76:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [addons-module]\";s:6:\"source\";s:44:\"https://github.com/anomalylabs/addons-module\";}','a:2:{s:4:\"icon\";s:20:\"marketplace/icon.png\";s:11:\"screenshots\";a:0:{}}','# Addons Module\n\n[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://packagist.org/packages/anomaly/addons-module) \n[![Build Status](https://scrutinizer-ci.com/g/anomalylabs/addons-module/badges/build.png?b=master)](https://scrutinizer-ci.com/g/anomalylabs/addons-module/build-status/master)\n[![Code Quality](http://img.shields.io/scrutinizer/g/anomalylabs/addons-module.svg)](https://scrutinizer-ci.com/g/anomalylabs/addons-module/)\n[![Total Downloads](http://img.shields.io/packagist/dt/anomaly/addons-module.svg)](https://packagist.org/packages/anomaly/addons-module)\n\n[![SensioLabsInsight](https://insight.sensiolabs.com/projects/81982ec5-cbe1-499f-aafc-3d75c747a4fd/small.png)](https://insight.sensiolabs.com/projects/81982ec5-cbe1-499f-aafc-3d75c747a4fd)\n\nAddon information and management.\n'),(4,4,'2022-09-20 17:29:41',1,'2022-09-20 17:29:41',1,'module','anomaly/api-module','anomaly.module.api','Api','a:27:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:7:\"v1.0.10\";i:3;s:6:\"v1.0.2\";i:4;s:6:\"v1.0.3\";i:5;s:6:\"v1.0.4\";i:6;s:6:\"v1.0.5\";i:7;s:6:\"v1.0.6\";i:8;s:6:\"v1.0.7\";i:9;s:6:\"v1.0.8\";i:10;s:6:\"v1.0.9\";i:12;s:6:\"v2.0.0\";i:13;s:6:\"v2.0.1\";i:14;s:7:\"v2.0.10\";i:15;s:7:\"v2.0.11\";i:16;s:6:\"v2.0.2\";i:17;s:6:\"v2.0.3\";i:18;s:6:\"v2.0.4\";i:19;s:6:\"v2.0.5\";i:20;s:6:\"v2.0.6\";i:21;s:6:\"v2.0.7\";i:22;s:6:\"v2.0.8\";i:23;s:6:\"v2.0.9\";i:25;s:6:\"v2.1.0\";i:26;s:6:\"v2.1.1\";i:27;s:6:\"v2.1.2\";i:28;s:6:\"v2.1.3\";}','a:0:{}','Securely expose Streams data to an extensible public API.','http://pyrocms.com/addons/anomaly/api-module','a:2:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";s:16:\"laravel/passport\";s:6:\"^8.0.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:6:{s:4:\"docs\";s:44:\"https://pyrocms.com/documentation/api-module\";s:5:\"forum\";s:45:\"https://pyrocms.com/forum/channels/api-module\";s:6:\"videos\";s:48:\"https://pyrocms.com/videos/categories/api-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:73:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [api-module]\";s:6:\"source\";s:41:\"https://github.com/anomalylabs/api-module\";}','a:0:{}',NULL),(5,5,'2022-09-20 17:29:42',1,'2022-09-20 17:29:42',1,'extension','anomaly/authorizenet_gateway-extension','anomaly.extension.authorizenet_gateway','Authorizenet Gateway','a:2:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";}','a:0:{}','An Authorize.net AIM gateway extension for the Payments module.','http://anomaly.is/','a:1:{s:20:\"omnipay/authorizenet\";s:4:\"^3.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:17:\"AnomalyLabs, Inc.\";s:5:\"email\";s:16:\"hello@anomaly.is\";s:8:\"homepage\";s:18:\"http://anomaly.is/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:18:\"support@anomaly.is\";s:6:\"source\";s:73:\"https://github.com/anomalylabs/authorizenet_gateway-extension/tree/v1.0.1\";}','a:0:{}',NULL),(6,6,'2022-09-20 17:29:43',1,'2022-09-20 17:29:43',1,'extension','anomaly/authy_authenticator-extension','anomaly.extension.authy_authenticator','Authy Authenticator','a:1:{i:0;s:6:\"v1.0.0\";}','a:0:{}','An Authy multi-factor authenticator.','http://pyrocms.com/addons/anomaly/authy_authenticator-extension','a:3:{s:24:\"anomaly/streams-platform\";s:4:\"^1.5\";s:20:\"anomaly/users-module\";s:4:\"^2.5\";s:9:\"authy/php\";s:6:\"^3.0.0\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:63:\"https://pyrocms.com/documentation/authy-authenticator-extension\";s:5:\"forum\";s:64:\"https://pyrocms.com/forum/channels/authy-authenticator-extension\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:92:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [authy_authenticator-extension]\";s:6:\"source\";s:60:\"https://github.com/anomalylabs/authy_authenticator-extension\";}','a:0:{}',NULL),(7,7,'2022-09-20 17:29:44',1,'2022-09-20 17:29:44',1,'extension','anomaly/bitbucket-extension','anomaly.extension.bitbucket','Bitbucket','a:1:{i:0;s:6:\"v1.0.0\";}','a:0:{}','Bitbucket API authorization and integration.','http://pyrocms.com/','a:2:{s:16:\"bitbucket/client\";s:4:\"^1.1\";s:24:\"php-http/guzzle6-adapter\";s:4:\"^1.1\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:3:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:62:\"https://github.com/anomalylabs/bitbucket-extension/tree/v1.0.0\";s:6:\"issues\";s:57:\"https://github.com/anomalylabs/bitbucket-extension/issues\";}','a:0:{}',NULL),(8,8,'2022-09-20 17:29:44',1,'2022-09-21 12:54:23',1,'module','anomaly/blocks-module','anomaly.module.blocks','anomaly.module.blocks::addon.title','a:0:{}','a:0:{}','Manage sections of content.','http://pyrocms.com/addons/anomaly/blocks-module','a:3:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";s:28:\"anomaly/configuration-module\";s:4:\"^2.1\";s:23:\"anomaly/settings-module\";s:4:\"^2.1\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:47:\"https://pyrocms.com/documentation/blocks-module\";s:5:\"forum\";s:48:\"https://pyrocms.com/forum/channels/blocks-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:76:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [blocks-module]\";s:6:\"source\";s:44:\"https://github.com/anomalylabs/blocks-module\";}','a:0:{}','# Blocks Module\n\nManage small sections of self-contained blocks of logic. \n'),(9,9,'2022-09-20 17:29:45',1,'2022-09-21 12:54:02',1,'field_type','anomaly/boolean-field_type','anomaly.field_type.boolean','anomaly.field_type.boolean::addon.title','a:0:{}','a:0:{}','An on/off switch style field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Boolean Field Type\n\n*anomaly.field_type.boolean*\n\n#### An on/off switch style field type.\n\nThe boolean field type provides an on/off style switch input.\n'),(10,10,'2022-09-20 17:29:46',1,'2022-09-20 17:29:46',1,'extension','anomaly/box_adapter-extension','anomaly.extension.box_adapter','Box Adapter','a:1:{i:0;s:6:\"v1.0.0\";}','a:0:{}',NULL,NULL,'a:1:{s:22:\"ryanvade/flysystem-box\";s:10:\"dev-master\";}','a:0:{}','a:0:{}','a:0:{}','a:1:{s:6:\"source\";s:64:\"https://github.com/anomalylabs/box_adapter-extension/tree/v1.0.0\";}','a:0:{}',NULL),(11,11,'2022-09-20 17:29:47',1,'2022-09-20 17:29:47',1,'extension','anomaly/button_block-extension','anomaly.extension.button_block','Button Block','a:9:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";i:5;s:6:\"v1.0.5\";i:6;s:6:\"v1.0.6\";i:7;s:6:\"v1.0.7\";i:8;s:6:\"v1.0.8\";}','a:0:{}','A button block.','http://pyrocms.com/','a:2:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";s:23:\"anomaly/icon-field_type\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:65:\"https://github.com/anomalylabs/button_block-extension/tree/v1.0.8\";}','a:0:{}',NULL),(12,12,'2022-09-20 17:29:47',1,'2022-09-21 12:54:03',1,'field_type','anomaly/checkboxes-field_type','anomaly.field_type.checkboxes','anomaly.field_type.checkboxes::addon.title','a:0:{}','a:0:{}','A checkboxes field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Checkboxes Field Type\n\n*anomaly.field_type.checkboxes*\n\n#### A checkboxes field type.\n\nThe checkboxes field type provides multiple checkbox inputs.\n'),(13,13,'2022-09-20 17:29:48',1,'2022-09-21 12:54:03',1,'field_type','anomaly/colorpicker-field_type','anomaly.field_type.colorpicker','anomaly.field_type.colorpicker::addon.title','a:0:{}','a:0:{}','A colorpicker field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Colorpicker Field Type\n\n*anomaly.field_type.checkboxes*\n\nA colorpicker field type.\n'),(14,14,'2022-09-20 17:29:48',1,'2022-09-20 17:29:48',1,'module','anomaly/comments-module','anomaly.module.comments','Comments','a:19:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:7:\"v1.0.10\";i:3;s:7:\"v1.0.11\";i:4;s:7:\"v1.0.12\";i:5;s:7:\"v1.0.13\";i:6;s:7:\"v1.0.14\";i:7;s:7:\"v1.0.15\";i:8;s:7:\"v1.0.16\";i:9;s:7:\"v1.0.17\";i:10;s:7:\"v1.0.18\";i:11;s:6:\"v1.0.2\";i:12;s:6:\"v1.0.3\";i:13;s:6:\"v1.0.4\";i:14;s:6:\"v1.0.5\";i:15;s:6:\"v1.0.6\";i:16;s:6:\"v1.0.7\";i:17;s:6:\"v1.0.8\";i:18;s:6:\"v1.0.9\";}','a:0:{}','A powerful commenting system.','http://pyrocms.com/','a:2:{s:20:\"anomaly/emoji-plugin\";s:4:\"^1.0\";s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:2:{s:32:\"anomaly/content_filter-extension\";s:47:\"A basic content filter for the comments module.\";s:37:\"anomaly/whitelist_moderator-extension\";s:52:\"A basic whitelist moderator for the comments module.\";}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:59:\"https://github.com/anomalylabs/comments-module/tree/v1.0.18\";}','a:0:{}',NULL),(15,15,'2022-09-20 17:29:49',1,'2022-09-21 12:54:24',1,'module','anomaly/configuration-module','anomaly.module.configuration','anomaly.module.configuration::addon.title','a:0:{}','a:0:{}','Addon configuration management for the Streams Platform.','http://pyrocms.com/addons/anomaly/configuration-module','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:54:\"https://pyrocms.com/documentation/configuration-module\";s:5:\"forum\";s:55:\"https://pyrocms.com/forum/channels/configuration-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:83:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [configuration-module]\";s:6:\"source\";s:51:\"https://github.com/anomalylabs/configuration-module\";}','a:0:{}','# Configuration Module\n\n[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://packagist.org/packages/anomaly/configuration-module) \n[![Build Status](https://scrutinizer-ci.com/g/anomalylabs/configuration-module/badges/build.png?b=master)](https://scrutinizer-ci.com/g/anomalylabs/configuration-module/build-status/master)\n[![Code Quality](http://img.shields.io/scrutinizer/g/anomalylabs/configuration-module.svg)](https://scrutinizer-ci.com/g/anomalylabs/configuration-module/)\n[![Total Downloads](http://img.shields.io/packagist/dt/anomaly/configuration-module.svg)](https://packagist.org/packages/anomaly/configuration-module)\n\n[![SensioLabsInsight](https://insight.sensiolabs.com/projects/15919ee3-2cac-4e59-b54d-d79afbcf293c/small.png)](https://insight.sensiolabs.com/projects/15919ee3-2cac-4e59-b54d-d79afbcf293c)\n\nAddon configuration management.\n'),(16,16,'2022-09-20 17:29:49',1,'2022-09-21 12:54:30',1,'plugin','anomaly/contact-plugin','anomaly.plugin.contact','anomaly.plugin.contact::addon.title','a:0:{}','a:0:{}','A simple contact form plugin.','http://anomaly.is/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:17:\"AnomalyLabs, Inc.\";s:5:\"email\";s:16:\"hello@anomaly.is\";s:8:\"homepage\";s:18:\"http://anomaly.is/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Contact Plugin\n\nA simple contact form plugin.\n'),(17,17,'2022-09-20 17:29:50',1,'2022-09-20 17:29:50',1,'extension','anomaly/content_filter-extension','anomaly.extension.content_filter','Content Filter','a:5:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";}','a:0:{}','A basic content filter for the comments module.','http://pyrocms.com/','a:1:{s:23:\"anomaly/comments-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:67:\"https://github.com/anomalylabs/content_filter-extension/tree/v1.0.4\";}','a:0:{}',NULL),(18,18,'2022-09-20 17:29:51',1,'2022-09-21 12:54:04',1,'field_type','anomaly/country-field_type','anomaly.field_type.country','anomaly.field_type.country::addon.title','a:0:{}','a:0:{}','A country dropdown field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Country Field Type\n\n*anomaly.field_type.country*\n\n### A country dropdown field type.\n\nThe country field type provides a dropdown input of countries.\n'),(19,19,'2022-09-20 17:29:51',1,'2022-09-21 12:54:25',1,'module','anomaly/dashboard-module','anomaly.module.dashboard','anomaly.module.dashboard::addon.title','a:0:{}','a:0:{}','A system dashboard and report manager.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:50:\"https://pyrocms.com/documentation/dashboard-module\";s:5:\"forum\";s:51:\"https://pyrocms.com/forum/channels/dashboard-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:79:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [dashboard-module]\";s:6:\"source\";s:47:\"https://github.com/anomalylabs/dashboard-module\";}','a:0:{}','# Dashboard Module\n\n[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://packagist.org/packages/anomaly/dashboard-module) \n[![Build Status](https://scrutinizer-ci.com/g/anomalylabs/dashboard-module/badges/build.png?b=master)](https://scrutinizer-ci.com/g/anomalylabs/dashboard-module/build-status/master)\n[![Code Quality](http://img.shields.io/scrutinizer/g/anomalylabs/dashboard-module.svg)](https://scrutinizer-ci.com/g/anomalylabs/dashboard-module/)\n[![Total Downloads](http://img.shields.io/packagist/dt/anomaly/dashboard-module.svg)](https://packagist.org/packages/anomaly/dashboard-module)\n\n[![SensioLabsInsight](https://insight.sensiolabs.com/projects/4099a034-ce40-4c0e-b58e-966415aa6833/small.png)](https://insight.sensiolabs.com/projects/4099a034-ce40-4c0e-b58e-966415aa6833)\n\nA system dashboard and report manager.\n'),(20,20,'2022-09-20 17:29:52',1,'2022-09-21 12:54:04',1,'field_type','anomaly/datetime-field_type','anomaly.field_type.datetime','anomaly.field_type.datetime::addon.title','a:0:{}','a:0:{}','A date and time picker field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Datetime Field Type\n\n*anomaly.field_type.datetime*\n\n#### A date and time picker field type.\n\nThe datetime field type provides a date and/or time picker input.\n'),(21,21,'2022-09-20 17:29:52',1,'2022-09-21 12:54:05',1,'field_type','anomaly/decimal-field_type','anomaly.field_type.decimal','anomaly.field_type.decimal::addon.title','a:0:{}','a:0:{}','A decimal number field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Decimal Field Type\n\n*anomaly.field_type.decimal*\n\n### A decimal number field type.\n\nThe decimal field type provides a basic HTML input that restricts values to a specified decimal value between an optional range and decimal places.\n'),(22,22,'2022-09-20 17:29:53',1,'2022-09-21 12:54:17',1,'extension','anomaly/default_authenticator-extension','anomaly.extension.default_authenticator','anomaly.extension.default_authenticator::addon.title','a:0:{}','a:0:{}','The default user authenticator for the Users module.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Default Authenticator\n\nThe default user authenticator extension for the Users module.\n'),(23,23,'2022-09-20 17:29:53',1,'2022-09-21 12:54:18',1,'extension','anomaly/default_page_handler-extension','anomaly.extension.default_page_handler','anomaly.extension.default_page_handler::addon.title','a:0:{}','a:0:{}','The default page handler for the Pages module.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Default Page Handler Extension\n\nThe default page handler for the Pages module.\n'),(24,24,'2022-09-20 17:29:54',1,'2022-09-20 17:29:54',1,'extension','anomaly/disqus_block-extension','anomaly.extension.disqus_block','Disqus Block','a:6:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";i:5;s:6:\"v1.0.5\";}','a:0:{}','Embed Disqus comments.','http://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:65:\"https://github.com/anomalylabs/disqus_block-extension/tree/v1.0.5\";}','a:2:{s:4:\"icon\";s:20:\"marketplace/icon.png\";s:11:\"screenshots\";a:0:{}}','# Disqus Block\n\nEmbed Disqus comments.\n\n### Configuration\n\nSet your Disqus shortname in **Settings > Extensions > Disqus Block** \n'),(25,25,'2022-09-20 17:29:55',1,'2022-09-20 17:29:55',1,'module','anomaly/documentation-module','anomaly.module.documentation','Documentation','a:103:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:7:\"v1.0.10\";i:3;s:7:\"v1.0.11\";i:4;s:7:\"v1.0.12\";i:5;s:7:\"v1.0.13\";i:6;s:7:\"v1.0.14\";i:7;s:7:\"v1.0.15\";i:8;s:7:\"v1.0.16\";i:9;s:7:\"v1.0.17\";i:10;s:7:\"v1.0.18\";i:11;s:7:\"v1.0.19\";i:12;s:6:\"v1.0.2\";i:13;s:7:\"v1.0.20\";i:14;s:7:\"v1.0.21\";i:15;s:7:\"v1.0.22\";i:16;s:7:\"v1.0.23\";i:17;s:6:\"v1.0.3\";i:18;s:6:\"v1.0.4\";i:19;s:6:\"v1.0.5\";i:20;s:6:\"v1.0.6\";i:21;s:6:\"v1.0.7\";i:22;s:6:\"v1.0.8\";i:23;s:6:\"v1.0.9\";i:24;s:6:\"v1.1.0\";i:25;s:6:\"v1.1.1\";i:26;s:7:\"v1.1.10\";i:27;s:7:\"v1.1.11\";i:28;s:7:\"v1.1.12\";i:29;s:7:\"v1.1.13\";i:30;s:7:\"v1.1.14\";i:31;s:7:\"v1.1.15\";i:32;s:6:\"v1.1.2\";i:33;s:6:\"v1.1.3\";i:34;s:6:\"v1.1.4\";i:35;s:6:\"v1.1.5\";i:36;s:6:\"v1.1.6\";i:37;s:6:\"v1.1.7\";i:38;s:6:\"v1.1.8\";i:39;s:6:\"v1.1.9\";i:41;s:6:\"v1.2.0\";i:42;s:6:\"v1.2.1\";i:43;s:6:\"v1.2.2\";i:44;s:6:\"v1.2.3\";i:45;s:6:\"v1.2.4\";i:46;s:6:\"v1.2.5\";i:48;s:6:\"v2.0.0\";i:49;s:6:\"v2.0.1\";i:50;s:7:\"v2.0.10\";i:51;s:7:\"v2.0.11\";i:52;s:7:\"v2.0.12\";i:53;s:7:\"v2.0.13\";i:54;s:7:\"v2.0.14\";i:55;s:7:\"v2.0.15\";i:56;s:7:\"v2.0.16\";i:57;s:7:\"v2.0.17\";i:58;s:7:\"v2.0.18\";i:59;s:7:\"v2.0.19\";i:60;s:6:\"v2.0.2\";i:61;s:7:\"v2.0.20\";i:62;s:7:\"v2.0.21\";i:63;s:7:\"v2.0.22\";i:64;s:7:\"v2.0.23\";i:65;s:7:\"v2.0.24\";i:66;s:7:\"v2.0.25\";i:67;s:7:\"v2.0.26\";i:68;s:7:\"v2.0.27\";i:69;s:7:\"v2.0.28\";i:70;s:7:\"v2.0.29\";i:71;s:6:\"v2.0.3\";i:72;s:7:\"v2.0.30\";i:73;s:7:\"v2.0.31\";i:74;s:7:\"v2.0.32\";i:75;s:7:\"v2.0.33\";i:76;s:7:\"v2.0.34\";i:77;s:6:\"v2.0.4\";i:78;s:6:\"v2.0.5\";i:79;s:6:\"v2.0.6\";i:80;s:6:\"v2.0.7\";i:81;s:6:\"v2.0.8\";i:82;s:6:\"v2.0.9\";i:84;s:6:\"v2.1.0\";i:85;s:6:\"v2.1.1\";i:86;s:7:\"v2.1.10\";i:87;s:7:\"v2.1.11\";i:88;s:7:\"v2.1.12\";i:89;s:7:\"v2.1.13\";i:90;s:7:\"v2.1.14\";i:91;s:7:\"v2.1.15\";i:92;s:6:\"v2.1.2\";i:93;s:6:\"v2.1.3\";i:94;s:6:\"v2.1.4\";i:95;s:6:\"v2.1.5\";i:96;s:6:\"v2.1.6\";i:97;s:6:\"v2.1.7\";i:98;s:6:\"v2.1.8\";i:99;s:6:\"v2.1.9\";i:101;s:6:\"v2.2.0\";i:102;s:6:\"v2.2.1\";i:103;s:6:\"v2.2.2\";i:104;s:6:\"v2.2.3\";i:105;s:6:\"v2.2.4\";i:106;s:6:\"v2.2.5\";}','a:0:{}','A powerful commenting system.','http://pyrocms.com/','a:2:{s:25:\"anomaly/sitemap-extension\";s:4:\"^2.2\";s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:2:{s:38:\"anomaly/github_documentation-extension\";s:50:\"Store documentation source in a GitHub repository.\";s:37:\"anomaly/local_documentation-extension\";s:35:\"Store documentation source locally.\";}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:60:\"https://github.com/anomalylabs/documentation-module/tree/2.2\";}','a:0:{}',NULL),(26,26,'2022-09-20 17:29:56',1,'2022-09-20 17:29:56',1,'extension','anomaly/dropbox_adapter-extension','anomaly.extension.dropbox_adapter','Dropbox Adapter','a:1:{i:0;s:6:\"v1.0.0\";}','a:0:{}','A Dropbox adapter for the Files module.','https://pyrocms.com/','a:2:{s:20:\"anomaly/files-module\";s:4:\"^2.4\";s:24:\"spatie/flysystem-dropbox\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:23:\"https://pyrocms.com/pro\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:23:\"https://pyrocms.com/pro\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:65:\"https://github.com/anomalylabs/dropbox_adapter-extension/tree/1.0\";}','a:0:{}',NULL),(27,27,'2022-09-20 17:29:57',1,'2022-09-21 12:54:05',1,'field_type','anomaly/editor-field_type','anomaly.field_type.editor','anomaly.field_type.editor::addon.title','a:0:{}','a:0:{}','A code editor field type powered by Ace.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.4\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Editor Field Type\n\n*anomaly.field_type.editor*\n\n### An editor field type powered by Ace.\n\nThe editor field type provides a rich editor input powered by Ace.\n'),(28,28,'2022-09-20 17:29:57',1,'2022-09-21 12:54:06',1,'field_type','anomaly/email-field_type','anomaly.field_type.email','anomaly.field_type.email::addon.title','a:0:{}','a:0:{}','An email input field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Email Field Type\n\n*anomaly.field_type.email*\n\n### An email input field type.\n\nThe email field type provides an HTML5 email input.\n'),(29,29,'2022-09-20 17:29:58',1,'2022-09-20 17:29:58',1,'plugin','anomaly/emoji-plugin','anomaly.plugin.emoji','Emoji','a:7:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";i:5;s:6:\"v1.0.5\";i:6;s:6:\"v1.0.6\";}','a:0:{}','An emoji utility for the Streams Platform.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:55:\"https://github.com/anomalylabs/emoji-plugin/tree/v1.0.6\";}','a:0:{}',NULL),(30,30,'2022-09-20 17:29:58',1,'2022-09-21 12:54:06',1,'field_type','anomaly/encrypted-field_type','anomaly.field_type.encrypted','anomaly.field_type.encrypted::addon.title','a:0:{}','a:0:{}','An encrypted value input field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Encrypted Field Type\n\n*anomaly.field_type.encrypted*\n\n#### An encrypted value input field type.\n\nThe encrypted field type provides a basic text or password input that encrypts the value.\n'),(31,31,'2022-09-20 17:29:59',1,'2022-09-20 17:29:59',1,'extension','anomaly/facebook_provider-extension','anomaly.extension.facebook_provider','Facebook Provider','a:2:{i:0;s:6:\"v1.0.1\";i:1;s:6:\"v1.0.2\";}','a:0:{}','A Facebook authentication provider for the Social module.','http://pyrocms.com/','a:3:{s:21:\"anomaly/social-module\";s:4:\"^1.0\";s:24:\"anomaly/streams-platform\";s:4:\"^1.3\";s:22:\"league/oauth2-facebook\";s:6:\"^2.0.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:70:\"https://github.com/anomalylabs/facebook_provider-extension/tree/v1.0.2\";}','a:0:{}',NULL),(32,32,'2022-09-20 17:30:00',1,'2022-09-20 17:30:00',1,'extension','anomaly/faqs_block-extension','anomaly.extension.faqs_block','Faqs Block','a:5:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";}','a:0:{}','Display frequently asked questions.','http://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:63:\"https://github.com/anomalylabs/faqs_block-extension/tree/v1.0.4\";}','a:0:{}',NULL),(33,33,'2022-09-20 17:30:00',1,'2022-09-21 12:54:07',1,'field_type','anomaly/file-field_type','anomaly.field_type.file','anomaly.field_type.file::addon.title','a:0:{}','a:0:{}','A file upload field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# File Field Type\n\n*anomaly.field_type.file*\n\n#### A file upload field type.\n\nThe file file type provides a file input that uploads to the Files module.\n'),(34,34,'2022-09-20 17:30:01',1,'2022-09-21 12:54:07',1,'field_type','anomaly/files-field_type','anomaly.field_type.files','anomaly.field_type.files::addon.title','a:0:{}','a:0:{}','A multiple files upload field type.','http://pyrocms.com/addons/anomaly/files-field_type','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:50:\"https://pyrocms.com/documentation/files-field-type\";s:5:\"forum\";s:51:\"https://pyrocms.com/forum/channels/files-field-type\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:79:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [files-field-type]\";s:6:\"source\";s:47:\"https://github.com/anomalylabs/files-field-type\";}','a:0:{}','# Files Field Type\n\n*anomaly.field_type.files*\n\n#### An encrypted value input field type.\n\nThe files field type provides a multiple file uploader input.\n'),(35,35,'2022-09-20 17:30:02',1,'2022-09-21 12:54:25',1,'module','anomaly/files-module','anomaly.module.files','anomaly.module.files::addon.title','a:0:{}','a:0:{}','Powerful asset management made easy.','http://pyrocms.com/addons/anomaly/files-module','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:46:\"https://pyrocms.com/documentation/files-module\";s:5:\"forum\";s:47:\"https://pyrocms.com/forum/channels/files-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:75:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [files-module]\";s:6:\"source\";s:43:\"https://github.com/anomalylabs/files-module\";}','a:0:{}','# Files Module\n\nPowerful asset management made easy.\n'),(36,36,'2022-09-20 17:30:02',1,'2022-09-20 17:30:02',1,'module','anomaly/forms-module','anomaly.module.forms','Forms','a:70:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:7:\"v1.0.10\";i:3;s:7:\"v1.0.11\";i:4;s:7:\"v1.0.12\";i:5;s:7:\"v1.0.13\";i:6;s:7:\"v1.0.14\";i:7;s:7:\"v1.0.15\";i:8;s:7:\"v1.0.16\";i:9;s:7:\"v1.0.17\";i:10;s:7:\"v1.0.18\";i:11;s:6:\"v1.0.2\";i:12;s:6:\"v1.0.3\";i:13;s:6:\"v1.0.4\";i:14;s:6:\"v1.0.5\";i:15;s:6:\"v1.0.6\";i:16;s:6:\"v1.0.7\";i:17;s:6:\"v1.0.8\";i:18;s:6:\"v1.0.9\";i:20;s:6:\"v1.1.0\";i:21;s:6:\"v1.1.1\";i:22;s:6:\"v1.1.5\";i:23;s:6:\"v1.1.6\";i:24;s:6:\"v1.1.7\";i:25;s:6:\"v1.1.8\";i:27;s:6:\"v1.2.0\";i:28;s:6:\"v1.2.1\";i:29;s:7:\"v1.2.10\";i:30;s:7:\"v1.2.11\";i:31;s:7:\"v1.2.12\";i:32;s:7:\"v1.2.13\";i:33;s:7:\"v1.2.14\";i:34;s:7:\"v1.2.15\";i:35;s:7:\"v1.2.16\";i:36;s:7:\"v1.2.17\";i:37;s:7:\"v1.2.18\";i:38;s:6:\"v1.2.2\";i:39;s:6:\"v1.2.3\";i:40;s:6:\"v1.2.4\";i:41;s:6:\"v1.2.5\";i:42;s:6:\"v1.2.6\";i:43;s:6:\"v1.2.7\";i:44;s:6:\"v1.2.8\";i:45;s:6:\"v1.2.9\";i:47;s:6:\"v1.3.0\";i:48;s:6:\"v1.3.1\";i:49;s:7:\"v1.3.10\";i:50;s:7:\"v1.3.11\";i:51;s:7:\"v1.3.12\";i:52;s:7:\"v1.3.13\";i:53;s:7:\"v1.3.14\";i:54;s:7:\"v1.3.15\";i:55;s:7:\"v1.3.16\";i:56;s:7:\"v1.3.17\";i:57;s:7:\"v1.3.18\";i:58;s:7:\"v1.3.19\";i:59;s:6:\"v1.3.2\";i:60;s:7:\"v1.3.20\";i:61;s:7:\"v1.3.21\";i:62;s:7:\"v1.3.22\";i:63;s:7:\"v1.3.23\";i:64;s:7:\"v1.3.24\";i:65;s:7:\"v1.3.25\";i:66;s:6:\"v1.3.3\";i:67;s:6:\"v1.3.4\";i:68;s:6:\"v1.3.5\";i:69;s:6:\"v1.3.6\";i:70;s:6:\"v1.3.7\";i:71;s:6:\"v1.3.8\";i:72;s:6:\"v1.3.9\";}','a:0:{}','Easily build and manage custom drop-in forms.','http://pyrocms.com/','a:2:{s:31:\"anomaly/standard_form-extension\";s:4:\"^1.1\";s:24:\"anomaly/streams-platform\";s:4:\"^1.3\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:46:\"https://pyrocms.com/documentation/forms-module\";s:5:\"forum\";s:47:\"https://pyrocms.com/forum/channels/forms-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:75:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [forms-module]\";s:6:\"source\";s:43:\"https://github.com/anomalylabs/forms-module\";}','a:0:{}',NULL),(37,37,'2022-09-20 17:30:03',1,'2022-09-20 17:30:03',1,'module','anomaly/forum-module','anomaly.module.forum','Forum','a:54:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:7:\"v1.0.10\";i:3;s:7:\"v1.0.11\";i:4;s:7:\"v1.0.12\";i:5;s:7:\"v1.0.13\";i:6;s:7:\"v1.0.14\";i:7;s:7:\"v1.0.15\";i:8;s:7:\"v1.0.16\";i:9;s:7:\"v1.0.17\";i:10;s:6:\"v1.0.2\";i:11;s:6:\"v1.0.3\";i:12;s:6:\"v1.0.4\";i:13;s:6:\"v1.0.5\";i:14;s:6:\"v1.0.6\";i:15;s:6:\"v1.0.7\";i:16;s:6:\"v1.0.8\";i:17;s:6:\"v1.0.9\";i:19;s:6:\"v1.1.0\";i:20;s:6:\"v1.1.1\";i:21;s:7:\"v1.1.10\";i:22;s:7:\"v1.1.11\";i:23;s:7:\"v1.1.12\";i:24;s:7:\"v1.1.13\";i:25;s:7:\"v1.1.14\";i:26;s:7:\"v1.1.15\";i:27;s:7:\"v1.1.16\";i:28;s:7:\"v1.1.17\";i:29;s:7:\"v1.1.18\";i:30;s:7:\"v1.1.19\";i:31;s:6:\"v1.1.2\";i:32;s:7:\"v1.1.20\";i:33;s:7:\"v1.1.21\";i:34;s:7:\"v1.1.22\";i:35;s:7:\"v1.1.23\";i:36;s:7:\"v1.1.24\";i:37;s:7:\"v1.1.25\";i:38;s:7:\"v1.1.26\";i:39;s:7:\"v1.1.27\";i:40;s:7:\"v1.1.28\";i:41;s:7:\"v1.1.29\";i:42;s:6:\"v1.1.3\";i:43;s:7:\"v1.1.30\";i:44;s:7:\"v1.1.31\";i:45;s:6:\"v1.1.4\";i:46;s:6:\"v1.1.5\";i:47;s:6:\"v1.1.6\";i:48;s:6:\"v1.1.7\";i:49;s:6:\"v1.1.8\";i:50;s:6:\"v1.1.9\";i:52;s:6:\"v2.0.0\";i:53;s:6:\"v2.0.1\";i:54;s:6:\"v2.0.2\";i:55;s:6:\"v2.0.3\";}','a:0:{}','Powerful online discussion forums made simple.','https://pyrocms.com/addons/anomaly/forum-module','a:2:{s:27:\"anomaly/reactions-extension\";s:4:\"^1.0\";s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:46:\"https://pyrocms.com/documentation/forum-module\";s:5:\"forum\";s:47:\"https://pyrocms.com/forum/channels/forum-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:75:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [forum-module]\";s:6:\"source\";s:43:\"https://github.com/anomalylabs/forum-module\";}','a:0:{}','# Forum Module\n\nPowerful online discussion forums made simple.\n'),(38,38,'2022-09-20 17:30:04',1,'2022-09-20 17:30:04',1,'field_type','anomaly/geocoder-field_type','anomaly.field_type.geocoder','Geocoder','a:65:{i:0;s:6:\"v1.1.0\";i:1;s:6:\"v1.1.1\";i:2;s:7:\"v1.1.10\";i:3;s:7:\"v1.1.11\";i:4;s:7:\"v1.1.12\";i:5;s:7:\"v1.1.13\";i:6;s:7:\"v1.1.14\";i:7;s:7:\"v1.1.15\";i:8;s:7:\"v1.1.16\";i:9;s:7:\"v1.1.17\";i:10;s:7:\"v1.1.18\";i:11;s:7:\"v1.1.19\";i:12;s:6:\"v1.1.2\";i:13;s:7:\"v1.1.20\";i:14;s:7:\"v1.1.21\";i:15;s:7:\"v1.1.22\";i:16;s:7:\"v1.1.23\";i:17;s:7:\"v1.1.24\";i:18;s:7:\"v1.1.25\";i:19;s:7:\"v1.1.26\";i:20;s:7:\"v1.1.27\";i:21;s:7:\"v1.1.28\";i:22;s:7:\"v1.1.29\";i:23;s:6:\"v1.1.3\";i:24;s:7:\"v1.1.30\";i:25;s:7:\"v1.1.31\";i:26;s:7:\"v1.1.32\";i:27;s:7:\"v1.1.33\";i:28;s:7:\"v1.1.34\";i:29;s:7:\"v1.1.35\";i:30;s:7:\"v1.1.36\";i:31;s:7:\"v1.1.37\";i:32;s:7:\"v1.1.38\";i:33;s:7:\"v1.1.39\";i:34;s:6:\"v1.1.4\";i:35;s:7:\"v1.1.40\";i:36;s:7:\"v1.1.41\";i:37;s:7:\"v1.1.42\";i:38;s:7:\"v1.1.43\";i:39;s:7:\"v1.1.44\";i:40;s:7:\"v1.1.45\";i:41;s:7:\"v1.1.46\";i:42;s:7:\"v1.1.47\";i:43;s:7:\"v1.1.48\";i:44;s:7:\"v1.1.49\";i:45;s:6:\"v1.1.5\";i:46;s:7:\"v1.1.50\";i:47;s:7:\"v1.1.51\";i:48;s:6:\"v1.1.6\";i:49;s:6:\"v1.1.7\";i:50;s:6:\"v1.1.8\";i:51;s:6:\"v1.1.9\";i:53;s:6:\"v1.2.0\";i:54;s:6:\"v1.2.1\";i:55;s:6:\"v1.2.2\";i:56;s:6:\"v1.2.3\";i:57;s:6:\"v1.2.4\";i:58;s:6:\"v1.2.5\";i:59;s:6:\"v1.2.6\";i:61;s:6:\"v1.3.0\";i:62;s:6:\"v1.3.1\";i:63;s:6:\"v1.3.2\";i:64;s:6:\"v1.3.3\";i:66;s:6:\"v1.4.0\";i:68;s:6:\"v2.0.0\";}','a:0:{}','A geocoding field type powered by Google Maps.','http://anomaly.is/','a:4:{s:24:\"anomaly/streams-platform\";s:4:\"^1.8\";s:13:\"doctrine/dbal\";s:4:\"^2.6\";s:28:\"grimzy/laravel-mysql-spatial\";s:6:\"~5.0.0\";s:17:\"guzzlehttp/guzzle\";s:4:\"~6.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:17:\"AnomalyLabs, Inc.\";s:5:\"email\";s:16:\"hello@anomaly.is\";s:8:\"homepage\";s:18:\"http://anomaly.is/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:18:\"support@anomaly.is\";s:6:\"source\";s:58:\"https://github.com/anomalylabs/geocoder-field_type/tree/l8\";}','a:0:{}',NULL),(39,39,'2022-09-20 17:30:05',1,'2022-09-20 17:30:05',1,'extension','anomaly/github-extension','anomaly.extension.github','Github','a:1:{i:0;s:6:\"v1.0.1\";}','a:0:{}','Github API authorization and integration.','http://pyrocms.com/','a:2:{s:18:\"knplabs/github-api\";s:4:\"^2.7\";s:24:\"php-http/guzzle6-adapter\";s:4:\"^1.1\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:3:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:59:\"https://github.com/anomalylabs/github-extension/tree/v1.0.1\";s:6:\"issues\";s:54:\"https://github.com/anomalylabs/github-extension/issues\";}','a:0:{}',NULL),(40,40,'2022-09-20 17:30:06',1,'2022-09-20 17:30:06',1,'extension','anomaly/github_documentation-extension','anomaly.extension.github_documentation','Github Documentation','a:19:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:7:\"v1.0.10\";i:3;s:7:\"v1.0.11\";i:4;s:7:\"v1.0.12\";i:5;s:7:\"v1.0.13\";i:6;s:7:\"v1.0.14\";i:7;s:7:\"v1.0.15\";i:8;s:7:\"v1.0.16\";i:9;s:7:\"v1.0.17\";i:10;s:6:\"v1.0.2\";i:11;s:6:\"v1.0.3\";i:12;s:6:\"v1.0.4\";i:13;s:6:\"v1.0.5\";i:14;s:6:\"v1.0.6\";i:15;s:6:\"v1.0.7\";i:16;s:6:\"v1.0.8\";i:17;s:6:\"v1.0.9\";i:19;s:6:\"v1.1.0\";}','a:0:{}','A GitHub project source for the documentation module.','http://pyrocms.com/','a:2:{s:18:\"knplabs/github-api\";s:4:\"^2.7\";s:24:\"php-http/guzzle6-adapter\";s:4:\"^1.1\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:74:\"https://github.com/anomalylabs/github_documentation-extension/tree/v1.0.18\";}','a:0:{}',NULL),(41,41,'2022-09-20 17:30:06',1,'2022-09-20 17:30:06',1,'extension','anomaly/github_provider-extension','anomaly.extension.github_provider','Github Provider','a:4:{i:0;s:6:\"v1.0.1\";i:1;s:6:\"v1.0.2\";i:2;s:6:\"v1.0.3\";i:3;s:6:\"v1.0.4\";}','a:0:{}','A github authentication provider for the Social module.','http://pyrocms.com/','a:3:{s:21:\"anomaly/social-module\";s:4:\"^1.0\";s:24:\"anomaly/streams-platform\";s:4:\"^1.3\";s:20:\"league/oauth2-github\";s:6:\"^2.0.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:68:\"https://github.com/anomalylabs/github_provider-extension/tree/v1.0.4\";}','a:0:{}',NULL),(42,42,'2022-09-20 17:30:07',1,'2022-09-20 17:30:07',1,'extension','anomaly/gitlab-extension','anomaly.extension.gitlab','Gitlab','a:2:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";}','a:0:{}','Gitlab API authorization and integration.','http://pyrocms.com/','a:2:{s:27:\"m4tthumphrey/php-gitlab-api\";s:5:\"^9.11\";s:24:\"php-http/guzzle6-adapter\";s:4:\"^1.1\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:3:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:59:\"https://github.com/anomalylabs/gitlab-extension/tree/v1.0.1\";s:6:\"issues\";s:54:\"https://github.com/anomalylabs/gitlab-extension/issues\";}','a:0:{}',NULL),(43,43,'2022-09-20 17:30:08',1,'2022-09-20 17:30:08',1,'extension','anomaly/google_provider-extension','anomaly.extension.google_provider','Google Provider','a:2:{i:0;s:6:\"v1.0.1\";i:1;s:6:\"v1.0.2\";}','a:0:{}','A Google authentication provider for the Social module.','http://pyrocms.com/','a:3:{s:21:\"anomaly/social-module\";s:4:\"^1.0\";s:24:\"anomaly/streams-platform\";s:4:\"^1.3\";s:20:\"league/oauth2-google\";s:6:\"^2.0.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:68:\"https://github.com/anomalylabs/google_provider-extension/tree/v1.0.2\";}','a:0:{}',NULL),(44,44,'2022-09-20 17:30:09',1,'2022-09-20 17:30:09',1,'field_type','anomaly/grid-field_type','anomaly.field_type.grid','Grid','a:76:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:7:\"v1.0.10\";i:3;s:7:\"v1.0.11\";i:4;s:6:\"v1.0.2\";i:5;s:6:\"v1.0.3\";i:6;s:6:\"v1.0.4\";i:7;s:6:\"v1.0.5\";i:8;s:6:\"v1.0.6\";i:9;s:6:\"v1.0.7\";i:10;s:6:\"v1.0.8\";i:11;s:6:\"v1.0.9\";i:13;s:6:\"v1.1.0\";i:14;s:6:\"v1.1.1\";i:15;s:7:\"v1.1.10\";i:16;s:7:\"v1.1.11\";i:17;s:7:\"v1.1.12\";i:18;s:7:\"v1.1.13\";i:19;s:7:\"v1.1.14\";i:20;s:7:\"v1.1.15\";i:21;s:7:\"v1.1.16\";i:22;s:7:\"v1.1.17\";i:23;s:7:\"v1.1.18\";i:24;s:7:\"v1.1.19\";i:25;s:6:\"v1.1.2\";i:26;s:7:\"v1.1.20\";i:27;s:7:\"v1.1.21\";i:28;s:7:\"v1.1.22\";i:29;s:7:\"v1.1.23\";i:30;s:7:\"v1.1.24\";i:31;s:7:\"v1.1.25\";i:32;s:7:\"v1.1.26\";i:33;s:7:\"v1.1.27\";i:34;s:7:\"v1.1.28\";i:35;s:7:\"v1.1.29\";i:36;s:6:\"v1.1.3\";i:37;s:7:\"v1.1.30\";i:38;s:7:\"v1.1.31\";i:39;s:7:\"v1.1.32\";i:40;s:7:\"v1.1.33\";i:41;s:7:\"v1.1.34\";i:42;s:7:\"v1.1.35\";i:43;s:7:\"v1.1.36\";i:44;s:7:\"v1.1.37\";i:45;s:7:\"v1.1.38\";i:46;s:7:\"v1.1.39\";i:47;s:6:\"v1.1.4\";i:48;s:7:\"v1.1.40\";i:49;s:7:\"v1.1.41\";i:50;s:7:\"v1.1.42\";i:51;s:7:\"v1.1.43\";i:52;s:7:\"v1.1.44\";i:53;s:6:\"v1.1.5\";i:54;s:6:\"v1.1.6\";i:55;s:6:\"v1.1.7\";i:56;s:6:\"v1.1.8\";i:57;s:6:\"v1.1.9\";i:60;s:6:\"v1.3.0\";i:61;s:6:\"v1.3.1\";i:62;s:7:\"v1.3.10\";i:63;s:7:\"v1.3.11\";i:64;s:7:\"v1.3.12\";i:65;s:7:\"v1.3.13\";i:66;s:6:\"v1.3.2\";i:67;s:6:\"v1.3.3\";i:68;s:6:\"v1.3.4\";i:69;s:6:\"v1.3.5\";i:70;s:6:\"v1.3.6\";i:71;s:6:\"v1.3.7\";i:72;s:6:\"v1.3.8\";i:73;s:6:\"v1.3.9\";i:75;s:6:\"v1.4.0\";i:76;s:6:\"v1.4.1\";i:77;s:6:\"v1.4.2\";i:78;s:6:\"v1.4.3\";i:79;s:6:\"v1.4.4\";}','a:0:{}',NULL,NULL,'a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:0:{}','a:0:{}','a:1:{s:6:\"source\";s:58:\"https://github.com/anomalylabs/grid-field_type/tree/v1.4.4\";}','a:0:{}',NULL),(45,45,'2022-09-20 17:30:10',1,'2022-09-20 17:30:10',1,'module','anomaly/help-module','anomaly.module.help','Help','a:31:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:7:\"v1.0.10\";i:3;s:7:\"v1.0.11\";i:4;s:7:\"v1.0.12\";i:5;s:7:\"v1.0.13\";i:6;s:7:\"v1.0.14\";i:7;s:7:\"v1.0.15\";i:8;s:7:\"v1.0.16\";i:9;s:7:\"v1.0.17\";i:10;s:7:\"v1.0.18\";i:11;s:7:\"v1.0.19\";i:12;s:6:\"v1.0.2\";i:13;s:7:\"v1.0.20\";i:14;s:7:\"v1.0.21\";i:15;s:7:\"v1.0.22\";i:16;s:7:\"v1.0.23\";i:17;s:7:\"v1.0.24\";i:18;s:7:\"v1.0.25\";i:19;s:7:\"v1.0.26\";i:20;s:7:\"v1.0.27\";i:21;s:7:\"v1.0.28\";i:22;s:7:\"v1.0.29\";i:23;s:6:\"v1.0.3\";i:24;s:7:\"v1.0.30\";i:25;s:6:\"v1.0.4\";i:26;s:6:\"v1.0.5\";i:27;s:6:\"v1.0.6\";i:28;s:6:\"v1.0.7\";i:29;s:6:\"v1.0.8\";i:30;s:6:\"v1.0.9\";}','a:0:{}','A flexible and easy knowledge base.','https://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:55:\"https://github.com/anomalylabs/help-module/tree/v1.0.30\";}','a:0:{}',NULL),(46,46,'2022-09-20 17:30:10',1,'2022-09-21 12:54:31',1,'plugin','anomaly/helper-plugin','anomaly.plugin.helper','anomaly.plugin.helper::addon.title','a:0:{}','a:0:{}','A plugin that provides numerous helpful PHP functions.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.1\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:47:\"https://pyrocms.com/documentation/helper-plugin\";s:5:\"forum\";s:48:\"https://pyrocms.com/forum/channels/helper-plugin\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:76:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [helper-plugin]\";s:6:\"source\";s:44:\"https://github.com/anomalylabs/helper-plugin\";}','a:0:{}','# Helper Plugin\n\nA plugin that provides numerous helpful PHP functions.\n'),(47,47,'2022-09-20 17:30:11',1,'2022-09-21 12:54:18',1,'extension','anomaly/html_block-extension','anomaly.extension.html_block','anomaly.extension.html_block::addon.title','a:0:{}','a:0:{}','Arbitrary HTML code.','http://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# HTML Block\n\nArbitrary HTML code.\n'),(48,48,'2022-09-20 17:30:12',1,'2022-09-20 17:30:12',1,'extension','anomaly/html_widget-extension','anomaly.extension.html_widget','Html Widget','a:2:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";}','a:0:{}','A freestanding HTML widget for the Dashboard module.','http://anomaly.is/','a:1:{s:24:\"anomaly/dashboard-module\";s:4:\"^2.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:61:\"https://github.com/anomalylabs/html_widget-extension/tree/1.0\";}','a:0:{}',NULL),(49,49,'2022-09-20 17:30:12',1,'2022-09-21 12:54:08',1,'field_type','anomaly/icon-field_type','anomaly.field_type.icon','anomaly.field_type.icon::addon.title','a:0:{}','a:0:{}','An icon picker field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:3:{s:4:\"icon\";s:20:\"marketplace/icon.png\";s:6:\"banner\";s:22:\"marketplace/banner.jpg\";s:11:\"screenshots\";a:1:{i:0;s:28:\"marketplace/screenshot-1.png\";}}','# Icon Field Type\n\n*anomaly.field_type.icon*\n\n#### A dropdown field type.\n\nThe icon field type provides an HTML icon input.\n'),(50,50,'2022-09-20 17:30:13',1,'2022-09-20 17:30:13',1,'field_type','anomaly/image-field_type','anomaly.field_type.image','Image','a:74:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:7:\"v1.0.10\";i:3;s:7:\"v1.0.11\";i:4;s:7:\"v1.0.12\";i:5;s:7:\"v1.0.13\";i:6;s:7:\"v1.0.14\";i:7;s:7:\"v1.0.15\";i:8;s:7:\"v1.0.16\";i:9;s:7:\"v1.0.17\";i:10;s:7:\"v1.0.18\";i:11;s:7:\"v1.0.19\";i:12;s:6:\"v1.0.2\";i:13;s:7:\"v1.0.20\";i:14;s:7:\"v1.0.21\";i:15;s:7:\"v1.0.22\";i:16;s:7:\"v1.0.23\";i:17;s:7:\"v1.0.24\";i:18;s:7:\"v1.0.25\";i:19;s:7:\"v1.0.26\";i:20;s:7:\"v1.0.27\";i:21;s:7:\"v1.0.28\";i:22;s:7:\"v1.0.29\";i:23;s:6:\"v1.0.3\";i:24;s:7:\"v1.0.30\";i:25;s:7:\"v1.0.31\";i:26;s:7:\"v1.0.32\";i:27;s:6:\"v1.0.4\";i:28;s:6:\"v1.0.5\";i:29;s:6:\"v1.0.6\";i:30;s:6:\"v1.0.7\";i:31;s:6:\"v1.0.8\";i:32;s:6:\"v1.0.9\";i:34;s:6:\"v1.1.0\";i:35;s:6:\"v1.1.1\";i:36;s:6:\"v1.1.2\";i:37;s:6:\"v1.1.3\";i:38;s:6:\"v1.1.4\";i:39;s:6:\"v1.1.5\";i:41;s:6:\"v1.2.0\";i:42;s:6:\"v1.2.1\";i:43;s:7:\"v1.2.10\";i:44;s:7:\"v1.2.11\";i:45;s:7:\"v1.2.12\";i:46;s:7:\"v1.2.13\";i:47;s:7:\"v1.2.14\";i:48;s:7:\"v1.2.15\";i:49;s:7:\"v1.2.16\";i:50;s:6:\"v1.2.2\";i:51;s:6:\"v1.2.3\";i:52;s:6:\"v1.2.4\";i:53;s:6:\"v1.2.5\";i:54;s:6:\"v1.2.6\";i:55;s:6:\"v1.2.7\";i:56;s:6:\"v1.2.8\";i:57;s:6:\"v1.2.9\";i:59;s:6:\"v1.3.0\";i:60;s:6:\"v1.3.1\";i:61;s:7:\"v1.3.10\";i:62;s:7:\"v1.3.11\";i:63;s:7:\"v1.3.12\";i:64;s:7:\"v1.3.13\";i:65;s:7:\"v1.3.14\";i:66;s:7:\"v1.3.15\";i:67;s:7:\"v1.3.16\";i:68;s:7:\"v1.3.17\";i:69;s:6:\"v1.3.2\";i:70;s:6:\"v1.3.3\";i:71;s:6:\"v1.3.4\";i:72;s:6:\"v1.3.5\";i:73;s:6:\"v1.3.6\";i:74;s:6:\"v1.3.7\";i:75;s:6:\"v1.3.8\";i:76;s:6:\"v1.3.9\";}','a:0:{}',NULL,'http://anomaly.is/','a:2:{s:20:\"anomaly/files-module\";s:4:\"^2.2\";s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:56:\"https://github.com/anomalylabs/image-field_type/tree/1.4\";}','a:2:{s:4:\"icon\";s:20:\"marketplace/icon.png\";s:11:\"screenshots\";a:0:{}}','# Image Field Type\n\nAn image selection and cropping field type.\n'),(51,51,'2022-09-20 17:30:14',1,'2022-09-20 17:30:14',1,'extension','anomaly/image_gallery_block-extension','anomaly.extension.image_gallery_block','Image Gallery Block','a:14:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";i:5;s:6:\"v1.0.5\";i:6;s:6:\"v1.0.6\";i:7;s:6:\"v1.0.7\";i:9;s:6:\"v2.0.0\";i:10;s:6:\"v2.0.1\";i:12;s:6:\"v3.0.0\";i:13;s:6:\"v3.0.1\";i:14;s:6:\"v3.0.2\";i:15;s:6:\"v3.0.3\";}','a:0:{}','An image gallery.','https://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:72:\"https://github.com/anomalylabs/image_gallery_block-extension/tree/v3.0.3\";}','a:0:{}',NULL),(52,52,'2022-09-20 17:30:15',1,'2022-09-20 17:30:15',1,'extension','anomaly/includes-extension','anomaly.extension.includes','Includes','a:3:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:3;s:6:\"v1.1.0\";}','a:0:{}','Easily manage custom include scripts.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.7\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:61:\"https://github.com/anomalylabs/includes-extension/tree/v1.1.0\";}','a:0:{}',NULL),(53,53,'2022-09-20 17:30:15',1,'2022-09-21 12:54:09',1,'field_type','anomaly/integer-field_type','anomaly.field_type.integer','anomaly.field_type.integer::addon.title','a:0:{}','a:0:{}','An integer input field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Integer Field Type\n\n*anomaly.field_type.integer*\n\n#### An integer input field type.\n\nThe integer field type provides a basic HTML input that restricts input to integer values between an optional range.\n'),(54,54,'2022-09-20 17:30:16',1,'2022-09-20 17:30:16',1,'extension','anomaly/ip_filter_security_check-extension','anomaly.extension.ip_filter_security_check','Ip Filter Security Check','a:1:{i:0;s:6:\"v1.0.0\";}','a:0:{}','Restrict control panel access by IP.','http://pyrocms.com/','a:1:{s:20:\"anomaly/users-module\";s:4:\"^2.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:3:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:77:\"https://github.com/anomalylabs/ip_filter_security_check-extension/tree/v1.0.0\";s:6:\"issues\";s:72:\"https://github.com/anomalylabs/ip_filter_security_check-extension/issues\";}','a:0:{}',NULL),(55,55,'2022-09-20 17:30:16',1,'2022-09-21 12:54:09',1,'field_type','anomaly/language-field_type','anomaly.field_type.language','anomaly.field_type.language::addon.name','a:0:{}','a:0:{}','A language dropdown field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Language Field Type\n\n*anomaly.field_type.language*\n\n#### A language dropdown field type.\n\nThe language field type provides a dropdown input of languages.\n'),(56,56,'2022-09-20 17:30:17',1,'2022-09-20 17:30:17',1,'extension','anomaly/links_block-extension','anomaly.extension.links_block','Links Block','a:4:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";}','a:0:{}','A list of links.','http://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:64:\"https://github.com/anomalylabs/links_block-extension/tree/v1.0.3\";}','a:0:{}',NULL),(57,57,'2022-09-20 17:30:18',1,'2022-09-20 17:30:18',1,'extension','anomaly/local_documentation-extension','anomaly.extension.local_documentation','Local Documentation','a:3:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";}','a:0:{}','A local project source for the documentation module.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^2.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:63:\"https://pyrocms.com/documentation/local_documentation-extension\";s:7:\"streams\";s:64:\"https://pyrocms.com/forum/channels/local_documentation-extension\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:92:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [local_documentation-extension]\";s:6:\"source\";s:60:\"https://github.com/anomalylabs/local_documentation-extension\";}','a:0:{}',NULL),(58,58,'2022-09-20 17:30:19',1,'2022-09-20 17:30:19',1,'extension','anomaly/local_storage_adapter-extension','anomaly.extension.local_storage_adapter','Local Storage Adapter','a:20:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.1.0\";i:3;s:6:\"v2.0.0\";i:4;s:6:\"v2.0.1\";i:5;s:6:\"v2.1.0\";i:6;s:6:\"v2.1.1\";i:7;s:7:\"v2.1.10\";i:8;s:7:\"v2.1.11\";i:9;s:7:\"v2.1.12\";i:10;s:7:\"v2.1.13\";i:11;s:7:\"v2.1.14\";i:12;s:6:\"v2.1.2\";i:13;s:6:\"v2.1.3\";i:14;s:6:\"v2.1.4\";i:15;s:6:\"v2.1.5\";i:16;s:6:\"v2.1.6\";i:17;s:6:\"v2.1.7\";i:18;s:6:\"v2.1.8\";i:19;s:6:\"v2.1.9\";}','a:0:{}','A local file storage adapter for the Files module.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:18:\"support@anomaly.is\";s:6:\"source\";s:75:\"https://github.com/anomalylabs/local_storage_adapter-extension/tree/v2.1.14\";}','a:0:{}',NULL),(59,59,'2022-09-20 17:30:19',1,'2022-09-21 12:54:10',1,'field_type','anomaly/markdown-field_type','anomaly.field_type.markdown','anomaly.field_type.markdown::addon.title','a:0:{}','a:0:{}','A markdown editor field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.4\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Markdown Field Type\n\n*anomaly.field_type.markdown*\n\n### A markdown editor field type.\n\nThe markdown field type provides a rich markdown editor input.\n'),(60,60,'2022-09-20 17:30:20',1,'2022-09-20 17:30:20',1,'extension','anomaly/markdown_block-extension','anomaly.extension.markdown_block','Markdown Block','a:2:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";}','a:0:{}','A markdown content block.','http://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:67:\"https://github.com/anomalylabs/markdown_block-extension/tree/v1.0.1\";}','a:0:{}',NULL),(61,61,'2022-09-20 17:30:21',1,'2022-09-21 12:54:10',1,'field_type','anomaly/multiple-field_type','anomaly.field_type.multiple','anomaly.field_type.multiple::addon.title','a:0:{}','a:0:{}','A multiple relationship field type.','http://pyrocms.com/anomaly/multiple-field_type','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:53:\"https://pyrocms.com/documentation/multiple-field-type\";s:5:\"forum\";s:54:\"https://pyrocms.com/forum/channels/multiple-field-type\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:82:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [multiple-field-type]\";s:6:\"source\";s:50:\"https://github.com/anomalylabs/multiple-field-type\";}','a:0:{}','# Multiple Field Type\n\n*anomaly.field_type.multiple*\n\n### A multiple relationship field type.\n\nThe multiple field type provides a multi-select input for a related model.\n'),(62,62,'2022-09-20 17:30:21',1,'2022-09-21 12:54:27',1,'module','anomaly/navigation-module','anomaly.module.navigation','anomaly.module.navigation::addon.title','a:0:{}','a:0:{}','Powerful navigation management made easy.','http://pyrocms.com/addons/anomaly/navigation-module','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.5\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:46:\"https://pyrocms.com/documentation/forum-module\";s:5:\"forum\";s:47:\"https://pyrocms.com/forum/channels/forum-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:75:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [forum-module]\";s:6:\"source\";s:43:\"https://github.com/anomalylabs/forum-module\";}','a:0:{}','# Navigation Module\n\nEasily manage menus of dynamic navigation menus.\n'),(63,63,'2022-09-20 17:30:22',1,'2022-09-21 12:54:19',1,'extension','anomaly/page_link_type-extension','anomaly.extension.page_link_type','anomaly.extension.page_link_type::addon.title','a:0:{}','a:0:{}','A page link type for the Navigation module.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Page Link Type Extension\n\nA page link type for the Navigation module.\n'),(64,64,'2022-09-20 17:30:22',1,'2022-09-21 12:54:33',1,'module','anomaly/pages-module','anomaly.module.pages','anomaly.module.pages::addon.title','a:0:{}','a:0:{}','Create pages, generate navigation, manage content, and build websites faster than ever.','http://pyrocms.com/addons/anomaly/pages-module','a:2:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";s:26:\"anomaly/preferences-module\";s:4:\"^2.1\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:6:{s:4:\"docs\";s:46:\"https://pyrocms.com/documentation/pages-module\";s:5:\"forum\";s:47:\"https://pyrocms.com/forum/channels/pages-module\";s:6:\"videos\";s:50:\"https://pyrocms.com/videos/categories/pages-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:75:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [pages-module]\";s:6:\"source\";s:43:\"https://github.com/anomalylabs/pages-module\";}','a:0:{}','# Pages Module\n\nPublic content and page management. \n'),(65,65,'2022-09-20 17:30:23',1,'2022-09-20 17:30:23',1,'extension','anomaly/partial_block-extension','anomaly.extension.partial_block','Partial Block','a:1:{i:0;s:6:\"v1.0.0\";}','a:0:{}','Include a partial.','https://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:3:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:66:\"https://github.com/anomalylabs/partial_block-extension/tree/v1.0.0\";s:6:\"issues\";s:61:\"https://github.com/anomalylabs/partial_block-extension/issues\";}','a:0:{}',NULL),(66,66,'2022-09-20 17:30:24',1,'2022-09-20 17:30:24',1,'module','anomaly/partials-module','anomaly.module.partials','Partials','a:54:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";i:5;s:6:\"v1.0.5\";i:6;s:6:\"v1.0.6\";i:7;s:6:\"v1.0.7\";i:8;s:6:\"v1.0.8\";i:9;s:6:\"v1.0.9\";i:11;s:6:\"v1.1.0\";i:12;s:6:\"v1.1.1\";i:13;s:7:\"v1.1.10\";i:14;s:7:\"v1.1.11\";i:15;s:7:\"v1.1.12\";i:16;s:7:\"v1.1.13\";i:17;s:7:\"v1.1.14\";i:18;s:6:\"v1.1.2\";i:19;s:6:\"v1.1.3\";i:20;s:6:\"v1.1.4\";i:21;s:6:\"v1.1.5\";i:22;s:6:\"v1.1.6\";i:23;s:6:\"v1.1.7\";i:24;s:6:\"v1.1.8\";i:25;s:6:\"v1.1.9\";i:27;s:6:\"v2.0.0\";i:28;s:6:\"v2.0.1\";i:29;s:6:\"v2.0.2\";i:30;s:6:\"v2.0.3\";i:31;s:6:\"v2.0.4\";i:32;s:6:\"v2.0.5\";i:33;s:6:\"v2.1.0\";i:34;s:6:\"v2.1.1\";i:35;s:7:\"v2.1.10\";i:36;s:7:\"v2.1.11\";i:37;s:7:\"v2.1.12\";i:38;s:7:\"v2.1.13\";i:39;s:6:\"v2.1.2\";i:40;s:6:\"v2.1.3\";i:41;s:6:\"v2.1.4\";i:42;s:6:\"v2.1.5\";i:43;s:6:\"v2.1.6\";i:44;s:6:\"v2.1.7\";i:45;s:6:\"v2.1.8\";i:46;s:6:\"v2.1.9\";i:48;s:6:\"v2.2.0\";i:49;s:6:\"v2.2.1\";i:50;s:6:\"v2.2.2\";i:51;s:6:\"v2.2.3\";i:52;s:6:\"v2.2.4\";i:53;s:6:\"v2.2.5\";i:54;s:6:\"v2.2.6\";i:55;s:6:\"v2.2.7\";i:56;s:6:\"v2.2.8\";}','a:0:{}','Manage snippets of structured content to use anywhere.','https://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.4\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:58:\"https://github.com/anomalylabs/partials-module/tree/v2.2.8\";}','a:0:{}',NULL),(67,67,'2022-09-20 17:30:25',1,'2022-09-20 17:30:25',1,'module','anomaly/payments-module','anomaly.module.payments','Payments','a:7:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:3;s:6:\"v1.1.0\";i:4;s:6:\"v1.1.1\";i:5;s:6:\"v1.1.2\";i:6;s:6:\"v1.1.3\";i:7;s:6:\"v1.1.4\";}','a:0:{}','Payments processing and gateway management.','https://pyrocms.com/','a:1:{s:14:\"league/omnipay\";s:4:\"^3.0\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:49:\"https://pyrocms.com/documentation/payments-module\";s:5:\"forum\";s:50:\"https://pyrocms.com/forum/channels/payments-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:78:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [payments-module]\";s:6:\"source\";s:46:\"https://github.com/anomalylabs/payments-module\";}','a:0:{}',NULL),(68,68,'2022-09-20 17:30:25',1,'2022-09-21 12:54:11',1,'field_type','anomaly/polymorphic-field_type','anomaly.field_type.polymorphic','anomaly.field_type.polymorphic::addon.title','a:0:{}','a:0:{}','A polymorphic relationship field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:17:\"AnomalyLabs, Inc.\";s:5:\"email\";s:17:\"hello@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Polymorphic Field Type\n\n*anomaly.field_type.polymorphic*\n\n#### A polymorphic relation field type.\n\nThe polymorphic field type a clean API to establish polymorphic relations between objects.\n'),(69,69,'2022-09-20 17:30:27',1,'2022-09-20 17:30:27',1,'extension','anomaly/post_filter-extension','anomaly.extension.post_filter','Post Filter','a:5:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";}','a:0:{}','A POST submission content filter.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:3:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:64:\"https://github.com/anomalylabs/post_filter-extension/tree/v1.0.4\";s:6:\"issues\";s:59:\"https://github.com/anomalylabs/post_filter-extension/issues\";}','a:1:{s:4:\"icon\";s:20:\"marketplace/icon.jpg\";}','# POST Filter\n\nA POST submission content filter.\n'),(70,70,'2022-09-20 17:30:27',1,'2022-09-21 12:54:27',1,'module','anomaly/posts-module','anomaly.module.posts','anomaly.module.posts::addon.title','a:0:{}','a:0:{}','A versatile articles and posts manager.','http://pyrocms.com/addons/anomaly/posts-module','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:46:\"https://pyrocms.com/documentation/posts-module\";s:5:\"forum\";s:47:\"https://pyrocms.com/forum/channels/posts-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:75:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue+is:open+[posts-module]\";s:6:\"source\";s:43:\"https://github.com/anomalylabs/posts-module\";}','a:0:{}','# Posts Module\n\nA versatile articles and posts manager.\n'),(71,71,'2022-09-20 17:30:28',1,'2022-09-20 17:30:28',1,'extension','anomaly/posts_archives_block-extension','anomaly.extension.posts_archives_block','Posts Archives Block','a:2:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";}','a:0:{}','Display archive links for posts.','http://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:3:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:73:\"https://github.com/anomalylabs/posts_archives_block-extension/tree/v1.0.1\";s:6:\"issues\";s:68:\"https://github.com/anomalylabs/posts_archives_block-extension/issues\";}','a:0:{}',NULL),(72,72,'2022-09-20 17:30:28',1,'2022-09-21 12:54:01',1,'module','anomaly/preferences-module','anomaly.module.preferences','anomaly.module.preferences::addon.title','a:0:{}','a:0:{}','System preferences management for the Streams Platform.','http://pyrocms.com/addons/anomaly/preferences-module','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:52:\"https://pyrocms.com/documentation/preferences-module\";s:5:\"forum\";s:53:\"https://pyrocms.com/forum/channels/preferences-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:81:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [preferences-module]\";s:6:\"source\";s:49:\"https://github.com/anomalylabs/preferences-module\";}','a:0:{}','# Preferences Module\n\n[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://packagist.org/packages/anomaly/preferences-module) \n[![Build Status](https://scrutinizer-ci.com/g/anomalylabs/preferences-module/badges/build.png?b=master)](https://scrutinizer-ci.com/g/anomalylabs/preferences-module/build-status/master)\n[![Code Quality](http://img.shields.io/scrutinizer/g/anomalylabs/preferences-module.svg)](https://scrutinizer-ci.com/g/anomalylabs/preferences-module/)\n[![Total Downloads](http://img.shields.io/packagist/dt/anomaly/preferences-module.svg)](https://packagist.org/packages/anomaly/preferences-module)\n\n[![SensioLabsInsight](https://insight.sensiolabs.com/projects/bebf9ffb-c478-4997-bbfb-57be3ccb9ddd/small.png)](https://insight.sensiolabs.com/projects/bebf9ffb-c478-4997-bbfb-57be3ccb9ddd)\n\nSystem preferences management.\n'),(73,73,'2022-09-20 17:30:29',1,'2022-09-21 12:54:19',1,'extension','anomaly/private_storage_adapter-extension','anomaly.extension.private_storage_adapter','anomaly.extension.private_storage_adapter::addon.title','a:0:{}','a:0:{}','A private file storage adapter.','http://pyrocms.com/addons/anomaly/private_storage_adapter-extension','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:67:\"https://pyrocms.com/documentation/private-storage-adapter-extension\";s:5:\"forum\";s:68:\"https://pyrocms.com/forum/channels/private-storage-adapter-extension\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:96:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [private-storage-adapter-extension]\";s:6:\"source\";s:64:\"https://github.com/anomalylabs/private-storage-adapter-extension\";}','a:0:{}','# Private Storage Adapter Extension\n'),(74,74,'2022-09-20 17:30:30',1,'2022-09-20 17:30:30',1,'extension','anomaly/reactions-extension','anomaly.extension.reactions','Reactions','a:1:{i:0;s:6:\"v1.0.0\";}','a:0:{}','Add user reactions to your content.','http://pyrocms.com/','a:1:{s:20:\"anomaly/emoji-plugin\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:59:\"https://github.com/anomalylabs/reactions-extension/tree/1.0\";}','a:0:{}',NULL),(75,75,'2022-09-20 17:30:30',1,'2022-09-20 17:30:30',1,'extension','anomaly/recent_tweets_block-extension','anomaly.extension.recent_tweets_block','Recent Tweets Block','a:9:{i:0;s:6:\"v1.0.1\";i:1;s:6:\"v1.0.2\";i:2;s:6:\"v1.0.3\";i:3;s:6:\"v1.0.4\";i:4;s:6:\"v1.0.5\";i:5;s:6:\"v1.0.6\";i:6;s:6:\"v1.0.7\";i:7;s:6:\"v1.0.8\";i:8;s:6:\"v1.0.9\";}','a:0:{}','Display recent tweets.','http://pyrocms.com/','a:2:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";s:25:\"anomaly/twitter-extension\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:72:\"https://github.com/anomalylabs/recent_tweets_block-extension/tree/v1.0.9\";}','a:0:{}',NULL),(76,76,'2022-09-20 17:30:31',1,'2022-09-21 12:54:33',1,'module','anomaly/redirects-module','anomaly.module.redirects','anomaly.module.redirects::addon.title','a:0:{}','a:0:{}','Manage redirects from one URL or domain to another.','http://pyrocms.com/addons/anomaly/redirects-module','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:50:\"https://pyrocms.com/documentation/redirects-module\";s:5:\"forum\";s:51:\"https://pyrocms.com/forum/channels/redirects-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:79:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [redirects-module]\";s:6:\"source\";s:47:\"https://github.com/anomalylabs/redirects-module\";}','a:0:{}','# Redirects Module\n\n[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://packagist.org/packages/anomaly/redirects-module) \n[![Build Status](https://scrutinizer-ci.com/g/anomalylabs/redirects-module/badges/build.png?b=master)](https://scrutinizer-ci.com/g/anomalylabs/redirects-module/build-status/master)\n[![Code Quality](http://img.shields.io/scrutinizer/g/anomalylabs/redirects-module.svg)](https://scrutinizer-ci.com/g/anomalylabs/redirects-module/)\n[![Total Downloads](http://img.shields.io/packagist/dt/anomaly/redirects-module.svg)](https://packagist.org/packages/anomaly/redirects-module)\n\n[![SensioLabsInsight](https://insight.sensiolabs.com/projects/c58ab27d-1ff4-4023-b062-564157ba33c3/small.png)](https://insight.sensiolabs.com/projects/c58ab27d-1ff4-4023-b062-564157ba33c3)\n\nManage redirects from one URL to another.\n'),(77,77,'2022-09-20 17:30:32',1,'2022-09-21 12:54:11',1,'field_type','anomaly/relationship-field_type','anomaly.field_type.relationship','anomaly.field_type.relationship::addon.title','a:0:{}','a:0:{}','A related entry dropdown field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Relationship Field Type\n\n*anomaly.field_type.relationship*\n\n### A related entry dropdown field type.\n\nThe relationship field type provides an HTML select input with options from a related Stream or model.\n'),(78,78,'2022-09-20 17:30:32',1,'2022-09-21 12:54:12',1,'field_type','anomaly/repeater-field_type','anomaly.field_type.repeater','anomaly.field_type.repeater::addon.title','a:0:{}','a:0:{}','A repeating data structure field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.3\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:0:{}','a:0:{}','# Repeater Field Type\n\n'),(79,79,'2022-09-20 17:30:33',1,'2022-09-21 12:54:20',1,'extension','anomaly/robots-extension','anomaly.extension.robots','anomaly.extension.robots::addon.title','a:0:{}','a:0:{}','A simple robots.txt generator.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Robots.txt Extension\n\nA simple robots.txt generator.\n'),(80,80,'2022-09-20 17:30:33',1,'2022-09-20 17:30:33',1,'extension','anomaly/route_link_type-extension','anomaly.extension.route_link_type','Route Link Type','a:1:{i:0;s:6:\"v1.0.0\";}','a:0:{}','A route link type for the Navigation module.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:3:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:68:\"https://github.com/anomalylabs/route_link_type-extension/tree/v1.0.0\";s:6:\"issues\";s:63:\"https://github.com/anomalylabs/route_link_type-extension/issues\";}','a:0:{}',NULL),(81,81,'2022-09-20 17:30:34',1,'2022-09-20 17:30:34',1,'extension','anomaly/rss_feed_block-extension','anomaly.extension.rss_feed_block','Rss Feed Block','a:2:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";}','a:0:{}','Display an RSS feed.','http://pyrocms.com/','a:2:{s:24:\"anomaly/streams-platform\";s:4:\"^1.3\";s:19:\"simplepie/simplepie\";s:4:\"^1.4\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:3:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:67:\"https://github.com/anomalylabs/rss_feed_block-extension/tree/v1.0.1\";s:6:\"issues\";s:62:\"https://github.com/anomalylabs/rss_feed_block-extension/issues\";}','a:0:{}',NULL),(82,82,'2022-09-20 17:30:35',1,'2022-09-20 17:30:35',1,'extension','anomaly/s3_adapter-extension','anomaly.extension.s3_adapter','S3 Adapter','a:12:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:3;s:6:\"v1.1.0\";i:4;s:6:\"v1.2.0\";i:5;s:5:\"1.2.1\";i:6;s:6:\"v1.2.2\";i:7;s:6:\"v1.2.3\";i:8;s:6:\"v1.2.4\";i:10;s:6:\"v2.0.0\";i:11;s:6:\"v2.0.1\";i:13;s:6:\"v2.1.0\";i:14;s:6:\"v2.1.1\";}','a:0:{}','An Amazon S3 adapter for the Files module.','https://pyrocms.com/','a:2:{s:20:\"anomaly/files-module\";s:4:\"^2.4\";s:26:\"league/flysystem-aws-s3-v3\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:23:\"https://pyrocms.com/pro\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:23:\"https://pyrocms.com/pro\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:63:\"https://github.com/anomalylabs/s3_adapter-extension/tree/v2.1.1\";}','a:0:{}',NULL),(83,83,'2022-09-20 17:30:35',1,'2022-09-21 12:54:28',1,'module','anomaly/search-module','anomaly.module.search','anomaly.module.search::addon.title','a:0:{}','a:0:{}','A MySQL based multilingual Scout driver with multi-model search support.','http://pyrocms.com/addons/anomaly/search-module','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:6:{s:4:\"docs\";s:47:\"https://pyrocms.com/documentation/search-module\";s:5:\"forum\";s:48:\"https://pyrocms.com/forum/channels/search-module\";s:6:\"videos\";s:51:\"https://pyrocms.com/videos/categories/search-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:76:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [search-module]\";s:6:\"source\";s:44:\"https://github.com/anomalylabs/search-module\";}','a:0:{}','# Search Module\n\nA database Scout adapter and search suite with multi-model support. \n'),(84,84,'2022-09-20 17:30:36',1,'2022-09-21 12:54:13',1,'field_type','anomaly/select-field_type','anomaly.field_type.select','anomaly.field_type.select::addon.title','a:0:{}','a:0:{}','A dropdown field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Select Field Type\n\n*anomaly.field_type.select*\n\n#### A dropdown field type.\n\nThe select field type provides an HTML select input.\n'),(85,85,'2022-09-20 17:30:37',1,'2022-09-21 12:54:00',1,'module','anomaly/settings-module','anomaly.module.settings','anomaly.module.settings::addon.title','a:0:{}','a:0:{}','System settings management for the Streams Platform.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:49:\"https://pyrocms.com/documentation/settings-module\";s:5:\"forum\";s:50:\"https://pyrocms.com/forum/channels/settings-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:78:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [settings-module]\";s:6:\"source\";s:46:\"https://github.com/anomalylabs/settings-module\";}','a:0:{}','# Settings Module\n\n[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://packagist.org/packages/anomaly/settings-module) \n[![Build Status](https://scrutinizer-ci.com/g/anomalylabs/settings-module/badges/build.png?b=master)](https://scrutinizer-ci.com/g/anomalylabs/settings-module/build-status/master)\n[![Code Quality](http://img.shields.io/scrutinizer/g/anomalylabs/settings-module.svg)](https://scrutinizer-ci.com/g/anomalylabs/settings-module/)\n[![Total Downloads](http://img.shields.io/packagist/dt/anomaly/settings-module.svg)](https://packagist.org/packages/anomaly/settings-module)\n\n[![SensioLabsInsight](https://insight.sensiolabs.com/projects/36aca857-a877-439d-8edd-0cbc42924133/small.png)](https://insight.sensiolabs.com/projects/36aca857-a877-439d-8edd-0cbc42924133)\n\nSystem settings management. \n'),(86,86,'2022-09-20 17:30:37',1,'2022-09-21 12:54:00',1,'extension','anomaly/sitemap-extension','anomaly.extension.sitemap','anomaly.extension.sitemap::addon.title','a:0:{}','a:0:{}','A dynamic sitemap generator extension.',NULL,'a:2:{s:24:\"anomaly/streams-platform\";s:4:\"^1.7\";s:18:\"laravelium/sitemap\";s:4:\"^8.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:51:\"https://pyrocms.com/documentation/sitemap-extension\";s:5:\"forum\";s:52:\"https://pyrocms.com/forum/channels/sitemap-extension\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:80:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [sitemap-extension]\";s:6:\"source\";s:48:\"https://github.com/anomalylabs/sitemap-extension\";}','a:0:{}','# Sitemap Extension\n\nA dynamic sitemap generator extension.\n'),(87,87,'2022-09-21 12:53:36',1,'2022-09-21 12:54:13',1,'field_type','anomaly/slider-field_type','anomaly.field_type.slider','anomaly.field_type.slider::addon.title','a:0:{}','a:0:{}','A range slider field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Slider Field Type\n\n*anomaly.field_type.slider*\n\n### A range slider field type.\n\nThe slider field type provides a range slider input that allows users to select a value between a range of values.\n'),(88,88,'2022-09-21 12:53:37',1,'2022-09-21 12:54:14',1,'field_type','anomaly/slug-field_type','anomaly.field_type.slug','anomaly.field_type.slug::addon.title','a:0:{}','a:0:{}','A slug formatted string field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Slug Field Type\n\n*anomaly.field_type.slug*\n\n#### A slug formatted string field type.\n\nThe slug field type provides a an input that forces the value to a slug formatted string with a configurable separator.\n'),(89,89,'2022-09-21 12:53:38',1,'2022-09-21 12:53:38',1,'module','anomaly/social-module','anomaly.module.social','Social','a:18:{i:0;s:6:\"v1.0.1\";i:1;s:7:\"v1.0.10\";i:2;s:7:\"v1.0.11\";i:3;s:7:\"v1.0.12\";i:4;s:7:\"v1.0.13\";i:5;s:7:\"v1.0.14\";i:6;s:7:\"v1.0.15\";i:7;s:7:\"v1.0.16\";i:8;s:7:\"v1.0.17\";i:9;s:7:\"v1.0.18\";i:10;s:6:\"v1.0.2\";i:11;s:6:\"v1.0.3\";i:12;s:6:\"v1.0.4\";i:13;s:6:\"v1.0.5\";i:14;s:6:\"v1.0.6\";i:15;s:6:\"v1.0.7\";i:16;s:6:\"v1.0.8\";i:17;s:6:\"v1.0.9\";}','a:0:{}','A social integration utility for the Streams Platform.','http://pyrocms.com/','a:3:{s:24:\"anomaly/streams-platform\";s:4:\"^1.3\";s:20:\"anomaly/users-module\";s:4:\"^2.4\";s:17:\"laravel/socialite\";s:4:\"^3.0\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:57:\"https://github.com/anomalylabs/social-module/tree/v1.0.18\";}','a:0:{}',NULL),(90,90,'2022-09-21 12:53:39',1,'2022-09-21 12:53:39',1,'extension','anomaly/social_share_block-extension','anomaly.extension.social_share_block','Social Share Block','a:7:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";i:5;s:6:\"v1.0.5\";i:6;s:6:\"v1.0.6\";}','a:0:{}','A social share buttons block.','http://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:71:\"https://github.com/anomalylabs/social_share_block-extension/tree/v1.0.6\";}','a:0:{}',NULL),(91,91,'2022-09-21 12:53:39',1,'2022-09-21 12:53:39',1,'module','anomaly/spam-module','anomaly.module.spam','Spam','a:18:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.1.0\";i:5;s:6:\"v1.1.1\";i:6;s:6:\"v2.0.0\";i:7;s:6:\"v2.0.1\";i:8;s:6:\"v2.0.2\";i:9;s:6:\"v2.0.3\";i:10;s:6:\"v2.0.4\";i:11;s:6:\"v2.0.5\";i:13;s:6:\"v2.1.0\";i:14;s:6:\"v2.1.1\";i:15;s:6:\"v2.1.2\";i:16;s:6:\"v2.1.3\";i:17;s:6:\"v2.1.4\";i:18;s:6:\"v2.1.5\";}','a:0:{}','Process and analyze web requests against a global threat database.','http://pyrocms.com/','a:2:{s:24:\"anomaly/streams-platform\";s:4:\"^1.3\";s:17:\"guzzlehttp/guzzle\";s:5:\"6.3.*\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:54:\"https://github.com/anomalylabs/spam-module/tree/v2.1.5\";}','a:0:{}',NULL),(92,92,'2022-09-21 12:53:40',1,'2022-09-21 12:53:40',1,'extension','anomaly/standard_form-extension','anomaly.extension.standard_form','Standard Form','a:10:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.1.0\";i:4;s:6:\"v1.1.1\";i:5;s:6:\"v1.1.2\";i:6;s:6:\"v1.1.3\";i:7;s:6:\"v1.1.4\";i:8;s:6:\"v1.1.5\";i:9;s:6:\"v1.1.6\";}','a:0:{}',NULL,'http://anomaly.is/','a:2:{s:20:\"anomaly/forms-module\";s:6:\"^1.2.0\";s:24:\"anomaly/streams-platform\";s:6:\"^1.2.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:17:\"AnomalyLabs, Inc.\";s:5:\"email\";s:16:\"hello@anomaly.is\";s:8:\"homepage\";s:18:\"http://anomaly.is/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:18:\"support@anomaly.is\";s:6:\"source\";s:66:\"https://github.com/anomalylabs/standard_form-extension/tree/v1.1.6\";}','a:0:{}',NULL),(93,93,'2022-09-21 12:53:41',1,'2022-09-21 12:54:14',1,'field_type','anomaly/state-field_type','anomaly.field_type.state','anomaly.field_type.state::addon.title','a:0:{}','a:0:{}','A state dropdown field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# State Field Type\n\n*anomaly.field_type.state*\n\n#### A state dropdown field type.\n\nThe state field type provides a list of states in an HTML select input.\n'),(94,94,'2022-09-21 12:53:42',1,'2022-09-21 12:54:28',1,'module','anomaly/streams-module','anomaly.module.streams','anomaly.module.streams::addon.title','a:0:{}','a:0:{}','Build custom streams in the control panel.','http://pyrocms.com/','a:3:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";s:23:\"anomaly/icon-field_type\";s:4:\"^1.0\";s:20:\"anomaly/users-module\";s:4:\"^2.4\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# streams-module\nStreams module.\n'),(95,95,'2022-09-21 12:53:42',1,'2022-09-21 12:53:42',1,'extension','anomaly/stripe_gateway-extension','anomaly.extension.stripe_gateway','Stripe Gateway','a:2:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";}','a:0:{}','A Stripe gateway extension for the Payments module.',NULL,'a:2:{s:23:\"anomaly/payments-module\";s:4:\"^1.0\";s:14:\"omnipay/stripe\";s:4:\"^2.4\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:0:{}','a:2:{s:5:\"email\";s:18:\"support@anomaly.is\";s:6:\"source\";s:67:\"https://github.com/anomalylabs/stripe_gateway-extension/tree/v1.0.1\";}','a:0:{}',NULL),(96,96,'2022-09-21 12:53:43',1,'2022-09-21 12:54:29',1,'module','anomaly/system-module','anomaly.module.system','anomaly.module.system::addon.title','a:0:{}','a:0:{}','A system management and monitoring utility for the Streams Platform.','http://pyrocms.com/addons/anomaly/system-module','a:2:{s:24:\"anomaly/streams-platform\";s:4:\"^1.7\";s:17:\"laravel/telescope\";s:9:\"^3.5|^4.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:47:\"https://pyrocms.com/documentation/system-module\";s:5:\"forum\";s:48:\"https://pyrocms.com/forum/channels/system-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:76:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [system-module]\";s:6:\"source\";s:44:\"https://github.com/anomalylabs/system-module\";}','a:0:{}','# System Module\n\nSystem profiling and management module.\n'),(97,97,'2022-09-21 12:53:44',1,'2022-09-21 12:54:15',1,'field_type','anomaly/tags-field_type','anomaly.field_type.tags','anomaly.field_type.tags::addon.title','a:0:{}','a:0:{}','A tags input field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:0:{}','a:0:{}','# Tags Field Type\n\n*anomaly.field_type.tags*\n\n### A tags input field type.\n\nThe tags field type creates a tagged value input.\n'),(98,98,'2022-09-21 12:53:44',1,'2022-09-21 12:53:44',1,'extension','anomaly/template_block-extension','anomaly.extension.template_block','Template Block','a:3:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";}','a:0:{}','A template include block.','http://pyrocms.com/','a:1:{s:24:\"anomaly/templates-module\";s:4:\"^1.1\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:67:\"https://github.com/anomalylabs/template_block-extension/tree/v1.0.2\";}','a:0:{}',NULL),(99,99,'2022-09-21 12:53:45',1,'2022-09-21 12:53:45',1,'module','anomaly/templates-module','anomaly.module.templates','Templates','a:54:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";i:5;s:6:\"v1.0.5\";i:6;s:6:\"v1.0.6\";i:7;s:6:\"v1.0.7\";i:8;s:6:\"v1.0.8\";i:10;s:6:\"v1.1.0\";i:11;s:6:\"v1.1.1\";i:12;s:7:\"v1.1.10\";i:13;s:7:\"v1.1.11\";i:14;s:7:\"v1.1.12\";i:15;s:7:\"v1.1.13\";i:16;s:7:\"v1.1.14\";i:17;s:7:\"v1.1.15\";i:18;s:7:\"v1.1.16\";i:19;s:7:\"v1.1.17\";i:20;s:7:\"v1.1.18\";i:21;s:7:\"v1.1.19\";i:22;s:6:\"v1.1.2\";i:23;s:7:\"v1.1.20\";i:24;s:7:\"v1.1.21\";i:25;s:6:\"v1.1.3\";i:26;s:6:\"v1.1.4\";i:27;s:6:\"v1.1.5\";i:28;s:6:\"v1.1.6\";i:29;s:6:\"v1.1.7\";i:30;s:6:\"v1.1.8\";i:31;s:6:\"v1.1.9\";i:33;s:6:\"v1.2.0\";i:34;s:6:\"v1.2.1\";i:35;s:7:\"v1.2.10\";i:36;s:7:\"v1.2.11\";i:37;s:7:\"v1.2.12\";i:38;s:7:\"v1.2.13\";i:39;s:7:\"v1.2.14\";i:40;s:7:\"v1.2.15\";i:41;s:6:\"v1.2.2\";i:42;s:6:\"v1.2.3\";i:43;s:6:\"v1.2.4\";i:44;s:6:\"v1.2.5\";i:45;s:6:\"v1.2.6\";i:46;s:6:\"v1.2.7\";i:47;s:6:\"v1.2.8\";i:48;s:6:\"v1.2.9\";i:50;s:6:\"v1.3.0\";i:51;s:6:\"v1.3.1\";i:52;s:6:\"v1.3.2\";i:53;s:6:\"v1.3.3\";i:54;s:6:\"v1.3.4\";i:55;s:6:\"v1.3.5\";i:56;s:6:\"v1.3.6\";}','a:0:{}','Manage custom views and assets from your control panel.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:59:\"https://github.com/anomalylabs/templates-module/tree/v1.3.6\";}','a:0:{}',NULL),(100,100,'2022-09-21 12:53:46',1,'2022-09-21 12:54:15',1,'field_type','anomaly/text-field_type','anomaly.field_type.text','anomaly.field_type.text::addon.title','a:0:{}','a:0:{}','A simple text input field type.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Text Field Type\n\n*anomaly.field_type.text*\n\n#### A simple text input field type.\n\nThe text field type provides a basic HTML input with configurable type and placeholder attributes.\n'),(101,101,'2022-09-21 12:53:47',1,'2022-09-21 12:53:47',1,'extension','anomaly/text_block-extension','anomaly.extension.text_block','Text Block','a:3:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";}','a:0:{}','Arbitrary text.','http://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:63:\"https://github.com/anomalylabs/text_block-extension/tree/v1.0.2\";}','a:0:{}',NULL),(102,102,'2022-09-21 12:53:47',1,'2022-09-21 12:54:15',1,'field_type','anomaly/textarea-field_type','anomaly.field_type.textarea','anomaly.field_type.textarea::addon.title','a:0:{}','a:0:{}','A simple textarea field type.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Textarea Field Type\n\n*anomaly.field_type.textarea*\n\n#### A simple textarea field type.\n\nThe textarea field type provides a basic HTML textarea with configurable height.\n'),(103,103,'2022-09-21 12:53:48',1,'2022-09-21 12:53:48',1,'extension','anomaly/throttle-extension','anomaly.extension.throttle','Throttle','a:2:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";}','a:0:{}',NULL,NULL,'a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:1:{s:6:\"source\";s:61:\"https://github.com/anomalylabs/throttle-extension/tree/v1.0.1\";}','a:0:{}',NULL),(104,104,'2022-09-21 12:53:49',1,'2022-09-21 12:54:20',1,'extension','anomaly/throttle_security_check-extension','anomaly.extension.throttle_security_check','anomaly.extension.throttle_security_check::addon.title','a:0:{}','a:0:{}','A security extension that throttles login attempts.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# Throttle Security Check\n\nA security extension that throttles login attempts.\n'),(105,105,'2022-09-21 12:53:49',1,'2022-09-21 12:53:49',1,'extension','anomaly/twitter-extension','anomaly.extension.twitter','Twitter','a:7:{i:0;s:6:\"v1.0.1\";i:1;s:6:\"v1.0.2\";i:2;s:6:\"v1.0.3\";i:3;s:6:\"v1.0.4\";i:4;s:6:\"v1.0.5\";i:5;s:6:\"v1.0.6\";i:6;s:6:\"v1.0.7\";}','a:0:{}','Twitter API authorization and integration.','http://pyrocms.com/','a:1:{s:20:\"abraham/twitteroauth\";s:6:\"~0.9.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:60:\"https://github.com/anomalylabs/twitter-extension/tree/v1.0.7\";}','a:0:{}',NULL),(106,106,'2022-09-21 12:53:50',1,'2022-09-21 12:53:50',1,'field_type','anomaly/upload-field_type','anomaly.field_type.upload','Upload','a:17:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:3;s:6:\"v1.1.0\";i:5;s:6:\"v1.2.0\";i:6;s:6:\"v1.2.1\";i:7;s:7:\"v1.2.10\";i:8;s:7:\"v1.2.11\";i:9;s:7:\"v1.2.12\";i:10;s:6:\"v1.2.2\";i:11;s:6:\"v1.2.3\";i:12;s:6:\"v1.2.4\";i:13;s:6:\"v1.2.5\";i:14;s:6:\"v1.2.6\";i:15;s:6:\"v1.2.7\";i:16;s:6:\"v1.2.8\";i:17;s:6:\"v1.2.9\";i:19;s:6:\"v1.3.0\";}','a:0:{}','A simple file upload field type.','http://pyrocms.com/','a:2:{s:20:\"anomaly/files-module\";s:4:\"^2.6\";s:24:\"anomaly/streams-platform\";s:4:\"^1.3\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"suppoer@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:57:\"https://github.com/anomalylabs/upload-field_type/tree/1.4\";}','a:0:{}',NULL),(107,107,'2022-09-21 12:53:51',1,'2022-09-21 12:54:16',1,'field_type','anomaly/url-field_type','anomaly.field_type.url','anomaly.field_type.url::addon.title','a:0:{}','a:0:{}','A URL field type.',NULL,'a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.3\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# URL Field Type\n\n*anomaly.field_type.url*\n\n### A URL field type.\n\nThe URL field type provides a simple HTML input restricting input to URLs.\n'),(108,108,'2022-09-21 12:53:51',1,'2022-09-21 12:54:21',1,'extension','anomaly/url_link_type-extension','anomaly.extension.url_link_type','anomaly.extension.url_link_type::addon.title','a:0:{}','a:0:{}','A URL link type for the Navigation module.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# URL Link Type Extension\n\nA URL link type for the Navigation module.\n'),(109,109,'2022-09-21 12:53:52',1,'2022-09-21 12:54:21',1,'extension','anomaly/user_security_check-extension','anomaly.extension.user_security_check','anomaly.extension.user_security_check::addon.title','a:0:{}','a:0:{}','A security check for the Users module that assures users are active, enabled, and authorized.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# User Security Check Extension\n\nA security check for the Users module that assures users are active, enabled, and authorized.\n'),(110,110,'2022-09-21 12:53:52',1,'2022-09-21 12:54:29',1,'module','anomaly/users-module','anomaly.module.users','anomaly.module.users::addon.title','a:0:{}','a:0:{}','Manage users, roles, and permissions.','http://pyrocms.com/addons/anomaly/users-module','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:46:\"https://pyrocms.com/documentation/users-module\";s:5:\"forum\";s:47:\"https://pyrocms.com/forum/channels/users-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:75:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [users-module]\";s:6:\"source\";s:43:\"https://github.com/anomalylabs/users-module\";}','a:0:{}','# Users Module\n\n[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://packagist.org/packages/anomaly/users-module) \n[![Build Status](https://scrutinizer-ci.com/g/anomalylabs/users-module/badges/build.png?b=master)](https://scrutinizer-ci.com/g/anomalylabs/users-module/build-status/master)\n[![Code Quality](http://img.shields.io/scrutinizer/g/anomalylabs/users-module.svg)](https://scrutinizer-ci.com/g/anomalylabs/users-module/)\n[![Total Downloads](http://img.shields.io/packagist/dt/anomaly/users-module.svg)](https://packagist.org/packages/anomaly/users-module)\n\n[![SensioLabsInsight](https://insight.sensiolabs.com/projects/81982ec5-cbe1-499f-aafc-3d75c747a4fd/small.png)](https://insight.sensiolabs.com/projects/81982ec5-cbe1-499f-aafc-3d75c747a4fd)\n\nManage users, roles, and permissions.\n'),(111,111,'2022-09-21 12:53:53',1,'2022-09-21 12:54:30',1,'module','anomaly/variables-module','anomaly.module.variables','anomaly.module.variables::addon.title','a:0:{}','a:0:{}','Manage variables and bits of content that can be used anywhere.','http://pyrocms.com/addons/anomaly/variables-module','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:3:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:3:{s:4:\"name\";s:13:\"Ryan Thompson\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:5:{s:4:\"docs\";s:50:\"https://pyrocms.com/documentation/variables-module\";s:6:\"system\";s:51:\"https://pyrocms.com/forum/channels/variables-module\";s:5:\"slack\";s:25:\"https://pyrocms.com/slack\";s:6:\"issues\";s:79:\"https://github.com/pyrocms/pyrocms/issues?q=is:issue is:open [variables-module]\";s:6:\"source\";s:47:\"https://github.com/anomalylabs/variables-module\";}','a:0:{}','# Variables Module\n\nManage variables and bits of content that can be used anywhere.\n'),(112,112,'2022-09-21 12:53:54',1,'2022-09-21 12:53:54',1,'field_type','anomaly/video-field_type','anomaly.field_type.video','Video','a:26:{i:1;s:6:\"v1.1.0\";i:2;s:6:\"v1.1.1\";i:3;s:7:\"v1.1.10\";i:4;s:7:\"v1.1.11\";i:5;s:7:\"v1.1.12\";i:6;s:7:\"v1.1.13\";i:7;s:7:\"v1.1.14\";i:8;s:7:\"v1.1.15\";i:9;s:7:\"v1.1.16\";i:10;s:7:\"v1.1.17\";i:11;s:7:\"v1.1.18\";i:12;s:7:\"v1.1.19\";i:13;s:6:\"v1.1.2\";i:14;s:7:\"v1.1.20\";i:15;s:7:\"v1.1.21\";i:16;s:7:\"v1.1.22\";i:17;s:7:\"v1.1.23\";i:18;s:7:\"v1.1.24\";i:19;s:7:\"v1.1.25\";i:20;s:6:\"v1.1.3\";i:21;s:6:\"v1.1.4\";i:22;s:6:\"v1.1.5\";i:23;s:6:\"v1.1.6\";i:24;s:6:\"v1.1.7\";i:25;s:6:\"v1.1.8\";i:26;s:6:\"v1.1.9\";}','a:0:{}','The video field type provides a simple input for displaying embeddable videos from your favorite provider.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:60:\"https://github.com/anomalylabs/video-field_type/tree/v1.1.25\";}','a:0:{}',NULL),(113,113,'2022-09-21 12:53:54',1,'2022-09-21 12:53:54',1,'extension','anomaly/video_block-extension','anomaly.extension.video_block','Video Block','a:7:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";i:4;s:6:\"v1.0.4\";i:5;s:6:\"v1.0.5\";i:6;s:6:\"v1.0.6\";}','a:0:{}','A video player block.','http://pyrocms.com/','a:2:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";s:24:\"anomaly/video-field_type\";s:4:\"^1.1\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:64:\"https://github.com/anomalylabs/video_block-extension/tree/v1.0.6\";}','a:0:{}',NULL),(114,114,'2022-09-21 12:53:55',1,'2022-09-21 12:53:55',1,'module','anomaly/videos-module','anomaly.module.videos','Videos','a:26:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:7:\"v1.0.10\";i:3;s:7:\"v1.0.11\";i:4;s:6:\"v1.0.2\";i:5;s:6:\"v1.0.3\";i:6;s:6:\"v1.0.4\";i:7;s:6:\"v1.0.5\";i:8;s:6:\"v1.0.6\";i:9;s:6:\"v1.0.7\";i:10;s:6:\"v1.0.8\";i:11;s:6:\"v1.0.9\";i:13;s:6:\"v1.1.0\";i:14;s:6:\"v1.1.1\";i:15;s:7:\"v1.1.10\";i:16;s:7:\"v1.1.11\";i:17;s:7:\"v1.1.12\";i:18;s:7:\"v1.1.13\";i:19;s:6:\"v1.1.2\";i:20;s:6:\"v1.1.3\";i:21;s:6:\"v1.1.4\";i:22;s:6:\"v1.1.5\";i:23;s:6:\"v1.1.6\";i:24;s:6:\"v1.1.7\";i:25;s:6:\"v1.1.8\";i:26;s:6:\"v1.1.9\";}','a:0:{}','Video/series management made easy.','http://pyrocms.com/','a:3:{s:25:\"anomaly/sitemap-extension\";s:4:\"^2.2\";s:24:\"anomaly/streams-platform\";s:4:\"^1.6\";s:24:\"anomaly/video-field_type\";s:4:\"^1.1\";}','a:0:{}','a:1:{i:0;s:31:\"https://pyrocms.com/pro/license\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:6:\"source\";s:53:\"https://github.com/anomalylabs/videos-module/tree/1.2\";}','a:0:{}',NULL),(115,115,'2022-09-21 12:53:56',1,'2022-09-21 12:53:56',1,'extension','anomaly/whitelist_moderator-extension','anomaly.extension.whitelist_moderator','Whitelist Moderator','a:4:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";i:2;s:6:\"v1.0.2\";i:3;s:6:\"v1.0.3\";}','a:0:{}','A basic white list moderator for the comments module.','http://pyrocms.com/','a:1:{s:23:\"anomaly/comments-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:2:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:72:\"https://github.com/anomalylabs/whitelist_moderator-extension/tree/v1.0.3\";}','a:0:{}',NULL),(116,116,'2022-09-21 12:53:56',1,'2022-09-21 12:54:17',1,'field_type','anomaly/wysiwyg-field_type','anomaly.field_type.wysiwyg','anomaly.field_type.wysiwyg::addon.title','a:0:{}','a:0:{}','A WYSIWYG editor field type powered by RedactorJS.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.4\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# WYSIWYG Field Type\n\n*anomaly.field_type.wysiwyg*\n\n### A WYSIWYG field type powered by RedactorJS.\n\nThe WYSIWYG field type provides a WYSIWYG editor powered by RedactorJS.\n\n\n### Configuration\n```\n\"example\" => [\n    \"type\"   => \"anomaly.field_type.wysiwyg\",\n    \"config\" => [\n        \"default_value\" => null,\n        \"configuration\" => \"default\",\n        \"line_breaks\"   => false,\n        \"sync\"          => true,\n        \"height\"        => 500,\n        \"buttons\"       => [],\n        \"plugins\"       => [],\n    ]\n]\n\n```\n'),(117,117,'2022-09-21 12:53:57',1,'2022-09-21 12:54:22',1,'extension','anomaly/wysiwyg_block-extension','anomaly.extension.wysiwyg_block','anomaly.extension.wysiwyg_block::addon.title','a:0:{}','a:0:{}','A WYSIWYG content block.','http://pyrocms.com/','a:1:{s:21:\"anomaly/blocks-module\";s:4:\"^1.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:9:\"Developer\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# WYSIWYG Block\n\nA WYSIWYG content block.\n'),(118,118,'2022-09-21 12:53:58',1,'2022-09-21 12:53:58',1,'extension','anomaly/wysiwyg_widget-extension','anomaly.extension.wysiwyg_widget','Wysiwyg Widget','a:2:{i:0;s:6:\"v1.0.0\";i:1;s:6:\"v1.0.1\";}','a:0:{}','A freestanding WYSIWYG widget for the Dashboard module.','http://pyrocms.com/','a:1:{s:24:\"anomaly/dashboard-module\";s:4:\"^2.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:3:{s:5:\"email\";s:19:\"support@pyrocms.com\";s:6:\"source\";s:64:\"https://github.com/anomalylabs/wysiwyg_widget-extension/tree/1.0\";s:6:\"issues\";s:62:\"https://github.com/anomalylabs/wysiwyg_widget-extension/issues\";}','a:0:{}',NULL),(119,119,'2022-09-21 12:53:58',1,'2022-09-21 12:54:22',1,'extension','anomaly/xml_feed_widget-extension','anomaly.extension.xml_feed_widget','anomaly.extension.xml_feed_widget::addon.title','a:0:{}','a:0:{}','A dashboard widget that displays an XML feed.','http://pyrocms.com/','a:1:{s:19:\"simplepie/simplepie\";s:6:\"~1.4.0\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:18:\"support@anomaly.is\";}','a:0:{}','# XML Feed Widget\n\n*anomaly.extension.recent_news_widget*\n\n#### A recent news dashboard widget.\n\nThis widget uses a simple RSS reader to display recent blog items from PyroCMS.com.\n'),(120,120,'2022-09-21 12:53:59',1,'2022-09-21 12:54:31',1,'theme','pyrocms/accelerant-theme','pyrocms.theme.accelerant','pyrocms.theme.accelerant::addon.title','a:0:{}','a:0:{}','The official admin theme for PyroCMS.','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Accelerant Theme\n\nThe official control panel theme for PyroCMS.\n'),(121,121,'2022-09-21 12:53:59',1,'2022-09-21 12:54:32',1,'theme','pyrocms/starter-theme','pyrocms.theme.starter','pyrocms.theme.starter::addon.title','a:0:{}','a:0:{}','The starter theme is a basic HTML5 Bootstrap theme based on the Freelance Theme from http://startbootstrap.com/template-overviews/freelancer/','http://pyrocms.com/','a:0:{}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','# Starter Theme\n\nThe starter theme is a basic HTML5 Bootstrap theme based on the Freelance Theme from http://startbootstrap.com/template-overviews/freelancer/\n'),(122,122,'2022-09-21 12:54:12',1,'2022-09-21 12:54:12',1,'module','anomaly/repeaters-module','anomaly.module.repeaters','anomaly.module.repeaters::addon.title','a:0:{}','a:0:{}',NULL,NULL,'a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}',NULL),(123,123,'2022-09-21 12:54:24',1,'2022-09-21 12:54:24',1,'field_type','anomaly/blocks-field_type','anomaly.field_type.blocks','anomaly.field_type.blocks::addon.title','a:0:{}','a:0:{}',NULL,NULL,'a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','# Blocks Field Type\n\n'),(124,124,'2022-09-21 12:54:26',1,'2022-09-21 12:54:26',1,'module','anomaly/installer-module','anomaly.module.installer','anomaly.module.installer::addon.name','a:0:{}','a:0:{}','The Streams Platform installer.','http://pyrocms.com/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.9\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:2:{i:0;a:4:{s:4:\"name\";s:13:\"PyroCMS, Inc.\";s:5:\"email\";s:19:\"support@pyrocms.com\";s:8:\"homepage\";s:19:\"http://pyrocms.com/\";s:4:\"role\";s:5:\"Owner\";}i:1;a:4:{s:4:\"name\";s:13:\"Ryan Thompson\";s:5:\"email\";s:16:\"ryan@pyrocms.com\";s:8:\"homepage\";s:23:\"http://ryanthepyro.com/\";s:4:\"role\";s:5:\"Owner\";}}','a:1:{s:5:\"email\";s:19:\"support@pyrocms.com\";}','a:0:{}','#Streams Installer\n\nThe Streams Platform installer.\n'),(125,125,'2022-09-21 12:54:32',1,'2022-09-21 12:54:32',1,'theme','np/site-theme','np.theme.site','np.theme.site::addon.title','a:0:{}','a:0:{}',NULL,NULL,'a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}',NULL),(126,126,'2022-09-21 12:54:34',1,'2022-09-21 12:54:34',1,'module','anomaly/industries-module','anomaly.module.industries','Industries Module','a:0:{}','a:0:{}',NULL,NULL,'a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}',NULL),(127,127,'2022-09-21 12:54:34',1,'2022-09-21 12:54:34',1,'module','anomaly/products_and_services-module','anomaly.module.products_and_services','Products & Services Module','a:0:{}','a:0:{}',NULL,NULL,'a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}','a:0:{}',NULL),(128,128,'2022-09-21 12:54:35',1,'2022-09-21 12:54:35',1,'field_type','emange/list-field_type','emange.field_type.list','List','a:4:{i:0;s:3:\"1.0\";i:1;s:5:\"1.0.1\";i:2;s:5:\"1.0.2\";i:3;s:5:\"1.0.3\";}','a:0:{}','List Field Type. Create an array/list of text/textareas without a stream!','https://edi.mange.biz/','a:1:{s:24:\"anomaly/streams-platform\";s:4:\"^1.2\";}','a:0:{}','a:1:{i:0;s:3:\"MIT\";}','a:1:{i:0;a:4:{s:4:\"name\";s:7:\"Emange.\";s:5:\"email\";s:13:\"edi@mange.biz\";s:8:\"homepage\";s:21:\"http://edi.mange.biz/\";s:4:\"role\";s:5:\"Owner\";}}','a:3:{s:7:\"Website\";s:21:\"http://edi.mange.biz/\";s:6:\"source\";s:100:\"https://bitbucket.org/edsters/list-field_type/src/564934ab1a20cf550daab7d80cba4a7e3be9a22b/?at=1.0.3\";s:6:\"issues\";s:52:\"https://bitbucket.org/edsters/list-field_type/issues\";}','a:2:{s:4:\"icon\";s:8:\"icon.jpg\";s:11:\"screenshots\";a:1:{i:0;s:8:\"demo.gif\";}}','# README #\n\n### What is this repository for? ###\n\nA simple list field-type for Pyrocms 3 that allows you to add dynamic lists to items without end users breaking the layout.\n\nReorder, Add more lines, remove them\n### How do I get set up? ###\n\n1 Download the repo\n\n2 Place it in /addons/site-ref/Emange/\n\n### How do I use this? ###\n\nReturns an array of values\n{{ emange.field_type.list.values }}\n\n//Returns the number of list items\n{{ emange.field_type.list.count }}\n\n### Demo? ###\n![ft%20demo[1].gif](https://bitbucket.org/repo/gaXKzn/images/807605579-ft%2520demo%5B1%5D.gif)\nhttp://edi.mange.biz/files/module_items/ft%20demo.gif\n\n### Who do I talk to? ###\n\nReach out to me on the PyroCms slack, my handle is edster');
/*!40000 ALTER TABLE `default_addons_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_addons_extensions`
--

DROP TABLE IF EXISTS `default_addons_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_addons_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_extensions` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_addons_extensions`
--

LOCK TABLES `default_addons_extensions` WRITE;
/*!40000 ALTER TABLE `default_addons_extensions` DISABLE KEYS */;
INSERT INTO `default_addons_extensions` VALUES (1,'anomaly.extension.robots',1,1),(2,'anomaly.extension.wysiwyg_block',1,1),(3,'anomaly.extension.default_page_handler',1,1),(4,'anomaly.extension.page_link_type',1,1),(5,'anomaly.extension.url_link_type',1,1),(6,'anomaly.extension.default_authenticator',1,1),(7,'anomaly.extension.html_block',1,1),(8,'anomaly.extension.private_storage_adapter',1,1),(9,'anomaly.extension.throttle_security_check',1,1),(10,'anomaly.extension.user_security_check',1,1),(11,'anomaly.extension.xml_feed_widget',1,1),(12,'anomaly.extension.sitemap',1,1);
/*!40000 ALTER TABLE `default_addons_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_addons_modules`
--

DROP TABLE IF EXISTS `default_addons_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_addons_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_modules` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_addons_modules`
--

LOCK TABLES `default_addons_modules` WRITE;
/*!40000 ALTER TABLE `default_addons_modules` DISABLE KEYS */;
INSERT INTO `default_addons_modules` VALUES (1,'anomaly.module.streams',1,1),(2,'anomaly.module.preferences',1,1),(3,'anomaly.module.pages',1,1),(4,'anomaly.module.addons',1,1),(5,'anomaly.module.dashboard',1,1),(6,'anomaly.module.posts',1,1),(7,'anomaly.module.users',1,1),(8,'anomaly.module.settings',1,1),(9,'anomaly.module.repeaters',1,1),(10,'anomaly.module.blocks',1,1),(11,'anomaly.module.configuration',1,1),(12,'anomaly.module.files',1,1),(13,'anomaly.module.navigation',1,1),(14,'anomaly.module.search',1,1),(15,'anomaly.module.system',1,1),(16,'anomaly.module.variables',1,1),(17,'anomaly.module.redirects',1,1);
/*!40000 ALTER TABLE `default_addons_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_addons_repositories`
--

DROP TABLE IF EXISTS `default_addons_repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_addons_repositories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `642e92efb79421734881b53e1e1b18b6` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_addons_repositories`
--

LOCK TABLES `default_addons_repositories` WRITE;
/*!40000 ALTER TABLE `default_addons_repositories` DISABLE KEYS */;
INSERT INTO `default_addons_repositories` VALUES (1,1,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,'pyro','https://packages.pyrocms.com'),(2,2,'2022-05-04 07:57:02',NULL,'2022-05-04 07:57:02',NULL,'community','https://community.pyrocms.com');
/*!40000 ALTER TABLE `default_addons_repositories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_addons_repositories_translations`
--

DROP TABLE IF EXISTS `default_addons_repositories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_addons_repositories_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addons_repositories_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_addons_repositories_translations`
--

LOCK TABLES `default_addons_repositories_translations` WRITE;
/*!40000 ALTER TABLE `default_addons_repositories_translations` DISABLE KEYS */;
INSERT INTO `default_addons_repositories_translations` VALUES (1,1,'2022-05-04 07:57:02',NULL,'2022-05-04 07:57:02',NULL,'en','PRO Addons','First-party addons from the makers of Pyro. Unlimited licensing for <span class=\"tag tag-danger\">PRO</span> addons requires a <a href=\"https://pyrocms.com/pro\" target=\"_blank\">PRO subscription</a>.'),(2,2,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'en','Community Addons','Third-party addons contributed by the community. <a href=\"https://github.com/pyrocms/community.pyrocms.com/blob/master/satis.json\" target=\"_blank\">Add yours to the list.</a>');
/*!40000 ALTER TABLE `default_addons_repositories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_blocks_areas`
--

DROP TABLE IF EXISTS `default_blocks_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_blocks_areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `73278a4a86960eeb576a8fd4c9ec6997` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_blocks_areas`
--

LOCK TABLES `default_blocks_areas` WRITE;
/*!40000 ALTER TABLE `default_blocks_areas` DISABLE KEYS */;
INSERT INTO `default_blocks_areas` VALUES (1,1,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,'footer');
/*!40000 ALTER TABLE `default_blocks_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_blocks_areas_translations`
--

DROP TABLE IF EXISTS `default_blocks_areas_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_blocks_areas_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocks_areas_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_blocks_areas_translations`
--

LOCK TABLES `default_blocks_areas_translations` WRITE;
/*!40000 ALTER TABLE `default_blocks_areas_translations` DISABLE KEYS */;
INSERT INTO `default_blocks_areas_translations` VALUES (1,1,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,'en','Footer','Add blocks here to display in your footer.');
/*!40000 ALTER TABLE `default_blocks_areas_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_blocks_blocks`
--

DROP TABLE IF EXISTS `default_blocks_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_blocks_blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `area_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `field_id` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `display_title` tinyint(1) DEFAULT 1,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_blocks_blocks`
--

LOCK TABLES `default_blocks_blocks` WRITE;
/*!40000 ALTER TABLE `default_blocks_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_blocks_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_blocks_blocks_translations`
--

DROP TABLE IF EXISTS `default_blocks_blocks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_blocks_blocks_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocks_blocks_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_blocks_blocks_translations`
--

LOCK TABLES `default_blocks_blocks_translations` WRITE;
/*!40000 ALTER TABLE `default_blocks_blocks_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_blocks_blocks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_blocks_types`
--

DROP TABLE IF EXISTS `default_blocks_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_blocks_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content_layout` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `wrapper_layout` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `c8ffe9a587b126f152ed3d89a146b445` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_blocks_types`
--

LOCK TABLES `default_blocks_types` WRITE;
/*!40000 ALTER TABLE `default_blocks_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_blocks_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_blocks_types_translations`
--

DROP TABLE IF EXISTS `default_blocks_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_blocks_types_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocks_types_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_blocks_types_translations`
--

LOCK TABLES `default_blocks_types_translations` WRITE;
/*!40000 ALTER TABLE `default_blocks_types_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_blocks_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_cache`
--

DROP TABLE IF EXISTS `default_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_cache` (
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_cache`
--

LOCK TABLES `default_cache` WRITE;
/*!40000 ALTER TABLE `default_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_configuration_configuration`
--

DROP TABLE IF EXISTS `default_configuration_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_configuration_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_configuration_configuration`
--

LOCK TABLES `default_configuration_configuration` WRITE;
/*!40000 ALTER TABLE `default_configuration_configuration` DISABLE KEYS */;
INSERT INTO `default_configuration_configuration` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'1','anomaly.extension.xml_feed_widget::url','http://www.pyrocms.com/posts/rss.xml'),(2,2,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'2','anomaly.extension.xml_feed_widget::url','https://stackoverflow.com/feeds/tag?tagnames=PyroCMS&sort=newest');
/*!40000 ALTER TABLE `default_configuration_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_dashboard_dashboards`
--

DROP TABLE IF EXISTS `default_dashboard_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_dashboard_dashboards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `9a1158154dfa42caddbd0694a4e9bdc8` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_dashboard_dashboards`
--

LOCK TABLES `default_dashboard_dashboards` WRITE;
/*!40000 ALTER TABLE `default_dashboard_dashboards` DISABLE KEYS */;
INSERT INTO `default_dashboard_dashboards` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,NULL,'welcome','24');
/*!40000 ALTER TABLE `default_dashboard_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_dashboard_dashboards_allowed_roles`
--

DROP TABLE IF EXISTS `default_dashboard_dashboards_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_dashboard_dashboards_allowed_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ef54574889c671bd549cd498d11eece0` (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_dashboard_dashboards_allowed_roles`
--

LOCK TABLES `default_dashboard_dashboards_allowed_roles` WRITE;
/*!40000 ALTER TABLE `default_dashboard_dashboards_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_dashboard_dashboards_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_dashboard_dashboards_translations`
--

DROP TABLE IF EXISTS `default_dashboard_dashboards_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_dashboard_dashboards_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_dashboards_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_dashboard_dashboards_translations`
--

LOCK TABLES `default_dashboard_dashboards_translations` WRITE;
/*!40000 ALTER TABLE `default_dashboard_dashboards_translations` DISABLE KEYS */;
INSERT INTO `default_dashboard_dashboards_translations` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'en','Welcome','This is the default dashboard for PyroCMS.');
/*!40000 ALTER TABLE `default_dashboard_dashboards_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_dashboard_widgets`
--

DROP TABLE IF EXISTS `default_dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_dashboard_widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `column` int(11) NOT NULL DEFAULT 1,
  `dashboard_id` int(11) NOT NULL,
  `pinned` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_dashboard_widgets`
--

LOCK TABLES `default_dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `default_dashboard_widgets` DISABLE KEYS */;
INSERT INTO `default_dashboard_widgets` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,NULL,'anomaly.extension.xml_feed_widget',1,1,0),(2,2,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,NULL,'anomaly.extension.xml_feed_widget',1,1,0);
/*!40000 ALTER TABLE `default_dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_dashboard_widgets_allowed_roles`
--

DROP TABLE IF EXISTS `default_dashboard_widgets_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_dashboard_widgets_allowed_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `30a16932996802771e66ae403bf7ed8d` (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_dashboard_widgets_allowed_roles`
--

LOCK TABLES `default_dashboard_widgets_allowed_roles` WRITE;
/*!40000 ALTER TABLE `default_dashboard_widgets_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_dashboard_widgets_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_dashboard_widgets_translations`
--

DROP TABLE IF EXISTS `default_dashboard_widgets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_dashboard_widgets_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widgets_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_dashboard_widgets_translations`
--

LOCK TABLES `default_dashboard_widgets_translations` WRITE;
/*!40000 ALTER TABLE `default_dashboard_widgets_translations` DISABLE KEYS */;
INSERT INTO `default_dashboard_widgets_translations` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'en','Recent News','Recent news from https://pyrocms.com/'),(2,2,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'en','Stack Overflow','Recent questions from https://stackoverflow.com/');
/*!40000 ALTER TABLE `default_dashboard_widgets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_failed_jobs`
--

DROP TABLE IF EXISTS `default_failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_failed_jobs`
--

LOCK TABLES `default_failed_jobs` WRITE;
/*!40000 ALTER TABLE `default_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_files_disks`
--

DROP TABLE IF EXISTS `default_files_disks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_files_disks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `adapter` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `9fc3d7152ba9336a670e36d0ed79bc43` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_files_disks`
--

LOCK TABLES `default_files_disks` WRITE;
/*!40000 ALTER TABLE `default_files_disks` DISABLE KEYS */;
INSERT INTO `default_files_disks` VALUES (1,1,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,NULL,'local','anomaly.extension.private_storage_adapter');
/*!40000 ALTER TABLE `default_files_disks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_files_disks_translations`
--

DROP TABLE IF EXISTS `default_files_disks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_files_disks_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_disks_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_files_disks_translations`
--

LOCK TABLES `default_files_disks_translations` WRITE;
/*!40000 ALTER TABLE `default_files_disks_translations` DISABLE KEYS */;
INSERT INTO `default_files_disks_translations` VALUES (1,1,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,'en','Local','A local (private) storage disk.');
/*!40000 ALTER TABLE `default_files_disks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_files_documents`
--

DROP TABLE IF EXISTS `default_files_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_files_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_files_documents`
--

LOCK TABLES `default_files_documents` WRITE;
/*!40000 ALTER TABLE `default_files_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_files_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_files_documents_translations`
--

DROP TABLE IF EXISTS `default_files_documents_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_files_documents_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_documents_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_files_documents_translations`
--

LOCK TABLES `default_files_documents_translations` WRITE;
/*!40000 ALTER TABLE `default_files_documents_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_files_documents_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_files_files`
--

DROP TABLE IF EXISTS `default_files_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_files_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `disk_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `alt_text` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `2a79ea27c279e471f4d180b08d62b00a` (`str_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_files_files`
--

LOCK TABLES `default_files_files` WRITE;
/*!40000 ALTER TABLE `default_files_files` DISABLE KEYS */;
INSERT INTO `default_files_files` VALUES (1,1,'2022-05-04 08:25:44',1,'2022-05-04 08:25:44',1,NULL,'map.jpg',1,1,'jpg',605744,'image/jpeg',NULL,'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel',NULL,'1700','2880',NULL,NULL,NULL,NULL,'4knjGEcNWLPoFktAsuiDZyoZ');
/*!40000 ALTER TABLE `default_files_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_files_folders`
--

DROP TABLE IF EXISTS `default_files_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_files_folders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `disk_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `allowed_types` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `013d407166ec4fa56eb1e1f8cbe183b9` (`slug`),
  UNIQUE KEY `1c9ac0159c94d8d0cbedc973445af2da` (`str_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_files_folders`
--

LOCK TABLES `default_files_folders` WRITE;
/*!40000 ALTER TABLE `default_files_folders` DISABLE KEYS */;
INSERT INTO `default_files_folders` VALUES (1,1,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,NULL,1,'images','a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}','oCLYQCfCAKYXDY3D1KXpw3pb'),(2,2,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,NULL,1,'documents','a:2:{i:0;s:3:\"pdf\";i:1;s:4:\"docx\";}','ZIuKDKyvFzeDSHaWwO0Abg4u');
/*!40000 ALTER TABLE `default_files_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_files_folders_translations`
--

DROP TABLE IF EXISTS `default_files_folders_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_files_folders_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_folders_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_files_folders_translations`
--

LOCK TABLES `default_files_folders_translations` WRITE;
/*!40000 ALTER TABLE `default_files_folders_translations` DISABLE KEYS */;
INSERT INTO `default_files_folders_translations` VALUES (1,1,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,'en','Images','A folder for images.'),(2,2,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,'en','Documents','A folder for documents.');
/*!40000 ALTER TABLE `default_files_folders_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_files_images`
--

DROP TABLE IF EXISTS `default_files_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_files_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_files_images`
--

LOCK TABLES `default_files_images` WRITE;
/*!40000 ALTER TABLE `default_files_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_files_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_files_images_translations`
--

DROP TABLE IF EXISTS `default_files_images_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_files_images_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_images_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_files_images_translations`
--

LOCK TABLES `default_files_images_translations` WRITE;
/*!40000 ALTER TABLE `default_files_images_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_files_images_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_html_block_blocks`
--

DROP TABLE IF EXISTS `default_html_block_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_html_block_blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_html_block_blocks`
--

LOCK TABLES `default_html_block_blocks` WRITE;
/*!40000 ALTER TABLE `default_html_block_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_html_block_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_html_block_blocks_translations`
--

DROP TABLE IF EXISTS `default_html_block_blocks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_html_block_blocks_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `html_block_blocks_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_html_block_blocks_translations`
--

LOCK TABLES `default_html_block_blocks_translations` WRITE;
/*!40000 ALTER TABLE `default_html_block_blocks_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_html_block_blocks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_industries_industries`
--

DROP TABLE IF EXISTS `default_industries_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_industries_industries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_industries_industries`
--

LOCK TABLES `default_industries_industries` WRITE;
/*!40000 ALTER TABLE `default_industries_industries` DISABLE KEYS */;
INSERT INTO `default_industries_industries` VALUES (1,1,'2022-09-21 10:02:02',1,'2022-09-21 10:02:02',1,NULL),(2,2,'2022-09-21 10:02:08',1,'2022-09-21 10:02:08',1,NULL),(3,3,'2022-09-21 10:02:14',1,'2022-09-21 10:02:14',1,NULL),(4,4,'2022-09-21 10:02:19',1,'2022-09-21 10:02:19',1,NULL),(5,5,'2022-09-21 10:02:23',1,'2022-09-21 10:02:23',1,NULL),(6,6,'2022-09-21 10:02:29',1,'2022-09-21 10:02:29',1,NULL),(7,7,'2022-09-21 10:02:37',1,'2022-09-21 10:02:37',1,NULL),(8,8,'2022-09-21 10:02:42',1,'2022-09-21 10:02:42',1,NULL),(9,9,'2022-09-21 10:02:48',1,'2022-09-21 10:02:48',1,NULL),(10,10,'2022-09-21 10:02:54',1,'2022-09-21 10:02:54',1,NULL),(11,11,'2022-09-21 10:02:58',1,'2022-09-21 10:02:58',1,NULL),(12,12,'2022-09-21 10:03:03',1,'2022-09-21 10:03:03',1,NULL),(13,13,'2022-09-21 10:03:08',1,'2022-09-21 10:03:08',1,NULL),(14,14,'2022-09-21 10:03:13',1,'2022-09-21 10:03:13',1,NULL),(15,15,'2022-09-21 10:03:20',1,'2022-09-21 10:03:20',1,NULL);
/*!40000 ALTER TABLE `default_industries_industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_industries_industries_combined`
--

DROP TABLE IF EXISTS `default_industries_industries_combined`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_industries_industries_combined` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `market_approach_id` int(11) DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_industries_industries_combined`
--

LOCK TABLES `default_industries_industries_combined` WRITE;
/*!40000 ALTER TABLE `default_industries_industries_combined` DISABLE KEYS */;
INSERT INTO `default_industries_industries_combined` VALUES (1,1,'2022-09-21 10:07:58',1,'2022-09-21 10:07:58',1,NULL,1,1),(2,2,'2022-09-21 10:14:04',1,'2022-09-21 10:14:04',1,NULL,1,2),(3,3,'2022-09-21 10:14:18',1,'2022-09-21 10:14:18',1,NULL,1,3),(4,4,'2022-09-21 10:14:26',1,'2022-09-21 10:14:26',1,NULL,1,4),(5,5,'2022-09-21 10:14:35',1,'2022-09-21 10:14:35',1,NULL,1,5),(6,6,'2022-09-21 10:14:42',1,'2022-09-21 10:14:42',1,NULL,1,6),(7,7,'2022-09-21 10:14:51',1,'2022-09-21 10:14:51',1,NULL,1,7),(9,9,'2022-09-21 10:15:07',1,'2022-09-21 10:15:07',1,NULL,1,8),(10,10,'2022-09-21 10:16:47',1,'2022-09-21 10:16:47',1,NULL,2,9),(11,11,'2022-09-21 10:17:00',1,'2022-09-21 10:17:00',1,NULL,2,10),(12,12,'2022-09-21 10:17:18',1,'2022-09-21 10:17:18',1,NULL,2,11),(13,13,'2022-09-21 10:18:26',1,'2022-09-21 10:18:26',1,NULL,3,2),(14,14,'2022-09-21 10:18:37',1,'2022-09-21 10:18:37',1,NULL,3,3),(15,15,'2022-09-21 10:22:51',1,'2022-09-21 10:22:51',1,NULL,3,12),(16,16,'2022-09-21 10:23:00',1,'2022-09-21 10:23:00',1,NULL,3,13),(17,17,'2022-09-21 10:23:15',1,'2022-09-21 10:23:15',1,NULL,3,6),(18,18,'2022-09-21 10:23:24',1,'2022-09-21 10:23:24',1,NULL,3,14),(19,19,'2022-09-21 10:23:41',1,'2022-09-21 10:23:41',1,NULL,3,15),(20,20,'2022-09-21 10:26:00',1,'2022-09-21 10:26:00',1,NULL,3,5);
/*!40000 ALTER TABLE `default_industries_industries_combined` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_industries_industries_combined_translations`
--

DROP TABLE IF EXISTS `default_industries_industries_combined_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_industries_industries_combined_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `industries_industries_combined_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_industries_industries_combined_translations`
--

LOCK TABLES `default_industries_industries_combined_translations` WRITE;
/*!40000 ALTER TABLE `default_industries_industries_combined_translations` DISABLE KEYS */;
INSERT INTO `default_industries_industries_combined_translations` VALUES (1,1,'2022-09-21 10:07:58',NULL,'2022-09-21 10:07:58',1,'ar',NULL),(2,1,'2022-09-21 10:07:58',NULL,'2022-09-21 10:07:58',1,'en',NULL),(3,1,'2022-09-21 10:07:58',NULL,'2022-09-21 10:07:58',1,'de',NULL),(4,1,'2022-09-21 10:07:58',NULL,'2022-09-21 10:07:58',1,'es',NULL),(5,2,'2022-09-21 10:14:04',NULL,'2022-09-21 10:14:04',1,'ar',NULL),(6,2,'2022-09-21 10:14:04',NULL,'2022-09-21 10:14:04',1,'en',NULL),(7,2,'2022-09-21 10:14:04',NULL,'2022-09-21 10:14:04',1,'de',NULL),(8,2,'2022-09-21 10:14:04',NULL,'2022-09-21 10:14:04',1,'es',NULL),(9,3,'2022-09-21 10:14:18',NULL,'2022-09-21 10:14:18',1,'ar',NULL),(10,3,'2022-09-21 10:14:18',NULL,'2022-09-21 10:14:18',1,'en',NULL),(11,3,'2022-09-21 10:14:18',NULL,'2022-09-21 10:14:18',1,'de',NULL),(12,3,'2022-09-21 10:14:18',NULL,'2022-09-21 10:14:18',1,'es',NULL),(13,4,'2022-09-21 10:14:26',NULL,'2022-09-21 10:14:26',1,'ar',NULL),(14,4,'2022-09-21 10:14:26',NULL,'2022-09-21 10:14:26',1,'en',NULL),(15,4,'2022-09-21 10:14:26',NULL,'2022-09-21 10:14:26',1,'de',NULL),(16,4,'2022-09-21 10:14:26',NULL,'2022-09-21 10:14:26',1,'es',NULL),(17,5,'2022-09-21 10:14:35',NULL,'2022-09-21 10:14:35',1,'ar',NULL),(18,5,'2022-09-21 10:14:35',NULL,'2022-09-21 10:14:35',1,'en',NULL),(19,5,'2022-09-21 10:14:35',NULL,'2022-09-21 10:14:35',1,'de',NULL),(20,5,'2022-09-21 10:14:35',NULL,'2022-09-21 10:14:35',1,'es',NULL),(21,6,'2022-09-21 10:14:42',NULL,'2022-09-21 10:14:42',1,'ar',NULL),(22,6,'2022-09-21 10:14:42',NULL,'2022-09-21 10:14:42',1,'en',NULL),(23,6,'2022-09-21 10:14:42',NULL,'2022-09-21 10:14:42',1,'de',NULL),(24,6,'2022-09-21 10:14:42',NULL,'2022-09-21 10:14:42',1,'es',NULL),(25,7,'2022-09-21 10:14:51',NULL,'2022-09-21 10:14:51',1,'ar',NULL),(26,7,'2022-09-21 10:14:51',NULL,'2022-09-21 10:14:51',1,'en',NULL),(27,7,'2022-09-21 10:14:51',NULL,'2022-09-21 10:14:51',1,'de',NULL),(28,7,'2022-09-21 10:14:51',NULL,'2022-09-21 10:14:51',1,'es',NULL),(33,9,'2022-09-21 10:15:07',NULL,'2022-09-21 10:15:07',1,'ar',NULL),(34,9,'2022-09-21 10:15:07',NULL,'2022-09-21 10:15:07',1,'en',NULL),(35,9,'2022-09-21 10:15:07',NULL,'2022-09-21 10:15:07',1,'de',NULL),(36,9,'2022-09-21 10:15:07',NULL,'2022-09-21 10:15:07',1,'es',NULL),(37,10,'2022-09-21 10:16:47',NULL,'2022-09-21 10:16:47',1,'ar',NULL),(38,10,'2022-09-21 10:16:47',NULL,'2022-09-21 10:16:47',1,'en',NULL),(39,10,'2022-09-21 10:16:47',NULL,'2022-09-21 10:16:47',1,'de',NULL),(40,10,'2022-09-21 10:16:47',NULL,'2022-09-21 10:16:47',1,'es',NULL),(41,11,'2022-09-21 10:17:00',NULL,'2022-09-21 10:17:00',1,'ar',NULL),(42,11,'2022-09-21 10:17:00',NULL,'2022-09-21 10:17:00',1,'en',NULL),(43,11,'2022-09-21 10:17:00',NULL,'2022-09-21 10:17:00',1,'de',NULL),(44,11,'2022-09-21 10:17:00',NULL,'2022-09-21 10:17:00',1,'es',NULL),(45,12,'2022-09-21 10:17:18',NULL,'2022-09-21 10:17:18',1,'ar',NULL),(46,12,'2022-09-21 10:17:18',NULL,'2022-09-21 10:17:18',1,'en',NULL),(47,12,'2022-09-21 10:17:18',NULL,'2022-09-21 10:17:18',1,'de',NULL),(48,12,'2022-09-21 10:17:18',NULL,'2022-09-21 10:17:18',1,'es',NULL),(49,13,'2022-09-21 10:18:26',NULL,'2022-09-21 10:18:26',1,'ar',NULL),(50,13,'2022-09-21 10:18:26',NULL,'2022-09-21 10:18:26',1,'en',NULL),(51,13,'2022-09-21 10:18:26',NULL,'2022-09-21 10:18:26',1,'de',NULL),(52,13,'2022-09-21 10:18:26',NULL,'2022-09-21 10:18:26',1,'es',NULL),(53,14,'2022-09-21 10:18:37',NULL,'2022-09-21 10:18:37',1,'ar',NULL),(54,14,'2022-09-21 10:18:37',NULL,'2022-09-21 10:18:37',1,'en',NULL),(55,14,'2022-09-21 10:18:37',NULL,'2022-09-21 10:18:37',1,'de',NULL),(56,14,'2022-09-21 10:18:37',NULL,'2022-09-21 10:18:37',1,'es',NULL),(57,15,'2022-09-21 10:22:51',NULL,'2022-09-21 10:22:51',1,'ar',NULL),(58,15,'2022-09-21 10:22:51',NULL,'2022-09-21 10:22:51',1,'en',NULL),(59,15,'2022-09-21 10:22:51',NULL,'2022-09-21 10:22:51',1,'de',NULL),(60,15,'2022-09-21 10:22:51',NULL,'2022-09-21 10:22:51',1,'es',NULL),(61,16,'2022-09-21 10:23:00',NULL,'2022-09-21 10:23:00',1,'ar',NULL),(62,16,'2022-09-21 10:23:00',NULL,'2022-09-21 10:23:00',1,'en',NULL),(63,16,'2022-09-21 10:23:00',NULL,'2022-09-21 10:23:00',1,'de',NULL),(64,16,'2022-09-21 10:23:00',NULL,'2022-09-21 10:23:00',1,'es',NULL),(65,17,'2022-09-21 10:23:15',NULL,'2022-09-21 10:23:15',1,'ar',NULL),(66,17,'2022-09-21 10:23:15',NULL,'2022-09-21 10:23:15',1,'en',NULL),(67,17,'2022-09-21 10:23:15',NULL,'2022-09-21 10:23:15',1,'de',NULL),(68,17,'2022-09-21 10:23:15',NULL,'2022-09-21 10:23:15',1,'es',NULL),(69,18,'2022-09-21 10:23:24',NULL,'2022-09-21 10:23:24',1,'ar',NULL),(70,18,'2022-09-21 10:23:24',NULL,'2022-09-21 10:23:24',1,'en',NULL),(71,18,'2022-09-21 10:23:24',NULL,'2022-09-21 10:23:24',1,'de',NULL),(72,18,'2022-09-21 10:23:24',NULL,'2022-09-21 10:23:24',1,'es',NULL),(73,19,'2022-09-21 10:23:41',NULL,'2022-09-21 10:23:41',1,'ar',NULL),(74,19,'2022-09-21 10:23:41',NULL,'2022-09-21 10:23:41',1,'en',NULL),(75,19,'2022-09-21 10:23:41',NULL,'2022-09-21 10:23:41',1,'de',NULL),(76,19,'2022-09-21 10:23:41',NULL,'2022-09-21 10:23:41',1,'es',NULL),(77,20,'2022-09-21 10:26:00',NULL,'2022-09-21 10:26:00',1,'ar',NULL),(78,20,'2022-09-21 10:26:00',NULL,'2022-09-21 10:26:00',1,'en',NULL),(79,20,'2022-09-21 10:26:00',NULL,'2022-09-21 10:26:00',1,'de',NULL),(80,20,'2022-09-21 10:26:00',NULL,'2022-09-21 10:26:00',1,'es',NULL);
/*!40000 ALTER TABLE `default_industries_industries_combined_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_industries_industries_translations`
--

DROP TABLE IF EXISTS `default_industries_industries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_industries_industries_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `industries_industries_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_industries_industries_translations`
--

LOCK TABLES `default_industries_industries_translations` WRITE;
/*!40000 ALTER TABLE `default_industries_industries_translations` DISABLE KEYS */;
INSERT INTO `default_industries_industries_translations` VALUES (1,1,'2022-09-21 10:02:02',NULL,'2022-09-21 10:02:02',1,'ar',NULL),(2,1,'2022-09-21 10:02:02',NULL,'2022-09-21 10:02:02',1,'en','Chemicals'),(3,1,'2022-09-21 10:02:02',NULL,'2022-09-21 10:02:02',1,'de',NULL),(4,1,'2022-09-21 10:02:02',NULL,'2022-09-21 10:02:02',1,'es',NULL),(5,2,'2022-09-21 10:02:08',NULL,'2022-09-21 10:02:08',1,'ar',NULL),(6,2,'2022-09-21 10:02:08',NULL,'2022-09-21 10:02:08',1,'en','Construction Material'),(7,2,'2022-09-21 10:02:08',NULL,'2022-09-21 10:02:08',1,'de',NULL),(8,2,'2022-09-21 10:02:08',NULL,'2022-09-21 10:02:08',1,'es',NULL),(9,3,'2022-09-21 10:02:14',NULL,'2022-09-21 10:02:14',1,'ar',NULL),(10,3,'2022-09-21 10:02:14',NULL,'2022-09-21 10:02:14',1,'en','Consumer Goods'),(11,3,'2022-09-21 10:02:14',NULL,'2022-09-21 10:02:14',1,'de',NULL),(12,3,'2022-09-21 10:02:14',NULL,'2022-09-21 10:02:14',1,'es',NULL),(13,4,'2022-09-21 10:02:19',NULL,'2022-09-21 10:02:19',1,'ar',NULL),(14,4,'2022-09-21 10:02:19',NULL,'2022-09-21 10:02:19',1,'en','Electronics'),(15,4,'2022-09-21 10:02:19',NULL,'2022-09-21 10:02:19',1,'de',NULL),(16,4,'2022-09-21 10:02:19',NULL,'2022-09-21 10:02:19',1,'es',NULL),(17,5,'2022-09-21 10:02:23',NULL,'2022-09-21 10:02:23',1,'ar',NULL),(18,5,'2022-09-21 10:02:23',NULL,'2022-09-21 10:02:23',1,'en','Food & Beverage'),(19,5,'2022-09-21 10:02:23',NULL,'2022-09-21 10:02:23',1,'de',NULL),(20,5,'2022-09-21 10:02:23',NULL,'2022-09-21 10:02:23',1,'es',NULL),(21,6,'2022-09-21 10:02:29',NULL,'2022-09-21 10:02:29',1,'ar',NULL),(22,6,'2022-09-21 10:02:29',NULL,'2022-09-21 10:02:29',1,'en','Pharmaceuticals'),(23,6,'2022-09-21 10:02:29',NULL,'2022-09-21 10:02:29',1,'de',NULL),(24,6,'2022-09-21 10:02:29',NULL,'2022-09-21 10:02:29',1,'es',NULL),(25,7,'2022-09-21 10:02:37',NULL,'2022-09-21 10:02:37',1,'ar',NULL),(26,7,'2022-09-21 10:02:37',NULL,'2022-09-21 10:02:37',1,'en','Printing & Packaging'),(27,7,'2022-09-21 10:02:37',NULL,'2022-09-21 10:02:37',1,'de',NULL),(28,7,'2022-09-21 10:02:37',NULL,'2022-09-21 10:02:37',1,'es',NULL),(29,8,'2022-09-21 10:02:42',NULL,'2022-09-21 10:02:42',1,'ar',NULL),(30,8,'2022-09-21 10:02:42',NULL,'2022-09-21 10:02:42',1,'en','Tires'),(31,8,'2022-09-21 10:02:42',NULL,'2022-09-21 10:02:42',1,'de',NULL),(32,8,'2022-09-21 10:02:42',NULL,'2022-09-21 10:02:42',1,'es',NULL),(33,9,'2022-09-21 10:02:48',NULL,'2022-09-21 10:02:48',1,'ar',NULL),(34,9,'2022-09-21 10:02:48',NULL,'2022-09-21 10:02:48',1,'en','Material Handling & Airports'),(35,9,'2022-09-21 10:02:48',NULL,'2022-09-21 10:02:48',1,'de',NULL),(36,9,'2022-09-21 10:02:48',NULL,'2022-09-21 10:02:48',1,'es',NULL),(37,10,'2022-09-21 10:02:54',NULL,'2022-09-21 10:02:54',1,'ar',NULL),(38,10,'2022-09-21 10:02:54',NULL,'2022-09-21 10:02:54',1,'en','Third-Party Logistics'),(39,10,'2022-09-21 10:02:54',NULL,'2022-09-21 10:02:54',1,'de',NULL),(40,10,'2022-09-21 10:02:54',NULL,'2022-09-21 10:02:54',1,'es',NULL),(41,11,'2022-09-21 10:02:58',NULL,'2022-09-21 10:02:58',1,'ar',NULL),(42,11,'2022-09-21 10:02:58',NULL,'2022-09-21 10:02:58',1,'en','Utilities'),(43,11,'2022-09-21 10:02:58',NULL,'2022-09-21 10:02:58',1,'de',NULL),(44,11,'2022-09-21 10:02:58',NULL,'2022-09-21 10:02:58',1,'es',NULL),(45,12,'2022-09-21 10:03:03',NULL,'2022-09-21 10:03:03',1,'ar',NULL),(46,12,'2022-09-21 10:03:03',NULL,'2022-09-21 10:03:03',1,'en','E-Commerce'),(47,12,'2022-09-21 10:03:03',NULL,'2022-09-21 10:03:03',1,'de',NULL),(48,12,'2022-09-21 10:03:03',NULL,'2022-09-21 10:03:03',1,'es',NULL),(49,13,'2022-09-21 10:03:08',NULL,'2022-09-21 10:03:08',1,'ar',NULL),(50,13,'2022-09-21 10:03:08',NULL,'2022-09-21 10:03:08',1,'en','Oil & Gas'),(51,13,'2022-09-21 10:03:08',NULL,'2022-09-21 10:03:08',1,'de',NULL),(52,13,'2022-09-21 10:03:08',NULL,'2022-09-21 10:03:08',1,'es',NULL),(53,14,'2022-09-21 10:03:13',NULL,'2022-09-21 10:03:13',1,'ar',NULL),(54,14,'2022-09-21 10:03:13',NULL,'2022-09-21 10:03:13',1,'en','Retail'),(55,14,'2022-09-21 10:03:13',NULL,'2022-09-21 10:03:13',1,'de',NULL),(56,14,'2022-09-21 10:03:13',NULL,'2022-09-21 10:03:13',1,'es',NULL),(57,15,'2022-09-21 10:03:20',NULL,'2022-09-21 10:03:20',1,'ar',NULL),(58,15,'2022-09-21 10:03:20',NULL,'2022-09-21 10:03:20',1,'en','Spare Parts'),(59,15,'2022-09-21 10:03:20',NULL,'2022-09-21 10:03:20',1,'de',NULL),(60,15,'2022-09-21 10:03:20',NULL,'2022-09-21 10:03:20',1,'es',NULL);
/*!40000 ALTER TABLE `default_industries_industries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_industries_market_approach`
--

DROP TABLE IF EXISTS `default_industries_market_approach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_industries_market_approach` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_industries_market_approach`
--

LOCK TABLES `default_industries_market_approach` WRITE;
/*!40000 ALTER TABLE `default_industries_market_approach` DISABLE KEYS */;
INSERT INTO `default_industries_market_approach` VALUES (1,1,'2022-09-21 09:56:49',1,'2022-09-21 09:56:49',1,NULL),(2,2,'2022-09-21 09:56:56',1,'2022-09-21 09:56:56',1,NULL),(3,3,'2022-09-21 09:57:02',1,'2022-09-21 09:57:02',1,NULL);
/*!40000 ALTER TABLE `default_industries_market_approach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_industries_market_approach_translations`
--

DROP TABLE IF EXISTS `default_industries_market_approach_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_industries_market_approach_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `industries_market_approach_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_industries_market_approach_translations`
--

LOCK TABLES `default_industries_market_approach_translations` WRITE;
/*!40000 ALTER TABLE `default_industries_market_approach_translations` DISABLE KEYS */;
INSERT INTO `default_industries_market_approach_translations` VALUES (1,1,'2022-09-21 09:56:49',NULL,'2022-09-21 09:56:49',1,'ar','Manufacturing A'),(2,1,'2022-09-21 09:56:49',NULL,'2022-09-21 09:56:49',1,'en','Manufacturing'),(3,1,'2022-09-21 09:56:49',NULL,'2022-09-21 09:56:49',1,'de','Manufacturing DE'),(4,1,'2022-09-21 09:56:49',NULL,'2022-09-21 09:56:49',1,'es','Manufacturing ES'),(5,2,'2022-09-21 09:56:56',NULL,'2022-09-21 09:56:56',1,'ar',NULL),(6,2,'2022-09-21 09:56:56',NULL,'2022-09-21 09:56:56',1,'en','Service provider'),(7,2,'2022-09-21 09:56:56',NULL,'2022-09-21 09:56:56',1,'de',NULL),(8,2,'2022-09-21 09:56:56',NULL,'2022-09-21 09:56:56',1,'es',NULL),(9,3,'2022-09-21 09:57:02',NULL,'2022-09-21 09:57:02',1,'ar',NULL),(10,3,'2022-09-21 09:57:02',NULL,'2022-09-21 09:57:02',1,'en','Distributor'),(11,3,'2022-09-21 09:57:02',NULL,'2022-09-21 09:57:02',1,'de',NULL),(12,3,'2022-09-21 09:57:02',NULL,'2022-09-21 09:57:02',1,'es',NULL);
/*!40000 ALTER TABLE `default_industries_market_approach_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_jobs`
--

DROP TABLE IF EXISTS `default_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_jobs`
--

LOCK TABLES `default_jobs` WRITE;
/*!40000 ALTER TABLE `default_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_migrations`
--

DROP TABLE IF EXISTS `default_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_migrations`
--

LOCK TABLES `default_migrations` WRITE;
/*!40000 ALTER TABLE `default_migrations` DISABLE KEYS */;
INSERT INTO `default_migrations` VALUES (1,'2015_03_15_171404_create_applications_table',1),(2,'2015_03_15_171506_create_applications_domains_table',1),(3,'2015_03_15_171506_create_jobs_table',2),(4,'2015_03_15_171507_create_failed_jobs_table',2),(5,'2015_03_15_171508_create_sessions_table',2),(6,'2015_03_15_171509_create_cache_table',2),(7,'2015_03_15_171620_create_streams_tables',2),(8,'2015_03_15_171646_create_fields_tables',2),(9,'2015_03_15_171720_create_assignments_tables',2),(10,'2015_03_15_171838_create_modules_table',2),(11,'2015_03_15_171926_create_extensions_table',2),(12,'2016_08_30_185635_create_notifications_table',2),(13,'2016_09_02_164448_add_searchable_column_to_streams',2),(14,'2016_11_11_154228_append_id_to_user_meta_columns',2),(15,'2017_05_20_184629_add_sort_order_column_to_streams',2),(16,'2017_05_20_185657_add_searchable_column_to_assignments',2),(17,'2018_02_05_185635_create_versions_table',2),(18,'2018_04_13_144412_add_versionable_column_to_streams',2),(19,'2018_04_13_144422_add_versionable_column_to_assignments',2),(20,'2018_05_03_020251_create_locks_table',2),(21,'2018_05_03_020252_drop_session_id_from_locks_table',2),(22,'2016_05_21_045018_anomaly.module.streams__create_streams_fields',3),(23,'2016_11_10_005532_anomaly.module.streams__create_groups_stream',3),(24,'2018_10_27_031213_anomaly.module.streams__add_navigation_fields_to_groups',3),(25,'2018_10_27_053533_anomaly.module.streams__remove_allowed_roles_field',3),(26,'2015_02_27_101227_anomaly.module.preferences__create_preferences_fields',4),(27,'2015_02_27_101300_anomaly.module.preferences__create_preferences_streams',4),(28,'2016_11_16_151654_anomaly.module.preferences__update_user_related_config',4),(29,'2015_03_20_171947_anomaly.module.pages__create_pages_fields',5),(30,'2015_03_20_171955_anomaly.module.pages__create_pages_stream',5),(31,'2015_04_22_150211_anomaly.module.pages__create_types_stream',5),(32,'2016_09_02_175135_anomaly.module.pages__make_pages_searchable',5),(33,'2017_08_18_180652_anomaly.module.pages__remove_meta_keywords_field',5),(34,'2019_03_16_212844_anomaly.module.pages__add_publish_at_field_to_pages',5),(35,'2019_03_19_185323_anomaly.module.pages__make_page_slugs_translatable',5),(36,'2019_03_19_191054_anomaly.module.pages__make_page_paths_translatable',5),(37,'2019_01_12_171705_anomaly.module.addons__create_addons_fields',6),(38,'2019_01_12_171706_anomaly.module.addons__create_addons_stream',6),(39,'2019_01_12_175738_anomaly.module.addons__create_repositories_stream',6),(40,'2015_11_01_164326_anomaly.module.dashboard__create_dashboard_fields',7),(41,'2015_11_01_170645_anomaly.module.dashboard__create_dashboards_stream',7),(42,'2015_11_01_170650_anomaly.module.dashboard__create_widgets_stream',7),(43,'2015_03_20_184103_anomaly.module.posts__create_posts_fields',8),(44,'2015_03_20_184141_anomaly.module.posts__create_categories_stream',8),(45,'2015_03_20_184148_anomaly.module.posts__create_posts_stream',8),(46,'2015_05_16_050818_anomaly.module.posts__create_types_stream',8),(47,'2016_09_02_175531_anomaly.module.posts__make_posts_searchable',8),(48,'2017_08_18_175445_anomaly.module.posts__remove_meta_keywords_field',8),(49,'2018_03_23_160615_anomaly.module.posts__add_metadata_fields_to_categories',8),(50,'2018_03_23_160625_anomaly.module.posts__add_metadata_fields_to_types',8),(51,'2019_03_17_002706_anomaly.module.posts__make_post_slugs_translatable',8),(52,'2015_02_27_101816_anomaly.module.users__create_users_fields',9),(53,'2015_02_27_101851_anomaly.module.users__create_users_stream',9),(54,'2015_02_27_101940_anomaly.module.users__create_roles_stream',9),(55,'2016_09_02_175848_anomaly.module.users__make_users_searchable',9),(56,'2019_01_10_202632_anomaly.module.users__add_str_id_to_users',9),(57,'2015_02_27_101410_anomaly.module.settings__create_settings_fields',10),(58,'2015_02_27_101510_anomaly.module.settings__create_settings_stream',10),(59,'2015_07_09_071754_anomaly.module.blocks__create_blocks_fields',11),(60,'2018_03_20_224637_anomaly.module.blocks__create_areas_stream',11),(61,'2018_03_20_224638_anomaly.module.blocks__create_blocks_stream',11),(62,'2018_04_29_153855_anomaly.module.blocks__add_display_title_field_to_blocks',11),(63,'2018_10_30_181203_anomaly.module.blocks__create_types_fields',11),(64,'2018_10_30_181220_anomaly.module.blocks__create_types_stream',11),(65,'2018_10_30_184029_anomaly.module.blocks__add_type_to_blocks',11),(66,'2015_03_25_091755_anomaly.module.configuration__create_configuration_fields',12),(67,'2015_03_25_091845_anomaly.module.configuration__create_configuration_stream',12),(68,'2015_03_05_021725_anomaly.module.files__create_files_fields',13),(69,'2015_03_05_022227_anomaly.module.files__create_disks_stream',13),(70,'2015_06_09_031343_anomaly.module.files__create_folders_stream',13),(71,'2015_06_09_031351_anomaly.module.files__create_files_stream',13),(72,'2016_08_29_151020_anomaly.module.files__remove_required_from_entry_assignment',13),(73,'2016_09_02_175659_anomaly.module.files__make_files_searchable',13),(74,'2016_10_05_221741_anomaly.module.files__make_disks_sortable',13),(75,'2017_10_07_162244_anomaly.module.files__add_seo_fields_to_files',13),(76,'2019_08_02_010559_anomaly.module.files__add_str_id_to_files',13),(77,'2019_08_02_012117_anomaly.module.files__add_str_id_to_folders',13),(78,'2015_05_21_061832_anomaly.module.navigation__create_navigation_fields',14),(79,'2015_05_21_062115_anomaly.module.navigation__create_menus_stream',14),(80,'2015_05_21_064952_anomaly.module.navigation__create_links_stream',14),(81,'2019_06_10_214015_anomaly.module.search__create_search_fields',15),(82,'2019_06_10_214712_anomaly.module.search__create_items_stream',15),(83,'2019_02_23_085325_anomaly.module.system__create_telescope_tables',16),(84,'2015_03_21_153325_anomaly.module.redirects__create_redirects_fields',17),(85,'2015_03_21_153326_anomaly.module.redirects__create_redirects_stream',17),(86,'2018_10_20_023542_anomaly.module.redirects__create_domains_stream',17),(87,'2018_03_22_020826_anomaly.extension.wysiwyg_block__create_wysiwyg_block_fields',18),(88,'2018_03_22_020834_anomaly.extension.wysiwyg_block__create_blocks_stream',18),(89,'2015_06_02_170526_anomaly.extension.page_link_type__create_page_link_type_fields',19),(90,'2015_06_02_170542_anomaly.extension.page_link_type__create_page_links_stream',19),(91,'2015_05_24_201105_anomaly.extension.url_link_type__create_url_link_type_fields',20),(92,'2015_05_24_201134_anomaly.extension.url_link_type__create_links_stream',20),(93,'2018_03_22_010006_anomaly.extension.html_block__create_html_block_fields',21),(94,'2018_03_22_010509_anomaly.extension.html_block__create_blocks_stream',21),(95,'2019_08_02_003333_anomaly.extension.private_storage_adapter__create_private_storage_adapter_fields',22);
/*!40000 ALTER TABLE `default_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_navigation_links`
--

DROP TABLE IF EXISTS `default_navigation_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_navigation_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '_self',
  `class` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_navigation_links`
--

LOCK TABLES `default_navigation_links` WRITE;
/*!40000 ALTER TABLE `default_navigation_links` DISABLE KEYS */;
INSERT INTO `default_navigation_links` VALUES (1,1,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,NULL,1,'anomaly.extension.url_link_type',1,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(2,2,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,NULL,1,'anomaly.extension.url_link_type',2,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL);
/*!40000 ALTER TABLE `default_navigation_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_navigation_links_allowed_roles`
--

DROP TABLE IF EXISTS `default_navigation_links_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_navigation_links_allowed_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `3894987cc73b77f5eb5ccba441bcbda3` (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_navigation_links_allowed_roles`
--

LOCK TABLES `default_navigation_links_allowed_roles` WRITE;
/*!40000 ALTER TABLE `default_navigation_links_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_navigation_links_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_navigation_menus`
--

DROP TABLE IF EXISTS `default_navigation_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_navigation_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `06409663226af2f3114485aa4e0a23b4` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_navigation_menus`
--

LOCK TABLES `default_navigation_menus` WRITE;
/*!40000 ALTER TABLE `default_navigation_menus` DISABLE KEYS */;
INSERT INTO `default_navigation_menus` VALUES (1,1,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,NULL,'footer');
/*!40000 ALTER TABLE `default_navigation_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_navigation_menus_translations`
--

DROP TABLE IF EXISTS `default_navigation_menus_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_navigation_menus_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `navigation_menus_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_navigation_menus_translations`
--

LOCK TABLES `default_navigation_menus_translations` WRITE;
/*!40000 ALTER TABLE `default_navigation_menus_translations` DISABLE KEYS */;
INSERT INTO `default_navigation_menus_translations` VALUES (1,1,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,'en','Footer','This is the main footer menu.');
/*!40000 ALTER TABLE `default_navigation_menus_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_notifications`
--

DROP TABLE IF EXISTS `default_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_notifications` (
  `id` char(36) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_notifications`
--

LOCK TABLES `default_notifications` WRITE;
/*!40000 ALTER TABLE `default_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_page_link_type_pages`
--

DROP TABLE IF EXISTS `default_page_link_type_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_page_link_type_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_page_link_type_pages`
--

LOCK TABLES `default_page_link_type_pages` WRITE;
/*!40000 ALTER TABLE `default_page_link_type_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_page_link_type_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_page_link_type_pages_translations`
--

DROP TABLE IF EXISTS `default_page_link_type_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_page_link_type_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_link_type_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_page_link_type_pages_translations`
--

LOCK TABLES `default_page_link_type_pages_translations` WRITE;
/*!40000 ALTER TABLE `default_page_link_type_pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_page_link_type_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_pages_default_pages`
--

DROP TABLE IF EXISTS `default_pages_default_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_pages_default_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_pages_default_pages`
--

LOCK TABLES `default_pages_default_pages` WRITE;
/*!40000 ALTER TABLE `default_pages_default_pages` DISABLE KEYS */;
INSERT INTO `default_pages_default_pages` VALUES (1,1,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,NULL),(2,2,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,NULL);
/*!40000 ALTER TABLE `default_pages_default_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_pages_default_pages_translations`
--

DROP TABLE IF EXISTS `default_pages_default_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_pages_default_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_default_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_pages_default_pages_translations`
--

LOCK TABLES `default_pages_default_pages_translations` WRITE;
/*!40000 ALTER TABLE `default_pages_default_pages_translations` DISABLE KEYS */;
INSERT INTO `default_pages_default_pages_translations` VALUES (1,1,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,'en','<p>Welcome to PyroCMS!</p>'),(2,2,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,'en','<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>');
/*!40000 ALTER TABLE `default_pages_default_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_pages_pages`
--

DROP TABLE IF EXISTS `default_pages_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_pages_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 1,
  `enabled` tinyint(1) DEFAULT 1,
  `exact` tinyint(1) DEFAULT 1,
  `home` tinyint(1) DEFAULT 0,
  `theme_layout` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT 'theme::layouts/default.twig',
  `publish_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_pages_pages`
--

LOCK TABLES `default_pages_pages` WRITE;
/*!40000 ALTER TABLE `default_pages_pages` DISABLE KEYS */;
INSERT INTO `default_pages_pages` VALUES (1,1,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,NULL,'qSQGVQBHR7nh8TJMo4ZGGDiZ',1,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel',NULL,1,1,1,1,'theme::layouts/default.twig',NULL),(2,2,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,NULL,'mPyyQlBo3dq8MELviT8Av4Hr',1,2,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel',NULL,1,1,1,0,'theme::layouts/default.twig',NULL);
/*!40000 ALTER TABLE `default_pages_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_pages_pages_allowed_roles`
--

DROP TABLE IF EXISTS `default_pages_pages_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_pages_pages_allowed_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `3691a57dc384b8adc851052bf7bea38f` (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_pages_pages_allowed_roles`
--

LOCK TABLES `default_pages_pages_allowed_roles` WRITE;
/*!40000 ALTER TABLE `default_pages_pages_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_pages_pages_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_pages_pages_translations`
--

DROP TABLE IF EXISTS `default_pages_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_pages_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_pages_pages_translations`
--

LOCK TABLES `default_pages_pages_translations` WRITE;
/*!40000 ALTER TABLE `default_pages_pages_translations` DISABLE KEYS */;
INSERT INTO `default_pages_pages_translations` VALUES (1,1,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,'en','Welcome',NULL,NULL,'welcome','/'),(2,2,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,'en','Contact',NULL,NULL,'contact','/contact');
/*!40000 ALTER TABLE `default_pages_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_pages_types`
--

DROP TABLE IF EXISTS `default_pages_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_pages_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'theme::layouts/default.twig',
  `layout` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'anomaly.extension.default_page_handler',
  PRIMARY KEY (`id`),
  UNIQUE KEY `4e732ced3463d06de0ca9a15b6153677` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_pages_types`
--

LOCK TABLES `default_pages_types` WRITE;
/*!40000 ALTER TABLE `default_pages_types` DISABLE KEYS */;
INSERT INTO `default_pages_types` VALUES (1,1,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,NULL,'default','theme::layouts/default.twig','<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}','anomaly.extension.default_page_handler');
/*!40000 ALTER TABLE `default_pages_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_pages_types_translations`
--

DROP TABLE IF EXISTS `default_pages_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_pages_types_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(26) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_types_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_pages_types_translations`
--

LOCK TABLES `default_pages_types_translations` WRITE;
/*!40000 ALTER TABLE `default_pages_types_translations` DISABLE KEYS */;
INSERT INTO `default_pages_types_translations` VALUES (1,1,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,'en','Default','A simple page type.');
/*!40000 ALTER TABLE `default_pages_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_posts_categories`
--

DROP TABLE IF EXISTS `default_posts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_posts_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ea5d2f1c4608232e07d3aa3d998e5135` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_posts_categories`
--

LOCK TABLES `default_posts_categories` WRITE;
/*!40000 ALTER TABLE `default_posts_categories` DISABLE KEYS */;
INSERT INTO `default_posts_categories` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,NULL,'news');
/*!40000 ALTER TABLE `default_posts_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_posts_categories_translations`
--

DROP TABLE IF EXISTS `default_posts_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_posts_categories_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_categories_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_posts_categories_translations`
--

LOCK TABLES `default_posts_categories_translations` WRITE;
/*!40000 ALTER TABLE `default_posts_categories_translations` DISABLE KEYS */;
INSERT INTO `default_posts_categories_translations` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'en','News','Company news and updates.',NULL,NULL);
/*!40000 ALTER TABLE `default_posts_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_posts_default_posts`
--

DROP TABLE IF EXISTS `default_posts_default_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_posts_default_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_posts_default_posts`
--

LOCK TABLES `default_posts_default_posts` WRITE;
/*!40000 ALTER TABLE `default_posts_default_posts` DISABLE KEYS */;
INSERT INTO `default_posts_default_posts` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,NULL);
/*!40000 ALTER TABLE `default_posts_default_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_posts_default_posts_translations`
--

DROP TABLE IF EXISTS `default_posts_default_posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_posts_default_posts_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_default_posts_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_posts_default_posts_translations`
--

LOCK TABLES `default_posts_default_posts_translations` WRITE;
/*!40000 ALTER TABLE `default_posts_default_posts_translations` DISABLE KEYS */;
INSERT INTO `default_posts_default_posts_translations` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'en','<p>Welcome to PyroCMS!</p>');
/*!40000 ALTER TABLE `default_posts_default_posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_posts_posts`
--

DROP TABLE IF EXISTS `default_posts_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_posts_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `publish_at` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `enabled` tinyint(1) DEFAULT 0,
  `tags` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `3295c76acbf4caaed33c36b1b5fc2cb1` (`str_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_posts_posts`
--

LOCK TABLES `default_posts_posts` WRITE;
/*!40000 ALTER TABLE `default_posts_posts` DISABLE KEYS */;
INSERT INTO `default_posts_posts` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,NULL,'IntDalDJqwkTdUzz',1,'2022-05-04 07:57:03',1,1,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',1,0,1,NULL);
/*!40000 ALTER TABLE `default_posts_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_posts_posts_translations`
--

DROP TABLE IF EXISTS `default_posts_posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_posts_posts_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_posts_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_posts_posts_translations`
--

LOCK TABLES `default_posts_posts_translations` WRITE;
/*!40000 ALTER TABLE `default_posts_posts_translations` DISABLE KEYS */;
INSERT INTO `default_posts_posts_translations` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'en','Welcome to PyroCMS!','This is an example post to demonstrate the posts module.',NULL,NULL,'welcome-to-pyrocms');
/*!40000 ALTER TABLE `default_posts_posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_posts_types`
--

DROP TABLE IF EXISTS `default_posts_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_posts_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `layout` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `43ec517d68b6edd3015b3edc9a11367b` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_posts_types`
--

LOCK TABLES `default_posts_types` WRITE;
/*!40000 ALTER TABLE `default_posts_types` DISABLE KEYS */;
INSERT INTO `default_posts_types` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,NULL,'default','{{ post.content.render|raw }}','theme::layouts/default.twig');
/*!40000 ALTER TABLE `default_posts_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_posts_types_translations`
--

DROP TABLE IF EXISTS `default_posts_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_posts_types_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_types_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_posts_types_translations`
--

LOCK TABLES `default_posts_types_translations` WRITE;
/*!40000 ALTER TABLE `default_posts_types_translations` DISABLE KEYS */;
INSERT INTO `default_posts_types_translations` VALUES (1,1,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'en','Default','A simple post type.',NULL,NULL);
/*!40000 ALTER TABLE `default_posts_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_preferences_preferences`
--

DROP TABLE IF EXISTS `default_preferences_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_preferences_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_preferences_preferences`
--

LOCK TABLES `default_preferences_preferences` WRITE;
/*!40000 ALTER TABLE `default_preferences_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_preferences_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_products_and_services_components_groups`
--

DROP TABLE IF EXISTS `default_products_and_services_components_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_products_and_services_components_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_products_and_services_components_groups`
--

LOCK TABLES `default_products_and_services_components_groups` WRITE;
/*!40000 ALTER TABLE `default_products_and_services_components_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_products_and_services_components_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_products_and_services_components_groups_translations`
--

DROP TABLE IF EXISTS `default_products_and_services_components_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_products_and_services_components_groups_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_products_and_services_components_groups_translations`
--

LOCK TABLES `default_products_and_services_components_groups_translations` WRITE;
/*!40000 ALTER TABLE `default_products_and_services_components_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_products_and_services_components_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_products_brands`
--

DROP TABLE IF EXISTS `default_products_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_products_brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_products_brands`
--

LOCK TABLES `default_products_brands` WRITE;
/*!40000 ALTER TABLE `default_products_brands` DISABLE KEYS */;
INSERT INTO `default_products_brands` VALUES (1,1,'2022-09-21 13:29:05',1,'2022-09-21 13:29:05',1,NULL,'Acme'),(2,2,'2022-09-21 13:29:09',1,'2022-09-21 13:29:09',1,NULL,'Alfanumatic'),(3,3,'2022-09-21 13:29:13',1,'2022-09-21 13:29:13',1,NULL,'Axelent'),(4,4,'2022-09-21 13:29:20',1,'2022-09-21 13:29:20',1,NULL,'Bihl & Wiedemann'),(5,5,'2022-09-21 13:29:24',1,'2022-09-21 13:29:24',1,NULL,'Habasit'),(6,6,'2022-09-21 13:29:28',1,'2022-09-21 13:29:28',1,NULL,'Hanwha'),(7,7,'2022-09-21 13:29:33',1,'2022-09-21 13:29:33',1,NULL,'Kardex'),(8,8,'2022-09-21 13:29:39',1,'2022-09-21 13:29:39',1,NULL,'Leuze'),(9,9,'2022-09-21 13:29:44',1,'2022-09-21 13:29:44',1,NULL,'Mech-Mind'),(10,10,'2022-09-21 13:29:51',1,'2022-09-21 13:29:51',1,NULL,'Metal Work'),(11,11,'2022-09-21 13:29:55',1,'2022-09-21 13:29:55',1,NULL,'OnRobot'),(12,12,'2022-09-21 13:30:00',1,'2022-09-21 13:30:00',1,NULL,'Pizzato'),(13,13,'2022-09-21 13:30:04',1,'2022-09-21 13:30:04',1,NULL,'Schmalz'),(14,14,'2022-09-21 13:30:08',1,'2022-09-21 13:30:08',1,NULL,'Talustech'),(15,15,'2022-09-21 13:30:12',1,'2022-09-21 13:30:12',1,NULL,'Teknostore'),(16,16,'2022-09-21 13:30:17',1,'2022-09-21 13:30:17',1,NULL,'Tertaflon'),(17,17,'2022-09-21 13:30:21',1,'2022-09-21 13:30:21',1,NULL,'Twentebelt');
/*!40000 ALTER TABLE `default_products_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_products_categories`
--

DROP TABLE IF EXISTS `default_products_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_products_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_products_categories`
--

LOCK TABLES `default_products_categories` WRITE;
/*!40000 ALTER TABLE `default_products_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_products_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_products_categories_translations`
--

DROP TABLE IF EXISTS `default_products_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_products_categories_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_categories_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_products_categories_translations`
--

LOCK TABLES `default_products_categories_translations` WRITE;
/*!40000 ALTER TABLE `default_products_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_products_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_products_components_groups`
--

DROP TABLE IF EXISTS `default_products_components_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_products_components_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_products_components_groups`
--

LOCK TABLES `default_products_components_groups` WRITE;
/*!40000 ALTER TABLE `default_products_components_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_products_components_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_products_components_groups_translations`
--

DROP TABLE IF EXISTS `default_products_components_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_products_components_groups_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_components_groups_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_products_components_groups_translations`
--

LOCK TABLES `default_products_components_groups_translations` WRITE;
/*!40000 ALTER TABLE `default_products_components_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_products_components_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_products_products`
--

DROP TABLE IF EXISTS `default_products_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_products_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_products_products`
--

LOCK TABLES `default_products_products` WRITE;
/*!40000 ALTER TABLE `default_products_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_products_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_products_products_translations`
--

DROP TABLE IF EXISTS `default_products_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_products_products_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_products_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_products_products_translations`
--

LOCK TABLES `default_products_products_translations` WRITE;
/*!40000 ALTER TABLE `default_products_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_products_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_redirects_domains`
--

DROP TABLE IF EXISTS `default_redirects_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_redirects_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `8f85517967795eeef66c225f7883bdcb` (`from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_redirects_domains`
--

LOCK TABLES `default_redirects_domains` WRITE;
/*!40000 ALTER TABLE `default_redirects_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_redirects_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_redirects_redirects`
--

DROP TABLE IF EXISTS `default_redirects_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_redirects_redirects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bf8229696f7a3bb4700cfddef19fa23f` (`from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_redirects_redirects`
--

LOCK TABLES `default_redirects_redirects` WRITE;
/*!40000 ALTER TABLE `default_redirects_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_redirects_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_search_items`
--

DROP TABLE IF EXISTS `default_search_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_search_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `searchable` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`,`description`),
  FULLTEXT KEY `searchable` (`searchable`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_search_items`
--

LOCK TABLES `default_search_items` WRITE;
/*!40000 ALTER TABLE `default_search_items` DISABLE KEYS */;
INSERT INTO `default_search_items` VALUES (1,NULL,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,'Welcome',NULL,'null',1,'Anomaly\\PagesModule\\Page\\PageModel',3,'en','{\"id\":1,\"content\":\"<p>Welcome to PyroCMS!<\\/p>\",\"str_id\":\"qSQGVQBHR7nh8TJMo4ZGGDiZ\",\"title\":\"Welcome\",\"slug\":\"welcome\",\"path\":\"\\/\",\"type\":\"1\",\"enabled\":\"1\",\"home\":\"1\",\"theme_layout\":\"theme::layouts\\/default.twig\",\"allowed_roles\":\"[]\",\"description\":null}'),(2,NULL,'2022-05-04 07:57:01',NULL,'2022-05-04 07:57:01',NULL,'Contact',NULL,'null',2,'Anomaly\\PagesModule\\Page\\PageModel',3,'en','{\"id\":2,\"content\":\"<p>Drop us a line! We\'d love to hear from you!<\\/p><p><br><\\/p>\\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}<\\/p>\",\"str_id\":\"mPyyQlBo3dq8MELviT8Av4Hr\",\"title\":\"Contact\",\"slug\":\"contact\",\"path\":\"\\/contact\",\"type\":\"1\",\"enabled\":\"1\",\"theme_layout\":\"theme::layouts\\/default.twig\",\"allowed_roles\":\"[]\",\"description\":null}'),(3,NULL,'2022-05-04 07:57:03',NULL,'2022-05-04 07:57:03',NULL,'Welcome to PyroCMS!',NULL,'null',1,'Anomaly\\PostsModule\\Post\\PostModel',10,'en','{\"publish_at\":\"2022-05-04T07:57:03.000000Z\",\"enabled\":1,\"type_id\":1,\"entry_id\":1,\"entry_type\":\"Anomaly\\\\Streams\\\\Platform\\\\Model\\\\Posts\\\\PostsDefaultPostsEntryModel\",\"category_id\":1,\"author_id\":1,\"updated_by_id\":null,\"created_by_id\":null,\"sort_order\":1,\"str_id\":\"IntDalDJqwkTdUzz\",\"updated_at\":\"2022-05-04T07:57:03.000000Z\",\"created_at\":\"2022-05-04T07:57:03.000000Z\",\"id\":1,\"title\":\"Welcome to PyroCMS!\",\"summary\":\"This is an example post to demonstrate the posts module.\",\"slug\":\"welcome-to-pyrocms\",\"meta_title\":null,\"meta_description\":null,\"type\":\"default\",\"category\":\"news\",\"publish_at_year\":\"2022\",\"publish_at_month\":\"05\",\"publish_at_day\":\"04\",\"description\":null}'),(7,NULL,'2022-05-04 08:25:44',NULL,'2022-05-04 08:25:44',NULL,'map.jpg','','\"[]\"',1,'Anomaly\\FilesModule\\File\\FileModel',21,'en','{\"id\":1,\"name\":\"map.jpg\",\"disk\":\"1\",\"folder\":\"1\",\"extension\":\"jpg\",\"size\":\"605744\",\"mime_type\":\"image\\/jpeg\",\"entry\":\"\",\"keywords\":\"[]\",\"height\":\"1700\",\"width\":\"2880\",\"alt_text\":\"\",\"title\":\"\",\"caption\":\"\",\"description\":\"\",\"str_id\":\"4knjGEcNWLPoFktAsuiDZyoZ\"}'),(8,NULL,'2022-05-04 08:25:44',NULL,'2022-05-04 08:25:44',NULL,'map.jpg','','\"[]\"',1,'Anomaly\\FilesModule\\File\\FileModel',21,'en','{\"id\":1,\"name\":\"map.jpg\",\"disk\":\"1\",\"folder\":\"1\",\"extension\":\"jpg\",\"size\":\"605744\",\"mime_type\":\"image\\/jpeg\",\"entry\":\"\",\"keywords\":\"[]\",\"height\":\"1700\",\"width\":\"2880\",\"alt_text\":\"\",\"title\":\"\",\"caption\":\"\",\"description\":\"\",\"str_id\":\"4knjGEcNWLPoFktAsuiDZyoZ\"}'),(14,NULL,'2022-09-21 09:56:49',NULL,'2022-09-21 09:56:49',NULL,'Manufacturing A',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'ar','{\"id\":1,\"title\":\"Manufacturing A\"}'),(15,NULL,'2022-09-21 09:56:49',NULL,'2022-09-21 09:56:49',NULL,'Manufacturing',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'en','{\"id\":2,\"title\":\"Manufacturing\"}'),(16,NULL,'2022-09-21 09:56:49',NULL,'2022-09-21 09:56:49',NULL,'Manufacturing DE',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'de','{\"id\":3,\"title\":\"Manufacturing DE\"}'),(17,NULL,'2022-09-21 09:56:49',NULL,'2022-09-21 09:56:49',NULL,'Manufacturing ES',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'es','{\"id\":4,\"title\":\"Manufacturing ES\"}'),(18,NULL,'2022-09-21 09:56:56',NULL,'2022-09-21 09:56:56',NULL,'Service provider',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'ar','{\"id\":5,\"title\":\"Service provider\"}'),(19,NULL,'2022-09-21 09:56:56',NULL,'2022-09-21 09:56:56',NULL,'Service provider',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'en','{\"id\":6,\"title\":\"Service provider\"}'),(20,NULL,'2022-09-21 09:56:56',NULL,'2022-09-21 09:56:56',NULL,'Service provider',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'de','{\"id\":7,\"title\":\"Service provider\"}'),(21,NULL,'2022-09-21 09:56:56',NULL,'2022-09-21 09:56:56',NULL,'Service provider',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'es','{\"id\":8,\"title\":\"Service provider\"}'),(22,NULL,'2022-09-21 09:57:02',NULL,'2022-09-21 09:57:02',NULL,'Distributor',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'ar','{\"id\":9,\"title\":\"Distributor\"}'),(23,NULL,'2022-09-21 09:57:02',NULL,'2022-09-21 09:57:02',NULL,'Distributor',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'en','{\"id\":10,\"title\":\"Distributor\"}'),(24,NULL,'2022-09-21 09:57:02',NULL,'2022-09-21 09:57:02',NULL,'Distributor',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'de','{\"id\":11,\"title\":\"Distributor\"}'),(25,NULL,'2022-09-21 09:57:02',NULL,'2022-09-21 09:57:02',NULL,'Distributor',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel',36,'es','{\"id\":12,\"title\":\"Distributor\"}'),(26,NULL,'2022-09-21 10:02:02',NULL,'2022-09-21 10:02:02',NULL,'Chemicals',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":1,\"title\":\"Chemicals\"}'),(27,NULL,'2022-09-21 10:02:02',NULL,'2022-09-21 10:02:02',NULL,'Chemicals',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":2,\"title\":\"Chemicals\"}'),(28,NULL,'2022-09-21 10:02:02',NULL,'2022-09-21 10:02:02',NULL,'Chemicals',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":3,\"title\":\"Chemicals\"}'),(29,NULL,'2022-09-21 10:02:02',NULL,'2022-09-21 10:02:02',NULL,'Chemicals',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":4,\"title\":\"Chemicals\"}'),(30,NULL,'2022-09-21 10:02:08',NULL,'2022-09-21 10:02:08',NULL,'Construction Material',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":5,\"title\":\"Construction Material\"}'),(31,NULL,'2022-09-21 10:02:08',NULL,'2022-09-21 10:02:08',NULL,'Construction Material',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":6,\"title\":\"Construction Material\"}'),(32,NULL,'2022-09-21 10:02:08',NULL,'2022-09-21 10:02:08',NULL,'Construction Material',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":7,\"title\":\"Construction Material\"}'),(33,NULL,'2022-09-21 10:02:08',NULL,'2022-09-21 10:02:08',NULL,'Construction Material',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":8,\"title\":\"Construction Material\"}'),(34,NULL,'2022-09-21 10:02:14',NULL,'2022-09-21 10:02:14',NULL,'Consumer Goods',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":9,\"title\":\"Consumer Goods\"}'),(35,NULL,'2022-09-21 10:02:14',NULL,'2022-09-21 10:02:14',NULL,'Consumer Goods',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":10,\"title\":\"Consumer Goods\"}'),(36,NULL,'2022-09-21 10:02:14',NULL,'2022-09-21 10:02:14',NULL,'Consumer Goods',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":11,\"title\":\"Consumer Goods\"}'),(37,NULL,'2022-09-21 10:02:14',NULL,'2022-09-21 10:02:14',NULL,'Consumer Goods',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":12,\"title\":\"Consumer Goods\"}'),(38,NULL,'2022-09-21 10:02:19',NULL,'2022-09-21 10:02:19',NULL,'Electronics',NULL,'null',4,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":13,\"title\":\"Electronics\"}'),(39,NULL,'2022-09-21 10:02:19',NULL,'2022-09-21 10:02:19',NULL,'Electronics',NULL,'null',4,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":14,\"title\":\"Electronics\"}'),(40,NULL,'2022-09-21 10:02:19',NULL,'2022-09-21 10:02:19',NULL,'Electronics',NULL,'null',4,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":15,\"title\":\"Electronics\"}'),(41,NULL,'2022-09-21 10:02:19',NULL,'2022-09-21 10:02:19',NULL,'Electronics',NULL,'null',4,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":16,\"title\":\"Electronics\"}'),(42,NULL,'2022-09-21 10:02:23',NULL,'2022-09-21 10:02:23',NULL,'Food & Beverage',NULL,'null',5,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":17,\"title\":\"Food & Beverage\"}'),(43,NULL,'2022-09-21 10:02:23',NULL,'2022-09-21 10:02:23',NULL,'Food & Beverage',NULL,'null',5,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":18,\"title\":\"Food & Beverage\"}'),(44,NULL,'2022-09-21 10:02:23',NULL,'2022-09-21 10:02:23',NULL,'Food & Beverage',NULL,'null',5,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":19,\"title\":\"Food & Beverage\"}'),(45,NULL,'2022-09-21 10:02:24',NULL,'2022-09-21 10:02:24',NULL,'Food & Beverage',NULL,'null',5,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":20,\"title\":\"Food & Beverage\"}'),(46,NULL,'2022-09-21 10:02:29',NULL,'2022-09-21 10:02:29',NULL,'Pharmaceuticals',NULL,'null',6,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":21,\"title\":\"Pharmaceuticals\"}'),(47,NULL,'2022-09-21 10:02:29',NULL,'2022-09-21 10:02:29',NULL,'Pharmaceuticals',NULL,'null',6,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":22,\"title\":\"Pharmaceuticals\"}'),(48,NULL,'2022-09-21 10:02:29',NULL,'2022-09-21 10:02:29',NULL,'Pharmaceuticals',NULL,'null',6,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":23,\"title\":\"Pharmaceuticals\"}'),(49,NULL,'2022-09-21 10:02:29',NULL,'2022-09-21 10:02:29',NULL,'Pharmaceuticals',NULL,'null',6,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":24,\"title\":\"Pharmaceuticals\"}'),(50,NULL,'2022-09-21 10:02:37',NULL,'2022-09-21 10:02:37',NULL,'Printing & Packaging',NULL,'null',7,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":25,\"title\":\"Printing & Packaging\"}'),(51,NULL,'2022-09-21 10:02:37',NULL,'2022-09-21 10:02:37',NULL,'Printing & Packaging',NULL,'null',7,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":26,\"title\":\"Printing & Packaging\"}'),(52,NULL,'2022-09-21 10:02:37',NULL,'2022-09-21 10:02:37',NULL,'Printing & Packaging',NULL,'null',7,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":27,\"title\":\"Printing & Packaging\"}'),(53,NULL,'2022-09-21 10:02:37',NULL,'2022-09-21 10:02:37',NULL,'Printing & Packaging',NULL,'null',7,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":28,\"title\":\"Printing & Packaging\"}'),(54,NULL,'2022-09-21 10:02:42',NULL,'2022-09-21 10:02:42',NULL,'Tires',NULL,'null',8,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":29,\"title\":\"Tires\"}'),(55,NULL,'2022-09-21 10:02:42',NULL,'2022-09-21 10:02:42',NULL,'Tires',NULL,'null',8,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":30,\"title\":\"Tires\"}'),(56,NULL,'2022-09-21 10:02:42',NULL,'2022-09-21 10:02:42',NULL,'Tires',NULL,'null',8,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":31,\"title\":\"Tires\"}'),(57,NULL,'2022-09-21 10:02:42',NULL,'2022-09-21 10:02:42',NULL,'Tires',NULL,'null',8,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":32,\"title\":\"Tires\"}'),(58,NULL,'2022-09-21 10:02:48',NULL,'2022-09-21 10:02:48',NULL,'Material Handling & Airports',NULL,'null',9,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":33,\"title\":\"Material Handling & Airports\"}'),(59,NULL,'2022-09-21 10:02:48',NULL,'2022-09-21 10:02:48',NULL,'Material Handling & Airports',NULL,'null',9,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":34,\"title\":\"Material Handling & Airports\"}'),(60,NULL,'2022-09-21 10:02:48',NULL,'2022-09-21 10:02:48',NULL,'Material Handling & Airports',NULL,'null',9,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":35,\"title\":\"Material Handling & Airports\"}'),(61,NULL,'2022-09-21 10:02:48',NULL,'2022-09-21 10:02:48',NULL,'Material Handling & Airports',NULL,'null',9,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":36,\"title\":\"Material Handling & Airports\"}'),(62,NULL,'2022-09-21 10:02:54',NULL,'2022-09-21 10:02:54',NULL,'Third-Party Logistics',NULL,'null',10,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":37,\"title\":\"Third-Party Logistics\"}'),(63,NULL,'2022-09-21 10:02:54',NULL,'2022-09-21 10:02:54',NULL,'Third-Party Logistics',NULL,'null',10,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":38,\"title\":\"Third-Party Logistics\"}'),(64,NULL,'2022-09-21 10:02:54',NULL,'2022-09-21 10:02:54',NULL,'Third-Party Logistics',NULL,'null',10,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":39,\"title\":\"Third-Party Logistics\"}'),(65,NULL,'2022-09-21 10:02:54',NULL,'2022-09-21 10:02:54',NULL,'Third-Party Logistics',NULL,'null',10,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":40,\"title\":\"Third-Party Logistics\"}'),(66,NULL,'2022-09-21 10:02:58',NULL,'2022-09-21 10:02:58',NULL,'Utilities',NULL,'null',11,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":41,\"title\":\"Utilities\"}'),(67,NULL,'2022-09-21 10:02:58',NULL,'2022-09-21 10:02:58',NULL,'Utilities',NULL,'null',11,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":42,\"title\":\"Utilities\"}'),(68,NULL,'2022-09-21 10:02:58',NULL,'2022-09-21 10:02:58',NULL,'Utilities',NULL,'null',11,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":43,\"title\":\"Utilities\"}'),(69,NULL,'2022-09-21 10:02:58',NULL,'2022-09-21 10:02:58',NULL,'Utilities',NULL,'null',11,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":44,\"title\":\"Utilities\"}'),(70,NULL,'2022-09-21 10:03:03',NULL,'2022-09-21 10:03:03',NULL,'E-Commerce',NULL,'null',12,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":45,\"title\":\"E-Commerce\"}'),(71,NULL,'2022-09-21 10:03:03',NULL,'2022-09-21 10:03:03',NULL,'E-Commerce',NULL,'null',12,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":46,\"title\":\"E-Commerce\"}'),(72,NULL,'2022-09-21 10:03:03',NULL,'2022-09-21 10:03:03',NULL,'E-Commerce',NULL,'null',12,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":47,\"title\":\"E-Commerce\"}'),(73,NULL,'2022-09-21 10:03:03',NULL,'2022-09-21 10:03:03',NULL,'E-Commerce',NULL,'null',12,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":48,\"title\":\"E-Commerce\"}'),(74,NULL,'2022-09-21 10:03:08',NULL,'2022-09-21 10:03:08',NULL,'Oil & Gas',NULL,'null',13,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":49,\"title\":\"Oil & Gas\"}'),(75,NULL,'2022-09-21 10:03:08',NULL,'2022-09-21 10:03:08',NULL,'Oil & Gas',NULL,'null',13,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":50,\"title\":\"Oil & Gas\"}'),(76,NULL,'2022-09-21 10:03:08',NULL,'2022-09-21 10:03:08',NULL,'Oil & Gas',NULL,'null',13,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":51,\"title\":\"Oil & Gas\"}'),(77,NULL,'2022-09-21 10:03:08',NULL,'2022-09-21 10:03:08',NULL,'Oil & Gas',NULL,'null',13,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":52,\"title\":\"Oil & Gas\"}'),(78,NULL,'2022-09-21 10:03:13',NULL,'2022-09-21 10:03:13',NULL,'Retail',NULL,'null',14,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":53,\"title\":\"Retail\"}'),(79,NULL,'2022-09-21 10:03:13',NULL,'2022-09-21 10:03:13',NULL,'Retail',NULL,'null',14,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":54,\"title\":\"Retail\"}'),(80,NULL,'2022-09-21 10:03:13',NULL,'2022-09-21 10:03:13',NULL,'Retail',NULL,'null',14,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":55,\"title\":\"Retail\"}'),(81,NULL,'2022-09-21 10:03:13',NULL,'2022-09-21 10:03:13',NULL,'Retail',NULL,'null',14,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":56,\"title\":\"Retail\"}'),(82,NULL,'2022-09-21 10:03:20',NULL,'2022-09-21 10:03:20',NULL,'Spare Parts',NULL,'null',15,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'ar','{\"id\":57,\"title\":\"Spare Parts\"}'),(83,NULL,'2022-09-21 10:03:20',NULL,'2022-09-21 10:03:20',NULL,'Spare Parts',NULL,'null',15,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'en','{\"id\":58,\"title\":\"Spare Parts\"}'),(84,NULL,'2022-09-21 10:03:20',NULL,'2022-09-21 10:03:20',NULL,'Spare Parts',NULL,'null',15,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'de','{\"id\":59,\"title\":\"Spare Parts\"}'),(85,NULL,'2022-09-21 10:03:20',NULL,'2022-09-21 10:03:20',NULL,'Spare Parts',NULL,'null',15,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel',38,'es','{\"id\":60,\"title\":\"Spare Parts\"}'),(86,NULL,'2022-09-21 10:07:58',NULL,'2022-09-21 10:07:58',NULL,'',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":1,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"1\"}'),(87,NULL,'2022-09-21 10:07:58',NULL,'2022-09-21 10:07:58',NULL,'',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":2,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"1\"}'),(88,NULL,'2022-09-21 10:07:58',NULL,'2022-09-21 10:07:58',NULL,'',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":3,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"1\"}'),(89,NULL,'2022-09-21 10:07:58',NULL,'2022-09-21 10:07:58',NULL,'',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":4,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"1\"}'),(90,NULL,'2022-09-21 10:14:04',NULL,'2022-09-21 10:14:04',NULL,'',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":5,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"2\"}'),(91,NULL,'2022-09-21 10:14:04',NULL,'2022-09-21 10:14:04',NULL,'',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":6,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"2\"}'),(92,NULL,'2022-09-21 10:14:04',NULL,'2022-09-21 10:14:04',NULL,'',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":7,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"2\"}'),(93,NULL,'2022-09-21 10:14:04',NULL,'2022-09-21 10:14:04',NULL,'',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":8,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"2\"}'),(94,NULL,'2022-09-21 10:14:18',NULL,'2022-09-21 10:14:18',NULL,'',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":9,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"3\"}'),(95,NULL,'2022-09-21 10:14:18',NULL,'2022-09-21 10:14:18',NULL,'',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":10,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"3\"}'),(96,NULL,'2022-09-21 10:14:18',NULL,'2022-09-21 10:14:18',NULL,'',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":11,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"3\"}'),(97,NULL,'2022-09-21 10:14:18',NULL,'2022-09-21 10:14:18',NULL,'',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":12,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"3\"}'),(98,NULL,'2022-09-21 10:14:26',NULL,'2022-09-21 10:14:26',NULL,'',NULL,'null',4,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":13,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"4\"}'),(99,NULL,'2022-09-21 10:14:26',NULL,'2022-09-21 10:14:26',NULL,'',NULL,'null',4,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":14,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"4\"}'),(100,NULL,'2022-09-21 10:14:26',NULL,'2022-09-21 10:14:26',NULL,'',NULL,'null',4,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":15,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"4\"}'),(101,NULL,'2022-09-21 10:14:26',NULL,'2022-09-21 10:14:26',NULL,'',NULL,'null',4,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":16,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"4\"}'),(102,NULL,'2022-09-21 10:14:35',NULL,'2022-09-21 10:14:35',NULL,'',NULL,'null',5,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":17,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"5\"}'),(103,NULL,'2022-09-21 10:14:35',NULL,'2022-09-21 10:14:35',NULL,'',NULL,'null',5,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":18,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"5\"}'),(104,NULL,'2022-09-21 10:14:35',NULL,'2022-09-21 10:14:35',NULL,'',NULL,'null',5,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":19,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"5\"}'),(105,NULL,'2022-09-21 10:14:35',NULL,'2022-09-21 10:14:35',NULL,'',NULL,'null',5,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":20,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"5\"}'),(106,NULL,'2022-09-21 10:14:42',NULL,'2022-09-21 10:14:42',NULL,'',NULL,'null',6,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":21,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"6\"}'),(107,NULL,'2022-09-21 10:14:42',NULL,'2022-09-21 10:14:42',NULL,'',NULL,'null',6,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":22,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"6\"}'),(108,NULL,'2022-09-21 10:14:42',NULL,'2022-09-21 10:14:42',NULL,'',NULL,'null',6,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":23,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"6\"}'),(109,NULL,'2022-09-21 10:14:42',NULL,'2022-09-21 10:14:42',NULL,'',NULL,'null',6,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":24,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"6\"}'),(110,NULL,'2022-09-21 10:14:51',NULL,'2022-09-21 10:14:51',NULL,'',NULL,'null',7,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":25,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"7\"}'),(111,NULL,'2022-09-21 10:14:51',NULL,'2022-09-21 10:14:51',NULL,'',NULL,'null',7,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":26,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"7\"}'),(112,NULL,'2022-09-21 10:14:51',NULL,'2022-09-21 10:14:51',NULL,'',NULL,'null',7,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":27,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"7\"}'),(113,NULL,'2022-09-21 10:14:51',NULL,'2022-09-21 10:14:51',NULL,'',NULL,'null',7,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":28,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"7\"}'),(118,NULL,'2022-09-21 10:15:07',NULL,'2022-09-21 10:15:07',NULL,'',NULL,'null',9,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":33,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"8\"}'),(119,NULL,'2022-09-21 10:15:07',NULL,'2022-09-21 10:15:07',NULL,'',NULL,'null',9,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":34,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"8\"}'),(120,NULL,'2022-09-21 10:15:07',NULL,'2022-09-21 10:15:07',NULL,'',NULL,'null',9,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":35,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"8\"}'),(121,NULL,'2022-09-21 10:15:07',NULL,'2022-09-21 10:15:07',NULL,'',NULL,'null',9,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":36,\"title\":\"\",\"market_approach\":\"1\",\"industry\":\"8\"}'),(122,NULL,'2022-09-21 10:16:47',NULL,'2022-09-21 10:16:47',NULL,'',NULL,'null',10,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":37,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"9\"}'),(123,NULL,'2022-09-21 10:16:47',NULL,'2022-09-21 10:16:47',NULL,'',NULL,'null',10,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":38,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"9\"}'),(124,NULL,'2022-09-21 10:16:47',NULL,'2022-09-21 10:16:47',NULL,'',NULL,'null',10,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":39,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"9\"}'),(125,NULL,'2022-09-21 10:16:47',NULL,'2022-09-21 10:16:47',NULL,'',NULL,'null',10,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":40,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"9\"}'),(126,NULL,'2022-09-21 10:17:00',NULL,'2022-09-21 10:17:00',NULL,'',NULL,'null',11,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":41,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"10\"}'),(127,NULL,'2022-09-21 10:17:00',NULL,'2022-09-21 10:17:00',NULL,'',NULL,'null',11,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":42,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"10\"}'),(128,NULL,'2022-09-21 10:17:00',NULL,'2022-09-21 10:17:00',NULL,'',NULL,'null',11,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":43,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"10\"}'),(129,NULL,'2022-09-21 10:17:00',NULL,'2022-09-21 10:17:00',NULL,'',NULL,'null',11,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":44,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"10\"}'),(130,NULL,'2022-09-21 10:17:18',NULL,'2022-09-21 10:17:18',NULL,'',NULL,'null',12,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":45,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"11\"}'),(131,NULL,'2022-09-21 10:17:18',NULL,'2022-09-21 10:17:18',NULL,'',NULL,'null',12,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":46,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"11\"}'),(132,NULL,'2022-09-21 10:17:18',NULL,'2022-09-21 10:17:18',NULL,'',NULL,'null',12,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":47,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"11\"}'),(133,NULL,'2022-09-21 10:17:18',NULL,'2022-09-21 10:17:18',NULL,'',NULL,'null',12,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":48,\"title\":\"\",\"market_approach\":\"2\",\"industry\":\"11\"}'),(134,NULL,'2022-09-21 10:18:26',NULL,'2022-09-21 10:18:26',NULL,'',NULL,'null',13,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":49,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"2\"}'),(135,NULL,'2022-09-21 10:18:26',NULL,'2022-09-21 10:18:26',NULL,'',NULL,'null',13,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":50,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"2\"}'),(136,NULL,'2022-09-21 10:18:26',NULL,'2022-09-21 10:18:26',NULL,'',NULL,'null',13,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":51,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"2\"}'),(137,NULL,'2022-09-21 10:18:27',NULL,'2022-09-21 10:18:27',NULL,'',NULL,'null',13,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":52,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"2\"}'),(138,NULL,'2022-09-21 10:18:37',NULL,'2022-09-21 10:18:37',NULL,'',NULL,'null',14,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":53,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"3\"}'),(139,NULL,'2022-09-21 10:18:37',NULL,'2022-09-21 10:18:37',NULL,'',NULL,'null',14,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":54,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"3\"}'),(140,NULL,'2022-09-21 10:18:37',NULL,'2022-09-21 10:18:37',NULL,'',NULL,'null',14,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":55,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"3\"}'),(141,NULL,'2022-09-21 10:18:37',NULL,'2022-09-21 10:18:37',NULL,'',NULL,'null',14,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":56,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"3\"}'),(142,NULL,'2022-09-21 10:22:51',NULL,'2022-09-21 10:22:51',NULL,'',NULL,'null',15,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":57,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"12\"}'),(143,NULL,'2022-09-21 10:22:51',NULL,'2022-09-21 10:22:51',NULL,'',NULL,'null',15,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":58,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"12\"}'),(144,NULL,'2022-09-21 10:22:51',NULL,'2022-09-21 10:22:51',NULL,'',NULL,'null',15,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":59,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"12\"}'),(145,NULL,'2022-09-21 10:22:51',NULL,'2022-09-21 10:22:51',NULL,'',NULL,'null',15,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":60,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"12\"}'),(146,NULL,'2022-09-21 10:23:00',NULL,'2022-09-21 10:23:00',NULL,'',NULL,'null',16,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":61,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"13\"}'),(147,NULL,'2022-09-21 10:23:00',NULL,'2022-09-21 10:23:00',NULL,'',NULL,'null',16,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":62,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"13\"}'),(148,NULL,'2022-09-21 10:23:00',NULL,'2022-09-21 10:23:00',NULL,'',NULL,'null',16,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":63,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"13\"}'),(149,NULL,'2022-09-21 10:23:00',NULL,'2022-09-21 10:23:00',NULL,'',NULL,'null',16,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":64,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"13\"}'),(150,NULL,'2022-09-21 10:23:15',NULL,'2022-09-21 10:23:15',NULL,'',NULL,'null',17,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":65,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"6\"}'),(151,NULL,'2022-09-21 10:23:15',NULL,'2022-09-21 10:23:15',NULL,'',NULL,'null',17,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":66,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"6\"}'),(152,NULL,'2022-09-21 10:23:15',NULL,'2022-09-21 10:23:15',NULL,'',NULL,'null',17,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":67,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"6\"}'),(153,NULL,'2022-09-21 10:23:15',NULL,'2022-09-21 10:23:15',NULL,'',NULL,'null',17,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":68,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"6\"}'),(154,NULL,'2022-09-21 10:23:24',NULL,'2022-09-21 10:23:24',NULL,'',NULL,'null',18,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":69,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"14\"}'),(155,NULL,'2022-09-21 10:23:24',NULL,'2022-09-21 10:23:24',NULL,'',NULL,'null',18,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":70,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"14\"}'),(156,NULL,'2022-09-21 10:23:24',NULL,'2022-09-21 10:23:24',NULL,'',NULL,'null',18,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":71,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"14\"}'),(157,NULL,'2022-09-21 10:23:24',NULL,'2022-09-21 10:23:24',NULL,'',NULL,'null',18,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":72,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"14\"}'),(158,NULL,'2022-09-21 10:23:41',NULL,'2022-09-21 10:23:41',NULL,'',NULL,'null',19,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":73,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"15\"}'),(159,NULL,'2022-09-21 10:23:41',NULL,'2022-09-21 10:23:41',NULL,'',NULL,'null',19,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":74,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"15\"}'),(160,NULL,'2022-09-21 10:23:41',NULL,'2022-09-21 10:23:41',NULL,'',NULL,'null',19,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":75,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"15\"}'),(161,NULL,'2022-09-21 10:23:41',NULL,'2022-09-21 10:23:41',NULL,'',NULL,'null',19,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":76,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"15\"}'),(162,NULL,'2022-09-21 10:26:00',NULL,'2022-09-21 10:26:00',NULL,'',NULL,'null',20,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'ar','{\"id\":77,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"5\"}'),(163,NULL,'2022-09-21 10:26:00',NULL,'2022-09-21 10:26:00',NULL,'',NULL,'null',20,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'en','{\"id\":78,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"5\"}'),(164,NULL,'2022-09-21 10:26:00',NULL,'2022-09-21 10:26:00',NULL,'',NULL,'null',20,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'de','{\"id\":79,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"5\"}'),(165,NULL,'2022-09-21 10:26:00',NULL,'2022-09-21 10:26:00',NULL,'',NULL,'null',20,'Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesCombinedEntryModel',39,'es','{\"id\":80,\"title\":\"\",\"market_approach\":\"3\",\"industry\":\"5\"}'),(167,NULL,'2022-09-21 13:29:05',NULL,'2022-09-21 13:29:05',NULL,'Acme',NULL,'null',1,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":1,\"title\":\"Acme\"}'),(168,NULL,'2022-09-21 13:29:09',NULL,'2022-09-21 13:29:09',NULL,'Alfanumatic',NULL,'null',2,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":2,\"title\":\"Alfanumatic\"}'),(169,NULL,'2022-09-21 13:29:14',NULL,'2022-09-21 13:29:14',NULL,'Axelent',NULL,'null',3,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":3,\"title\":\"Axelent\"}'),(170,NULL,'2022-09-21 13:29:20',NULL,'2022-09-21 13:29:20',NULL,'Bihl & Wiedemann',NULL,'null',4,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":4,\"title\":\"Bihl & Wiedemann\"}'),(171,NULL,'2022-09-21 13:29:24',NULL,'2022-09-21 13:29:24',NULL,'Habasit',NULL,'null',5,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":5,\"title\":\"Habasit\"}'),(172,NULL,'2022-09-21 13:29:28',NULL,'2022-09-21 13:29:28',NULL,'Hanwha',NULL,'null',6,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":6,\"title\":\"Hanwha\"}'),(173,NULL,'2022-09-21 13:29:33',NULL,'2022-09-21 13:29:33',NULL,'Kardex',NULL,'null',7,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":7,\"title\":\"Kardex\"}'),(174,NULL,'2022-09-21 13:29:39',NULL,'2022-09-21 13:29:39',NULL,'Leuze',NULL,'null',8,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":8,\"title\":\"Leuze\"}'),(175,NULL,'2022-09-21 13:29:44',NULL,'2022-09-21 13:29:44',NULL,'Mech-Mind',NULL,'null',9,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":9,\"title\":\"Mech-Mind\"}'),(176,NULL,'2022-09-21 13:29:51',NULL,'2022-09-21 13:29:51',NULL,'Metal Work',NULL,'null',10,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":10,\"title\":\"Metal Work\"}'),(177,NULL,'2022-09-21 13:29:55',NULL,'2022-09-21 13:29:55',NULL,'OnRobot',NULL,'null',11,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":11,\"title\":\"OnRobot\"}'),(178,NULL,'2022-09-21 13:30:00',NULL,'2022-09-21 13:30:00',NULL,'Pizzato',NULL,'null',12,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":12,\"title\":\"Pizzato\"}'),(179,NULL,'2022-09-21 13:30:04',NULL,'2022-09-21 13:30:04',NULL,'Schmalz',NULL,'null',13,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":13,\"title\":\"Schmalz\"}'),(180,NULL,'2022-09-21 13:30:08',NULL,'2022-09-21 13:30:08',NULL,'Talustech',NULL,'null',14,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":14,\"title\":\"Talustech\"}'),(181,NULL,'2022-09-21 13:30:12',NULL,'2022-09-21 13:30:12',NULL,'Teknostore',NULL,'null',15,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":15,\"title\":\"Teknostore\"}'),(182,NULL,'2022-09-21 13:30:17',NULL,'2022-09-21 13:30:17',NULL,'Tertaflon',NULL,'null',16,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":16,\"title\":\"Tertaflon\"}'),(183,NULL,'2022-09-21 13:30:21',NULL,'2022-09-21 13:30:21',NULL,'Twentebelt',NULL,'null',17,'Anomaly\\Streams\\Platform\\Model\\Products\\ProductsBrandsEntryModel',41,'en','{\"id\":17,\"title\":\"Twentebelt\"}'),(184,NULL,'2022-09-21 15:46:19',NULL,'2022-09-21 15:46:19',NULL,'Administrator',NULL,'null',1,'Anomaly\\UsersModule\\User\\UserModel',12,'en','{\"id\":1,\"email\":\"mindaugas.simkus@gmail.com\",\"username\":\"mindaugas\",\"roles\":\"[{\\\"id\\\":1,\\\"sort_order\\\":1,\\\"created_at\\\":\\\"2022-05-04T07:57:04.000000Z\\\",\\\"created_by_id\\\":null,\\\"updated_at\\\":\\\"2022-05-04T07:57:04.000000Z\\\",\\\"updated_by_id\\\":null,\\\"deleted_at\\\":null,\\\"slug\\\":\\\"admin\\\",\\\"permissions\\\":null,\\\"name\\\":\\\"Admin\\\",\\\"description\\\":\\\"The super admin role.\\\"}]\",\"display_name\":\"Administrator\",\"first_name\":\"\",\"last_name\":\"\",\"activated\":\"1\",\"enabled\":\"1\",\"permissions\":\"[]\",\"last_login_at\":\"2022-09-21 15:46:19\",\"remember_token\":\"\",\"activation_code\":\"\",\"reset_code\":\"\",\"last_activity_at\":\"2022-09-21 13:32:03\",\"ip_address\":\"213.252.217.93\",\"str_id\":\"0zpg9i3C4xxSPo9cu144fM14\"}');
/*!40000 ALTER TABLE `default_search_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_sessions`
--

DROP TABLE IF EXISTS `default_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_sessions` (
  `id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_sessions`
--

LOCK TABLES `default_sessions` WRITE;
/*!40000 ALTER TABLE `default_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_settings_settings`
--

DROP TABLE IF EXISTS `default_settings_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_settings_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `5f93f983524def3dca464469d2cf9f3e` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_settings_settings`
--

LOCK TABLES `default_settings_settings` WRITE;
/*!40000 ALTER TABLE `default_settings_settings` DISABLE KEYS */;
INSERT INTO `default_settings_settings` VALUES (1,1,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,'streams::timezone','UTC'),(2,2,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,'streams::domain','acme.bettr.lt'),(3,3,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,'streams::default_locale','en'),(4,4,'2022-05-04 07:57:04',1,'2022-05-04 13:06:11',1,'streams::enabled_locales','a:4:{i:0;s:2:\"ar\";i:1;s:2:\"en\";i:2;s:2:\"de\";i:3;s:2:\"es\";}'),(5,5,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::name','Streams Platform'),(6,6,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::description','Streams is an abstracted modular platform for developing web applications.'),(7,7,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::force_ssl','0'),(8,8,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::domain_prefix',NULL),(9,9,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::date_format','Y-m-d'),(10,10,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::time_format','H:i'),(11,11,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::unit_system','metric'),(12,12,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::currency','USD'),(13,13,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::standard_theme','np.theme.site'),(14,14,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::admin_theme','pyrocms.theme.accelerant'),(15,15,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::per_page','15'),(16,16,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::maintenance','0'),(17,17,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::basic_auth','0'),(18,18,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::ip_whitelist','a:0:{}'),(19,19,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::email','noreply@acme.bettr.lt'),(20,20,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::sender','Streams Platform'),(21,21,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::mail_driver','mail'),(22,22,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::mail_host',NULL),(23,23,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::mail_port',NULL),(24,24,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::mail_username',NULL),(25,25,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::mail_password',NULL),(26,26,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::http_cache','0'),(27,27,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::http_cache_ttl','3600'),(28,28,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::http_cache_allow_bots','0'),(29,29,'2022-05-04 08:24:09',1,'2022-05-04 13:06:11',1,'streams::http_cache_excluded',NULL),(30,30,'2022-05-04 08:24:10',1,'2022-05-04 13:06:11',1,'streams::http_cache_rules',NULL),(31,31,'2022-05-04 08:24:10',1,'2022-05-04 13:06:11',1,'streams::db_cache','0'),(32,32,'2022-05-04 08:24:10',1,'2022-05-04 13:06:11',1,'streams::db_cache_ttl','3600'),(33,33,'2022-05-04 08:24:10',1,'2022-05-04 13:06:11',1,'streams::locking_enabled','1'),(34,34,'2022-05-04 13:34:54',1,'2022-05-04 13:34:54',1,'pyrocms.theme.accelerant::sidebar_hover','1'),(35,35,'2022-05-04 13:34:54',1,'2022-05-04 13:34:54',1,'pyrocms.theme.accelerant::navigation',NULL);
/*!40000 ALTER TABLE `default_settings_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_streams_assignments`
--

DROP TABLE IF EXISTS `default_streams_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_streams_assignments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `config` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `searchable` tinyint(1) NOT NULL DEFAULT 0,
  `translatable` tinyint(1) NOT NULL DEFAULT 0,
  `versionable` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_assignments` (`stream_id`,`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_streams_assignments`
--

LOCK TABLES `default_streams_assignments` WRITE;
/*!40000 ALTER TABLE `default_streams_assignments` DISABLE KEYS */;
INSERT INTO `default_streams_assignments` VALUES (1,1,1,1,'a:0:{}',0,1,0,1,0),(2,2,1,3,'a:0:{}',1,1,0,0,0),(3,3,1,2,'a:0:{}',0,0,0,1,0),(4,4,1,4,'a:0:{}',0,0,0,0,0),(5,5,1,5,'a:0:{}',0,0,0,0,0),(6,6,2,6,'a:0:{}',0,1,0,0,0),(7,7,2,7,'a:0:{}',0,1,0,0,0),(8,8,2,8,'a:0:{}',0,0,0,0,0),(9,9,3,9,'a:0:{}',0,1,0,0,0),(10,10,3,10,'a:0:{}',0,1,0,1,0),(11,11,3,11,'a:0:{}',0,1,0,1,0),(12,12,3,13,'a:0:{}',0,1,0,1,0),(13,13,3,23,'a:0:{}',0,1,0,0,0),(14,14,3,27,'a:0:{}',0,0,0,0,0),(15,15,3,21,'a:0:{}',0,0,0,0,0),(16,16,3,25,'a:0:{}',0,0,0,0,0),(17,17,3,14,'a:0:{}',0,0,0,0,0),(18,18,3,26,'a:0:{}',0,0,0,0,0),(19,19,3,15,'a:0:{}',0,0,0,0,0),(20,20,3,16,'a:0:{}',0,0,0,1,0),(21,21,3,17,'a:0:{}',0,0,0,1,0),(23,23,3,22,'a:0:{}',0,0,0,0,0),(24,24,3,20,'a:0:{}',0,0,0,0,0),(25,25,4,28,'a:1:{s:3:\"max\";i:26;}',1,1,0,1,0),(26,26,4,11,'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:26;}',1,1,0,0,0),(27,27,4,29,'a:0:{}',0,0,0,1,0),(28,28,4,22,'a:0:{}',0,1,0,0,0),(29,29,4,19,'a:0:{}',0,1,0,0,0),(30,30,4,24,'a:0:{}',0,1,0,0,0),(31,30,3,30,'a:0:{}',0,0,0,0,0),(32,31,5,31,'a:0:{}',0,1,0,0,0),(33,32,5,32,'a:0:{}',1,1,0,0,0),(34,33,5,35,'a:0:{}',1,1,0,0,0),(35,34,5,36,'a:0:{}',0,1,0,0,0),(36,35,5,42,'a:0:{}',0,1,0,0,0),(37,36,5,38,'a:0:{}',0,0,0,0,0),(38,37,5,37,'a:0:{}',0,0,0,0,0),(39,38,5,39,'a:0:{}',0,0,0,0,0),(40,39,5,40,'a:0:{}',0,0,0,0,0),(41,40,5,41,'a:0:{}',0,0,0,0,0),(42,41,5,43,'a:0:{}',0,0,0,0,0),(43,42,5,44,'a:0:{}',0,0,0,0,0),(44,43,5,45,'a:0:{}',0,0,0,0,0),(45,44,5,46,'a:0:{}',0,0,0,0,0),(46,45,5,47,'a:0:{}',0,0,0,0,0),(47,46,6,32,'a:0:{}',0,1,0,1,0),(48,47,6,33,'a:0:{}',1,1,0,0,0),(49,48,6,37,'a:0:{}',0,0,0,1,0),(50,49,6,48,'a:0:{}',0,1,0,0,0),(51,50,7,49,'a:0:{}',0,1,0,1,0),(52,51,7,50,'a:0:{}',1,1,0,0,0),(53,52,7,51,'a:0:{}',0,0,0,1,0),(54,53,7,52,'a:0:{}',0,1,0,0,0),(55,54,7,58,'a:0:{}',0,0,0,0,0),(56,55,8,53,'a:0:{}',0,1,0,1,0),(57,56,8,51,'a:0:{}',0,0,0,1,0),(58,57,8,54,'a:0:{}',0,1,0,0,0),(59,58,8,55,'a:0:{}',0,1,0,0,0),(60,59,8,57,'a:0:{}',0,1,0,0,0),(61,60,8,58,'a:0:{}',0,0,0,0,0),(62,61,8,56,'a:0:{}',0,0,0,0,0),(63,62,9,60,'a:0:{}',1,1,0,1,0),(64,63,9,62,'a:1:{s:7:\"slugify\";s:4:\"name\";}',1,1,0,0,0),(65,64,9,67,'a:0:{}',0,0,0,1,0),(66,65,10,59,'a:0:{}',1,1,0,0,0),(67,66,10,61,'a:0:{}',0,1,0,1,0),(68,67,10,66,'a:0:{}',0,0,0,1,0),(69,68,10,62,'a:0:{}',1,1,0,1,0),(70,69,10,64,'a:0:{}',0,1,0,0,0),(71,70,10,68,'a:0:{}',0,1,0,0,0),(72,71,10,70,'a:0:{}',0,1,0,0,0),(73,72,10,69,'a:0:{}',0,1,0,0,0),(74,73,10,75,'a:0:{}',0,0,0,1,0),(75,74,10,76,'a:0:{}',0,0,0,1,0),(76,75,10,72,'a:0:{}',0,0,0,0,0),(77,76,10,74,'a:0:{}',0,0,0,0,0),(78,77,10,73,'a:0:{}',0,0,0,0,0),(79,78,10,65,'a:0:{}',0,0,0,0,0),(80,79,11,60,'a:1:{s:3:\"max\";i:50;}',1,1,0,1,0),(81,80,11,62,'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}',1,1,0,0,0),(82,81,11,71,'a:0:{}',0,1,0,0,0),(83,82,11,79,'a:0:{}',0,1,0,0,0),(84,83,11,67,'a:0:{}',0,0,0,1,0),(85,84,9,75,'a:0:{}',0,0,0,1,0),(86,85,9,76,'a:0:{}',0,0,0,1,0),(87,86,11,75,'a:0:{}',0,0,0,1,0),(88,87,11,76,'a:0:{}',0,0,0,1,0),(89,88,12,80,'a:0:{}',1,1,0,0,0),(90,89,12,81,'a:0:{}',1,1,0,0,0),(91,90,12,82,'a:0:{}',0,1,0,0,0),(92,91,12,100,'a:0:{}',0,1,0,0,0),(93,92,12,88,'a:0:{}',0,1,0,0,0),(94,93,12,89,'a:0:{}',0,0,0,0,0),(95,94,12,90,'a:0:{}',0,0,0,0,0),(96,95,12,97,'a:0:{}',0,0,0,0,0),(97,96,12,98,'a:0:{}',0,0,0,0,0),(98,97,12,87,'a:0:{}',0,0,0,0,0),(99,98,12,85,'a:0:{}',0,0,0,0,0),(100,99,12,83,'a:0:{}',0,0,0,0,0),(101,100,12,95,'a:0:{}',0,0,0,0,0),(102,101,12,93,'a:0:{}',0,0,0,0,0),(103,102,12,86,'a:0:{}',0,0,0,0,0),(104,103,12,84,'a:0:{}',0,0,0,0,0),(105,104,13,91,'a:0:{}',0,1,0,1,0),(106,105,13,99,'a:0:{}',1,1,0,0,0),(107,106,13,92,'a:0:{}',0,0,0,1,0),(108,107,13,87,'a:0:{}',0,0,0,0,0),(109,108,12,101,'a:0:{}',1,1,0,0,0),(110,109,14,102,'a:0:{}',1,1,0,0,0),(111,110,14,103,'a:0:{}',0,0,0,0,0),(112,111,15,104,'a:0:{}',0,1,0,1,0),(113,112,15,106,'a:0:{}',1,1,0,0,0),(114,113,15,105,'a:0:{}',0,0,0,1,0),(115,114,15,111,'a:0:{}',0,0,0,0,0),(116,115,16,107,'a:0:{}',0,0,0,1,0),(117,116,16,109,'a:0:{}',0,1,0,0,0),(118,117,16,108,'a:0:{}',0,1,0,0,0),(119,118,16,112,'a:0:{}',0,1,0,0,0),(120,119,16,110,'a:0:{}',0,0,0,0,0),(121,120,16,113,'a:0:{}',0,0,0,0,0),(122,121,17,114,'a:0:{}',0,1,0,0,0),(123,122,17,104,'a:0:{}',1,1,0,1,0),(124,123,17,106,'a:2:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";}',1,1,0,0,0),(125,124,17,105,'a:0:{}',0,0,0,1,0),(126,125,17,115,'a:0:{}',0,1,0,0,0),(127,126,17,116,'a:0:{}',0,1,0,0,0),(128,127,16,117,'a:0:{}',0,0,0,0,0),(129,128,18,118,'a:0:{}',0,1,0,0,0),(130,129,18,119,'a:0:{}',0,1,0,0,0),(131,130,18,120,'a:0:{}',0,0,0,0,0),(132,131,19,121,'a:0:{}',1,1,0,1,0),(133,132,19,122,'a:0:{}',1,1,0,0,0),(134,133,19,123,'a:0:{}',0,1,0,0,0),(135,134,19,127,'a:0:{}',0,0,0,1,0),(136,135,20,125,'a:0:{}',0,1,0,0,0),(137,136,20,121,'a:1:{s:3:\"max\";i:50;}',0,1,0,1,0),(138,137,20,122,'a:1:{s:3:\"max\";i:50;}',1,1,0,0,0),(139,138,20,127,'a:0:{}',0,0,0,1,0),(140,139,20,128,'a:0:{}',0,0,0,0,0),(141,140,21,121,'a:0:{}',0,1,0,0,0),(142,141,21,125,'a:0:{}',0,1,0,0,0),(143,142,21,124,'a:0:{}',0,1,0,0,0),(144,143,21,130,'a:0:{}',0,1,0,0,0),(145,144,21,134,'a:0:{}',0,1,0,0,0),(146,145,21,133,'a:0:{}',0,1,0,0,0),(147,146,21,126,'a:0:{}',0,0,0,0,0),(148,147,21,129,'a:0:{}',0,0,0,0,0),(149,148,21,132,'a:0:{}',0,0,0,0,0),(150,149,21,131,'a:0:{}',0,0,0,0,0),(151,150,21,135,'a:0:{}',0,0,0,1,0),(152,151,21,136,'a:0:{}',0,0,0,1,0),(153,152,21,137,'a:0:{}',0,0,0,1,0),(154,153,21,127,'a:0:{}',0,0,0,1,0),(155,154,21,138,'a:0:{}',1,1,0,0,0),(156,155,20,138,'a:0:{}',1,1,0,0,0),(157,156,22,139,'a:0:{}',1,1,0,1,0),(158,157,22,143,'a:0:{}',1,1,0,0,0),(159,158,22,141,'a:0:{}',0,0,0,1,0),(160,159,23,144,'a:0:{}',0,1,0,0,0),(161,160,23,147,'a:0:{}',0,1,0,0,0),(162,161,23,142,'a:0:{}',0,1,0,0,0),(163,162,23,148,'a:0:{}',0,1,0,0,0),(164,163,23,140,'a:0:{}',0,0,0,0,0),(165,164,23,145,'a:0:{}',0,0,0,0,0),(166,165,23,146,'a:0:{}',0,0,0,0,0),(167,166,24,149,'a:0:{}',0,0,0,0,0),(168,167,24,151,'a:0:{}',0,0,0,0,0),(169,168,24,154,'a:0:{}',0,0,0,0,0),(170,169,24,152,'a:0:{}',0,1,0,0,0),(171,170,24,153,'a:0:{}',0,1,0,0,0),(172,171,24,150,'a:0:{}',0,1,0,0,0),(173,172,24,155,'a:0:{}',0,0,0,0,0),(174,173,25,156,'a:0:{}',1,1,0,0,0),(175,174,25,157,'a:0:{}',0,1,0,0,0),(176,175,25,158,'a:0:{}',0,1,0,0,0),(177,176,25,159,'a:0:{}',0,0,0,0,0),(178,177,26,156,'a:0:{}',1,1,0,0,0),(179,178,26,157,'a:0:{}',0,0,0,0,0),(180,179,26,158,'a:0:{}',0,1,0,0,0),(181,180,26,159,'a:0:{}',0,0,0,0,0),(182,181,27,160,'a:0:{}',0,0,0,1,0),(183,182,28,161,'a:0:{}',0,0,0,1,0),(184,183,28,162,'a:0:{}',0,1,0,0,0),(185,184,28,163,'a:0:{}',0,0,0,1,0),(186,185,29,164,'a:0:{}',0,1,0,1,0),(187,186,29,165,'a:0:{}',0,1,0,0,0),(188,187,29,166,'a:0:{}',0,0,0,1,0),(189,188,30,167,'a:0:{}',0,0,0,1,0),(190,189,31,12,'a:0:{}',0,0,0,1,0),(191,190,32,63,'a:0:{}',0,0,0,1,0),(192,191,36,170,'a:1:{i:0;s:6:\"a:0:{}\";}',0,1,1,1,0),(194,192,38,170,'a:1:{i:0;s:6:\"a:0:{}\";}',0,1,1,1,0),(195,193,39,170,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0,1,0),(196,194,39,172,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0,0,0),(197,195,39,171,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0,0,0),(198,196,40,173,'a:1:{i:0;s:6:\"a:0:{}\";}',0,1,1,1,0),(199,197,41,174,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0,0,0),(200,198,42,174,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0,1,0),(201,199,43,174,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0,1,0),(202,200,44,174,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,1,1,0);
/*!40000 ALTER TABLE `default_streams_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_streams_assignments_translations`
--

DROP TABLE IF EXISTS `default_streams_assignments_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_streams_assignments_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `streams_assignments_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_streams_assignments_translations`
--

LOCK TABLES `default_streams_assignments_translations` WRITE;
/*!40000 ALTER TABLE `default_streams_assignments_translations` DISABLE KEYS */;
INSERT INTO `default_streams_assignments_translations` VALUES (1,1,'en','anomaly.module.streams::field.name.label.groups','anomaly.module.streams::field.name.warning.groups','anomaly.module.streams::field.name.placeholder.groups','anomaly.module.streams::field.name.instructions.groups'),(2,2,'en','anomaly.module.streams::field.slug.label.groups','anomaly.module.streams::field.slug.warning.groups','anomaly.module.streams::field.slug.placeholder.groups','anomaly.module.streams::field.slug.instructions.groups'),(3,3,'en','anomaly.module.streams::field.description.label.groups','anomaly.module.streams::field.description.warning.groups','anomaly.module.streams::field.description.placeholder.groups','anomaly.module.streams::field.description.instructions.groups'),(4,4,'en','anomaly.module.streams::field.virtualize.label.groups','anomaly.module.streams::field.virtualize.warning.groups','anomaly.module.streams::field.virtualize.placeholder.groups','anomaly.module.streams::field.virtualize.instructions.groups'),(5,5,'en','anomaly.module.streams::field.icon.label.groups','anomaly.module.streams::field.icon.warning.groups','anomaly.module.streams::field.icon.placeholder.groups','anomaly.module.streams::field.icon.instructions.groups'),(6,6,'en','anomaly.module.preferences::field.user.label.preferences','anomaly.module.preferences::field.user.warning.preferences','anomaly.module.preferences::field.user.placeholder.preferences','anomaly.module.preferences::field.user.instructions.preferences'),(7,7,'en','anomaly.module.preferences::field.key.label.preferences','anomaly.module.preferences::field.key.warning.preferences','anomaly.module.preferences::field.key.placeholder.preferences','anomaly.module.preferences::field.key.instructions.preferences'),(8,8,'en','anomaly.module.preferences::field.value.label.preferences','anomaly.module.preferences::field.value.warning.preferences','anomaly.module.preferences::field.value.placeholder.preferences','anomaly.module.preferences::field.value.instructions.preferences'),(9,9,'en','anomaly.module.pages::field.str_id.label.pages','anomaly.module.pages::field.str_id.warning.pages','anomaly.module.pages::field.str_id.placeholder.pages','anomaly.module.pages::field.str_id.instructions.pages'),(10,10,'en','anomaly.module.pages::field.title.label.pages','anomaly.module.pages::field.title.warning.pages','anomaly.module.pages::field.title.placeholder.pages','anomaly.module.pages::field.title.instructions.pages'),(11,11,'en','anomaly.module.pages::field.slug.label.pages','anomaly.module.pages::field.slug.warning.pages','anomaly.module.pages::field.slug.placeholder.pages','anomaly.module.pages::field.slug.instructions.pages'),(12,12,'en','anomaly.module.pages::field.path.label.pages','anomaly.module.pages::field.path.warning.pages','anomaly.module.pages::field.path.placeholder.pages','anomaly.module.pages::field.path.instructions.pages'),(13,13,'en','anomaly.module.pages::field.type.label.pages','anomaly.module.pages::field.type.warning.pages','anomaly.module.pages::field.type.placeholder.pages','anomaly.module.pages::field.type.instructions.pages'),(14,14,'en','anomaly.module.pages::field.entry.label.pages','anomaly.module.pages::field.entry.warning.pages','anomaly.module.pages::field.entry.placeholder.pages','anomaly.module.pages::field.entry.instructions.pages'),(15,15,'en','anomaly.module.pages::field.parent.label.pages','anomaly.module.pages::field.parent.warning.pages','anomaly.module.pages::field.parent.placeholder.pages','anomaly.module.pages::field.parent.instructions.pages'),(16,16,'en','anomaly.module.pages::field.visible.label.pages','anomaly.module.pages::field.visible.warning.pages','anomaly.module.pages::field.visible.placeholder.pages','anomaly.module.pages::field.visible.instructions.pages'),(17,17,'en','anomaly.module.pages::field.enabled.label.pages','anomaly.module.pages::field.enabled.warning.pages','anomaly.module.pages::field.enabled.placeholder.pages','anomaly.module.pages::field.enabled.instructions.pages'),(18,18,'en','anomaly.module.pages::field.exact.label.pages','anomaly.module.pages::field.exact.warning.pages','anomaly.module.pages::field.exact.placeholder.pages','anomaly.module.pages::field.exact.instructions.pages'),(19,19,'en','anomaly.module.pages::field.home.label.pages','anomaly.module.pages::field.home.warning.pages','anomaly.module.pages::field.home.placeholder.pages','anomaly.module.pages::field.home.instructions.pages'),(20,20,'en','anomaly.module.pages::field.meta_title.label.pages','anomaly.module.pages::field.meta_title.warning.pages','anomaly.module.pages::field.meta_title.placeholder.pages','anomaly.module.pages::field.meta_title.instructions.pages'),(21,21,'en','anomaly.module.pages::field.meta_description.label.pages','anomaly.module.pages::field.meta_description.warning.pages','anomaly.module.pages::field.meta_description.placeholder.pages','anomaly.module.pages::field.meta_description.instructions.pages'),(23,23,'en','anomaly.module.pages::field.theme_layout.label.pages','anomaly.module.pages::field.theme_layout.warning.pages','anomaly.module.pages::field.theme_layout.placeholder.pages','anomaly.module.pages::field.theme_layout.instructions.pages'),(24,24,'en','anomaly.module.pages::field.allowed_roles.label.pages','anomaly.module.pages::field.allowed_roles.warning.pages','anomaly.module.pages::field.allowed_roles.placeholder.pages','anomaly.module.pages::field.allowed_roles.instructions.pages'),(25,25,'en','anomaly.module.pages::field.name.label.types','anomaly.module.pages::field.name.warning.types','anomaly.module.pages::field.name.placeholder.types','anomaly.module.pages::field.name.instructions.types'),(26,26,'en','anomaly.module.pages::field.slug.label.types','anomaly.module.pages::field.slug.warning.types','anomaly.module.pages::field.slug.placeholder.types','anomaly.module.pages::field.slug.instructions.types'),(27,27,'en','anomaly.module.pages::field.description.label.types','anomaly.module.pages::field.description.warning.types','anomaly.module.pages::field.description.placeholder.types','anomaly.module.pages::field.description.instructions.types'),(28,28,'en','anomaly.module.pages::field.theme_layout.label.types','anomaly.module.pages::field.theme_layout.warning.types','anomaly.module.pages::field.theme_layout.placeholder.types','anomaly.module.pages::field.theme_layout.instructions.types'),(29,29,'en','anomaly.module.pages::field.layout.label.types','anomaly.module.pages::field.layout.warning.types','anomaly.module.pages::field.layout.placeholder.types','anomaly.module.pages::field.layout.instructions.types'),(30,30,'en','anomaly.module.pages::field.handler.label.types','anomaly.module.pages::field.handler.warning.types','anomaly.module.pages::field.handler.placeholder.types','anomaly.module.pages::field.handler.instructions.types'),(31,31,'en','anomaly.module.pages::field.publish_at.label.pages','anomaly.module.pages::field.publish_at.warning.pages','anomaly.module.pages::field.publish_at.placeholder.pages','anomaly.module.pages::field.publish_at.instructions.pages'),(32,32,'en','anomaly.module.addons::field.type.label.addons','anomaly.module.addons::field.type.warning.addons','anomaly.module.addons::field.type.placeholder.addons','anomaly.module.addons::field.type.instructions.addons'),(33,33,'en','anomaly.module.addons::field.name.label.addons','anomaly.module.addons::field.name.warning.addons','anomaly.module.addons::field.name.placeholder.addons','anomaly.module.addons::field.name.instructions.addons'),(34,34,'en','anomaly.module.addons::field.namespace.label.addons','anomaly.module.addons::field.namespace.warning.addons','anomaly.module.addons::field.namespace.placeholder.addons','anomaly.module.addons::field.namespace.instructions.addons'),(35,35,'en','anomaly.module.addons::field.title.label.addons','anomaly.module.addons::field.title.warning.addons','anomaly.module.addons::field.title.placeholder.addons','anomaly.module.addons::field.title.instructions.addons'),(36,36,'en','anomaly.module.addons::field.versions.label.addons','anomaly.module.addons::field.versions.warning.addons','anomaly.module.addons::field.versions.placeholder.addons','anomaly.module.addons::field.versions.instructions.addons'),(37,37,'en','anomaly.module.addons::field.marketplace.label.addons','anomaly.module.addons::field.marketplace.warning.addons','anomaly.module.addons::field.marketplace.placeholder.addons','anomaly.module.addons::field.marketplace.instructions.addons'),(38,38,'en','anomaly.module.addons::field.description.label.addons','anomaly.module.addons::field.description.warning.addons','anomaly.module.addons::field.description.placeholder.addons','anomaly.module.addons::field.description.instructions.addons'),(39,39,'en','anomaly.module.addons::field.homepage.label.addons','anomaly.module.addons::field.homepage.warning.addons','anomaly.module.addons::field.homepage.placeholder.addons','anomaly.module.addons::field.homepage.instructions.addons'),(40,40,'en','anomaly.module.addons::field.requires.label.addons','anomaly.module.addons::field.requires.warning.addons','anomaly.module.addons::field.requires.placeholder.addons','anomaly.module.addons::field.requires.instructions.addons'),(41,41,'en','anomaly.module.addons::field.suggests.label.addons','anomaly.module.addons::field.suggests.warning.addons','anomaly.module.addons::field.suggests.placeholder.addons','anomaly.module.addons::field.suggests.instructions.addons'),(42,42,'en','anomaly.module.addons::field.licenses.label.addons','anomaly.module.addons::field.licenses.warning.addons','anomaly.module.addons::field.licenses.placeholder.addons','anomaly.module.addons::field.licenses.instructions.addons'),(43,43,'en','anomaly.module.addons::field.authors.label.addons','anomaly.module.addons::field.authors.warning.addons','anomaly.module.addons::field.authors.placeholder.addons','anomaly.module.addons::field.authors.instructions.addons'),(44,44,'en','anomaly.module.addons::field.support.label.addons','anomaly.module.addons::field.support.warning.addons','anomaly.module.addons::field.support.placeholder.addons','anomaly.module.addons::field.support.instructions.addons'),(45,45,'en','anomaly.module.addons::field.assets.label.addons','anomaly.module.addons::field.assets.warning.addons','anomaly.module.addons::field.assets.placeholder.addons','anomaly.module.addons::field.assets.instructions.addons'),(46,46,'en','anomaly.module.addons::field.readme.label.addons','anomaly.module.addons::field.readme.warning.addons','anomaly.module.addons::field.readme.placeholder.addons','anomaly.module.addons::field.readme.instructions.addons'),(47,47,'en','anomaly.module.addons::field.name.label.repositories','anomaly.module.addons::field.name.warning.repositories','anomaly.module.addons::field.name.placeholder.repositories','anomaly.module.addons::field.name.instructions.repositories'),(48,48,'en','anomaly.module.addons::field.slug.label.repositories','anomaly.module.addons::field.slug.warning.repositories','anomaly.module.addons::field.slug.placeholder.repositories','anomaly.module.addons::field.slug.instructions.repositories'),(49,49,'en','anomaly.module.addons::field.description.label.repositories','anomaly.module.addons::field.description.warning.repositories','anomaly.module.addons::field.description.placeholder.repositories','anomaly.module.addons::field.description.instructions.repositories'),(50,50,'en','anomaly.module.addons::field.url.label.repositories','anomaly.module.addons::field.url.warning.repositories','anomaly.module.addons::field.url.placeholder.repositories','anomaly.module.addons::field.url.instructions.repositories'),(51,51,'en','anomaly.module.dashboard::field.name.label.dashboards','anomaly.module.dashboard::field.name.warning.dashboards','anomaly.module.dashboard::field.name.placeholder.dashboards','anomaly.module.dashboard::field.name.instructions.dashboards'),(52,52,'en','anomaly.module.dashboard::field.slug.label.dashboards','anomaly.module.dashboard::field.slug.warning.dashboards','anomaly.module.dashboard::field.slug.placeholder.dashboards','anomaly.module.dashboard::field.slug.instructions.dashboards'),(53,53,'en','anomaly.module.dashboard::field.description.label.dashboards','anomaly.module.dashboard::field.description.warning.dashboards','anomaly.module.dashboard::field.description.placeholder.dashboards','anomaly.module.dashboard::field.description.instructions.dashboards'),(54,54,'en','anomaly.module.dashboard::field.layout.label.dashboards','anomaly.module.dashboard::field.layout.warning.dashboards','anomaly.module.dashboard::field.layout.placeholder.dashboards','anomaly.module.dashboard::field.layout.instructions.dashboards'),(55,55,'en','anomaly.module.dashboard::field.allowed_roles.label.dashboards','anomaly.module.dashboard::field.allowed_roles.warning.dashboards','anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards','anomaly.module.dashboard::field.allowed_roles.instructions.dashboards'),(56,56,'en','anomaly.module.dashboard::field.title.label.widgets','anomaly.module.dashboard::field.title.warning.widgets','anomaly.module.dashboard::field.title.placeholder.widgets','anomaly.module.dashboard::field.title.instructions.widgets'),(57,57,'en','anomaly.module.dashboard::field.description.label.widgets','anomaly.module.dashboard::field.description.warning.widgets','anomaly.module.dashboard::field.description.placeholder.widgets','anomaly.module.dashboard::field.description.instructions.widgets'),(58,58,'en','anomaly.module.dashboard::field.extension.label.widgets','anomaly.module.dashboard::field.extension.warning.widgets','anomaly.module.dashboard::field.extension.placeholder.widgets','anomaly.module.dashboard::field.extension.instructions.widgets'),(59,59,'en','anomaly.module.dashboard::field.column.label.widgets','anomaly.module.dashboard::field.column.warning.widgets','anomaly.module.dashboard::field.column.placeholder.widgets','anomaly.module.dashboard::field.column.instructions.widgets'),(60,60,'en','anomaly.module.dashboard::field.dashboard.label.widgets','anomaly.module.dashboard::field.dashboard.warning.widgets','anomaly.module.dashboard::field.dashboard.placeholder.widgets','anomaly.module.dashboard::field.dashboard.instructions.widgets'),(61,61,'en','anomaly.module.dashboard::field.allowed_roles.label.widgets','anomaly.module.dashboard::field.allowed_roles.warning.widgets','anomaly.module.dashboard::field.allowed_roles.placeholder.widgets','anomaly.module.dashboard::field.allowed_roles.instructions.widgets'),(62,62,'en','anomaly.module.dashboard::field.pinned.label.widgets','anomaly.module.dashboard::field.pinned.warning.widgets','anomaly.module.dashboard::field.pinned.placeholder.widgets','anomaly.module.dashboard::field.pinned.instructions.widgets'),(63,63,'en','anomaly.module.posts::field.name.label.categories','anomaly.module.posts::field.name.warning.categories','anomaly.module.posts::field.name.placeholder.categories','anomaly.module.posts::field.name.instructions.categories'),(64,64,'en','anomaly.module.posts::field.slug.label.categories','anomaly.module.posts::field.slug.warning.categories','anomaly.module.posts::field.slug.placeholder.categories','anomaly.module.posts::field.slug.instructions.categories'),(65,65,'en','anomaly.module.posts::field.description.label.categories','anomaly.module.posts::field.description.warning.categories','anomaly.module.posts::field.description.placeholder.categories','anomaly.module.posts::field.description.instructions.categories'),(66,66,'en','anomaly.module.posts::field.str_id.label.posts','anomaly.module.posts::field.str_id.warning.posts','anomaly.module.posts::field.str_id.placeholder.posts','anomaly.module.posts::field.str_id.instructions.posts'),(67,67,'en','anomaly.module.posts::field.title.label.posts','anomaly.module.posts::field.title.warning.posts','anomaly.module.posts::field.title.placeholder.posts','anomaly.module.posts::field.title.instructions.posts'),(68,68,'en','anomaly.module.posts::field.summary.label.posts','anomaly.module.posts::field.summary.warning.posts','anomaly.module.posts::field.summary.placeholder.posts','anomaly.module.posts::field.summary.instructions.posts'),(69,69,'en','anomaly.module.posts::field.slug.label.posts','anomaly.module.posts::field.slug.warning.posts','anomaly.module.posts::field.slug.placeholder.posts','anomaly.module.posts::field.slug.instructions.posts'),(70,70,'en','anomaly.module.posts::field.type.label.posts','anomaly.module.posts::field.type.warning.posts','anomaly.module.posts::field.type.placeholder.posts','anomaly.module.posts::field.type.instructions.posts'),(71,71,'en','anomaly.module.posts::field.publish_at.label.posts','anomaly.module.posts::field.publish_at.warning.posts','anomaly.module.posts::field.publish_at.placeholder.posts','anomaly.module.posts::field.publish_at.instructions.posts'),(72,72,'en','anomaly.module.posts::field.author.label.posts','anomaly.module.posts::field.author.warning.posts','anomaly.module.posts::field.author.placeholder.posts','anomaly.module.posts::field.author.instructions.posts'),(73,73,'en','anomaly.module.posts::field.entry.label.posts','anomaly.module.posts::field.entry.warning.posts','anomaly.module.posts::field.entry.placeholder.posts','anomaly.module.posts::field.entry.instructions.posts'),(74,74,'en','anomaly.module.posts::field.meta_title.label.posts','anomaly.module.posts::field.meta_title.warning.posts','anomaly.module.posts::field.meta_title.placeholder.posts','anomaly.module.posts::field.meta_title.instructions.posts'),(75,75,'en','anomaly.module.posts::field.meta_description.label.posts','anomaly.module.posts::field.meta_description.warning.posts','anomaly.module.posts::field.meta_description.placeholder.posts','anomaly.module.posts::field.meta_description.instructions.posts'),(76,76,'en','anomaly.module.posts::field.category.label.posts','anomaly.module.posts::field.category.warning.posts','anomaly.module.posts::field.category.placeholder.posts','anomaly.module.posts::field.category.instructions.posts'),(77,77,'en','anomaly.module.posts::field.featured.label.posts','anomaly.module.posts::field.featured.warning.posts','anomaly.module.posts::field.featured.placeholder.posts','anomaly.module.posts::field.featured.instructions.posts'),(78,78,'en','anomaly.module.posts::field.enabled.label.posts','anomaly.module.posts::field.enabled.warning.posts','anomaly.module.posts::field.enabled.placeholder.posts','anomaly.module.posts::field.enabled.instructions.posts'),(79,79,'en','anomaly.module.posts::field.tags.label.posts','anomaly.module.posts::field.tags.warning.posts','anomaly.module.posts::field.tags.placeholder.posts','anomaly.module.posts::field.tags.instructions.posts'),(80,80,'en','anomaly.module.posts::field.name.label.types','anomaly.module.posts::field.name.warning.types','anomaly.module.posts::field.name.placeholder.types','anomaly.module.posts::field.name.instructions.types'),(81,81,'en','anomaly.module.posts::field.slug.label.types','anomaly.module.posts::field.slug.warning.types','anomaly.module.posts::field.slug.placeholder.types','anomaly.module.posts::field.slug.instructions.types'),(82,82,'en','anomaly.module.posts::field.layout.label.types','anomaly.module.posts::field.layout.warning.types','anomaly.module.posts::field.layout.placeholder.types','anomaly.module.posts::field.layout.instructions.types'),(83,83,'en','anomaly.module.posts::field.theme_layout.label.types','anomaly.module.posts::field.theme_layout.warning.types','anomaly.module.posts::field.theme_layout.placeholder.types','anomaly.module.posts::field.theme_layout.instructions.types'),(84,84,'en','anomaly.module.posts::field.description.label.types','anomaly.module.posts::field.description.warning.types','anomaly.module.posts::field.description.placeholder.types','anomaly.module.posts::field.description.instructions.types'),(85,85,'en','anomaly.module.posts::field.meta_title.label.categories','anomaly.module.posts::field.meta_title.warning.categories','anomaly.module.posts::field.meta_title.placeholder.categories','anomaly.module.posts::field.meta_title.instructions.categories'),(86,86,'en','anomaly.module.posts::field.meta_description.label.categories','anomaly.module.posts::field.meta_description.warning.categories','anomaly.module.posts::field.meta_description.placeholder.categories','anomaly.module.posts::field.meta_description.instructions.categories'),(87,87,'en','anomaly.module.posts::field.meta_title.label.types','anomaly.module.posts::field.meta_title.warning.types','anomaly.module.posts::field.meta_title.placeholder.types','anomaly.module.posts::field.meta_title.instructions.types'),(88,88,'en','anomaly.module.posts::field.meta_description.label.types','anomaly.module.posts::field.meta_description.warning.types','anomaly.module.posts::field.meta_description.placeholder.types','anomaly.module.posts::field.meta_description.instructions.types'),(89,89,'en','anomaly.module.users::field.email.label.users','anomaly.module.users::field.email.warning.users','anomaly.module.users::field.email.placeholder.users','anomaly.module.users::field.email.instructions.users'),(90,90,'en','anomaly.module.users::field.username.label.users','anomaly.module.users::field.username.warning.users','anomaly.module.users::field.username.placeholder.users','anomaly.module.users::field.username.instructions.users'),(91,91,'en','anomaly.module.users::field.password.label.users','anomaly.module.users::field.password.warning.users','anomaly.module.users::field.password.placeholder.users','anomaly.module.users::field.password.instructions.users'),(92,92,'en','anomaly.module.users::field.roles.label.users','anomaly.module.users::field.roles.warning.users','anomaly.module.users::field.roles.placeholder.users','anomaly.module.users::field.roles.instructions.users'),(93,93,'en','anomaly.module.users::field.display_name.label.users','anomaly.module.users::field.display_name.warning.users','anomaly.module.users::field.display_name.placeholder.users','anomaly.module.users::field.display_name.instructions.users'),(94,94,'en','anomaly.module.users::field.first_name.label.users','anomaly.module.users::field.first_name.warning.users','anomaly.module.users::field.first_name.placeholder.users','anomaly.module.users::field.first_name.instructions.users'),(95,95,'en','anomaly.module.users::field.last_name.label.users','anomaly.module.users::field.last_name.warning.users','anomaly.module.users::field.last_name.placeholder.users','anomaly.module.users::field.last_name.instructions.users'),(96,96,'en','anomaly.module.users::field.activated.label.users','anomaly.module.users::field.activated.warning.users','anomaly.module.users::field.activated.placeholder.users','anomaly.module.users::field.activated.instructions.users'),(97,97,'en','anomaly.module.users::field.enabled.label.users','anomaly.module.users::field.enabled.warning.users','anomaly.module.users::field.enabled.placeholder.users','anomaly.module.users::field.enabled.instructions.users'),(98,98,'en','anomaly.module.users::field.permissions.label.users','anomaly.module.users::field.permissions.warning.users','anomaly.module.users::field.permissions.placeholder.users','anomaly.module.users::field.permissions.instructions.users'),(99,99,'en','anomaly.module.users::field.last_login_at.label.users','anomaly.module.users::field.last_login_at.warning.users','anomaly.module.users::field.last_login_at.placeholder.users','anomaly.module.users::field.last_login_at.instructions.users'),(100,100,'en','anomaly.module.users::field.remember_token.label.users','anomaly.module.users::field.remember_token.warning.users','anomaly.module.users::field.remember_token.placeholder.users','anomaly.module.users::field.remember_token.instructions.users'),(101,101,'en','anomaly.module.users::field.activation_code.label.users','anomaly.module.users::field.activation_code.warning.users','anomaly.module.users::field.activation_code.placeholder.users','anomaly.module.users::field.activation_code.instructions.users'),(102,102,'en','anomaly.module.users::field.reset_code.label.users','anomaly.module.users::field.reset_code.warning.users','anomaly.module.users::field.reset_code.placeholder.users','anomaly.module.users::field.reset_code.instructions.users'),(103,103,'en','anomaly.module.users::field.last_activity_at.label.users','anomaly.module.users::field.last_activity_at.warning.users','anomaly.module.users::field.last_activity_at.placeholder.users','anomaly.module.users::field.last_activity_at.instructions.users'),(104,104,'en','anomaly.module.users::field.ip_address.label.users','anomaly.module.users::field.ip_address.warning.users','anomaly.module.users::field.ip_address.placeholder.users','anomaly.module.users::field.ip_address.instructions.users'),(105,105,'en','anomaly.module.users::field.name.label.roles','anomaly.module.users::field.name.warning.roles','anomaly.module.users::field.name.placeholder.roles','anomaly.module.users::field.name.instructions.roles'),(106,106,'en','anomaly.module.users::field.slug.label.roles','anomaly.module.users::field.slug.warning.roles','anomaly.module.users::field.slug.placeholder.roles','anomaly.module.users::field.slug.instructions.roles'),(107,107,'en','anomaly.module.users::field.description.label.roles','anomaly.module.users::field.description.warning.roles','anomaly.module.users::field.description.placeholder.roles','anomaly.module.users::field.description.instructions.roles'),(108,108,'en','anomaly.module.users::field.permissions.label.roles','anomaly.module.users::field.permissions.warning.roles','anomaly.module.users::field.permissions.placeholder.roles','anomaly.module.users::field.permissions.instructions.roles'),(109,109,'en','anomaly.module.users::field.str_id.label.users','anomaly.module.users::field.str_id.warning.users','anomaly.module.users::field.str_id.placeholder.users','anomaly.module.users::field.str_id.instructions.users'),(110,110,'en','anomaly.module.settings::field.key.label.settings','anomaly.module.settings::field.key.warning.settings','anomaly.module.settings::field.key.placeholder.settings','anomaly.module.settings::field.key.instructions.settings'),(111,111,'en','anomaly.module.settings::field.value.label.settings','anomaly.module.settings::field.value.warning.settings','anomaly.module.settings::field.value.placeholder.settings','anomaly.module.settings::field.value.instructions.settings'),(112,112,'en','anomaly.module.blocks::field.name.label.areas','anomaly.module.blocks::field.name.warning.areas','anomaly.module.blocks::field.name.placeholder.areas','anomaly.module.blocks::field.name.instructions.areas'),(113,113,'en','anomaly.module.blocks::field.slug.label.areas','anomaly.module.blocks::field.slug.warning.areas','anomaly.module.blocks::field.slug.placeholder.areas','anomaly.module.blocks::field.slug.instructions.areas'),(114,114,'en','anomaly.module.blocks::field.description.label.areas','anomaly.module.blocks::field.description.warning.areas','anomaly.module.blocks::field.description.placeholder.areas','anomaly.module.blocks::field.description.instructions.areas'),(115,115,'en','anomaly.module.blocks::field.blocks.label.areas','anomaly.module.blocks::field.blocks.warning.areas','anomaly.module.blocks::field.blocks.placeholder.areas','anomaly.module.blocks::field.blocks.instructions.areas'),(116,116,'en','anomaly.module.blocks::field.title.label.blocks','anomaly.module.blocks::field.title.warning.blocks','anomaly.module.blocks::field.title.placeholder.blocks','anomaly.module.blocks::field.title.instructions.blocks'),(117,117,'en','anomaly.module.blocks::field.area.label.blocks','anomaly.module.blocks::field.area.warning.blocks','anomaly.module.blocks::field.area.placeholder.blocks','anomaly.module.blocks::field.area.instructions.blocks'),(118,118,'en','anomaly.module.blocks::field.field.label.blocks','anomaly.module.blocks::field.field.warning.blocks','anomaly.module.blocks::field.field.placeholder.blocks','anomaly.module.blocks::field.field.instructions.blocks'),(119,119,'en','anomaly.module.blocks::field.extension.label.blocks','anomaly.module.blocks::field.extension.warning.blocks','anomaly.module.blocks::field.extension.placeholder.blocks','anomaly.module.blocks::field.extension.instructions.blocks'),(120,120,'en','anomaly.module.blocks::field.entry.label.blocks','anomaly.module.blocks::field.entry.warning.blocks','anomaly.module.blocks::field.entry.placeholder.blocks','anomaly.module.blocks::field.entry.instructions.blocks'),(121,121,'en','anomaly.module.blocks::field.display_title.label.blocks','anomaly.module.blocks::field.display_title.warning.blocks','anomaly.module.blocks::field.display_title.placeholder.blocks','anomaly.module.blocks::field.display_title.instructions.blocks'),(122,122,'en','anomaly.module.blocks::field.category.label.types','anomaly.module.blocks::field.category.warning.types','anomaly.module.blocks::field.category.placeholder.types','anomaly.module.blocks::field.category.instructions.types'),(123,123,'en','anomaly.module.blocks::field.name.label.types','anomaly.module.blocks::field.name.warning.types','anomaly.module.blocks::field.name.placeholder.types','anomaly.module.blocks::field.name.instructions.types'),(124,124,'en','anomaly.module.blocks::field.slug.label.types','anomaly.module.blocks::field.slug.warning.types','anomaly.module.blocks::field.slug.placeholder.types','anomaly.module.blocks::field.slug.instructions.types'),(125,125,'en','anomaly.module.blocks::field.description.label.types','anomaly.module.blocks::field.description.warning.types','anomaly.module.blocks::field.description.placeholder.types','anomaly.module.blocks::field.description.instructions.types'),(126,126,'en','anomaly.module.blocks::field.content_layout.label.types','anomaly.module.blocks::field.content_layout.warning.types','anomaly.module.blocks::field.content_layout.placeholder.types','anomaly.module.blocks::field.content_layout.instructions.types'),(127,127,'en','anomaly.module.blocks::field.wrapper_layout.label.types','anomaly.module.blocks::field.wrapper_layout.warning.types','anomaly.module.blocks::field.wrapper_layout.placeholder.types','anomaly.module.blocks::field.wrapper_layout.instructions.types'),(128,128,'en','anomaly.module.blocks::field.type.label.blocks','anomaly.module.blocks::field.type.warning.blocks','anomaly.module.blocks::field.type.placeholder.blocks','anomaly.module.blocks::field.type.instructions.blocks'),(129,129,'en','anomaly.module.configuration::field.scope.label.configuration','anomaly.module.configuration::field.scope.warning.configuration','anomaly.module.configuration::field.scope.placeholder.configuration','anomaly.module.configuration::field.scope.instructions.configuration'),(130,130,'en','anomaly.module.configuration::field.key.label.configuration','anomaly.module.configuration::field.key.warning.configuration','anomaly.module.configuration::field.key.placeholder.configuration','anomaly.module.configuration::field.key.instructions.configuration'),(131,131,'en','anomaly.module.configuration::field.value.label.configuration','anomaly.module.configuration::field.value.warning.configuration','anomaly.module.configuration::field.value.placeholder.configuration','anomaly.module.configuration::field.value.instructions.configuration'),(132,132,'en','anomaly.module.files::field.name.label.disks','anomaly.module.files::field.name.warning.disks','anomaly.module.files::field.name.placeholder.disks','anomaly.module.files::field.name.instructions.disks'),(133,133,'en','anomaly.module.files::field.slug.label.disks','anomaly.module.files::field.slug.warning.disks','anomaly.module.files::field.slug.placeholder.disks','anomaly.module.files::field.slug.instructions.disks'),(134,134,'en','anomaly.module.files::field.adapter.label.disks','anomaly.module.files::field.adapter.warning.disks','anomaly.module.files::field.adapter.placeholder.disks','anomaly.module.files::field.adapter.instructions.disks'),(135,135,'en','anomaly.module.files::field.description.label.disks','anomaly.module.files::field.description.warning.disks','anomaly.module.files::field.description.placeholder.disks','anomaly.module.files::field.description.instructions.disks'),(136,136,'en','anomaly.module.files::field.disk.label.folders','anomaly.module.files::field.disk.warning.folders','anomaly.module.files::field.disk.placeholder.folders','anomaly.module.files::field.disk.instructions.folders'),(137,137,'en','anomaly.module.files::field.name.label.folders','anomaly.module.files::field.name.warning.folders','anomaly.module.files::field.name.placeholder.folders','anomaly.module.files::field.name.instructions.folders'),(138,138,'en','anomaly.module.files::field.slug.label.folders','anomaly.module.files::field.slug.warning.folders','anomaly.module.files::field.slug.placeholder.folders','anomaly.module.files::field.slug.instructions.folders'),(139,139,'en','anomaly.module.files::field.description.label.folders','anomaly.module.files::field.description.warning.folders','anomaly.module.files::field.description.placeholder.folders','anomaly.module.files::field.description.instructions.folders'),(140,140,'en','anomaly.module.files::field.allowed_types.label.folders','anomaly.module.files::field.allowed_types.warning.folders','anomaly.module.files::field.allowed_types.placeholder.folders','anomaly.module.files::field.allowed_types.instructions.folders'),(141,141,'en','anomaly.module.files::field.name.label.files','anomaly.module.files::field.name.warning.files','anomaly.module.files::field.name.placeholder.files','anomaly.module.files::field.name.instructions.files'),(142,142,'en','anomaly.module.files::field.disk.label.files','anomaly.module.files::field.disk.warning.files','anomaly.module.files::field.disk.placeholder.files','anomaly.module.files::field.disk.instructions.files'),(143,143,'en','anomaly.module.files::field.folder.label.files','anomaly.module.files::field.folder.warning.files','anomaly.module.files::field.folder.placeholder.files','anomaly.module.files::field.folder.instructions.files'),(144,144,'en','anomaly.module.files::field.extension.label.files','anomaly.module.files::field.extension.warning.files','anomaly.module.files::field.extension.placeholder.files','anomaly.module.files::field.extension.instructions.files'),(145,145,'en','anomaly.module.files::field.size.label.files','anomaly.module.files::field.size.warning.files','anomaly.module.files::field.size.placeholder.files','anomaly.module.files::field.size.instructions.files'),(146,146,'en','anomaly.module.files::field.mime_type.label.files','anomaly.module.files::field.mime_type.warning.files','anomaly.module.files::field.mime_type.placeholder.files','anomaly.module.files::field.mime_type.instructions.files'),(147,147,'en','anomaly.module.files::field.entry.label.files','anomaly.module.files::field.entry.warning.files','anomaly.module.files::field.entry.placeholder.files','anomaly.module.files::field.entry.instructions.files'),(148,148,'en','anomaly.module.files::field.keywords.label.files','anomaly.module.files::field.keywords.warning.files','anomaly.module.files::field.keywords.placeholder.files','anomaly.module.files::field.keywords.instructions.files'),(149,149,'en','anomaly.module.files::field.height.label.files','anomaly.module.files::field.height.warning.files','anomaly.module.files::field.height.placeholder.files','anomaly.module.files::field.height.instructions.files'),(150,150,'en','anomaly.module.files::field.width.label.files','anomaly.module.files::field.width.warning.files','anomaly.module.files::field.width.placeholder.files','anomaly.module.files::field.width.instructions.files'),(151,151,'en','anomaly.module.files::field.alt_text.label.files','anomaly.module.files::field.alt_text.warning.files','anomaly.module.files::field.alt_text.placeholder.files','anomaly.module.files::field.alt_text.instructions.files'),(152,152,'en','anomaly.module.files::field.title.label.files','anomaly.module.files::field.title.warning.files','anomaly.module.files::field.title.placeholder.files','anomaly.module.files::field.title.instructions.files'),(153,153,'en','anomaly.module.files::field.caption.label.files','anomaly.module.files::field.caption.warning.files','anomaly.module.files::field.caption.placeholder.files','anomaly.module.files::field.caption.instructions.files'),(154,154,'en','anomaly.module.files::field.description.label.files','anomaly.module.files::field.description.warning.files','anomaly.module.files::field.description.placeholder.files','anomaly.module.files::field.description.instructions.files'),(155,155,'en','anomaly.module.files::field.str_id.label.files','anomaly.module.files::field.str_id.warning.files','anomaly.module.files::field.str_id.placeholder.files','anomaly.module.files::field.str_id.instructions.files'),(156,156,'en','anomaly.module.files::field.str_id.label.folders','anomaly.module.files::field.str_id.warning.folders','anomaly.module.files::field.str_id.placeholder.folders','anomaly.module.files::field.str_id.instructions.folders'),(157,157,'en','anomaly.module.navigation::field.name.label.menus','anomaly.module.navigation::field.name.warning.menus','anomaly.module.navigation::field.name.placeholder.menus','anomaly.module.navigation::field.name.instructions.menus'),(158,158,'en','anomaly.module.navigation::field.slug.label.menus','anomaly.module.navigation::field.slug.warning.menus','anomaly.module.navigation::field.slug.placeholder.menus','anomaly.module.navigation::field.slug.instructions.menus'),(159,159,'en','anomaly.module.navigation::field.description.label.menus','anomaly.module.navigation::field.description.warning.menus','anomaly.module.navigation::field.description.placeholder.menus','anomaly.module.navigation::field.description.instructions.menus'),(160,160,'en','anomaly.module.navigation::field.menu.label.links','anomaly.module.navigation::field.menu.warning.links','anomaly.module.navigation::field.menu.placeholder.links','anomaly.module.navigation::field.menu.instructions.links'),(161,161,'en','anomaly.module.navigation::field.type.label.links','anomaly.module.navigation::field.type.warning.links','anomaly.module.navigation::field.type.placeholder.links','anomaly.module.navigation::field.type.instructions.links'),(162,162,'en','anomaly.module.navigation::field.entry.label.links','anomaly.module.navigation::field.entry.warning.links','anomaly.module.navigation::field.entry.placeholder.links','anomaly.module.navigation::field.entry.instructions.links'),(163,163,'en','anomaly.module.navigation::field.target.label.links','anomaly.module.navigation::field.target.warning.links','anomaly.module.navigation::field.target.placeholder.links','anomaly.module.navigation::field.target.instructions.links'),(164,164,'en','anomaly.module.navigation::field.class.label.links','anomaly.module.navigation::field.class.warning.links','anomaly.module.navigation::field.class.placeholder.links','anomaly.module.navigation::field.class.instructions.links'),(165,165,'en','anomaly.module.navigation::field.parent.label.links','anomaly.module.navigation::field.parent.warning.links','anomaly.module.navigation::field.parent.placeholder.links','anomaly.module.navigation::field.parent.instructions.links'),(166,166,'en','anomaly.module.navigation::field.allowed_roles.label.links','anomaly.module.navigation::field.allowed_roles.warning.links','anomaly.module.navigation::field.allowed_roles.placeholder.links','anomaly.module.navigation::field.allowed_roles.instructions.links'),(167,167,'en','anomaly.module.search::field.title.label.items','anomaly.module.search::field.title.warning.items','anomaly.module.search::field.title.placeholder.items','anomaly.module.search::field.title.instructions.items'),(168,168,'en','anomaly.module.search::field.description.label.items','anomaly.module.search::field.description.warning.items','anomaly.module.search::field.description.placeholder.items','anomaly.module.search::field.description.instructions.items'),(169,169,'en','anomaly.module.search::field.keywords.label.items','anomaly.module.search::field.keywords.warning.items','anomaly.module.search::field.keywords.placeholder.items','anomaly.module.search::field.keywords.instructions.items'),(170,170,'en','anomaly.module.search::field.entry.label.items','anomaly.module.search::field.entry.warning.items','anomaly.module.search::field.entry.placeholder.items','anomaly.module.search::field.entry.instructions.items'),(171,171,'en','anomaly.module.search::field.stream.label.items','anomaly.module.search::field.stream.warning.items','anomaly.module.search::field.stream.placeholder.items','anomaly.module.search::field.stream.instructions.items'),(172,172,'en','anomaly.module.search::field.locale.label.items','anomaly.module.search::field.locale.warning.items','anomaly.module.search::field.locale.placeholder.items','anomaly.module.search::field.locale.instructions.items'),(173,173,'en','anomaly.module.search::field.searchable.label.items','anomaly.module.search::field.searchable.warning.items','anomaly.module.search::field.searchable.placeholder.items','anomaly.module.search::field.searchable.instructions.items'),(174,174,'en','anomaly.module.redirects::field.from.label.redirects','anomaly.module.redirects::field.from.warning.redirects','anomaly.module.redirects::field.from.placeholder.redirects','anomaly.module.redirects::field.from.instructions.redirects'),(175,175,'en','anomaly.module.redirects::field.to.label.redirects','anomaly.module.redirects::field.to.warning.redirects','anomaly.module.redirects::field.to.placeholder.redirects','anomaly.module.redirects::field.to.instructions.redirects'),(176,176,'en','anomaly.module.redirects::field.status.label.redirects','anomaly.module.redirects::field.status.warning.redirects','anomaly.module.redirects::field.status.placeholder.redirects','anomaly.module.redirects::field.status.instructions.redirects'),(177,177,'en','anomaly.module.redirects::field.secure.label.redirects','anomaly.module.redirects::field.secure.warning.redirects','anomaly.module.redirects::field.secure.placeholder.redirects','anomaly.module.redirects::field.secure.instructions.redirects'),(178,178,'en','anomaly.module.redirects::field.from.label.domains','anomaly.module.redirects::field.from.warning.domains','anomaly.module.redirects::field.from.placeholder.domains','anomaly.module.redirects::field.from.instructions.domains'),(179,179,'en','anomaly.module.redirects::field.to.label.domains','anomaly.module.redirects::field.to.warning.domains','anomaly.module.redirects::field.to.placeholder.domains','anomaly.module.redirects::field.to.instructions.domains'),(180,180,'en','anomaly.module.redirects::field.status.label.domains','anomaly.module.redirects::field.status.warning.domains','anomaly.module.redirects::field.status.placeholder.domains','anomaly.module.redirects::field.status.instructions.domains'),(181,181,'en','anomaly.module.redirects::field.secure.label.domains','anomaly.module.redirects::field.secure.warning.domains','anomaly.module.redirects::field.secure.placeholder.domains','anomaly.module.redirects::field.secure.instructions.domains'),(182,182,'en','anomaly.extension.wysiwyg_block::field.content.label.blocks','anomaly.extension.wysiwyg_block::field.content.warning.blocks','anomaly.extension.wysiwyg_block::field.content.placeholder.blocks','anomaly.extension.wysiwyg_block::field.content.instructions.blocks'),(183,183,'en','anomaly.extension.page_link_type::field.title.label.pages','anomaly.extension.page_link_type::field.title.warning.pages','anomaly.extension.page_link_type::field.title.placeholder.pages','anomaly.extension.page_link_type::field.title.instructions.pages'),(184,184,'en','anomaly.extension.page_link_type::field.page.label.pages','anomaly.extension.page_link_type::field.page.warning.pages','anomaly.extension.page_link_type::field.page.placeholder.pages','anomaly.extension.page_link_type::field.page.instructions.pages'),(185,185,'en','anomaly.extension.page_link_type::field.description.label.pages','anomaly.extension.page_link_type::field.description.warning.pages','anomaly.extension.page_link_type::field.description.placeholder.pages','anomaly.extension.page_link_type::field.description.instructions.pages'),(186,186,'en','anomaly.extension.url_link_type::field.title.label.urls','anomaly.extension.url_link_type::field.title.warning.urls','anomaly.extension.url_link_type::field.title.placeholder.urls','anomaly.extension.url_link_type::field.title.instructions.urls'),(187,187,'en','anomaly.extension.url_link_type::field.url.label.urls','anomaly.extension.url_link_type::field.url.warning.urls','anomaly.extension.url_link_type::field.url.placeholder.urls','anomaly.extension.url_link_type::field.url.instructions.urls'),(188,188,'en','anomaly.extension.url_link_type::field.description.label.urls','anomaly.extension.url_link_type::field.description.warning.urls','anomaly.extension.url_link_type::field.description.placeholder.urls','anomaly.extension.url_link_type::field.description.instructions.urls'),(189,189,'en','anomaly.extension.html_block::field.html.label.blocks','anomaly.extension.html_block::field.html.warning.blocks','anomaly.extension.html_block::field.html.placeholder.blocks','anomaly.extension.html_block::field.html.instructions.blocks'),(190,190,'en',NULL,NULL,NULL,NULL),(191,191,'en',NULL,NULL,NULL,NULL),(192,192,'ar',NULL,NULL,NULL,NULL),(193,192,'en',NULL,NULL,NULL,NULL),(194,192,'de',NULL,NULL,NULL,NULL),(195,192,'es',NULL,NULL,NULL,NULL),(200,194,'ar',NULL,NULL,NULL,NULL),(201,194,'en',NULL,NULL,NULL,NULL),(202,194,'de',NULL,NULL,NULL,NULL),(203,194,'es',NULL,NULL,NULL,NULL),(204,195,'ar',NULL,NULL,NULL,NULL),(205,195,'en',NULL,NULL,NULL,NULL),(206,195,'de',NULL,NULL,NULL,NULL),(207,195,'es',NULL,NULL,NULL,NULL),(208,196,'ar',NULL,NULL,NULL,NULL),(209,196,'en',NULL,NULL,NULL,NULL),(210,196,'de',NULL,NULL,NULL,NULL),(211,196,'es',NULL,NULL,NULL,NULL),(212,197,'ar',NULL,NULL,NULL,NULL),(213,197,'en',NULL,NULL,NULL,NULL),(214,197,'de',NULL,NULL,NULL,NULL),(215,197,'es',NULL,NULL,NULL,NULL),(216,198,'ar',NULL,NULL,NULL,NULL),(217,198,'en',NULL,NULL,NULL,NULL),(218,198,'de',NULL,NULL,NULL,NULL),(219,198,'es',NULL,NULL,NULL,NULL),(220,199,'ar',NULL,NULL,NULL,NULL),(221,199,'en',NULL,NULL,NULL,NULL),(222,199,'de',NULL,NULL,NULL,NULL),(223,199,'es',NULL,NULL,NULL,NULL),(224,200,'ar',NULL,NULL,NULL,NULL),(225,200,'en',NULL,NULL,NULL,NULL),(226,200,'de',NULL,NULL,NULL,NULL),(227,200,'es',NULL,NULL,NULL,NULL),(228,201,'ar',NULL,NULL,NULL,NULL),(229,201,'en',NULL,NULL,NULL,NULL),(230,201,'de',NULL,NULL,NULL,NULL),(231,201,'es',NULL,NULL,NULL,NULL),(232,202,'ar',NULL,NULL,NULL,NULL),(233,202,'en',NULL,NULL,NULL,NULL),(234,202,'de',NULL,NULL,NULL,NULL),(235,202,'es',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `default_streams_assignments_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_streams_fields`
--

DROP TABLE IF EXISTS `default_streams_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_streams_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `config` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_fields` (`namespace`,`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_streams_fields`
--

LOCK TABLES `default_streams_fields` WRITE;
/*!40000 ALTER TABLE `default_streams_fields` DISABLE KEYS */;
INSERT INTO `default_streams_fields` VALUES (1,'streams_utilities','name','anomaly.field_type.text','a:0:{}',1),(2,'streams_utilities','description','anomaly.field_type.textarea','a:0:{}',1),(3,'streams_utilities','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(4,'streams_utilities','virtualize','anomaly.field_type.boolean','a:0:{}',1),(5,'streams_utilities','icon','anomaly.field_type.icon','a:0:{}',1),(6,'preferences','user','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}',1),(7,'preferences','key','anomaly.field_type.text','a:0:{}',1),(8,'preferences','value','anomaly.field_type.textarea','a:0:{}',1),(9,'pages','str_id','anomaly.field_type.text','a:0:{}',1),(10,'pages','title','anomaly.field_type.text','a:0:{}',1),(11,'pages','slug','anomaly.field_type.slug','a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}',1),(12,'pages','content','anomaly.field_type.wysiwyg','a:0:{}',0),(13,'pages','path','anomaly.field_type.text','a:0:{}',1),(14,'pages','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(15,'pages','home','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(16,'pages','meta_title','anomaly.field_type.text','a:0:{}',1),(17,'pages','meta_description','anomaly.field_type.textarea','a:0:{}',1),(19,'pages','layout','anomaly.field_type.editor','a:2:{s:13:\"default_value\";s:25:\"<h1>{{ page.title }}</h1>\";s:4:\"mode\";s:4:\"twig\";}',1),(20,'pages','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(21,'pages','parent','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}',1),(22,'pages','theme_layout','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:27:\"theme::layouts/default.twig\";s:7:\"handler\";s:46:\"Anomaly\\SelectFieldType\\Handler\\Layouts@handle\";}',1),(23,'pages','type','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Type\\TypeModel\";}',1),(24,'pages','handler','anomaly.field_type.addon','a:3:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:31:\"anomaly.module.pages::handler.*\";s:13:\"default_value\";s:38:\"anomaly.extension.default_page_handler\";}',1),(25,'pages','visible','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(26,'pages','exact','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(27,'pages','entry','anomaly.field_type.polymorphic','a:0:{}',1),(28,'pages','name','anomaly.field_type.text','a:0:{}',1),(29,'pages','description','anomaly.field_type.textarea','a:0:{}',1),(30,'pages','publish_at','anomaly.field_type.datetime','a:0:{}',1),(31,'addons','type','anomaly.field_type.text','a:0:{}',1),(32,'addons','name','anomaly.field_type.text','a:0:{}',1),(33,'addons','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(34,'addons','repository','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:47:\"Anomaly\\AddonsModule\\Repository\\RepositoryModel\";}',1),(35,'addons','namespace','anomaly.field_type.text','a:0:{}',1),(36,'addons','title','anomaly.field_type.text','a:0:{}',1),(37,'addons','description','anomaly.field_type.textarea','a:0:{}',1),(38,'addons','marketplace','anomaly.field_type.textarea','a:0:{}',1),(39,'addons','homepage','anomaly.field_type.url','a:0:{}',1),(40,'addons','requires','anomaly.field_type.textarea','a:0:{}',1),(41,'addons','suggests','anomaly.field_type.textarea','a:0:{}',1),(42,'addons','versions','anomaly.field_type.textarea','a:0:{}',1),(43,'addons','licenses','anomaly.field_type.textarea','a:0:{}',1),(44,'addons','authors','anomaly.field_type.textarea','a:0:{}',1),(45,'addons','support','anomaly.field_type.textarea','a:0:{}',1),(46,'addons','assets','anomaly.field_type.textarea','a:0:{}',1),(47,'addons','readme','anomaly.field_type.textarea','a:0:{}',1),(48,'addons','url','anomaly.field_type.url','a:0:{}',1),(49,'dashboard','name','anomaly.field_type.text','a:0:{}',1),(50,'dashboard','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(51,'dashboard','description','anomaly.field_type.textarea','a:0:{}',1),(52,'dashboard','layout','anomaly.field_type.select','a:1:{s:7:\"options\";a:9:{i:24;s:48:\"anomaly.module.dashboard::field.layout.option.24\";s:5:\"12-12\";s:51:\"anomaly.module.dashboard::field.layout.option.12-12\";s:4:\"16-8\";s:50:\"anomaly.module.dashboard::field.layout.option.16-8\";s:4:\"8-16\";s:50:\"anomaly.module.dashboard::field.layout.option.8-16\";s:5:\"8-8-8\";s:51:\"anomaly.module.dashboard::field.layout.option.8-8-8\";s:6:\"6-12-6\";s:52:\"anomaly.module.dashboard::field.layout.option.6-12-6\";s:6:\"12-6-6\";s:52:\"anomaly.module.dashboard::field.layout.option.12-6-6\";s:6:\"6-6-12\";s:52:\"anomaly.module.dashboard::field.layout.option.6-6-12\";s:7:\"6-6-6-6\";s:53:\"anomaly.module.dashboard::field.layout.option.6-6-6-6\";}}',1),(53,'dashboard','title','anomaly.field_type.text','a:0:{}',1),(54,'dashboard','extension','anomaly.field_type.addon','a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:34:\"anomaly.module.dashboard::widget.*\";}',1),(55,'dashboard','column','anomaly.field_type.integer','a:2:{s:3:\"min\";i:1;s:13:\"default_value\";i:1;}',1),(56,'dashboard','pinned','anomaly.field_type.boolean','a:0:{}',1),(57,'dashboard','dashboard','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:48:\"Anomaly\\DashboardModule\\Dashboard\\DashboardModel\";}',1),(58,'dashboard','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(59,'posts','str_id','anomaly.field_type.text','a:0:{}',1),(60,'posts','name','anomaly.field_type.text','a:0:{}',1),(61,'posts','title','anomaly.field_type.text','a:0:{}',1),(62,'posts','slug','anomaly.field_type.slug','a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}',1),(63,'posts','content','anomaly.field_type.wysiwyg','a:0:{}',0),(64,'posts','type','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PostsModule\\Type\\TypeModel\";}',1),(65,'posts','tags','anomaly.field_type.tags','a:0:{}',1),(66,'posts','summary','anomaly.field_type.textarea','a:0:{}',1),(67,'posts','description','anomaly.field_type.textarea','a:0:{}',1),(68,'posts','publish_at','anomaly.field_type.datetime','a:0:{}',1),(69,'posts','entry','anomaly.field_type.polymorphic','a:0:{}',1),(70,'posts','author','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}',1),(71,'posts','layout','anomaly.field_type.editor','a:2:{s:13:\"default_value\";s:22:\"{{ post.content|raw }}\";s:4:\"mode\";s:4:\"twig\";}',1),(72,'posts','category','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\";}',1),(73,'posts','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(74,'posts','featured','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(75,'posts','meta_title','anomaly.field_type.text','a:0:{}',1),(76,'posts','meta_description','anomaly.field_type.textarea','a:0:{}',1),(78,'posts','ttl','anomaly.field_type.integer','a:3:{s:3:\"min\";i:0;s:4:\"step\";i:1;s:4:\"page\";i:5;}',1),(79,'posts','theme_layout','anomaly.field_type.select','a:2:{s:4:\"mode\";s:6:\"search\";s:7:\"handler\";s:39:\"Anomaly\\SelectFieldType\\Handler\\Layouts\";}',1),(80,'users','email','anomaly.field_type.email','a:0:{}',1),(81,'users','username','anomaly.field_type.slug','a:2:{s:4:\"type\";s:1:\"_\";s:9:\"lowercase\";b:0;}',1),(82,'users','password','anomaly.field_type.text','a:1:{s:4:\"type\";s:8:\"password\";}',1),(83,'users','remember_token','anomaly.field_type.text','a:0:{}',1),(84,'users','ip_address','anomaly.field_type.text','a:0:{}',1),(85,'users','last_login_at','anomaly.field_type.datetime','a:0:{}',1),(86,'users','last_activity_at','anomaly.field_type.datetime','a:0:{}',1),(87,'users','permissions','anomaly.field_type.checkboxes','a:0:{}',1),(88,'users','display_name','anomaly.field_type.text','a:0:{}',1),(89,'users','first_name','anomaly.field_type.text','a:0:{}',1),(90,'users','last_name','anomaly.field_type.text','a:0:{}',1),(91,'users','name','anomaly.field_type.text','a:0:{}',1),(92,'users','description','anomaly.field_type.textarea','a:0:{}',1),(93,'users','reset_code','anomaly.field_type.text','a:0:{}',1),(94,'users','reset_code_expires_at','anomaly.field_type.datetime','a:0:{}',1),(95,'users','activation_code','anomaly.field_type.text','a:0:{}',1),(96,'users','activation_code_expires_at','anomaly.field_type.datetime','a:0:{}',1),(97,'users','activated','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(98,'users','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(99,'users','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(100,'users','roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(101,'users','str_id','anomaly.field_type.text','a:0:{}',1),(102,'settings','key','anomaly.field_type.text','a:0:{}',1),(103,'settings','value','anomaly.field_type.textarea','a:0:{}',1),(104,'blocks','name','anomaly.field_type.text','a:0:{}',1),(105,'blocks','description','anomaly.field_type.textarea','a:0:{}',1),(106,'blocks','slug','anomaly.field_type.slug','a:2:{s:4:\"type\";s:1:\"-\";s:7:\"slugify\";s:4:\"name\";}',1),(107,'blocks','title','anomaly.field_type.text','a:0:{}',1),(108,'blocks','field','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:41:\"Anomaly\\Streams\\Platform\\Field\\FieldModel\";}',1),(109,'blocks','area','anomaly.field_type.polymorphic','a:0:{}',1),(110,'blocks','entry','anomaly.field_type.polymorphic','a:0:{}',1),(111,'blocks','blocks','anomaly.field_type.blocks','a:0:{}',1),(112,'blocks','extension','anomaly.field_type.addon','a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:30:\"anomaly.module.blocks::block.*\";}',1),(113,'blocks','display_title','anomaly.field_type.boolean','a:3:{s:13:\"default_value\";b:1;s:4:\"mode\";s:8:\"checkbox\";s:5:\"label\";s:48:\"anomaly.module.blocks::field.display_title.label\";}',1),(114,'blocks','category','anomaly.field_type.select','a:1:{s:7:\"handler\";s:66:\"Anomaly\\BlocksModule\\Block\\Support\\SelectFieldType\\CategoryOptions\";}',1),(115,'blocks','content_layout','anomaly.field_type.editor','a:2:{s:4:\"mode\";s:4:\"twig\";s:13:\"default_value\";s:29:\"<p>{{ block.field_slug }}</p>\";}',1),(116,'blocks','wrapper_layout','anomaly.field_type.editor','a:2:{s:4:\"mode\";s:4:\"twig\";s:13:\"default_value\";s:52:\"{% extends \"anomaly.module.blocks::types.wrapper\" %}\";}',1),(117,'blocks','type','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:35:\"Anomaly\\BlocksModule\\Type\\TypeModel\";}',1),(118,'configuration','scope','anomaly.field_type.text','a:0:{}',1),(119,'configuration','key','anomaly.field_type.text','a:0:{}',1),(120,'configuration','value','anomaly.field_type.textarea','a:0:{}',1),(121,'files','name','anomaly.field_type.text','a:0:{}',1),(122,'files','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(123,'files','adapter','anomaly.field_type.addon','a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:31:\"anomaly.module.files::adapter.*\";}',1),(124,'files','folder','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\";}',1),(125,'files','disk','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\";}',1),(126,'files','entry','anomaly.field_type.polymorphic','a:0:{}',1),(127,'files','description','anomaly.field_type.textarea','a:0:{}',1),(128,'files','allowed_types','anomaly.field_type.tags','a:0:{}',1),(129,'files','keywords','anomaly.field_type.tags','a:0:{}',1),(130,'files','extension','anomaly.field_type.text','a:0:{}',1),(131,'files','width','anomaly.field_type.text','a:0:{}',1),(132,'files','height','anomaly.field_type.text','a:0:{}',1),(133,'files','mime_type','anomaly.field_type.text','a:0:{}',1),(134,'files','size','anomaly.field_type.integer','a:0:{}',1),(135,'files','alt_text','anomaly.field_type.text','a:0:{}',1),(136,'files','title','anomaly.field_type.text','a:0:{}',1),(137,'files','caption','anomaly.field_type.textarea','a:0:{}',1),(138,'files','str_id','anomaly.field_type.text','a:0:{}',1),(139,'navigation','name','anomaly.field_type.text','a:0:{}',1),(140,'navigation','class','anomaly.field_type.text','a:0:{}',1),(141,'navigation','description','anomaly.field_type.textarea','a:0:{}',1),(142,'navigation','entry','anomaly.field_type.polymorphic','a:0:{}',1),(143,'navigation','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(144,'navigation','menu','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Menu\\MenuModel\";}',1),(145,'navigation','parent','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Link\\LinkModel\";}',1),(146,'navigation','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(147,'navigation','type','anomaly.field_type.addon','a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:38:\"anomaly.module.navigation::link_type.*\";}',1),(148,'navigation','target','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:5:\"_self\";s:7:\"options\";a:2:{s:5:\"_self\";s:51:\"anomaly.module.navigation::field.target.option.self\";s:6:\"_blank\";s:52:\"anomaly.module.navigation::field.target.option.blank\";}}',1),(149,'search','title','anomaly.field_type.text','a:0:{}',1),(150,'search','locale','anomaly.field_type.text','a:0:{}',1),(151,'search','description','anomaly.field_type.textarea','a:0:{}',1),(152,'search','entry','anomaly.field_type.polymorphic','a:0:{}',1),(153,'search','stream','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"search\";s:7:\"related\";s:43:\"Anomaly\\Streams\\Platform\\Stream\\StreamModel\";}',1),(154,'search','keywords','anomaly.field_type.textarea','a:1:{s:7:\"storage\";s:4:\"json\";}',1),(155,'search','searchable','anomaly.field_type.textarea','a:1:{s:7:\"storage\";s:4:\"json\";}',1),(156,'redirects','from','anomaly.field_type.text','a:0:{}',1),(157,'redirects','to','anomaly.field_type.text','a:0:{}',1),(158,'redirects','status','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:3:\"301\";s:7:\"options\";a:2:{i:301;s:49:\"anomaly.module.redirects::field.status.option.301\";i:302;s:49:\"anomaly.module.redirects::field.status.option.302\";}}',1),(159,'redirects','secure','anomaly.field_type.boolean','a:0:{}',1),(160,'wysiwyg_block','content','anomaly.field_type.wysiwyg','a:0:{}',1),(161,'page_link_type','title','anomaly.field_type.text','a:0:{}',1),(162,'page_link_type','page','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}',1),(163,'page_link_type','description','anomaly.field_type.textarea','a:0:{}',1),(164,'url_link_type','title','anomaly.field_type.text','a:0:{}',1),(165,'url_link_type','url','anomaly.field_type.text','a:0:{}',1),(166,'url_link_type','description','anomaly.field_type.textarea','a:0:{}',1),(167,'html_block','html','anomaly.field_type.editor','a:0:{}',1),(168,'private_storage_adapter','name','anomaly.field_type.text','a:0:{}',1),(169,'private_storage_adapter','slug','anomaly.field_type.slug','a:2:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";}',1),(170,'industries','title','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:4:\"mask\";N;s:3:\"min\";N;s:3:\"max\";s:3:\"255\";s:12:\"show_counter\";b:0;s:13:\"default_value\";N;}',0),(171,'industries','industry','anomaly.field_type.relationship','a:3:{s:7:\"related\";s:72:\"Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesIndustriesEntryModel\";s:4:\"mode\";s:8:\"dropdown\";s:10:\"title_name\";N;}',0),(172,'industries','market_approach','anomaly.field_type.relationship','a:3:{s:7:\"related\";s:76:\"Anomaly\\Streams\\Platform\\Model\\Industries\\IndustriesMarketApproachEntryModel\";s:4:\"mode\";s:8:\"dropdown\";s:10:\"title_name\";N;}',0),(173,'products_and_services','title','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:4:\"mask\";N;s:3:\"min\";N;s:3:\"max\";s:3:\"255\";s:12:\"show_counter\";b:0;s:13:\"default_value\";N;}',0),(174,'products','title','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:4:\"mask\";N;s:3:\"min\";N;s:3:\"max\";s:3:\"255\";s:12:\"show_counter\";b:0;s:13:\"default_value\";N;}',0);
/*!40000 ALTER TABLE `default_streams_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_streams_fields_translations`
--

DROP TABLE IF EXISTS `default_streams_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_streams_fields_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `streams_fields_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_streams_fields_translations`
--

LOCK TABLES `default_streams_fields_translations` WRITE;
/*!40000 ALTER TABLE `default_streams_fields_translations` DISABLE KEYS */;
INSERT INTO `default_streams_fields_translations` VALUES (1,1,'en','anomaly.module.streams::field.name.name','anomaly.module.streams::field.name.placeholder','anomaly.module.streams::field.name.warning','anomaly.module.streams::field.name.instructions'),(2,2,'en','anomaly.module.streams::field.description.name','anomaly.module.streams::field.description.placeholder','anomaly.module.streams::field.description.warning','anomaly.module.streams::field.description.instructions'),(3,3,'en','anomaly.module.streams::field.slug.name','anomaly.module.streams::field.slug.placeholder','anomaly.module.streams::field.slug.warning','anomaly.module.streams::field.slug.instructions'),(4,4,'en','anomaly.module.streams::field.virtualize.name','anomaly.module.streams::field.virtualize.placeholder','anomaly.module.streams::field.virtualize.warning','anomaly.module.streams::field.virtualize.instructions'),(5,5,'en','anomaly.module.streams::field.icon.name','anomaly.module.streams::field.icon.placeholder','anomaly.module.streams::field.icon.warning','anomaly.module.streams::field.icon.instructions'),(6,6,'en','anomaly.module.preferences::field.user.name','anomaly.module.preferences::field.user.placeholder','anomaly.module.preferences::field.user.warning','anomaly.module.preferences::field.user.instructions'),(7,7,'en','anomaly.module.preferences::field.key.name','anomaly.module.preferences::field.key.placeholder','anomaly.module.preferences::field.key.warning','anomaly.module.preferences::field.key.instructions'),(8,8,'en','anomaly.module.preferences::field.value.name','anomaly.module.preferences::field.value.placeholder','anomaly.module.preferences::field.value.warning','anomaly.module.preferences::field.value.instructions'),(9,9,'en','anomaly.module.pages::field.str_id.name','anomaly.module.pages::field.str_id.placeholder','anomaly.module.pages::field.str_id.warning','anomaly.module.pages::field.str_id.instructions'),(10,10,'en','anomaly.module.pages::field.title.name','anomaly.module.pages::field.title.placeholder','anomaly.module.pages::field.title.warning','anomaly.module.pages::field.title.instructions'),(11,11,'en','anomaly.module.pages::field.slug.name','anomaly.module.pages::field.slug.placeholder','anomaly.module.pages::field.slug.warning','anomaly.module.pages::field.slug.instructions'),(12,12,'en','anomaly.module.pages::field.content.name','anomaly.module.pages::field.content.placeholder','anomaly.module.pages::field.content.warning','anomaly.module.pages::field.content.instructions'),(13,13,'en','anomaly.module.pages::field.path.name','anomaly.module.pages::field.path.placeholder','anomaly.module.pages::field.path.warning','anomaly.module.pages::field.path.instructions'),(14,14,'en','anomaly.module.pages::field.enabled.name','anomaly.module.pages::field.enabled.placeholder','anomaly.module.pages::field.enabled.warning','anomaly.module.pages::field.enabled.instructions'),(15,15,'en','anomaly.module.pages::field.home.name','anomaly.module.pages::field.home.placeholder','anomaly.module.pages::field.home.warning','anomaly.module.pages::field.home.instructions'),(16,16,'en','anomaly.module.pages::field.meta_title.name','anomaly.module.pages::field.meta_title.placeholder','anomaly.module.pages::field.meta_title.warning','anomaly.module.pages::field.meta_title.instructions'),(17,17,'en','anomaly.module.pages::field.meta_description.name','anomaly.module.pages::field.meta_description.placeholder','anomaly.module.pages::field.meta_description.warning','anomaly.module.pages::field.meta_description.instructions'),(19,19,'en','anomaly.module.pages::field.layout.name','anomaly.module.pages::field.layout.placeholder','anomaly.module.pages::field.layout.warning','anomaly.module.pages::field.layout.instructions'),(20,20,'en','anomaly.module.pages::field.allowed_roles.name','anomaly.module.pages::field.allowed_roles.placeholder','anomaly.module.pages::field.allowed_roles.warning','anomaly.module.pages::field.allowed_roles.instructions'),(21,21,'en','anomaly.module.pages::field.parent.name','anomaly.module.pages::field.parent.placeholder','anomaly.module.pages::field.parent.warning','anomaly.module.pages::field.parent.instructions'),(22,22,'en','anomaly.module.pages::field.theme_layout.name','anomaly.module.pages::field.theme_layout.placeholder','anomaly.module.pages::field.theme_layout.warning','anomaly.module.pages::field.theme_layout.instructions'),(23,23,'en','anomaly.module.pages::field.type.name','anomaly.module.pages::field.type.placeholder','anomaly.module.pages::field.type.warning','anomaly.module.pages::field.type.instructions'),(24,24,'en','anomaly.module.pages::field.handler.name','anomaly.module.pages::field.handler.placeholder','anomaly.module.pages::field.handler.warning','anomaly.module.pages::field.handler.instructions'),(25,25,'en','anomaly.module.pages::field.visible.name','anomaly.module.pages::field.visible.placeholder','anomaly.module.pages::field.visible.warning','anomaly.module.pages::field.visible.instructions'),(26,26,'en','anomaly.module.pages::field.exact.name','anomaly.module.pages::field.exact.placeholder','anomaly.module.pages::field.exact.warning','anomaly.module.pages::field.exact.instructions'),(27,27,'en','anomaly.module.pages::field.entry.name','anomaly.module.pages::field.entry.placeholder','anomaly.module.pages::field.entry.warning','anomaly.module.pages::field.entry.instructions'),(28,28,'en','anomaly.module.pages::field.name.name','anomaly.module.pages::field.name.placeholder','anomaly.module.pages::field.name.warning','anomaly.module.pages::field.name.instructions'),(29,29,'en','anomaly.module.pages::field.description.name','anomaly.module.pages::field.description.placeholder','anomaly.module.pages::field.description.warning','anomaly.module.pages::field.description.instructions'),(30,30,'en','anomaly.module.pages::field.publish_at.name','anomaly.module.pages::field.publish_at.placeholder','anomaly.module.pages::field.publish_at.warning','anomaly.module.pages::field.publish_at.instructions'),(31,31,'en','anomaly.module.addons::field.type.name','anomaly.module.addons::field.type.placeholder','anomaly.module.addons::field.type.warning','anomaly.module.addons::field.type.instructions'),(32,32,'en','anomaly.module.addons::field.name.name','anomaly.module.addons::field.name.placeholder','anomaly.module.addons::field.name.warning','anomaly.module.addons::field.name.instructions'),(33,33,'en','anomaly.module.addons::field.slug.name','anomaly.module.addons::field.slug.placeholder','anomaly.module.addons::field.slug.warning','anomaly.module.addons::field.slug.instructions'),(34,34,'en','anomaly.module.addons::field.repository.name','anomaly.module.addons::field.repository.placeholder','anomaly.module.addons::field.repository.warning','anomaly.module.addons::field.repository.instructions'),(35,35,'en','anomaly.module.addons::field.namespace.name','anomaly.module.addons::field.namespace.placeholder','anomaly.module.addons::field.namespace.warning','anomaly.module.addons::field.namespace.instructions'),(36,36,'en','anomaly.module.addons::field.title.name','anomaly.module.addons::field.title.placeholder','anomaly.module.addons::field.title.warning','anomaly.module.addons::field.title.instructions'),(37,37,'en','anomaly.module.addons::field.description.name','anomaly.module.addons::field.description.placeholder','anomaly.module.addons::field.description.warning','anomaly.module.addons::field.description.instructions'),(38,38,'en','anomaly.module.addons::field.marketplace.name','anomaly.module.addons::field.marketplace.placeholder','anomaly.module.addons::field.marketplace.warning','anomaly.module.addons::field.marketplace.instructions'),(39,39,'en','anomaly.module.addons::field.homepage.name','anomaly.module.addons::field.homepage.placeholder','anomaly.module.addons::field.homepage.warning','anomaly.module.addons::field.homepage.instructions'),(40,40,'en','anomaly.module.addons::field.requires.name','anomaly.module.addons::field.requires.placeholder','anomaly.module.addons::field.requires.warning','anomaly.module.addons::field.requires.instructions'),(41,41,'en','anomaly.module.addons::field.suggests.name','anomaly.module.addons::field.suggests.placeholder','anomaly.module.addons::field.suggests.warning','anomaly.module.addons::field.suggests.instructions'),(42,42,'en','anomaly.module.addons::field.versions.name','anomaly.module.addons::field.versions.placeholder','anomaly.module.addons::field.versions.warning','anomaly.module.addons::field.versions.instructions'),(43,43,'en','anomaly.module.addons::field.licenses.name','anomaly.module.addons::field.licenses.placeholder','anomaly.module.addons::field.licenses.warning','anomaly.module.addons::field.licenses.instructions'),(44,44,'en','anomaly.module.addons::field.authors.name','anomaly.module.addons::field.authors.placeholder','anomaly.module.addons::field.authors.warning','anomaly.module.addons::field.authors.instructions'),(45,45,'en','anomaly.module.addons::field.support.name','anomaly.module.addons::field.support.placeholder','anomaly.module.addons::field.support.warning','anomaly.module.addons::field.support.instructions'),(46,46,'en','anomaly.module.addons::field.assets.name','anomaly.module.addons::field.assets.placeholder','anomaly.module.addons::field.assets.warning','anomaly.module.addons::field.assets.instructions'),(47,47,'en','anomaly.module.addons::field.readme.name','anomaly.module.addons::field.readme.placeholder','anomaly.module.addons::field.readme.warning','anomaly.module.addons::field.readme.instructions'),(48,48,'en','anomaly.module.addons::field.url.name','anomaly.module.addons::field.url.placeholder','anomaly.module.addons::field.url.warning','anomaly.module.addons::field.url.instructions'),(49,49,'en','anomaly.module.dashboard::field.name.name','anomaly.module.dashboard::field.name.placeholder','anomaly.module.dashboard::field.name.warning','anomaly.module.dashboard::field.name.instructions'),(50,50,'en','anomaly.module.dashboard::field.slug.name','anomaly.module.dashboard::field.slug.placeholder','anomaly.module.dashboard::field.slug.warning','anomaly.module.dashboard::field.slug.instructions'),(51,51,'en','anomaly.module.dashboard::field.description.name','anomaly.module.dashboard::field.description.placeholder','anomaly.module.dashboard::field.description.warning','anomaly.module.dashboard::field.description.instructions'),(52,52,'en','anomaly.module.dashboard::field.layout.name','anomaly.module.dashboard::field.layout.placeholder','anomaly.module.dashboard::field.layout.warning','anomaly.module.dashboard::field.layout.instructions'),(53,53,'en','anomaly.module.dashboard::field.title.name','anomaly.module.dashboard::field.title.placeholder','anomaly.module.dashboard::field.title.warning','anomaly.module.dashboard::field.title.instructions'),(54,54,'en','anomaly.module.dashboard::field.extension.name','anomaly.module.dashboard::field.extension.placeholder','anomaly.module.dashboard::field.extension.warning','anomaly.module.dashboard::field.extension.instructions'),(55,55,'en','anomaly.module.dashboard::field.column.name','anomaly.module.dashboard::field.column.placeholder','anomaly.module.dashboard::field.column.warning','anomaly.module.dashboard::field.column.instructions'),(56,56,'en','anomaly.module.dashboard::field.pinned.name','anomaly.module.dashboard::field.pinned.placeholder','anomaly.module.dashboard::field.pinned.warning','anomaly.module.dashboard::field.pinned.instructions'),(57,57,'en','anomaly.module.dashboard::field.dashboard.name','anomaly.module.dashboard::field.dashboard.placeholder','anomaly.module.dashboard::field.dashboard.warning','anomaly.module.dashboard::field.dashboard.instructions'),(58,58,'en','anomaly.module.dashboard::field.allowed_roles.name','anomaly.module.dashboard::field.allowed_roles.placeholder','anomaly.module.dashboard::field.allowed_roles.warning','anomaly.module.dashboard::field.allowed_roles.instructions'),(59,59,'en','anomaly.module.posts::field.str_id.name','anomaly.module.posts::field.str_id.placeholder','anomaly.module.posts::field.str_id.warning','anomaly.module.posts::field.str_id.instructions'),(60,60,'en','anomaly.module.posts::field.name.name','anomaly.module.posts::field.name.placeholder','anomaly.module.posts::field.name.warning','anomaly.module.posts::field.name.instructions'),(61,61,'en','anomaly.module.posts::field.title.name','anomaly.module.posts::field.title.placeholder','anomaly.module.posts::field.title.warning','anomaly.module.posts::field.title.instructions'),(62,62,'en','anomaly.module.posts::field.slug.name','anomaly.module.posts::field.slug.placeholder','anomaly.module.posts::field.slug.warning','anomaly.module.posts::field.slug.instructions'),(63,63,'en','anomaly.module.posts::field.content.name','anomaly.module.posts::field.content.placeholder','anomaly.module.posts::field.content.warning','anomaly.module.posts::field.content.instructions'),(64,64,'en','anomaly.module.posts::field.type.name','anomaly.module.posts::field.type.placeholder','anomaly.module.posts::field.type.warning','anomaly.module.posts::field.type.instructions'),(65,65,'en','anomaly.module.posts::field.tags.name','anomaly.module.posts::field.tags.placeholder','anomaly.module.posts::field.tags.warning','anomaly.module.posts::field.tags.instructions'),(66,66,'en','anomaly.module.posts::field.summary.name','anomaly.module.posts::field.summary.placeholder','anomaly.module.posts::field.summary.warning','anomaly.module.posts::field.summary.instructions'),(67,67,'en','anomaly.module.posts::field.description.name','anomaly.module.posts::field.description.placeholder','anomaly.module.posts::field.description.warning','anomaly.module.posts::field.description.instructions'),(68,68,'en','anomaly.module.posts::field.publish_at.name','anomaly.module.posts::field.publish_at.placeholder','anomaly.module.posts::field.publish_at.warning','anomaly.module.posts::field.publish_at.instructions'),(69,69,'en','anomaly.module.posts::field.entry.name','anomaly.module.posts::field.entry.placeholder','anomaly.module.posts::field.entry.warning','anomaly.module.posts::field.entry.instructions'),(70,70,'en','anomaly.module.posts::field.author.name','anomaly.module.posts::field.author.placeholder','anomaly.module.posts::field.author.warning','anomaly.module.posts::field.author.instructions'),(71,71,'en','anomaly.module.posts::field.layout.name','anomaly.module.posts::field.layout.placeholder','anomaly.module.posts::field.layout.warning','anomaly.module.posts::field.layout.instructions'),(72,72,'en','anomaly.module.posts::field.category.name','anomaly.module.posts::field.category.placeholder','anomaly.module.posts::field.category.warning','anomaly.module.posts::field.category.instructions'),(73,73,'en','anomaly.module.posts::field.enabled.name','anomaly.module.posts::field.enabled.placeholder','anomaly.module.posts::field.enabled.warning','anomaly.module.posts::field.enabled.instructions'),(74,74,'en','anomaly.module.posts::field.featured.name','anomaly.module.posts::field.featured.placeholder','anomaly.module.posts::field.featured.warning','anomaly.module.posts::field.featured.instructions'),(75,75,'en','anomaly.module.posts::field.meta_title.name','anomaly.module.posts::field.meta_title.placeholder','anomaly.module.posts::field.meta_title.warning','anomaly.module.posts::field.meta_title.instructions'),(76,76,'en','anomaly.module.posts::field.meta_description.name','anomaly.module.posts::field.meta_description.placeholder','anomaly.module.posts::field.meta_description.warning','anomaly.module.posts::field.meta_description.instructions'),(78,78,'en','anomaly.module.posts::field.ttl.name','anomaly.module.posts::field.ttl.placeholder','anomaly.module.posts::field.ttl.warning','anomaly.module.posts::field.ttl.instructions'),(79,79,'en','anomaly.module.posts::field.theme_layout.name','anomaly.module.posts::field.theme_layout.placeholder','anomaly.module.posts::field.theme_layout.warning','anomaly.module.posts::field.theme_layout.instructions'),(80,80,'en','anomaly.module.users::field.email.name','anomaly.module.users::field.email.placeholder','anomaly.module.users::field.email.warning','anomaly.module.users::field.email.instructions'),(81,81,'en','anomaly.module.users::field.username.name','anomaly.module.users::field.username.placeholder','anomaly.module.users::field.username.warning','anomaly.module.users::field.username.instructions'),(82,82,'en','anomaly.module.users::field.password.name','anomaly.module.users::field.password.placeholder','anomaly.module.users::field.password.warning','anomaly.module.users::field.password.instructions'),(83,83,'en','anomaly.module.users::field.remember_token.name','anomaly.module.users::field.remember_token.placeholder','anomaly.module.users::field.remember_token.warning','anomaly.module.users::field.remember_token.instructions'),(84,84,'en','anomaly.module.users::field.ip_address.name','anomaly.module.users::field.ip_address.placeholder','anomaly.module.users::field.ip_address.warning','anomaly.module.users::field.ip_address.instructions'),(85,85,'en','anomaly.module.users::field.last_login_at.name','anomaly.module.users::field.last_login_at.placeholder','anomaly.module.users::field.last_login_at.warning','anomaly.module.users::field.last_login_at.instructions'),(86,86,'en','anomaly.module.users::field.last_activity_at.name','anomaly.module.users::field.last_activity_at.placeholder','anomaly.module.users::field.last_activity_at.warning','anomaly.module.users::field.last_activity_at.instructions'),(87,87,'en','anomaly.module.users::field.permissions.name','anomaly.module.users::field.permissions.placeholder','anomaly.module.users::field.permissions.warning','anomaly.module.users::field.permissions.instructions'),(88,88,'en','anomaly.module.users::field.display_name.name','anomaly.module.users::field.display_name.placeholder','anomaly.module.users::field.display_name.warning','anomaly.module.users::field.display_name.instructions'),(89,89,'en','anomaly.module.users::field.first_name.name','anomaly.module.users::field.first_name.placeholder','anomaly.module.users::field.first_name.warning','anomaly.module.users::field.first_name.instructions'),(90,90,'en','anomaly.module.users::field.last_name.name','anomaly.module.users::field.last_name.placeholder','anomaly.module.users::field.last_name.warning','anomaly.module.users::field.last_name.instructions'),(91,91,'en','anomaly.module.users::field.name.name','anomaly.module.users::field.name.placeholder','anomaly.module.users::field.name.warning','anomaly.module.users::field.name.instructions'),(92,92,'en','anomaly.module.users::field.description.name','anomaly.module.users::field.description.placeholder','anomaly.module.users::field.description.warning','anomaly.module.users::field.description.instructions'),(93,93,'en','anomaly.module.users::field.reset_code.name','anomaly.module.users::field.reset_code.placeholder','anomaly.module.users::field.reset_code.warning','anomaly.module.users::field.reset_code.instructions'),(94,94,'en','anomaly.module.users::field.reset_code_expires_at.name','anomaly.module.users::field.reset_code_expires_at.placeholder','anomaly.module.users::field.reset_code_expires_at.warning','anomaly.module.users::field.reset_code_expires_at.instructions'),(95,95,'en','anomaly.module.users::field.activation_code.name','anomaly.module.users::field.activation_code.placeholder','anomaly.module.users::field.activation_code.warning','anomaly.module.users::field.activation_code.instructions'),(96,96,'en','anomaly.module.users::field.activation_code_expires_at.name','anomaly.module.users::field.activation_code_expires_at.placeholder','anomaly.module.users::field.activation_code_expires_at.warning','anomaly.module.users::field.activation_code_expires_at.instructions'),(97,97,'en','anomaly.module.users::field.activated.name','anomaly.module.users::field.activated.placeholder','anomaly.module.users::field.activated.warning','anomaly.module.users::field.activated.instructions'),(98,98,'en','anomaly.module.users::field.enabled.name','anomaly.module.users::field.enabled.placeholder','anomaly.module.users::field.enabled.warning','anomaly.module.users::field.enabled.instructions'),(99,99,'en','anomaly.module.users::field.slug.name','anomaly.module.users::field.slug.placeholder','anomaly.module.users::field.slug.warning','anomaly.module.users::field.slug.instructions'),(100,100,'en','anomaly.module.users::field.roles.name','anomaly.module.users::field.roles.placeholder','anomaly.module.users::field.roles.warning','anomaly.module.users::field.roles.instructions'),(101,101,'en','anomaly.module.users::field.str_id.name','anomaly.module.users::field.str_id.placeholder','anomaly.module.users::field.str_id.warning','anomaly.module.users::field.str_id.instructions'),(102,102,'en','anomaly.module.settings::field.key.name','anomaly.module.settings::field.key.placeholder','anomaly.module.settings::field.key.warning','anomaly.module.settings::field.key.instructions'),(103,103,'en','anomaly.module.settings::field.value.name','anomaly.module.settings::field.value.placeholder','anomaly.module.settings::field.value.warning','anomaly.module.settings::field.value.instructions'),(104,104,'en','anomaly.module.blocks::field.name.name','anomaly.module.blocks::field.name.placeholder','anomaly.module.blocks::field.name.warning','anomaly.module.blocks::field.name.instructions'),(105,105,'en','anomaly.module.blocks::field.description.name','anomaly.module.blocks::field.description.placeholder','anomaly.module.blocks::field.description.warning','anomaly.module.blocks::field.description.instructions'),(106,106,'en','anomaly.module.blocks::field.slug.name','anomaly.module.blocks::field.slug.placeholder','anomaly.module.blocks::field.slug.warning','anomaly.module.blocks::field.slug.instructions'),(107,107,'en','anomaly.module.blocks::field.title.name','anomaly.module.blocks::field.title.placeholder','anomaly.module.blocks::field.title.warning','anomaly.module.blocks::field.title.instructions'),(108,108,'en','anomaly.module.blocks::field.field.name','anomaly.module.blocks::field.field.placeholder','anomaly.module.blocks::field.field.warning','anomaly.module.blocks::field.field.instructions'),(109,109,'en','anomaly.module.blocks::field.area.name','anomaly.module.blocks::field.area.placeholder','anomaly.module.blocks::field.area.warning','anomaly.module.blocks::field.area.instructions'),(110,110,'en','anomaly.module.blocks::field.entry.name','anomaly.module.blocks::field.entry.placeholder','anomaly.module.blocks::field.entry.warning','anomaly.module.blocks::field.entry.instructions'),(111,111,'en','anomaly.module.blocks::field.blocks.name','anomaly.module.blocks::field.blocks.placeholder','anomaly.module.blocks::field.blocks.warning','anomaly.module.blocks::field.blocks.instructions'),(112,112,'en','anomaly.module.blocks::field.extension.name','anomaly.module.blocks::field.extension.placeholder','anomaly.module.blocks::field.extension.warning','anomaly.module.blocks::field.extension.instructions'),(113,113,'en','anomaly.module.blocks::field.display_title.name','anomaly.module.blocks::field.display_title.placeholder','anomaly.module.blocks::field.display_title.warning','anomaly.module.blocks::field.display_title.instructions'),(114,114,'en','anomaly.module.blocks::field.category.name','anomaly.module.blocks::field.category.placeholder','anomaly.module.blocks::field.category.warning','anomaly.module.blocks::field.category.instructions'),(115,115,'en','anomaly.module.blocks::field.content_layout.name','anomaly.module.blocks::field.content_layout.placeholder','anomaly.module.blocks::field.content_layout.warning','anomaly.module.blocks::field.content_layout.instructions'),(116,116,'en','anomaly.module.blocks::field.wrapper_layout.name','anomaly.module.blocks::field.wrapper_layout.placeholder','anomaly.module.blocks::field.wrapper_layout.warning','anomaly.module.blocks::field.wrapper_layout.instructions'),(117,117,'en','anomaly.module.blocks::field.type.name','anomaly.module.blocks::field.type.placeholder','anomaly.module.blocks::field.type.warning','anomaly.module.blocks::field.type.instructions'),(118,118,'en','anomaly.module.configuration::field.scope.name','anomaly.module.configuration::field.scope.placeholder','anomaly.module.configuration::field.scope.warning','anomaly.module.configuration::field.scope.instructions'),(119,119,'en','anomaly.module.configuration::field.key.name','anomaly.module.configuration::field.key.placeholder','anomaly.module.configuration::field.key.warning','anomaly.module.configuration::field.key.instructions'),(120,120,'en','anomaly.module.configuration::field.value.name','anomaly.module.configuration::field.value.placeholder','anomaly.module.configuration::field.value.warning','anomaly.module.configuration::field.value.instructions'),(121,121,'en','anomaly.module.files::field.name.name','anomaly.module.files::field.name.placeholder','anomaly.module.files::field.name.warning','anomaly.module.files::field.name.instructions'),(122,122,'en','anomaly.module.files::field.slug.name','anomaly.module.files::field.slug.placeholder','anomaly.module.files::field.slug.warning','anomaly.module.files::field.slug.instructions'),(123,123,'en','anomaly.module.files::field.adapter.name','anomaly.module.files::field.adapter.placeholder','anomaly.module.files::field.adapter.warning','anomaly.module.files::field.adapter.instructions'),(124,124,'en','anomaly.module.files::field.folder.name','anomaly.module.files::field.folder.placeholder','anomaly.module.files::field.folder.warning','anomaly.module.files::field.folder.instructions'),(125,125,'en','anomaly.module.files::field.disk.name','anomaly.module.files::field.disk.placeholder','anomaly.module.files::field.disk.warning','anomaly.module.files::field.disk.instructions'),(126,126,'en','anomaly.module.files::field.entry.name','anomaly.module.files::field.entry.placeholder','anomaly.module.files::field.entry.warning','anomaly.module.files::field.entry.instructions'),(127,127,'en','anomaly.module.files::field.description.name','anomaly.module.files::field.description.placeholder','anomaly.module.files::field.description.warning','anomaly.module.files::field.description.instructions'),(128,128,'en','anomaly.module.files::field.allowed_types.name','anomaly.module.files::field.allowed_types.placeholder','anomaly.module.files::field.allowed_types.warning','anomaly.module.files::field.allowed_types.instructions'),(129,129,'en','anomaly.module.files::field.keywords.name','anomaly.module.files::field.keywords.placeholder','anomaly.module.files::field.keywords.warning','anomaly.module.files::field.keywords.instructions'),(130,130,'en','anomaly.module.files::field.extension.name','anomaly.module.files::field.extension.placeholder','anomaly.module.files::field.extension.warning','anomaly.module.files::field.extension.instructions'),(131,131,'en','anomaly.module.files::field.width.name','anomaly.module.files::field.width.placeholder','anomaly.module.files::field.width.warning','anomaly.module.files::field.width.instructions'),(132,132,'en','anomaly.module.files::field.height.name','anomaly.module.files::field.height.placeholder','anomaly.module.files::field.height.warning','anomaly.module.files::field.height.instructions'),(133,133,'en','anomaly.module.files::field.mime_type.name','anomaly.module.files::field.mime_type.placeholder','anomaly.module.files::field.mime_type.warning','anomaly.module.files::field.mime_type.instructions'),(134,134,'en','anomaly.module.files::field.size.name','anomaly.module.files::field.size.placeholder','anomaly.module.files::field.size.warning','anomaly.module.files::field.size.instructions'),(135,135,'en','anomaly.module.files::field.alt_text.name','anomaly.module.files::field.alt_text.placeholder','anomaly.module.files::field.alt_text.warning','anomaly.module.files::field.alt_text.instructions'),(136,136,'en','anomaly.module.files::field.title.name','anomaly.module.files::field.title.placeholder','anomaly.module.files::field.title.warning','anomaly.module.files::field.title.instructions'),(137,137,'en','anomaly.module.files::field.caption.name','anomaly.module.files::field.caption.placeholder','anomaly.module.files::field.caption.warning','anomaly.module.files::field.caption.instructions'),(138,138,'en','anomaly.module.files::field.str_id.name','anomaly.module.files::field.str_id.placeholder','anomaly.module.files::field.str_id.warning','anomaly.module.files::field.str_id.instructions'),(139,139,'en','anomaly.module.navigation::field.name.name','anomaly.module.navigation::field.name.placeholder','anomaly.module.navigation::field.name.warning','anomaly.module.navigation::field.name.instructions'),(140,140,'en','anomaly.module.navigation::field.class.name','anomaly.module.navigation::field.class.placeholder','anomaly.module.navigation::field.class.warning','anomaly.module.navigation::field.class.instructions'),(141,141,'en','anomaly.module.navigation::field.description.name','anomaly.module.navigation::field.description.placeholder','anomaly.module.navigation::field.description.warning','anomaly.module.navigation::field.description.instructions'),(142,142,'en','anomaly.module.navigation::field.entry.name','anomaly.module.navigation::field.entry.placeholder','anomaly.module.navigation::field.entry.warning','anomaly.module.navigation::field.entry.instructions'),(143,143,'en','anomaly.module.navigation::field.slug.name','anomaly.module.navigation::field.slug.placeholder','anomaly.module.navigation::field.slug.warning','anomaly.module.navigation::field.slug.instructions'),(144,144,'en','anomaly.module.navigation::field.menu.name','anomaly.module.navigation::field.menu.placeholder','anomaly.module.navigation::field.menu.warning','anomaly.module.navigation::field.menu.instructions'),(145,145,'en','anomaly.module.navigation::field.parent.name','anomaly.module.navigation::field.parent.placeholder','anomaly.module.navigation::field.parent.warning','anomaly.module.navigation::field.parent.instructions'),(146,146,'en','anomaly.module.navigation::field.allowed_roles.name','anomaly.module.navigation::field.allowed_roles.placeholder','anomaly.module.navigation::field.allowed_roles.warning','anomaly.module.navigation::field.allowed_roles.instructions'),(147,147,'en','anomaly.module.navigation::field.type.name','anomaly.module.navigation::field.type.placeholder','anomaly.module.navigation::field.type.warning','anomaly.module.navigation::field.type.instructions'),(148,148,'en','anomaly.module.navigation::field.target.name','anomaly.module.navigation::field.target.placeholder','anomaly.module.navigation::field.target.warning','anomaly.module.navigation::field.target.instructions'),(149,149,'en','anomaly.module.search::field.title.name','anomaly.module.search::field.title.placeholder','anomaly.module.search::field.title.warning','anomaly.module.search::field.title.instructions'),(150,150,'en','anomaly.module.search::field.locale.name','anomaly.module.search::field.locale.placeholder','anomaly.module.search::field.locale.warning','anomaly.module.search::field.locale.instructions'),(151,151,'en','anomaly.module.search::field.description.name','anomaly.module.search::field.description.placeholder','anomaly.module.search::field.description.warning','anomaly.module.search::field.description.instructions'),(152,152,'en','anomaly.module.search::field.entry.name','anomaly.module.search::field.entry.placeholder','anomaly.module.search::field.entry.warning','anomaly.module.search::field.entry.instructions'),(153,153,'en','anomaly.module.search::field.stream.name','anomaly.module.search::field.stream.placeholder','anomaly.module.search::field.stream.warning','anomaly.module.search::field.stream.instructions'),(154,154,'en','anomaly.module.search::field.keywords.name','anomaly.module.search::field.keywords.placeholder','anomaly.module.search::field.keywords.warning','anomaly.module.search::field.keywords.instructions'),(155,155,'en','anomaly.module.search::field.searchable.name','anomaly.module.search::field.searchable.placeholder','anomaly.module.search::field.searchable.warning','anomaly.module.search::field.searchable.instructions'),(156,156,'en','anomaly.module.redirects::field.from.name','anomaly.module.redirects::field.from.placeholder','anomaly.module.redirects::field.from.warning','anomaly.module.redirects::field.from.instructions'),(157,157,'en','anomaly.module.redirects::field.to.name','anomaly.module.redirects::field.to.placeholder','anomaly.module.redirects::field.to.warning','anomaly.module.redirects::field.to.instructions'),(158,158,'en','anomaly.module.redirects::field.status.name','anomaly.module.redirects::field.status.placeholder','anomaly.module.redirects::field.status.warning','anomaly.module.redirects::field.status.instructions'),(159,159,'en','anomaly.module.redirects::field.secure.name','anomaly.module.redirects::field.secure.placeholder','anomaly.module.redirects::field.secure.warning','anomaly.module.redirects::field.secure.instructions'),(160,160,'en','anomaly.extension.wysiwyg_block::field.content.name','anomaly.extension.wysiwyg_block::field.content.placeholder','anomaly.extension.wysiwyg_block::field.content.warning','anomaly.extension.wysiwyg_block::field.content.instructions'),(161,161,'en','anomaly.extension.page_link_type::field.title.name','anomaly.extension.page_link_type::field.title.placeholder','anomaly.extension.page_link_type::field.title.warning','anomaly.extension.page_link_type::field.title.instructions'),(162,162,'en','anomaly.extension.page_link_type::field.page.name','anomaly.extension.page_link_type::field.page.placeholder','anomaly.extension.page_link_type::field.page.warning','anomaly.extension.page_link_type::field.page.instructions'),(163,163,'en','anomaly.extension.page_link_type::field.description.name','anomaly.extension.page_link_type::field.description.placeholder','anomaly.extension.page_link_type::field.description.warning','anomaly.extension.page_link_type::field.description.instructions'),(164,164,'en','anomaly.extension.url_link_type::field.title.name','anomaly.extension.url_link_type::field.title.placeholder','anomaly.extension.url_link_type::field.title.warning','anomaly.extension.url_link_type::field.title.instructions'),(165,165,'en','anomaly.extension.url_link_type::field.url.name','anomaly.extension.url_link_type::field.url.placeholder','anomaly.extension.url_link_type::field.url.warning','anomaly.extension.url_link_type::field.url.instructions'),(166,166,'en','anomaly.extension.url_link_type::field.description.name','anomaly.extension.url_link_type::field.description.placeholder','anomaly.extension.url_link_type::field.description.warning','anomaly.extension.url_link_type::field.description.instructions'),(167,167,'en','anomaly.extension.html_block::field.html.name','anomaly.extension.html_block::field.html.placeholder','anomaly.extension.html_block::field.html.warning','anomaly.extension.html_block::field.html.instructions'),(168,168,'en','anomaly.extension.private_storage_adapter::field.name.name','anomaly.extension.private_storage_adapter::field.name.placeholder','anomaly.extension.private_storage_adapter::field.name.warning','anomaly.extension.private_storage_adapter::field.name.instructions'),(169,169,'en','anomaly.extension.private_storage_adapter::field.slug.name','anomaly.extension.private_storage_adapter::field.slug.placeholder','anomaly.extension.private_storage_adapter::field.slug.warning','anomaly.extension.private_storage_adapter::field.slug.instructions'),(170,170,'ar','Title',NULL,NULL,NULL),(171,170,'en','Title',NULL,NULL,NULL),(172,170,'de','Title',NULL,NULL,NULL),(173,170,'es','Title',NULL,NULL,NULL),(174,171,'ar',NULL,NULL,NULL,NULL),(175,171,'en','Industry',NULL,NULL,NULL),(176,171,'de',NULL,NULL,NULL,NULL),(177,171,'es',NULL,NULL,NULL,NULL),(178,172,'ar',NULL,NULL,NULL,NULL),(179,172,'en','Market approach',NULL,NULL,NULL),(180,172,'de',NULL,NULL,NULL,NULL),(181,172,'es',NULL,NULL,NULL,NULL),(182,173,'ar',NULL,NULL,NULL,NULL),(183,173,'en','Title',NULL,NULL,NULL),(184,173,'de',NULL,NULL,NULL,NULL),(185,173,'es',NULL,NULL,NULL,NULL),(186,174,'ar',NULL,NULL,NULL,NULL),(187,174,'en','Title',NULL,NULL,NULL),(188,174,'de',NULL,NULL,NULL,NULL),(189,174,'es',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `default_streams_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_streams_locks`
--

DROP TABLE IF EXISTS `default_streams_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_streams_locks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locked_at` datetime NOT NULL,
  `locked_by_id` int(11) NOT NULL,
  `lockable_id` int(10) unsigned NOT NULL,
  `lockable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `streams_locks_lockable_id_index` (`lockable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_streams_locks`
--

LOCK TABLES `default_streams_locks` WRITE;
/*!40000 ALTER TABLE `default_streams_locks` DISABLE KEYS */;
INSERT INTO `default_streams_locks` VALUES (8,'2022-09-21 13:10:54',1,2,'Anomaly\\StreamsModule\\Group\\GroupModel','https://acme.bettr.lt/admin/streams/namespaces/edit/2');
/*!40000 ALTER TABLE `default_streams_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_streams_streams`
--

DROP TABLE IF EXISTS `default_streams_streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_streams_streams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `namespace` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title_column` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'id',
  `order_by` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'id',
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `sortable` tinyint(1) NOT NULL DEFAULT 0,
  `searchable` tinyint(1) NOT NULL DEFAULT 0,
  `trashable` tinyint(1) NOT NULL DEFAULT 0,
  `translatable` tinyint(1) NOT NULL DEFAULT 0,
  `versionable` tinyint(1) NOT NULL DEFAULT 0,
  `config` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_streams` (`namespace`,`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_streams_streams`
--

LOCK TABLES `default_streams_streams` WRITE;
/*!40000 ALTER TABLE `default_streams_streams` DISABLE KEYS */;
INSERT INTO `default_streams_streams` VALUES (1,NULL,'streams_utilities','groups','streams_utilities_','id','id',0,0,1,0,0,1,0,'a:0:{}'),(2,NULL,'preferences','preferences','preferences_','id','id',0,0,0,0,0,0,0,'a:0:{}'),(3,NULL,'pages','pages','pages_','title','id',0,0,1,1,1,1,0,'a:0:{}'),(4,NULL,'pages','types','pages_','name','id',0,0,1,0,1,1,0,'a:0:{}'),(5,NULL,'addons','addons','addons_','name','id',0,0,0,0,0,0,0,'a:0:{}'),(6,NULL,'addons','repositories','addons_','name','id',0,0,1,0,0,1,0,'a:0:{}'),(7,NULL,'dashboard','dashboards','dashboard_','name','id',0,0,1,0,1,1,0,'a:0:{}'),(8,NULL,'dashboard','widgets','dashboard_','title','id',0,0,1,0,1,1,0,'a:0:{}'),(9,NULL,'posts','categories','posts_','name','id',0,0,1,0,1,1,0,'a:0:{}'),(10,NULL,'posts','posts','posts_','title','id',0,0,0,1,1,1,0,'a:0:{}'),(11,NULL,'posts','types','posts_','name','id',0,0,1,0,1,1,0,'a:0:{}'),(12,NULL,'users','users','users_','display_name','id',0,0,0,1,1,0,0,'a:0:{}'),(13,NULL,'users','roles','users_','name','id',0,0,0,0,1,1,0,'a:0:{}'),(14,NULL,'settings','settings','settings_','id','id',0,0,0,0,0,0,0,'a:0:{}'),(15,NULL,'blocks','areas','blocks_','name','id',0,0,0,0,0,1,0,'a:0:{}'),(16,NULL,'blocks','blocks','blocks_','type','id',0,0,1,0,0,1,0,'a:0:{}'),(17,NULL,'blocks','types','blocks_','name','id',0,0,1,0,1,1,0,'a:0:{}'),(18,NULL,'configuration','configuration','configuration_','id','id',1,0,0,0,0,0,0,'a:0:{}'),(19,NULL,'files','disks','files_','name','id',0,0,1,0,1,1,0,'a:0:{}'),(20,NULL,'files','folders','files_','name','id',0,0,1,0,1,1,0,'a:0:{}'),(21,NULL,'files','files','files_','name','id',0,0,0,1,1,0,0,'a:0:{}'),(22,NULL,'navigation','menus','navigation_','name','id',0,0,0,0,1,1,0,'a:0:{}'),(23,NULL,'navigation','links','navigation_','id','id',0,0,1,0,1,0,0,'a:0:{}'),(24,NULL,'search','items','search_','title','id',0,0,0,0,0,0,0,'a:0:{}'),(25,NULL,'redirects','redirects','redirects_','from','id',0,0,1,0,1,0,0,'a:0:{}'),(26,NULL,'redirects','domains','redirects_','from','id',0,0,1,0,1,0,0,'a:0:{}'),(27,NULL,'wysiwyg_block','blocks','wysiwyg_block_','id','id',0,0,0,0,0,1,0,'a:0:{}'),(28,NULL,'page_link_type','pages','page_link_type_','title','id',0,0,0,0,0,1,0,'a:0:{}'),(29,NULL,'url_link_type','urls','url_link_type_','title','id',0,0,0,0,0,1,0,'a:0:{}'),(30,NULL,'html_block','blocks','html_block_','id','id',0,0,0,0,0,1,0,'a:0:{}'),(31,NULL,'pages','default_pages','pages_','id','id',0,1,0,0,1,1,0,'a:0:{}'),(32,NULL,'posts','default_posts','posts_','id','id',0,1,0,0,1,1,0,'a:0:{}'),(33,NULL,'files','images','files_','id','id',0,0,0,0,1,1,0,'a:0:{}'),(34,NULL,'files','documents','files_','id','id',0,0,0,0,1,1,0,'a:0:{}'),(36,3,'industries','market_approach','industries_','title','id',0,0,1,1,1,1,0,'a:1:{i:0;s:6:\"a:0:{}\";}'),(38,2,'industries','industries','industries_','title','id',0,0,1,1,1,1,0,'a:1:{i:0;s:6:\"a:0:{}\";}'),(39,1,'industries','industries_combined','industries_','title','id',0,0,1,1,1,1,0,'a:1:{i:0;s:6:\"a:0:{}\";}'),(40,NULL,'products_and_services','components_groups','products_and_services_','title','id',0,0,1,1,1,1,0,'a:1:{i:0;s:23:\"a:1:{i:0;s:6:\"a:0:{}\";}\";}'),(41,3,'products','brands','products_','title','id',0,0,1,1,1,0,0,'a:1:{i:0;s:6:\"a:0:{}\";}'),(42,4,'products','categories','products_','title','id',0,0,1,1,1,1,0,'a:1:{i:0;s:6:\"a:0:{}\";}'),(43,2,'products','components_groups','products_','title','id',0,0,1,1,1,1,0,'a:1:{i:0;s:6:\"a:0:{}\";}'),(44,1,'products','products','products_','title','id',0,0,1,1,1,1,0,'a:1:{i:0;s:6:\"a:0:{}\";}');
/*!40000 ALTER TABLE `default_streams_streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_streams_streams_translations`
--

DROP TABLE IF EXISTS `default_streams_streams_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_streams_streams_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `streams_streams_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_streams_streams_translations`
--

LOCK TABLES `default_streams_streams_translations` WRITE;
/*!40000 ALTER TABLE `default_streams_streams_translations` DISABLE KEYS */;
INSERT INTO `default_streams_streams_translations` VALUES (1,1,'en','anomaly.module.streams::stream.groups.name','anomaly.module.streams::stream.groups.description'),(2,2,'en','anomaly.module.preferences::stream.preferences.name','anomaly.module.preferences::stream.preferences.description'),(3,3,'en','anomaly.module.pages::stream.pages.name','anomaly.module.pages::stream.pages.description'),(4,4,'en','anomaly.module.pages::stream.types.name','anomaly.module.pages::stream.types.description'),(5,5,'en','anomaly.module.addons::stream.addons.name','anomaly.module.addons::stream.addons.description'),(6,6,'en','anomaly.module.addons::stream.repositories.name','anomaly.module.addons::stream.repositories.description'),(7,7,'en','anomaly.module.dashboard::stream.dashboards.name','anomaly.module.dashboard::stream.dashboards.description'),(8,8,'en','anomaly.module.dashboard::stream.widgets.name','anomaly.module.dashboard::stream.widgets.description'),(9,9,'en','anomaly.module.posts::stream.categories.name','anomaly.module.posts::stream.categories.description'),(10,10,'en','anomaly.module.posts::stream.posts.name','anomaly.module.posts::stream.posts.description'),(11,11,'en','anomaly.module.posts::stream.types.name','anomaly.module.posts::stream.types.description'),(12,12,'en','anomaly.module.users::stream.users.name','anomaly.module.users::stream.users.description'),(13,13,'en','anomaly.module.users::stream.roles.name','anomaly.module.users::stream.roles.description'),(14,14,'en','anomaly.module.settings::stream.settings.name','anomaly.module.settings::stream.settings.description'),(15,15,'en','anomaly.module.blocks::stream.areas.name','anomaly.module.blocks::stream.areas.description'),(16,16,'en','anomaly.module.blocks::stream.blocks.name','anomaly.module.blocks::stream.blocks.description'),(17,17,'en','anomaly.module.blocks::stream.types.name','anomaly.module.blocks::stream.types.description'),(18,18,'en','anomaly.module.configuration::stream.configuration.name','anomaly.module.configuration::stream.configuration.description'),(19,19,'en','anomaly.module.files::stream.disks.name','anomaly.module.files::stream.disks.description'),(20,20,'en','anomaly.module.files::stream.folders.name','anomaly.module.files::stream.folders.description'),(21,21,'en','anomaly.module.files::stream.files.name','anomaly.module.files::stream.files.description'),(22,22,'en','anomaly.module.navigation::stream.menus.name','anomaly.module.navigation::stream.menus.description'),(23,23,'en','anomaly.module.navigation::stream.links.name','anomaly.module.navigation::stream.links.description'),(24,24,'en','anomaly.module.search::stream.items.name','anomaly.module.search::stream.items.description'),(25,25,'en','anomaly.module.redirects::stream.redirects.name','anomaly.module.redirects::stream.redirects.description'),(26,26,'en','anomaly.module.redirects::stream.domains.name','anomaly.module.redirects::stream.domains.description'),(27,27,'en','anomaly.extension.wysiwyg_block::stream.blocks.name','anomaly.extension.wysiwyg_block::stream.blocks.description'),(28,28,'en','anomaly.extension.page_link_type::stream.pages.name','anomaly.extension.page_link_type::stream.pages.description'),(29,29,'en','anomaly.extension.url_link_type::stream.urls.name','anomaly.extension.url_link_type::stream.urls.description'),(30,30,'en','anomaly.extension.html_block::stream.blocks.name','anomaly.extension.html_block::stream.blocks.description'),(31,31,'en','Default','A simple page type.'),(32,32,'en','Default','A simple post type.'),(33,33,'en','Images','A folder for images.'),(34,34,'en','Documents','A folder for documents.'),(39,36,'ar','Market approach',NULL),(40,36,'en','Market approach',NULL),(41,36,'de','Market approach',NULL),(42,36,'es','Market approach',NULL),(47,38,'ar',NULL,NULL),(48,38,'en','Industries',NULL),(49,38,'de',NULL,NULL),(50,38,'es',NULL,NULL),(51,39,'ar',NULL,NULL),(52,39,'en','Industries combined',NULL),(53,39,'de',NULL,NULL),(54,39,'es',NULL,NULL),(55,40,'ar',NULL,NULL),(56,40,'en','Components groups',NULL),(57,40,'de',NULL,NULL),(58,40,'es',NULL,NULL),(59,41,'ar',NULL,NULL),(60,41,'en','Brands',NULL),(61,41,'de',NULL,NULL),(62,41,'es',NULL,NULL),(63,42,'ar',NULL,NULL),(64,42,'en','Categories',NULL),(65,42,'de',NULL,NULL),(66,42,'es',NULL,NULL),(67,43,'ar',NULL,NULL),(68,43,'en','Components groups',NULL),(69,43,'de',NULL,NULL),(70,43,'es',NULL,NULL),(71,44,'ar',NULL,NULL),(72,44,'en','Products',NULL),(73,44,'de',NULL,NULL),(74,44,'es',NULL,NULL);
/*!40000 ALTER TABLE `default_streams_streams_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_streams_utilities_groups`
--

DROP TABLE IF EXISTS `default_streams_utilities_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_streams_utilities_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `virtualize` tinyint(1) DEFAULT 0,
  `icon` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `c81e728d9d4c2f636f067f89cc14862c` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_streams_utilities_groups`
--

LOCK TABLES `default_streams_utilities_groups` WRITE;
/*!40000 ALTER TABLE `default_streams_utilities_groups` DISABLE KEYS */;
INSERT INTO `default_streams_utilities_groups` VALUES (1,1,'2022-09-21 09:50:14',1,'2022-09-21 09:50:14',1,'industries',1,'fa fa-industry'),(3,2,'2022-09-21 13:22:47',1,'2022-09-21 13:22:47',1,'products',1,'fa fa-product-hunt');
/*!40000 ALTER TABLE `default_streams_utilities_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_streams_utilities_groups_translations`
--

DROP TABLE IF EXISTS `default_streams_utilities_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_streams_utilities_groups_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `streams_utilities_groups_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_streams_utilities_groups_translations`
--

LOCK TABLES `default_streams_utilities_groups_translations` WRITE;
/*!40000 ALTER TABLE `default_streams_utilities_groups_translations` DISABLE KEYS */;
INSERT INTO `default_streams_utilities_groups_translations` VALUES (1,1,'2022-09-21 09:50:14',NULL,'2022-09-21 09:50:14',1,'ar','Industries',NULL),(2,1,'2022-09-21 09:50:14',NULL,'2022-09-21 09:50:14',1,'en','Industries',NULL),(3,1,'2022-09-21 09:50:14',NULL,'2022-09-21 09:50:14',1,'de','Industries',NULL),(4,1,'2022-09-21 09:50:14',NULL,'2022-09-21 09:50:14',1,'es','Industries',NULL),(9,3,'2022-09-21 13:22:47',NULL,'2022-09-21 13:22:47',1,'ar',NULL,NULL),(10,3,'2022-09-21 13:22:47',NULL,'2022-09-21 13:22:47',1,'en','Products',NULL),(11,3,'2022-09-21 13:22:47',NULL,'2022-09-21 13:22:47',1,'de',NULL,NULL),(12,3,'2022-09-21 13:22:47',NULL,'2022-09-21 13:22:47',1,'es',NULL,NULL);
/*!40000 ALTER TABLE `default_streams_utilities_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_streams_versions`
--

DROP TABLE IF EXISTS `default_streams_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_streams_versions` (
  `version` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `versionable_id` int(10) unsigned NOT NULL,
  `versionable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `model` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`version`),
  KEY `streams_versions_versionable_id_index` (`versionable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_streams_versions`
--

LOCK TABLES `default_streams_versions` WRITE;
/*!40000 ALTER TABLE `default_streams_versions` DISABLE KEYS */;
INSERT INTO `default_streams_versions` VALUES (1,'2022-05-04 07:57:01',NULL,1,'Anomaly\\PagesModule\\Page\\PageModel','213.252.217.93','O:34:\"Anomaly\\PagesModule\\Page\\PageModel\":52:{s:14:\"\0*\0versionable\";b:1;s:7:\"\0*\0with\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:12:\"translations\";i:3;s:12:\"allowedRoles\";}s:11:\"\0*\0cascades\";a:2:{i:0;s:8:\"children\";i:1;s:5:\"entry\";}s:9:\"\0*\0active\";b:0;s:10:\"\0*\0current\";b:0;s:10:\"\0*\0content\";N;s:11:\"\0*\0response\";N;s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0table\";s:11:\"pages_pages\";s:12:\"\0*\0titleName\";s:5:\"title\";s:8:\"\0*\0rules\";a:16:{s:6:\"str_id\";s:8:\"required\";s:5:\"title\";s:8:\"required\";s:4:\"slug\";s:8:\"required\";s:4:\"path\";s:8:\"required\";s:4:\"type\";s:8:\"required\";s:5:\"entry\";s:0:\"\";s:6:\"parent\";s:0:\"\";s:7:\"visible\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:5:\"exact\";s:0:\"\";s:4:\"home\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:12:\"theme_layout\";s:0:\"\";s:13:\"allowed_roles\";s:0:\"\";s:10:\"publish_at\";s:0:\"\";}s:9:\"\0*\0fields\";a:16:{i:0;s:6:\"str_id\";i:1;s:5:\"title\";i:2;s:4:\"slug\";i:3;s:4:\"path\";i:4;s:4:\"type\";i:5;s:5:\"entry\";i:6;s:6:\"parent\";i:7;s:7:\"visible\";i:8;s:7:\"enabled\";i:9;s:5:\"exact\";i:10;s:4:\"home\";i:11;s:10:\"meta_title\";i:12;s:16:\"meta_description\";i:13;s:12:\"theme_layout\";i:14;s:13:\"allowed_roles\";i:15;s:10:\"publish_at\";}s:8:\"\0*\0dates\";a:4:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"publish_at\";i:3;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:6:\"parent\";i:3;s:13:\"allowed_roles\";}s:23:\"\0*\0translatedAttributes\";a:5:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:4:\"path\";i:3;s:10:\"meta_title\";i:4;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPagesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:13:{s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:7:\"type_id\";i:1;s:7:\"enabled\";i:1;s:4:\"home\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"sort_order\";i:1;s:6:\"str_id\";s:24:\"qSQGVQBHR7nh8TJMo4ZGGDiZ\";s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:5:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:46:\"Anomaly\\PagesModule\\Page\\PageTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"pages_pages_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:1;s:5:\"title\";s:7:\"Welcome\";s:4:\"slug\";s:7:\"welcome\";s:4:\"path\";s:1:\"/\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:1;s:5:\"title\";s:7:\"Welcome\";s:4:\"slug\";s:7:\"welcome\";s:4:\"path\";s:1:\"/\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:2:\"id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}s:4:\"type\";O:34:\"Anomaly\\PagesModule\\Type\\TypeModel\":48:{s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"pages\";}s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:11:\"pages_types\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:6:{s:4:\"name\";s:32:\"required|unique:pages_types,name\";s:4:\"slug\";s:32:\"required|unique:pages_types,slug\";s:11:\"description\";s:0:\"\";s:12:\"theme_layout\";s:8:\"required\";s:6:\"layout\";s:8:\"required\";s:7:\"handler\";s:8:\"required\";}s:9:\"\0*\0fields\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";i:3;s:12:\"theme_layout\";i:4;s:6:\"layout\";i:5;s:7:\"handler\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"pages_types_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:5:\"entry\";O:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\":48:{s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:19:\"pages_default_pages\";s:12:\"\0*\0titleName\";s:2:\"id\";s:8:\"\0*\0rules\";a:1:{s:7:\"content\";s:0:\"\";}s:9:\"\0*\0fields\";a:1:{i:0;s:7:\"content\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:7:\"content\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:32:\"pages_default_pages_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"parent\";N;s:8:\"children\";O:39:\"Anomaly\\PagesModule\\Page\\PageCollection\":1:{s:8:\"\0*\0items\";a:0:{}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}','a:17:{s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:7:\"type_id\";i:1;s:7:\"enabled\";i:1;s:4:\"home\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"str_id\";s:24:\"qSQGVQBHR7nh8TJMo4ZGGDiZ\";s:5:\"title\";s:7:\"Welcome\";s:4:\"slug\";s:7:\"welcome\";s:4:\"path\";s:1:\"/\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;s:4:\"type\";a:13:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:01.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:01.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:5:\"entry\";a:8:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:01.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:01.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:6:\"parent\";N;s:8:\"children\";a:0:{}s:13:\"allowed_roles\";a:0:{}}'),(2,'2022-05-04 07:57:01',NULL,2,'Anomaly\\PagesModule\\Page\\PageModel','213.252.217.93','O:34:\"Anomaly\\PagesModule\\Page\\PageModel\":52:{s:14:\"\0*\0versionable\";b:1;s:7:\"\0*\0with\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:12:\"translations\";i:3;s:12:\"allowedRoles\";}s:11:\"\0*\0cascades\";a:2:{i:0;s:8:\"children\";i:1;s:5:\"entry\";}s:9:\"\0*\0active\";b:0;s:10:\"\0*\0current\";b:0;s:10:\"\0*\0content\";N;s:11:\"\0*\0response\";N;s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0table\";s:11:\"pages_pages\";s:12:\"\0*\0titleName\";s:5:\"title\";s:8:\"\0*\0rules\";a:16:{s:6:\"str_id\";s:8:\"required\";s:5:\"title\";s:8:\"required\";s:4:\"slug\";s:8:\"required\";s:4:\"path\";s:8:\"required\";s:4:\"type\";s:8:\"required\";s:5:\"entry\";s:0:\"\";s:6:\"parent\";s:0:\"\";s:7:\"visible\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:5:\"exact\";s:0:\"\";s:4:\"home\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:12:\"theme_layout\";s:0:\"\";s:13:\"allowed_roles\";s:0:\"\";s:10:\"publish_at\";s:0:\"\";}s:9:\"\0*\0fields\";a:16:{i:0;s:6:\"str_id\";i:1;s:5:\"title\";i:2;s:4:\"slug\";i:3;s:4:\"path\";i:4;s:4:\"type\";i:5;s:5:\"entry\";i:6;s:6:\"parent\";i:7;s:7:\"visible\";i:8;s:7:\"enabled\";i:9;s:5:\"exact\";i:10;s:4:\"home\";i:11;s:10:\"meta_title\";i:12;s:16:\"meta_description\";i:13;s:12:\"theme_layout\";i:14;s:13:\"allowed_roles\";i:15;s:10:\"publish_at\";}s:8:\"\0*\0dates\";a:4:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"publish_at\";i:3;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:4:{i:0;s:4:\"type\";i:1;s:5:\"entry\";i:2;s:6:\"parent\";i:3;s:13:\"allowed_roles\";}s:23:\"\0*\0translatedAttributes\";a:5:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:4:\"path\";i:3;s:10:\"meta_title\";i:4;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesPagesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:12:{s:8:\"entry_id\";i:2;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:7:\"type_id\";i:1;s:7:\"enabled\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"sort_order\";i:2;s:6:\"str_id\";s:24:\"mPyyQlBo3dq8MELviT8Av4Hr\";s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:2:\"id\";i:2;}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:5:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:46:\"Anomaly\\PagesModule\\Page\\PageTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"pages_pages_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:2;s:5:\"title\";s:7:\"Contact\";s:4:\"slug\";s:7:\"contact\";s:4:\"path\";s:8:\"/contact\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:2:\"id\";i:2;}s:11:\"\0*\0original\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:2;s:5:\"title\";s:7:\"Contact\";s:4:\"slug\";s:7:\"contact\";s:4:\"path\";s:8:\"/contact\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:2:\"id\";i:2;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}s:4:\"type\";O:34:\"Anomaly\\PagesModule\\Type\\TypeModel\":48:{s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"pages\";}s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:11:\"pages_types\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:6:{s:4:\"name\";s:32:\"required|unique:pages_types,name\";s:4:\"slug\";s:32:\"required|unique:pages_types,slug\";s:11:\"description\";s:0:\"\";s:12:\"theme_layout\";s:8:\"required\";s:6:\"layout\";s:8:\"required\";s:7:\"handler\";s:8:\"required\";}s:9:\"\0*\0fields\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";i:3;s:12:\"theme_layout\";i:4;s:6:\"layout\";i:5;s:7:\"handler\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesTypesEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"pages_types_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:5:\"entry\";O:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\":48:{s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:19:\"pages_default_pages\";s:12:\"\0*\0titleName\";s:2:\"id\";s:8:\"\0*\0rules\";a:1:{s:7:\"content\";s:0:\"\";}s:9:\"\0*\0fields\";a:1:{i:0;s:7:\"content\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:7:\"content\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:10:\"sort_order\";i:2;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:10:\"sort_order\";i:2;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:76:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:32:\"pages_default_pages_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:8:\"entry_id\";i:2;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:119:\"<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:8:\"entry_id\";i:2;s:10:\"created_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:01\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:119:\"<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"parent\";N;s:8:\"children\";O:39:\"Anomaly\\PagesModule\\Page\\PageCollection\":1:{s:8:\"\0*\0items\";a:0:{}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}','a:16:{s:8:\"entry_id\";i:2;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel\";s:7:\"type_id\";i:1;s:7:\"enabled\";i:1;s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"str_id\";s:24:\"mPyyQlBo3dq8MELviT8Av4Hr\";s:5:\"title\";s:7:\"Contact\";s:4:\"slug\";s:7:\"contact\";s:4:\"path\";s:8:\"/contact\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;s:4:\"type\";a:13:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:01.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:01.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:6:\"layout\";s:56:\"<h1>{{ page.title }}</h1>\n\n{{ page.content.render|raw }}\";s:7:\"handler\";s:38:\"anomaly.extension.default_page_handler\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple page type.\";}s:5:\"entry\";a:8:{s:2:\"id\";i:2;s:10:\"sort_order\";i:2;s:10:\"created_at\";s:27:\"2022-05-04T07:57:01.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:01.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"content\";s:119:\"<p>Drop us a line! We\'d love to hear from you!</p><p><br></p>\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>\";}s:6:\"parent\";N;s:8:\"children\";a:0:{}s:13:\"allowed_roles\";a:0:{}}'),(3,'2022-05-04 07:57:03',NULL,1,'Anomaly\\PostsModule\\Post\\PostModel','213.252.217.93','O:34:\"Anomaly\\PostsModule\\Post\\PostModel\":50:{s:14:\"\0*\0versionable\";b:1;s:10:\"\0*\0content\";N;s:11:\"\0*\0response\";N;s:7:\"\0*\0with\";a:2:{i:0;s:5:\"entry\";i:1;s:12:\"translations\";}s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"entry\";}s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0table\";s:11:\"posts_posts\";s:12:\"\0*\0titleName\";s:5:\"title\";s:8:\"\0*\0rules\";a:14:{s:6:\"str_id\";s:34:\"required|unique:posts_posts,str_id\";s:5:\"title\";s:8:\"required\";s:7:\"summary\";s:0:\"\";s:4:\"slug\";s:32:\"required|unique:posts_posts,slug\";s:4:\"type\";s:8:\"required\";s:10:\"publish_at\";s:8:\"required\";s:6:\"author\";s:8:\"required\";s:5:\"entry\";s:8:\"required\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";s:8:\"category\";s:0:\"\";s:8:\"featured\";s:0:\"\";s:7:\"enabled\";s:0:\"\";s:4:\"tags\";s:0:\"\";}s:9:\"\0*\0fields\";a:14:{i:0;s:6:\"str_id\";i:1;s:5:\"title\";i:2;s:7:\"summary\";i:3;s:4:\"slug\";i:4;s:4:\"type\";i:5;s:10:\"publish_at\";i:6;s:6:\"author\";i:7;s:5:\"entry\";i:8;s:10:\"meta_title\";i:9;s:16:\"meta_description\";i:10;s:8:\"category\";i:11;s:8:\"featured\";i:12;s:7:\"enabled\";i:13;s:4:\"tags\";}s:8:\"\0*\0dates\";a:4:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"publish_at\";i:3;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:4:{i:0;s:4:\"type\";i:1;s:6:\"author\";i:2;s:5:\"entry\";i:3;s:8:\"category\";}s:23:\"\0*\0translatedAttributes\";a:5:{i:0;s:5:\"title\";i:1;s:7:\"summary\";i:2;s:4:\"slug\";i:3;s:10:\"meta_title\";i:4;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPostsEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:14:{s:10:\"publish_at\";O:13:\"Carbon\\Carbon\":3:{s:4:\"date\";s:26:\"2022-05-04 07:57:03.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:7:\"enabled\";i:1;s:7:\"type_id\";i:1;s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel\";s:11:\"category_id\";i:1;s:9:\"author_id\";i:1;s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"sort_order\";i:1;s:6:\"str_id\";s:16:\"IntDalDJqwkTdUzz\";s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:5:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPostsEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"posts_posts_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:1;s:5:\"title\";s:19:\"Welcome to PyroCMS!\";s:7:\"summary\";s:56:\"This is an example post to demonstrate the posts module.\";s:4:\"slug\";s:18:\"welcome-to-pyrocms\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:10:{s:6:\"locale\";s:2:\"en\";s:8:\"entry_id\";i:1;s:5:\"title\";s:19:\"Welcome to PyroCMS!\";s:7:\"summary\";s:56:\"This is an example post to demonstrate the posts module.\";s:4:\"slug\";s:18:\"welcome-to-pyrocms\";s:13:\"updated_by_id\";N;s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:2:\"id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}s:4:\"type\";O:34:\"Anomaly\\PostsModule\\Type\\TypeModel\":48:{s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"posts\";}s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:11:\"posts_types\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:7:{s:4:\"name\";s:32:\"required|unique:posts_types,name\";s:4:\"slug\";s:32:\"required|unique:posts_types,slug\";s:6:\"layout\";s:8:\"required\";s:12:\"theme_layout\";s:8:\"required\";s:11:\"description\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}s:9:\"\0*\0fields\";a:7:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:6:\"layout\";i:3;s:12:\"theme_layout\";i:4;s:11:\"description\";i:5;s:10:\"meta_title\";i:6;s:16:\"meta_description\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:4:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:10:\"meta_title\";i:3;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsTypesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:6:\"layout\";s:29:\"{{ post.content.render|raw }}\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:6:\"layout\";s:29:\"{{ post.content.render|raw }}\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsTypesEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"posts_types_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple post type.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple post type.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:8:\"category\";O:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\":48:{s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:16:\"posts_categories\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:5:{s:4:\"name\";s:37:\"required|unique:posts_categories,name\";s:4:\"slug\";s:37:\"required|unique:posts_categories,slug\";s:11:\"description\";s:0:\"\";s:10:\"meta_title\";s:0:\"\";s:16:\"meta_description\";s:0:\"\";}s:9:\"\0*\0fields\";a:5:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:11:\"description\";i:3;s:10:\"meta_title\";i:4;s:16:\"meta_description\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:4:{i:0;s:4:\"name\";i:1;s:11:\"description\";i:2;s:10:\"meta_title\";i:3;s:16:\"meta_description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:74:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsCategoriesEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:4:\"news\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:4:\"news\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:74:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsCategoriesEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:29:\"posts_categories_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:4:\"News\";s:11:\"description\";s:25:\"Company news and updates.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:4:\"News\";s:11:\"description\";s:25:\"Company news and updates.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"author\";N;s:5:\"entry\";O:64:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel\":48:{s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:19:\"posts_default_posts\";s:12:\"\0*\0titleName\";s:2:\"id\";s:8:\"\0*\0rules\";a:1:{s:7:\"content\";s:0:\"\";}s:9:\"\0*\0fields\";a:1:{i:0;s:7:\"content\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:1:{i:0;s:7:\"content\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:76:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:76:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:32:\"posts_default_posts_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:03\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}','a:17:{s:10:\"publish_at\";s:27:\"2022-05-04T07:57:03.000000Z\";s:7:\"enabled\";i:1;s:7:\"type_id\";i:1;s:8:\"entry_id\";i:1;s:10:\"entry_type\";s:64:\"Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel\";s:11:\"category_id\";i:1;s:9:\"author_id\";i:1;s:6:\"str_id\";s:16:\"IntDalDJqwkTdUzz\";s:5:\"title\";s:19:\"Welcome to PyroCMS!\";s:7:\"summary\";s:56:\"This is an example post to demonstrate the posts module.\";s:4:\"slug\";s:18:\"welcome-to-pyrocms\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;s:4:\"type\";a:14:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:03.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:03.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:7:\"default\";s:6:\"layout\";s:29:\"{{ post.content.render|raw }}\";s:12:\"theme_layout\";s:27:\"theme::layouts/default.twig\";s:4:\"name\";s:7:\"Default\";s:11:\"description\";s:19:\"A simple post type.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:8:\"category\";a:12:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:03.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:03.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:4:\"news\";s:4:\"name\";s:4:\"News\";s:11:\"description\";s:25:\"Company news and updates.\";s:10:\"meta_title\";N;s:16:\"meta_description\";N;}s:6:\"author\";N;s:5:\"entry\";a:8:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:03.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:03.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"content\";s:26:\"<p>Welcome to PyroCMS!</p>\";}}'),(4,'2022-05-04 08:25:44',1,1,'Anomaly\\FilesModule\\File\\FileModel','213.252.217.93','O:34:\"Anomaly\\FilesModule\\File\\FileModel\":48:{s:14:\"\0*\0versionable\";b:1;s:7:\"\0*\0with\";a:3:{i:0;s:4:\"disk\";i:1;s:6:\"folder\";i:2;s:5:\"entry\";}s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"entry\";}s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0table\";s:11:\"files_files\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:15:{s:4:\"name\";s:8:\"required\";s:4:\"disk\";s:8:\"required\";s:6:\"folder\";s:8:\"required\";s:9:\"extension\";s:8:\"required\";s:4:\"size\";s:8:\"required\";s:9:\"mime_type\";s:8:\"required\";s:5:\"entry\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:8:\"alt_text\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"str_id\";s:34:\"required|unique:files_files,str_id\";}s:9:\"\0*\0fields\";a:15:{i:0;s:4:\"name\";i:1;s:4:\"disk\";i:2;s:6:\"folder\";i:3;s:9:\"extension\";i:4;s:4:\"size\";i:5;s:9:\"mime_type\";i:6;s:5:\"entry\";i:7;s:8:\"keywords\";i:8;s:6:\"height\";i:9;s:5:\"width\";i:10;s:8:\"alt_text\";i:11;s:5:\"title\";i:12;s:7:\"caption\";i:13;s:11:\"description\";i:14;s:6:\"str_id\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:3:{i:0;s:4:\"disk\";i:1;s:6:\"folder\";i:2;s:5:\"entry\";}s:10:\"timestamps\";b:1;s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:17:{s:4:\"name\";s:7:\"map.jpg\";s:9:\"folder_id\";i:1;s:7:\"disk_id\";i:1;s:4:\"size\";i:605744;s:9:\"mime_type\";s:10:\"image/jpeg\";s:9:\"extension\";s:3:\"jpg\";s:10:\"entry_type\";s:58:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel\";s:10:\"deleted_at\";N;s:5:\"width\";i:2880;s:6:\"height\";i:1700;s:13:\"updated_by_id\";i:1;s:13:\"created_by_id\";i:1;s:10:\"sort_order\";i:1;s:6:\"str_id\";s:24:\"4knjGEcNWLPoFktAsuiDZyoZ\";s:10:\"updated_at\";s:19:\"2022-05-04 08:25:44\";s:10:\"created_at\";s:19:\"2022-05-04 08:25:44\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:0:{}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:3:{s:4:\"disk\";O:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\":48:{s:11:\"\0*\0cascades\";a:1:{i:0;s:7:\"folders\";}s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:11:\"files_disks\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:4:{s:4:\"name\";s:32:\"required|unique:files_disks,name\";s:4:\"slug\";s:32:\"required|unique:files_disks,slug\";s:7:\"adapter\";s:8:\"required\";s:11:\"description\";s:0:\"\";}s:9:\"\0*\0fields\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:7:\"adapter\";i:3;s:11:\"description\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesDisksEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:5:\"local\";s:7:\"adapter\";s:41:\"anomaly.extension.private_storage_adapter\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:5:\"local\";s:7:\"adapter\";s:41:\"anomaly.extension.private_storage_adapter\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesDisksEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"files_disks_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:5:\"Local\";s:11:\"description\";s:31:\"A local (private) storage disk.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:5:\"Local\";s:11:\"description\";s:31:\"A local (private) storage disk.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"folder\";O:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\":48:{s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"files\";}s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:13:\"files_folders\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:6:{s:4:\"disk\";s:8:\"required\";s:4:\"name\";s:8:\"required\";s:4:\"slug\";s:34:\"required|unique:files_folders,slug\";s:11:\"description\";s:0:\"\";s:13:\"allowed_types\";s:0:\"\";s:6:\"str_id\";s:36:\"required|unique:files_folders,str_id\";}s:9:\"\0*\0fields\";a:6:{i:0;s:4:\"disk\";i:1;s:4:\"name\";i:2;s:4:\"slug\";i:3;s:11:\"description\";i:4;s:13:\"allowed_types\";i:5;s:6:\"str_id\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:1:{i:0;s:4:\"disk\";}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:71:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesFoldersEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"disk_id\";i:1;s:4:\"slug\";s:6:\"images\";s:13:\"allowed_types\";s:49:\"a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}\";s:6:\"str_id\";s:24:\"oCLYQCfCAKYXDY3D1KXpw3pb\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"disk_id\";i:1;s:4:\"slug\";s:6:\"images\";s:13:\"allowed_types\";s:49:\"a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}\";s:6:\"str_id\";s:24:\"oCLYQCfCAKYXDY3D1KXpw3pb\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:71:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesFoldersEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:26:\"files_folders_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:6:\"Images\";s:11:\"description\";s:20:\"A folder for images.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:6:\"Images\";s:11:\"description\";s:20:\"A folder for images.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:5:\"entry\";N;}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}','a:15:{s:4:\"name\";s:7:\"map.jpg\";s:9:\"folder_id\";i:1;s:7:\"disk_id\";i:1;s:4:\"size\";i:605744;s:9:\"mime_type\";s:10:\"image/jpeg\";s:9:\"extension\";s:3:\"jpg\";s:10:\"entry_type\";s:58:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel\";s:5:\"width\";i:2880;s:6:\"height\";i:1700;s:6:\"str_id\";s:24:\"4knjGEcNWLPoFktAsuiDZyoZ\";s:4:\"path\";s:14:\"images/map.jpg\";s:8:\"location\";s:22:\"local://images/map.jpg\";s:4:\"disk\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:5:\"local\";s:7:\"adapter\";s:41:\"anomaly.extension.private_storage_adapter\";s:4:\"name\";s:5:\"Local\";s:11:\"description\";s:31:\"A local (private) storage disk.\";}s:6:\"folder\";a:13:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"disk_id\";i:1;s:4:\"slug\";s:6:\"images\";s:13:\"allowed_types\";s:49:\"a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}\";s:6:\"str_id\";s:24:\"oCLYQCfCAKYXDY3D1KXpw3pb\";s:4:\"name\";s:6:\"Images\";s:11:\"description\";s:20:\"A folder for images.\";}s:5:\"entry\";N;}'),(5,'2022-05-04 08:25:44',1,1,'Anomaly\\FilesModule\\File\\FileModel','213.252.217.93','O:34:\"Anomaly\\FilesModule\\File\\FileModel\":48:{s:14:\"\0*\0versionable\";b:1;s:7:\"\0*\0with\";a:3:{i:0;s:4:\"disk\";i:1;s:6:\"folder\";i:2;s:5:\"entry\";}s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"entry\";}s:13:\"\0*\0searchable\";b:1;s:8:\"\0*\0table\";s:11:\"files_files\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:15:{s:4:\"name\";s:8:\"required\";s:4:\"disk\";s:8:\"required\";s:6:\"folder\";s:8:\"required\";s:9:\"extension\";s:8:\"required\";s:4:\"size\";s:8:\"required\";s:9:\"mime_type\";s:8:\"required\";s:5:\"entry\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:8:\"alt_text\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"str_id\";s:34:\"required|unique:files_files,str_id\";}s:9:\"\0*\0fields\";a:15:{i:0;s:4:\"name\";i:1;s:4:\"disk\";i:2;s:6:\"folder\";i:3;s:9:\"extension\";i:4;s:4:\"size\";i:5;s:9:\"mime_type\";i:6;s:5:\"entry\";i:7;s:8:\"keywords\";i:8;s:6:\"height\";i:9;s:5:\"width\";i:10;s:8:\"alt_text\";i:11;s:5:\"title\";i:12;s:7:\"caption\";i:13;s:11:\"description\";i:14;s:6:\"str_id\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:3:{i:0;s:4:\"disk\";i:1;s:6:\"folder\";i:2;s:5:\"entry\";}s:10:\"timestamps\";b:1;s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:13:\"\0*\0attributes\";a:17:{s:4:\"name\";s:7:\"map.jpg\";s:9:\"folder_id\";i:1;s:7:\"disk_id\";i:1;s:4:\"size\";i:605744;s:9:\"mime_type\";s:10:\"image/jpeg\";s:9:\"extension\";s:3:\"jpg\";s:10:\"entry_type\";s:58:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel\";s:10:\"deleted_at\";N;s:5:\"width\";i:2880;s:6:\"height\";i:1700;s:13:\"updated_by_id\";i:1;s:13:\"created_by_id\";i:1;s:10:\"sort_order\";i:1;s:6:\"str_id\";s:24:\"4knjGEcNWLPoFktAsuiDZyoZ\";s:10:\"updated_at\";s:19:\"2022-05-04 08:25:44\";s:10:\"created_at\";s:19:\"2022-05-04 08:25:44\";s:2:\"id\";i:1;}s:11:\"\0*\0original\";a:17:{s:4:\"name\";s:7:\"map.jpg\";s:9:\"folder_id\";i:1;s:7:\"disk_id\";i:1;s:4:\"size\";i:605744;s:9:\"mime_type\";s:10:\"image/jpeg\";s:9:\"extension\";s:3:\"jpg\";s:10:\"entry_type\";s:58:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel\";s:10:\"deleted_at\";N;s:5:\"width\";i:2880;s:6:\"height\";i:1700;s:13:\"updated_by_id\";i:1;s:13:\"created_by_id\";i:1;s:10:\"sort_order\";i:1;s:6:\"str_id\";s:24:\"4knjGEcNWLPoFktAsuiDZyoZ\";s:10:\"updated_at\";s:19:\"2022-05-04 08:25:44\";s:10:\"created_at\";s:19:\"2022-05-04 08:25:44\";s:2:\"id\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:3:{s:4:\"disk\";O:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\":48:{s:11:\"\0*\0cascades\";a:1:{i:0;s:7:\"folders\";}s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:11:\"files_disks\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:4:{s:4:\"name\";s:32:\"required|unique:files_disks,name\";s:4:\"slug\";s:32:\"required|unique:files_disks,slug\";s:7:\"adapter\";s:8:\"required\";s:11:\"description\";s:0:\"\";}s:9:\"\0*\0fields\";a:4:{i:0;s:4:\"name\";i:1;s:4:\"slug\";i:2;s:7:\"adapter\";i:3;s:11:\"description\";}s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:69:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesDisksEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:5:\"local\";s:7:\"adapter\";s:41:\"anomaly.extension.private_storage_adapter\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:5:\"local\";s:7:\"adapter\";s:41:\"anomaly.extension.private_storage_adapter\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:69:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesDisksEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:24:\"files_disks_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:5:\"Local\";s:11:\"description\";s:31:\"A local (private) storage disk.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:5:\"Local\";s:11:\"description\";s:31:\"A local (private) storage disk.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:6:\"folder\";O:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\":48:{s:7:\"\0*\0with\";a:1:{i:0;s:12:\"translations\";}s:11:\"\0*\0cascades\";a:1:{i:0;s:5:\"files\";}s:13:\"\0*\0searchable\";b:0;s:14:\"\0*\0versionable\";b:0;s:8:\"\0*\0table\";s:13:\"files_folders\";s:12:\"\0*\0titleName\";s:4:\"name\";s:8:\"\0*\0rules\";a:6:{s:4:\"disk\";s:8:\"required\";s:4:\"name\";s:8:\"required\";s:4:\"slug\";s:34:\"required|unique:files_folders,slug\";s:11:\"description\";s:0:\"\";s:13:\"allowed_types\";s:0:\"\";s:6:\"str_id\";s:36:\"required|unique:files_folders,str_id\";}s:9:\"\0*\0fields\";a:6:{i:0;s:4:\"disk\";i:1;s:4:\"name\";i:2;s:4:\"slug\";i:3;s:11:\"description\";i:4;s:13:\"allowed_types\";i:5;s:6:\"str_id\";}s:8:\"\0*\0dates\";a:3:{i:0;s:10:\"created_at\";i:1;s:10:\"updated_at\";i:2;s:10:\"deleted_at\";}s:16:\"\0*\0relationships\";a:1:{i:0;s:4:\"disk\";}s:23:\"\0*\0translatedAttributes\";a:2:{i:0;s:4:\"name\";i:1;s:11:\"description\";}s:24:\"\0*\0translationForeignKey\";s:8:\"entry_id\";s:19:\"\0*\0translationModel\";s:71:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesFoldersEntryTranslationsModel\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:2:{i:0;s:12:\"translations\";i:1;s:6:\"stream\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"disk_id\";i:1;s:4:\"slug\";s:6:\"images\";s:13:\"allowed_types\";s:49:\"a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}\";s:6:\"str_id\";s:24:\"oCLYQCfCAKYXDY3D1KXpw3pb\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"disk_id\";i:1;s:4:\"slug\";s:6:\"images\";s:13:\"allowed_types\";s:49:\"a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}\";s:6:\"str_id\";s:24:\"oCLYQCfCAKYXDY3D1KXpw3pb\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:1:{s:10:\"deleted_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:12:\"translations\";O:49:\"Anomaly\\Streams\\Platform\\Model\\EloquentCollection\":1:{s:8:\"\0*\0items\";a:1:{i:0;O:71:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesFoldersEntryTranslationsModel\":35:{s:15:\"\0*\0cacheMinutes\";i:99999;s:8:\"\0*\0table\";s:26:\"files_folders_translations\";s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:1:{i:0;s:6:\"parent\";}s:6:\"\0*\0ttl\";N;s:23:\"\0*\0searchableAttributes\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}s:11:\"\0*\0titleKey\";s:2:\"id\";s:19:\"\0*\0translationModel\";N;s:14:\"\0*\0observables\";a:4:{i:0;s:16:\"updatingMultiple\";i:1;s:15:\"updatedMultiple\";i:2;s:16:\"deletingMultiple\";i:3;s:15:\"deletedMultiple\";}s:11:\"\0*\0cascades\";a:0:{}s:12:\"\0*\0restricts\";a:0:{}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:6:\"Images\";s:11:\"description\";s:20:\"A folder for images.\";}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:1;s:8:\"entry_id\";i:1;s:10:\"created_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:19:\"2022-05-04 07:57:05\";s:13:\"updated_by_id\";N;s:6:\"locale\";s:2:\"en\";s:4:\"name\";s:6:\"Images\";s:11:\"description\";s:20:\"A folder for images.\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}}}}}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";N;s:16:\"\0*\0forceDeleting\";b:0;}s:5:\"entry\";N;}s:10:\"\0*\0touches\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:23:\"\0*\0translatedAttributes\";a:0:{}s:16:\"\0*\0scoutMetadata\";a:0:{}s:21:\"\0*\0versioningDisabled\";b:0;s:22:\"\0*\0versionedAttributes\";a:0:{}s:24:\"\0*\0versionComparisonData\";a:0:{}s:25:\"\0*\0nonVersionedAttributes\";a:0:{}s:21:\"\0*\0versionDifferences\";a:15:{s:4:\"name\";s:7:\"map.jpg\";s:9:\"folder_id\";i:1;s:7:\"disk_id\";i:1;s:4:\"size\";i:605744;s:9:\"mime_type\";s:10:\"image/jpeg\";s:9:\"extension\";s:3:\"jpg\";s:10:\"entry_type\";s:58:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel\";s:5:\"width\";i:2880;s:6:\"height\";i:1700;s:6:\"str_id\";s:24:\"4knjGEcNWLPoFktAsuiDZyoZ\";s:4:\"path\";s:14:\"images/map.jpg\";s:8:\"location\";s:22:\"local://images/map.jpg\";s:4:\"disk\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:5:\"local\";s:7:\"adapter\";s:41:\"anomaly.extension.private_storage_adapter\";s:4:\"name\";s:5:\"Local\";s:11:\"description\";s:31:\"A local (private) storage disk.\";}s:6:\"folder\";a:13:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"disk_id\";i:1;s:4:\"slug\";s:6:\"images\";s:13:\"allowed_types\";s:49:\"a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}\";s:6:\"str_id\";s:24:\"oCLYQCfCAKYXDY3D1KXpw3pb\";s:4:\"name\";s:6:\"Images\";s:11:\"description\";s:20:\"A folder for images.\";}s:5:\"entry\";N;}s:16:\"\0*\0forceDeleting\";b:0;}','a:15:{s:4:\"name\";s:7:\"map.jpg\";s:9:\"folder_id\";i:1;s:7:\"disk_id\";i:1;s:4:\"size\";i:605744;s:9:\"mime_type\";s:10:\"image/jpeg\";s:9:\"extension\";s:3:\"jpg\";s:10:\"entry_type\";s:58:\"Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel\";s:5:\"width\";i:2880;s:6:\"height\";i:1700;s:6:\"str_id\";s:24:\"4knjGEcNWLPoFktAsuiDZyoZ\";s:4:\"path\";s:14:\"images/map.jpg\";s:8:\"location\";s:22:\"local://images/map.jpg\";s:4:\"disk\";a:11:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:4:\"slug\";s:5:\"local\";s:7:\"adapter\";s:41:\"anomaly.extension.private_storage_adapter\";s:4:\"name\";s:5:\"Local\";s:11:\"description\";s:31:\"A local (private) storage disk.\";}s:6:\"folder\";a:13:{s:2:\"id\";i:1;s:10:\"sort_order\";i:1;s:10:\"created_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"created_by_id\";N;s:10:\"updated_at\";s:27:\"2022-05-04T07:57:05.000000Z\";s:13:\"updated_by_id\";N;s:10:\"deleted_at\";N;s:7:\"disk_id\";i:1;s:4:\"slug\";s:6:\"images\";s:13:\"allowed_types\";s:49:\"a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}\";s:6:\"str_id\";s:24:\"oCLYQCfCAKYXDY3D1KXpw3pb\";s:4:\"name\";s:6:\"Images\";s:11:\"description\";s:20:\"A folder for images.\";}s:5:\"entry\";N;}');
/*!40000 ALTER TABLE `default_streams_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_telescope_entries`
--

DROP TABLE IF EXISTS `default_telescope_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_telescope_entries` (
  `sequence` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb3_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sequence`),
  UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  KEY `telescope_entries_batch_id_index` (`batch_id`),
  KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  KEY `telescope_entries_family_hash_index` (`family_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_telescope_entries`
--

LOCK TABLES `default_telescope_entries` WRITE;
/*!40000 ALTER TABLE `default_telescope_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_telescope_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_telescope_entries_tags`
--

DROP TABLE IF EXISTS `default_telescope_entries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  KEY `telescope_entries_tags_tag_index` (`tag`),
  CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `default_telescope_entries` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_telescope_entries_tags`
--

LOCK TABLES `default_telescope_entries_tags` WRITE;
/*!40000 ALTER TABLE `default_telescope_entries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_telescope_entries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_telescope_monitoring`
--

DROP TABLE IF EXISTS `default_telescope_monitoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_telescope_monitoring`
--

LOCK TABLES `default_telescope_monitoring` WRITE;
/*!40000 ALTER TABLE `default_telescope_monitoring` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_telescope_monitoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_url_link_type_urls`
--

DROP TABLE IF EXISTS `default_url_link_type_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_url_link_type_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_url_link_type_urls`
--

LOCK TABLES `default_url_link_type_urls` WRITE;
/*!40000 ALTER TABLE `default_url_link_type_urls` DISABLE KEYS */;
INSERT INTO `default_url_link_type_urls` VALUES (1,1,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,'http://pyrocms.com/'),(2,2,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,'http://pyrocms.com/documentation');
/*!40000 ALTER TABLE `default_url_link_type_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_url_link_type_urls_translations`
--

DROP TABLE IF EXISTS `default_url_link_type_urls_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_url_link_type_urls_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `url_link_type_urls_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_url_link_type_urls_translations`
--

LOCK TABLES `default_url_link_type_urls_translations` WRITE;
/*!40000 ALTER TABLE `default_url_link_type_urls_translations` DISABLE KEYS */;
INSERT INTO `default_url_link_type_urls_translations` VALUES (1,1,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,'en','PyroCMS.com',NULL),(2,2,'2022-05-04 07:57:05',NULL,'2022-05-04 07:57:05',NULL,'en','Documentation',NULL);
/*!40000 ALTER TABLE `default_url_link_type_urls_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_users_roles`
--

DROP TABLE IF EXISTS `default_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f0935e4cd5920aa6c7c996a5ee53a70f` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_users_roles`
--

LOCK TABLES `default_users_roles` WRITE;
/*!40000 ALTER TABLE `default_users_roles` DISABLE KEYS */;
INSERT INTO `default_users_roles` VALUES (1,1,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,NULL,'admin',NULL),(2,2,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,NULL,'user',NULL),(3,3,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,NULL,'guest',NULL);
/*!40000 ALTER TABLE `default_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_users_roles_translations`
--

DROP TABLE IF EXISTS `default_users_roles_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_users_roles_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_roles_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_users_roles_translations`
--

LOCK TABLES `default_users_roles_translations` WRITE;
/*!40000 ALTER TABLE `default_users_roles_translations` DISABLE KEYS */;
INSERT INTO `default_users_roles_translations` VALUES (1,1,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,'en','Admin','The super admin role.'),(2,2,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,'en','User','The default user role.'),(3,3,'2022-05-04 07:57:04',NULL,'2022-05-04 07:57:04',NULL,'en','Guest','The fallback role for non-users.');
/*!40000 ALTER TABLE `default_users_roles_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_users_users`
--

DROP TABLE IF EXISTS `default_users_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_users_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) DEFAULT 0,
  `enabled` tinyint(1) DEFAULT 1,
  `permissions` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `reset_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `7647966b7343c29048673252e490f736` (`email`),
  UNIQUE KEY `8613985ec49eb8f757ae6439e879bb2a` (`username`),
  UNIQUE KEY `2723d092b63885e0d7c260cc007e8b9d` (`str_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_users_users`
--

LOCK TABLES `default_users_users` WRITE;
/*!40000 ALTER TABLE `default_users_users` DISABLE KEYS */;
INSERT INTO `default_users_users` VALUES (1,1,'2022-05-04 07:57:04',1,'2022-09-21 16:04:29',1,NULL,'mindaugas.simkus@gmail.com','mindaugas','$2y$10$e4sifIQMHz7bpfMjDQghvu/IOPqEQp3vYx7kC8XFI1whZ.3PpBCCS','Administrator',NULL,NULL,1,1,NULL,'2022-09-21 15:46:19',NULL,NULL,NULL,'2022-09-21 16:04:29','213.252.217.93','0zpg9i3C4xxSPo9cu144fM14'),(2,2,'2022-05-04 07:57:04',NULL,'2022-05-04 08:22:12',NULL,'2022-05-04 08:22:12','demo@pyrocms.com','demo','$2y$10$IrDe.8PKr.jKqbwP8MXUaumkb4qKAjptCxaYLsvT99mF3gqrgi3V2','Demo User',NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6vkD4OZsfGmRH68XvJAVxeYe');
/*!40000 ALTER TABLE `default_users_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_users_users_roles`
--

DROP TABLE IF EXISTS `default_users_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_users_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `657a222530265bc0573ef5330b180325` (`entry_id`,`related_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_users_users_roles`
--

LOCK TABLES `default_users_users_roles` WRITE;
/*!40000 ALTER TABLE `default_users_users_roles` DISABLE KEYS */;
INSERT INTO `default_users_users_roles` VALUES (1,2,2,NULL),(2,1,1,NULL);
/*!40000 ALTER TABLE `default_users_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_wysiwyg_block_blocks`
--

DROP TABLE IF EXISTS `default_wysiwyg_block_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_wysiwyg_block_blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_wysiwyg_block_blocks`
--

LOCK TABLES `default_wysiwyg_block_blocks` WRITE;
/*!40000 ALTER TABLE `default_wysiwyg_block_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_wysiwyg_block_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_wysiwyg_block_blocks_translations`
--

DROP TABLE IF EXISTS `default_wysiwyg_block_blocks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_wysiwyg_block_blocks_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wysiwyg_block_blocks_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_wysiwyg_block_blocks_translations`
--

LOCK TABLES `default_wysiwyg_block_blocks_translations` WRITE;
/*!40000 ALTER TABLE `default_wysiwyg_block_blocks_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_wysiwyg_block_blocks_translations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-21 17:30:32
