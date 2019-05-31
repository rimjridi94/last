-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 19, 2019 at 04:50 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facturation_saas`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `products_name_unique` (`name`),
  UNIQUE KEY `products_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `client_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `increment_num` int(11) NOT NULL AUTO_INCREMENT,
  `mat_fisc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_commerce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `increment_num` (`increment_num`),
  KEY `user_uuid foreign key` (`user_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`uuid`, `client_no`, `name`, `email`, `address1`, `address2`, `city`, `state`, `postal_code`, `country`, `phone`, `mobile`, `website`, `notes`, `created_at`, `updated_at`, `increment_num`, `mat_fisc`, `reg_commerce`, `user_uuid`) VALUES
('6c6d061b-0937-4575-84ce-4a9696bb17d5', '5', 'sdfdsfsd', 'xxx@gmail.com', 'sdsqd', 'qsdsq', 'sdfds', 'sdfds', 'sdfds', 'sdfds', '25151', '525', 'sfsdfds.com', 'klj', '2019-02-07 16:23:23', '2019-02-07 16:23:23', 5, 'sdfsdfds', 'zerez', NULL),
('7d1768bd-9e07-4d46-ac06-83e072ff1f69', '1', 'test', 'test_client@gmail.com', 'test', 'test', 'tet', 'test', 'test', 'test', '255555', '256516565', 'testclient.com', 'sdfsdfds', '2019-02-07 13:01:26', '2019-02-07 13:01:26', 4, 'test', 'test', NULL),
('db8d90e1-abed-4e24-a8a2-a155f14e8867', '6', 'Nom et prénom', 'sdfds@sdfds.sdfds', 'Numéro , Adresse', 'sdfsd', 'Ville', 'sd', 'Code Postal', 'France', '(541) 651-6516', '258615', '', 'sds', '2019-02-07 16:24:42', '2019-02-07 16:24:42', 6, 'sdfds', 'sdfsdf', '20c77890-1fea-4065-a45e-92d60d50f3ca');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `selected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`uuid`, `name`, `symbol`, `selected`, `created_at`, `updated_at`) VALUES
('686dc5fe-d703-4294-8d9c-840d165ece3d', 'dinar', 'TND', 0, '2019-01-18 00:24:30', '2019-01-18 00:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

DROP TABLE IF EXISTS `email_settings`;
CREATE TABLE IF NOT EXISTS `email_settings` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `protocol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

DROP TABLE IF EXISTS `estimates`;
CREATE TABLE IF NOT EXISTS `estimates` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `estimate_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estimate_date` date NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `increment_num` int(11) NOT NULL AUTO_INCREMENT,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `estimates_estimate_no_unique` (`estimate_no`),
  UNIQUE KEY `increment_num` (`increment_num`),
  KEY `estimates_client_id_foreign` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estimates`
--

INSERT INTO `estimates` (`uuid`, `client_id`, `estimate_no`, `estimate_date`, `currency`, `notes`, `terms`, `created_at`, `updated_at`, `increment_num`, `user_uuid`) VALUES
('46c1d44a-cf03-40ee-a410-8cd41bad4d4d', '6c6d061b-0937-4575-84ce-4a9696bb17d5', '0', '2019-02-07', 'TND', '', '', '2019-02-07 16:34:14', '2019-02-07 16:34:14', 1, '20c77890-1fea-4065-a45e-92d60d50f3ca');

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

DROP TABLE IF EXISTS `estimate_items`;
CREATE TABLE IF NOT EXISTS `estimate_items` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `estimate_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `price` double(15,2) NOT NULL,
  `tax_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nb_jours` int(11) DEFAULT '1',
  PRIMARY KEY (`uuid`),
  KEY `estimate_items_estimate_id_foreign` (`estimate_id`),
  KEY `estimate_items_tax_id_foreign` (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `estimate_items`
--

INSERT INTO `estimate_items` (`uuid`, `estimate_id`, `item_name`, `item_description`, `quantity`, `price`, `tax_id`, `created_at`, `updated_at`, `nb_jours`) VALUES
('f06fb9e3-1169-4536-b819-6efdfce63335', '46c1d44a-cf03-40ee-a410-8cd41bad4d4d', 'sss', 'dddd', 2.00, 200.00, NULL, '2019-02-07 16:34:14', '2019-02-07 16:34:14', 6);

-- --------------------------------------------------------

--
-- Table structure for table `estimate_settings`
--

DROP TABLE IF EXISTS `estimate_settings`;
CREATE TABLE IF NOT EXISTS `estimate_settings` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `start_number` int(11) NOT NULL,
  `terms` text COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vendor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expense_date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`uuid`, `name`, `vendor`, `category`, `expense_date`, `amount`, `notes`, `created_at`, `updated_at`, `user_uuid`) VALUES
('aa3242c4-f24d-412e-88fa-a6da39ac858f', 'sdfds', 'sdfds', 'dfsfsd', '2019-02-07', 200.00, 'ccvcvc', '2019-02-07 16:44:44', '2019-02-07 16:44:44', '20c77890-1fea-4065-a45e-92d60d50f3ca');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `terms` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `increment_num` int(11) NOT NULL AUTO_INCREMENT,
  `avoir` tinyint(1) NOT NULL DEFAULT '0',
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bon` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `invoices_number_unique` (`number`),
  UNIQUE KEY `increment_num` (`increment_num`),
  KEY `invoices_client_id_foreign` (`client_id`),
  KEY `user id foreign key` (`user_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`uuid`, `client_id`, `number`, `invoice_date`, `due_date`, `status`, `discount`, `terms`, `notes`, `currency`, `created_at`, `updated_at`, `increment_num`, `avoir`, `user_uuid`, `bon`) VALUES
('0a72fe96-ac4c-46a4-9954-648350d3477f', '6c6d061b-0937-4575-84ce-4a9696bb17d5', '16', '2019-01-21', '2019-01-30', 0, 0.00, '', '', 'TND', '2019-02-09 17:47:27', '2019-02-09 17:58:55', 16, 0, '20c77890-1fea-4065-a45e-92d60d50f3ca', 1),
('3ab933a2-54b2-452b-8b0a-5c63d3485df0', '7d1768bd-9e07-4d46-ac06-83e072ff1f69', '14', '2019-01-21', '2019-01-30', 3, 0.00, '', '', 'TND', '2019-02-07 13:07:52', '2019-02-07 16:39:05', 15, 0, '20c77890-1fea-4065-a45e-92d60d50f3ca', 0),
('baf06bc1-ef13-4d49-9eca-feaa6b0ffc6c', '7d1768bd-9e07-4d46-ac06-83e072ff1f69', 'xx-14', '2019-01-21', '2019-01-30', 3, 0.00, '', '', 'TND', '2019-02-09 17:54:10', '2019-02-09 17:54:10', 17, 1, '20c77890-1fea-4065-a45e-92d60d50f3ca', 0),
('e33112f2-df48-4f52-8bb4-3804e24a1c3a', '6c6d061b-0937-4575-84ce-4a9696bb17d5', 'bon_bon_16', '2019-01-22', '2019-01-22', 0, 0.00, '', '', 'TND', '2019-02-09 18:07:36', '2019-02-09 18:07:36', 18, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
CREATE TABLE IF NOT EXISTS `invoice_items` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `price` double(15,3) NOT NULL,
  `tax_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nb_jours` int(11) DEFAULT '1',
  PRIMARY KEY (`uuid`),
  KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  KEY `invoice_items_tax_id_foreign` (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`uuid`, `invoice_id`, `item_name`, `item_description`, `quantity`, `price`, `tax_id`, `created_at`, `updated_at`, `nb_jours`) VALUES
('af0f43f3-e69a-4704-b254-b8aafc408ba0', '3ab933a2-54b2-452b-8b0a-5c63d3485df0', 'xxx', 'xxxx', 20.00, 100.000, NULL, '2019-02-07 13:07:52', '2019-02-07 13:07:52', 6),
('b95208a1-b583-421e-8b07-60ff6d83707c', '0a72fe96-ac4c-46a4-9954-648350d3477f', 'cc', 'cccc', 5.00, 200.000, NULL, '2019-02-09 17:47:27', '2019-02-09 17:47:27', 1),
('e5549e04-b777-4246-93c3-1d644edc9a27', 'e33112f2-df48-4f52-8bb4-3804e24a1c3a', 'ff', 'fff', 5.00, 100.000, NULL, '2019-02-09 18:07:36', '2019-02-09 18:07:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_settings`
--

DROP TABLE IF EXISTS `invoice_settings`;
CREATE TABLE IF NOT EXISTS `invoice_settings` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `start_number` int(11) NOT NULL,
  `terms` text COLLATE utf8_unicode_ci NOT NULL,
  `due_days` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_settings`
--

INSERT INTO `invoice_settings` (`uuid`, `start_number`, `terms`, `due_days`, `logo`, `created_at`, `updated_at`, `user_uuid`) VALUES
('fcb0dbf1-0d7e-4287-9764-abe6af0f07d5', 17, '', 7, 'ceqhtneum5h4l6ugo3fknnlgixjskjuqyxjntbmrhjmvojcmbb.jpg', '2019-01-19 09:21:55', '2019-02-09 18:07:36', '20c77890-1fea-4065-a45e-92d60d50f3ca');

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
CREATE TABLE IF NOT EXISTS `locales` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `locale_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locales`
--

INSERT INTO `locales` (`uuid`, `locale_name`, `short_name`, `flag`, `status`, `created_at`, `updated_at`) VALUES
('372c9939-d650-4b7f-9619-c8f0beb62a16', 'english', 'en', '1zkkvvsktknz2epc116hexm8cmflqsrcxg6rtecyohml1isx7q.png', 0, '2015-09-29 04:19:27', '2015-09-29 05:04:54'),
('9fbad035-c65c-4521-ab6e-b99e5d1d5a43', 'French', 'FR', 't2ps45tyrj3vkjs7xodtnbhwc4nngvfzl5yje4qkdphojpgii9.png', 1, '2019-01-18 18:02:00', '2019-01-18 18:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

DROP TABLE IF EXISTS `ltm_translations`;
CREATE TABLE IF NOT EXISTS `ltm_translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=791 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 0, 'en', 'application', 'edit_client', 'Edit Client', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(3, 0, 'en', 'application', 'clients', 'Clients', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(4, 0, 'en', 'application', 'new_client', 'New Client', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(5, 0, 'en', 'application', 'reference', 'Reference', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(6, 0, 'en', 'application', 'name', 'Name', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(7, 0, 'en', 'application', 'email', 'Email', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(8, 0, 'en', 'application', 'phone', 'Phone', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(9, 0, 'en', 'application', 'country', 'Country', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(11, 0, 'en', 'application', 'client_details', 'Client Details', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(12, 0, 'en', 'application', 'client_number', 'Client Number', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(13, 0, 'en', 'application', 'mobile', 'Mobile', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(14, 0, 'en', 'application', 'address_1', 'Address 1', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(15, 0, 'en', 'application', 'address_2', 'Address 2', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(16, 0, 'en', 'application', 'city', 'City', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(17, 0, 'en', 'application', 'state_province', 'State / Province', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(18, 0, 'en', 'application', 'postal_zip', 'Postal / Zip Code', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(19, 0, 'en', 'application', 'website', 'Website', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(20, 0, 'en', 'application', 'notes', 'Notes', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(21, 0, 'en', 'application', 'invoices', 'Invoices', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(22, 0, 'en', 'application', 'invoice_number', 'Invoice Number', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(23, 0, 'en', 'application', 'status', 'Status', '2015-08-23 08:06:03', '2019-01-18 18:05:15'),
(24, 0, 'en', 'application', 'date', 'Date', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(25, 0, 'en', 'application', 'due_date', 'Due Date', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(26, 0, 'en', 'application', 'amount', 'Amount', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(27, 0, 'en', 'application', 'view', 'View', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(28, 0, 'en', 'application', 'estimates', 'Estimates', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(29, 0, 'en', 'application', 'estimate_number', 'Estimate Number', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(30, 0, 'en', 'application', 'login', 'Login', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(31, 0, 'en', 'application', 'back', 'Back', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(32, 0, 'en', 'application', 'estimate', 'Estimate', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(33, 0, 'en', 'application', 'client', 'Client', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(34, 0, 'en', 'application', 'currency', 'Currency', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(35, 0, 'en', 'application', 'estimate_date', 'Estimate Date', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(36, 0, 'en', 'application', 'product', 'Product', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(37, 0, 'en', 'application', 'description', 'Description', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(38, 0, 'en', 'application', 'quantity', 'Quantity', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(39, 0, 'en', 'application', 'price', 'Price', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(40, 0, 'en', 'application', 'tax', 'Tax', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(41, 0, 'en', 'application', 'add_row', 'Add Row', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(42, 0, 'en', 'application', 'add_from_products', 'Add From Products', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(43, 0, 'en', 'application', 'subtotal', 'Sub Total', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(44, 0, 'en', 'application', 'total', 'Total', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(45, 0, 'en', 'application', 'terms', 'Terms', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(46, 0, 'en', 'application', 'save', 'Save', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(47, 0, 'en', 'application', 'preview', 'Preview', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(48, 0, 'en', 'application', 'new_estimate', 'New Estimate', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(49, 0, 'en', 'application', 'download', 'Download', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(50, 0, 'en', 'application', 'edit', 'Edit', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(51, 0, 'en', 'application', 'our_information', 'Our Information', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(52, 0, 'en', 'application', 'estimate_to', 'Estimate To', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(53, 0, 'en', 'application', 'send', 'Send', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(54, 0, 'en', 'application', 'billing_to', 'Billing To', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(55, 0, 'en', 'application', 'add_expense', 'Add Expense', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(56, 0, 'en', 'application', 'edit_expense', 'Edit Expense', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(57, 0, 'en', 'application', 'expenses', 'Expenses', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(58, 0, 'en', 'application', 'category', 'Category', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(59, 0, 'en', 'application', 'expense_name', 'Expense Name', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(60, 0, 'en', 'application', 'vendor', 'Vendor', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(61, 0, 'en', 'application', 'expense_date', 'Expense Date', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(62, 0, 'en', 'application', 'dashboard', 'Accueil', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(63, 0, 'en', 'application', 'products', 'Products', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(64, 0, 'en', 'application', 'invoices_partially_paid', 'Partially Paid', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(65, 0, 'en', 'application', 'unpaid_invoices', 'Unpaid Invoices', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(66, 0, 'en', 'application', 'invoices_overdue', 'Overdue Invoices', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(67, 0, 'en', 'application', 'paid_invoices', 'Paid  Invoices', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(68, 0, 'en', 'application', 'invoices_generated', 'Invoices Generated', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(69, 0, 'en', 'application', 'days', 'Days', '2015-08-23 08:06:04', '2019-01-18 18:05:15'),
(70, 0, 'en', 'application', 'recent_invoices', 'Recent Invoices', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(71, 0, 'en', 'application', 'invoice_status', 'Invoice Status', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(72, 0, 'en', 'application', 'recent_estimates', 'Recent Estimates', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(73, 0, 'en', 'application', 'invoice', 'Invoice', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(74, 0, 'en', 'application', 'discount', 'Discount', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(75, 0, 'en', 'application', 'save_invoice', 'Save Invoice', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(76, 0, 'en', 'application', 'paid', 'Paid', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(77, 0, 'en', 'application', 'amount_due', 'Amount Due', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(78, 0, 'en', 'application', 'new_invoice', 'New Invoice', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(79, 0, 'en', 'application', 'vat_number', 'VAT Number', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(80, 0, 'en', 'application', 'online', 'Online', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(82, 0, 'en', 'application', 'edit_payment', 'Edit Payment', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(83, 0, 'en', 'application', 'payments', 'Payments', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(84, 0, 'en', 'application', 'record_payment', 'Record Payment', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(85, 0, 'en', 'application', 'received_on', 'Received On', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(86, 0, 'en', 'application', 'payment_method', 'Payment Method', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(87, 0, 'en', 'application', 'add_product', 'Add Product', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(88, 0, 'en', 'application', 'edit_product', 'Add Product', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(89, 0, 'en', 'application', 'new_product', 'New Product', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(90, 0, 'en', 'application', 'code', 'Code', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(91, 0, 'en', 'application', 'unit_price', 'Unit Price', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(92, 0, 'en', 'application', 'product_description', 'Product Description', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(93, 0, 'en', 'application', 'select_product', 'Select Product', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(94, 0, 'en', 'application', 'reports', 'Reports', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(95, 0, 'en', 'application', 'payments_received', 'Payments Received', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(96, 0, 'en', 'application', 'estimates_generated', 'Estimate has been generated', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(97, 0, 'en', 'application', 'expenses_incurred', 'Expenses Incurred', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(98, 0, 'en', 'application', 'browse', 'Browse', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(99, 0, 'en', 'application', 'add_user', 'Add User', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(100, 0, 'en', 'application', 'edit_user', 'Edit User', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(101, 0, 'en', 'application', 'system_users', 'System Users', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(102, 0, 'en', 'application', 'new_user', 'New User', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(103, 0, 'en', 'application', 'photo', 'Photo', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(104, 0, 'en', 'application', 'username', 'Username', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(105, 0, 'en', 'application', 'password', 'Password', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(106, 0, 'en', 'application', 'confirm_password', 'Confirm Password', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(107, 0, 'en', 'application', 'edit_profile', 'Edit Profile', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(108, 0, 'en', 'application', 'email_address', 'Email Address', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(109, 0, 'en', 'application', 'password_leave_blank_notification', ' (Leave blank if not changing)', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(110, 0, 'en', 'application', 'update_profile', 'Update Profile', '2015-08-23 08:06:05', '2019-01-18 18:05:15'),
(111, 0, 'en', 'pagination', 'previous', '&laquo;Précédent', '2015-08-23 08:06:19', '2015-11-02 14:25:13'),
(112, 0, 'en', 'pagination', 'next', 'suivant&raquo;', '2015-08-23 08:06:19', '2015-11-02 14:25:13'),
(113, 0, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2015-08-23 08:06:19', '2015-11-02 14:25:13'),
(114, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2015-08-23 08:06:19', '2015-11-02 14:25:13'),
(115, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2015-08-23 08:06:19', '2015-11-02 14:25:13'),
(116, 0, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2015-08-23 08:06:19', '2015-11-02 14:25:13'),
(117, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2015-08-23 08:06:19', '2015-11-02 14:25:13'),
(118, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2015-08-23 08:06:19', '2015-11-02 14:25:13'),
(119, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2015-08-23 08:06:19', '2015-11-02 14:25:13'),
(120, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2015-08-23 08:06:19', '2015-11-02 14:25:13'),
(121, 0, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(122, 0, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(123, 0, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(124, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(125, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(126, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(127, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(128, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(129, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(130, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(131, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(132, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(133, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(134, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(135, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(136, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(137, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(138, 0, 'en', 'validation', 'filled', 'The :attribute field is required.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(139, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(140, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(141, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(142, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(143, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2015-08-23 08:06:19', '2015-11-02 14:25:14'),
(144, 0, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(145, 0, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(146, 0, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(147, 0, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(148, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(149, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(150, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(151, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(152, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(153, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(154, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(155, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(156, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2015-08-23 08:06:20', '2015-11-02 14:25:14'),
(157, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(158, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(159, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(160, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(161, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(162, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(163, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(164, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(165, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(166, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(167, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(168, 0, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(169, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(170, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(171, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2015-08-23 08:06:20', '2015-11-02 14:25:15'),
(241, 0, 'en', 'application', 'add_client', 'Add Client', '2015-10-01 07:03:41', '2019-01-18 18:05:15'),
(242, 0, 'en', 'application', 'action', 'Action', '2015-10-01 07:03:41', '2019-01-18 18:05:15'),
(243, 0, 'en', 'application', 'yearly_overview', 'Yearly Overview', '2015-10-01 07:03:41', '2019-01-18 18:05:15'),
(244, 0, 'en', 'application', 'payment_overview', 'Payment Overview', '2015-10-01 07:03:41', '2019-01-18 18:05:15'),
(245, 0, 'en', 'application', 'income', 'Income', '2015-10-01 07:03:41', '2019-01-18 18:05:15'),
(246, 0, 'en', 'application', 'expenditure', 'Expenditure', '2015-10-01 07:03:41', '2019-01-18 18:05:15'),
(247, 0, 'en', 'application', 'amount_received', 'Amount Received', '2015-10-01 07:03:41', '2019-01-18 18:05:15'),
(248, 0, 'en', 'application', 'outstanding_amount', 'Outstanding Amount', '2015-10-01 07:03:41', '2019-01-18 18:05:15'),
(249, 0, 'en', 'application', 'add_payment', 'Add Payment', '2015-10-01 07:03:41', '2019-01-18 18:05:15'),
(250, 0, 'en', 'application', 'generate_statement', 'Generate Statement', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(251, 0, 'en', 'application', 'client_pending_balance', 'Client Pending Balance', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(252, 0, 'en', 'application', 'client_statistics', 'Client Statistics', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(253, 0, 'en', 'application', 'total_invoiced_amount', 'Total Invoiced Amount', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(254, 0, 'en', 'application', 'total_amount_paid', 'Total Amount Paid', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(255, 0, 'en', 'application', 'activity', 'Activity', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(256, 0, 'en', 'application', 'balance', 'Balance', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(257, 0, 'en', 'application', 'from', 'From', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(258, 0, 'en', 'application', 'to', 'To', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(259, 0, 'en', 'application', 'generate_report', 'Generate Report', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(260, 0, 'en', 'application', 'general_summary', 'General Summary', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(261, 0, 'en', 'application', 'payments_summary', 'Payments Summary', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(262, 0, 'en', 'application', 'client_statement', 'Client Statement', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(263, 0, 'en', 'application', 'invoice_report', 'Invoice Report', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(264, 0, 'en', 'application', 'expense_report', 'Expense Report', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(265, 0, 'en', 'application', 'system_settings', 'System Settings', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(266, 0, 'en', 'application', 'contact_person', 'Contact Person', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(267, 0, 'en', 'application', 'zip_postal_code', 'Zip/Postal Code', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(268, 0, 'en', 'application', 'logo', 'Logo', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(269, 0, 'en', 'application', 'width', 'Width', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(270, 0, 'en', 'application', 'date_format', 'Date Format', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(271, 0, 'en', 'application', 'save_settings', 'Save Settings', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(272, 0, 'en', 'application', 'invoice_settings', 'Invoice Settings', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(273, 0, 'en', 'application', 'number_invoice_starting', 'Number Invoice Starting', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(274, 0, 'en', 'application', 'invoice_term', 'Invoice Term', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(275, 0, 'en', 'application', 'company', 'Company', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(276, 0, 'en', 'application', 'templates', 'Templates', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(277, 0, 'en', 'application', 'numbering', 'Numbering', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(278, 0, 'en', 'application', 'payment_methods', 'Payment Methods', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(279, 0, 'en', 'application', 'language_manager', 'Language Manager', '2015-10-01 07:03:42', '2019-01-18 18:05:15'),
(280, 0, 'en', 'application', 'email_templates', 'Email Templates', '2015-10-01 07:03:43', '2019-01-18 18:05:15'),
(281, 0, 'en', 'application', 'add_locale', 'Add Locale', '2015-10-01 07:03:43', '2019-01-18 18:05:15'),
(282, 0, 'en', 'application', 'translations', 'Translations', '2015-10-01 07:03:43', '2019-01-18 18:05:15'),
(283, 0, 'en', 'application', 'create_locale', 'Create Locale', '2015-10-01 07:03:43', '2019-01-18 18:05:15'),
(284, 0, 'en', 'application', 'flag', 'Flag', '2015-10-01 07:03:43', '2019-01-18 18:05:15'),
(285, 0, 'en', 'application', 'locale_name', 'Locale Name', '2015-10-01 07:03:43', '2019-01-18 18:05:15'),
(286, 0, 'en', 'application', 'short_name', 'Short Name', '2015-10-01 07:03:43', '2019-01-18 18:05:15'),
(287, 0, 'en', 'application', 'enabled', 'Enabled', '2015-10-01 07:03:43', '2019-01-18 18:05:15'),
(288, 0, 'en', 'application', 'disabled', 'Disabled', '2015-10-01 07:03:43', '2019-01-18 18:05:15'),
(289, 0, 'en', 'application', 'view_translations', 'View Translations', '2015-10-01 07:03:43', '2019-01-18 18:05:15'),
(470, 0, 'en', 'application', 'record_created', 'Record has been created.', '2015-11-05 08:21:24', '2019-01-18 18:05:15'),
(471, 0, 'en', 'application', 'record_creation_failed', 'Sorry record not created, please try again.', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(472, 0, 'en', 'application', 'record_updated', 'Record has been updated', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(473, 0, 'en', 'application', 'update_failed', 'Sorry record update failed. Please try again', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(474, 0, 'en', 'application', 'record_deleted', 'Record has been deleted', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(475, 0, 'en', 'application', 'create_failed', 'Sorry record not created, try again', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(476, 0, 'en', 'application', 'record_failed', 'Record Failed', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(477, 0, 'en', 'application', 'delete_failed', 'Sorry record not deleted. Try again.', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(478, 0, 'en', 'application', 'record_update_failed', 'Sorry record was not updated, please try again\n', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(479, 0, 'en', 'application', 'record_deletion_failed', 'Sorry record has not been deleted, please try again.', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(480, 0, 'en', 'application', 'email_sent', 'Email has been sent', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(481, 0, 'en', 'application', 'email_settings_error', 'Please set the mail server details first in setting > Email', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(482, 0, 'en', 'application', 'settings_updated', 'Settings have been updated', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(483, 0, 'en', 'application', 'client_no', 'Client Number', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(484, 0, 'en', 'application', 'state', 'State', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(485, 0, 'en', 'application', 'postal_code', 'Postal Code', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(486, 0, 'en', 'application', 'deleting_record', 'Deleting a Record', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(487, 0, 'en', 'application', 'delete_confirmation_msg', 'Are you sure you want to delete this record. This action cannot be undone.', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(488, 0, 'en', 'application', 'change', 'Change', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(489, 0, 'en', 'application', 'edit_currency', 'Edit Currency', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(490, 0, 'en', 'application', 'currency_name', 'Currency Name', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(491, 0, 'en', 'application', 'symbol', 'Symbol', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(492, 0, 'en', 'application', 'default', 'Default', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(493, 0, 'en', 'application', 'yes', 'Yes', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(494, 0, 'en', 'application', 'no', 'No', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(495, 0, 'en', 'application', 'protocol', 'Protocol', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(496, 0, 'en', 'application', 'smtp_host', 'SMTP Host', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(497, 0, 'en', 'application', 'smtp_username', 'SMTP Username', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(498, 0, 'en', 'application', 'smtp_password', 'SMTP Password', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(499, 0, 'en', 'application', 'smtp_port', 'SMTP Port', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(500, 0, 'en', 'application', 'estimate_settings', 'Estimate Settings', '2015-11-05 08:21:25', '2019-01-18 18:05:15'),
(501, 0, 'en', 'application', 'number_estimate_starting', 'Number Estimate Starting', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(502, 0, 'en', 'application', 'estimate_terms', 'Estimate Terms', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(503, 0, 'en', 'application', 'invoice_terms', 'Invoice Terms', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(504, 0, 'en', 'application', 'due_after', 'Due Date', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(505, 0, 'en', 'application', 'number_prefix', 'Number Prefix', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(506, 0, 'en', 'application', 'client_number_prefix', 'Client Number Prefix', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(507, 0, 'en', 'application', 'invoice_number_prefix', 'Invoice Number Prefix', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(508, 0, 'en', 'application', 'estimate_number_prefix', 'Estimate Number Prefix', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(509, 0, 'en', 'application', 'edit_payment_method', 'Edit Payment Method', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(510, 0, 'en', 'application', 'edit_tax', 'Edit Tax', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(511, 0, 'en', 'application', 'tax_name', 'Tax Name', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(512, 0, 'en', 'application', 'tax_value', 'Tax Value', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(513, 0, 'en', 'application', 'tax_settings', 'Tax Settings', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(514, 0, 'en', 'application', 'value', 'Value', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(515, 0, 'en', 'application', 'template', 'Template', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(516, 0, 'en', 'application', 'subject', 'Subject', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(517, 0, 'en', 'application', 'email_body', 'Email Body', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(518, 0, 'en', 'application', 'invoice_tags', 'Invoice Tags', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(519, 0, 'en', 'application', 'client_tags', 'Client Tags', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(520, 0, 'en', 'application', 'company_tags', 'Company Tags', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(521, 0, 'en', 'application', 'users_tags', 'Users Tags', '2015-11-05 08:21:26', '2019-01-18 18:05:15'),
(522, 0, 'FR', 'application', 'dashboard', 'Accueil', '2019-01-18 16:22:13', '2019-01-18 18:05:15'),
(523, 1, 'FR', 'application', 'record_created', 'Record has been created.', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(524, 1, 'FR', 'application', 'record_creation_failed', 'Sorry record not created, please try again.', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(525, 1, 'FR', 'application', 'record_updated', 'Record has been updated', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(526, 1, 'FR', 'application', 'update_failed', 'Sorry record update failed. Please try again', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(527, 1, 'FR', 'application', 'record_deleted', 'Record has been deleted', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(528, 1, 'FR', 'application', 'create_failed', 'Sorry record not created, try again', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(529, 1, 'FR', 'application', 'record_failed', 'Record Failed', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(530, 1, 'FR', 'application', 'delete_failed', 'Sorry record not deleted. Try again.', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(531, 1, 'FR', 'application', 'record_update_failed', 'Sorry record was not updated, please try again\n', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(532, 1, 'FR', 'application', 'record_deletion_failed', 'Sorry record has not been deleted, please try again.', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(533, 1, 'FR', 'application', 'email_sent', 'Email has been sent', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(534, 1, 'FR', 'application', 'email_settings_error', 'Please set the mail server details first in setting > Email', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(535, 1, 'FR', 'application', 'settings_updated', 'Settings have been updated', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(536, 1, 'FR', 'application', 'add_client', 'ajouter client', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(537, 1, 'FR', 'application', 'edit_client', 'Modifier Client', '2019-01-18 16:24:02', '2019-01-18 18:29:55'),
(538, 1, 'FR', 'application', 'clients', 'Clients', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(539, 1, 'FR', 'application', 'new_client', 'New Client', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(540, 1, 'FR', 'application', 'reference', 'Reference', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(541, 1, 'FR', 'application', 'name', 'Name', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(542, 1, 'FR', 'application', 'email', 'Email', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(543, 1, 'FR', 'application', 'phone', 'Phone', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(544, 1, 'FR', 'application', 'country', 'Country', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(545, 1, 'FR', 'application', 'action', 'Action', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(546, 1, 'FR', 'application', 'client_no', 'Numéro client', '2019-01-18 16:24:02', '2019-01-18 19:08:24'),
(547, 1, 'FR', 'application', 'mobile', 'Mobile', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(548, 1, 'FR', 'application', 'address_1', 'Addresse 1', '2019-01-18 16:24:02', '2019-01-18 19:06:35'),
(549, 1, 'FR', 'application', 'address_2', 'Addresse 2', '2019-01-18 16:24:02', '2019-01-18 19:06:39'),
(550, 1, 'FR', 'application', 'city', 'Ville', '2019-01-18 16:24:02', '2019-01-18 19:08:02'),
(551, 1, 'FR', 'application', 'state', 'State', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(552, 1, 'FR', 'application', 'postal_code', 'Postal Code', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(553, 1, 'FR', 'application', 'website', 'Website', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(554, 1, 'FR', 'application', 'notes', 'Notes', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(555, 1, 'FR', 'application', 'client_details', 'Detail du client', '2019-01-18 16:24:02', '2019-01-18 19:08:15'),
(556, 1, 'FR', 'application', 'client_number', 'numéro client', '2019-01-18 16:24:02', '2019-01-18 19:08:32'),
(557, 1, 'FR', 'application', 'state_province', 'State / Province', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(558, 1, 'FR', 'application', 'postal_zip', 'Postal / Zip Code', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(559, 1, 'FR', 'application', 'invoices', 'Invoices', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(560, 1, 'FR', 'application', 'invoice_number', 'Invoice Number', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(561, 1, 'FR', 'application', 'status', 'Status', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(562, 1, 'FR', 'application', 'date', 'Date', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(563, 1, 'FR', 'application', 'due_date', 'Due Date', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(564, 1, 'FR', 'application', 'amount', 'Montant', '2019-01-18 16:24:02', '2019-01-18 19:06:45'),
(565, 1, 'FR', 'application', 'view', 'View', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(566, 1, 'FR', 'application', 'estimates', 'Estimates', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(567, 1, 'FR', 'application', 'estimate_number', 'Estimate Number', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(568, 1, 'FR', 'application', 'deleting_record', 'Deleting a Record', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(569, 1, 'FR', 'application', 'delete_confirmation_msg', 'Are you sure you want to delete this record. This action cannot be undone.', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(570, 1, 'FR', 'application', 'login', 'Login', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(571, 1, 'FR', 'application', 'back', 'précedant', '2019-01-18 16:24:02', '2019-01-18 19:07:20'),
(572, 1, 'FR', 'application', 'estimate', 'Estimate', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(573, 1, 'FR', 'application', 'client', 'Client', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(574, 1, 'FR', 'application', 'currency', 'Currency', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(575, 1, 'FR', 'application', 'estimate_date', 'Estimate Date', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(576, 1, 'FR', 'application', 'product', 'Product', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(577, 1, 'FR', 'application', 'description', 'Description', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(578, 1, 'FR', 'application', 'quantity', 'Quantity', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(579, 1, 'FR', 'application', 'price', 'Price', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(580, 1, 'FR', 'application', 'tax', 'Tax', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(581, 1, 'FR', 'application', 'add_row', 'ajouter ligne', '2019-01-18 16:24:02', '2019-01-18 19:06:19'),
(582, 1, 'FR', 'application', 'add_from_products', 'Ajouter du produits', '2019-01-18 16:24:02', '2019-01-18 19:05:37'),
(583, 1, 'FR', 'application', 'subtotal', 'Sub Total', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(584, 1, 'FR', 'application', 'total', 'Total', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(585, 1, 'FR', 'application', 'terms', 'Terms', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(586, 1, 'FR', 'application', 'save', 'Save', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(587, 1, 'FR', 'application', 'preview', 'Preview', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(588, 1, 'FR', 'application', 'new_estimate', 'New Estimate', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(589, 1, 'FR', 'application', 'send', 'Send', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(590, 1, 'FR', 'application', 'edit', 'Edit', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(591, 1, 'FR', 'application', 'our_information', 'Our Information', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(592, 1, 'FR', 'application', 'estimate_to', 'Estimate To', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(593, 1, 'FR', 'application', 'download', 'Download', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(594, 1, 'FR', 'application', 'billing_to', 'Facturé à', '2019-01-18 16:24:02', '2019-01-18 19:07:37'),
(595, 1, 'FR', 'application', 'add_expense', 'ajouter depense', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(596, 1, 'FR', 'application', 'edit_expense', 'Edit Expense', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(597, 1, 'FR', 'application', 'expenses', 'Expenses', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(598, 1, 'FR', 'application', 'category', 'Categorie', '2019-01-18 16:24:02', '2019-01-18 19:07:50'),
(599, 1, 'FR', 'application', 'expense_name', 'Expense Name', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(600, 1, 'FR', 'application', 'vendor', 'Vendor', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(601, 1, 'FR', 'application', 'expense_date', 'Expense Date', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(602, 1, 'FR', 'application', 'products', 'Produits', '2019-01-18 16:24:02', '2019-01-18 19:13:40'),
(603, 1, 'FR', 'application', 'invoices_partially_paid', 'Partially Paid', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(604, 1, 'FR', 'application', 'unpaid_invoices', 'Unpaid Invoices', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(605, 1, 'FR', 'application', 'invoices_overdue', 'Overdue Invoices', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(606, 1, 'FR', 'application', 'paid_invoices', 'Paid  Invoices', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(607, 1, 'FR', 'application', 'yearly_overview', 'Yearly Overview', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(608, 1, 'FR', 'application', 'payment_overview', 'Payment Overview', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(609, 1, 'FR', 'application', 'recent_invoices', 'Recent Invoices', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(610, 1, 'FR', 'application', 'invoice_status', 'Invoice Status', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(611, 1, 'FR', 'application', 'recent_estimates', 'Recent Estimates', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(612, 1, 'FR', 'application', 'income', 'Income', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(613, 1, 'FR', 'application', 'expenditure', 'Expenditure', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(614, 1, 'FR', 'application', 'amount_received', 'Montant reçue', '2019-01-18 16:24:02', '2019-01-18 19:07:11'),
(615, 1, 'FR', 'application', 'outstanding_amount', 'Outstanding Amount', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(616, 1, 'FR', 'application', 'invoice', 'facture', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(617, 1, 'FR', 'application', 'change', 'Changer', '2019-01-18 16:24:02', '2019-01-18 19:07:55'),
(618, 1, 'FR', 'application', 'discount', 'Discount', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(619, 1, 'FR', 'application', 'save_invoice', 'Save Invoice', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(620, 1, 'FR', 'application', 'paid', 'Paid', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(621, 1, 'FR', 'application', 'amount_due', 'Montant depassé', '2019-01-18 16:24:02', '2019-01-18 19:06:59'),
(622, 1, 'FR', 'application', 'new_invoice', 'New Invoice', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(623, 1, 'FR', 'application', 'vat_number', 'VAT Number', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(624, 1, 'FR', 'application', 'online', 'Online', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(625, 1, 'FR', 'application', 'add_payment', 'ajouter paiement\n', '2019-01-18 16:24:02', '2019-01-18 19:06:00'),
(626, 1, 'FR', 'application', 'edit_payment', 'Edit Payment', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(627, 1, 'FR', 'application', 'payments', 'Payments', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(628, 1, 'FR', 'application', 'record_payment', 'Record Payment', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(629, 1, 'FR', 'application', 'received_on', 'Received On', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(630, 1, 'FR', 'application', 'payment_method', 'Payment Method', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(631, 1, 'FR', 'application', 'add_product', 'ajouter produit', '2019-01-18 16:24:02', '2019-01-18 19:06:07'),
(632, 1, 'FR', 'application', 'edit_product', 'Add Product', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(633, 1, 'FR', 'application', 'new_product', 'New Product', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(634, 1, 'FR', 'application', 'code', 'Code', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(635, 1, 'FR', 'application', 'unit_price', 'Unit Price', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(636, 1, 'FR', 'application', 'product_description', 'Product Description', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(637, 1, 'FR', 'application', 'select_product', 'Select Product', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(638, 1, 'FR', 'application', 'generate_statement', 'Generate Statement', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(639, 1, 'FR', 'application', 'client_pending_balance', 'Balance client en cours', '2019-01-18 16:24:02', '2019-01-18 19:09:09'),
(640, 1, 'FR', 'application', 'client_statistics', 'Client Statistics', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(641, 1, 'FR', 'application', 'total_invoiced_amount', 'Total Invoiced Amount', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(642, 1, 'FR', 'application', 'total_amount_paid', 'Total Amount Paid', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(643, 1, 'FR', 'application', 'activity', 'activité', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(644, 1, 'FR', 'application', 'balance', 'Balance', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(645, 1, 'FR', 'application', 'from', 'From', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(646, 1, 'FR', 'application', 'to', 'To', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(647, 1, 'FR', 'application', 'generate_report', 'Generate Report', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(648, 1, 'FR', 'application', 'reports', 'Reports', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(649, 1, 'FR', 'application', 'general_summary', 'General Summary', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(650, 1, 'FR', 'application', 'payments_summary', 'Payments Summary', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(651, 1, 'FR', 'application', 'client_statement', 'Client Statement', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(652, 1, 'FR', 'application', 'invoice_report', 'Invoice Report', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(653, 1, 'FR', 'application', 'expense_report', 'Expense Report', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(654, 1, 'FR', 'application', 'system_settings', 'System Settings', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(655, 1, 'FR', 'application', 'contact_person', 'Contact Person', '2019-01-18 16:24:02', '2019-01-18 18:29:56'),
(656, 1, 'FR', 'application', 'zip_postal_code', 'Zip/Postal Code', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(657, 1, 'FR', 'application', 'logo', 'Logo', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(658, 1, 'FR', 'application', 'width', 'Width', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(659, 1, 'FR', 'application', 'browse', 'Chercher', '2019-01-18 16:24:03', '2019-01-18 19:07:45'),
(660, 1, 'FR', 'application', 'date_format', 'Date Format', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(661, 1, 'FR', 'application', 'save_settings', 'Save Settings', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(662, 1, 'FR', 'application', 'edit_currency', 'Edit Currency', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(663, 1, 'FR', 'application', 'currency_name', 'Currency Name', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(664, 1, 'FR', 'application', 'symbol', 'Symbol', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(665, 1, 'FR', 'application', 'default', 'Default', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(666, 1, 'FR', 'application', 'yes', 'Yes', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(667, 1, 'FR', 'application', 'no', 'No', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(668, 1, 'FR', 'application', 'protocol', 'Protocol', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(669, 1, 'FR', 'application', 'smtp_host', 'SMTP Host', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(670, 1, 'FR', 'application', 'smtp_username', 'SMTP Username', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(671, 1, 'FR', 'application', 'smtp_password', 'SMTP Password', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(672, 1, 'FR', 'application', 'smtp_port', 'SMTP Port', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(673, 1, 'FR', 'application', 'estimate_settings', 'Estimate Settings', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(674, 1, 'FR', 'application', 'number_estimate_starting', 'Number Estimate Starting', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(675, 1, 'FR', 'application', 'estimate_terms', 'Estimate Terms', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(676, 1, 'FR', 'application', 'invoice_settings', 'Invoice Settings', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(677, 1, 'FR', 'application', 'number_invoice_starting', 'Number Invoice Starting', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(678, 1, 'FR', 'application', 'invoice_terms', 'Invoice Terms', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(679, 1, 'FR', 'application', 'due_after', 'Due Date', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(680, 1, 'FR', 'application', 'days', 'Days', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(681, 1, 'FR', 'application', 'number_prefix', 'Number Prefix', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(682, 1, 'FR', 'application', 'client_number_prefix', 'prefix num client', '2019-01-18 16:24:03', '2019-01-18 19:08:44'),
(683, 1, 'FR', 'application', 'invoice_number_prefix', 'Invoice Number Prefix', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(684, 1, 'FR', 'application', 'estimate_number_prefix', 'Estimate Number Prefix', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(685, 1, 'FR', 'application', 'company', 'Company', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(686, 1, 'FR', 'application', 'templates', 'Templates', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(687, 1, 'FR', 'application', 'numbering', 'Numbering', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(688, 1, 'FR', 'application', 'payment_methods', 'Payment Methods', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(689, 1, 'FR', 'application', 'language_manager', 'Language Manager', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(690, 1, 'FR', 'application', 'edit_payment_method', 'Edit Payment Method', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(691, 1, 'FR', 'application', 'edit_tax', 'Edit Tax', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(692, 1, 'FR', 'application', 'tax_name', 'Tax Name', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(693, 1, 'FR', 'application', 'tax_value', 'Tax Value', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(694, 1, 'FR', 'application', 'tax_settings', 'Tax Settings', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(695, 1, 'FR', 'application', 'value', 'Value', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(696, 1, 'FR', 'application', 'email_templates', 'Email Templates', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(697, 1, 'FR', 'application', 'template', 'Template', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(698, 1, 'FR', 'application', 'subject', 'Subject', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(699, 1, 'FR', 'application', 'email_body', 'Email Body', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(700, 1, 'FR', 'application', 'invoice_tags', 'Invoice Tags', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(701, 1, 'FR', 'application', 'client_tags', 'Client Tags', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(702, 1, 'FR', 'application', 'company_tags', 'Company Tags', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(703, 1, 'FR', 'application', 'users_tags', 'Users Tags', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(704, 1, 'FR', 'application', 'add_locale', 'Ajouter Locale', '2019-01-18 16:24:03', '2019-01-18 19:05:52'),
(705, 1, 'FR', 'application', 'translations', 'traductions', '2019-01-18 16:24:03', '2019-01-18 18:29:56');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(706, 1, 'FR', 'application', 'create_locale', 'Create Locale', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(707, 1, 'FR', 'application', 'flag', 'Flag', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(708, 1, 'FR', 'application', 'locale_name', 'Locale Name', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(709, 1, 'FR', 'application', 'short_name', 'Short Name', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(710, 1, 'FR', 'application', 'enabled', 'Enabled', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(711, 1, 'FR', 'application', 'disabled', 'Disabled', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(712, 1, 'FR', 'application', 'view_translations', 'View Translations', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(713, 1, 'FR', 'application', 'add_user', 'ajouter utilisateur', '2019-01-18 16:24:03', '2019-01-18 19:06:27'),
(714, 1, 'FR', 'application', 'edit_user', 'Edit User', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(715, 1, 'FR', 'application', 'system_users', 'System Users', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(716, 1, 'FR', 'application', 'new_user', 'New User', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(717, 1, 'FR', 'application', 'photo', 'Photo', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(718, 1, 'FR', 'application', 'username', 'Username', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(719, 1, 'FR', 'application', 'password', 'Password', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(720, 1, 'FR', 'application', 'confirm_password', 'Confirm Password', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(721, 1, 'FR', 'application', 'edit_profile', 'Edit Profile', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(722, 1, 'FR', 'application', 'email_address', 'Email Address', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(723, 1, 'FR', 'application', 'password_leave_blank_notification', ' (Leave blank if not changing)', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(724, 1, 'FR', 'application', 'update_profile', 'Update Profile', '2019-01-18 16:24:03', '2019-01-18 18:29:56'),
(725, 0, 'FR', 'pagination', 'previous', '&laquo; Précedent', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(726, 0, 'FR', 'pagination', 'next', 'Suivant&raquo;', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(727, 0, 'FR', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(728, 0, 'FR', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(729, 0, 'FR', 'passwords', 'token', 'This password reset token is invalid.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(730, 0, 'FR', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(731, 0, 'FR', 'passwords', 'reset', 'Your password has been reset!', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(732, 0, 'FR', 'validation', 'accepted', 'The :attribute must be accepted.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(733, 0, 'FR', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(734, 0, 'FR', 'validation', 'after', 'The :attribute must be a date after :date.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(735, 0, 'FR', 'validation', 'alpha', 'The :attribute may only contain letters.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(736, 0, 'FR', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(737, 0, 'FR', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(738, 0, 'FR', 'validation', 'array', 'The :attribute must be an array.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(739, 0, 'FR', 'validation', 'before', 'The :attribute must be a date before :date.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(740, 0, 'FR', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(741, 0, 'FR', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(742, 0, 'FR', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(743, 0, 'FR', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(744, 0, 'FR', 'validation', 'boolean', 'The :attribute field must be true or false.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(745, 0, 'FR', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(746, 0, 'FR', 'validation', 'date', 'The :attribute is not a valid date.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(747, 0, 'FR', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(748, 0, 'FR', 'validation', 'different', 'The :attribute and :other must be different.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(749, 0, 'FR', 'validation', 'digits', 'The :attribute must be :digits digits.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(750, 0, 'FR', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(751, 0, 'FR', 'validation', 'email', 'The :attribute must be a valid email address.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(752, 0, 'FR', 'validation', 'filled', 'The :attribute field is required.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(753, 0, 'FR', 'validation', 'exists', 'The selected :attribute is invalid.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(754, 0, 'FR', 'validation', 'image', 'The :attribute must be an image.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(755, 0, 'FR', 'validation', 'in', 'The selected :attribute is invalid.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(756, 0, 'FR', 'validation', 'integer', 'The :attribute must be an integer.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(757, 0, 'FR', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(758, 0, 'FR', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(759, 0, 'FR', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(760, 0, 'FR', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(761, 0, 'FR', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(762, 0, 'FR', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(763, 0, 'FR', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(764, 0, 'FR', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(765, 0, 'FR', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(766, 0, 'FR', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(767, 0, 'FR', 'validation', 'not_in', 'The selected :attribute is invalid.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(768, 0, 'FR', 'validation', 'numeric', 'The :attribute must be a number.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(769, 0, 'FR', 'validation', 'regex', 'The :attribute format is invalid.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(770, 0, 'FR', 'validation', 'required', 'The :attribute field is required.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(771, 0, 'FR', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(772, 0, 'FR', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(773, 0, 'FR', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(774, 0, 'FR', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(775, 0, 'FR', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(776, 0, 'FR', 'validation', 'same', 'The :attribute and :other must match.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(777, 0, 'FR', 'validation', 'size.numeric', 'The :attribute must be :size.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(778, 0, 'FR', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(779, 0, 'FR', 'validation', 'size.string', 'The :attribute must be :size characters.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(780, 0, 'FR', 'validation', 'size.array', 'The :attribute must contain :size items.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(781, 0, 'FR', 'validation', 'unique', 'The :attribute has already been taken.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(782, 0, 'FR', 'validation', 'url', 'The :attribute format is invalid.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(783, 0, 'FR', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(784, 0, 'FR', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(785, 0, 'FR', 'validation', 'string', 'The :attribute must be a string.', '2019-01-18 16:53:02', '2019-01-18 16:59:02'),
(786, 1, 'FR', 'application', 'invoices_generated', 'Invoices Generated', '2019-01-18 18:29:56', '2019-01-18 18:29:56'),
(787, 1, 'FR', 'application', 'payments_received', 'Payments Received', '2019-01-18 18:29:56', '2019-01-18 18:29:56'),
(788, 1, 'FR', 'application', 'estimates_generated', 'Estimate has been generated', '2019-01-18 18:29:56', '2019-01-18 18:29:56'),
(789, 1, 'FR', 'application', 'expenses_incurred', 'Expenses Incurred', '2019-01-18 18:29:56', '2019-01-18 18:29:56'),
(790, 1, 'FR', 'application', 'invoice_term', 'Invoice Term', '2019-01-18 18:29:56', '2019-01-18 18:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_04_02_193005_create_translations_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_03_25_172714_create_clients_table', 1),
('2015_03_27_085858_create_settings_table', 1),
('2015_03_27_135836_create_invoice_settings_table', 1),
('2015_03_27_162144_create_number_settings_table', 1),
('2015_03_27_201613_create_tax_settings_table', 1),
('2015_03_27_224017_create_payment_methods_table', 1),
('2015_03_27_234043_create_currencies_table', 1),
('2015_03_28_094152_create_templates_table', 1),
('2015_03_30_002614_create_products_table', 1),
('2015_03_30_021744_create_expenses_table', 1),
('2015_03_30_111027_create_estimates_table', 1),
('2015_04_02_065437_create_estimate_items_table', 1),
('2015_04_03_051326_create_invoices_table', 1),
('2015_04_03_134759_create_invoice_items_table', 1),
('2015_04_04_054138_create_payments_table', 1),
('2015_09_28_190355_create_locales_table', 1),
('2015_10_08_092016_create_estimate_settings_table', 1),
('2015_11_05_040728_create_email_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `number_settings`
--

DROP TABLE IF EXISTS `number_settings`;
CREATE TABLE IF NOT EXISTS `number_settings` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estimate_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `amount` double(8,2) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `payments_invoice_id_foreign` (`invoice_id`),
  KEY `payments_method_foreign` (`method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`uuid`, `invoice_id`, `payment_date`, `amount`, `notes`, `method`, `created_at`, `updated_at`, `user_uuid`) VALUES
('50dae3fe-0040-4c9b-a571-30186bbdc71c', '3ab933a2-54b2-452b-8b0a-5c63d3485df0', '2019-02-07', 200.00, 'fdvfd', 'f5d395b1-6b91-421b-80b4-e5757a08d06a', '2019-02-07 16:39:04', '2019-02-07 16:39:04', '20c77890-1fea-4065-a45e-92d60d50f3ca');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `selected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`uuid`, `name`, `selected`, `created_at`, `updated_at`, `user_uuid`) VALUES
('f5d395b1-6b91-421b-80b4-e5757a08d06a', 'Virement Bancaire', 0, '2019-01-19 17:02:23', '2019-01-19 17:02:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,3) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `stock` tinyint(1) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `products_name_unique` (`name`),
  UNIQUE KEY `products_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`uuid`, `name`, `code`, `category`, `description`, `price`, `created_at`, `updated_at`, `stock`, `quantity`, `user_uuid`) VALUES
('9f43224a-40fa-4ed0-a0b6-5ff489c908d4', 'stock', 'stock', 'stock', 'stock', 200.000, '2019-02-07 16:49:41', '2019-02-07 16:49:41', 1, 5, '20c77890-1fea-4065-a45e-92d60d50f3ca'),
('e62187f9-d856-4669-8152-67f90658a6ae', 'xxx', 'ccc', 'cvcv', 'cxvxcv', 200.000, '2019-02-07 16:47:43', '2019-02-07 16:47:43', 0, NULL, '20c77890-1fea-4065-a45e-92d60d50f3ca');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `RG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIB` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`uuid`, `name`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `postal_code`, `country`, `contact`, `vat`, `website`, `logo`, `favicon`, `date_format`, `created_at`, `updated_at`, `RG`, `RIB`, `user_uuid`) VALUES
('727cf250-87a4-4926-847c-551ef844d624', 'leopard', 'leopard@gmail.com', '16546556', 'yyyyyyyyyyyyyy', '', 'tunis', 'tunis', '1013', 'tunisie', '', 'xxxxxx-xxxx', '', '8avtuoxlgmhbpjutzvny2njxi5kfjx4rz47qpt1b3gpnnwn7ik.jpg', NULL, 'd/m/Y', '2019-01-23 17:41:11', '2019-02-07 19:32:01', 'dd', 'vvvv', '20c77890-1fea-4065-a45e-92d60d50f3ca'),
('f58e7052-3ff3-449c-8dc9-721efe0ac38c', 'xxx', 'xxx@xx.xx', 'sdfds', 'sdfds', 'sdfds', 'sdfsdf', 'NY', '20156', 'sdfsd', 'xxxx', 'sdfsd', 'sfsdfds.com', NULL, NULL, 'd/m/Y', '2019-02-07 17:16:18', '2019-02-07 17:16:18', 'sdfds', '651465165', '1d38d9d2-5b73-477b-a711-935ef96b2da2');

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

DROP TABLE IF EXISTS `tax_settings`;
CREATE TABLE IF NOT EXISTS `tax_settings` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `selected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_settings`
--

INSERT INTO `tax_settings` (`uuid`, `name`, `value`, `selected`, `created_at`, `updated_at`, `user_uuid`) VALUES
('2633868d-fa2c-459b-b489-530e7fb99ac2', 'exo', 0, 0, '2019-01-21 11:12:59', '2019-01-21 11:12:59', ''),
('70a13f33-29c9-4d18-8b84-951134563841', 'TVA', 19, 1, '2019-01-18 00:23:11', '2019-01-21 11:12:48', '');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
CREATE TABLE IF NOT EXISTS `templates` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `user_uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uuid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uuid`, `name`, `email`, `phone`, `username`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
('1d38d9d2-5b73-477b-a711-935ef96b2da2', 'wesparklesolutions', 'wesparklesolutions@gmail.com', '545454454', 'wesparklesolutions', '$2y$10$hyz/AnOt0nHA1mGW5WAxDepn1dnnQAEUN9wLsPb5CSKUQvMkimvom', 'ohlawcihzf9a0agy1bcbty0as6who6q7ynykvdjyrjjlmmejxa.png', 'whbtrnEFAh4WZThwBSLoAC15mc3i3n2zgYQLU8PkxiKeHpF8ANGaDoLFhy8Z', '2019-01-18 00:11:44', '2019-02-09 17:20:53', 1),
('20c77890-1fea-4065-a45e-92d60d50f3ca', 'test', 'test@gmail.com', '63545', 'test', '$2y$10$IJrrZorXKx1qyIae60EyPe/RwOE3ve50dpvaRjv/fKKbjEhhQPLlK', NULL, 'wRfYh9pDHkMvX4RvEiueYZeG7XaB9A7SJ9oAhq4ChNyGu2cm1W2MON83pMBn', '2019-02-07 10:25:58', '2019-02-07 19:37:44', 0),
('d5e92eed-cb0b-4eec-a6b2-acb62dbd4064', 'Amine', 'jelassi.amine@gmail.com', '22352997', 'amine', '$2y$10$drQTqkmwLU3tXS61/Usc8up6T2NzwgGi6BpHxVD3p4lm.eUl5xOGe', NULL, NULL, '2019-01-31 14:03:27', '2019-01-31 14:03:27', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `estimates`
--
ALTER TABLE `estimates`
  ADD CONSTRAINT `estimates_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD CONSTRAINT `estimate_items_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estimate_items_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_settings` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_items_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_settings` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_method_foreign` FOREIGN KEY (`method`) REFERENCES `payment_methods` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
