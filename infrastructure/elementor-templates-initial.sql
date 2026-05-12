/*M!999999\- enable the sandbox mode */ 

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `type_status_author` (`post_type`,`post_status`,`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=7264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES
(7262,0,'2026-05-12 08:25:39','2026-05-12 13:25:39','','Yakiba — Blog Archive','','publish','closed','closed','','yakiba-blog-archive','','','2026-05-12 08:25:39','2026-05-12 13:25:39','',0,'https://yakiba.com/?elementor_library=yakiba-blog-archive',0,'elementor_library','',0),
(7263,0,'2026-05-12 08:31:25','2026-05-12 13:31:25','','Yakiba — Single Article','','publish','closed','closed','','yakiba-single-article','','','2026-05-12 08:31:25','2026-05-12 13:31:25','',0,'https://yakiba.com/?elementor_library=yakiba-single-article',0,'elementor_library','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*M!999999\- enable the sandbox mode */ 

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
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=76285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES
(76231,7262,'_elementor_template_type','archive'),
(76232,7262,'_elementor_edit_mode','builder'),
(76233,7262,'_elementor_version','4.0.7'),
(76234,7262,'_elementor_conditions','a:1:{i:0;s:32:\"include/archive/post_archive/all\";}'),
(76235,7262,'_elementor_data','[{\"id\":\"aaa1001\",\"elType\":\"section\",\"settings\":{\"background_background\":\"classic\",\"background_color\":\"#000000\",\"padding\":{\"unit\":\"px\",\"top\":\"100\",\"right\":\"20\",\"bottom\":\"60\",\"left\":\"20\",\"isLinked\":false},\"structure\":\"10\"},\"elements\":[{\"id\":\"aaa1002\",\"elType\":\"column\",\"settings\":{\"_column_size\":100,\"_inline_size\":null},\"elements\":[{\"id\":\"aaa1003\",\"elType\":\"widget\",\"widgetType\":\"heading\",\"settings\":{\"title\":\"ARTICLES\",\"header_size\":\"h1\",\"align\":\"center\",\"title_color\":\"#ffffff\",\"typography_typography\":\"custom\",\"typography_font_size\":{\"unit\":\"px\",\"size\":64},\"typography_letter_spacing\":{\"unit\":\"px\",\"size\":8},\"typography_text_transform\":\"uppercase\"}},{\"id\":\"aaa1004\",\"elType\":\"widget\",\"widgetType\":\"heading\",\"settings\":{\"title\":\"歴史と鍛冶\",\"header_size\":\"h3\",\"align\":\"center\",\"title_color\":\"#c41e3a\",\"typography_typography\":\"custom\",\"typography_font_size\":{\"unit\":\"px\",\"size\":22},\"_margin\":{\"unit\":\"px\",\"top\":\"10\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}}}],\"isInner\":false}],\"isInner\":false},{\"id\":\"aaa2001\",\"elType\":\"section\",\"settings\":{\"background_background\":\"classic\",\"background_color\":\"#0a0a0a\",\"padding\":{\"unit\":\"px\",\"top\":\"80\",\"right\":\"20\",\"bottom\":\"100\",\"left\":\"20\",\"isLinked\":false},\"structure\":\"10\"},\"elements\":[{\"id\":\"aaa2002\",\"elType\":\"column\",\"settings\":{\"_column_size\":100,\"_inline_size\":null},\"elements\":[{\"id\":\"aaa2003\",\"elType\":\"widget\",\"widgetType\":\"heading\",\"settings\":{\"title\":\"[Posts widget will be added here via GUI]\",\"header_size\":\"h4\",\"align\":\"center\",\"title_color\":\"#666666\"}}],\"isInner\":false}],\"isInner\":false}]\n'),
(76251,7262,'_elementor_pro_version','4.0.4'),
(76252,7262,'_wp_page_template','default'),
(76253,7262,'site-post-title','disabled'),
(76254,7262,'ast-title-bar-display','disabled'),
(76255,7262,'ast-featured-img','disabled'),
(76256,7262,'site-content-layout','page-builder'),
(76257,7262,'site-sidebar-layout','no-sidebar'),
(76269,7262,'_elementor_location','archive'),
(76280,7262,'_elementor_page_assets','a:2:{s:6:\"styles\";a:1:{i:0;s:14:\"widget-heading\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(76282,7262,'_elementor_css','a:6:{s:4:\"time\";i:1778593691;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(76283,7262,'_elementor_element_cache','{\"timeout\":1778662091,\"value\":{\"content\":\"\\t\\t<section class=\\\"elementor-section elementor-top-section elementor-element elementor-element-aaa1001 elementor-section-boxed elementor-section-height-default elementor-section-height-default\\\" data-id=\\\"aaa1001\\\" data-element_type=\\\"section\\\" data-e-type=\\\"section\\\" data-settings=\\\"{&quot;background_background&quot;:&quot;classic&quot;}\\\">\\n\\t\\t\\t\\t\\t\\t<div class=\\\"elementor-container elementor-column-gap-default\\\">\\n\\t\\t\\t\\t\\t<div class=\\\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-aaa1002\\\" data-id=\\\"aaa1002\\\" data-element_type=\\\"column\\\" data-e-type=\\\"column\\\">\\n\\t\\t\\t<div class=\\\"elementor-widget-wrap elementor-element-populated\\\">\\n\\t\\t\\t\\t\\t\\t<div class=\\\"elementor-element elementor-element-aaa1003 elementor-widget elementor-widget-heading\\\" data-id=\\\"aaa1003\\\" data-element_type=\\\"widget\\\" data-e-type=\\\"widget\\\" data-widget_type=\\\"heading.default\\\">\\n\\t\\t\\t\\t<div class=\\\"elementor-widget-container\\\">\\n\\t\\t\\t\\t\\t<h1 class=\\\"elementor-heading-title elementor-size-default\\\">ARTICLES<\\/h1>\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<div class=\\\"elementor-element elementor-element-aaa1004 elementor-widget elementor-widget-heading\\\" data-id=\\\"aaa1004\\\" data-element_type=\\\"widget\\\" data-e-type=\\\"widget\\\" data-widget_type=\\\"heading.default\\\">\\n\\t\\t\\t\\t<div class=\\\"elementor-widget-container\\\">\\n\\t\\t\\t\\t\\t<h3 class=\\\"elementor-heading-title elementor-size-default\\\">\\u6b74\\u53f2\\u3068\\u935b\\u51b6<\\/h3>\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t<\\/div>\\n\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t<\\/section>\\n\\t\\t\\t\\t<section class=\\\"elementor-section elementor-top-section elementor-element elementor-element-aaa2001 elementor-section-boxed elementor-section-height-default elementor-section-height-default\\\" data-id=\\\"aaa2001\\\" data-element_type=\\\"section\\\" data-e-type=\\\"section\\\" data-settings=\\\"{&quot;background_background&quot;:&quot;classic&quot;}\\\">\\n\\t\\t\\t\\t\\t\\t<div class=\\\"elementor-container elementor-column-gap-default\\\">\\n\\t\\t\\t\\t\\t<div class=\\\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-aaa2002\\\" data-id=\\\"aaa2002\\\" data-element_type=\\\"column\\\" data-e-type=\\\"column\\\">\\n\\t\\t\\t<div class=\\\"elementor-widget-wrap elementor-element-populated\\\">\\n\\t\\t\\t\\t\\t\\t<div class=\\\"elementor-element elementor-element-aaa2003 elementor-widget elementor-widget-heading\\\" data-id=\\\"aaa2003\\\" data-element_type=\\\"widget\\\" data-e-type=\\\"widget\\\" data-widget_type=\\\"heading.default\\\">\\n\\t\\t\\t\\t<div class=\\\"elementor-widget-container\\\">\\n\\t\\t\\t\\t\\t<h4 class=\\\"elementor-heading-title elementor-size-default\\\">[Posts widget will be added here via GUI]<\\/h4>\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t<\\/div>\\n\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t<\\/section>\\n\\t\\t\",\"scripts\":[],\"styles\":[]}}'),
(76236,7263,'_elementor_template_type','single-post'),
(76237,7263,'_elementor_edit_mode','builder'),
(76238,7263,'_elementor_version','4.0.7'),
(76239,7263,'_elementor_conditions','a:1:{i:0;s:25:\"include/singular/post/all\";}'),
(76240,7263,'_elementor_data','[{\"id\":\"bbb1001\",\"elType\":\"section\",\"settings\":{\"background_background\":\"classic\",\"background_color\":\"#000000\",\"padding\":{\"unit\":\"px\",\"top\":\"120\",\"right\":\"20\",\"bottom\":\"120\",\"left\":\"20\",\"isLinked\":false},\"structure\":\"10\",\"content_width\":{\"unit\":\"px\",\"size\":800}},\"elements\":[{\"id\":\"bbb1002\",\"elType\":\"column\",\"settings\":{\"_column_size\":100,\"_inline_size\":null},\"elements\":[{\"id\":\"bbb1003\",\"elType\":\"widget\",\"widgetType\":\"heading\",\"settings\":{\"title\":\"[Post Title + Featured Image will be added here via GUI]\",\"header_size\":\"h4\",\"align\":\"center\",\"title_color\":\"#666666\"}}],\"isInner\":false}],\"isInner\":false},{\"id\":\"bbb2001\",\"elType\":\"section\",\"settings\":{\"background_background\":\"classic\",\"background_color\":\"#111111\",\"padding\":{\"unit\":\"px\",\"top\":\"80\",\"right\":\"40\",\"bottom\":\"80\",\"left\":\"40\",\"isLinked\":false},\"structure\":\"10\",\"content_width\":{\"unit\":\"px\",\"size\":800}},\"elements\":[{\"id\":\"bbb2002\",\"elType\":\"column\",\"settings\":{\"_column_size\":100,\"_inline_size\":null},\"elements\":[{\"id\":\"bbb2003\",\"elType\":\"widget\",\"widgetType\":\"heading\",\"settings\":{\"title\":\"[Post Content will be added here via GUI]\",\"header_size\":\"h4\",\"align\":\"center\",\"title_color\":\"#666666\"}}],\"isInner\":false}],\"isInner\":false}]\n'),
(76258,7263,'_elementor_pro_version','4.0.4'),
(76259,7263,'_wp_page_template','default'),
(76260,7263,'site-post-title','disabled'),
(76261,7263,'ast-title-bar-display','disabled'),
(76262,7263,'ast-featured-img','disabled'),
(76263,7263,'site-content-layout','page-builder'),
(76264,7263,'site-sidebar-layout','no-sidebar'),
(76270,7263,'_elementor_location','single');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

