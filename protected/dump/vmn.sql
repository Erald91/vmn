-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2016 at 08:19 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vmn`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
`id` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `module` varchar(100) DEFAULT '',
  `object_model` varchar(100) DEFAULT '',
  `object_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `class`, `module`, `object_model`, `object_id`) VALUES
(1, 'humhub\\modules\\space\\activities\\Created', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(2, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 1),
(3, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(4, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(5, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 2),
(6, 'humhub\\modules\\comment\\activities\\NewComment', 'comment', 'humhub\\modules\\comment\\models\\Comment', 1),
(7, 'humhub\\modules\\comment\\activities\\NewComment', 'comment', 'humhub\\modules\\comment\\models\\Comment', 2),
(8, 'humhub\\modules\\like\\activities\\Liked', 'like', 'humhub\\modules\\like\\models\\Like', 1),
(9, 'humhub\\modules\\like\\activities\\Liked', 'like', 'humhub\\modules\\like\\models\\Like', 2),
(10, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(11, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(12, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`id` int(11) NOT NULL,
  `message` text,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `message`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Nike – Just buy it. ;Wink;', 'humhub\\modules\\post\\models\\Post', 2, '2016-10-12 12:14:27', 2, '2016-10-12 12:14:27', 2),
(2, 'Calvin Klein – Between love and madness lies obsession.', 'humhub\\modules\\post\\models\\Post', 2, '2016-10-12 12:14:28', 3, '2016-10-12 12:14:28', 3);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
`id` int(11) NOT NULL,
  `guid` varchar(45) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `sticked` tinyint(4) DEFAULT NULL,
  `archived` tinytext,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `guid`, `object_model`, `object_id`, `visibility`, `sticked`, `archived`, `created_at`, `created_by`, `updated_at`, `updated_by`, `contentcontainer_id`) VALUES
(1, 'c2e691d9-59bc-4c0d-931e-91dd8c679154', 'humhub\\modules\\activity\\models\\Activity', 1, 1, 0, '0', '2016-10-12 12:14:15', 1, '2016-10-12 12:14:15', 1, 2),
(2, 'dac44b28-667d-43f7-862e-db2a3f989634', 'humhub\\modules\\post\\models\\Post', 1, 1, 0, '0', '2016-10-12 12:14:15', 1, '2016-10-12 12:14:15', 1, 2),
(3, '7f953d8b-d114-4e89-b3a6-2c9a9b94f446', 'humhub\\modules\\activity\\models\\Activity', 2, 1, 0, '0', '2016-10-12 12:14:15', 1, '2016-10-12 12:14:15', 1, 2),
(4, '626f01e3-764e-4a60-9110-5c84109045b3', 'humhub\\modules\\activity\\models\\Activity', 3, 0, 0, '0', '2016-10-12 12:14:23', 2, '2016-10-12 12:14:23', 1, 2),
(5, '3566ba39-f494-4d83-a035-e67699fa73c1', 'humhub\\modules\\activity\\models\\Activity', 4, 0, 0, '0', '2016-10-12 12:14:25', 3, '2016-10-12 12:14:25', 1, 2),
(6, '5850a50a-f53d-470b-86e1-b43521d3e013', 'humhub\\modules\\post\\models\\Post', 2, 0, 0, '0', '2016-10-12 12:14:27', 1, '2016-10-12 12:14:27', 1, 2),
(7, '1a1c7f89-c56a-42d8-81ca-ca7b907f08e4', 'humhub\\modules\\activity\\models\\Activity', 5, 0, 0, '0', '2016-10-12 12:14:27', 1, '2016-10-12 12:14:27', 1, 2),
(8, 'baca7e15-45f3-4e35-8ac4-37101f320f73', 'humhub\\modules\\activity\\models\\Activity', 6, 0, 0, '0', '2016-10-12 12:14:27', 2, '2016-10-12 12:14:27', 2, 2),
(9, '10857e28-39ee-428e-8f3e-0f6fe18e2931', 'humhub\\modules\\activity\\models\\Activity', 7, 0, 0, '0', '2016-10-12 12:14:28', 3, '2016-10-12 12:14:28', 3, 2),
(10, 'fb9506df-1819-447f-8318-808be2f6aad6', 'humhub\\modules\\activity\\models\\Activity', 8, 0, 0, '0', '2016-10-12 12:14:29', 3, '2016-10-12 12:14:29', 3, 2),
(11, '7d9292a8-a258-412b-ae66-80512472237b', 'humhub\\modules\\activity\\models\\Activity', 9, 0, 0, '0', '2016-10-12 12:14:29', 3, '2016-10-12 12:14:29', 3, 2),
(12, 'd54cd2cf-529a-4719-857d-2b8c5b664dec', 'humhub\\modules\\activity\\models\\Activity', 10, 0, 0, '0', '2016-10-12 18:53:19', NULL, '2016-10-12 18:53:19', NULL, 2),
(13, 'd1b3162f-fb50-4635-8dfb-297de9f4db3d', 'humhub\\modules\\activity\\models\\Activity', 11, 0, 0, '0', '2016-10-13 13:01:42', NULL, '2016-10-13 13:01:42', NULL, 2),
(14, '26c2ed1c-551d-4839-95c2-1bd8a0a95eb8', 'humhub\\modules\\activity\\models\\Activity', 12, 0, 0, '0', '2016-10-13 19:31:50', 6, '2016-10-13 19:31:50', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `contentcontainer`
--

CREATE TABLE IF NOT EXISTS `contentcontainer` (
`id` int(11) NOT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `pk` int(11) DEFAULT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contentcontainer`
--

INSERT INTO `contentcontainer` (`id`, `guid`, `class`, `pk`, `owner_user_id`, `wall_id`) VALUES
(1, '304df778-f701-4dac-9cdf-a41f8418cbcd', 'humhub\\modules\\user\\models\\User', 1, 1, 1),
(2, 'cf3fa11f-0f58-4b6e-8b03-60f931a95d79', 'humhub\\modules\\space\\models\\Space', 1, 1, 2),
(3, 'e89f15e0-85cb-43be-bdf5-b5f3468cf432', 'humhub\\modules\\user\\models\\User', 2, 2, 3),
(4, 'fcdf65f3-d6ee-4214-b505-0da9afd57437', 'humhub\\modules\\user\\models\\User', 3, 3, 4),
(5, '06411600-1055-4a55-951d-602f7f5dd512', 'humhub\\modules\\user\\models\\User', 4, 4, 5),
(6, '21a9ddfc-1feb-49fb-9127-ce7a6c22ad13', 'humhub\\modules\\user\\models\\User', 5, 5, 6),
(7, '97274f77-30bf-4a76-829a-eed09c381534', 'humhub\\modules\\user\\models\\User', 6, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `contentcontainer_permission`
--

CREATE TABLE IF NOT EXISTS `contentcontainer_permission` (
  `permission_id` varchar(150) NOT NULL,
  `contentcontainer_id` int(11) NOT NULL DEFAULT '0',
  `group_id` varchar(50) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contentcontainer_setting`
--

CREATE TABLE IF NOT EXISTS `contentcontainer_setting` (
`id` int(11) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `contentcontainer_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_container_page`
--

CREATE TABLE IF NOT EXISTS `custom_pages_container_page` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `page_content` text,
  `type` smallint(6) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `in_new_window` tinyint(1) DEFAULT '0',
  `admin_only` tinyint(1) DEFAULT '0',
  `cssClass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_container_snippet`
--

CREATE TABLE IF NOT EXISTS `custom_pages_container_snippet` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `page_content` text,
  `type` smallint(6) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `admin_only` tinyint(1) DEFAULT '0',
  `cssClass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_page`
--

CREATE TABLE IF NOT EXISTS `custom_pages_page` (
`id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `content` mediumtext,
  `sort_order` int(11) DEFAULT NULL,
  `navigation_class` varchar(255) NOT NULL,
  `admin_only` tinyint(1) DEFAULT '0',
  `in_new_window` tinyint(1) DEFAULT '0',
  `cssClass` varchar(255) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_snippet`
--

CREATE TABLE IF NOT EXISTS `custom_pages_snippet` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `content` text,
  `type` smallint(6) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `sidebar` varchar(255) NOT NULL,
  `admin_only` tinyint(1) DEFAULT '0',
  `cssClass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `engine` varchar(100) NOT NULL,
  `description` text,
  `source` text,
  `allow_for_spaces` tinyint(1) DEFAULT '0',
  `type` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_pages_template`
--

INSERT INTO `custom_pages_template` (`id`, `name`, `engine`, `description`, `source`, `allow_for_spaces`, `type`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'system_two_column_layout', 'twig', 'Simple two column layout.', '<div class="row">\n	<div class="col-md-8">\n		<div class="panel panel-default">\n			<div class="panel-body">\n				{{ content }}\n			</div>\n		</div>\n	</div>\n	<div class="col-md-4">\n		<div class="panel panel-default">\n			<div class="panel-body">\n				{{ sidebar_container }}\n			</div>\n		</div>	\n	</div>\n</div>', 0, 'layout', '2016-10-12 12:32:36', NULL, NULL, NULL),
(2, 'system_one_column_layout', 'twig', 'Simple one column layout.', '<div class="row">\n	<div class="col-md-12">\n            <div class="panel panel-default">\n			<div class="panel-body">\n                            {{ content }}\n                        </div>\n            </div>\n	</div>\n</div>', 0, 'layout', '2016-10-12 12:32:37', NULL, NULL, NULL),
(3, 'system_headline_container', 'twig', 'Simple headline row with background image.', '{% if background.empty %}\n    {% set bg = assets[''bgImage2.jpg'']  %}\n{% else %}\n    {% set bg =  background %}\n{% endif %}\n\n<div style="height:218px;overflow:hidden;color:#fff;background-image: url(''{{ bg }}'');background-position:50% 50%;text-align:center;">\n	<div style="padding-top:40px;">\n		<h1 style="color:#fff;font-size:36px;margin:20px 0 10px;">{{ heading }}</h1>\n		<hr style="max-width:100px;border-width:3px;">\n		 <span>{{ subheading }}</span>\n  	 </div>\n</div>', 0, 'container', '2016-10-12 12:32:38', NULL, NULL, NULL),
(4, 'system_article_container', 'twig', 'Simple richtext article.', '<div style="margin-top:15px;">\n	<div style="padding:0 15px;">\n		{{ content }}\n	</div>\n</div>', 0, 'container', '2016-10-12 12:32:39', NULL, NULL, NULL),
(5, 'system_simple_snippet_layout', 'twig', 'Simple snippet layout with head container and richtext.', '<div>\n        {{ heading }}\n</div>\n<div style="margin-top:15px;">\n	{{ content }}\n</div>', 0, 'snipped-layout', '2016-10-12 12:32:39', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_container`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_container` (
`id` int(11) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_container_content`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_container_content` (
`id` int(11) NOT NULL,
  `definition_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_pages_template_container_content`
--

INSERT INTO `custom_pages_template_container_content` (`id`, `definition_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_container_content_definition`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_container_content_definition` (
`id` int(11) NOT NULL,
  `allow_multiple` tinyint(1) DEFAULT '0',
  `is_inline` tinyint(1) DEFAULT '0',
  `is_default` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_pages_template_container_content_definition`
--

INSERT INTO `custom_pages_template_container_content_definition` (`id`, `allow_multiple`, `is_inline`, `is_default`) VALUES
(1, 1, 0, 1),
(2, 1, 0, 1),
(3, 1, 0, 1),
(4, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_container_content_item`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_container_content_item` (
`id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `container_content_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT '100',
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_container_content_template`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_container_content_template` (
`id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `definition_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_pages_template_container_content_template`
--

INSERT INTO `custom_pages_template_container_content_template` (`id`, `template_id`, `definition_id`) VALUES
(1, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_element`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_element` (
`id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `content_type` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_pages_template_element`
--

INSERT INTO `custom_pages_template_element` (`id`, `template_id`, `name`, `content_type`) VALUES
(1, 1, 'content', 'humhub\\modules\\custom_pages\\modules\\template\\models\\ContainerContent'),
(2, 1, 'sidebar_container', 'humhub\\modules\\custom_pages\\modules\\template\\models\\ContainerContent'),
(3, 2, 'content', 'humhub\\modules\\custom_pages\\modules\\template\\models\\ContainerContent'),
(4, 3, 'heading', 'humhub\\modules\\custom_pages\\modules\\template\\models\\TextContent'),
(5, 3, 'subheading', 'humhub\\modules\\custom_pages\\modules\\template\\models\\TextContent'),
(6, 3, 'background', 'humhub\\modules\\custom_pages\\modules\\template\\models\\FileContent'),
(7, 4, 'content', 'humhub\\modules\\custom_pages\\modules\\template\\models\\RichtextContent'),
(8, 5, 'heading', 'humhub\\modules\\custom_pages\\modules\\template\\models\\ContainerContent'),
(9, 5, 'content', 'humhub\\modules\\custom_pages\\modules\\template\\models\\RichtextContent');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_file_content`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_file_content` (
`id` int(11) NOT NULL,
  `file_guid` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_image_content`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_image_content` (
`id` int(11) NOT NULL,
  `file_guid` varchar(45) NOT NULL,
  `alt` varchar(100) DEFAULT NULL,
  `definition_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_image_content_definition`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_image_content_definition` (
`id` int(11) NOT NULL,
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `style` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_owner_content`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_owner_content` (
`id` int(11) NOT NULL,
  `element_name` varchar(100) NOT NULL,
  `owner_model` varchar(100) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `content_type` varchar(100) NOT NULL,
  `content_id` int(11) NOT NULL,
  `use_default` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_pages_template_owner_content`
--

INSERT INTO `custom_pages_template_owner_content` (`id`, `element_name`, `owner_model`, `owner_id`, `content_type`, `content_id`, `use_default`) VALUES
(1, 'content', 'humhub\\modules\\custom_pages\\modules\\template\\models\\Template', 1, 'humhub\\modules\\custom_pages\\modules\\template\\models\\ContainerContent', 1, 0),
(2, 'sidebar_container', 'humhub\\modules\\custom_pages\\modules\\template\\models\\Template', 1, 'humhub\\modules\\custom_pages\\modules\\template\\models\\ContainerContent', 2, 0),
(3, 'content', 'humhub\\modules\\custom_pages\\modules\\template\\models\\Template', 2, 'humhub\\modules\\custom_pages\\modules\\template\\models\\ContainerContent', 3, 0),
(4, 'heading', 'humhub\\modules\\custom_pages\\modules\\template\\models\\Template', 3, 'humhub\\modules\\custom_pages\\modules\\template\\models\\TextContent', 1, 0),
(5, 'subheading', 'humhub\\modules\\custom_pages\\modules\\template\\models\\Template', 3, 'humhub\\modules\\custom_pages\\modules\\template\\models\\TextContent', 2, 0),
(6, 'content', 'humhub\\modules\\custom_pages\\modules\\template\\models\\Template', 4, 'humhub\\modules\\custom_pages\\modules\\template\\models\\RichtextContent', 1, 0),
(7, 'heading', 'humhub\\modules\\custom_pages\\modules\\template\\models\\Template', 5, 'humhub\\modules\\custom_pages\\modules\\template\\models\\ContainerContent', 4, 0),
(8, 'content', 'humhub\\modules\\custom_pages\\modules\\template\\models\\Template', 5, 'humhub\\modules\\custom_pages\\modules\\template\\models\\RichtextContent', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_richtext_content`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_richtext_content` (
`id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_pages_template_richtext_content`
--

INSERT INTO `custom_pages_template_richtext_content` (`id`, `content`) VALUES
(1, '<h1>This is a&nbsp;simple article!</h1>\n\n<hr />\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n'),
(2, '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages_template_text_content`
--

CREATE TABLE IF NOT EXISTS `custom_pages_template_text_content` (
`id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_pages_template_text_content`
--

INSERT INTO `custom_pages_template_text_content` (`id`, `content`) VALUES
(1, 'My Headline'),
(2, 'My Subheadline');

-- --------------------------------------------------------

--
-- Table structure for table `custom_profile_page`
--

CREATE TABLE IF NOT EXISTS `custom_profile_page` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title_line1` text,
  `title_line2` text,
  `introductory_text` text,
  `footer_text` text,
  `conclusion_text` text,
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_profile_page_field`
--

CREATE TABLE IF NOT EXISTS `custom_profile_page_field` (
`id` int(11) NOT NULL,
  `custom_profile_page_id` int(11) NOT NULL,
  `profile_field_id` int(11) NOT NULL,
  `internal_name` varchar(255) NOT NULL,
  `display_name` text,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
`id` int(11) NOT NULL,
  `guid` varchar(45) DEFAULT NULL,
  `object_model` varchar(100) DEFAULT '',
  `object_id` varchar(100) DEFAULT '',
  `file_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mime_type` varchar(150) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
`id` int(11) NOT NULL,
  `space_id` int(10) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `is_admin_group` tinyint(1) NOT NULL DEFAULT '0',
  `show_at_registration` tinyint(1) NOT NULL DEFAULT '1',
  `show_at_directory` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `space_id`, `name`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_dn`, `is_admin_group`, `show_at_registration`, `show_at_directory`) VALUES
(1, NULL, 'Administrator', 'Administrator Group', '2016-10-12 12:07:45', NULL, NULL, NULL, NULL, 1, 0, 0),
(2, NULL, 'Users', 'Example Group by Installer', NULL, NULL, NULL, NULL, NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_permission`
--

CREATE TABLE IF NOT EXISTS `group_permission` (
  `permission_id` varchar(150) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `module_id` varchar(50) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE IF NOT EXISTS `group_user` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_group_manager` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_user`
--

INSERT INTO `group_user` (`id`, `user_id`, `group_id`, `is_group_manager`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 1, 0, '2016-10-12 12:14:13', NULL, '2016-10-12 12:14:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE IF NOT EXISTS `like` (
`id` int(11) NOT NULL,
  `target_user_id` int(11) DEFAULT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`id`, `target_user_id`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'humhub\\modules\\comment\\models\\Comment', 1, '2016-10-12 12:14:29', 3, '2016-10-12 12:14:29', 3),
(2, NULL, 'humhub\\modules\\post\\models\\Post', 2, '2016-10-12 12:14:29', 3, '2016-10-12 12:14:29', 3);

-- --------------------------------------------------------

--
-- Table structure for table `llinkedin`
--

CREATE TABLE IF NOT EXISTS `llinkedin` (
`id` int(11) NOT NULL,
  `var` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `client_id` varchar(100) DEFAULT NULL,
  `client_secret` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `llinkedin`
--

INSERT INTO `llinkedin` (`id`, `var`, `url`, `client_id`, `client_secret`) VALUES
(1, 'setup', 'http://vmn.local/index.php/llinkedin/llinkedin ', '77b77awckljdp2', 'sG5a0Hcu2sFBQhgB');

-- --------------------------------------------------------

--
-- Table structure for table `llinkedin_loginpage_content`
--

CREATE TABLE IF NOT EXISTS `llinkedin_loginpage_content` (
`id` int(11) NOT NULL,
  `content` longtext,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `llinkedin_loginpage_content`
--

INSERT INTO `llinkedin_loginpage_content` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
`id` bigint(20) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(1, 1, 'yii\\base\\ErrorException:1', 1476269783.1791, '[127.0.0.1][1][pjlmqkg406q78o98s91ta8bpa5]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''yii\\redactor\\widgets\\Redactor'' not found'' in D:\\VMN\\protected\\modules\\llinkedin\\views\\llinkedin\\setup.php:65\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(2, 4, 'application', 1476269782.138, '[127.0.0.1][1][pjlmqkg406q78o98s91ta8bpa5]', '$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=pjlmqkg406q78o98s91ta8bpa5; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''51230''\n    ''REDIRECT_URL'' => ''/llinkedin/llinkedin/setup''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/llinkedin/llinkedin/setup''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476269782.122\n    ''REQUEST_TIME'' => 1476269782\n]'),
(3, 1, 'yii\\web\\HttpException:400', 1476270637.6069, '[127.0.0.1][1][9fpkao1edgsnml6ci17e667u01]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(4, 4, 'application', 1476270636.5949, '[127.0.0.1][1][9fpkao1edgsnml6ci17e667u01]', '$_GET = [\n    ''moduleId'' => ''member_directory''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=9fpkao1edgsnml6ci17e667u01; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''51439''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=member_directory''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=member_directory''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=member_directory''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476270636.578\n    ''REQUEST_TIME'' => 1476270636\n]'),
(5, 1, 'yii\\web\\HttpException:400', 1476271112.3921, '[127.0.0.1][1][9fpkao1edgsnml6ci17e667u01]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(6, 4, 'application', 1476271111.6, '[127.0.0.1][1][9fpkao1edgsnml6ci17e667u01]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=9fpkao1edgsnml6ci17e667u01; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''51593''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476271111.581\n    ''REQUEST_TIME'' => 1476271111\n]'),
(7, 1, 'yii\\web\\HttpException:400', 1476271329.9275, '[127.0.0.1][1][9fpkao1edgsnml6ci17e667u01]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(8, 4, 'application', 1476271329.1755, '[127.0.0.1][1][9fpkao1edgsnml6ci17e667u01]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=9fpkao1edgsnml6ci17e667u01; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''51671''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476271329.164\n    ''REQUEST_TIME'' => 1476271329\n]'),
(9, 1, 'yii\\base\\ErrorException:8', 1476271386.1037, '[127.0.0.1][-][80rsk23luio4v1p9eaip0mu0k2]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: config'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:62\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(62): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\VMN\\\\protecte...'', 62, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(10, 4, 'application', 1476271385.3797, '[127.0.0.1][-][80rsk23luio4v1p9eaip0mu0k2]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/user/auth/login''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=80rsk23luio4v1p9eaip0mu0k2; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''51695''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476271385.325\n    ''REQUEST_TIME'' => 1476271385\n]'),
(11, 1, 'yii\\base\\ErrorException:1', 1476275610.1133, '[127.0.0.1][1][5jmpmkapj18sf3gbjd5qelkhi5]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''yii\\redactor\\widgets\\Redactor'' not found'' in D:\\VMN\\protected\\modules\\llinkedin\\views\\llinkedin\\setup.php:65\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(12, 4, 'application', 1476275609.0173, '[127.0.0.1][1][5jmpmkapj18sf3gbjd5qelkhi5]', '$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=5jmpmkapj18sf3gbjd5qelkhi5; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''52421''\n    ''REDIRECT_URL'' => ''/llinkedin/llinkedin/setup''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/llinkedin/llinkedin/setup''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476275609.006\n    ''REQUEST_TIME'' => 1476275609\n]'),
(13, 1, 'yii\\base\\ErrorException:8', 1476281553.2523, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: config'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:62\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(62): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\VMN\\\\protecte...'', 62, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(14, 4, 'application', 1476281551.8182, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=334cv1datflsnvm0muccbjrk92; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54247''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476281551.807\n    ''REQUEST_TIME'' => 1476281551\n]'),
(15, 1, 'yii\\base\\ErrorException:64', 1476281792.632, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', 'exception ''yii\\base\\ErrorException'' with message ''modules\\llinkedin\\controllers\\LlinkedinController::actionIndex(): Failed opening required ''./config.php'' (include_path=''.;C:\\xampp\\php\\PEAR'')'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:59\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(16, 4, 'application', 1476281791.6529, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=334cv1datflsnvm0muccbjrk92; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54294''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476281791.63\n    ''REQUEST_TIME'' => 1476281791\n]'),
(17, 1, 'yii\\base\\ErrorException:8', 1476281816.4243, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: config'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:62\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(62): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\VMN\\\\protecte...'', 62, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(18, 4, 'application', 1476281815.6023, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=334cv1datflsnvm0muccbjrk92; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54299''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476281815.593\n    ''REQUEST_TIME'' => 1476281815\n]'),
(19, 1, 'yii\\base\\ErrorException:8', 1476281921.1673, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: config'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:60\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(60): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\VMN\\\\protecte...'', 60, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(20, 4, 'application', 1476281920.3523, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=334cv1datflsnvm0muccbjrk92; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54323''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476281920.339\n    ''REQUEST_TIME'' => 1476281920\n]'),
(21, 1, 'yii\\base\\ErrorException:8', 1476282036.0099, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: config'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:60\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(60): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\VMN\\\\protecte...'', 60, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(22, 4, 'application', 1476282034.8948, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=334cv1datflsnvm0muccbjrk92; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54350''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476282034.884\n    ''REQUEST_TIME'' => 1476282034\n]'),
(23, 1, 'yii\\base\\ErrorException:8', 1476282101.5866, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: config'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:59\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(59): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\VMN\\\\protecte...'', 59, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(24, 4, 'application', 1476282100.5846, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=334cv1datflsnvm0muccbjrk92; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54365''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476282100.574\n    ''REQUEST_TIME'' => 1476282100\n]'),
(25, 1, 'yii\\base\\ErrorException:1', 1476282181.2592, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''modules\\llinkedin\\controllers\\modules\\llinkedin\\models\\Llinkedin'' not found'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:63\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(26, 4, 'application', 1476282180.7292, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=334cv1datflsnvm0muccbjrk92; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54383''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476282180.527\n    ''REQUEST_TIME'' => 1476282180\n]'),
(27, 1, 'yii\\base\\ErrorException:8', 1476282249.5481, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: config'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:61\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(61): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\VMN\\\\protecte...'', 61, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(28, 4, 'application', 1476282248.9121, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=334cv1datflsnvm0muccbjrk92; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54398''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476282248.903\n    ''REQUEST_TIME'' => 1476282248\n]'),
(29, 1, 'yii\\base\\ErrorException:8', 1476282261.1858, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: config'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:61\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(61): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\VMN\\\\protecte...'', 61, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(30, 4, 'application', 1476282260.1357, '[127.0.0.1][1][334cv1datflsnvm0muccbjrk92]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=334cv1datflsnvm0muccbjrk92; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54404''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476282260.115\n    ''REQUEST_TIME'' => 1476282260\n]'),
(31, 1, 'yii\\base\\ErrorException:8', 1476282364.5797, '[127.0.0.1][1][8jtilnemmk5u8p7hqtap3a7jt2]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: config'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:61\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(61): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\VMN\\\\protecte...'', 61, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(32, 4, 'application', 1476282363.4716, '[127.0.0.1][1][8jtilnemmk5u8p7hqtap3a7jt2]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=8jtilnemmk5u8p7hqtap3a7jt2; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54439''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476282363.46\n    ''REQUEST_TIME'' => 1476282363\n]'),
(33, 1, 'yii\\base\\ErrorException:8', 1476282392.0303, '[127.0.0.1][1][8jtilnemmk5u8p7hqtap3a7jt2]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: config'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:61\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(61): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''D:\\\\VMN\\\\protecte...'', 61, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(34, 4, 'application', 1476282390.8722, '[127.0.0.1][1][8jtilnemmk5u8p7hqtap3a7jt2]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=8jtilnemmk5u8p7hqtap3a7jt2; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''54444''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476282390.86\n    ''REQUEST_TIME'' => 1476282390\n]'),
(35, 1, 'yii\\base\\ErrorException:2', 1476287340.1463, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', 'exception ''yii\\base\\ErrorException'' with message ''json_decode() expects parameter 1 to be string, array given'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:72\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(2, ''json_decode() e...'', ''D:\\\\VMN\\\\protecte...'', 72, Array)\n#1 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(72): json_decode(Array, true)\n#2 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#7 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#8 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#9 {main}'),
(36, 4, 'application', 1476287338.5682, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', '$_GET = [\n    ''code'' => ''AQQdgzfA6hh2oOPwV5YI8WBgPsLtgeuUcikMtnf4ZirAS_dwtDTv9isV6dOH48BO2vZdMa3h8mpdZrsjHM5O__LE-0qsKSCTDDt2QvpzkCZLWlznW5Y''\n    ''state'' => ''98765EeFWf45A53sdfKef4233''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=9pjuqoomqefocpo8qd3ispnb24; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''55997''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''code=AQQdgzfA6hh2oOPwV5YI8WBgPsLtgeuUcikMtnf4ZirAS_dwtDTv9isV6dOH48BO2vZdMa3h8mpdZrsjHM5O__LE-0qsKSCTDDt2QvpzkCZLWlznW5Y&state=98765EeFWf45A53sdfKef4233''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin?code=AQQdgzfA6hh2oOPwV5YI8WBgPsLtgeuUcikMtnf4ZirAS_dwtDTv9isV6dOH48BO2vZdMa3h8mpdZrsjHM5O__LE-0qsKSCTDDt2QvpzkCZLWlznW5Y&state=98765EeFWf45A53sdfKef4233''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476287338.558\n    ''REQUEST_TIME'' => 1476287338\n]'),
(37, 1, 'yii\\base\\ErrorException:2', 1476289168.2718, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', 'exception ''yii\\base\\ErrorException'' with message ''Illegal string offset ''error'''' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:332\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(332): yii\\base\\ErrorHandler->handleError(2, ''Illegal string ...'', ''D:\\\\VMN\\\\protecte...'', 332, Array)\n#1 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(72): modules\\llinkedin\\controllers\\LlinkedinController->post_curl(''https://www.lin...'', ''grant_type=auth...'')\n#2 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#7 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#8 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#9 {main}');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(38, 4, 'application', 1476289166.2727, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', '$_GET = [\n    ''code'' => ''AQQMTEdkaetYstJLq_SDVI4u0zsnUOd01JXy6IPY3utht9z7n2cKtQZp34uo7OKmK0C5AeBRJTjUJH4hpTSgCaY980LhyO_APJAnH91mMXyL9qoVSw4''\n    ''state'' => ''98765EeFWf45A53sdfKef4233''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=9pjuqoomqefocpo8qd3ispnb24; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''56685''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''code=AQQMTEdkaetYstJLq_SDVI4u0zsnUOd01JXy6IPY3utht9z7n2cKtQZp34uo7OKmK0C5AeBRJTjUJH4hpTSgCaY980LhyO_APJAnH91mMXyL9qoVSw4&state=98765EeFWf45A53sdfKef4233''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin?code=AQQMTEdkaetYstJLq_SDVI4u0zsnUOd01JXy6IPY3utht9z7n2cKtQZp34uo7OKmK0C5AeBRJTjUJH4hpTSgCaY980LhyO_APJAnH91mMXyL9qoVSw4&state=98765EeFWf45A53sdfKef4233''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476289166.261\n    ''REQUEST_TIME'' => 1476289166\n]'),
(39, 1, 'yii\\base\\ErrorException:1', 1476289299.1093, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', 'exception ''yii\\base\\ErrorException'' with message ''Cannot use object of type stdClass as array'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:78\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(40, 4, 'application', 1476289296.6812, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', '$_GET = [\n    ''code'' => ''AQQaMmkbusTeX2m3uym353UUoiQd2NTCUmN0IrYBqQ2ZRIOAtGrdN3XQptLVM-ilvyr5IfQxOmfKrj7AMG29G0pLcitnoAr1GW7FZcoODYKwc6cuhVo''\n    ''state'' => ''98765EeFWf45A53sdfKef4233''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=9pjuqoomqefocpo8qd3ispnb24; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''56730''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''code=AQQaMmkbusTeX2m3uym353UUoiQd2NTCUmN0IrYBqQ2ZRIOAtGrdN3XQptLVM-ilvyr5IfQxOmfKrj7AMG29G0pLcitnoAr1GW7FZcoODYKwc6cuhVo&state=98765EeFWf45A53sdfKef4233''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin?code=AQQaMmkbusTeX2m3uym353UUoiQd2NTCUmN0IrYBqQ2ZRIOAtGrdN3XQptLVM-ilvyr5IfQxOmfKrj7AMG29G0pLcitnoAr1GW7FZcoODYKwc6cuhVo&state=98765EeFWf45A53sdfKef4233''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476289296.67\n    ''REQUEST_TIME'' => 1476289296\n]'),
(41, 1, 'yii\\base\\ErrorException:8', 1476289391.3606, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined index: error'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:73\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(73): yii\\base\\ErrorHandler->handleError(8, ''Undefined index...'', ''D:\\\\VMN\\\\protecte...'', 73, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(42, 4, 'application', 1476289389.8215, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', '$_GET = [\n    ''code'' => ''AQTRpjTIdOQALUP1opi5VO-0yYcTImXF-M3n62KAstawLnG0nl0TgANdxbky0Q_3yT-bA7XQsIXNg3NQjss6o3H1lX0RvFux5thL-wjM5T1TnVdtsNY''\n    ''state'' => ''98765EeFWf45A53sdfKef4233''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=9pjuqoomqefocpo8qd3ispnb24; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''56774''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''code=AQTRpjTIdOQALUP1opi5VO-0yYcTImXF-M3n62KAstawLnG0nl0TgANdxbky0Q_3yT-bA7XQsIXNg3NQjss6o3H1lX0RvFux5thL-wjM5T1TnVdtsNY&state=98765EeFWf45A53sdfKef4233''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin?code=AQTRpjTIdOQALUP1opi5VO-0yYcTImXF-M3n62KAstawLnG0nl0TgANdxbky0Q_3yT-bA7XQsIXNg3NQjss6o3H1lX0RvFux5thL-wjM5T1TnVdtsNY&state=98765EeFWf45A53sdfKef4233''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476289389.81\n    ''REQUEST_TIME'' => 1476289389\n]'),
(43, 1, 'yii\\base\\ErrorException:8', 1476289549.8657, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined index: error'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:74\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(74): yii\\base\\ErrorHandler->handleError(8, ''Undefined index...'', ''D:\\\\VMN\\\\protecte...'', 74, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(44, 4, 'application', 1476289546.8255, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', '$_GET = [\n    ''code'' => ''AQTr6HS-crzrS8UT3Q51he-Y2zQjZmnR4_A-q8Tnk0CUv1xk5l1-__jt-7TRzEcWCz8bBgtyH0qCRMBG8i8_m2udNrQOykGR2QJiq7bhMS-XcpjsyoE''\n    ''state'' => ''98765EeFWf45A53sdfKef4233''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=9pjuqoomqefocpo8qd3ispnb24; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''56821''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''code=AQTr6HS-crzrS8UT3Q51he-Y2zQjZmnR4_A-q8Tnk0CUv1xk5l1-__jt-7TRzEcWCz8bBgtyH0qCRMBG8i8_m2udNrQOykGR2QJiq7bhMS-XcpjsyoE&state=98765EeFWf45A53sdfKef4233''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin?code=AQTr6HS-crzrS8UT3Q51he-Y2zQjZmnR4_A-q8Tnk0CUv1xk5l1-__jt-7TRzEcWCz8bBgtyH0qCRMBG8i8_m2udNrQOykGR2QJiq7bhMS-XcpjsyoE&state=98765EeFWf45A53sdfKef4233''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476289546.811\n    ''REQUEST_TIME'' => 1476289546\n]'),
(45, 1, 'yii\\base\\ErrorException:4', 1476289694.3089, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', 'exception ''yii\\base\\ErrorException'' with message ''syntax error, unexpected '';'''' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:77\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(46, 4, 'application', 1476289693.2539, '[127.0.0.1][-][9pjuqoomqefocpo8qd3ispnb24]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/user/auth/login''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=9pjuqoomqefocpo8qd3ispnb24; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''56855''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476289693.241\n    ''REQUEST_TIME'' => 1476289693\n]'),
(47, 1, 'yii\\base\\ErrorException:8', 1476291381.0684, '[127.0.0.1][-][b23qhn4d4naq05524v9auh0ce2]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined property: stdClass::$error'' in D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php:78\nStack trace:\n#0 D:\\VMN\\protected\\modules\\llinkedin\\controllers\\LlinkedinController.php(78): yii\\base\\ErrorHandler->handleError(8, ''Undefined prope...'', ''D:\\\\VMN\\\\protecte...'', 78, Array)\n#1 [internal function]: modules\\llinkedin\\controllers\\LlinkedinController->actionIndex()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''llinkedin/llink...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(48, 4, 'application', 1476291377.4142, '[127.0.0.1][-][b23qhn4d4naq05524v9auh0ce2]', '$_GET = [\n    ''code'' => ''AQRJifew0nS_M0igtvGJs7iXFVmb5I7EGLcRKu2Fe3aD8YjTx-fY_mgnKu6X17Y3_FtuhgSZP3HZ5r7W7RnQtpJStCUS9qssbQmuBs-rsaqTTLc2xsk''\n    ''state'' => ''98765EeFWf45A53sdfKef4233''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=b23qhn4d4naq05524v9auh0ce2; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''57438''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''code=AQRJifew0nS_M0igtvGJs7iXFVmb5I7EGLcRKu2Fe3aD8YjTx-fY_mgnKu6X17Y3_FtuhgSZP3HZ5r7W7RnQtpJStCUS9qssbQmuBs-rsaqTTLc2xsk&state=98765EeFWf45A53sdfKef4233''\n    ''REQUEST_URI'' => ''/index.php/llinkedin/llinkedin?code=AQRJifew0nS_M0igtvGJs7iXFVmb5I7EGLcRKu2Fe3aD8YjTx-fY_mgnKu6X17Y3_FtuhgSZP3HZ5r7W7RnQtpJStCUS9qssbQmuBs-rsaqTTLc2xsk&state=98765EeFWf45A53sdfKef4233''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/llinkedin/llinkedin''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\llinkedin''\n    ''PHP_SELF'' => ''/index.php/llinkedin/llinkedin''\n    ''REQUEST_TIME_FLOAT'' => 1476291377.404\n    ''REQUEST_TIME'' => 1476291377\n]'),
(49, 1, 'yii\\web\\HttpException:400', 1476292605.6444, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(50, 4, 'application', 1476292605.0014, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=kv7id24lcaorvscro49tbjvnn7; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''57760''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476292604.991\n    ''REQUEST_TIME'' => 1476292604\n]'),
(51, 1, 'yii\\web\\HttpException:400', 1476293128.7094, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(52, 4, 'application', 1476293128.0583, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=kv7id24lcaorvscro49tbjvnn7; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''57956''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476293128.046\n    ''REQUEST_TIME'' => 1476293128\n]'),
(53, 1, 'yii\\web\\HttpException:400', 1476293233.4463, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(54, 4, 'application', 1476293232.6353, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=kv7id24lcaorvscro49tbjvnn7; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''57976''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/index.php/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/admin/module/enable''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\module\\\\enable''\n    ''PHP_SELF'' => ''/index.php/admin/module/enable''\n    ''REQUEST_TIME_FLOAT'' => 1476293232.623\n    ''REQUEST_TIME'' => 1476293232\n]'),
(55, 1, 'yii\\web\\HttpException:400', 1476293439.2581, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''disable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/di...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(56, 4, 'application', 1476293438.4301, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', '$_GET = [\n    ''moduleId'' => ''custom_pages''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=kv7id24lcaorvscro49tbjvnn7; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''58032''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_pages''\n    ''REQUEST_URI'' => ''/index.php/admin/module/disable?moduleId=custom_pages''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/admin/module/disable''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\module\\\\disable''\n    ''PHP_SELF'' => ''/index.php/admin/module/disable''\n    ''REQUEST_TIME_FLOAT'' => 1476293438.42\n    ''REQUEST_TIME'' => 1476293438\n]'),
(57, 1, 'yii\\web\\HttpException:400', 1476293461.7274, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''disable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/di...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(58, 4, 'application', 1476293460.7323, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', '$_GET = [\n    ''moduleId'' => ''custom_pages''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=kv7id24lcaorvscro49tbjvnn7; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''58039''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_pages''\n    ''REQUEST_URI'' => ''/index.php/admin/module/disable?moduleId=custom_pages''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/admin/module/disable''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\module\\\\disable''\n    ''PHP_SELF'' => ''/index.php/admin/module/disable''\n    ''REQUEST_TIME_FLOAT'' => 1476293460.72\n    ''REQUEST_TIME'' => 1476293460\n]'),
(59, 1, 'yii\\web\\HttpException:400', 1476293689.5954, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''disable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/di...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(60, 4, 'application', 1476293688.6684, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', '$_GET = [\n    ''moduleId'' => ''custom_pages''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/index.php/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=kv7id24lcaorvscro49tbjvnn7; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''58116''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_pages''\n    ''REQUEST_URI'' => ''/index.php/admin/module/disable?moduleId=custom_pages''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/admin/module/disable''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\module\\\\disable''\n    ''PHP_SELF'' => ''/index.php/admin/module/disable''\n    ''REQUEST_TIME_FLOAT'' => 1476293688.656\n    ''REQUEST_TIME'' => 1476293688\n]'),
(61, 1, 'yii\\web\\HttpException:400', 1476293867.5246, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''disable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/di...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(62, 4, 'application', 1476293865.1425, '[127.0.0.1][1][kv7id24lcaorvscro49tbjvnn7]', '$_GET = [\n    ''moduleId'' => ''custom_pages''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=kv7id24lcaorvscro49tbjvnn7; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''58179''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_pages''\n    ''REDIRECT_URL'' => ''/admin/module/disable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_pages''\n    ''REQUEST_URI'' => ''/admin/module/disable?moduleId=custom_pages''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476293865.085\n    ''REQUEST_TIME'' => 1476293865\n]'),
(63, 1, 'yii\\web\\HttpException:400', 1476294175.7332, '[127.0.0.1][1][pqfopktfnumupnseirj2ejo412]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(64, 4, 'application', 1476294175.0212, '[127.0.0.1][1][pqfopktfnumupnseirj2ejo412]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=pqfopktfnumupnseirj2ejo412; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''58300''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476294175.004\n    ''REQUEST_TIME'' => 1476294175\n]'),
(65, 1, 'yii\\web\\HttpException:400', 1476294203.6548, '[127.0.0.1][1][pqfopktfnumupnseirj2ejo412]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(66, 4, 'application', 1476294202.7028, '[127.0.0.1][1][pqfopktfnumupnseirj2ejo412]', '$_GET = [\n    ''moduleId'' => ''member_directory''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8c0b1050a98851f1cebb639a2582812a48c0c380c8677cee027d988e1ec102eca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22g3kZrlhobOu-x85yNLSwURTqqWpD9bsi%22%3B%7D; PHPSESSID=pqfopktfnumupnseirj2ejo412; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''58324''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=member_directory''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=member_directory''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=member_directory''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476294202.685\n    ''REQUEST_TIME'' => 1476294202\n]'),
(67, 1, 'yii\\web\\HttpException:500', 1476295091.3776, '[127.0.0.1][1][pqfopktfnumupnseirj2ejo412]', 'exception ''yii\\web\\HttpException'' with message ''HumHub is already installed!'' in D:\\VMN\\protected\\humhub\\modules\\installer\\Module.php:59\nStack trace:\n#0 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(142): humhub\\modules\\installer\\Module->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''installer/index'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#4 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#5 {main}'),
(68, 4, 'application', 1476295069.0483, '[127.0.0.1][1][pqfopktfnumupnseirj2ejo412]', '$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''_csrf=5800c59fe659dd174a2350c31d808446cfc110e66dadad2a7772b7012b7e5e29a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22EDSSsZDe0ZZWPXBE79FOOrd9D9395WLV%22%3B%7D; PHPSESSID=pqfopktfnumupnseirj2ejo412; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''58604''\n    ''REDIRECT_URL'' => ''/installer/index''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/installer/index''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476295060.715\n    ''REQUEST_TIME'' => 1476295060\n]'),
(69, 1, 'yii\\web\\HttpException:400', 1476295236.0649, '[127.0.0.1][1][pqfopktfnumupnseirj2ejo412]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(70, 4, 'application', 1476295235.5749, '[127.0.0.1][1][pqfopktfnumupnseirj2ejo412]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=96620c4c49301a238ed5a9db54cb096945021a99aaf64696080f8267e1891828a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22rhlzOkt9NbYwWF3hb47QG33iDvxLg4I7%22%3B%7D; PHPSESSID=pqfopktfnumupnseirj2ejo412; pm_getting-started-panel=expanded; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''58714''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476295235.554\n    ''REQUEST_TIME'' => 1476295235\n]'),
(71, 2, 'yii\\web\\User::getIdentityAndDurationFromCookie', 1476295688.6118, '[127.0.0.1][-][uqp0a30a5udvvidpekvo495e86]', 'Invalid auth key attempted for user ''1'': 12c97b6b-c65c-4c2f-9ac3-b2730cb3cdf5'),
(72, 4, 'application', 1476295688.1287, '[127.0.0.1][-][uqp0a30a5udvvidpekvo495e86]', '$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_X_CSRF_TOKEN'' => ''U0Nob3hUSFoJcDs8ThECDSN3Wh0JMikZZBcnAS8HEAwSMVE8GzI6Yg==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=8fd9e49d0581b59d25e3f457be4cd7b78a113ffc4cee6264ad636433d9cc8e7ea%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Z3SS6EJWp42rqfaC7TOnWSXVAr9Scfr8%22%3B%7D; PHPSESSID=uqp0a30a5udvvidpekvo495e86; pm_getting-started-panel=expanded; language=a45d9d5052279fddc4c654b05e5d64909a3f7e887cb081145b102a86b6081c1ba%3A2%3A%7Bi%3A0%3Bs%3A8%3A%22language%22%3Bi%3A1%3Bs%3A2%3A%22en%22%3B%7D; _identity=b03128d4679577dd7f2dc02d88c4076104b5abaa6696e3be2ee8760ea8c09db4a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%2212c97b6b-c65c-4c2f-9ac3-b2730cb3cdf5%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''58978''\n    ''REDIRECT_URL'' => ''/notification/list/get-update-json''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/notification/list/get-update-json''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476295688.092\n    ''REQUEST_TIME'' => 1476295688\n]'),
(73, 1, 'yii\\web\\HttpException:400', 1476295839.3354, '[127.0.0.1][1][8p3mhkul0mn04oqlcu1m7vgbm7]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(74, 4, 'application', 1476295838.5413, '[127.0.0.1][1][8p3mhkul0mn04oqlcu1m7vgbm7]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=7daf5a8277076d83a65b1fdb1eeb0863651920af65af38909f28cecf90db322da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22s4NHlLgNeizcdt9MzWAYV0vR_jC-8ZRq%22%3B%7D; PHPSESSID=8p3mhkul0mn04oqlcu1m7vgbm7; pm_getting-started-panel=expanded; language=a45d9d5052279fddc4c654b05e5d64909a3f7e887cb081145b102a86b6081c1ba%3A2%3A%7Bi%3A0%3Bs%3A8%3A%22language%22%3Bi%3A1%3Bs%3A2%3A%22en%22%3B%7D; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''59093''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476295838.53\n    ''REQUEST_TIME'' => 1476295838\n]'),
(75, 1, 'yii\\web\\HttpException:400', 1476296187.9423, '[127.0.0.1][1][8p3mhkul0mn04oqlcu1m7vgbm7]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''install'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/in...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(76, 4, 'application', 1476296187.2293, '[127.0.0.1][1][8p3mhkul0mn04oqlcu1m7vgbm7]', '$_GET = [\n    ''moduleId'' => ''mail''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list-online''\n    ''HTTP_COOKIE'' => ''_csrf=7daf5a8277076d83a65b1fdb1eeb0863651920af65af38909f28cecf90db322da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22s4NHlLgNeizcdt9MzWAYV0vR_jC-8ZRq%22%3B%7D; PHPSESSID=8p3mhkul0mn04oqlcu1m7vgbm7; pm_getting-started-panel=expanded; language=a45d9d5052279fddc4c654b05e5d64909a3f7e887cb081145b102a86b6081c1ba%3A2%3A%7Bi%3A0%3Bs%3A8%3A%22language%22%3Bi%3A1%3Bs%3A2%3A%22en%22%3B%7D; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''59285''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=mail''\n    ''REDIRECT_URL'' => ''/admin/module/install''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=mail''\n    ''REQUEST_URI'' => ''/admin/module/install?moduleId=mail''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476296187.213\n    ''REQUEST_TIME'' => 1476296187\n]'),
(77, 1, 'yii\\web\\HttpException:400', 1476296506.1565, '[127.0.0.1][1][8p3mhkul0mn04oqlcu1m7vgbm7]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(78, 4, 'application', 1476296505.5975, '[127.0.0.1][1][8p3mhkul0mn04oqlcu1m7vgbm7]', '$_GET = [\n    ''moduleId'' => ''member_directory''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''_csrf=7daf5a8277076d83a65b1fdb1eeb0863651920af65af38909f28cecf90db322da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22s4NHlLgNeizcdt9MzWAYV0vR_jC-8ZRq%22%3B%7D; PHPSESSID=8p3mhkul0mn04oqlcu1m7vgbm7; pm_getting-started-panel=expanded; language=a45d9d5052279fddc4c654b05e5d64909a3f7e887cb081145b102a86b6081c1ba%3A2%3A%7Bi%3A0%3Bs%3A8%3A%22language%22%3Bi%3A1%3Bs%3A2%3A%22en%22%3B%7D; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''59417''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=member_directory''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=member_directory''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=member_directory''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476296505.581\n    ''REQUEST_TIME'' => 1476296505\n]'),
(79, 1, 'yii\\web\\HttpException:400', 1476296665.0756, '[127.0.0.1][1][t1vlo6l03pltnd98t6us3drfg3]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(80, 4, 'application', 1476296664.2656, '[127.0.0.1][1][t1vlo6l03pltnd98t6us3drfg3]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''PHPSESSID=t1vlo6l03pltnd98t6us3drfg3; _csrf=2057365a2f48b78cf989564ecb3574cb24d93fece2c4c098a3ea543fb83a39eaa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KU2JZorKJJxilms1V3wKZwnrsD9voL7F%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''59507''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476296664.253\n    ''REQUEST_TIME'' => 1476296664\n]'),
(81, 1, 'yii\\web\\HttpException:400', 1476297341.4973, '[127.0.0.1][1][t1vlo6l03pltnd98t6us3drfg3]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(82, 4, 'application', 1476297340.4493, '[127.0.0.1][1][t1vlo6l03pltnd98t6us3drfg3]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''PHPSESSID=t1vlo6l03pltnd98t6us3drfg3; _csrf=2057365a2f48b78cf989564ecb3574cb24d93fece2c4c098a3ea543fb83a39eaa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KU2JZorKJJxilms1V3wKZwnrsD9voL7F%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''59719''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476297340.437\n    ''REQUEST_TIME'' => 1476297340\n]'),
(83, 1, 'yii\\web\\HttpException:400', 1476297453.2867, '[127.0.0.1][1][t1vlo6l03pltnd98t6us3drfg3]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(84, 4, 'application', 1476297452.2926, '[127.0.0.1][1][t1vlo6l03pltnd98t6us3drfg3]', '$_GET = [\n    ''moduleId'' => ''custom_profile''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''PHPSESSID=t1vlo6l03pltnd98t6us3drfg3; _csrf=2057365a2f48b78cf989564ecb3574cb24d93fece2c4c098a3ea543fb83a39eaa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KU2JZorKJJxilms1V3wKZwnrsD9voL7F%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_PRAGMA'' => ''no-cache''\n    ''HTTP_CACHE_CONTROL'' => ''no-cache''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''59758''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=custom_profile''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=custom_profile''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476297452.278\n    ''REQUEST_TIME'' => 1476297452\n]'),
(85, 1, 'yii\\web\\HttpException:400', 1476297975.6586, '[127.0.0.1][1][4hbbkl403eph4kbs8cqfu6ddt2]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(86, 4, 'application', 1476297974.5695, '[127.0.0.1][1][4hbbkl403eph4kbs8cqfu6ddt2]', '$_GET = [\n    ''moduleId'' => ''member_directory''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''PHPSESSID=4hbbkl403eph4kbs8cqfu6ddt2; _csrf=f8954b40384126ad1e4be374c150c0e56f4d1f606e059fb00ef93bfe51a453b4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%229HvW-96YQ0Vobe1KP2L-Rwy0D4wjKmVv%22%3B%7D; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''59982''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=member_directory''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=member_directory''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=member_directory''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476297974.557\n    ''REQUEST_TIME'' => 1476297974\n]'),
(87, 1, 'yii\\web\\HttpException:400', 1476299009.5127, '[127.0.0.1][1][4hbbkl403eph4kbs8cqfu6ddt2]', 'exception ''yii\\web\\BadRequestHttpException'' with message ''Unable to verify your data submission.'' in D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php:110\nStack trace:\n#0 D:\\VMN\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''enable'', Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''admin/module/en...'', Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#5 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#6 {main}'),
(88, 4, 'application', 1476299008.3827, '[127.0.0.1][1][4hbbkl403eph4kbs8cqfu6ddt2]', '$_GET = [\n    ''moduleId'' => ''member_directory''\n]\n\n$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_REFERER'' => ''http://vmn.local/admin/module/list''\n    ''HTTP_COOKIE'' => ''PHPSESSID=4hbbkl403eph4kbs8cqfu6ddt2; _csrf=f8954b40384126ad1e4be374c150c0e56f4d1f606e059fb00ef93bfe51a453b4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%229HvW-96YQ0Vobe1KP2L-Rwy0D4wjKmVv%22%3B%7D; _identity=ff98b770f56e9f5210def089a20b7b5fa9492d83b5dc889cda73cf35235937bea%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22304df778-f701-4dac-9cdf-a41f8418cbcd%22%2C2592000%5D%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded''\n    ''CONTENT_LENGTH'' => ''0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''60344''\n    ''REDIRECT_QUERY_STRING'' => ''moduleId=member_directory''\n    ''REDIRECT_URL'' => ''/admin/module/enable''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''moduleId=member_directory''\n    ''REQUEST_URI'' => ''/admin/module/enable?moduleId=member_directory''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476299008.371\n    ''REQUEST_TIME'' => 1476299008\n]'),
(89, 1, 'yii\\base\\ErrorException:8', 1476304341.5967, '[127.0.0.1][4][ms87u46gstqfbb8qdku7ok1sf2]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined index: pid'' in D:\\VMN\\protected\\modules\\custom_profile\\controllers\\DefaultController.php:280\nStack trace:\n#0 D:\\VMN\\protected\\modules\\custom_profile\\controllers\\DefaultController.php(280): yii\\base\\ErrorHandler->handleError(8, ''Undefined index...'', ''D:\\\\VMN\\\\protecte...'', 280, Array)\n#1 [internal function]: app\\modules\\custom_profile\\controllers\\DefaultController->actionView()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''view'', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''custom_profile/...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(90, 4, 'application', 1476304340.6466, '[127.0.0.1][4][ms87u46gstqfbb8qdku7ok1sf2]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''PHPSESSID=ms87u46gstqfbb8qdku7ok1sf2; _csrf=411664f7eb04db9323853d788b3b129e3b8f985a1c0ee5e396e74b3f43b1e3cea%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22w2orSL1b6uNPelc_YobMwVIYbtZZb9fA%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''62675''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/custom_profile/default/view''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/custom_profile/default/view''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\default\\\\view''\n    ''PHP_SELF'' => ''/index.php/custom_profile/default/view''\n    ''REQUEST_TIME_FLOAT'' => 1476304340.638\n    ''REQUEST_TIME'' => 1476304340\n]');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(91, 1, 'yii\\base\\ErrorException:8', 1476304388.7634, '[127.0.0.1][4][8k9ana0q2vni6bpa0h5s7b52i4]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined index: pid'' in D:\\VMN\\protected\\modules\\custom_profile\\controllers\\DefaultController.php:280\nStack trace:\n#0 D:\\VMN\\protected\\modules\\custom_profile\\controllers\\DefaultController.php(280): yii\\base\\ErrorHandler->handleError(8, ''Undefined index...'', ''D:\\\\VMN\\\\protecte...'', 280, Array)\n#1 [internal function]: app\\modules\\custom_profile\\controllers\\DefaultController->actionView()\n#2 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''view'', Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''custom_profile/...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(92, 4, 'application', 1476304388.0384, '[127.0.0.1][4][8k9ana0q2vni6bpa0h5s7b52i4]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''PHPSESSID=8k9ana0q2vni6bpa0h5s7b52i4; _csrf=078e9a57f10e0226c1ad3ef18e98cff562c949ce4e2cb47865f9973fce115fb1a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22XUmRhVf4aDvSA6mti1guxAUkH3F_Jyfz%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''62723''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/custom_profile/default/view''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/custom_profile/default/view''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\default\\\\view''\n    ''PHP_SELF'' => ''/index.php/custom_profile/default/view''\n    ''REQUEST_TIME_FLOAT'' => 1476304388.028\n    ''REQUEST_TIME'' => 1476304388\n]'),
(93, 1, 'yii\\web\\HttpException:500', 1476355583.6829, '[127.0.0.1][4][f29nu251fnt6877v66bg69g696]', 'exception ''yii\\web\\HttpException'' with message ''Could not determine content container!'' in D:\\VMN\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php:89\nStack trace:\n#0 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Object.php(107): humhub\\modules\\content\\components\\ContentContainerController->init()\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(84): yii\\base\\Object->__construct(Array)\n#2 [internal function]: yii\\base\\Controller->__construct(''profile'', Object(humhub\\modules\\user\\Module), Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(373): ReflectionClass->newInstanceArgs(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(154): yii\\di\\Container->build(''humhub\\\\modules\\\\...'', Array, Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\BaseYii.php(340): yii\\di\\Container->get(''humhub\\\\modules\\\\...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(567): yii\\BaseYii::createObject(''humhub\\\\modules\\\\...'', Array)\n#7 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(520): yii\\base\\Module->createControllerByID(''profile'')\n#8 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(512): yii\\base\\Module->createController(''profile/home'')\n#9 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(448): yii\\base\\Module->createController(''user/profile/ho...'')\n#10 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/profile/ho...'', Array)\n#11 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#12 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#13 {main}'),
(94, 4, 'application', 1476355582.7328, '[127.0.0.1][4][f29nu251fnt6877v66bg69g696]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''PHPSESSID=f29nu251fnt6877v66bg69g696; _csrf=5929da06683d7ec95a425251d505684b76c9a1d88b2102994bde81d628690fb0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BHNss6jrOweZ6d7oSVmhJCz6fpMBz3Kx%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''51240''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476355582.719\n    ''REQUEST_TIME'' => 1476355582\n]'),
(95, 1, 'yii\\web\\HttpException:500', 1476355612.7205, '[127.0.0.1][4][f29nu251fnt6877v66bg69g696]', 'exception ''yii\\web\\HttpException'' with message ''Could not determine content container!'' in D:\\VMN\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php:89\nStack trace:\n#0 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Object.php(107): humhub\\modules\\content\\components\\ContentContainerController->init()\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(84): yii\\base\\Object->__construct(Array)\n#2 [internal function]: yii\\base\\Controller->__construct(''profile'', Object(humhub\\modules\\user\\Module), Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(373): ReflectionClass->newInstanceArgs(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(154): yii\\di\\Container->build(''humhub\\\\modules\\\\...'', Array, Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\BaseYii.php(340): yii\\di\\Container->get(''humhub\\\\modules\\\\...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(567): yii\\BaseYii::createObject(''humhub\\\\modules\\\\...'', Array)\n#7 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(520): yii\\base\\Module->createControllerByID(''profile'')\n#8 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(512): yii\\base\\Module->createController(''profile/index'')\n#9 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(448): yii\\base\\Module->createController(''user/profile/in...'')\n#10 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/profile/in...'', Array)\n#11 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#12 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#13 {main}'),
(96, 4, 'application', 1476355611.8085, '[127.0.0.1][4][f29nu251fnt6877v66bg69g696]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''PHPSESSID=f29nu251fnt6877v66bg69g696; _csrf=5929da06683d7ec95a425251d505684b76c9a1d88b2102994bde81d628690fb0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BHNss6jrOweZ6d7oSVmhJCz6fpMBz3Kx%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''51247''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476355611.801\n    ''REQUEST_TIME'' => 1476355611\n]'),
(97, 1, 'yii\\web\\HttpException:500', 1476355628.6254, '[127.0.0.1][-][-]', 'exception ''yii\\web\\HttpException'' with message ''Could not determine content container!'' in D:\\VMN\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php:89\nStack trace:\n#0 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Object.php(107): humhub\\modules\\content\\components\\ContentContainerController->init()\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(84): yii\\base\\Object->__construct(Array)\n#2 [internal function]: yii\\base\\Controller->__construct(''profile'', Object(humhub\\modules\\user\\Module), Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(373): ReflectionClass->newInstanceArgs(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(154): yii\\di\\Container->build(''humhub\\\\modules\\\\...'', Array, Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\BaseYii.php(340): yii\\di\\Container->get(''humhub\\\\modules\\\\...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(567): yii\\BaseYii::createObject(''humhub\\\\modules\\\\...'', Array)\n#7 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(520): yii\\base\\Module->createControllerByID(''profile'')\n#8 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(512): yii\\base\\Module->createController(''profile/index'')\n#9 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(448): yii\\base\\Module->createController(''user/profile/in...'')\n#10 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/profile/in...'', Array)\n#11 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#12 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#13 {main}'),
(98, 4, 'application', 1476355628.1434, '[127.0.0.1][-][-]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''51262''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476355628.132\n    ''REQUEST_TIME'' => 1476355628\n]'),
(99, 1, 'yii\\web\\HttpException:500', 1476356201.8352, '[127.0.0.1][4][qbhg7mjamsl0k4918q8tn4vn50]', 'exception ''yii\\web\\HttpException'' with message ''Could not determine content container!'' in D:\\VMN\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php:89\nStack trace:\n#0 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Object.php(107): humhub\\modules\\content\\components\\ContentContainerController->init()\n#1 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(84): yii\\base\\Object->__construct(Array)\n#2 [internal function]: yii\\base\\Controller->__construct(''profile'', Object(humhub\\modules\\user\\Module), Array)\n#3 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(373): ReflectionClass->newInstanceArgs(Array)\n#4 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(154): yii\\di\\Container->build(''humhub\\\\modules\\\\...'', Array, Array)\n#5 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\BaseYii.php(340): yii\\di\\Container->get(''humhub\\\\modules\\\\...'', Array)\n#6 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(567): yii\\BaseYii::createObject(''humhub\\\\modules\\\\...'', Array)\n#7 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(520): yii\\base\\Module->createControllerByID(''profile'')\n#8 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(512): yii\\base\\Module->createController(''profile/index'')\n#9 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(448): yii\\base\\Module->createController(''user/profile/in...'')\n#10 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/profile/in...'', Array)\n#11 D:\\VMN\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#12 D:\\VMN\\index.php(25): yii\\base\\Application->run()\n#13 {main}'),
(100, 4, 'application', 1476356201.2552, '[127.0.0.1][4][qbhg7mjamsl0k4918q8tn4vn50]', '$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''PHPSESSID=qbhg7mjamsl0k4918q8tn4vn50; _csrf=34d1dadefd5b23f7c0f03cbe1c309e8064690fd93ebeae07374ef9813a800f6ea%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22OXydzqnEjDw2AEda0utOdml4xkAzBcuD%22%3B%7D''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''51489''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/index.php/user/profile/index''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PATH_INFO'' => ''/user/profile/index''\n    ''PATH_TRANSLATED'' => ''redirect:\\\\index.php\\\\profile\\\\index''\n    ''PHP_SELF'' => ''/index.php/user/profile/index''\n    ''REQUEST_TIME_FLOAT'' => 1476356201.232\n    ''REQUEST_TIME'' => 1476356201\n]'),
(101, 1, 'yii\\base\\ErrorException:1', 1476370214.6484, '[127.0.0.1][5][m0rflvqth51h2gq894a4ipstp3]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''humhub\\components\\Modules'' not found'' in D:\\VMN\\protected\\humhub\\modules\\test\\Module.php:5\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(102, 4, 'application', 1476370214.0013, '[127.0.0.1][5][m0rflvqth51h2gq894a4ipstp3]', '$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''PHPSESSID=m0rflvqth51h2gq894a4ipstp3; _csrf=caca85d46ef79ebcb1e1933632fb7d9bdb1c69dc1cfb7569279471582f72db75a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%223cmDD53K7WQassBUqyVhBilw4lN2qd8b%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''49945''\n    ''REDIRECT_URL'' => ''/test/test''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/test/test''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476370213.976\n    ''REQUEST_TIME'' => 1476370213\n]'),
(103, 1, 'yii\\base\\ErrorException:1', 1476370238.1497, '[127.0.0.1][5][m0rflvqth51h2gq894a4ipstp3]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''humhub\\modules\\test\\controllers\\humhub\\components\\Controller'' not found'' in D:\\VMN\\protected\\humhub\\modules\\test\\controllers\\TestController.php:5\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(104, 4, 'application', 1476370237.3847, '[127.0.0.1][5][m0rflvqth51h2gq894a4ipstp3]', '$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''PHPSESSID=m0rflvqth51h2gq894a4ipstp3; _csrf=caca85d46ef79ebcb1e1933632fb7d9bdb1c69dc1cfb7569279471582f72db75a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%223cmDD53K7WQassBUqyVhBilw4lN2qd8b%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''49953''\n    ''REDIRECT_URL'' => ''/test/test''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/test/test''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476370237.357\n    ''REQUEST_TIME'' => 1476370237\n]'),
(105, 1, 'yii\\base\\ErrorException:1', 1476370470.822, '[127.0.0.1][5][m0rflvqth51h2gq894a4ipstp3]', 'exception ''yii\\base\\ErrorException'' with message ''Class ''humhub\\modules\\test\\controllers\\Yii'' not found'' in D:\\VMN\\protected\\humhub\\modules\\test\\controllers\\TestController.php:24\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(106, 4, 'application', 1476370470.219, '[127.0.0.1][5][m0rflvqth51h2gq894a4ipstp3]', '$_SERVER = [\n    ''REDIRECT_MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''REDIRECT_MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''REDIRECT_OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''REDIRECT_PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_PHPRC'' => ''\\\\xampp\\\\php''\n    ''REDIRECT_TMP'' => ''\\\\xampp\\\\tmp''\n    ''REDIRECT_STATUS'' => ''200''\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''vmn.local''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.1; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''en-US,en;q=0.5''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_COOKIE'' => ''PHPSESSID=m0rflvqth51h2gq894a4ipstp3; _csrf=caca85d46ef79ebcb1e1933632fb7d9bdb1c69dc1cfb7569279471582f72db75a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%223cmDD53K7WQassBUqyVhBilw4lN2qd8b%22%3B%7D; pm_getting-started-panel=expanded''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''PATH'' => ''C:\\\\ProgramData\\\\Oracle\\\\Java\\\\javapath;C:\\\\Program Files\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Program Files (x86)\\\\Common Files\\\\Microsoft Shared\\\\Windows Live;C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\xampp\\\\php;C:\\\\cygwin64\\\\bin;C:\\\\Program Files (x86)\\\\Windows Live\\\\Shared;C:\\\\PostgreSQL\\\\8.3\\\\bin;C:\\\\Program Files\\\\PostgreSQL\\\\9.4\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin;C:\\\\Program Files\\\\Java\\\\jdk1.8.0_51\\\\jre\\\\bin\\\\client;C:\\\\Program Files\\\\TortoiseSVN\\\\bin;C:\\\\Program Files (x86)\\\\Skype\\\\Phone\\\\;C:\\\\Program Files\\\\Git\\\\mingw64\\\\bin\\\\;C:\\\\tools\\\\python2;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\tools;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\Android\\\\sdk\\\\platform-tools;C:\\\\Program Files (x86)\\\\Heroku\\\\bin;C:\\\\Program Files (x86)\\\\git\\\\cmd;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Local\\\\.meteor\\\\;C:\\\\ProgramData\\\\chocolatey\\\\bin;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\Erald\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3 Server at vmn.local Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.10 (Win32) OpenSSL/1.0.1i PHP/5.6.3''\n    ''SERVER_NAME'' => ''vmn.local''\n    ''SERVER_ADDR'' => ''127.0.0.1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''127.0.0.1''\n    ''DOCUMENT_ROOT'' => ''D:/VMN''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''D:/VMN''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''D:/VMN/index.php''\n    ''REMOTE_PORT'' => ''49960''\n    ''REDIRECT_URL'' => ''/test/test''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''''\n    ''REQUEST_URI'' => ''/test/test''\n    ''SCRIPT_NAME'' => ''/index.php''\n    ''PHP_SELF'' => ''/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1476370470.208\n    ''REQUEST_TIME'' => 1476370470\n]');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
`id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `message_entry`
--

CREATE TABLE IF NOT EXISTS `message_entry` (
`id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1476266712),
('m131023_164513_initial', 1476266722),
('m131023_165411_initial', 1476266724),
('m131023_165507_initial', 1476269750),
('m131023_165591_initial', 1476269718),
('m131023_165625_initial', 1476266725),
('m131023_165755_initial', 1476266728),
('m131023_165835_initial', 1476266729),
('m131023_170033_initial', 1476266729),
('m131023_170135_initial', 1476266730),
('m131023_170159_initial', 1476266730),
('m131023_170253_initial', 1476266731),
('m131023_170339_initial', 1476266731),
('m131203_110444_oembed', 1476266732),
('m131213_165552_user_optimize', 1476266737),
('m140226_111945_ldap', 1476266740),
('m140303_125031_password', 1476266742),
('m140304_142711_memberautoadd', 1476266742),
('m140321_000917_content', 1476266745),
('m140324_170617_membership', 1476266745),
('m140507_150421_create_settings_table', 1476266746),
('m140507_171527_create_settings_table', 1476266748),
('m140512_141414_i18n_profilefields', 1476266750),
('m140513_180317_createlogging', 1476266750),
('m140701_000611_profile_genderfield', 1476266750),
('m140701_074404_protect_default_profilefields', 1476266751),
('m140702_143912_notify_notification_unify', 1476266751),
('m140703_104527_profile_birthdayfield', 1476266751),
('m140704_080659_installationid', 1476266751),
('m140705_065525_emailing_settings', 1476266756),
('m140706_135210_lastlogin', 1476266757),
('m140829_122906_delete', 1476266758),
('m140830_145504_following', 1476266760),
('m140901_080147_indizies', 1476266761),
('m140901_080432_indices', 1476266762),
('m140901_112246_addState', 1476266765),
('m140901_153403_addState', 1476266771),
('m140901_170329_group_create_space', 1476266772),
('m140902_091234_session_key_length', 1476266773),
('m140907_140822_zip_field_to_text', 1476266774),
('m140930_045035_initial', 1476268329),
('m140930_205511_fix_default', 1476266777),
('m140930_205859_fix_default', 1476266778),
('m140930_210142_fix_default', 1476266781),
('m140930_210635_fix_default', 1476266785),
('m140930_212528_fix_default', 1476266787),
('m141015_173305_follow_notifications', 1476266789),
('m141019_093319_mentioning', 1476266797),
('m141020_162639_fix_default', 1476266801),
('m141020_193920_rm_alsocreated', 1476266801),
('m141020_193931_rm_alsoliked', 1476266802),
('m141021_162639_oembed_setting', 1476266802),
('m141022_094635_addDefaults', 1476266802),
('m141026_135537_adminOnly', 1476268331),
('m141106_185632_log_init', 1476266805),
('m150204_103433_html5_notified', 1476266806),
('m150210_190006_user_invite_lang', 1476266806),
('m150302_114347_add_visibility', 1476266807),
('m150322_194403_remove_type_field', 1476266808),
('m150322_195619_allowedExt2Text', 1476266808),
('m150429_190600_indexes', 1476269756),
('m150429_223856_optimize', 1476266810),
('m150510_102900_update', 1476266810),
('m150629_220311_change', 1476266813),
('m150703_012735_typelength', 1476266815),
('m150703_024635_activityTypes', 1476266815),
('m150703_033650_namespace', 1476266816),
('m150703_130157_migrate', 1476266816),
('m150704_005338_namespace', 1476266816),
('m150704_005418_namespace', 1476266817),
('m150704_005434_namespace', 1476266817),
('m150704_005452_namespace', 1476266817),
('m150704_005504_namespace', 1476266817),
('m150709_050451_namespace', 1476269756),
('m150713_054441_timezone', 1476266818),
('m150714_093525_activity', 1476266821),
('m150714_100355_cleanup', 1476266828),
('m150831_061628_notifications', 1476266828),
('m150910_223305_fix_user_follow', 1476266828),
('m150916_131805_container', 1476268331),
('m150917_104409_add_new_windows', 1476268333),
('m150924_133344_update_notification_fix', 1476266828),
('m150924_154635_user_invite_add_first_lastname', 1476266830),
('m150927_190830_create_contentcontainer', 1476266833),
('m150928_103711_permissions', 1476266834),
('m150928_134934_groups', 1476266838),
('m150928_140718_setColorVariables', 1476266838),
('m151010_124437_group_permissions', 1476266841),
('m151010_175000_default_visibility', 1476266841),
('m151013_223814_include_dashboard', 1476266844),
('m151022_131128_module_fix', 1476266844),
('m151106_090948_addColor', 1476266844),
('m151223_171310_fix_notifications', 1476266844),
('m151226_164234_authclient', 1476266846),
('m160125_053702_stored_filename', 1476266846),
('m160216_160119_initial', 1476266850),
('m160217_161220_addCanLeaveFlag', 1476266851),
('m160220_013525_contentcontainer_id', 1476266859),
('m160221_222312_public_permission_change', 1476266859),
('m160225_180229_remove_website', 1476266860),
('m160227_073020_birthday_date', 1476266860),
('m160229_162959_multiusergroups', 1476266868),
('m160309_141222_longerUserName', 1476266870),
('m160408_100725_rename_groupadmin_to_manager', 1476266871),
('m160501_220850_activity_pk_int', 1476266872),
('m160507_202611_settings', 1476266877),
('m160508_005740_settings_cleanup', 1476266885),
('m160509_214811_spaceurl', 1476266886),
('m160517_132535_group', 1476266887),
('m160523_105732_profile_searchable', 1476266889),
('m160708_075516_create_custom_profile_page', 1476297657),
('m160708_082434_create_custom_profile_page_field', 1476297659),
('m160714_142827_remove_space_id', 1476266889),
('m160719_131212_init_templates', 1476268351),
('m160808_124800_text_content', 1476268352),
('m160817_130334_page_content_medium_text', 1476268353),
('m160831_133950_snippets', 1476268354),
('m160905_132417_update_profile_field_table_column', 1476297661),
('m160907_122454_file_content', 1476268355),
('m160907_175706_default_templates', 1476268360),
('m160908_084038_admin_only_other_pagetypes', 1476268362),
('m160922_092100_page_class', 1476268365),
('m160922_115053_page_url', 1476268367),
('m160922_143514_page_url_index', 1476268367),
('m160930_045228_create_llinkedin_loginpage_content', 1476269720);

-- --------------------------------------------------------

--
-- Table structure for table `module_enabled`
--

CREATE TABLE IF NOT EXISTS `module_enabled` (
  `module_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_enabled`
--

INSERT INTO `module_enabled` (`module_id`) VALUES
('advanced_search'),
('custom_pages'),
('custom_profile'),
('llinkedin'),
('mail'),
('member_directory');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
`id` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `source_class` varchar(100) DEFAULT NULL,
  `source_pk` int(11) DEFAULT NULL,
  `space_id` int(11) DEFAULT NULL,
  `emailed` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `desktop_notified` tinyint(1) DEFAULT '0',
  `originator_user_id` int(11) DEFAULT NULL,
  `module` varchar(100) DEFAULT '',
  `group_key` varchar(75) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `class`, `user_id`, `seen`, `source_class`, `source_pk`, `space_id`, `emailed`, `created_at`, `desktop_notified`, `originator_user_id`, `module`, `group_key`) VALUES
(1, 'humhub\\modules\\comment\\notifications\\NewComment', 1, 1, 'humhub\\modules\\comment\\models\\Comment', 1, 1, 0, '2016-10-12 12:14:28', 1, 2, 'comment', 'humhub\\modules\\post\\models\\Post-2'),
(2, 'humhub\\modules\\comment\\notifications\\NewComment', 1, 1, 'humhub\\modules\\comment\\models\\Comment', 2, 1, 0, '2016-10-12 12:14:28', 0, 3, 'comment', 'humhub\\modules\\post\\models\\Post-2'),
(3, 'humhub\\modules\\comment\\notifications\\NewComment', 2, 0, 'humhub\\modules\\comment\\models\\Comment', 2, 1, 0, '2016-10-12 12:14:29', 0, 3, 'comment', 'humhub\\modules\\post\\models\\Post-2');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `message_2trash` text,
  `message` text,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `message_2trash`, `message`, `url`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'Yay! I''ve just installed HumHub ;Cool;', NULL, '2016-10-12 12:14:15', 1, '2016-10-12 12:14:15', 1),
(2, NULL, 'We''re looking for great slogans of famous brands. Maybe you can come up with some samples?', NULL, '2016-10-12 12:14:26', 1, '2016-10-12 12:14:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `birthday_hide_year` int(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `about` text,
  `phone_private` varchar(255) DEFAULT NULL,
  `phone_work` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `im_skype` varchar(255) DEFAULT NULL,
  `im_msn` varchar(255) DEFAULT NULL,
  `im_xmpp` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_facebook` varchar(255) DEFAULT NULL,
  `url_linkedin` varchar(255) DEFAULT NULL,
  `url_xing` varchar(255) DEFAULT NULL,
  `url_youtube` varchar(255) DEFAULT NULL,
  `url_vimeo` varchar(255) DEFAULT NULL,
  `url_flickr` varchar(255) DEFAULT NULL,
  `url_myspace` varchar(255) DEFAULT NULL,
  `url_googleplus` varchar(255) DEFAULT NULL,
  `url_twitter` varchar(255) DEFAULT NULL,
  `headline` varchar(250) DEFAULT '',
  `maiden_name` varchar(250) DEFAULT '',
  `industry` varchar(250) DEFAULT '',
  `current_share` varchar(250) DEFAULT '',
  `num_connections` varchar(250) DEFAULT '',
  `summary` longtext,
  `specialties` varchar(250) DEFAULT '',
  `positions` varchar(250) DEFAULT '',
  `location` varchar(250) DEFAULT '',
  `formatted_name` varchar(250) DEFAULT '',
  `phonetic_first_name` varchar(250) DEFAULT '',
  `phonetic_last_name` varchar(250) DEFAULT '',
  `formatted_phonetic_name` varchar(250) DEFAULT '',
  `num_connections_capped` varchar(250) DEFAULT '',
  `site_standard_profile_request` varchar(250) DEFAULT '',
  `email_linkedin` varchar(250) DEFAULT '',
  `company` varchar(250) DEFAULT '',
  `position_startdate` varchar(250) DEFAULT '',
  `position_enddate` varchar(250) DEFAULT '',
  `is_current` varchar(250) DEFAULT '',
  `position_summary` text,
  `api_standard_profile` varchar(250) DEFAULT '',
  `company_position_type` varchar(250) DEFAULT '',
  `company_position_industry` varchar(250) DEFAULT '',
  `company_position_ticker` varchar(250) DEFAULT '',
  `positions_id` varchar(250) DEFAULT '',
  `public_profile_url` varchar(250) DEFAULT '',
  `linkedin_id` varchar(250) DEFAULT '',
  `email_address` varchar(250) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `title`, `gender`, `street`, `zip`, `city`, `country`, `state`, `birthday_hide_year`, `birthday`, `about`, `phone_private`, `phone_work`, `mobile`, `fax`, `im_skype`, `im_msn`, `im_xmpp`, `url`, `url_facebook`, `url_linkedin`, `url_xing`, `url_youtube`, `url_vimeo`, `url_flickr`, `url_myspace`, `url_googleplus`, `url_twitter`, `headline`, `maiden_name`, `industry`, `current_share`, `num_connections`, `summary`, `specialties`, `positions`, `location`, `formatted_name`, `phonetic_first_name`, `phonetic_last_name`, `formatted_phonetic_name`, `num_connections_capped`, `site_standard_profile_request`, `email_linkedin`, `company`, `position_startdate`, `position_enddate`, `is_current`, `position_summary`, `api_standard_profile`, `company_position_type`, `company_position_industry`, `company_position_ticker`, `positions_id`, `public_profile_url`, `linkedin_id`, `email_address`) VALUES
(1, 'Admin', 'Admin', 'System Administration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', ''),
(2, 'David', 'Roberts', 'Late riser', NULL, '2443 Queens Lane', '24574', 'Allwood', 'Virginia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', ''),
(3, 'Sara', 'Schuster', 'Do-gooder', NULL, 'Schmarjestrasse 51', '17095', 'Friedland', 'Niedersachsen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', ''),
(4, 'Erald', 'Çafka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.linkedin.com/in/erald-%C3%A7afka-13a9809b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Software Engineer at Kodek', NULL, 'Computer Software', NULL, '263', NULL, NULL, 'Software Engineer', 'Albania', 'Erald Çafka', NULL, NULL, NULL, NULL, 'https://www.linkedin.com/profile/view?id=AAoAABVSpL4BMhTp8MxI7tdCojExMylq_sMA68s&authType=name&authToken=Xa34&trk=api*a4601303*s4666443*', 'erald.cafka@gmail.com', 'Kodek', 'July 2014', ' ', '1', NULL, NULL, NULL, NULL, NULL, '562328552', 'https://www.linkedin.com/in/erald-%C3%A7afka-13a9809b', 'PszH4VIkmL', 'erald.cafka@gmail.com'),
(5, 'Erald', 'Çafka', NULL, NULL, NULL, NULL, NULL, 'Albania', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.linkedin.com/in/erald-%C3%A7afka-13a9809b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Software Engineer at Kodek', '', 'Computer Software', '', '263', '', '', 'Software Engineer', 'Albania', 'Erald Çafka', '', '', '', '', 'https://www.linkedin.com/profile/view?id=AAoAABVSpL4BMhTp8MxI7tdCojExMylq_sMA68s&authType=name&authToken=Xa34&trk=api*a4601303*s4666443*', 'erald.cafka@gmail.com', 'Kodek', 'July 2014', ' ', '1', '', '', '', '', '', '562328552', 'https://www.linkedin.com/in/erald-%C3%A7afka-13a9809b', 'PszH4VIkmL', 'erald.cafka@gmail.com'),
(6, 'Erald', 'Çafka', NULL, NULL, NULL, NULL, NULL, 'Albania', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.linkedin.com/in/erald-%C3%A7afka-13a9809b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Software Engineer at Kodek', '', 'Computer Software', '', '263', '', '', 'Software Engineer', 'Albania', 'Erald Çafka', '', '', '', '', 'https://www.linkedin.com/profile/view?id=AAoAABVSpL4BMhTp8MxI7tdCojExMylq_sMA68s&authType=name&authToken=Xa34&trk=api*a4601303*s4666443*', 'erald.cafka@gmail.com', 'Kodek', 'July 2014', ' ', '1', '', '', '', '', '', '562328552', 'https://www.linkedin.com/in/erald-%C3%A7afka-13a9809b', 'PszH4VIkmL', 'erald.cafka@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `profile_field`
--

CREATE TABLE IF NOT EXISTS `profile_field` (
`id` int(11) NOT NULL,
  `profile_field_category_id` int(11) NOT NULL,
  `module_id` varchar(255) DEFAULT NULL,
  `field_type_class` varchar(255) NOT NULL,
  `field_type_config` longtext,
  `internal_name` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `sort_order` int(11) NOT NULL DEFAULT '100',
  `required` tinyint(4) DEFAULT NULL,
  `show_at_registration` tinyint(4) DEFAULT NULL,
  `editable` tinyint(4) NOT NULL DEFAULT '1',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_attribute` varchar(255) DEFAULT NULL,
  `translation_category` varchar(255) DEFAULT NULL,
  `is_system` int(1) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_field`
--

INSERT INTO `profile_field` (`id`, `profile_field_category_id`, `module_id`, `field_type_class`, `field_type_config`, `internal_name`, `title`, `description`, `sort_order`, `required`, `show_at_registration`, `editable`, `visible`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_attribute`, `translation_category`, `is_system`, `searchable`) VALUES
(1, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":20,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'firstname', 'First name', NULL, 100, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 'givenName', NULL, 1, 1),
(2, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":30,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'lastname', 'Last name', NULL, 200, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 'sn', NULL, 1, 1),
(3, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":50,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'title', 'Title', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'title', NULL, 1, 1),
(4, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Select', '{"options":"male=>Male\\nfemale=>Female\\ncustom=>Custom","fieldTypes":[]}', 'gender', 'Gender', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(5, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":150,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'street', 'Street', NULL, 400, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(6, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":10,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'zip', 'Zip', NULL, 500, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(7, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'city', 'City', NULL, 600, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(8, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\CountrySelect', '{"options":null,"fieldTypes":[]}', 'country', 'Country', NULL, 700, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(9, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'state', 'State', NULL, 800, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(10, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Birthday', '{"defaultHideAge":false,"fieldTypes":[]}', 'birthday', 'Birthday', NULL, 900, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(11, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\TextArea', '{"fieldTypes":[]}', 'about', 'About', NULL, 900, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(12, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'phone_private', 'Phone Private', NULL, 100, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(13, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'phone_work', 'Phone Work', NULL, 200, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(14, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'mobile', 'Mobile', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(15, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'fax', 'Fax', NULL, 400, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(16, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'im_skype', 'Skype Nickname', NULL, 500, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(17, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'im_msn', 'MSN', NULL, 600, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(18, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"email","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'im_xmpp', 'XMPP Jabber Address', NULL, 800, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(19, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url', 'Url', NULL, 100, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(20, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_facebook', 'Facebook URL', NULL, 200, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(21, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_linkedin', 'LinkedIn URL', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(22, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_xing', 'Xing URL', NULL, 400, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(23, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_youtube', 'Youtube URL', NULL, 500, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(24, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_vimeo', 'Vimeo URL', NULL, 600, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(25, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_flickr', 'Flickr URL', NULL, 700, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(26, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_myspace', 'MySpace URL', NULL, 800, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(27, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_googleplus', 'Google+ URL', NULL, 900, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(28, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_twitter', 'Twitter URL', NULL, 1000, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(29, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'headline', 'Headline', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:54:52', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(30, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'maiden_name', 'Maiden Name', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:54:53', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(31, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'industry', 'Industry', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:54:53', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(32, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'current_share', 'Current Share', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:54:54', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(33, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'num_connections', 'Num Connections', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:54:56', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(34, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\TextArea', '', 'summary', 'Summary', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:54:56', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(35, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'specialties', 'Specialties', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:54:57', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(36, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'positions', 'Positions', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:54:58', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(37, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'location', 'Location', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:54:59', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(38, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'formatted_name', 'Formatted Name', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:54:59', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(39, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'phonetic_first_name', 'Phonetic First Name', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:00', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(40, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'phonetic_last_name', 'Phonetic Last Name', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:01', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(41, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'formatted_phonetic_name', 'Formatted Phonetic Name', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:04', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(42, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'num_connections_capped', 'Num Connections Capped', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:04', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(43, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'site_standard_profile_request', 'Site Standard Profile Request', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:05', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(44, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'email_linkedin', 'Email Linkedin', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:05', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(45, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'company', 'Company', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:06', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(46, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'position_startdate', 'Position Startdate', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:07', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(47, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'position_enddate', 'Position Enddate', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:08', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(48, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'is_current', 'Is Current', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:08', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(49, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\TextArea', '', 'position_summary', 'Position Summary', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:09', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(50, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'api_standard_profile', 'Api Standard Profile', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:10', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(51, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'company_position_type', 'Company Position Type', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:10', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(52, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'company_position_industry', 'Company Position Industry', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:12', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(53, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'company_position_ticker', 'Company Position Ticker', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:14', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(54, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'positions_id', 'Positions Id', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:14', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(55, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'public_profile_url', 'Public Profile Url', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:15', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(56, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'linkedin_id', 'Linkedin Id', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:16', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(57, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '', 'email_address', 'Email Address', NULL, 300, 0, 0, 1, 1, '2016-10-12 12:55:17', NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile_field_category`
--

CREATE TABLE IF NOT EXISTS `profile_field_category` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '100',
  `module_id` int(11) DEFAULT NULL,
  `visibility` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `translation_category` varchar(255) DEFAULT NULL,
  `is_system` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_field_category`
--

INSERT INTO `profile_field_category` (`id`, `title`, `description`, `sort_order`, `module_id`, `visibility`, `created_at`, `created_by`, `updated_at`, `updated_by`, `translation_category`, `is_system`) VALUES
(1, 'General', '', 100, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Communication', '', 200, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Social bookmarks', '', 300, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'Career Information', '', 400, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text,
  `module_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `value`, `module_id`) VALUES
(1, 'oembedProviders', '{"vimeo.com":"http:\\/\\/vimeo.com\\/api\\/oembed.json?scheme=https&url=%url%&format=json&maxwidth=450","youtube.com":"http:\\/\\/www.youtube.com\\/oembed?scheme=https&url=%url%&format=json&maxwidth=450","youtu.be":"http:\\/\\/www.youtube.com\\/oembed?scheme=https&url=%url%&format=json&maxwidth=450","soundcloud.com":"https:\\/\\/soundcloud.com\\/oembed?url=%url%&format=json&maxwidth=450","slideshare.net":"https:\\/\\/www.slideshare.net\\/api\\/oembed\\/2?url=%url%&format=json&maxwidth=450"}', 'base'),
(2, 'defaultVisibility', '1', 'space'),
(3, 'defaultJoinPolicy', '1', 'space'),
(4, 'colorDefault', '#ededed', 'base'),
(5, 'colorPrimary', '#708fa0', 'base'),
(6, 'colorInfo', '#6fdbe8', 'base'),
(7, 'colorSuccess', '#97d271', 'base'),
(8, 'colorWarning', '#fdd198', 'base'),
(9, 'colorDanger', '#ff8989', 'base'),
(10, 'name', 'VMN', 'base'),
(11, 'baseUrl', 'http://vmn.local', 'base'),
(12, 'paginationSize', '10', 'base'),
(13, 'displayNameFormat', '{profile.firstname} {profile.lastname}', 'base'),
(14, 'horImageScrollOnMobile', '1', 'base'),
(15, 'auth.ldap.refreshUsers', '1', 'user'),
(16, 'auth.needApproval', '0', 'user'),
(17, 'auth.anonymousRegistration', '1', 'user'),
(18, 'auth.internalUsersCanInvite', '1', 'user'),
(19, 'mailer.transportType', 'smtp', 'base'),
(20, 'mailer.systemEmailAddress', 'social@example.com', 'base'),
(21, 'mailer.systemEmailName', 'VMN', 'base'),
(22, 'receive_email_activities', '1', 'activity'),
(23, 'receive_email_notifications', '2', 'notification'),
(24, 'maxFileSize', '5242880', 'file'),
(25, 'maxPreviewImageWidth', '200', 'file'),
(26, 'maxPreviewImageHeight', '200', 'file'),
(27, 'hideImageFileInfo', '0', 'file'),
(28, 'cache.class', 'yii\\caching\\FileCache', 'base'),
(29, 'cache.expireTime', '3600', 'base'),
(30, 'installationId', '59d4d96d20b567caf418d23fa0f16071', 'admin'),
(31, 'theme', 'LI_Theme', 'base'),
(32, 'spaceOrder', '0', 'space'),
(33, 'enable', '1', 'tour'),
(34, 'defaultLanguage', 'en-US', 'base'),
(35, 'enable_html5_desktop_notifications', '0', 'notification'),
(36, 'useCase', 'other', 'base'),
(37, 'sampleData', '1', 'installer'),
(38, 'secret', 'aa292a31-1fe5-4465-af89-86cfd3f97bbe', 'base'),
(39, 'timeZone', 'Europe/Berlin', 'base'),
(40, 'extract_linkedin_data', '1', 'llinkedin'),
(41, 'defaultDateInputFormat', '', 'admin'),
(42, 'mailer.hostname', 'localhost', 'base'),
(43, 'mailer.username', '', 'base'),
(44, 'mailer.password', '', 'base'),
(45, 'mailer.port', '25', 'base'),
(46, 'mailer.encryption', '', 'base'),
(47, 'mailer.allowSelfSignedCerts', '0', 'base'),
(48, 'show_on_top_menu', '1', 'custom_profile'),
(49, 'signin_url', 'custom_profile/default/edit-profile/1', 'custom_profile');

-- --------------------------------------------------------

--
-- Table structure for table `space`
--

CREATE TABLE IF NOT EXISTS `space` (
`id` int(11) NOT NULL,
  `guid` varchar(45) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `description` text,
  `join_policy` tinyint(4) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `tags` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `auto_add_new_members` int(4) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL,
  `default_content_visibility` tinyint(1) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `members_can_leave` int(11) DEFAULT '1',
  `url` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `space`
--

INSERT INTO `space` (`id`, `guid`, `wall_id`, `name`, `description`, `join_policy`, `visibility`, `status`, `tags`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_dn`, `auto_add_new_members`, `contentcontainer_id`, `default_content_visibility`, `color`, `members_can_leave`, `url`) VALUES
(1, 'cf3fa11f-0f58-4b6e-8b03-60f931a95d79', 2, 'Welcome Space', 'Your first sample space to discover the platform.', 2, 2, 1, NULL, '2016-10-12 12:14:14', 1, '2016-10-12 12:14:14', 1, NULL, 1, 2, NULL, '#6fdbe8', 1, 'welcome-space');

-- --------------------------------------------------------

--
-- Table structure for table `space_membership`
--

CREATE TABLE IF NOT EXISTS `space_membership` (
  `space_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `originator_user_id` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `request_message` text,
  `last_visit` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT 'member',
  `show_at_dashboard` tinyint(1) DEFAULT '1',
  `can_cancel_membership` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `space_membership`
--

INSERT INTO `space_membership` (`space_id`, `user_id`, `originator_user_id`, `status`, `request_message`, `last_visit`, `created_at`, `created_by`, `updated_at`, `updated_by`, `group_id`, `show_at_dashboard`, `can_cancel_membership`) VALUES
(1, 1, NULL, 3, NULL, '2016-10-12 12:16:38', NULL, NULL, NULL, NULL, 'admin', 1, 1),
(1, 2, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 3, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 4, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 5, NULL, 3, NULL, '2016-10-13 17:43:53', NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 6, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `space_module`
--

CREATE TABLE IF NOT EXISTS `space_module` (
`id` int(11) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `space_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `space_module`
--

INSERT INTO `space_module` (`id`, `module_id`, `space_id`, `state`) VALUES
(1, 'advanced_search', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `url_oembed`
--

CREATE TABLE IF NOT EXISTS `url_oembed` (
  `url` varchar(255) NOT NULL,
  `preview` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `guid` varchar(45) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `auth_mode` varchar(10) NOT NULL,
  `tags` text,
  `language` varchar(5) DEFAULT NULL,
  `last_activity_email` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `visibility` int(1) DEFAULT '1',
  `time_zone` varchar(100) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL,
  `linkedin_id` varchar(250) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `guid`, `wall_id`, `status`, `username`, `email`, `auth_mode`, `tags`, `language`, `last_activity_email`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_login`, `visibility`, `time_zone`, `contentcontainer_id`, `linkedin_id`) VALUES
(1, '304df778-f701-4dac-9cdf-a41f8418cbcd', 1, 1, 'VMNetwork', 'vmn@vmn.com', 'local', 'Administration, Support, HumHub', '', '2016-10-12 12:14:12', '2016-10-12 12:14:12', NULL, '2016-10-12 12:14:12', NULL, '2016-10-14 14:01:55', 1, NULL, 1, ''),
(2, 'e89f15e0-85cb-43be-bdf5-b5f3468cf432', 3, 1, 'david1986', 'david.roberts@example.com', 'local', 'Microsoft Office, Marketing, SEM, Digital Native', '', '2016-10-12 12:14:22', '2016-10-12 12:14:22', 1, '2016-10-12 12:14:22', 1, NULL, 1, NULL, 3, ''),
(3, 'fcdf65f3-d6ee-4214-b505-0da9afd57437', 4, 1, 'sara1989', 'sara.schuster@example.com', 'local', 'Yoga, Travel, English, German, French', '', '2016-10-12 12:14:25', '2016-10-12 12:14:25', 1, '2016-10-12 12:14:25', 1, NULL, 1, NULL, 4, ''),
(6, '97274f77-30bf-4a76-829a-eed09c381534', 7, 1, 'erald.cafka@gmail.com', 'erald.cafka@gmail.com', 'local', NULL, NULL, '2016-10-13 19:31:48', '2016-10-13 19:31:48', NULL, '2016-10-13 19:31:48', NULL, NULL, 1, 'Europe/Berlin', 7, 'PszH4VIkmL');

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE IF NOT EXISTS `user_auth` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_follow`
--

CREATE TABLE IF NOT EXISTS `user_follow` (
`id` int(11) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `send_notifications` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_follow`
--

INSERT INTO `user_follow` (`id`, `object_model`, `object_id`, `user_id`, `send_notifications`) VALUES
(1, 'humhub\\modules\\post\\models\\Post', 1, 1, 1),
(2, 'humhub\\modules\\post\\models\\Post', 2, 1, 1),
(3, 'humhub\\modules\\post\\models\\Post', 2, 2, 1),
(4, 'humhub\\modules\\post\\models\\Post', 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_friendship`
--

CREATE TABLE IF NOT EXISTS `user_friendship` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_http_session`
--

CREATE TABLE IF NOT EXISTS `user_http_session` (
  `id` char(255) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_http_session`
--

INSERT INTO `user_http_session` (`id`, `expire`, `user_id`, `data`) VALUES
('08kpu242gbacitd09qjassa4b2', 1476469608, 1, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a313b);

-- --------------------------------------------------------

--
-- Table structure for table `user_invite`
--

CREATE TABLE IF NOT EXISTS `user_invite` (
`id` int(11) NOT NULL,
  `user_originator_id` int(11) DEFAULT NULL,
  `space_invite_id` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `source` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_mentioning`
--

CREATE TABLE IF NOT EXISTS `user_mentioning` (
`id` int(11) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_message`
--

CREATE TABLE IF NOT EXISTS `user_message` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_originator` tinyint(4) DEFAULT NULL,
  `last_viewed` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_module`
--

CREATE TABLE IF NOT EXISTS `user_module` (
`id` int(11) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_password`
--

CREATE TABLE IF NOT EXISTS `user_password` (
`id` int(11) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `algorithm` varchar(20) DEFAULT NULL,
  `password` text,
  `salt` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_password`
--

INSERT INTO `user_password` (`id`, `user_id`, `algorithm`, `password`, `salt`, `created_at`) VALUES
(1, 1, 'sha512whirlpool', 'ce2dec9a0be01d8a74c4381cbd0dcbaecad409d31da60d48630fae96ca12af2a5b740ae68b65153548b8be6f8f9de8606a31eacedf6f4c77d10c5a1cdd50696f', '1a9fa887-2285-4515-94fb-0b077518f226', '2016-10-12 12:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `wall`
--

CREATE TABLE IF NOT EXISTS `wall` (
`id` int(11) NOT NULL,
  `object_model` varchar(50) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall`
--

INSERT INTO `wall` (`id`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'humhub\\modules\\user\\models\\User', 1, NULL, NULL, NULL, NULL),
(2, 'humhub\\modules\\space\\models\\Space', 1, NULL, NULL, NULL, NULL),
(3, 'humhub\\modules\\user\\models\\User', 2, NULL, NULL, NULL, NULL),
(4, 'humhub\\modules\\user\\models\\User', 3, NULL, NULL, NULL, NULL),
(5, 'humhub\\modules\\user\\models\\User', 4, NULL, NULL, NULL, NULL),
(6, 'humhub\\modules\\user\\models\\User', 5, NULL, NULL, NULL, NULL),
(7, 'humhub\\modules\\user\\models\\User', 6, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wall_entry`
--

CREATE TABLE IF NOT EXISTS `wall_entry` (
`id` int(11) NOT NULL,
  `wall_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wall_entry`
--

INSERT INTO `wall_entry` (`id`, `wall_id`, `content_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 2, 1, '2016-10-12 12:14:15', 1, '2016-10-12 12:14:15', 1),
(2, 2, 3, '2016-10-12 12:14:16', 1, '2016-10-12 12:14:16', 1),
(3, 2, 2, '2016-10-12 12:14:16', 1, '2016-10-12 12:14:16', 1),
(4, 2, 4, '2016-10-12 12:14:23', 1, '2016-10-12 12:14:23', 1),
(5, 2, 5, '2016-10-12 12:14:25', 1, '2016-10-12 12:14:25', 1),
(6, 2, 7, '2016-10-12 12:14:27', 1, '2016-10-12 12:14:27', 1),
(7, 2, 6, '2016-10-12 12:14:27', 1, '2016-10-12 12:14:29', 3),
(8, 2, 8, '2016-10-12 12:14:27', 2, '2016-10-12 12:14:27', 2),
(9, 2, 9, '2016-10-12 12:14:28', 3, '2016-10-12 12:14:28', 3),
(10, 2, 10, '2016-10-12 12:14:29', 3, '2016-10-12 12:14:29', 3),
(11, 2, 11, '2016-10-12 12:14:30', 3, '2016-10-12 12:14:30', 3),
(12, 2, 12, '2016-10-12 18:53:20', NULL, '2016-10-12 18:53:20', NULL),
(13, 2, 13, '2016-10-13 13:01:42', NULL, '2016-10-13 13:01:42', NULL),
(14, 2, 14, '2016-10-13 19:31:50', NULL, '2016-10-13 19:31:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_object_model` (`object_model`,`object_id`), ADD UNIQUE KEY `index_guid` (`guid`), ADD KEY `fk-contentcontainer` (`contentcontainer_id`), ADD KEY `fk-create-user` (`created_by`), ADD KEY `fk-update-user` (`updated_by`);

--
-- Indexes for table `contentcontainer`
--
ALTER TABLE `contentcontainer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique_target` (`class`,`pk`), ADD UNIQUE KEY `unique_guid` (`guid`);

--
-- Indexes for table `contentcontainer_permission`
--
ALTER TABLE `contentcontainer_permission`
 ADD PRIMARY KEY (`permission_id`,`group_id`,`module_id`,`contentcontainer_id`);

--
-- Indexes for table `contentcontainer_setting`
--
ALTER TABLE `contentcontainer_setting`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `settings-unique` (`module_id`,`contentcontainer_id`,`name`), ADD KEY `fk-contentcontainerx` (`contentcontainer_id`);

--
-- Indexes for table `custom_pages_container_page`
--
ALTER TABLE `custom_pages_container_page`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages_container_snippet`
--
ALTER TABLE `custom_pages_container_snippet`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages_page`
--
ALTER TABLE `custom_pages_page`
 ADD PRIMARY KEY (`id`), ADD KEY `custom-page-url-unique` (`url`);

--
-- Indexes for table `custom_pages_snippet`
--
ALTER TABLE `custom_pages_snippet`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages_template`
--
ALTER TABLE `custom_pages_template`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique_tmpl_name` (`name`);

--
-- Indexes for table `custom_pages_template_container`
--
ALTER TABLE `custom_pages_template_container`
 ADD PRIMARY KEY (`id`), ADD KEY `fk-tmpl-template` (`template_id`);

--
-- Indexes for table `custom_pages_template_container_content`
--
ALTER TABLE `custom_pages_template_container_content`
 ADD PRIMARY KEY (`id`), ADD KEY `fk-tmpl-container-definition` (`definition_id`);

--
-- Indexes for table `custom_pages_template_container_content_definition`
--
ALTER TABLE `custom_pages_template_container_content_definition`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages_template_container_content_item`
--
ALTER TABLE `custom_pages_template_container_content_item`
 ADD PRIMARY KEY (`id`), ADD KEY `fk-tmpl-container-item-tmpl` (`template_id`), ADD KEY `fk-tmpl-container-item-content` (`container_content_id`);

--
-- Indexes for table `custom_pages_template_container_content_template`
--
ALTER TABLE `custom_pages_template_container_content_template`
 ADD PRIMARY KEY (`id`), ADD KEY `fk-tmpl-container-tmpl` (`template_id`), ADD KEY `fk-tmpl-container-tmpl-definition` (`definition_id`);

--
-- Indexes for table `custom_pages_template_element`
--
ALTER TABLE `custom_pages_template_element`
 ADD PRIMARY KEY (`id`), ADD KEY `fk-tmpl-element-tmpl` (`template_id`);

--
-- Indexes for table `custom_pages_template_file_content`
--
ALTER TABLE `custom_pages_template_file_content`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages_template_image_content`
--
ALTER TABLE `custom_pages_template_image_content`
 ADD PRIMARY KEY (`id`), ADD KEY `fk-tmpl-image-definition` (`definition_id`);

--
-- Indexes for table `custom_pages_template_image_content_definition`
--
ALTER TABLE `custom_pages_template_image_content_definition`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages_template_owner_content`
--
ALTER TABLE `custom_pages_template_owner_content`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages_template_richtext_content`
--
ALTER TABLE `custom_pages_template_richtext_content`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pages_template_text_content`
--
ALTER TABLE `custom_pages_template_text_content`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_profile_page`
--
ALTER TABLE `custom_profile_page`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_profile_page_field`
--
ALTER TABLE `custom_profile_page_field`
 ADD PRIMARY KEY (`id`), ADD KEY `fk-custom_profile_page_field-custom_profile_page_id` (`custom_profile_page_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
 ADD PRIMARY KEY (`id`), ADD KEY `index_object` (`object_model`,`object_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_permission`
--
ALTER TABLE `group_permission`
 ADD PRIMARY KEY (`permission_id`,`group_id`,`module_id`);

--
-- Indexes for table `group_user`
--
ALTER TABLE `group_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx-group_user` (`user_id`,`group_id`), ADD KEY `fk-group-group` (`group_id`);

--
-- Indexes for table `like`
--
ALTER TABLE `like`
 ADD PRIMARY KEY (`id`), ADD KEY `index_object` (`object_model`,`object_id`);

--
-- Indexes for table `llinkedin`
--
ALTER TABLE `llinkedin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `llinkedin_loginpage_content`
--
ALTER TABLE `llinkedin_loginpage_content`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_log_level` (`level`), ADD KEY `idx_log_category` (`category`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`id`), ADD KEY `index_updated` (`updated_at`), ADD KEY `index_updated_by` (`updated_by`);

--
-- Indexes for table `message_entry`
--
ALTER TABLE `message_entry`
 ADD PRIMARY KEY (`id`), ADD KEY `index_user_id` (`user_id`), ADD KEY `index_message_id` (`message_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `module_enabled`
--
ALTER TABLE `module_enabled`
 ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
 ADD PRIMARY KEY (`id`), ADD KEY `index_user_id` (`user_id`), ADD KEY `index_seen` (`seen`), ADD KEY `index_desktop_notified` (`desktop_notified`), ADD KEY `index_desktop_emailed` (`emailed`), ADD KEY `index_groupuser` (`user_id`,`class`,`group_key`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `profile_field`
--
ALTER TABLE `profile_field`
 ADD PRIMARY KEY (`id`), ADD KEY `index_profile_field_category` (`profile_field_category_id`);

--
-- Indexes for table `profile_field_category`
--
ALTER TABLE `profile_field_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`id`), ADD KEY `unique-setting` (`name`,`module_id`);

--
-- Indexes for table `space`
--
ALTER TABLE `space`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `url-unique` (`url`);

--
-- Indexes for table `space_membership`
--
ALTER TABLE `space_membership`
 ADD PRIMARY KEY (`space_id`,`user_id`), ADD KEY `index_status` (`status`);

--
-- Indexes for table `space_module`
--
ALTER TABLE `space_module`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url_oembed`
--
ALTER TABLE `url_oembed`
 ADD PRIMARY KEY (`url`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique_email` (`email`), ADD UNIQUE KEY `unique_username` (`username`), ADD UNIQUE KEY `unique_guid` (`guid`), ADD UNIQUE KEY `unique_wall_id` (`wall_id`);

--
-- Indexes for table `user_auth`
--
ALTER TABLE `user_auth`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `user_follow`
--
ALTER TABLE `user_follow`
 ADD PRIMARY KEY (`id`), ADD KEY `index_user` (`user_id`), ADD KEY `index_object` (`object_model`,`object_id`);

--
-- Indexes for table `user_friendship`
--
ALTER TABLE `user_friendship`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx-friends` (`user_id`,`friend_user_id`), ADD KEY `fk-friend` (`friend_user_id`);

--
-- Indexes for table `user_http_session`
--
ALTER TABLE `user_http_session`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_invite`
--
ALTER TABLE `user_invite`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique_email` (`email`), ADD UNIQUE KEY `unique_token` (`token`);

--
-- Indexes for table `user_mentioning`
--
ALTER TABLE `user_mentioning`
 ADD PRIMARY KEY (`id`), ADD KEY `i_user` (`user_id`), ADD KEY `i_object` (`object_model`,`object_id`);

--
-- Indexes for table `user_message`
--
ALTER TABLE `user_message`
 ADD PRIMARY KEY (`message_id`,`user_id`), ADD KEY `index_last_viewed` (`last_viewed`);

--
-- Indexes for table `user_module`
--
ALTER TABLE `user_module`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `index_user_module` (`user_id`,`module_id`);

--
-- Indexes for table `user_password`
--
ALTER TABLE `user_password`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `wall`
--
ALTER TABLE `wall`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wall_entry`
--
ALTER TABLE `wall_entry`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `contentcontainer`
--
ALTER TABLE `contentcontainer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `contentcontainer_setting`
--
ALTER TABLE `contentcontainer_setting`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_pages_container_page`
--
ALTER TABLE `custom_pages_container_page`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_pages_container_snippet`
--
ALTER TABLE `custom_pages_container_snippet`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_pages_page`
--
ALTER TABLE `custom_pages_page`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_pages_snippet`
--
ALTER TABLE `custom_pages_snippet`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_pages_template`
--
ALTER TABLE `custom_pages_template`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `custom_pages_template_container`
--
ALTER TABLE `custom_pages_template_container`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_pages_template_container_content`
--
ALTER TABLE `custom_pages_template_container_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `custom_pages_template_container_content_definition`
--
ALTER TABLE `custom_pages_template_container_content_definition`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `custom_pages_template_container_content_item`
--
ALTER TABLE `custom_pages_template_container_content_item`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_pages_template_container_content_template`
--
ALTER TABLE `custom_pages_template_container_content_template`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `custom_pages_template_element`
--
ALTER TABLE `custom_pages_template_element`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `custom_pages_template_file_content`
--
ALTER TABLE `custom_pages_template_file_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_pages_template_image_content`
--
ALTER TABLE `custom_pages_template_image_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_pages_template_image_content_definition`
--
ALTER TABLE `custom_pages_template_image_content_definition`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_pages_template_owner_content`
--
ALTER TABLE `custom_pages_template_owner_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `custom_pages_template_richtext_content`
--
ALTER TABLE `custom_pages_template_richtext_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `custom_pages_template_text_content`
--
ALTER TABLE `custom_pages_template_text_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `custom_profile_page`
--
ALTER TABLE `custom_profile_page`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `custom_profile_page_field`
--
ALTER TABLE `custom_profile_page_field`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_user`
--
ALTER TABLE `group_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `llinkedin`
--
ALTER TABLE `llinkedin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `llinkedin_loginpage_content`
--
ALTER TABLE `llinkedin_loginpage_content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message_entry`
--
ALTER TABLE `message_entry`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `profile_field`
--
ALTER TABLE `profile_field`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `profile_field_category`
--
ALTER TABLE `profile_field_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `space`
--
ALTER TABLE `space`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `space_module`
--
ALTER TABLE `space_module`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_auth`
--
ALTER TABLE `user_auth`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_follow`
--
ALTER TABLE `user_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_friendship`
--
ALTER TABLE `user_friendship`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_invite`
--
ALTER TABLE `user_invite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_mentioning`
--
ALTER TABLE `user_mentioning`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_module`
--
ALTER TABLE `user_module`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_password`
--
ALTER TABLE `user_password`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wall`
--
ALTER TABLE `wall`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wall_entry`
--
ALTER TABLE `wall_entry`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `content`
--
ALTER TABLE `content`
ADD CONSTRAINT `fk-contentcontainer` FOREIGN KEY (`contentcontainer_id`) REFERENCES `contentcontainer` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `fk-create-user` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL,
ADD CONSTRAINT `fk-update-user` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `contentcontainer_setting`
--
ALTER TABLE `contentcontainer_setting`
ADD CONSTRAINT `fk-contentcontainerx` FOREIGN KEY (`contentcontainer_id`) REFERENCES `contentcontainer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custom_pages_template_container`
--
ALTER TABLE `custom_pages_template_container`
ADD CONSTRAINT `fk-tmpl-template` FOREIGN KEY (`template_id`) REFERENCES `custom_pages_template` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_pages_template_container_content`
--
ALTER TABLE `custom_pages_template_container_content`
ADD CONSTRAINT `fk-tmpl-container-definition` FOREIGN KEY (`definition_id`) REFERENCES `custom_pages_template_container_content_definition` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_pages_template_container_content_item`
--
ALTER TABLE `custom_pages_template_container_content_item`
ADD CONSTRAINT `fk-tmpl-container-item-content` FOREIGN KEY (`container_content_id`) REFERENCES `custom_pages_template_container_content` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `fk-tmpl-container-item-tmpl` FOREIGN KEY (`template_id`) REFERENCES `custom_pages_template` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_pages_template_container_content_template`
--
ALTER TABLE `custom_pages_template_container_content_template`
ADD CONSTRAINT `fk-tmpl-container-tmpl` FOREIGN KEY (`template_id`) REFERENCES `custom_pages_template` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `fk-tmpl-container-tmpl-definition` FOREIGN KEY (`definition_id`) REFERENCES `custom_pages_template_container_content_definition` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_pages_template_element`
--
ALTER TABLE `custom_pages_template_element`
ADD CONSTRAINT `fk-tmpl-element-tmpl` FOREIGN KEY (`template_id`) REFERENCES `custom_pages_template` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_pages_template_image_content`
--
ALTER TABLE `custom_pages_template_image_content`
ADD CONSTRAINT `fk-tmpl-image-definition` FOREIGN KEY (`definition_id`) REFERENCES `custom_pages_template_image_content_definition` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_profile_page_field`
--
ALTER TABLE `custom_profile_page_field`
ADD CONSTRAINT `fk-custom_profile_page_field-custom_profile_page_id` FOREIGN KEY (`custom_profile_page_id`) REFERENCES `custom_profile_page` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_user`
--
ALTER TABLE `group_user`
ADD CONSTRAINT `fk-group-group` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `fk-user-group` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_auth`
--
ALTER TABLE `user_auth`
ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_friendship`
--
ALTER TABLE `user_friendship`
ADD CONSTRAINT `fk-friend` FOREIGN KEY (`friend_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `fk-user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
