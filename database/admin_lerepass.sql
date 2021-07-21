-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2021 at 11:15 AM
-- Server version: 5.7.34-0ubuntu0.18.04.1
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_lerepass`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intercom` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0 - Vendor, 1 - Blog',
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_index` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `restorant_id`, `created_at`, `updated_at`, `order_index`, `active`) VALUES
(1, 'Salads', 1, '2021-06-16 09:39:30', '2021-06-16 09:57:07', 1, 1),
(2, 'Pizza', 1, '2021-06-16 09:39:30', '2021-06-16 09:57:07', 2, 1),
(3, 'Fresh Pasta and Risotto', 1, '2021-06-16 09:39:31', '2021-06-16 09:57:07', 3, 1),
(4, 'Lasagna', 1, '2021-06-16 09:39:31', '2021-06-16 09:57:07', 4, 1),
(5, 'Burgers', 2, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(6, 'Garnish', 2, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(7, 'Salads', 2, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(8, 'Starters', 2, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(9, 'Drinks', 2, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(10, 'Burrito', 3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(11, 'Quesadilla', 3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(12, 'Taco', 3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(13, 'Burrito In A Bowl', 3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(14, 'Salads', 4, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(15, 'Pizza', 4, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(16, 'Burrito', 4, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(17, 'Drinks', 4, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(18, 'Fresh Pasta and Risotto', 5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(19, 'Salads', 5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(20, 'Pizza', 5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 0, 1),
(21, 'Lasagna', 5, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(22, 'Burrito In A Bowl', 6, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(23, 'Burrito', 6, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(24, 'Taco', 6, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(25, 'Quesadilla', 6, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(26, 'Salads', 7, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(27, 'Drinks', 7, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(28, 'Starters', 7, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(29, 'Burgers', 7, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(30, 'Garnish', 7, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(31, 'Drinks', 8, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(32, 'Burrito', 8, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(33, 'Salads', 8, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(34, 'Pizza', 8, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 0, 1),
(35, 'Lasagna', 9, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 0, 1),
(36, 'Pizza', 9, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 0, 1),
(37, 'Salads', 9, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(38, 'Fresh Pasta and Risotto', 9, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(39, 'Burrito', 10, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(40, 'Taco', 10, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(41, 'Burrito In A Bowl', 10, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(42, 'Quesadilla', 10, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(43, 'Drinks', 11, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(44, 'Starters', 11, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(45, 'Salads', 11, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(46, 'Burgers', 11, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(47, 'Garnish', 11, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(48, 'Drinks', 12, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(49, 'Burrito', 12, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(50, 'Pizza', 12, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(51, 'Salads', 12, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(52, 'Fresh Pasta and Risotto', 13, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(53, 'Pizza', 13, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 0, 1),
(54, 'Salads', 13, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(55, 'Lasagna', 13, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(56, 'Burrito In A Bowl', 14, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(57, 'Quesadilla', 14, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(58, 'Burrito', 14, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(59, 'Taco', 14, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(60, 'Salads', 15, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(61, 'Garnish', 15, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(62, 'Burgers', 15, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(63, 'Drinks', 15, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(64, 'Starters', 15, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(65, 'Salads', 16, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(66, 'Burrito', 16, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(67, 'Pizza', 16, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 0, 1),
(68, 'Drinks', 16, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 0, 1),
(69, 'Salads', 55, '2021-07-17 09:14:01', '2021-07-17 09:14:01', 1, 1),
(70, 'Drinks', 55, '2021-07-17 09:14:08', '2021-07-17 09:14:08', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `name`, `alias`, `image`, `header_title`, `header_subtitle`, `deleted_at`) VALUES
(1, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Bronx', 'bx', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Bronx</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(2, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Brooklyn', 'br', 'https://foodtiger.mobidonia.com/uploads/settings/6d001b6c-2ba1-499e-9f57-09b7dc46ace3_large.jpg', 'Food Delivery from<br /><strong>Brooklyn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(3, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Queens', 'qe', 'https://foodtiger.mobidonia.com/uploads/settings/492b78df-1756-4c30-910a-d3923b66aa97_large.jpg', 'Food Delivery from<br /><strong>Queens</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(4, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Manhattn', 'mh', 'https://foodtiger.mobidonia.com/uploads/settings/01f41f56-1acf-44f0-8e8d-fedceb5267cf_large.jpg', 'Food Delivery from<br /><strong>Manhattn</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(5, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Richmond', 'ri', 'https://foodtiger.mobidonia.com/uploads/settings/fe6c500b-3410-41ff-9734-94c58351ba60_large.jpg', 'Food Delivery from<br /><strong>Richmond</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(6, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Buffalo', 'bf', 'https://foodtiger.mobidonia.com/uploads/settings/0c3c8fb0-c252-4758-9699-6851b15796ef_large.jpg', 'Food Delivery from<br /><strong>Buffalo</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Rochester', 'rh', 'https://foodtiger.mobidonia.com/uploads/settings/c7f21267-7149-4311-9fd9-4a08904f67a3_large.jpg', 'Food Delivery from<br /><strong>Rochester</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Yonkers', 'yo', 'https://foodtiger.mobidonia.com/uploads/settings/8c65269a-3bbc-4899-be13-75d1bc35e9cd_large.jpg', 'Food Delivery from<br /><strong>Yonkers</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Syracuse', 'sy', 'https://foodtiger.mobidonia.com/uploads/settings/1e5fcde5-5dc0-4c29-8f49-314658836fb8_large.jpg', 'Food Delivery from<br /><strong>Syracuse</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Albany', 'al', 'https://foodtiger.mobidonia.com/uploads/settings/b521e77f-1d3e-4695-b871-bac8262c85dc_large.jpg', 'Food Delivery from<br /><strong>Albany</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'New Rochelle', 'nr', 'https://foodtiger.mobidonia.com/uploads/settings/8b3ebb83-2e2e-43dd-8747-4f9c6f451199_large.jpg', 'Food Delivery from<br /><strong>New Rochelle</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Mount Vernon', 'mv', 'https://foodtiger.mobidonia.com/uploads/settings/daecfb93-677f-43a9-9e7e-4cf109194399_large.jpg', 'Food Delivery from<br /><strong>Mount Vernon</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Schenectady', 'sc', 'https://foodtiger.mobidonia.com/uploads/settings/177686e2-8597-46e0-bf70-daa8d5ff0085_large.jpg', 'Food Delivery from<br /><strong>Schenectady</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(14, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Utica', 'ut', 'https://foodtiger.mobidonia.com/uploads/settings/507847c5-1896-4ecf-bfe8-9c5f198ce41e_large.jpg', 'Food Delivery from<br /><strong>Utica</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(15, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'White Plains', 'wp', 'https://foodtiger.mobidonia.com/uploads/settings/a8e96a74-dc3a-403c-8fd0-b4528838e98c_large.jpg', 'Food Delivery from<br /><strong>White Plains</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL),
(16, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Niagara Falls', 'nf', 'https://foodtiger.mobidonia.com/uploads/settings/99d5b4c3-0bb4-428a-96cf-0e510bc3ab57_large.jpg', 'Food Delivery from<br /><strong>Niagara Falls</strong>’s Best Restaurants', 'The meals you love, delivered with care', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `value`, `key`, `model_type`, `model_id`, `created_at`, `updated_at`) VALUES
(1, '0', 'disable_callwaiter', 'App\\Restorant', 16, '2021-06-16 09:56:09', '2021-06-16 09:56:09'),
(2, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 16, '2021-06-16 09:56:10', '2021-06-16 09:56:10'),
(3, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 16, '2021-06-16 09:56:10', '2021-06-16 09:56:10'),
(4, '0', 'disable_callwaiter', 'App\\Restorant', 15, '2021-06-16 10:17:18', '2021-06-16 10:17:18'),
(5, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 15, '2021-06-16 10:17:18', '2021-06-16 10:17:18'),
(6, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 15, '2021-06-16 10:17:18', '2021-06-16 10:17:18'),
(7, '0', 'disable_callwaiter', 'App\\Restorant', 1, '2021-06-16 10:17:43', '2021-06-16 10:17:43'),
(8, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 1, '2021-06-16 10:17:44', '2021-06-16 10:17:44'),
(9, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 1, '2021-06-16 10:17:44', '2021-06-16 10:17:44'),
(10, '0', 'disable_callwaiter', 'App\\Restorant', 14, '2021-06-16 11:54:35', '2021-06-16 11:54:35'),
(11, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 14, '2021-06-16 11:54:35', '2021-06-16 11:54:35'),
(12, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 14, '2021-06-16 11:54:35', '2021-06-16 11:54:35'),
(13, '0', 'disable_callwaiter', 'App\\Restorant', 17, '2021-06-16 18:05:16', '2021-06-16 18:05:16'),
(14, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 17, '2021-06-17 06:02:02', '2021-06-17 06:02:02'),
(15, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 17, '2021-06-17 06:02:02', '2021-06-17 06:02:02'),
(16, '0', 'disable_callwaiter', 'App\\Restorant', 18, '2021-06-17 11:33:23', '2021-06-17 11:33:23'),
(17, '0', 'disable_callwaiter', 'App\\Restorant', 19, '2021-06-17 17:29:48', '2021-06-17 17:29:48'),
(18, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 19, '2021-06-17 22:10:02', '2021-06-17 22:10:02'),
(19, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 19, '2021-06-17 22:10:02', '2021-06-17 22:10:02'),
(20, '0', 'disable_callwaiter', 'App\\Restorant', 20, '2021-06-18 07:18:42', '2021-06-18 07:18:42'),
(21, '0', 'disable_callwaiter', 'App\\Restorant', 21, '2021-06-18 15:19:27', '2021-06-18 15:19:27'),
(22, '0', 'disable_callwaiter', 'App\\Restorant', 22, '2021-06-18 15:21:02', '2021-06-18 15:21:02'),
(23, '0', 'disable_callwaiter', 'App\\Restorant', 23, '2021-06-20 10:52:36', '2021-06-20 10:52:36'),
(24, '0', 'disable_callwaiter', 'App\\Restorant', 24, '2021-06-23 10:07:55', '2021-06-23 10:07:55'),
(25, '0', 'disable_callwaiter', 'App\\Restorant', 25, '2021-06-23 10:09:16', '2021-06-23 10:09:16'),
(26, '0', 'disable_callwaiter', 'App\\Restorant', 26, '2021-06-23 11:07:13', '2021-06-23 11:07:13'),
(27, '0', 'disable_callwaiter', 'App\\Restorant', 27, '2021-06-23 17:34:08', '2021-06-23 17:34:08'),
(28, '0', 'disable_callwaiter', 'App\\Restorant', 28, '2021-06-23 17:34:49', '2021-06-23 17:34:49'),
(29, '0', 'disable_callwaiter', 'App\\Restorant', 29, '2021-06-23 17:50:14', '2021-06-23 17:50:14'),
(30, '0', 'disable_callwaiter', 'App\\Restorant', 30, '2021-06-23 19:07:43', '2021-06-23 19:07:43'),
(31, '0', 'disable_callwaiter', 'App\\Restorant', 31, '2021-06-23 19:08:13', '2021-06-23 19:08:13'),
(32, '0', 'disable_callwaiter', 'App\\Restorant', 32, '2021-06-23 19:09:34', '2021-06-23 19:09:34'),
(33, '0', 'disable_callwaiter', 'App\\Restorant', 33, '2021-06-23 19:10:13', '2021-06-23 19:10:13'),
(34, '0', 'disable_callwaiter', 'App\\Restorant', 34, '2021-06-23 19:17:39', '2021-06-23 19:17:39'),
(35, '0', 'disable_callwaiter', 'App\\Restorant', 35, '2021-06-23 19:22:21', '2021-06-23 19:22:21'),
(36, '0', 'disable_callwaiter', 'App\\Restorant', 36, '2021-06-23 19:23:05', '2021-06-23 19:23:05'),
(37, '0', 'disable_callwaiter', 'App\\Restorant', 37, '2021-06-23 19:24:28', '2021-06-23 19:24:28'),
(38, '0', 'disable_callwaiter', 'App\\Restorant', 38, '2021-06-23 19:32:42', '2021-06-23 19:32:42'),
(39, '0', 'disable_callwaiter', 'App\\Restorant', 39, '2021-06-24 02:57:16', '2021-06-24 02:57:16'),
(40, '0', 'disable_callwaiter', 'App\\Restorant', 40, '2021-06-24 12:23:37', '2021-06-24 12:23:37'),
(41, '0', 'disable_callwaiter', 'App\\Restorant', 41, '2021-06-24 14:23:47', '2021-06-24 14:23:47'),
(42, '0', 'disable_callwaiter', 'App\\Restorant', 42, '2021-06-24 16:15:38', '2021-06-24 16:15:38'),
(43, '0', 'disable_callwaiter', 'App\\Restorant', 43, '2021-06-24 16:25:48', '2021-06-24 16:25:48'),
(44, '0', 'disable_callwaiter', 'App\\Restorant', 44, '2021-06-24 17:02:44', '2021-06-24 17:02:44'),
(45, '0', 'disable_callwaiter', 'App\\Restorant', 45, '2021-06-25 07:08:03', '2021-06-25 07:08:03'),
(46, '0', 'disable_callwaiter', 'App\\Restorant', 46, '2021-06-25 07:17:06', '2021-06-25 07:17:06'),
(47, '0', 'disable_callwaiter', 'App\\Restorant', 47, '2021-06-25 07:17:30', '2021-06-25 07:17:30'),
(48, '0', 'disable_callwaiter', 'App\\Restorant', 48, '2021-06-25 07:17:46', '2021-06-25 07:17:46'),
(49, '0', 'disable_callwaiter', 'App\\Restorant', 49, '2021-06-25 07:18:14', '2021-06-25 07:18:14'),
(50, '0', 'disable_callwaiter', 'App\\Restorant', 50, '2021-06-25 07:18:47', '2021-06-25 07:18:47'),
(51, '0', 'disable_callwaiter', 'App\\Restorant', 51, '2021-06-25 09:06:46', '2021-06-25 09:06:46'),
(52, '0', 'disable_callwaiter', 'App\\Restorant', 52, '2021-07-01 21:13:11', '2021-07-01 21:13:11'),
(53, '0', 'disable_callwaiter', 'App\\Restorant', 53, '2021-07-01 23:57:50', '2021-07-01 23:57:50'),
(54, '0', 'disable_callwaiter', 'App\\Restorant', 54, '2021-07-17 09:06:22', '2021-07-17 09:06:22'),
(55, '0', 'disable_callwaiter', 'App\\Restorant', 55, '2021-07-17 09:08:02', '2021-07-17 09:08:02'),
(56, '0', 'time_to_prepare_order_in_minutes', 'App\\Restorant', 55, '2021-07-17 09:11:35', '2021-07-17 09:11:35'),
(57, '30', 'delivery_interval_in_minutes', 'App\\Restorant', 55, '2021-07-17 09:11:35', '2021-07-17 09:11:35'),
(58, '0', 'disable_callwaiter', 'App\\Restorant', 56, '2021-07-17 21:36:32', '2021-07-17 21:36:32'),
(59, '0', 'disable_callwaiter', 'App\\Restorant', 57, '2021-07-17 22:30:05', '2021-07-17 22:30:05'),
(60, '0', 'disable_callwaiter', 'App\\Restorant', 58, '2021-07-18 09:47:24', '2021-07-18 09:47:24');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '0 - Fixed, 1 - Percentage',
  `price` double(8,2) NOT NULL,
  `active_from` date NOT NULL,
  `active_to` date NOT NULL,
  `limit_to_num_uses` int(11) NOT NULL,
  `used_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `extra_for_all_variants` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `item_id`, `price`, `name`, `created_at`, `updated_at`, `deleted_at`, `extra_for_all_variants`) VALUES
(1, 1, 1.20, 'Extra cheese', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(2, 1, 0.30, 'Extra olives', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(3, 1, 1.50, 'Tuna', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(4, 2, 1.20, 'Extra cheese', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(5, 2, 0.30, 'Extra olives', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(6, 2, 1.50, 'Tuna', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(7, 3, 1.20, 'Extra cheese', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(8, 3, 0.30, 'Extra olives', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(9, 3, 1.50, 'Tuna', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(10, 4, 1.20, 'Extra cheese', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(11, 4, 0.30, 'Extra olives', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(12, 4, 1.50, 'Tuna', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(13, 5, 1.20, 'Extra cheese', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(14, 5, 0.30, 'Extra olives', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(15, 5, 1.50, 'Tuna', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(16, 6, 1.20, 'Extra cheese', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(17, 6, 0.30, 'Extra olives', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(18, 6, 1.50, 'Tuna', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(19, 7, 1.00, 'Olive', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(20, 7, 0.50, 'Mushroom', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(21, 7, 2.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(22, 7, 1.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(23, 8, 1.00, 'Olive', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(24, 8, 0.50, 'Mushroom', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(25, 8, 2.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(26, 8, 1.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(27, 9, 1.00, 'Olive', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(28, 9, 0.50, 'Mushroom', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(29, 9, 2.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(30, 9, 1.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(31, 10, 1.00, 'Olive', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(32, 10, 0.50, 'Mushroom', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(33, 10, 2.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(34, 10, 1.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(35, 11, 1.00, 'Olive', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(36, 11, 0.50, 'Mushroom', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(37, 11, 2.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(38, 11, 1.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(39, 12, 1.00, 'Olive', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(40, 12, 0.50, 'Mushroom', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(41, 12, 2.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(42, 12, 1.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(43, 13, 1.00, 'Olive', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(44, 13, 0.50, 'Mushroom', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 1),
(45, 13, 2.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(46, 13, 1.00, 'Peperoni', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL, 0),
(47, 14, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(48, 14, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(49, 14, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(50, 14, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(51, 15, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(52, 15, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(53, 15, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(54, 15, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(55, 16, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(56, 16, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(57, 16, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(58, 16, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(59, 17, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(60, 17, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(61, 17, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(62, 17, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(63, 61, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(64, 61, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(65, 61, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(66, 62, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(67, 62, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(68, 62, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(69, 63, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(70, 63, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(71, 63, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(72, 64, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(73, 64, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(74, 64, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(75, 65, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(76, 65, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(77, 65, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(78, 66, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(79, 66, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(80, 66, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(81, 67, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(82, 67, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(83, 67, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(84, 67, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(85, 68, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(86, 68, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(87, 68, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(88, 68, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(89, 69, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(90, 69, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(91, 69, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(92, 69, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(93, 70, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(94, 70, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(95, 70, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(96, 70, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(97, 71, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(98, 71, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(99, 71, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(100, 71, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(101, 72, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(102, 72, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(103, 72, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(104, 72, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(105, 73, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(106, 73, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(107, 73, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(108, 73, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(109, 74, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(110, 74, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(111, 74, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(112, 74, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(113, 75, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(114, 75, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(115, 75, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(116, 75, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(117, 76, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(118, 76, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(119, 76, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(120, 76, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(121, 77, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(122, 77, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(123, 77, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(124, 77, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(125, 92, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(126, 92, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(127, 92, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(128, 93, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(129, 93, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(130, 93, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(131, 94, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(132, 94, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(133, 94, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(134, 95, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(135, 95, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(136, 95, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(137, 96, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(138, 96, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(139, 96, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(140, 97, 1.20, 'Extra cheese', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(141, 97, 0.30, 'Extra olives', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(142, 97, 1.50, 'Tuna', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(143, 98, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(144, 98, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(145, 98, 2.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(146, 98, 1.00, 'Peperoni', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 0),
(147, 99, 1.00, 'Olive', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(148, 99, 0.50, 'Mushroom', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL, 1),
(149, 99, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(150, 99, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(151, 100, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(152, 100, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(153, 100, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(154, 100, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(155, 101, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(156, 101, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(157, 101, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(158, 101, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(159, 102, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(160, 102, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(161, 102, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(162, 102, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(163, 103, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(164, 103, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(165, 103, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(166, 103, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(167, 104, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(168, 104, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(169, 104, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(170, 104, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(171, 105, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(172, 105, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(173, 105, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(174, 105, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(175, 106, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(176, 106, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(177, 106, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(178, 106, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(179, 107, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(180, 107, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(181, 107, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(182, 107, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(183, 108, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(184, 108, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(185, 108, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(186, 108, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(187, 154, 1.20, 'Extra cheese', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(188, 154, 0.30, 'Extra olives', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(189, 154, 1.50, 'Tuna', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(190, 155, 1.20, 'Extra cheese', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(191, 155, 0.30, 'Extra olives', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(192, 155, 1.50, 'Tuna', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(193, 156, 1.20, 'Extra cheese', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(194, 156, 0.30, 'Extra olives', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(195, 156, 1.50, 'Tuna', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(196, 157, 1.20, 'Extra cheese', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(197, 157, 0.30, 'Extra olives', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(198, 157, 1.50, 'Tuna', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(199, 158, 1.20, 'Extra cheese', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(200, 158, 0.30, 'Extra olives', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(201, 158, 1.50, 'Tuna', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(202, 159, 1.20, 'Extra cheese', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(203, 159, 0.30, 'Extra olives', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(204, 159, 1.50, 'Tuna', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(205, 160, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(206, 160, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(207, 160, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(208, 160, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(209, 161, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(210, 161, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(211, 161, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(212, 161, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(213, 162, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(214, 162, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(215, 162, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(216, 162, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(217, 163, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(218, 163, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(219, 163, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(220, 163, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(221, 164, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(222, 164, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(223, 164, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(224, 164, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(225, 165, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(226, 165, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(227, 165, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(228, 165, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(229, 166, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(230, 166, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(231, 166, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(232, 166, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(233, 167, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(234, 167, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(235, 167, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(236, 167, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(237, 168, 1.00, 'Olive', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(238, 168, 0.50, 'Mushroom', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 1),
(239, 168, 2.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(240, 168, 1.00, 'Peperoni', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL, 0),
(241, 169, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(242, 169, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(243, 169, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(244, 169, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(245, 170, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(246, 170, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(247, 170, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(248, 170, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(249, 174, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(250, 174, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(251, 174, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(252, 174, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(253, 175, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(254, 175, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(255, 175, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(256, 175, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(257, 176, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(258, 176, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(259, 176, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(260, 176, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(261, 177, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(262, 177, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(263, 177, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(264, 177, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(265, 178, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(266, 178, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(267, 178, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(268, 178, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(269, 179, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(270, 179, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(271, 179, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(272, 179, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(273, 180, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(274, 180, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(275, 180, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(276, 180, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(277, 181, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(278, 181, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(279, 181, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(280, 181, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(281, 182, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(282, 182, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(283, 182, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(284, 182, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(285, 183, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(286, 183, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(287, 183, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(288, 183, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(289, 184, 1.00, 'Olive', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(290, 184, 0.50, 'Mushroom', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 1),
(291, 184, 2.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(292, 184, 1.00, 'Peperoni', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL, 0),
(293, 185, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(294, 185, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(295, 185, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(296, 186, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(297, 186, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(298, 186, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(299, 187, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(300, 187, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(301, 187, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(302, 188, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(303, 188, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(304, 188, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(305, 189, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(306, 189, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(307, 189, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(308, 190, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(309, 190, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(310, 190, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(311, 239, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(312, 239, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(313, 239, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(314, 239, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(315, 240, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(316, 240, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(317, 240, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(318, 240, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(319, 241, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(320, 241, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(321, 241, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(322, 241, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(323, 242, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(324, 242, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(325, 242, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(326, 242, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(327, 243, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(328, 243, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(329, 243, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(330, 243, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(331, 244, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(332, 244, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(333, 244, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(334, 244, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(335, 245, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(336, 245, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(337, 245, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(338, 245, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(339, 246, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(340, 246, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(341, 246, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(342, 246, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(343, 247, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(344, 247, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(345, 247, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(346, 247, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(347, 248, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(348, 248, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(349, 248, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(350, 248, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(351, 249, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(352, 249, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(353, 249, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(354, 249, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(355, 250, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(356, 250, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(357, 250, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(358, 251, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(359, 251, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(360, 251, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(361, 252, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(362, 252, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(363, 252, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(364, 253, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(365, 253, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(366, 253, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(367, 254, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(368, 254, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(369, 254, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(370, 255, 1.20, 'Extra cheese', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(371, 255, 0.30, 'Extra olives', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(372, 255, 1.50, 'Tuna', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(373, 262, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(374, 262, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(375, 262, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(376, 262, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(377, 263, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(378, 263, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(379, 263, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(380, 263, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(381, 264, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(382, 264, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(383, 264, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(384, 264, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(385, 265, 1.00, 'Olive', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(386, 265, 0.50, 'Mushroom', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 1),
(387, 265, 2.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(388, 265, 1.00, 'Peperoni', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL, 0),
(389, 266, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(390, 266, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(391, 266, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(392, 266, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(393, 267, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(394, 267, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(395, 267, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(396, 267, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(397, 268, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(398, 268, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(399, 268, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(400, 268, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(401, 269, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(402, 269, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(403, 269, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(404, 269, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(405, 270, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(406, 270, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(407, 270, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(408, 270, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(409, 271, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(410, 271, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(411, 271, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(412, 271, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(413, 272, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(414, 272, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(415, 272, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(416, 272, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(417, 273, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(418, 273, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(419, 273, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(420, 274, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(421, 274, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(422, 274, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(423, 275, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(424, 275, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(425, 275, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(426, 276, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(427, 276, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(428, 276, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(429, 277, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(430, 277, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(431, 277, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(432, 278, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(433, 278, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(434, 278, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(435, 316, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(436, 316, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(437, 316, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(438, 317, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(439, 317, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(440, 317, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(441, 318, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(442, 318, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(443, 318, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(444, 319, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(445, 319, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(446, 319, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(447, 320, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(448, 320, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(449, 320, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(450, 321, 1.20, 'Extra cheese', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(451, 321, 0.30, 'Extra olives', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(452, 321, 1.50, 'Tuna', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(453, 326, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(454, 326, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(455, 326, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(456, 326, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(457, 327, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(458, 327, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(459, 327, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(460, 327, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(461, 328, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(462, 328, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(463, 328, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(464, 328, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(465, 329, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(466, 329, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(467, 329, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(468, 329, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(469, 330, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(470, 330, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(471, 330, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(472, 330, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(473, 331, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(474, 331, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(475, 331, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(476, 331, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(477, 332, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(478, 332, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(479, 332, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(480, 332, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(481, 333, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(482, 333, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(483, 333, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(484, 333, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(485, 334, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(486, 334, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(487, 334, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(488, 334, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(489, 335, 1.00, 'Olive', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(490, 335, 0.50, 'Mushroom', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 1),
(491, 335, 2.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(492, 335, 1.00, 'Peperoni', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL, 0),
(493, 336, 1.00, 'Olive', '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL, 1),
(494, 336, 0.50, 'Mushroom', '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL, 1),
(495, 336, 2.00, 'Peperoni', '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL, 0),
(496, 336, 1.00, 'Peperoni', '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `0_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `0_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `4_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `5_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `6_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`id`, `created_at`, `updated_at`, `0_from`, `0_to`, `1_from`, `1_to`, `2_from`, `2_to`, `3_from`, `3_to`, `4_from`, `4_to`, `5_from`, `5_to`, `6_from`, `6_to`, `restorant_id`) VALUES
(1, NULL, '2021-06-27 20:18:31', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '09:00', '23:00', 1),
(2, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 2),
(3, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 3),
(4, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 4),
(5, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 5),
(6, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 6),
(7, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 7),
(8, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 8),
(9, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 9),
(10, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 10),
(11, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 11),
(12, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 12),
(13, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 13),
(14, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 14),
(15, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 15),
(16, NULL, NULL, '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', '05:00', '23:00', 16),
(17, '2021-07-17 09:13:38', '2021-07-17 09:13:50', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', '09:00', '17:00', 55);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(455) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT '1',
  `has_variants` int(11) NOT NULL DEFAULT '0',
  `vat` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`) VALUES
(1, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 1, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 0, 21.00, NULL),
(2, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 1, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 0, 21.00, NULL),
(3, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 1, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 0, 21.00, NULL),
(4, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 1, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 0, 21.00, NULL),
(5, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 1, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 0, 21.00, NULL),
(6, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 1, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 0, 21.00, NULL),
(7, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 2, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 1, 21.00, NULL),
(8, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 2, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 1, 21.00, NULL),
(9, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 2, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 1, 21.00, NULL),
(10, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 2, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 1, 21.00, NULL),
(11, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 2, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 1, 21.00, NULL),
(12, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 2, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 1, 21.00, NULL),
(13, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 2, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 1, 21.00, NULL),
(14, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 2, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(15, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 2, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(16, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 2, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(17, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 2, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(18, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(19, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(20, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(21, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(22, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(23, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(24, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 4, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(25, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 4, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(26, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 4, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(27, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(28, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(29, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(30, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(31, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(32, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(33, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(34, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 6, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(35, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 6, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(36, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 6, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(37, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 7, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(38, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 8, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(39, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 8, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(40, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 8, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(41, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 9, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(42, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 9, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(43, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 9, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(44, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 9, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(45, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 10, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(46, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 10, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(47, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 10, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(48, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 10, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(49, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 11, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(50, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 11, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(51, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 11, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(52, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 11, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(53, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 12, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(54, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 12, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(55, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 12, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(56, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 12, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(57, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 13, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(58, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 13, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(59, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 13, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(60, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 13, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(61, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(62, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(63, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(64, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(65, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(66, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(67, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(68, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(69, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(70, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(71, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(72, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(73, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(74, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(75, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(76, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(77, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(78, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(79, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(80, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(81, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(82, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(83, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(84, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(85, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(86, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 18, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(87, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 18, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(88, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 18, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(89, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 18, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(90, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 18, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(91, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 18, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(92, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 19, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(93, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 19, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(94, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 19, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(95, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 19, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(96, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 19, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(97, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 19, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 0, 21.00, NULL),
(98, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 20, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(99, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 20, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 1, 1, 21.00, NULL),
(100, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 20, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(101, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 20, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(102, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 20, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(103, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 20, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(104, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 20, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(105, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 20, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(106, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 20, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(107, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 20, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(108, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 20, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(109, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 21, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(110, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 21, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(111, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 21, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(112, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 22, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(113, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 22, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(114, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 22, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(115, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 22, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(116, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 23, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(117, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 23, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(118, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 23, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(119, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 23, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(120, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 24, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(121, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 24, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(122, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 24, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(123, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 24, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(124, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 25, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(125, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 25, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(126, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 25, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(127, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 25, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(128, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 26, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(129, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 27, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(130, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 27, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(131, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 27, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(132, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 27, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(133, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 28, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(134, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 28, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(135, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 28, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(136, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 29, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(137, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 29, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(138, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 29, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(139, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 29, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(140, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 29, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(141, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 29, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(142, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 29, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(143, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 30, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(144, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 30, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(145, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 30, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(146, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 31, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(147, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 31, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(148, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 31, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(149, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 31, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(150, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 32, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(151, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 32, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(152, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 32, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(153, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 32, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(154, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 33, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(155, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 33, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(156, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 33, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(157, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 33, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(158, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 33, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(159, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 33, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 0, 21.00, NULL),
(160, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 34, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(161, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 34, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(162, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 34, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(163, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 34, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(164, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 34, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(165, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 34, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(166, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 34, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(167, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 34, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(168, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 34, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 1, 1, 21.00, NULL),
(169, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 34, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(170, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 34, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(171, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 35, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 0, 21.00, NULL),
(172, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 35, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 0, 21.00, NULL),
(173, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 35, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 0, 21.00, NULL);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`, `available`, `has_variants`, `vat`, `deleted_at`) VALUES
(174, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(175, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(176, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(177, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(178, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(179, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(180, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(181, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(182, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(183, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(184, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 36, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 1, 1, 21.00, NULL),
(185, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 37, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(186, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 37, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(187, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 37, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(188, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 37, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(189, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 37, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(190, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 37, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(191, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 38, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(192, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 38, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(193, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 38, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(194, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 38, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(195, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 38, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(196, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 38, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(197, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 39, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(198, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 39, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(199, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 39, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(200, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 39, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(201, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 40, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(202, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 40, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(203, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 40, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(204, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 40, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(205, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 41, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(206, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 41, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(207, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 41, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(208, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 41, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(209, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 42, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(210, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 42, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(211, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 42, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(212, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 42, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(213, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 43, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(214, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 43, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(215, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 43, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(216, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 43, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(217, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 44, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(218, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 44, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(219, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 44, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(220, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 45, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(221, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 46, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(222, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 46, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(223, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 46, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(224, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 46, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(225, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 46, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(226, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 46, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(227, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 46, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(228, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 47, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(229, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 47, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(230, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 47, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(231, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 48, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(232, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 48, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(233, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 48, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(234, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 48, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(235, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 49, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(236, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 49, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(237, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 49, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(238, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 49, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(239, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(240, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(241, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(242, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(243, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(244, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(245, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(246, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(247, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(248, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(249, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 50, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(250, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 51, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(251, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 51, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(252, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 51, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(253, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 51, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(254, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 51, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(255, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 51, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(256, 'Spaghetti Carbonara (450g)', 'fresh pasta, cream (animal), onion, pancakes (smoked bacon), egg, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/b65d5389-4742-4a78-9d94-f31110984db6', 11.99, 52, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(257, 'Spaghetti Formaggi (450g)', 'fresh pasta, cream (animal), blue cheese, emmental, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', 11.99, 52, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(258, 'Tagliatelle with mushrooms (400g)', 'fresh pasta, cream (animal), mushrooms, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/0bae6238-dda6-4630-b300-5125fde865d4', 11.99, 52, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(259, 'Chicken risotto (450g)', 'Arborio rice, chicken breast, onion, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/033c32c1-cdae-495e-910f-66b5fa239297', 11.99, 52, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(260, 'Risotto with mushrooms (450g)', 'Arborio rice, mushrooms, garlic, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/08d82944-f947-48f4-a197-a3199bb3b6e7', 11.99, 52, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(261, 'Tagliatelle with Bolognese Sauce (400g)', 'fresh pasta, bolognese sauce, parmesan', 'https://foodtiger.mobidonia.com/uploads/restorants/cc695ba9-8af3-47a4-8e41-dc1706cbf2c3', 11.99, 52, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 0, 21.00, NULL),
(262, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 53, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(263, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 53, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(264, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 53, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(265, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 53, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 1, 1, 21.00, NULL),
(266, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 53, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(267, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 53, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(268, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 53, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(269, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 53, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(270, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 53, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(271, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 53, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(272, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 53, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(273, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 54, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(274, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 54, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(275, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 54, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(276, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 54, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(277, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 54, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(278, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 54, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(279, 'Lasagna Classic (450g)', 'Bolognese sauce, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/94d44523-ec90-4069-bd11-eb9588207c31', 11.99, 55, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(280, 'Napoli Lasagna (450g)', 'chicken fillet, cream (animal), corn, blue cheese, mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/4c367950-992c-4711-ab56-42bed10de86c', 11.99, 55, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(281, 'Lasagna Formagio (450g)', 'smoked cheese, blue cheese, emmental, cream (animal), mozzarella Sabelli', 'https://foodtiger.mobidonia.com/uploads/restorants/8bafc3ec-82e7-46f8-964a-77a13e4ddf96', 11.99, 55, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(282, 'Burrito Vegetarian in a Bowl (450g)', 'rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/eb8cb594-0317-4f1c-8840-cd70bd6d34c3', 6.99, 56, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(283, 'Burrito with chicken in a bowl(450g)', 'chicken, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/e9c18f00-8e49-40e0-b723-da78c7e8ce6c', 7.99, 56, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(284, 'Burrito with beef in a bowl (450g)', 'veal, rice, plate peppers, onion, red beans, spiced corn, tomatoes, iceberg, yellow cheese, cream sauce or mayonnaise sauce, hot salts if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/277179e4-104b-477b-8c7b-9b8b55b9161d', 8.99, 56, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(285, 'Burrito with pork in a bowl (450g)', 'pork, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/2a65093d-b681-4257-916b-77eccaf2c5e6', 7.99, 56, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(286, 'Quesadilla with chicken', 'Cassadia with chicken - large chicken on a plate, 2 pieces of tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad on desire ', 'https://foodtiger.mobidonia.com/uploads/restorants/807afb68-bba2-4a7f-be98-54586047d45b', 6.69, 57, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(287, 'Quesadilla with veal', 'beef roast or minced meat, 2 pieces of tortilla tortilla, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/ffb24714-946d-43a8-a732-501cd742bd8c', 7.69, 57, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(288, 'Vegetarian Quesadilla', '2pcs tortillas, plate peppers, plate onions, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/005c9ff4-61ae-4fa4-a204-3a14db63856f', 6.19, 57, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(289, 'Quesadilla with Pork', 'pork roast, 2 tortilla tortillas, plate peppers, mushrooms, beans, corn with spices, tomatoes, iceberg, yellow cheese, olives, cream sauce, mayonnaise sauce or hot salad', 'https://foodtiger.mobidonia.com/uploads/restorants/3d0b6a8c-9b56-46d9-bf3c-f69d2e3b30f8', 6.69, 57, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(290, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 58, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(291, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 58, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(292, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 58, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(293, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 58, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(294, 'Chicken Taco (250g)', 'tortilla tortilla 16cm, chicken on a plate, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/fcbc8d58-2e69-4b91-8dfe-b8ff8920023c', 3.49, 59, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(295, 'Taco with beef roasted meat (250g)', 'tortilla tortilla 16cm, veal minced meat, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/6681a3c8-17df-42db-a09a-aed0a327e226', 3.99, 59, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(296, 'Pork Taco (250g)', '16cm tortilla cake, pork roast, tomatoes, corn, olives, yellow cheese, iceberg, cream or mayonnaise sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/2a0560e8-b93a-405d-9f44-86fcde00069d', 3.49, 59, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(297, 'Tacos Veggie (250g)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', 2.99, 59, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(298, 'Mexellente (350g)', 'iceberg, red pepper, tomato, sweet corn, red beans, fresh red onions, parsley, lime juice, sweet chili sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/58d57b7a-8873-4559-94af-cf50501a1bfa', 6.99, 60, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(299, 'Homemade french fries with ranch sauce (150g)', 'French fries, homemade ranch dressing, cheddar cheese, fully ', 'https://foodtiger.mobidonia.com/uploads/restorants/aa05caca-d1c1-4b27-8615-78e8686b95e3', 2.98, 61, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(300, 'Homemade french fries with cheddar and jalapenos (190g)', 'Olive oil, cheddar, green mix', 'https://foodtiger.mobidonia.com/uploads/restorants/b3ee655e-29d2-4c35-86df-89b8200c9142', 3.97, 61, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(301, 'Homemade french fries (100g)', '100g', 'https://foodtiger.mobidonia.com/uploads/restorants/86289e4c-360c-4e5c-aa02-8d2ba791d954', 1.99, 61, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(302, 'Wild Wild West', 'freshly baked brioche bread, 100% freshly ground beef Limousine, crispy bacon, melted cheddar, brewed in Skapto beer onion rings, homemade BBQ sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', 8.99, 62, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(303, 'Skapto Bulleit Bourbon', 'juicy 100% minced beef, crispy bacon, melted cheddar, homemade Bulleit bourbon sauce, homemade marinated red onion, pickles, iceberg', 'https://foodtiger.mobidonia.com/uploads/restorants/4c2d9b73-685a-4252-84a3-6ba354f3a59c', 10.99, 62, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(304, 'Back to Basics', 'juicy 100% minced beef, melted cheddar, pickles, iceberg, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/643dd56b-684a-47f9-b72f-0fec59c16cb0', 7.99, 62, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(305, 'Cheesus', 'juicy 100% minced beef, crispy bacon, melted cheddar, fresh red onion, pickles, tomato, iceberg, lots of Hellman\'s mustard and ketchup', 'https://foodtiger.mobidonia.com/uploads/restorants/1084e812-7aa7-471c-9ae2-96dd5f561935', 9.99, 62, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(306, 'Skaptoburger', 'juicy 100% freshly ground veal, crispy bacon, melted cheddar, fresh red onion, iceberg, tomato, homemade spicy Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/7998ea89-e4b6-4021-ad47-6a1aa442e093', 9.99, 62, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(307, 'El Pollo Loco', 'Breaded until golden chicken fillet, crispy bacon, pickles, tomato, iceberg, mayonnaise and Hellman\'s mustard, barbecue sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', 10.99, 62, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(308, 'SA7OSH1', 'juicy 100% minced beef, breaded to golden yellow, crispy bacon, melted cheddar, fresh red onion, arugula, homemade Skapto sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/5bf2bb33-1b3b-4911-a7f0-618d17719ba2', 12.99, 62, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(309, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 63, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(310, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 63, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(311, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 63, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(312, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 63, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(313, 'Homemade Potatoes with Cheddar and Jalapenos (300g)', 'Cheddar cheese, butter, russet potatoes, rings, all purpose flour', 'https://foodtiger.mobidonia.com/uploads/restorants/b130e310-c024-49fa-99c2-1f0182b810f6', 6.99, 64, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(314, 'Homemade Potatoes with Ranch Sauce (300g)', 'Sour cream, ranch dressing, bacon, potatoes, cheddar cheese', 'https://foodtiger.mobidonia.com/uploads/restorants/dd0c87c9-d862-45a6-a933-7060d68c749c', 5.99, 64, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(315, 'Cheddar Sticks (250g)', 'String cheese, bread crumbs, smoked paprika, egg', 'https://foodtiger.mobidonia.com/uploads/restorants/3dfb1358-a853-4d7c-93f1-36eaf06ee2d7', 7.99, 64, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(316, 'Caprese Salad (350gr)', 'peeled tomatoes, mozzarella salad, Genovese pesto', 'https://foodtiger.mobidonia.com/uploads/restorants/bd5292e7-e898-479d-8921-4c47a776ba82', 9.99, 65, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(317, 'Caesar Salad (400g)', 'iceberg, bacon, chicken breast, parmesan, Caesar sauce', 'https://foodtiger.mobidonia.com/uploads/restorants/25ed56dc-45cc-473f-ad00-d4b449acc71a', 10.99, 65, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(318, 'Salad Napoli (350g)', 'iceberg, arugula, cherry tomatoes, mozzarella salad, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/93641a19-dba6-4010-a852-0e88da83a01f', 9.99, 65, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(319, 'Green tuna salad (400g)', 'lettuce, cucumbers, tuna, olive, corn, lemon, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/d3379607-df34-4ed0-8f87-8bb6f73ed16d', 9.99, 65, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(320, 'Green salad (350g)', 'lettuce, cucumbers, radishes, onions, egg, salad dressing: (Extra Virgin olive oil, Modena balsamic vinegar, honey and mustard)', 'https://foodtiger.mobidonia.com/uploads/restorants/2e7eb9a6-5307-4ec7-8cf8-86490d4c2363', 7.99, 65, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(321, 'Greek Salad (500g)', 'tomatoes, cucumbers, green pepper, red onion, olive, feta cheese, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f5a8b88d-9b94-44fc-9555-2f0fe043d624', 9.99, 65, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(322, 'Burrito with chicken', 'chicken on a plate, tortilla cake, rice, peppers on a plate, onion on a plate, red beans, mushrooms, corn with spices, tomatoes, olives, iceberg, yellow cheese, cream sauce, mayonnaise sauce or hot salad ', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', 6.99, 66, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(323, 'Burrito Veggie', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cc167252-968b-4cf4-9964-86c6a5feba45', 5.99, 66, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(324, 'Burrito with beef roast', 'veal or minced meat (specify), tortilla bread, rice, plate peppers, onion, red beans, mushrooms, corn with spices, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce, or hot spit at will ', 'https://foodtiger.mobidonia.com/uploads/restorants/c0895e35-f4f9-4113-96d7-ecae6d27ed2b', 8.49, 66, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(325, 'Burrito with pork', 'pork roast, tortilla bread, rice, plate peppers, plate onion, red beans, mushrooms, spicy corn, tomatoes, iceberg, olives, yellow cheese, cream sauce, mayonnaise sauce or hot salad, if desired', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', 6.99, 66, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 0, 21.00, NULL),
(326, 'Mozzarella Pizza', 'tomato sauce, mozzarella sabelli, cherry tomatoes, olives, pesto sauce, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f71ae2d7-f24f-4e1b-9bdd-7ab7143ce3c8', 10.99, 67, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(327, 'Prosciutto crust pizza', 'tomato sauce, mozzarella sabelli, prosciutto, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9b9886cb-5d4b-4bfe-a02a-dc3b94dae706', 14.99, 67, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(328, 'Pepperoni Pizza', 'tomato sauce, mozzarella Sabelli, Calabro salad (spicy), extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/4b26647d-52b8-43c5-8b62-708c99252c24', 14.99, 67, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(329, 'Carriola Pizza', 'tomato sauce, mozzarella sabelli, bacon, red onion, olives, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/e1e5559a-ca6d-4a34-80c6-b72c31d97d96', 14.99, 67, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(330, 'Perugia Pizza', 'tomato sauce, mozzarella sabelli, chicken fillet, red onion, fresh peppers, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/a8e8c22a-84cd-48d0-971a-2c98e695e387', 14.99, 67, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(331, 'Pizza Napoli', 'tomato sauce, mozzarella sabelli, ham, cherry tomatoes, emmental, arugula, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/5c8fa7eb-bc11-42e1-a1a5-ffb0b3d7a6b7', 14.99, 67, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(332, 'Margarita Pizza', 'tomato sauce, mozzarella Sabelli, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/9d180742-9fb3-4b46-8563-8c24c9004fd3', 10.49, 67, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(333, 'Combo Pizza 50/50 (70cm)', '', 'https://foodtiger.mobidonia.com/uploads/restorants/cb7372d0-73a8-4551-bc31-22035d9551c4', 39.99, 67, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(334, 'Capricciosa Pizza', 'tomato sauce, mozzarella sabelli, ham, fresh mushrooms, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', 14.99, 67, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(335, 'Quattro Formaggi Pizza', 'cream (animal), mozzarella Sabelli, blue cheese, emmental, parmesan, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/0054144d-131c-4807-a209-cee855415182', 14.99, 67, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1, 1, 21.00, NULL),
(336, 'Marco Polo Pizza', 'tomato sauce, Sabelli mozzarella, chicken fillet, smoked cheese, corn, extra virgin olive oil', 'https://foodtiger.mobidonia.com/uploads/restorants/f77218a9-676e-434e-ac5b-4ae3dc5795b3', 14.99, 67, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1, 1, 21.00, NULL),
(337, 'Schweppes Tonic (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/5f3c11e2-8cf0-4512-b982-0b57e8b8eb07', 2.49, 68, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1, 0, 21.00, NULL),
(338, 'Sprite (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/d592d42c-9818-481d-99b1-b8dc54dbe731', 2.49, 68, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1, 0, 21.00, NULL),
(339, 'Orange Fanta (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/ca815d62-cdf8-4799-98c4-0e8f557b2659', 2.49, 68, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1, 0, 21.00, NULL),
(340, 'Coca Cola (330ml)', '(330ml.)', 'https://foodtiger.mobidonia.com/uploads/restorants/6dfb661a-cc55-4c27-b223-504b047c7e1a', 2.49, 68, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1, 0, 21.00, NULL),
(341, 'CAFE', 'CAFE', '1dc21097-5af5-4554-ae84-4474c5ba34d8', 1.00, 1, '2021-06-16 09:57:21', '2021-06-16 09:57:28', 1, 0, NULL, '2021-06-16 09:57:28'),
(342, 'stracatella', 'test', '', 9.00, 1, '2021-06-16 12:33:01', '2021-06-16 12:33:09', 1, 0, NULL, '2021-06-16 12:33:09'),
(343, 'test', 'test', '64f82e8d-73c1-43a6-9237-bbe8b8b77b1c', 3.00, 1, '2021-06-16 12:33:54', '2021-06-18 09:30:18', 1, 0, NULL, '2021-06-18 09:30:18'),
(344, 'sef', 'sefsfe', '', 123.00, 1, '2021-06-17 00:24:09', '2021-06-17 06:09:11', 1, 0, NULL, NULL),
(345, 'Bowl salad example', 'bowl salad', '8ea0d567-b478-4c52-ac80-144dc26e5fa3', 25.00, 69, '2021-07-17 09:15:03', '2021-07-17 09:15:03', 1, 0, NULL, NULL),
(346, 'Cola Light', 'Light Cola', 'c70f663b-c0d3-438b-bd39-06894e8ed609', 10.00, 70, '2021-07-17 09:15:42', '2021-07-17 09:15:42', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `localmenus`
--

CREATE TABLE `localmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languageName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT '0' COMMENT '0 - No, 1 - Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_29_200844_create_languages_table', 1),
(4, '2018_08_29_205156_create_translations_table', 1),
(5, '2019_05_03_000001_create_customer_columns', 1),
(6, '2019_05_03_000002_create_subscriptions_table', 1),
(7, '2019_05_03_000003_create_subscription_items_table', 1),
(8, '2020_02_06_010033_create_permission_tables', 1),
(9, '2020_02_06_022212_create_restorants_table', 1),
(10, '2020_02_09_015116_create_status_table', 1),
(11, '2020_02_09_152551_create_categories_table', 1),
(12, '2020_02_09_152656_create_items_table', 1),
(13, '2020_02_11_052117_create_address_table', 1),
(14, '2020_02_11_054259_create_orders_table', 1),
(15, '2020_02_20_094727_create_settings_table', 1),
(16, '2020_03_25_134914_create_pages_table', 1),
(17, '2020_04_03_143518_update_settings_table', 1),
(18, '2020_04_10_202027_create_payments_table', 1),
(19, '2020_04_11_165819_update_table_orders', 1),
(20, '2020_04_22_105556_update_items_table', 1),
(21, '2020_04_23_212320_update_restorants_table', 1),
(22, '2020_04_23_212502_update_orders_table', 1),
(23, '2020_04_28_112519_update_address_table', 1),
(24, '2020_05_07_122727_create_hours_table', 1),
(25, '2020_05_09_012646_update_orders_add_delivery_table', 1),
(26, '2020_05_09_024507_add_options_to_settings_table', 1),
(27, '2020_05_20_232204_create_notifications_table', 1),
(28, '2020_06_03_134258_change_radius_to_delivery_area_restorants_table', 1),
(29, '2020_06_26_131803_create_sms_verifications_table', 1),
(30, '2020_07_12_182829_create_extras_table', 1),
(31, '2020_07_14_155509_create_plan_table', 1),
(32, '2020_07_23_183000_update_restorants_with_featured', 1),
(33, '2020_07_28_131511_update_users_sms_verification', 1),
(34, '2020_07_30_102916_change_json_to_string', 1),
(35, '2020_08_01_014851_create_variants', 1),
(36, '2020_08_14_003718_create_ratings_table', 1),
(37, '2020_08_18_035731_update_table_plans', 1),
(38, '2020_08_18_053012_update_user_add_plan', 1),
(39, '2020_09_02_131604_update_orders_time_to_prepare', 1),
(40, '2020_09_09_080747_create_cities_table', 1),
(41, '2020_09_28_131250_update_item_softdelete', 1),
(42, '2020_10_24_150254_create_tables_table', 1),
(43, '2020_10_25_021321_create_visits_table', 1),
(44, '2020_10_26_004421_update_orders_client_nullable', 1),
(45, '2020_10_26_104351_update_restorant_table', 1),
(46, '2020_10_26_190049_update_plan', 1),
(47, '2020_10_27_180123_create_stripe_payment', 1),
(48, '2020_11_01_190615_update_user_table', 1),
(49, '2020_11_05_081140_create_paths_table', 1),
(50, '2020_11_14_111220_create_phone_in_orders', 1),
(51, '2020_11_17_211252_update_logo_in_settings', 1),
(52, '2020_11_25_182453_create_paypal_payment', 1),
(53, '2020_11_25_225536_update_user_for_paypal_subsc', 1),
(54, '2020_11_27_102829_update_restaurants_for_delivery_pickup', 1),
(55, '2020_11_27_165901_create_coupons_table', 1),
(56, '2020_12_02_192213_update_for_whatsapp_order', 1),
(57, '2020_12_02_195333_update_for_mollie_payment', 1),
(58, '2020_12_07_142304_create_banners_table', 1),
(59, '2020_12_10_155335_wp_address', 1),
(60, '2020_12_14_195627_update_for_paystack_sub', 1),
(61, '2020_12_15_130511_update_paystack_verification', 1),
(62, '2020_12_27_155822_create_restaurant_multilanguage', 1),
(63, '2020_12_27_162902_update_restaurant_with_currency', 1),
(64, '2021_01_16_093708_update_restorant_with_pay_link', 1),
(65, '2021_01_22_142723_create_crud_for_whatsapp_landing', 1),
(66, '2021_02_16_065037_create_configs_table', 2),
(67, '2021_02_18_140330_allow_null_on_config_value', 2),
(68, '2021_02_22_135519_update_settinga_table', 2),
(69, '2021_02_26_113854_order_fee_update', 2),
(70, '2021_03_23_135952_update_config_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(2, 'App\\User', 18),
(2, 'App\\User', 19),
(2, 'App\\User', 20),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 23),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 42),
(2, 'App\\User', 43),
(2, 'App\\User', 44);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('03af9cff-3c8b-4930-95dd-38d05f1c1ada', 'App\\Notifications\\OrderNotification', 'App\\User', 41, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-07-17 09:17:03', '2021-07-17 09:17:03'),
('0b254b83-5d1a-432a-a6c6-eca30b02226e', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 11:12:12', '2021-06-29 11:12:12'),
('11dc0eb9-91df-481e-85e4-306292586fe8', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-07-17 17:43:07', '2021-07-17 17:43:07'),
('14cf59d0-f9bd-4a04-9b66-0c8a8f1bad11', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-28 16:59:57', '2021-06-28 16:59:57'),
('1c6755c9-f0c1-4d5e-9d6d-52e8418566cf', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-07-18 09:49:37', '2021-07-18 09:49:37'),
('222bb752-d0a5-4ecb-b9d5-e94c2bc07926', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 10:57:36', '2021-06-29 10:57:36'),
('253beaa2-68af-4d65-b9cc-5f8ac13c71b2', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 15:10:26', '2021-06-29 15:10:26'),
('28336b96-e3a4-4d7d-82fd-1d35cd805bb9', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 19:53:31', '2021-06-29 19:53:31'),
('2e64a54f-7a90-450f-b163-2febb3d790e5', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-28 11:15:23', '2021-06-28 11:15:23'),
('3006e472-eafc-4d2b-874b-22341c93f7c9', 'App\\Notifications\\OrderNotification', 'App\\User', 41, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-07-17 09:19:26', '2021-07-17 09:19:26'),
('3bd23771-49cb-4aee-9f98-7bb203fc5ef8', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-07-01 09:36:53', '2021-07-01 09:36:53'),
('4a2e4c75-2182-49d0-9d64-72370418e710', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-28 11:18:41', '2021-06-28 11:18:41'),
('4e142ca4-a60a-4bf2-9241-fe961fd45d3a', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-18 09:30:57', '2021-06-18 09:30:57'),
('55bb55c0-c43e-4c4c-9356-89643841839e', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 11:13:31', '2021-06-29 11:13:31'),
('6477513f-6bf3-46e5-b468-c0186d1105d7', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 15:14:12', '2021-06-29 15:14:12'),
('7051049a-5fb4-45d4-b3c7-500cfca43e0b', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-07-11 14:16:32', '2021-07-11 14:16:32'),
('74a38559-ef6a-4376-a75f-965297e8c27d', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 09:37:23', '2021-06-29 09:37:23'),
('8a42c97d-1a85-49da-a30b-7f7d25939d7c', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 08:48:52', '2021-06-29 08:48:52'),
('8be75188-bd49-4523-ac23-b70d8a30ce92', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-28 10:31:04', '2021-06-28 10:31:04'),
('8e53deb7-aa1d-43b6-846d-cc2e8e0d51d6', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 06:23:04', '2021-06-29 06:23:04'),
('a933b2fe-4ea4-49d5-9e12-0a295a72f097', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 11:49:28', '2021-06-29 11:49:28'),
('b4be8e18-e3a7-45dd-9e9e-3f9bdf6073a3', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 14:13:52', '2021-06-29 14:13:52'),
('bd3819d7-9e55-42b6-b29b-896a96bde48d', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 11:46:20', '2021-06-29 11:46:20'),
('d8dd28e1-2389-4fbe-8be8-b63778bc1397', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-29 14:19:49', '2021-06-29 14:19:49'),
('dda3e5c9-6870-469f-9790-7a48b56c34fd', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-06-28 10:33:40', '2021-06-28 10:33:40'),
('f6000247-ec53-453a-b794-f5bac111c4cb', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-07-01 09:37:52', '2021-07-01 09:37:52'),
('f66880ae-8f5b-42ec-be28-b5828979e3e6', 'App\\Notifications\\OrderNotification', 'App\\User', 2, '{\"title\":\"There is new order\",\"body\":\"You have just received an order\"}', NULL, '2021-07-13 17:14:05', '2021-07-13 17:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `item_id`, `name`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(2, 7, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(3, 8, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(4, 8, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(5, 9, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(6, 9, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(7, 10, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(8, 10, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(9, 11, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(10, 11, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(11, 12, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(12, 12, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(13, 13, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(14, 13, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(15, 14, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(16, 14, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(17, 15, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(18, 15, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(19, 16, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(20, 16, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(21, 17, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(22, 17, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(23, 67, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(24, 67, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(25, 68, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(26, 68, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(27, 69, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(28, 69, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(29, 70, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(30, 70, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(31, 71, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(32, 71, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(33, 72, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(34, 72, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(35, 73, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(36, 73, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(37, 74, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(38, 74, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(39, 75, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(40, 75, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(41, 76, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(42, 76, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(43, 77, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(44, 77, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(45, 98, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(46, 98, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(47, 99, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(48, 99, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(49, 100, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(50, 100, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(51, 101, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(52, 101, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(53, 102, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(54, 102, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(55, 103, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(56, 103, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(57, 104, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(58, 104, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(59, 105, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(60, 105, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(61, 106, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(62, 106, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(63, 107, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(64, 107, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(65, 108, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(66, 108, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(67, 160, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(68, 160, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(69, 161, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(70, 161, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(71, 162, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(72, 162, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(73, 163, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(74, 163, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(75, 164, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(76, 164, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(77, 165, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(78, 165, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(79, 166, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(80, 166, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(81, 167, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(82, 167, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(83, 168, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(84, 168, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(85, 169, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(86, 169, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(87, 170, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(88, 170, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(89, 174, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(90, 174, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(91, 175, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(92, 175, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(93, 176, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(94, 176, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(95, 177, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(96, 177, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(97, 178, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(98, 178, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(99, 179, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(100, 179, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(101, 180, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(102, 180, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(103, 181, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(104, 181, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(105, 182, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(106, 182, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(107, 183, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(108, 183, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(109, 184, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(110, 184, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(111, 239, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(112, 239, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(113, 240, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(114, 240, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(115, 241, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(116, 241, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(117, 242, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(118, 242, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(119, 243, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(120, 243, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(121, 244, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(122, 244, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(123, 245, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(124, 245, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(125, 246, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(126, 246, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(127, 247, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(128, 247, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(129, 248, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(130, 248, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(131, 249, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(132, 249, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(133, 262, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(134, 262, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(135, 263, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(136, 263, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(137, 264, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(138, 264, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(139, 265, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(140, 265, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(141, 266, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(142, 266, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(143, 267, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(144, 267, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(145, 268, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(146, 268, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(147, 269, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(148, 269, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(149, 270, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(150, 270, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(151, 271, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(152, 271, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(153, 272, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(154, 272, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(155, 326, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(156, 326, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(157, 327, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(158, 327, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(159, 328, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(160, 328, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(161, 329, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(162, 329, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(163, 330, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(164, 330, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(165, 331, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(166, 331, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(167, 332, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(168, 332, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(169, 333, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(170, 333, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(171, 334, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(172, 334, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(173, 335, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(174, 335, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(175, 336, 'Size', 'Small,Medium,Large,Family', '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(176, 336, 'Crust', 'Hand-Tosset,Thin Crust,Double Decker', '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restorant_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_price` double(8,2) NOT NULL,
  `order_price` double(8,2) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `srtipe_payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double(8,2) NOT NULL DEFAULT '0.00',
  `fee_value` double NOT NULL DEFAULT '0',
  `static_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `delivery_method` int(11) NOT NULL DEFAULT '1' COMMENT '1- Delivery, 2- Pickup',
  `delivery_pickup_interval` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vatvalue` double(8,2) DEFAULT '0.00',
  `payment_processor_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `time_to_prepare` int(11) DEFAULT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`) VALUES
(1, '2020-09-29 10:21:20', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 51.00, NULL, 'paid', 'A animi tempora sed dolores. Qui laborum ea saepe qui ea. Nemo vel sit esse rerum rerum illum non. Voluptatem tempora maiores maiores vero consectetur minima quos laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(2, '2021-02-10 04:34:06', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Praesentium vero voluptates ea sint officia est. Quibusdam tenetur quo laudantium nam. Itaque praesentium exercitationem quod inventore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, ''),
(3, '2021-02-09 19:44:34', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 88.00, NULL, 'paid', 'Ipsa inventore error sed nihil. Non sint odit asperiores odio inventore. Beatae similique magnam voluptate exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(4, '2021-06-12 15:56:02', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 34.00, NULL, 'paid', 'Et odit voluptas minus nobis voluptatum ad. Iusto facere commodi qui numquam molestiae eveniet. Quam odio aut officia id soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(5, '2021-04-12 02:21:31', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 71.00, NULL, 'paid', 'Deleniti praesentium qui eaque est. Ab velit unde ipsum neque est enim. Minima aut perspiciatis sequi quam. Veniam aut ipsa laudantium similique ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(6, '2021-01-20 12:12:58', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 76.00, NULL, 'paid', 'Repellendus corporis tenetur molestiae libero sint. Consectetur quia id quisquam. Non ea numquam labore officiis non cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(7, '2020-12-22 03:34:19', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 87.00, NULL, 'paid', 'Perspiciatis temporibus deleniti sequi nulla eveniet sed. Consequuntur voluptatem eos quam itaque rerum. Aut aliquam ad est ad dolor. Iure omnis consequuntur explicabo quisquam cum non qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(8, '2021-03-04 03:39:05', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 53.00, NULL, 'paid', 'Deleniti a quis ea exercitationem. Praesentium consequuntur placeat cumque voluptas molestiae consectetur. Quia molestiae sint exercitationem. Voluptate quaerat ex expedita consequatur adipisci.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(9, '2020-08-03 18:13:16', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 56.00, NULL, 'paid', 'Non dolor non aut rerum harum. Illo ut adipisci quam in quam minus eos. Dolores doloremque provident deleniti et impedit nemo et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(10, '2020-10-13 18:55:21', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 34.00, NULL, 'paid', 'Velit doloremque neque doloribus omnis aspernatur temporibus at. Officiis officia et velit tempore illo. Impedit ea corrupti qui repudiandae vitae a. Et ab est aut ut harum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(11, '2021-02-07 14:22:49', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 98.00, NULL, 'paid', 'Quasi dignissimos nemo temporibus ducimus fugiat et facere ratione. Sunt non suscipit nihil nihil. Quia harum autem voluptatem consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(12, '2021-01-11 23:59:58', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 92.00, NULL, 'paid', 'Voluptatum dolorem sit et maiores. Culpa delectus sit dolor voluptatem est. Temporibus praesentium alias voluptatem aspernatur odit sit qui. Aliquid modi vel nemo dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(13, '2021-02-11 01:25:32', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 42.00, NULL, 'paid', 'Tenetur quia temporibus unde voluptate est. Laborum ea est sit eveniet. Repellat eaque earum aspernatur dolores. Vel sed dolor ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(14, '2021-01-10 03:08:19', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 47.00, NULL, 'paid', 'Autem quas repellendus consequatur ut veniam. Et eligendi placeat voluptate ea itaque eos. Ut officiis est laborum quod harum illo odio architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(15, '2020-12-29 00:37:47', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 54.00, NULL, 'paid', 'Et suscipit exercitationem fugiat at. At laborum voluptatem consequuntur corrupti. Enim quo modi voluptas nesciunt nesciunt cumque saepe magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(16, '2021-01-13 18:57:46', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 66.00, NULL, 'paid', 'Aut corporis vel in delectus qui. Odio ut non molestias. Animi qui nam vero enim sunt. Unde aliquam sapiente quia excepturi cumque commodi hic vel. Delectus enim et facilis odio excepturi rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(17, '2020-09-26 00:12:44', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 76.00, NULL, 'paid', 'Doloribus pariatur soluta est soluta porro amet consectetur. Dolorem qui aut voluptas magni necessitatibus et corrupti. Minus distinctio recusandae et officia deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(18, '2020-08-13 13:44:26', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 75.00, NULL, 'paid', 'Sit sit velit enim ut nemo est. Perferendis animi culpa eveniet et laborum. Quis voluptate vitae omnis dolor aut rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(19, '2020-11-17 09:00:33', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 34.00, NULL, 'paid', 'Repudiandae quis commodi nam minus sed amet facilis. Et voluptate molestias fuga dolorem voluptates magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, ''),
(20, '2021-06-09 15:46:24', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 83.00, NULL, 'paid', 'Facilis quas molestias suscipit ut non sit occaecati. Doloribus harum vel unde quo facilis animi et. Enim quaerat sit ducimus esse accusantium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(21, '2020-10-13 12:51:23', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 83.00, NULL, 'paid', 'Voluptates velit quidem est earum qui. Aut minus in inventore earum numquam omnis aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(22, '2020-11-05 21:26:36', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 36.00, NULL, 'paid', 'Aliquid atque quo recusandae distinctio rerum. Molestiae ullam aut iusto dolorem. Atque non aut minus iste sit rerum quasi et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, ''),
(23, '2020-08-03 14:01:24', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 78.00, NULL, 'paid', 'Maiores quia eius optio rerum dolorum. Vel nesciunt voluptatem vel pariatur. Ratione facere dignissimos architecto incidunt qui alias. Ut est molestiae voluptates nemo eius consequatur ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(24, '2020-08-17 17:23:50', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 88.00, NULL, 'paid', 'Numquam assumenda distinctio sed fuga ab. Quia non recusandae at ullam et odio explicabo illum. Sapiente nulla nulla dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, ''),
(25, '2021-02-10 17:02:19', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 86.00, NULL, 'paid', 'Ullam vel quis ipsum molestias libero voluptatem magnam. Est quae ipsum fugiat reprehenderit. Non alias aut quas temporibus voluptatem nobis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, ''),
(26, '2021-04-28 17:09:38', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Nostrum natus consequatur adipisci tenetur. Est esse perspiciatis facilis dignissimos tempore. Voluptas reprehenderit eum consectetur ut tempora. Quo temporibus excepturi est possimus nisi non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(27, '2020-08-26 03:50:36', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 45.00, NULL, 'paid', 'Ab voluptatum omnis ut vel dicta corrupti. Dolor aut corrupti illum ipsa natus reiciendis. In sed culpa est. Optio et vero voluptas maiores aut ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(28, '2020-07-05 21:14:48', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 39.00, NULL, 'paid', 'Aspernatur atque tempora omnis deserunt. Minus et corrupti temporibus sequi sit qui. Aut sint beatae libero laudantium praesentium maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(29, '2020-07-28 08:09:45', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 88.00, NULL, 'paid', 'Quasi aliquid ab fugit vero aperiam libero. Consequatur id temporibus quae occaecati odio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(30, '2021-03-27 16:00:42', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 93.00, NULL, 'paid', 'Amet quibusdam aut suscipit provident. Doloremque sit nesciunt consequuntur illo non iusto laborum ipsa. Velit laudantium explicabo soluta sunt cumque repellendus quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(31, '2020-06-26 12:39:35', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 83.00, NULL, 'paid', 'Ab nihil tempore et quae et ut autem explicabo. Non sit vero voluptate dolorem et voluptatum. Beatae officiis ad error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(32, '2021-04-23 06:37:08', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 71.00, NULL, 'paid', 'Omnis dolorem non magni adipisci id. Repudiandae delectus dolorem ea et et rem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(33, '2021-04-25 03:27:43', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 63.00, NULL, 'paid', 'Necessitatibus eaque qui velit dignissimos dolorem perferendis. Iste tempora maiores totam accusantium asperiores odit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(34, '2021-04-17 12:37:31', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 51.00, NULL, 'paid', 'Corrupti voluptatibus quis sit vel. Consequatur non vero quibusdam voluptatum voluptas voluptas voluptates. Soluta a odio beatae recusandae dolor qui ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(35, '2020-10-28 07:23:50', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 43.00, NULL, 'paid', 'Sint non unde quis sequi voluptas aut quibusdam. Et minus fuga distinctio nihil alias sint. Et facere neque vel sapiente.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(36, '2020-11-11 22:00:14', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 35.00, NULL, 'paid', 'Saepe nesciunt dolor consequatur voluptatem. Tempora aut beatae eveniet veritatis similique architecto corrupti nobis. Nobis aspernatur corporis accusantium aliquam commodi magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(37, '2021-05-19 20:51:10', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 51.00, NULL, 'paid', 'Earum explicabo rerum mollitia tempore consequuntur laborum deserunt. Alias ab sunt modi. Est consectetur repellat atque officiis iure. Et in blanditiis perferendis atque reiciendis id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(38, '2020-12-29 11:37:47', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 65.00, NULL, 'paid', 'Natus dolore eligendi et eligendi repellat. Omnis consequatur repellendus quos dolor impedit nesciunt voluptas. Deserunt deserunt deleniti ipsum omnis assumenda natus. Animi odio debitis deleniti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(39, '2020-07-31 16:28:12', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 44.00, NULL, 'paid', 'Officia aliquid perspiciatis labore nesciunt placeat molestias asperiores similique. Eligendi voluptatem dolor ea eos maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(40, '2021-05-28 14:55:34', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 39.00, NULL, 'paid', 'Odit minus at nisi blanditiis ipsa et et. Nam aliquid velit alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(41, '2020-11-17 06:47:22', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 52.00, NULL, 'paid', 'Tenetur molestiae qui sed in. Hic et veniam est animi veritatis officia saepe. Quia veniam perspiciatis repellendus aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(42, '2021-05-01 05:30:57', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 78.00, NULL, 'paid', 'Dolorum sit quia itaque quidem incidunt. Aperiam culpa tenetur ipsum nobis recusandae ex. Qui debitis suscipit voluptatem hic. Voluptatibus quia voluptas provident voluptatem laboriosam sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(43, '2020-10-21 16:36:01', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 78.00, NULL, 'paid', 'Voluptas corporis rerum est. Exercitationem tempore amet ab. Similique non voluptatem dignissimos ducimus aut aliquid tempora.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(44, '2020-08-21 19:16:34', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 58.00, NULL, 'paid', 'Omnis fugiat velit qui velit. Iusto et officiis et dolorum eveniet sed optio. Mollitia sed explicabo culpa autem sit. Qui similique sit incidunt et praesentium quaerat inventore nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(45, '2020-12-11 09:55:26', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 33.00, NULL, 'paid', 'Soluta natus quas possimus et adipisci quas eum ut. Dolores autem ratione quia et ut. Vel veritatis in eveniet optio sit nobis. Dolor aut sapiente commodi ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(46, '2020-08-06 06:00:48', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 39.00, NULL, 'paid', 'Quia animi quas est deserunt odio eum dolorem. Dicta velit et ipsa consequatur voluptatibus quod sed ad. Odio unde non est dolorem et. Ipsam qui commodi rerum dolorem et odio tenetur voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(47, '2020-09-23 00:14:56', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 100.00, NULL, 'paid', 'Est animi eum quis quasi. Dolor dolor molestias delectus labore id hic molestiae. Ab quae ipsum voluptatem sint nesciunt possimus. Ea deleniti consequatur soluta esse ad.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(48, '2021-05-25 22:04:54', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 89.00, NULL, 'paid', 'Non tempora cupiditate dolorem. Ad odit corporis et consequatur quae veniam voluptas. Nemo alias qui dolorem qui consequatur voluptates blanditiis quia. Vel perferendis velit deleniti est quaerat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(49, '2021-05-27 16:25:29', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 71.00, NULL, 'paid', 'Iste ipsam beatae a est sed ea enim. Ut blanditiis nobis voluptatem incidunt non et dicta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(50, '2021-03-03 02:03:02', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 85.00, NULL, 'paid', 'Rerum expedita quia magnam odit. Eius reiciendis quod quas quas sequi qui. Itaque ut consequuntur quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, ''),
(51, '2020-06-29 08:47:37', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 93.00, NULL, 'paid', 'Molestiae non ratione dolore id. Atque dolorem debitis provident id beatae est enim. Et quis maxime et et distinctio. Qui nam et voluptatibus. Dolor deserunt tenetur omnis itaque tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, ''),
(52, '2021-02-11 21:30:48', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 70.00, NULL, 'paid', 'Illum et sint voluptates laboriosam. Aut officia dicta rerum perspiciatis consequatur voluptatem. Quas temporibus aut aut exercitationem soluta veritatis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(53, '2021-05-17 04:31:01', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 48.00, NULL, 'paid', 'Distinctio explicabo qui itaque similique nam. Eum voluptatum rerum ut. Qui placeat sapiente consequatur error quo excepturi vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(54, '2020-11-23 20:11:36', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 35.00, NULL, 'paid', 'Consequatur ab dicta magni molestiae labore. Enim aliquid aliquid ut aut. Aliquid eos optio perspiciatis labore suscipit corporis neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, ''),
(55, '2021-05-25 19:25:18', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 78.00, NULL, 'paid', 'Repellat quasi dignissimos ex blanditiis dolor. Nihil quam voluptate consequatur eligendi unde maiores dolore. Quas cumque rerum repellendus atque qui. Quo ut rem molestiae tempore et nisi aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, ''),
(56, '2020-09-27 05:24:24', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 62.00, NULL, 'paid', 'Dolorem ex blanditiis assumenda qui. Eveniet veritatis earum hic omnis molestiae et quasi. Explicabo nulla cum ex odio possimus culpa asperiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(57, '2020-09-03 11:05:38', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 47.00, NULL, 'paid', 'Et natus et fugiat odio facilis aut et. Distinctio ratione reprehenderit et voluptate distinctio. Sed ut deserunt eius ducimus. Exercitationem non pariatur error quae at iusto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(58, '2021-04-14 01:20:27', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Laborum aut quia dolores quod vel. Odit voluptates ad non. Dolorem error impedit sapiente corporis velit veritatis expedita. Modi vel tempora commodi quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(59, '2020-09-18 21:43:21', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 95.00, NULL, 'paid', 'A molestias doloremque ut sunt delectus eos dolor voluptates. Dolores numquam ratione quas molestiae ullam et. Sed in porro porro molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, ''),
(60, '2021-06-06 05:02:47', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 78.00, NULL, 'paid', 'Delectus voluptatem a ut similique. Quos veritatis sint aut. Numquam ea harum architecto aut enim at. Eius iste quam fugiat accusamus et autem quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(61, '2020-12-11 00:35:35', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 50.00, NULL, 'paid', 'Nihil sunt voluptatem ipsum minus. Accusantium qui tempore cum modi et. At culpa harum numquam aut ut dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(62, '2021-06-13 16:52:22', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 73.00, NULL, 'paid', 'Temporibus debitis nihil aliquid fugit. Unde adipisci consectetur est numquam velit. Natus aperiam quo veniam et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(63, '2020-07-13 20:17:49', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 62.00, NULL, 'paid', 'Amet sed amet quos est voluptatem voluptatem. Sapiente dolores aspernatur animi quas facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(64, '2021-03-27 18:24:18', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 37.00, NULL, 'paid', 'Veniam sunt eaque voluptas corrupti. Ut voluptatum sed debitis modi dicta. Maiores deserunt aut libero qui magnam ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(65, '2021-05-29 21:30:22', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Et explicabo praesentium quasi voluptas. Sunt et adipisci est quo eligendi expedita. Eveniet reprehenderit cumque rerum voluptatem. Qui quia pariatur laborum vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(66, '2020-09-17 06:55:43', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 32.00, NULL, 'paid', 'Dolorem dolor non velit ipsum in illo et illum. Assumenda et est quo molestiae cum consequatur. Consequuntur et sit id id voluptatem vel. Magni dignissimos rem et suscipit tempore aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(67, '2020-12-23 03:42:17', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 80.00, NULL, 'paid', 'Fugiat ea rerum voluptas dicta ea. Fugiat consectetur et voluptas commodi. Adipisci reprehenderit laudantium aut aliquam illo aliquid. Consequuntur repellendus nam sit iste quos ratione voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(68, '2020-06-18 02:29:25', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 47.00, NULL, 'paid', 'Quam dicta est maiores mollitia error sit. Dolores nemo quas blanditiis aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(69, '2020-10-02 11:57:02', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 76.00, NULL, 'paid', 'Dolorum asperiores ut ducimus. Eius vero numquam veritatis enim dolores autem aut quam. Et eum dolores est in et ipsa et aut. Inventore facere nisi amet maiores incidunt voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(70, '2021-03-01 07:51:08', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 60.00, NULL, 'paid', 'Maxime nihil dolorem eius tenetur corporis. Ut voluptatem sapiente a ab voluptas ut non. Fuga et aspernatur labore accusantium et aspernatur iste. Vel voluptates fugiat eius harum quas consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(71, '2020-10-05 02:37:58', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 43.00, NULL, 'paid', 'Dicta quidem dolores repellendus. Dolore officiis animi veniam tempora nesciunt. Et quo cum eligendi ut qui quia qui. Deleniti porro possimus sit id culpa vitae et facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(72, '2021-05-10 04:03:45', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 42.00, NULL, 'paid', 'Cumque debitis vitae aut repellendus. Perspiciatis velit adipisci adipisci est. Omnis quidem aut atque quia assumenda. Ex nostrum accusamus quia ut ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(73, '2020-10-04 10:19:21', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 75.00, NULL, 'paid', 'Qui illum voluptatem itaque consequatur officia id vel. Vel quasi ab est. Ducimus qui totam modi doloribus excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(74, '2020-09-27 13:23:32', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 56.00, NULL, 'paid', 'Quis neque inventore illo ut nostrum consequatur et. Qui in aut corrupti quas porro non. Et soluta et repellat quibusdam dolore ipsam voluptatum. Recusandae qui aut reiciendis magni quae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(75, '2020-11-17 19:07:52', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 86.00, NULL, 'paid', 'Nisi aliquam in assumenda et quam aut est. Quos minus incidunt vel beatae facilis. Vero temporibus ducimus aperiam ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(76, '2020-12-21 07:16:44', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 54.00, NULL, 'paid', 'Ut iusto maxime libero magnam quia officia. Enim sequi quis repudiandae repudiandae magnam et quam. Dolores voluptatibus nihil aspernatur aperiam. Libero rerum ut aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(77, '2021-01-15 21:11:53', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 56.00, NULL, 'paid', 'Qui et rerum aspernatur sit explicabo non laborum. Quia deleniti magnam quod hic ipsam. Minus velit perferendis molestiae. Ea dolor unde quo id vero accusantium porro voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, ''),
(78, '2021-04-24 05:04:04', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 87.00, NULL, 'paid', 'Asperiores qui rem deleniti delectus voluptatem. Consectetur voluptatibus dolorem illum et recusandae vitae quia. Iusto et quidem nihil quis adipisci qui tempore. Et ratione voluptas suscipit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(79, '2021-05-05 11:04:28', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 69.00, NULL, 'paid', 'Perspiciatis alias quae eos et sed sit accusamus. Velit atque enim et deleniti voluptates dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(80, '2020-08-19 07:03:58', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 93.00, NULL, 'paid', 'At maiores est aut est et ut modi. Est commodi molestiae illum adipisci voluptatum. Accusamus velit velit voluptatum et omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(81, '2021-03-14 03:16:18', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 90.00, NULL, 'paid', 'Totam ut porro voluptatem similique cupiditate numquam ut. Tenetur nihil beatae repellendus eius. Sunt cupiditate nisi sit eligendi nesciunt rerum ipsum. Voluptates enim animi mollitia enim natus in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(82, '2021-04-19 20:14:01', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 75.00, NULL, 'paid', 'Error iure maxime dolor consequatur. Recusandae vel distinctio voluptatem ex aut est dolorem. Est rerum totam quo distinctio odio est aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(83, '2020-12-22 03:05:27', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 40.00, NULL, 'paid', 'Doloremque voluptate at ea nulla. Qui molestias sunt et cum dolore. Aliquid cupiditate nobis totam architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(84, '2021-01-16 13:44:56', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 63.00, NULL, 'paid', 'Vel eos fugiat et recusandae consequatur modi pariatur. Ut ullam qui magnam rerum. Qui illum et qui eaque rem tempore quo alias. Aut autem tempora fuga nam qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(85, '2021-02-14 16:04:00', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 92.00, NULL, 'paid', 'Quod et dolore deleniti et ad. Vel sed vel voluptate doloribus dolor nam. Sapiente officiis aut temporibus. Et est sit magni sint illum doloribus voluptatum voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(86, '2021-02-09 18:47:23', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 97.00, NULL, 'paid', 'Quia vero commodi ipsum delectus rerum quia. Ut non qui molestiae. Quia qui consequatur qui molestias atque doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(87, '2021-02-17 04:54:48', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 94.00, NULL, 'paid', 'Eius fugiat molestiae pariatur ex ducimus quis saepe. Quaerat natus possimus architecto numquam nulla. Voluptate dolorem ratione id ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(88, '2020-08-05 10:15:14', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 48.00, NULL, 'paid', 'Facilis velit molestiae odio sed. Molestiae nesciunt deleniti iure. Quam ipsa hic nemo id facere quod et similique. Quia aliquam odio suscipit corrupti esse quia nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(89, '2021-04-11 16:30:19', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 78.00, NULL, 'paid', 'Et dolorum cumque inventore quas qui. Non quisquam rerum itaque possimus molestias. Deserunt ea quos distinctio iste qui dolore ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(90, '2021-02-03 08:40:50', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 75.00, NULL, 'paid', 'Nam doloribus sit ipsam vitae consequuntur enim cum. Ullam impedit dolores facilis ab. Aut est in occaecati impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(91, '2021-03-23 08:41:26', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 79.00, NULL, 'paid', 'Vel explicabo explicabo molestias sunt doloremque. Et pariatur voluptas iste facilis laborum voluptas. Modi dolores adipisci doloremque ut et assumenda vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(92, '2020-07-07 15:16:14', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 75.00, NULL, 'paid', 'Quam earum nobis tempora sunt. Iusto quam et impedit voluptatem et et soluta. At in consequatur hic et et et. Accusamus aut magni impedit ea esse omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(93, '2021-04-05 23:54:23', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 95.00, NULL, 'paid', 'Accusantium neque dignissimos quia numquam et sint. Ut aut repellat ut quis qui. Adipisci corporis laboriosam nisi esse ut. Quibusdam odit nostrum fugit mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(94, '2021-04-30 02:31:47', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 90.00, NULL, 'paid', 'Et qui et officia impedit vitae. Modi blanditiis tempore voluptatem dolore. Vel quos aperiam perspiciatis voluptas numquam sint sunt aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(95, '2021-02-14 12:42:40', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 40.00, NULL, 'paid', 'Commodi porro consequatur minus non cum. Et ad necessitatibus et amet enim ipsa deleniti. Dolorum magnam culpa aut harum enim. Dolores reprehenderit ratione inventore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, ''),
(96, '2021-03-26 02:49:23', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 47.00, NULL, 'paid', 'Animi velit excepturi odio nisi sit asperiores. Totam architecto animi non quis omnis fuga. Optio molestiae est sed placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(97, '2020-07-28 21:01:50', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 99.00, NULL, 'paid', 'Quasi esse aut quos aut. Tempora a sed sed nihil itaque in sit. Recusandae asperiores consequatur excepturi. Iste animi reiciendis iure amet veritatis harum. Est dignissimos excepturi corrupti quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(98, '2020-11-24 06:04:53', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Adipisci ea natus dolore voluptatem. Quod eaque totam qui omnis enim provident et qui. Architecto qui quaerat provident quis. Ut perspiciatis fugiat velit adipisci hic aliquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(99, '2020-11-12 22:24:44', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 64.00, NULL, 'paid', 'Et aut vero cum vel. Ipsam recusandae consectetur reprehenderit exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(100, '2020-07-05 13:22:55', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 56.00, NULL, 'paid', 'Ut consectetur reiciendis quia veniam rerum eum aut officia. Ut aut est officia ut officiis occaecati accusamus. Et facilis ullam aliquid ut est voluptatibus est necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(101, '2020-10-15 22:39:12', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 35.00, NULL, 'paid', 'Adipisci tenetur laudantium adipisci. Illo esse praesentium aliquam fugit eos odit quos. Deleniti ut commodi provident blanditiis. Eaque atque et rerum quis voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(102, '2021-05-07 08:14:52', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 59.00, NULL, 'paid', 'Modi exercitationem et ratione hic quasi. Eius corporis consequatur sunt eius libero. Officiis a sint magnam aut animi. Sed nemo magnam officiis vitae itaque voluptate voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(103, '2020-11-30 02:05:31', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 78.00, NULL, 'paid', 'Quia assumenda maiores at et aut aspernatur sint. Iste sit similique aut assumenda aspernatur consequatur qui similique. Temporibus necessitatibus facilis pariatur dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(104, '2020-07-07 12:25:26', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 99.00, NULL, 'paid', 'Dolorem et et non eveniet mollitia quidem laborum. Id sint commodi quia ea officia. Iusto aut quaerat similique aut. Quaerat veritatis dignissimos voluptatem aut itaque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(105, '2021-05-22 06:54:24', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Error et possimus incidunt dolorum sequi aspernatur a. Laboriosam corporis autem molestiae aut minus cupiditate quae. Sit assumenda facilis autem. Nisi eaque aut dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(106, '2021-05-02 20:18:44', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 94.00, NULL, 'paid', 'Nostrum dolor qui sed repellendus iste. Aut non qui voluptatem sed. Nobis nemo ut consequatur totam exercitationem. Nam eveniet odit illo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(107, '2021-04-01 19:32:47', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 53.00, NULL, 'paid', 'Ducimus reiciendis numquam sunt aut exercitationem et. Laudantium magnam facilis eius eligendi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(108, '2020-08-18 16:07:13', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 65.00, NULL, 'paid', 'Accusamus voluptatem pariatur voluptas magnam voluptas accusamus. Accusantium culpa inventore impedit deleniti at qui et ad. Facere iste aspernatur corporis facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(109, '2020-11-25 07:05:00', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 83.00, NULL, 'paid', 'Amet at fuga quibusdam et quia est. Iusto aut optio rerum laboriosam. Et rem ut autem dolores odio est beatae. Rerum repellat eaque quaerat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(110, '2021-04-25 15:06:00', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 59.00, NULL, 'paid', 'Omnis recusandae esse enim quo. Nobis et recusandae et impedit maiores voluptatibus et. Maxime exercitationem distinctio sunt blanditiis voluptatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(111, '2020-11-14 19:22:08', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 38.00, NULL, 'paid', 'Qui eligendi sunt aliquid. Autem cumque occaecati vero fuga et. Officia consequuntur commodi et molestias porro qui pariatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, ''),
(112, '2021-03-31 02:53:47', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 80.00, NULL, 'paid', 'Eius delectus quia dolore eos quo. Excepturi similique eius consequatur excepturi amet porro ex. Ducimus minima quas numquam sequi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(113, '2020-09-22 16:55:51', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 42.00, NULL, 'paid', 'Et et recusandae officia quis quidem in cupiditate. Qui iste architecto inventore non nulla voluptatem voluptatem. Voluptatem iste voluptate sed exercitationem est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(114, '2020-12-02 17:42:15', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 39.00, NULL, 'paid', 'Doloribus non aliquam recusandae nihil enim maxime laudantium. Consequuntur quo et odio enim et et. Ut quo quia facere est asperiores. Labore aliquam similique aut qui nostrum non explicabo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(115, '2020-09-30 08:12:31', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Eos quia ex quidem molestiae vel. Blanditiis in non iure odit repellat non. Ipsum laudantium atque impedit aliquam. Pariatur qui fuga ut quia. Vitae quod asperiores et sequi enim nisi molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, ''),
(116, '2021-05-08 08:52:19', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Omnis deserunt et quia. Labore labore repellat quisquam perferendis ex. Et corrupti voluptatibus rerum perferendis maiores. Omnis nostrum eum non alias. Aspernatur id libero modi quo in adipisci.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(117, '2020-12-24 15:14:14', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 76.00, NULL, 'paid', 'Voluptates tempore quo provident qui iste praesentium. Eos id minima similique. Quos optio praesentium incidunt alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(118, '2020-11-08 22:10:47', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 71.00, NULL, 'paid', 'Repellat velit voluptas magni beatae velit assumenda laborum. Nostrum velit laudantium necessitatibus laboriosam. Corrupti qui nesciunt aut et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(119, '2021-05-22 10:07:05', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 38.00, NULL, 'paid', 'Mollitia voluptatibus possimus voluptatem. A corrupti aspernatur ipsa consectetur. Quas a deserunt tempora fugit quas est amet. Consequatur enim nobis magnam voluptas consequatur laboriosam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(120, '2020-11-10 03:33:37', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 86.00, NULL, 'paid', 'Ratione cum ut minus. Amet et explicabo qui nisi est. Vitae reprehenderit illum quibusdam aspernatur est necessitatibus fugiat. Nostrum at et quia omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(121, '2020-07-10 11:04:13', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 78.00, NULL, 'paid', 'Eos quos reiciendis consequatur laborum. Ea libero praesentium molestias quia. Quia sit quia consectetur consequatur similique. Et labore accusantium enim minima officia in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, ''),
(122, '2021-06-05 04:01:17', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 38.00, NULL, 'paid', 'Rerum repellat deleniti excepturi sunt autem fuga maiores omnis. Consequatur nesciunt qui veniam officiis iure dolorum nobis nemo. Facilis debitis voluptas officiis blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(123, '2020-12-21 08:16:35', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 79.00, NULL, 'paid', 'Rerum amet cum fugit consectetur fugit sint eligendi quasi. Omnis a accusantium excepturi non hic delectus voluptatem. Reiciendis voluptas accusantium illum vel qui eius voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(124, '2021-04-27 03:51:21', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 48.00, NULL, 'paid', 'Voluptates facilis atque velit quis enim aut sunt. Distinctio aliquid libero unde quasi. Unde ut hic dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(125, '2021-02-28 17:04:47', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 83.00, NULL, 'paid', 'Molestiae iste qui dolor ut ut minus. Sit quibusdam veritatis sed nobis. Dolores quia quam occaecati ea modi deleniti maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(126, '2021-04-24 08:10:28', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 38.00, NULL, 'paid', 'Ut temporibus ut et perferendis dolores architecto consequatur. Rem id et sed labore consequatur sit ipsa et. Dolorem eos corrupti ipsum est quas perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(127, '2021-06-03 19:57:29', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 90.00, NULL, 'paid', 'Cupiditate aperiam voluptate voluptate doloribus. Et eveniet aut et in necessitatibus autem neque qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(128, '2021-01-20 12:57:48', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 57.00, NULL, 'paid', 'Eligendi explicabo commodi illo aut. Vero odio in dolorum quae. Adipisci id cupiditate omnis ea dolor. Hic possimus neque voluptatem quia possimus. Est quaerat asperiores ab perspiciatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, ''),
(129, '2020-12-04 15:24:43', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 38.00, NULL, 'paid', 'Qui quas soluta molestias accusantium ea fugit aperiam. A minima ut quod hic. Eos ipsum incidunt quia ut placeat ullam adipisci. Est itaque rerum omnis voluptatum veniam velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(130, '2020-06-28 03:24:52', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 42.00, NULL, 'paid', 'Dolor dolor repellat asperiores consequatur porro. Dolore sint debitis iste vitae. Hic qui harum voluptatem sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, ''),
(131, '2020-11-14 22:53:00', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 89.00, NULL, 'paid', 'Aut molestiae dignissimos quasi facere laudantium est. Quaerat totam quia aut voluptatem nobis quisquam. Soluta alias sit assumenda qui quas est. Ducimus quaerat ad nobis officiis cupiditate maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(132, '2021-01-26 16:34:54', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 85.00, NULL, 'paid', 'Ea repudiandae consequatur debitis ea fugiat odio. Deserunt possimus non dignissimos dolores nobis. Ducimus ipsam neque facere officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(133, '2020-11-13 08:51:50', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 53.00, NULL, 'paid', 'Odio consequatur expedita consectetur adipisci qui. Velit non quas reiciendis nostrum libero ut accusamus. Nulla doloribus magni eaque quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, ''),
(134, '2021-06-02 21:34:48', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 58.00, NULL, 'paid', 'Vel omnis non eum ad. Non reprehenderit non quod qui incidunt. Quaerat hic dolorum provident perspiciatis ut laborum. Et quo quisquam non sint fuga quaerat veniam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, ''),
(135, '2020-12-06 20:58:14', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 49.00, NULL, 'paid', 'Ullam amet qui nesciunt et aut iusto. Quia libero debitis veritatis delectus sequi quae molestiae. Dolorum ipsum et nemo vitae harum et aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(136, '2021-02-13 20:27:25', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 31.00, NULL, 'paid', 'Cum dolore aut facere libero. Sunt natus ratione asperiores non voluptatem. Voluptatibus qui impedit quam saepe rerum placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(137, '2020-11-18 14:06:41', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 66.00, NULL, 'paid', 'Perferendis sequi voluptatem iure perspiciatis. Nisi eos rerum velit illum natus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(138, '2021-04-16 10:41:15', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 35.00, NULL, 'paid', 'Ut aliquam quam hic adipisci natus. Deleniti nihil eaque eos quam non deleniti. Quia dolor quo illum dolor totam repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(139, '2020-12-28 23:47:45', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 66.00, NULL, 'paid', 'Enim accusantium rerum eaque consequuntur. Necessitatibus qui eius quos delectus. Aliquid tempora nemo voluptatem necessitatibus ea eius omnis. Ut eligendi libero ullam laboriosam autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(140, '2020-12-17 14:42:55', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 59.00, NULL, 'paid', 'Consequatur facere odio sint. Nihil recusandae ut aut iste voluptas sed. Eaque harum necessitatibus dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(141, '2021-01-08 03:20:26', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 50.00, NULL, 'paid', 'Aut occaecati id voluptate nulla ex beatae natus sit. Dignissimos magnam enim aut tenetur at illum odit itaque. Consequatur repellendus corporis hic nam possimus aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(142, '2021-03-27 10:41:43', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 95.00, NULL, 'paid', 'Voluptatem illo laborum deserunt nobis ut a omnis. Fugit autem aut tempora accusamus tempora. Deserunt ut eos quia. Exercitationem culpa blanditiis facere iusto sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, ''),
(143, '2020-07-17 05:14:50', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 79.00, NULL, 'paid', 'Tenetur similique officia provident vero harum velit non. Quam nihil quia itaque excepturi. Excepturi aspernatur ex in dolores vitae similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(144, '2021-04-27 08:21:06', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 30.00, NULL, 'paid', 'Ex quidem aperiam aliquam nobis qui autem itaque quis. Soluta atque ipsam voluptate. Iure consectetur sit deserunt sunt. Rerum consequuntur expedita tenetur. Nemo eum maiores quae minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(145, '2020-10-31 02:04:08', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 92.00, NULL, 'paid', 'Accusamus repudiandae in eius sint culpa porro. Quis illum esse ipsa sint quidem quo doloribus. Incidunt distinctio doloribus dolores aut nobis aspernatur eos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(146, '2020-11-30 17:54:34', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 99.00, NULL, 'paid', 'In perspiciatis officiis autem eligendi. Earum sunt quae nesciunt molestias nisi facilis alias. Sequi corrupti sit tempora facere et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(147, '2021-01-26 02:40:41', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 30.00, NULL, 'paid', 'Aut eum temporibus sed consequatur officiis aut earum quidem. Sit pariatur dolorem quae debitis. Quo et magnam repudiandae occaecati. Voluptates laborum voluptates a nemo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(148, '2020-10-11 15:06:13', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 60.00, NULL, 'paid', 'Quos non voluptatem quis voluptas quia. Culpa hic voluptatem molestiae dolorum rerum hic ea. Facilis officia quod ipsum eaque repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(149, '2021-05-08 06:02:11', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 88.00, NULL, 'paid', 'Dolor recusandae alias non consequatur. Aut velit repellat cupiditate ipsum enim placeat repellat. Cupiditate ut accusantium tenetur eius eius ut consequatur. Sit unde et corrupti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(150, '2020-08-25 19:53:16', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 35.00, NULL, 'paid', 'Consectetur sapiente at nesciunt rerum recusandae magnam. Ut neque pariatur veritatis enim aut optio tempore. Fugiat tenetur error non vero voluptatum quaerat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`) VALUES
(151, '2020-09-22 09:06:39', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 39.00, NULL, 'paid', 'Tempora adipisci error iusto ratione dolores quisquam. Dolorum explicabo officia sed non culpa odio. Eveniet quia aliquam molestiae at qui ipsa autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(152, '2020-11-12 18:26:38', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 71.00, NULL, 'paid', 'Consequuntur ipsum nulla voluptas est maxime nulla. Aliquid hic quaerat et et tempore. Quam est quam fugit sequi. Error eum beatae vel. Qui voluptatem rerum non odit optio fugit veniam magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, ''),
(153, '2020-09-06 17:54:35', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 92.00, NULL, 'paid', 'Culpa excepturi beatae voluptatem est voluptatem. Sint et ut beatae alias beatae et rem. Fuga facilis consequatur ea quis assumenda tenetur. Et eum odio dignissimos quaerat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(154, '2020-11-16 02:39:52', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 57.00, NULL, 'paid', 'Et quas debitis incidunt et qui culpa cumque. Voluptatem assumenda et ex. Hic dignissimos vel eaque quisquam nihil ipsum eveniet dolorem. Excepturi qui expedita impedit numquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(155, '2020-11-01 05:19:04', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 83.00, NULL, 'paid', 'Provident aliquam dolorem illo. Doloribus consequatur eum doloribus. Ut omnis in exercitationem facilis dolores fuga asperiores ullam. Illo voluptatem quis eveniet soluta qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(156, '2021-01-19 22:34:24', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 63.00, NULL, 'paid', 'Quis ut et autem dignissimos quod recusandae quibusdam. Laboriosam ex dolor sit corrupti. Expedita facilis consequuntur atque ut sapiente est et. Sunt iure unde facere pariatur quam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(157, '2021-06-03 02:35:19', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 76.00, NULL, 'paid', 'Quas et accusantium sed temporibus sit et repellat. Fuga adipisci et assumenda velit iure harum. Quod vitae ut facilis aliquam. Nisi sunt voluptates sit omnis velit iure.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(158, '2021-04-14 20:43:56', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 68.00, NULL, 'paid', 'Voluptas aut ut atque quo. Et et reprehenderit enim sint inventore nihil velit porro. Vel aperiam repellendus dignissimos et ad libero. Voluptatem et sunt corporis ab illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(159, '2021-06-03 13:27:22', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 69.00, NULL, 'paid', 'Non aut ea ipsam rem. Odio aspernatur optio dolore iure perferendis accusamus odit ut. Est magni voluptatem veritatis ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(160, '2021-06-13 15:07:57', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 94.00, NULL, 'paid', 'Sunt ut magni delectus quas quis et. Est qui illo in adipisci tempore nemo et similique. Qui excepturi aut sit facilis enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, ''),
(161, '2020-07-24 15:11:51', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 74.00, NULL, 'paid', 'Qui id architecto ea est voluptate nihil. Atque explicabo rerum amet accusantium qui alias quam. Nulla quaerat et cum consequatur. Beatae modi maxime dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(162, '2020-09-03 07:04:42', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 96.00, NULL, 'paid', 'Eligendi ullam impedit aut. Dolorum qui distinctio et. Veniam ab laborum consequatur quam eius sit dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(163, '2020-07-04 07:09:52', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 64.00, NULL, 'paid', 'Assumenda aut ea quidem perspiciatis est mollitia. Eum repellendus omnis saepe reiciendis. Ut nulla natus rerum voluptas dolorem architecto amet perspiciatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(164, '2020-08-24 07:41:07', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 54.00, NULL, 'paid', 'Voluptas voluptatem et aut culpa tenetur quis. Similique reprehenderit molestiae et vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(165, '2021-02-03 16:39:19', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 93.00, NULL, 'paid', 'Qui excepturi libero voluptas quia adipisci et recusandae. Aut ut ratione reiciendis in corporis quos quo. Quis vitae quod quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(166, '2020-09-08 16:48:21', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 98.00, NULL, 'paid', 'In illum excepturi quisquam perspiciatis maxime odio aut dolorem. Sit quo non expedita qui qui. Aspernatur in ullam velit et ut sit nemo minima.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(167, '2020-09-23 03:07:19', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Officia vitae magni vel non quo incidunt et voluptatibus. Id asperiores deserunt expedita quis ut quia. Quia aliquid omnis animi. Quod corrupti quaerat est consectetur quibusdam sequi ipsam in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(168, '2020-12-13 17:23:35', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 69.00, NULL, 'paid', 'Nemo sapiente necessitatibus dolor esse ratione ea iste. Dolorum enim quis libero consectetur officiis. Ut voluptate laborum eos sequi et eos optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(169, '2020-10-05 11:10:25', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 100.00, NULL, 'paid', 'Ut eligendi rerum quia autem et rerum autem. Beatae alias ipsum assumenda sunt autem doloremque placeat. Itaque placeat et voluptatibus nemo. Tempora odio tempore voluptas nihil rerum voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, ''),
(170, '2021-02-22 13:53:49', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 94.00, NULL, 'paid', 'Doloribus libero ducimus ad quia sed. Ut nemo error officiis ex. Mollitia minima sit dolor quia debitis error. Nam ipsum et aperiam fugiat ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(171, '2021-01-19 20:22:05', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 58.00, NULL, 'paid', 'Nam aliquam minus porro est vel. Est sit velit quam. Animi distinctio voluptas in doloremque a minima iusto deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(172, '2021-02-12 22:09:33', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 77.00, NULL, 'paid', 'Omnis perferendis voluptatem ullam recusandae. Molestias sit consequuntur a laborum ut. Ratione vel id id voluptatem excepturi at. Temporibus explicabo officiis qui dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(173, '2021-06-04 01:31:01', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 30.00, NULL, 'paid', 'Qui ex et consequatur beatae et. Fugit ex eos aut et rem quidem. Quo atque omnis voluptas omnis illum voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(174, '2021-02-07 05:41:00', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 55.00, NULL, 'paid', 'Quidem aspernatur quos harum in sunt quis minus. Rerum quia ducimus sed nemo nobis in ad. Earum quod cupiditate rerum sit voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(175, '2020-09-12 15:47:11', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 67.00, NULL, 'paid', 'Nihil odit consequatur dolor expedita mollitia incidunt. Cupiditate nemo facere repudiandae sit provident quas nesciunt sed. Voluptatibus facilis quia nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(176, '2020-12-08 11:32:50', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Quae alias praesentium sunt aperiam dolores sapiente. Ex minus atque modi voluptatum. Totam libero ex ab voluptates et. Unde quisquam aspernatur labore optio doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(177, '2020-11-23 01:26:05', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 58.00, NULL, 'paid', 'Consequuntur impedit consequuntur quia soluta velit voluptas. Et praesentium labore consequatur. Cum et dolores aliquid doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, ''),
(178, '2020-09-20 01:30:02', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 43.00, NULL, 'paid', 'Autem minima qui dicta consequuntur placeat et. Eum sit architecto sit sed consectetur. Nulla sint fugit quasi ut labore cupiditate. Enim et dolores recusandae et voluptates.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(179, '2020-07-18 06:39:52', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 56.00, NULL, 'paid', 'Quis deserunt rerum quis sed. Sint necessitatibus necessitatibus porro illum. Officiis molestiae omnis voluptas sequi velit ducimus aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(180, '2020-06-25 09:02:11', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 64.00, NULL, 'paid', 'Placeat ipsa optio qui ullam maiores nihil. Corporis ullam voluptate quis sit consectetur autem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(181, '2021-05-18 13:06:06', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 65.00, NULL, 'paid', 'Repudiandae eos quos alias sequi doloremque itaque sint saepe. Et et et quia. Minima molestiae voluptas unde voluptatem laboriosam magnam dolores. Nemo non accusantium aperiam magni quia omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(182, '2021-01-15 19:06:06', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 47.00, NULL, 'paid', 'Accusantium totam aut rem cumque necessitatibus. Quo sed et similique et dolore ea est. Porro voluptatibus laborum consequatur maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, ''),
(183, '2021-05-04 17:05:18', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 99.00, NULL, 'paid', 'Et voluptatem et quia perspiciatis. Laudantium velit expedita adipisci numquam excepturi. Provident maxime quod eum assumenda occaecati blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(184, '2020-06-16 19:16:14', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 72.00, NULL, 'paid', 'Doloremque aspernatur nesciunt reiciendis veritatis ut sed. Deleniti quia distinctio dolorem aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(185, '2020-07-04 16:31:52', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 66.00, NULL, 'paid', 'Qui quia omnis inventore eius atque saepe. Non omnis perferendis reiciendis consequatur voluptatem non odio. Et enim dicta qui placeat quia soluta id. Recusandae voluptas est delectus libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, ''),
(186, '2021-01-10 18:58:27', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Sint sint delectus est non. Consequatur necessitatibus illum impedit quo et quis dolore. Quis ut qui occaecati sed quasi ea reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(187, '2021-04-20 08:52:38', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 42.00, NULL, 'paid', 'Deserunt fugiat ut excepturi repellendus et pariatur beatae. Animi omnis quia et debitis est quisquam incidunt. Omnis nulla vel ea quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, ''),
(188, '2020-10-31 11:18:28', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 38.00, NULL, 'paid', 'Magnam non dolores vel rerum optio est. Magnam qui quia modi cumque autem nihil. Laudantium quisquam aut qui provident pariatur. Reprehenderit magni accusantium asperiores ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(189, '2021-05-25 00:03:17', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 39.00, NULL, 'paid', 'Ipsa vitae nulla harum aliquam. Distinctio deleniti dignissimos animi dolor et. Dolorum voluptate nihil enim eum voluptas occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(190, '2021-05-21 15:21:25', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 87.00, NULL, 'paid', 'Nostrum occaecati voluptas voluptatum in. Sit eius veritatis modi doloribus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(191, '2020-10-13 12:59:21', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 32.00, NULL, 'paid', 'Aspernatur nulla consectetur nisi sapiente tempora. Et sequi quisquam officia ullam iste. Veritatis odio soluta ea eum. Deleniti omnis id aliquid minus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(192, '2021-03-24 21:37:20', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 94.00, NULL, 'paid', 'Voluptas cupiditate et voluptatibus hic. Voluptas et odit temporibus. Quaerat dolore est sed exercitationem et. Eos eius sunt consequatur optio non aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(193, '2020-12-03 20:30:23', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Ut autem sint veniam rem quis dolor. Voluptate provident quia ab et fugiat. Recusandae illum non possimus vel et. Provident corrupti est molestias ratione dolores aut rerum doloribus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(194, '2020-07-20 17:16:17', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 91.00, NULL, 'paid', 'In aut aut corrupti voluptas quam incidunt sed. Occaecati aliquid non similique est. Dolores suscipit magnam quaerat sed quam debitis atque quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, ''),
(195, '2020-07-30 03:51:11', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 46.00, NULL, 'paid', 'Numquam id provident est adipisci. Deleniti quia quidem eum culpa. Illum praesentium ullam id ut quis optio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(196, '2021-01-31 19:42:17', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 77.00, NULL, 'paid', 'Suscipit nobis ut libero inventore corrupti facere. Assumenda explicabo itaque voluptas ratione. Inventore alias qui beatae dolorem sint. Alias asperiores ducimus qui consequatur nihil.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(197, '2020-11-03 23:27:37', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 66.00, NULL, 'paid', 'Odit porro quia natus. Eveniet animi alias et qui ut at cum. Et et modi dolores in eius non ratione sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(198, '2021-01-30 17:13:51', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 85.00, NULL, 'paid', 'Voluptas eveniet reprehenderit velit optio earum ea. Sed eos repellendus dolores quae. Expedita doloremque perferendis omnis excepturi. Reprehenderit veritatis id et voluptatem et dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(199, '2021-05-11 08:27:34', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 88.00, NULL, 'paid', 'Beatae repudiandae vel amet deserunt. Quam tempora placeat ut debitis voluptatibus placeat. Minus aut modi delectus ut harum provident molestiae quis. Et soluta minus dolorum qui omnis magnam omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(200, '2020-12-30 13:08:58', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 80.00, NULL, 'paid', 'Quidem doloremque fuga pariatur iste est et. Voluptas quam est exercitationem alias ad velit a enim. Aliquid ipsa quod voluptate aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(201, '2020-07-17 11:08:20', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 71.00, NULL, 'paid', 'In voluptas aut officia a. Beatae rerum quam adipisci nisi. Quaerat consequatur architecto quo. Ipsa est aut consequuntur necessitatibus maxime vitae adipisci.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(202, '2020-08-04 08:27:57', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Rerum voluptas repudiandae porro ipsum sit. Sunt dicta neque magnam ea odio et ut. In facere eos quia porro voluptas. Impedit incidunt rem qui distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(203, '2020-10-28 04:10:09', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 62.00, NULL, 'paid', 'Labore nihil est et amet. A dolore rerum expedita voluptatem sunt nisi rerum et. Autem aut ut ipsam voluptates cumque qui. Aspernatur deleniti officiis ullam officia quia pariatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(204, '2020-10-04 04:33:08', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 54.00, NULL, 'paid', 'Aliquid consectetur ratione quia vitae dolore. Reprehenderit aut et maiores nesciunt. Modi sint amet et aut quam. Sit delectus cum necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, ''),
(205, '2021-06-14 21:24:25', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 54.00, NULL, 'paid', 'Expedita voluptas quis necessitatibus dolorem molestiae voluptatem facere. Sed sit eum ipsum nisi temporibus enim. In veniam sapiente culpa maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(206, '2020-11-11 22:12:19', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 39.00, NULL, 'paid', 'Id ut omnis mollitia similique earum. Quas dolore id pariatur voluptatum sunt eligendi non. Qui id pariatur maiores voluptatem perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(207, '2020-10-27 01:20:29', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 81.00, NULL, 'paid', 'Eos delectus saepe minima ex. Saepe quo quo possimus repellendus modi ut qui. Suscipit non sapiente soluta repudiandae aliquam sed ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(208, '2021-05-31 03:18:25', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 83.00, NULL, 'paid', 'Et provident quisquam consequatur consequatur praesentium. Nihil sint voluptas id voluptatum rerum minima inventore. Et expedita qui nulla quasi optio nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(209, '2020-11-11 20:41:07', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 35.00, NULL, 'paid', 'Et odit maiores quis aliquid minus recusandae. Omnis distinctio blanditiis consequuntur eos quisquam. Quia laboriosam ut molestias omnis. Omnis ut nemo facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(210, '2020-07-22 17:00:38', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 60.00, NULL, 'paid', 'Animi labore soluta id omnis aut quia. Quod rerum inventore repellat ratione accusamus. Officia repudiandae inventore corporis distinctio in ipsam enim. Ullam consequatur pariatur illo aut molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(211, '2020-10-13 01:44:45', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 64.00, NULL, 'paid', 'Fuga qui omnis minus ipsa omnis sit. Sed et et sit ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(212, '2021-03-31 19:18:49', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 80.00, NULL, 'paid', 'Delectus porro culpa dicta ut illo voluptas tempore. A velit eum dolores et sequi minima tempora veritatis. Odio id placeat quibusdam occaecati a molestiae. Aut nemo iste qui exercitationem tempora.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(213, '2020-06-19 05:58:07', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 70.00, NULL, 'paid', 'Rem quia et eos ea rem fugit. Earum vel consequatur itaque magnam similique cum. Perferendis dolores voluptatem deleniti laudantium sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(214, '2021-04-08 00:23:50', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 44.00, NULL, 'paid', 'Eligendi ipsum cupiditate perspiciatis quia. Delectus aliquam doloribus nostrum adipisci et error. Explicabo sit aut commodi sed qui voluptate aut accusantium. Non quas voluptatibus est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, ''),
(215, '2020-09-28 10:40:37', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 58.00, NULL, 'paid', 'Minus doloremque fugiat excepturi illo tenetur. Nostrum architecto in est placeat. Molestiae nihil deleniti eos sunt ut. Quia ipsam dolorem mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(216, '2021-05-08 02:12:50', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 37.00, NULL, 'paid', 'Tenetur consequatur expedita placeat quasi qui. Quas neque et iste earum. Odit et nulla enim mollitia dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(217, '2020-10-11 04:56:38', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 33.00, NULL, 'paid', 'Aliquam laborum nisi reprehenderit vel deserunt. Ex recusandae facere magni sapiente consequatur enim. Iste ipsam sunt aspernatur eum vel quo ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(218, '2021-01-10 05:50:21', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 66.00, NULL, 'paid', 'Provident voluptatibus cum adipisci sed expedita perspiciatis dolor. Praesentium explicabo et maiores odio. Cum soluta et consequatur consequatur numquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(219, '2021-01-24 02:04:28', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 36.00, NULL, 'paid', 'Dolores qui ut dolores eligendi harum id ab distinctio. Eaque aut eligendi dignissimos ab dolor quia placeat. Aut voluptatem asperiores rerum enim ea fugit assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(220, '2021-03-15 11:27:26', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 55.00, NULL, 'paid', 'Saepe fuga temporibus rerum eum tenetur. Non et molestiae dolor est. Aut totam nam aut qui ducimus quod neque. Eos sapiente dolorem laudantium quibusdam nobis eos voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(221, '2021-01-03 23:32:16', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 75.00, NULL, 'paid', 'Modi vel id repellendus qui corrupti mollitia. Aliquam enim expedita enim quo. Vel voluptatem consequatur maxime in aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, ''),
(222, '2020-11-21 03:21:00', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 71.00, NULL, 'paid', 'Id optio suscipit totam dolores quia. Laudantium asperiores cupiditate amet. Excepturi veritatis non expedita unde aliquam nam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(223, '2020-10-26 10:38:05', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 62.00, NULL, 'paid', 'Eos sunt totam unde nemo voluptatem. Voluptatem id rerum quibusdam. Iure qui ut animi enim vitae deleniti. Natus similique vitae ea sint omnis velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, ''),
(224, '2021-01-07 18:51:30', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 89.00, NULL, 'paid', 'Repudiandae totam dolorem quae nihil qui rerum. Et repellendus voluptas natus. Omnis dolores delectus iusto deleniti beatae ea placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(225, '2020-09-29 01:11:26', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 31.00, NULL, 'paid', 'Voluptatem veritatis perferendis quis qui ut necessitatibus consequuntur. Quas ipsum blanditiis consequatur cupiditate iure dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, ''),
(226, '2021-05-05 03:44:33', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 82.00, NULL, 'paid', 'Nihil a sapiente ipsa. Quos id ea quas fugiat ullam et. Atque consequatur unde repudiandae eos. Accusamus dolore consequatur eius mollitia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(227, '2020-12-11 22:20:30', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 92.00, NULL, 'paid', 'Et consequatur unde dolor optio beatae ipsum. Commodi ipsa nemo veniam officiis facere. Omnis molestiae est deleniti eum recusandae et pariatur et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(228, '2021-05-24 04:11:00', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 90.00, NULL, 'paid', 'Officiis officiis commodi consectetur reiciendis ab veritatis. Tempore velit est quo maxime est. Est dolorum odio ab voluptas et ipsum quaerat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, ''),
(229, '2021-05-29 19:42:07', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 54.00, NULL, 'paid', 'Dolores velit alias id maxime autem excepturi eos et. Illo quo suscipit ut vitae reiciendis veniam. Sapiente quia voluptate omnis cupiditate et nostrum voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, ''),
(230, '2021-03-01 15:48:54', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 95.00, NULL, 'paid', 'Eum vitae quas quia tempora in suscipit necessitatibus ea. Alias facilis sint veritatis non. Qui est quo suscipit eveniet beatae. Accusamus consequatur optio modi repellendus distinctio harum at.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(231, '2020-06-18 21:43:40', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 30.00, NULL, 'paid', 'Necessitatibus qui atque molestias aut quo placeat. Dolorem labore autem suscipit iste alias. Sunt itaque est sed consequatur totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(232, '2021-01-23 20:55:59', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Ipsum fugit excepturi temporibus. Sunt et maiores enim voluptatum enim cupiditate neque. Non error blanditiis rerum et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, ''),
(233, '2021-05-23 18:48:00', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 90.00, NULL, 'paid', 'Qui non est impedit accusantium cupiditate optio qui. Nihil quia modi est sed eveniet. Consequatur numquam aut nemo quibusdam a velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(234, '2020-11-10 04:54:59', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 90.00, NULL, 'paid', 'Amet odit dolor atque et optio laborum tenetur. Est sapiente optio mollitia quo magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(235, '2020-08-27 00:01:50', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 59.00, NULL, 'paid', 'Sunt corrupti sunt quas reprehenderit ut sequi. Sit iure odit et et totam nulla. Dolores necessitatibus nulla molestiae rerum corrupti debitis commodi. Temporibus et eos magni ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(236, '2020-07-14 21:34:32', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 60.00, NULL, 'paid', 'Sed nesciunt natus et sit est ut aut. Est voluptas ullam excepturi temporibus. Sed qui reiciendis eum qui officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(237, '2020-10-28 15:00:57', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 75.00, NULL, 'paid', 'Corporis facere reiciendis commodi repellendus et. Dolorum ad iure neque possimus ullam. Cupiditate alias quis aut illum odio iure tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, ''),
(238, '2020-08-31 06:59:34', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 100.00, NULL, 'paid', 'Qui explicabo ex rerum sunt quia. Repellat libero eius quae molestias nesciunt perspiciatis. Dolorem voluptatibus eos accusamus qui facere qui odit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(239, '2020-08-11 12:17:45', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 97.00, NULL, 'paid', 'Modi aspernatur necessitatibus est consequatur quae dolores. Distinctio rem recusandae nobis distinctio. Ea autem illum et quo voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(240, '2020-09-02 15:36:31', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 36.00, NULL, 'paid', 'Quo exercitationem recusandae nulla quia et culpa. Tempore nisi optio molestiae in. Et ipsum quisquam voluptatem corporis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(241, '2020-07-31 07:33:26', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 37.00, NULL, 'paid', 'Id ullam consequuntur sequi est dicta unde exercitationem. Voluptas ex quas consequatur omnis. Corporis qui quod dolor reprehenderit non delectus molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(242, '2020-10-19 03:14:00', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 39.00, NULL, 'paid', 'Ut iste minus quis. Dolorem qui nihil rerum deserunt libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(243, '2020-09-20 16:22:57', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Quis et illo aliquid voluptatem. Omnis expedita repellendus fugit fugit et assumenda vel nihil. Labore assumenda omnis dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(244, '2020-08-04 06:57:18', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 98.00, NULL, 'paid', 'Hic perferendis ut nihil quod quisquam cupiditate dolore. Vel velit omnis commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(245, '2020-10-24 23:48:55', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 97.00, NULL, 'paid', 'Soluta nemo eos quo tempore dolore. Suscipit qui repellat omnis consequatur porro similique molestiae magni. Ut laudantium corrupti aut sapiente. Quam asperiores sequi sequi quaerat sunt eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, ''),
(246, '2021-03-01 04:07:37', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 53.00, NULL, 'paid', 'Vel voluptate enim qui aut nostrum repellat cupiditate ut. Officia nemo labore vel hic natus dolores commodi. Ipsum consequatur neque modi nobis accusamus inventore saepe ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(247, '2020-12-07 03:00:35', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 85.00, NULL, 'paid', 'Ut quidem vero blanditiis voluptatem voluptas totam. Et aut inventore explicabo optio. Quia ipsam voluptatem rerum sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(248, '2021-05-17 16:31:34', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 51.00, NULL, 'paid', 'Nihil sunt quibusdam labore quis. Dicta nihil error facere et. Asperiores reprehenderit sit eos molestiae. Autem accusantium possimus ab nam quibusdam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, ''),
(249, '2020-10-07 21:08:48', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 49.00, NULL, 'paid', 'Corporis eos similique aliquam corrupti. Ducimus eum consequuntur incidunt voluptatem libero autem consequatur. Et autem qui qui. Animi praesentium amet omnis distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(250, '2020-10-15 18:55:39', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 71.00, NULL, 'paid', 'Qui quasi id ut nesciunt culpa est rerum. Ut a voluptatem repellendus quod. Nemo quae consequatur dolor eum soluta quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(251, '2020-08-16 18:28:14', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 43.00, NULL, 'paid', 'Voluptatum et et minima cumque sapiente tenetur ad nam. Fugiat sunt repudiandae in enim voluptatem ut asperiores. Incidunt nostrum officia ad omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(252, '2020-08-09 05:31:11', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 56.00, NULL, 'paid', 'Velit dolor voluptatibus beatae provident voluptatem. Numquam illo libero quod odit temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(253, '2021-06-10 12:01:18', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 100.00, NULL, 'paid', 'Temporibus voluptatem placeat et. Qui inventore aut velit beatae et et. Laborum autem voluptatum quia nulla repellendus odio et. Quasi magni sequi id ut tenetur enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(254, '2021-01-14 02:55:26', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 99.00, NULL, 'paid', 'Ut laborum mollitia qui dolores. Suscipit minus dolorem nihil ut beatae dolorum optio. Sit tempore dolores fuga ullam sequi aperiam voluptas. Est nisi quo voluptatem voluptas nulla et odit inventore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(255, '2021-03-26 13:48:01', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 40.00, NULL, 'paid', 'Neque culpa id dolores voluptatem praesentium qui possimus. Sunt ex atque ut impedit. Consectetur voluptatum mollitia consequatur necessitatibus recusandae sit officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, ''),
(256, '2021-04-15 19:19:08', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 72.00, NULL, 'paid', 'Cumque vero porro voluptates voluptas alias sed. Molestiae cum minus esse vel. Minima voluptas vero nihil dolorum et quidem quis non. Consequuntur et laborum eos neque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(257, '2020-11-02 05:46:18', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 63.00, NULL, 'paid', 'Sunt quia praesentium suscipit quis ea similique dicta. Optio velit id sit est sit sed. Ea quia ut dolorum eius qui voluptatibus eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(258, '2021-02-24 23:28:52', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 75.00, NULL, 'paid', 'Laborum vel cum omnis cupiditate aut delectus officia necessitatibus. Iusto ut sed dicta laborum. Assumenda veniam eveniet neque sequi officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(259, '2020-08-13 16:14:11', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 57.00, NULL, 'paid', 'Temporibus sint aliquam nihil distinctio qui suscipit quam sequi. Id possimus eaque aut dolor excepturi. Optio aut aliquam ut sint earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(260, '2021-05-06 23:25:38', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 34.00, NULL, 'paid', 'Animi cumque vitae possimus autem. Mollitia fugit libero voluptatem quia nobis. Occaecati suscipit facilis vitae maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(261, '2020-07-01 16:09:24', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 33.00, NULL, 'paid', 'Ab nisi error libero iusto quia tenetur est. In et sit dolore corrupti consectetur maiores. Et aut reprehenderit voluptate molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(262, '2020-11-23 05:22:06', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 60.00, NULL, 'paid', 'Nobis sequi qui ab ab. Numquam quis illum qui nisi aspernatur. Quidem ex voluptatum aliquam. Eos est aliquam nam ipsa ratione nisi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(263, '2021-06-15 09:56:40', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 66.00, NULL, 'paid', 'Assumenda tempora libero laboriosam facere. Quas optio vero deserunt voluptatum quae doloribus. Veniam non odit saepe dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(264, '2021-03-29 01:47:16', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 71.00, NULL, 'paid', 'Maxime ipsum voluptates accusantium sint. Tenetur animi et est libero et. Voluptate eos quia cumque ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(265, '2020-06-27 00:59:34', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 74.00, NULL, 'paid', 'Quos odit libero veritatis repudiandae vitae ut ut. Nulla est sint nihil ut perferendis excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(266, '2021-05-30 13:51:01', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 53.00, NULL, 'paid', 'Et ratione accusantium ullam qui dolores. Omnis iste et sunt quo sunt laborum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(267, '2020-09-04 22:38:33', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 94.00, NULL, 'paid', 'Qui sit pariatur consequatur. Ut autem perspiciatis esse magnam reiciendis natus voluptatem. Odit quis eum sed occaecati aut dolor fugiat. Saepe sequi at corporis illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, ''),
(268, '2021-04-30 18:01:34', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Eaque voluptatem perferendis officiis sunt dicta vero. Doloribus magni qui reprehenderit ducimus accusamus. Sunt ipsa sapiente velit officia illo cumque. Qui non sunt sequi ad.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(269, '2021-03-04 10:12:15', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 87.00, NULL, 'paid', 'Incidunt dicta doloribus qui debitis. Vitae cum quaerat iste perspiciatis et hic maxime. Maiores iure officiis qui consequatur quas earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(270, '2021-05-22 14:34:27', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 51.00, NULL, 'paid', 'Dolores at reprehenderit consequatur velit molestias eligendi aperiam. Perferendis sint commodi et. Assumenda consequuntur quas in autem. Expedita culpa veniam dicta aut quis excepturi placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(271, '2021-06-07 06:46:47', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 90.00, NULL, 'paid', 'Quo est qui fugiat. Placeat vel ratione quia autem repellendus praesentium iusto. Voluptatem labore quas et sit corporis. Maiores veritatis aspernatur accusantium quibusdam nostrum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(272, '2020-08-31 09:26:40', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 54.00, NULL, 'paid', 'Autem doloremque consequatur id aliquam corporis quia porro hic. Quidem voluptates recusandae perspiciatis quia unde. Voluptates eum qui vel iure. Aut ab fugiat aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(273, '2020-08-31 01:04:41', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 49.00, NULL, 'paid', 'Quibusdam ea dolore omnis in voluptas dolorum. Rerum itaque eos voluptatibus eaque suscipit ipsam. Quisquam quasi ex aut in cum eum. Eum reprehenderit explicabo ipsum aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(274, '2021-01-26 11:50:53', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 43.00, NULL, 'paid', 'Est optio ratione praesentium doloremque modi eum. Ipsum voluptate et dolores quia esse eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(275, '2020-07-26 06:09:44', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 71.00, NULL, 'paid', 'Illo sunt placeat non sequi voluptas. Labore voluptates sed quasi officiis ut in repellat quod. Omnis beatae ut iste facilis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(276, '2020-12-28 11:19:51', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 70.00, NULL, 'paid', 'Est voluptatem ut rem inventore et non ea. Reiciendis maiores sint accusamus porro. Illum harum soluta ut accusamus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(277, '2020-09-13 03:03:44', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 81.00, NULL, 'paid', 'Doloribus id magnam dolore et maiores. Veritatis fuga totam omnis et illum. Eum necessitatibus exercitationem id omnis veniam quia aut consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(278, '2020-11-22 20:07:06', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 92.00, NULL, 'paid', 'Asperiores nulla quasi voluptates animi illum nihil ratione. Error sapiente et vel dolor omnis sed reprehenderit sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(279, '2021-04-20 14:33:20', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 71.00, NULL, 'paid', 'Qui sit molestiae placeat libero. Qui ut ea alias facilis adipisci consequuntur ea. Quis delectus voluptas libero qui quod et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(280, '2020-09-11 19:44:57', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 99.00, NULL, 'paid', 'Ratione cum consequatur iusto qui. Iure est ea facilis vel et. Nam qui consequatur facilis voluptatem. Beatae similique modi exercitationem et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(281, '2021-03-28 19:47:24', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 98.00, NULL, 'paid', 'Nostrum voluptas corporis ratione exercitationem aut officiis. Consequatur dolorum quam vitae provident ut. Sapiente soluta ut officiis eveniet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(282, '2020-11-29 22:23:16', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 44.00, NULL, 'paid', 'Sit aliquam alias quasi odio voluptatem veritatis ipsa. Nobis ipsa sit id vel quia mollitia. Inventore itaque aliquam reiciendis. Commodi delectus voluptas dolor est debitis exercitationem id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(283, '2021-04-24 23:08:39', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 51.00, NULL, 'paid', 'Eos voluptatem atque dolorem quibusdam eius excepturi. Eveniet sit rem numquam numquam corrupti unde quis perferendis. Iure est minima eligendi non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(284, '2020-10-23 20:36:06', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 67.00, NULL, 'paid', 'Ullam hic sed odio dolorem. Natus ex tempora quia dignissimos vitae. Assumenda ut id commodi ea. Pariatur aperiam numquam perspiciatis ea pariatur qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(285, '2020-09-22 09:24:45', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 79.00, NULL, 'paid', 'Quia autem voluptates magni fugiat assumenda. Laudantium iusto iste quis est a molestiae excepturi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(286, '2020-07-23 04:22:35', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 56.00, NULL, 'paid', 'Harum aut eveniet molestiae. Aut numquam eum nam quia. Dolor libero vel est est magnam eligendi nihil expedita. Molestiae totam voluptatem necessitatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(287, '2020-09-20 15:24:15', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 72.00, NULL, 'paid', 'Sunt aperiam nam voluptate earum possimus fuga iusto. Aliquam voluptates laboriosam odio. Sint commodi placeat dolore magnam voluptatem debitis. Iusto blanditiis et aspernatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(288, '2020-07-04 23:08:28', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 36.00, NULL, 'paid', 'Praesentium reprehenderit dolores blanditiis modi. Sequi cumque dolor soluta est quo. Praesentium ut nemo aut sed dolorem tenetur. Quasi doloribus ut voluptatem culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(289, '2020-12-16 06:47:42', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 60.00, NULL, 'paid', 'Autem vero repudiandae est a. Sit dolorem voluptatem voluptatibus repellendus aut eos aut. Recusandae occaecati tempora qui aut recusandae ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(290, '2021-02-02 13:47:30', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Perferendis occaecati repellendus voluptas. Odit voluptatem perferendis quis est aliquam et quidem. Tempora aliquam qui voluptatem placeat consectetur. Aut necessitatibus quo ab.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(291, '2020-12-24 08:44:50', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 70.00, NULL, 'paid', 'Sed dolore necessitatibus iusto doloremque. Voluptas similique sit qui velit. Nostrum ut voluptates et error illo. Et facilis velit eligendi tenetur soluta aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(292, '2020-11-30 04:50:42', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 81.00, NULL, 'paid', 'Accusantium rerum non amet et aut. Beatae porro eligendi rerum voluptatem. Temporibus ut officia sit provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(293, '2020-07-15 00:07:33', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Vel mollitia vero odio provident nihil. Excepturi nesciunt aliquid dolore excepturi quo. Voluptatem deleniti id nesciunt ratione aut dolor.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(294, '2020-10-30 23:23:28', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 65.00, NULL, 'paid', 'Cupiditate amet ad cumque est atque provident. Et sit sequi non architecto sapiente. Aut enim ex sint expedita porro voluptates. Non explicabo illo aut distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, ''),
(295, '2020-12-09 13:03:02', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 84.00, NULL, 'paid', 'Corrupti eveniet enim aut omnis porro nihil. Aperiam nobis sed qui at. Ipsum sint sed ut quod quibusdam doloribus distinctio modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, ''),
(296, '2021-02-14 17:32:18', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 93.00, NULL, 'paid', 'Doloremque dolor minima ex inventore quos vitae suscipit dolorem. Sint et saepe vel qui labore temporibus. Hic officia itaque dolor velit voluptas dolorem consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(297, '2020-10-21 03:32:59', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 81.00, NULL, 'paid', 'Voluptatem et aut possimus. Rerum eveniet sint quod culpa. Consequatur expedita veniam sapiente vero suscipit ipsum. Nesciunt dolor quis deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(298, '2021-02-12 21:04:34', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 87.00, NULL, 'paid', 'Ut nostrum et tempora nobis dolorem et sed a. Labore non libero nemo aperiam amet. Ut unde necessitatibus ipsa facilis ducimus nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(299, '2020-10-17 22:57:05', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 52.00, NULL, 'paid', 'Et numquam porro aut minus sint natus qui. Tempore laboriosam atque perferendis velit animi. Voluptatem velit consectetur occaecati nostrum assumenda impedit. Recusandae minima nemo nemo saepe.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(300, '2020-11-07 21:34:39', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 94.00, NULL, 'paid', 'Eligendi nisi labore et quia. Veritatis soluta animi minima laudantium consequatur corporis et. Aut velit dolor pariatur quo qui culpa. Autem non aut quam recusandae quia pariatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(301, '2021-03-26 05:55:57', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 100.00, NULL, 'paid', 'Est explicabo qui expedita cum dicta. Hic quam occaecati veniam inventore ratione sint. Eos sequi consequatur ut assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`) VALUES
(302, '2021-01-05 00:06:11', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 72.00, NULL, 'paid', 'Autem harum eaque a consequatur nulla minus eos architecto. Quidem temporibus error sit rerum iusto voluptates quod. Quisquam provident et vel. Non quia quas fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(303, '2021-06-04 20:40:11', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Dolor tempora dignissimos totam sapiente illo omnis sit. Qui qui voluptas omnis ut expedita iusto ea. Dicta natus aut eum earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(304, '2020-10-06 15:17:21', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 88.00, NULL, 'paid', 'Est molestias quis cupiditate et. Qui consequuntur dolorem hic aperiam laudantium debitis soluta. Rerum id nulla rerum nam et saepe.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(305, '2020-08-04 10:16:18', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 30.00, NULL, 'paid', 'Natus rerum non et qui. Corrupti laborum quaerat dolor itaque. Error nisi et non voluptatem non dignissimos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(306, '2021-01-22 12:07:58', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 47.00, NULL, 'paid', 'Laborum suscipit quam dolore quo. Ullam qui excepturi consequatur ea. Praesentium quo dolor dolorem corrupti pariatur fugit est voluptatum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(307, '2020-12-22 14:45:46', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 75.00, NULL, 'paid', 'Natus voluptatibus sapiente reprehenderit sit illo velit ullam. Consequatur ad quo omnis asperiores. Aspernatur sunt expedita iste aperiam dolorum architecto.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(308, '2020-09-28 16:15:18', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 63.00, NULL, 'paid', 'Laborum saepe quo ut perferendis sint sit est. Est sed ullam voluptatem quia qui provident. Aut ducimus est ducimus. Rem quos eius assumenda ab labore culpa corporis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(309, '2020-10-19 00:07:40', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 43.00, NULL, 'paid', 'Totam vel consequatur necessitatibus sint consequatur et rerum quia. Et iusto voluptatum numquam. Ut qui fuga quod esse laudantium. Rem dolor pariatur qui non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(310, '2021-01-14 12:38:27', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 68.00, NULL, 'paid', 'Fuga asperiores aperiam est in unde magnam. Rem vel eum aut non. Delectus minima quo omnis dolorem laudantium ut. Ut numquam sit quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(311, '2021-03-14 14:50:04', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 81.00, NULL, 'paid', 'Error temporibus eos aperiam excepturi nam commodi suscipit. Iste quod magni nihil nulla voluptatum. Unde rem cupiditate dolorum dolores ipsum expedita.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(312, '2021-04-16 14:25:47', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 69.00, NULL, 'paid', 'Officia ab dolorem aut ab. Error culpa sequi impedit voluptatem provident. Et quia minus tempora.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(313, '2021-01-07 13:11:56', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 32.00, NULL, 'paid', 'Consequatur qui eos et fugiat rem. Eveniet qui doloribus molestiae veritatis sed. Natus dicta voluptas nostrum voluptatem maiores qui. Qui sit dolores voluptas soluta quidem soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(314, '2020-09-09 11:08:17', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 99.00, NULL, 'paid', 'Hic incidunt ipsam voluptas officia quis voluptas incidunt occaecati. Magni impedit omnis ipsa tempore. Enim deserunt autem possimus atque. Sit fuga quia consequatur enim qui corporis dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(315, '2020-11-27 09:50:15', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 35.00, NULL, 'paid', 'Aliquid et quas tempore sapiente nostrum consequatur. Est quis voluptas dolorem sint quis. Incidunt qui perspiciatis corporis ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(316, '2021-05-25 02:18:24', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 88.00, NULL, 'paid', 'Incidunt repellendus ut quia quo rem. Enim in laudantium beatae cum cum molestiae ducimus. Eius dicta aut perspiciatis non tenetur quidem velit. Et quidem excepturi recusandae incidunt quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(317, '2020-12-26 19:46:06', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 50.00, NULL, 'paid', 'Nihil optio qui nihil doloribus esse. Id vel aperiam deserunt officiis maiores est voluptatem. Quia tempora ut sit optio corrupti enim id. Ex asperiores temporibus non et quis quia nulla ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(318, '2020-11-02 20:00:32', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 75.00, NULL, 'paid', 'Est dolorum veritatis ut laborum recusandae doloremque cum veniam. Rerum inventore nemo vel iure atque. Qui possimus sed ex et esse iusto neque atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(319, '2020-07-12 11:17:26', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 92.00, NULL, 'paid', 'Aut aut dolores recusandae. Est ex nihil rerum voluptatem. Nulla quo nulla modi dolor rem qui. Sed consequatur ut excepturi eligendi quia excepturi quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(320, '2021-06-11 21:09:47', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 32.00, NULL, 'paid', 'Suscipit fuga odio cum voluptatem est. Nisi vitae debitis vel et libero vel et. Itaque quasi maiores quia omnis doloribus. Adipisci eum ullam illum aspernatur dolorem explicabo et qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(321, '2021-03-19 21:35:02', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 95.00, NULL, 'paid', 'Neque excepturi ea natus qui. Dolores quis ut quam qui. Ea sed consequuntur quia saepe est id labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(322, '2020-07-27 17:11:27', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 42.00, NULL, 'paid', 'Est voluptates ea ad et. Velit quod non quia occaecati in. Recusandae quidem aut odit sapiente facere et. Illum quis repellendus sed et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(323, '2021-03-24 11:00:57', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 86.00, NULL, 'paid', 'Quis laudantium deserunt et explicabo quam. Autem incidunt dolorum doloremque harum ab animi. In et minima alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(324, '2021-05-20 18:11:22', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 55.00, NULL, 'paid', 'Soluta omnis voluptatem animi et voluptate officiis quae. Perspiciatis dolorum est veritatis labore molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(325, '2020-10-28 19:03:00', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 46.00, NULL, 'paid', 'Suscipit similique a doloremque debitis. Et cupiditate facilis tempore. Dolorum nam est illum et voluptatem. Neque iste expedita sed dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(326, '2020-11-23 06:11:57', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 93.00, NULL, 'paid', 'Et officia recusandae voluptatem hic corporis. Sunt sit eaque tenetur sit voluptas ut. Modi error ipsa sed architecto aut cupiditate quo. Eligendi aliquam explicabo ea excepturi praesentium sunt id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(327, '2021-01-09 06:31:02', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 31.00, NULL, 'paid', 'Excepturi officiis ut iste eius rerum quisquam ducimus. Assumenda consequuntur saepe itaque architecto voluptatum accusamus dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(328, '2021-01-04 08:58:09', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 45.00, NULL, 'paid', 'Qui tenetur aliquam totam neque qui. Qui assumenda est adipisci veniam minus quasi ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, ''),
(329, '2020-06-21 00:39:37', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 77.00, NULL, 'paid', 'Molestiae qui quis nobis reiciendis nemo. Nam voluptas praesentium repellat non sed excepturi deleniti et. Ratione rem laudantium velit vel. Est quia labore nostrum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(330, '2021-03-01 20:38:56', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 62.00, NULL, 'paid', 'Qui minima atque non voluptas nostrum. Rem non numquam nihil id nostrum eaque dolorem. Sit pariatur aut cupiditate in nisi accusamus. Nemo magnam pariatur sequi qui at ipsa ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(331, '2021-01-20 12:46:09', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 53.00, NULL, 'paid', 'Dicta sint modi culpa fuga nulla. Dignissimos sit expedita libero est. Enim esse facilis et sit quia harum. Vitae sed et aperiam ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(332, '2020-06-29 05:35:49', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 83.00, NULL, 'paid', 'Excepturi est nihil numquam saepe nemo ea. Magnam nesciunt placeat nam commodi. Quas quod accusantium deserunt. Aut dolores amet nihil eos voluptate in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(333, '2021-01-19 21:46:32', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 69.00, NULL, 'paid', 'Quaerat cum praesentium ut repudiandae et in. Ut ipsam voluptatem dolor eveniet. Fuga in repellendus ab qui hic sunt dolorem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(334, '2020-10-15 21:00:59', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 92.00, NULL, 'paid', 'Vel fugiat et itaque magnam. Eligendi labore quisquam enim sit dolores repudiandae. Molestias debitis sunt qui et. Sapiente ratione magnam consectetur fugiat voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(335, '2021-02-01 11:15:33', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 39.00, NULL, 'paid', 'Labore minima incidunt suscipit cum beatae sint eum. Quis dolores non sunt omnis vero modi voluptate rerum. Quam qui et alias. Hic repudiandae tempore debitis voluptas voluptatum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, ''),
(336, '2021-04-13 12:15:57', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 88.00, NULL, 'paid', 'Sit fugit rerum sint officia eos. Possimus ab cumque blanditiis accusantium illo tenetur magni fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(337, '2020-11-23 00:13:04', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 37.00, NULL, 'paid', 'Impedit et inventore ipsa consequatur aliquam vel ex. Laboriosam quia veniam voluptatem optio quia. Quidem nihil enim necessitatibus atque reiciendis numquam qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, ''),
(338, '2021-03-09 13:56:36', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 91.00, NULL, 'paid', 'Voluptatem ducimus eos temporibus qui nisi. Laboriosam sit veritatis ut beatae ut fugiat ut voluptatum. Porro ipsam omnis aliquid aperiam dolores repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(339, '2020-07-08 15:25:07', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 83.00, NULL, 'paid', 'Unde facere sunt id eos quibusdam harum. Ipsam et et consequatur ratione in quis dolor eligendi. Optio porro deleniti distinctio recusandae sunt rerum omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(340, '2020-12-19 02:24:15', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 49.00, NULL, 'paid', 'Ut qui error sed praesentium. Harum dolor quidem similique rerum suscipit suscipit voluptatum. Exercitationem dolore culpa adipisci.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(341, '2021-01-16 22:20:21', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 100.00, NULL, 'paid', 'Molestiae quam aut illum et ut minima qui. Qui corporis cupiditate vero molestiae autem ut. Quas neque culpa suscipit ut corrupti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(342, '2020-06-17 12:59:51', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 30.00, NULL, 'paid', 'Vero ea eos perferendis deserunt omnis itaque earum. Possimus voluptas placeat et ratione. Voluptate provident debitis vel quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, ''),
(343, '2021-01-23 01:10:46', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 77.00, NULL, 'paid', 'Accusamus rerum officia voluptate dolorum labore. Cumque fugit eos rerum facilis et. Illo labore temporibus odit unde est labore quas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, ''),
(344, '2020-12-20 16:27:12', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 41.00, NULL, 'paid', 'Quidem odit pariatur ut ex. Sit omnis similique est. Sit consequuntur recusandae odio ipsam facere est fuga aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(345, '2021-05-01 05:09:13', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 51.00, NULL, 'paid', 'Inventore unde nihil est. Aut nihil omnis qui quia incidunt corrupti sit. Veniam maxime et consectetur consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(346, '2020-08-10 20:57:05', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 70.00, NULL, 'paid', 'Suscipit aspernatur tempora dicta. Assumenda ducimus voluptas velit eius. Voluptatibus commodi eum ipsum et illo et. Quos dolor earum cum dolor facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, ''),
(347, '2020-06-18 11:18:03', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 33.00, NULL, 'paid', 'Commodi vel rerum aut qui omnis praesentium perferendis. Nulla omnis et ab aliquam. Voluptatem ipsam ab dolorem doloremque autem eos. Officia est velit voluptate consectetur molestiae sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(348, '2020-06-26 18:49:49', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 87.00, NULL, 'paid', 'Animi consequuntur labore consectetur non est numquam. Ut et consequuntur iste aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(349, '2021-02-28 23:15:32', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 35.00, NULL, 'paid', 'Neque officiis id et est velit cum molestias. Temporibus maiores et est est deserunt sit. Similique optio minus eos. Eligendi aut ipsum quaerat nobis aut aut voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(350, '2020-08-09 11:11:05', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 47.00, NULL, 'paid', 'Voluptates voluptas recusandae quo eos. Perspiciatis voluptatem et aut veniam sunt deleniti quidem. Quia quisquam qui et quia sint. Repellat necessitatibus aliquid quae quidem amet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(351, '2020-09-22 14:48:07', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 68.00, NULL, 'paid', 'Voluptatibus accusamus unde aut architecto sit velit. At eligendi quos sed voluptatibus magni voluptatem. Odit dolorum consequuntur aut veniam corporis consequatur natus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(352, '2020-07-22 00:41:04', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 53.00, NULL, 'paid', 'Quisquam voluptatem quis consequuntur ut illo ab. Rerum facilis laboriosam minus repudiandae. Et facere nihil velit natus unde non optio quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, ''),
(353, '2021-05-30 02:29:37', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 60.00, NULL, 'paid', 'Dolores eligendi velit est iure provident repellendus. Sunt culpa recusandae ullam corrupti sed iusto voluptatem et. Incidunt et quaerat expedita maiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, ''),
(354, '2021-04-30 14:27:34', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 95.00, NULL, 'paid', 'Deleniti qui cum aut id occaecati eum. Facere tenetur quisquam voluptatem autem. Consectetur qui est delectus amet asperiores non rerum ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(355, '2021-05-27 15:49:15', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 37.00, NULL, 'paid', 'Similique eos quas omnis ut nisi. Deleniti aliquam animi fugit rerum at aut. Aliquid itaque aut voluptatem et qui non. Veritatis expedita optio atque quia quisquam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, ''),
(356, '2021-04-23 05:16:14', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 32.00, NULL, 'paid', 'Officia rerum consequuntur consequatur ipsum dicta voluptatibus maxime. Quia aut sapiente voluptatem dolor perspiciatis facilis fugit. Eos illo occaecati aut similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(357, '2020-10-31 05:22:06', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 53.00, NULL, 'paid', 'Laborum rerum et enim ipsa veniam modi. Dicta dicta ab similique et. Unde est ipsum dolor numquam porro perspiciatis sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(358, '2020-08-15 03:33:44', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 36.00, NULL, 'paid', 'Rerum reiciendis est libero fugit perspiciatis vitae maxime. Tenetur fugit beatae modi dolorem quis. Rem nihil a dolorem ea tenetur provident optio. Dolor itaque vel hic quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, ''),
(359, '2020-08-31 16:54:02', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 84.00, NULL, 'paid', 'Voluptates quibusdam aliquid voluptates modi qui delectus exercitationem. Quibusdam pariatur eius vitae nobis et autem. Soluta assumenda corporis quos nulla laboriosam quasi fugiat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(360, '2020-09-29 04:25:52', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 76.00, NULL, 'paid', 'Corporis minima est animi sit cum mollitia. Pariatur debitis nihil ut quis debitis repellat autem. Consequuntur maxime facilis molestias. Eos iusto harum eaque qui eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(361, '2021-02-12 22:24:47', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 58.00, NULL, 'paid', 'Repellendus cupiditate omnis et quas harum. Laborum ut inventore recusandae nulla aut culpa. Repudiandae nesciunt ipsum enim. Omnis quod odit voluptas voluptates quo doloribus quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(362, '2021-01-01 05:58:03', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Eos praesentium ducimus rem ullam laboriosam et. Voluptatem voluptatem sequi iusto alias ipsam quo. Libero facere iste delectus tempora. Quidem corporis eligendi enim quasi praesentium velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(363, '2021-03-10 00:19:18', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 52.00, NULL, 'paid', 'Atque eum dolorum voluptatem veniam et earum et. Laborum quia ex est pariatur animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(364, '2021-03-11 13:27:18', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 53.00, NULL, 'paid', 'Ipsum aut libero quas omnis doloribus. Facilis rem cupiditate dolorem illum beatae. Ut unde doloremque facilis doloribus sequi fugiat commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(365, '2021-02-04 15:57:46', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 69.00, NULL, 'paid', 'Quibusdam laborum perferendis praesentium consequatur ut vero iusto. Quia voluptas debitis nisi qui et aperiam pariatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(366, '2020-10-22 13:16:07', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 49.00, NULL, 'paid', 'Odit dicta placeat tempore qui. Quibusdam et et voluptas culpa est quidem eaque. Sunt quisquam aut dolorem sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(367, '2020-07-08 02:24:44', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 64.00, NULL, 'paid', 'Autem aut sed sed cum. Rem nihil modi aut corporis atque voluptates porro. Voluptatem rerum aperiam ea totam quisquam. Porro eveniet amet suscipit modi molestias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(368, '2021-03-11 14:14:37', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 87.00, NULL, 'paid', 'In perspiciatis voluptas quidem aperiam sed esse aliquam sint. In sint laudantium consequatur accusantium provident dolorem. Quibusdam sed ipsam laudantium consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(369, '2021-02-18 14:07:02', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 35.00, NULL, 'paid', 'Similique ea quibusdam ex et ut adipisci. Dolorem at sequi repellat dicta assumenda sunt quae. Id totam quia corrupti voluptates laudantium sed placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(370, '2020-09-30 13:19:05', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 65.00, NULL, 'paid', 'Sunt consequatur aut consequatur asperiores eos eos. Placeat a earum minima laborum. Quo quasi cum pariatur voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(371, '2021-03-03 15:05:29', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 75.00, NULL, 'paid', 'Quia omnis dignissimos aut. Vitae impedit et animi quasi et iste. Sint omnis autem minima quo quaerat ab sunt. Et aspernatur molestias nesciunt ut ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(372, '2021-03-24 15:56:22', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 54.00, NULL, 'paid', 'Autem et incidunt aperiam dolore. Sequi ut ipsum culpa quibusdam sapiente nihil sit. Omnis quisquam molestiae distinctio perferendis velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(373, '2021-06-02 16:11:51', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 80.00, NULL, 'paid', 'Fugiat quos eos veritatis dolorem. Cumque sit eveniet animi. Est molestiae quis qui quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, ''),
(374, '2020-10-02 23:23:15', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 49.00, NULL, 'paid', 'Explicabo hic qui deleniti architecto. Error eos eaque quo debitis deleniti. Sapiente aut omnis voluptatem tempore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(375, '2021-05-28 10:24:49', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 57.00, NULL, 'paid', 'Harum quis sapiente vel totam iste voluptas. Praesentium totam et omnis laboriosam architecto rerum. Veritatis nihil nihil explicabo aut quod id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(376, '2021-03-14 16:26:12', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 33.00, NULL, 'paid', 'Et nihil laboriosam amet reprehenderit unde omnis. Et dolore consequatur aut suscipit. Ducimus qui eligendi quasi magnam eum dignissimos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(377, '2020-08-23 05:18:37', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 84.00, NULL, 'paid', 'Incidunt aut quos odio blanditiis ipsa omnis. Reiciendis excepturi repellat molestiae. Adipisci velit exercitationem dolor dolorem ad illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(378, '2021-02-14 13:05:32', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 46.00, NULL, 'paid', 'Sint vitae ea pariatur deserunt. Numquam omnis voluptatum ipsum totam est voluptatem eos. Vel nam nihil necessitatibus veritatis repudiandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(379, '2020-11-20 17:52:55', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 53.00, NULL, 'paid', 'Rerum repudiandae et qui. Earum non necessitatibus expedita odit voluptas ipsum omnis. Nisi omnis modi quia sapiente. Mollitia exercitationem quam quas velit animi et omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, ''),
(380, '2021-03-28 00:02:07', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 59.00, NULL, 'paid', 'Nihil officiis reiciendis at explicabo temporibus illo. Libero dolore sed eaque velit asperiores. Est voluptatem suscipit iure et. Voluptas quis quis numquam. Quisquam quidem id et et id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, ''),
(381, '2021-05-02 23:57:50', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 39.00, NULL, 'paid', 'Maiores voluptate et ut eos sit. Sunt excepturi consequatur a. Eos est laborum quia hic neque mollitia. Quis culpa molestiae qui exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(382, '2021-01-31 02:48:10', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 43.00, NULL, 'paid', 'Qui accusamus ea velit amet non qui ut. Laudantium omnis possimus quia eos modi nam. Aperiam et doloremque ducimus asperiores. Nulla accusamus sit sunt in adipisci et voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(383, '2021-04-22 17:22:52', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 85.00, NULL, 'paid', 'Voluptas est aut veniam fugit fuga nam. Architecto eveniet tenetur quisquam quo id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(384, '2021-02-03 23:24:41', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 94.00, NULL, 'paid', 'Repudiandae beatae totam laudantium. In optio sed veritatis cumque eum odit. Accusamus cupiditate error natus quam. Soluta enim laborum aut voluptates sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(385, '2020-10-27 06:54:11', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 38.00, NULL, 'paid', 'Omnis facere quia sed soluta eligendi quod. Omnis totam sed fugiat maiores alias. Enim est quibusdam aut natus minima. Unde quia nihil voluptatibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(386, '2020-10-17 19:55:43', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Mollitia est laudantium quia quia ut. Ex iste repellat reprehenderit amet at voluptatum perferendis. Ea soluta fugit nihil quis. Est ipsum et sed sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(387, '2020-08-17 04:09:17', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 57.00, NULL, 'paid', 'Porro vel rem dolores et. Rerum sit optio incidunt maiores optio hic saepe. Suscipit rem atque numquam consequatur. Voluptatem officiis doloremque incidunt dolorem similique ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(388, '2020-10-31 02:32:50', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 90.00, NULL, 'paid', 'Reprehenderit velit aut vero totam architecto hic. Saepe consectetur voluptas qui consequatur. Deleniti quia sed eius dignissimos. Aperiam qui aliquam aut perspiciatis sunt corrupti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(389, '2021-01-21 05:30:35', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 49.00, NULL, 'paid', 'Aut qui quo dolorem tempora. Excepturi et maiores minima sapiente. Ex aliquam voluptate vel minima quod. Eos cum eaque mollitia animi et quia sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(390, '2020-11-06 17:48:54', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 53.00, NULL, 'paid', 'Et qui est iure cupiditate. Quae maiores mollitia sed blanditiis pariatur nihil. Eos omnis quidem aut sed. Eum iure repudiandae totam ab et voluptatem. Consequuntur et est maiores deserunt velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(391, '2021-01-02 05:38:55', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 59.00, NULL, 'paid', 'Magni et ea quod in dignissimos quisquam sit. Non quia voluptatum autem odit totam non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(392, '2021-01-11 09:52:01', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 61.00, NULL, 'paid', 'Necessitatibus ipsum perspiciatis qui possimus totam vitae. Aut voluptatum doloremque inventore rerum iure. Ullam iusto quam omnis. Consectetur cum rerum et cupiditate aut eum recusandae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(393, '2020-11-18 18:30:30', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 96.00, NULL, 'paid', 'Explicabo officiis ipsa natus. Vero dignissimos et quos veniam. Eos officia labore eum unde omnis sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(394, '2021-01-12 23:34:52', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 67.00, NULL, 'paid', 'Magnam eos qui tempora et dolor. Atque sunt asperiores quia et quia. Necessitatibus ut dolor quae quis quidem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, ''),
(395, '2021-03-19 06:59:04', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 53.00, NULL, 'paid', 'Aut et cumque natus quia hic molestiae qui dolor. Est et numquam eveniet et distinctio aliquam perspiciatis qui. Eius amet reprehenderit nulla aut nulla officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(396, '2020-09-08 21:10:17', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 68.00, NULL, 'paid', 'Cum doloremque perferendis et. Pariatur veniam maxime explicabo necessitatibus. Ipsam ut voluptas reprehenderit. Vel suscipit est eos quod.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(397, '2021-01-28 18:58:27', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 52.00, NULL, 'paid', 'Hic libero enim quis cumque voluptatem temporibus consequatur. Et omnis dolores dolorum nihil. Non et molestiae atque dolor modi. Corporis et cumque quis non quos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(398, '2021-03-14 07:11:12', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 69.00, NULL, 'paid', 'At quo cum eveniet dolor. Voluptate placeat et aut numquam laudantium. Impedit nesciunt aut quia enim provident accusamus mollitia. Et officiis voluptatem quo sint praesentium eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(399, '2020-06-20 13:57:25', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 86.00, NULL, 'paid', 'Ut dolores laborum maxime. Est aperiam illum perferendis aut accusamus voluptatum possimus dolorem. Ducimus eveniet aut assumenda praesentium ea. Nihil accusamus velit et sit vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(400, '2021-05-03 07:24:52', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 51.00, NULL, 'paid', 'Deleniti qui consequuntur est eum maiores magnam et. Autem dolor a rerum vel in atque. Labore natus sed sit fuga eum et ullam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(401, '2020-06-25 21:35:35', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Fugiat id sed harum id molestiae aut culpa. Id ab expedita laborum in sequi quas quam aperiam. Eligendi animi debitis aut. Omnis et est magnam esse.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(402, '2021-04-30 10:36:56', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 40.00, NULL, 'paid', 'At quia perspiciatis architecto ipsam quisquam error. Blanditiis dolorem est ut ut non perferendis aut minus. Aut iste eaque aut delectus amet excepturi. Est nihil magnam a et voluptate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(403, '2020-10-04 05:55:46', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 60.00, NULL, 'paid', 'Et saepe rerum ad nobis consequuntur fugiat similique. Placeat veniam nihil fuga sit. Similique dolorem sed nemo veniam aut repudiandae nihil. Ipsa dolores voluptas officia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(404, '2020-08-20 04:29:56', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 31.00, NULL, 'paid', 'Dolores vel atque tenetur impedit optio rerum qui. Corporis eos esse tenetur quia laboriosam pariatur. Rerum nihil et explicabo expedita dolores soluta sit temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(405, '2021-05-09 18:26:54', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 78.00, NULL, 'paid', 'Cupiditate itaque eos omnis quia. Ipsum aperiam quis sed molestias impedit sequi odit. Dolorum mollitia voluptatibus et laudantium. Magnam architecto voluptatem ut illum perferendis pariatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(406, '2021-03-21 06:30:29', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 51.00, NULL, 'paid', 'Inventore est optio unde et autem. Consectetur veniam inventore est dignissimos libero quasi aut est. Error aut voluptatem distinctio porro dolorum praesentium non. Culpa sit beatae sunt et deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(407, '2020-12-14 17:45:16', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 57.00, NULL, 'paid', 'Aut placeat est quod quae quis in aliquam. Saepe error ratione sint debitis molestiae iste. Dolore architecto aut non. Non sint modi eveniet impedit ipsa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(408, '2020-12-19 20:39:35', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 83.00, NULL, 'paid', 'Nihil sed ut dolorem eveniet. Sit eligendi sunt qui debitis dolorem ut voluptas. Amet ullam nulla eum dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(409, '2020-11-14 07:06:00', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 97.00, NULL, 'paid', 'Cumque amet aperiam modi culpa natus consequatur. Aut qui sint repellat aperiam. Nostrum et omnis est tempore. Ut ut perferendis rerum temporibus facere est eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(410, '2020-06-23 10:45:05', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 93.00, NULL, 'paid', 'Ea facilis aliquam perferendis aut et. Dolor sunt voluptatibus error ea. Velit voluptates et sapiente ut nihil aperiam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(411, '2021-02-11 03:07:32', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 86.00, NULL, 'paid', 'Delectus architecto molestiae veniam ut non sit voluptatem quam. Accusamus vitae sed quo eos harum. In voluptatem error incidunt et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, ''),
(412, '2020-09-23 15:10:55', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 61.00, NULL, 'paid', 'Ipsum maxime odit minima dolores beatae. Qui occaecati optio unde et rerum. Enim vel sed eum expedita voluptas in esse.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, ''),
(413, '2021-01-18 23:44:11', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 94.00, NULL, 'paid', 'Consequatur optio ipsum quod quo enim nemo. Consequatur atque adipisci officiis est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(414, '2021-05-13 11:21:21', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 74.00, NULL, 'paid', 'Reprehenderit nihil a amet vero enim veritatis. Dolores dolorem ut omnis. Ducimus voluptatem quia facere voluptate soluta.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(415, '2021-06-13 21:31:58', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 86.00, NULL, 'paid', 'Enim et iure dolor voluptatem porro unde natus ipsum. Commodi vero molestiae sit omnis reprehenderit. Cumque voluptas fugit nam nam quibusdam nulla. Molestias error qui totam et sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, ''),
(416, '2021-01-08 18:33:53', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 38.00, NULL, 'paid', 'Optio voluptatem expedita earum qui. Repellendus sapiente tempora et. Mollitia quis dolore magni nostrum sit. Sed consequatur esse consectetur ducimus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(417, '2020-06-19 14:19:50', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 44.00, NULL, 'paid', 'Molestiae aperiam ducimus ad dolor nihil in pariatur. Est quisquam omnis id sit ullam sapiente. Nemo maxime quod qui velit tenetur. Quasi et vel eos vitae corrupti temporibus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(418, '2020-09-15 11:11:42', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 96.00, NULL, 'paid', 'Natus et voluptas totam neque saepe omnis. Autem architecto atque perspiciatis occaecati veritatis. Ut aut officia quia minima. A expedita dolore dolorem quibusdam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(419, '2020-12-25 17:54:36', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 45.00, NULL, 'paid', 'Cupiditate iure eius alias est non saepe optio cupiditate. Est cupiditate asperiores aut neque. Minus sunt suscipit sunt soluta. Inventore quia repellat facilis officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(420, '2021-04-05 10:21:03', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 53.00, NULL, 'paid', 'Et maiores temporibus ducimus saepe autem. Exercitationem repudiandae non non modi expedita voluptatem a dolores. Incidunt laudantium suscipit voluptas aperiam praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(421, '2021-05-29 09:31:52', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 83.00, NULL, 'paid', 'Sit et autem deserunt quibusdam. Vel culpa quis dolorum voluptatem et. Rem tempore eveniet adipisci a id facere magni. Vero corrupti accusantium autem et placeat aut et distinctio.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(422, '2020-09-21 20:02:01', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 89.00, NULL, 'paid', 'Qui sequi mollitia qui tempora quasi a numquam. Necessitatibus eos qui necessitatibus eaque culpa dolor distinctio. Praesentium perferendis quisquam quibusdam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(423, '2020-08-06 10:27:26', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Hic qui ad cumque fugiat. Libero ut deleniti id explicabo. Voluptates sit accusantium non ex fugit reiciendis. Rerum voluptate maiores dignissimos dolor sed atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(424, '2021-01-31 21:54:20', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Quae similique sapiente sunt delectus molestiae. Voluptatem mollitia deleniti voluptas dignissimos quasi alias expedita. Omnis qui sint reprehenderit impedit et in.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(425, '2021-03-27 04:01:01', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 41.00, NULL, 'paid', 'Cumque omnis praesentium quas quam nesciunt necessitatibus reiciendis. Aut illo et sed nihil eum sed quod. Est sunt fuga eligendi sed et omnis alias. Tenetur vel exercitationem assumenda quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(426, '2020-07-11 18:30:52', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 30.00, NULL, 'paid', 'Dolor repellendus qui unde exercitationem quia aut omnis. Tempora ea ut ex veniam nihil. Perferendis non quam nostrum dignissimos enim eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(427, '2021-05-26 15:25:26', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 43.00, NULL, 'paid', 'In nam voluptas nostrum. Ipsa deserunt et deleniti ut. Temporibus reprehenderit quisquam voluptatem voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(428, '2021-03-20 18:19:46', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 79.00, NULL, 'paid', 'Officiis et quas ut omnis officia eum. Officia ut adipisci aspernatur in ut numquam. Consequuntur doloribus iusto non aut porro non. Quis ducimus rem odio. Ducimus consequatur repellat eligendi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(429, '2021-04-11 17:17:54', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 47.00, NULL, 'paid', 'Rerum at eum facere illo accusamus qui qui. Perferendis deleniti consectetur illum voluptates. Amet fuga aliquid tempore non. Similique iure rerum beatae ut consectetur quidem inventore ratione.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(430, '2021-01-11 22:28:02', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 62.00, NULL, 'paid', 'Enim sequi et minima non natus consectetur laboriosam qui. Quia voluptatem est et reprehenderit ut ratione ea earum. Vel quidem repellendus modi consequatur laborum fuga impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(431, '2020-08-03 16:32:48', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 75.00, NULL, 'paid', 'Cupiditate in quisquam minus et labore. Odit aut eum cupiditate consectetur dolorum laborum. Laborum est magnam iste eos quia iure. Dolorum et consequatur est eos et iste.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, ''),
(432, '2020-10-26 20:38:07', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 35.00, NULL, 'paid', 'Neque repellendus maxime et expedita quam totam nesciunt. Vel nihil quia quis velit ducimus veritatis corporis qui. Eligendi voluptatibus maxime in dolorum ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(433, '2021-05-08 01:13:58', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 94.00, NULL, 'paid', 'Cumque error sit harum harum expedita. Ab aut modi illum. Ut enim et quod repellendus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(434, '2021-01-01 06:06:27', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 66.00, NULL, 'paid', 'Odio officiis non reiciendis incidunt repellendus labore consequatur. Possimus perspiciatis quo dolorem velit consectetur vitae. Suscipit qui ut exercitationem quo. Et ut consequatur fugit accusamus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(435, '2021-03-11 01:00:30', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 59.00, NULL, 'paid', 'Cumque quia minus ab. Voluptatem tempore sunt laboriosam itaque natus. Non aperiam ut suscipit eaque exercitationem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(436, '2020-09-19 03:06:35', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 32.00, NULL, 'paid', 'Et occaecati omnis error fugiat consequatur. Rerum et occaecati id unde. Odio ut aut cumque cum nihil unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(437, '2020-12-11 13:18:28', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 60.00, NULL, 'paid', 'Libero non molestiae non et minus non officiis. Cupiditate adipisci ipsam magnam ad. Autem sapiente quaerat id doloremque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(438, '2021-01-15 18:23:29', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 72.00, NULL, 'paid', 'Totam velit veritatis assumenda voluptatum necessitatibus dolor cum. Voluptatem rerum ducimus consequuntur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(439, '2020-06-29 08:17:23', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 47.00, NULL, 'paid', 'Voluptatem ut et qui maxime. Esse nulla rerum accusamus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(440, '2020-07-28 12:52:15', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 65.00, NULL, 'paid', 'Aut porro cumque est. Aut maiores esse cupiditate sapiente eveniet rem atque voluptatem. Voluptas doloremque autem quis ad illum. Repellendus natus voluptas unde reiciendis eveniet ut quibusdam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(441, '2020-09-20 01:03:11', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 64.00, NULL, 'paid', 'Architecto est rem odio repellat officiis delectus natus. Voluptas pariatur et dolor commodi natus eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(442, '2020-08-05 08:36:53', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 64.00, NULL, 'paid', 'Eveniet aut voluptatem dolorum sint nesciunt. Esse ipsa consequuntur totam libero. Officia dolorem qui eveniet laboriosam. Totam voluptates et minus harum laborum delectus unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(443, '2020-08-13 06:27:12', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 100.00, NULL, 'paid', 'Aliquam quia voluptate fugiat voluptatum accusamus placeat quasi sit. Ut similique voluptatum facilis omnis cum maiores. Eos qui ullam occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, ''),
(444, '2020-12-01 10:18:33', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 49.00, NULL, 'paid', 'Perspiciatis cum assumenda doloremque fuga. Architecto voluptatem natus animi ut. Nobis distinctio soluta debitis qui. Rerum quo et culpa consequatur magnam quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(445, '2020-09-30 06:38:32', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 54.00, NULL, 'paid', 'Natus in architecto consequatur ipsa distinctio error. Molestias quo sit voluptatem eius fugit optio aliquid. Error non sunt sapiente eum cum qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(446, '2021-01-14 04:04:51', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 84.00, NULL, 'paid', 'Aut velit quibusdam facere ducimus voluptas. Facere omnis iste enim natus totam eum voluptatem sed. Dolor quos commodi distinctio et est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(447, '2021-04-12 12:21:53', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 50.00, NULL, 'paid', 'A aut quo rerum dolore quam. Et quia ut aut impedit doloribus excepturi consequuntur nemo. Blanditiis voluptatum rem officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(448, '2021-02-19 07:08:24', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 49.00, NULL, 'paid', 'Non culpa vel expedita tempora vero distinctio. Nemo vel ipsum molestias dolor et at. Possimus tenetur qui aut fugiat nam. In in vitae laboriosam rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(449, '2020-10-10 19:19:28', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 64.00, NULL, 'paid', 'Sint aspernatur sequi et reiciendis numquam. Repellat aut magnam facere nisi. Inventore praesentium id ducimus nemo quis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(450, '2021-04-15 00:42:03', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 51.00, NULL, 'paid', 'Similique in animi dolor voluptate similique aut. Quaerat quidem eveniet eos non tempora in at. Assumenda veniam dolores aut voluptatem ad placeat. Animi est qui enim fugiat consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(451, '2020-09-12 15:51:02', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 37.00, NULL, 'paid', 'Aut quia ea consequatur sunt quo dicta voluptate doloribus. Voluptatem quaerat aspernatur in consectetur accusantium eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`) VALUES
(452, '2020-12-22 02:09:26', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 59.00, NULL, 'paid', 'Voluptates alias mollitia tempora quos ipsum animi quia. Dolore dolorem eum quod incidunt cumque impedit a.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(453, '2020-08-15 15:04:34', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 69.00, NULL, 'paid', 'Exercitationem sint exercitationem odio voluptatum quia. Accusantium et voluptatem suscipit ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(454, '2021-01-03 06:35:48', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Porro deleniti suscipit cumque dolorem facilis recusandae. Assumenda autem voluptatem sed autem. Labore id omnis est ab sit corrupti. Eaque officiis rem odio deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(455, '2021-06-11 03:24:40', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 46.00, NULL, 'paid', 'Voluptates porro quidem et fugiat quia voluptatem. Ducimus ab consequatur voluptas debitis accusantium sint. Rerum qui nesciunt magni. Animi quisquam dicta sapiente rerum et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(456, '2020-07-29 05:38:20', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 62.00, NULL, 'paid', 'Accusamus magnam culpa asperiores rem iste. Tempora accusantium expedita qui aut. Consequatur ea aut aut animi sed officia magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(457, '2021-04-07 19:41:45', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 81.00, NULL, 'paid', 'Perferendis est quis quae nobis cum non. Neque dolorem magnam vel et tenetur. Reiciendis voluptas delectus sed nihil exercitationem vero autem maxime. Dolorem quas maiores sit error.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(458, '2021-03-16 19:48:21', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 99.00, NULL, 'paid', 'Quas reprehenderit repudiandae veniam quia. Suscipit dignissimos eum eligendi. Et quia et rerum ut voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(459, '2020-10-07 00:25:31', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 80.00, NULL, 'paid', 'Voluptas ex eos voluptatem voluptates. Velit dicta blanditiis impedit porro vitae aliquam incidunt. Fugiat laborum ut in. Qui vel id velit qui. In quaerat voluptatem praesentium qui consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(460, '2020-08-02 07:11:00', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 51.00, NULL, 'paid', 'Non dolor est dolorem quia omnis incidunt. Excepturi blanditiis quia quo hic necessitatibus et consequatur blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(461, '2021-05-10 21:30:49', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 36.00, NULL, 'paid', 'Nam at facilis qui tempora fugit nostrum. Praesentium molestiae ut et totam. Velit eligendi possimus autem doloribus itaque omnis. Culpa in facilis nam magni aut architecto qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 24, NULL, NULL, ''),
(462, '2021-01-15 22:36:08', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 54.00, NULL, 'paid', 'Vel magni iste est nesciunt. Qui aperiam ut rerum necessitatibus. Vero rerum itaque distinctio id voluptatem sed. Veniam voluptatem nisi culpa laboriosam ea eum minima delectus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(463, '2021-01-18 01:32:26', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 47.00, NULL, 'paid', 'Cupiditate ut nisi asperiores laboriosam. Earum veritatis beatae nihil. Sit soluta est adipisci rerum. Ut perferendis dolorum et eaque cupiditate. Et eos et non at maxime accusantium sapiente.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(464, '2021-05-22 15:49:33', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 74.00, NULL, 'paid', 'Voluptatem officia rerum eum molestiae quia. Necessitatibus aspernatur quidem impedit. Doloribus nulla reprehenderit velit sint reprehenderit sed laudantium. Quis sit quam vel cupiditate.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(465, '2021-04-17 18:59:09', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 54.00, NULL, 'paid', 'Magni minima praesentium dolorum eos sapiente sunt. Consequatur sapiente nesciunt alias. Id et dolore facere nulla nulla qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(466, '2020-08-09 20:42:18', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 56.00, NULL, 'paid', 'Atque ipsam ut eum similique voluptatem. Maxime qui placeat provident accusamus quo fugit consectetur fuga. Aut modi quia numquam libero natus temporibus sed labore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(467, '2020-08-26 03:15:36', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 39.00, NULL, 'paid', 'Minus quo sapiente quae earum quia cupiditate eius. Veniam accusamus ut in. Sint et dolores unde fugiat. Cum aut quaerat non consequatur sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(468, '2021-03-25 08:35:23', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 67.00, NULL, 'paid', 'Dolor ipsa sapiente voluptatem vero qui. Aspernatur nostrum et occaecati ut reiciendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, ''),
(469, '2021-02-21 15:03:18', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 93.00, NULL, 'paid', 'Nihil qui nihil quia quidem est voluptas ut ex. Et culpa numquam accusamus consequatur rerum quia voluptas quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(470, '2021-04-12 11:03:11', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 37.00, NULL, 'paid', 'Et dolores eos consequuntur est. Accusantium voluptas enim facere voluptatem omnis quisquam. Quas non nostrum iusto magnam nam quia cumque earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(471, '2021-06-12 21:46:49', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 79.00, NULL, 'paid', 'Aliquam doloribus laborum consequatur ducimus et et dicta. Quasi provident non dolor temporibus et. Incidunt et ut et distinctio animi dolores deleniti animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(472, '2020-10-07 23:49:04', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 37.00, NULL, 'paid', 'Reprehenderit earum aut quod accusantium quisquam harum nihil aperiam. Soluta ab corporis ut voluptatibus. Id qui molestiae quam qui. Corrupti nam eos eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, ''),
(473, '2021-05-01 19:18:30', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 68.00, NULL, 'paid', 'Accusamus voluptatum omnis perspiciatis esse. Sit voluptas aut aut ut consequuntur reiciendis vel aut. Doloremque odit eveniet aut tempora doloremque voluptas. Et ipsa dolores nesciunt sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(474, '2020-09-13 06:20:20', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 76.00, NULL, 'paid', 'Et eveniet suscipit quo molestiae rem. Commodi blanditiis vel a aut temporibus. Vel ut molestiae exercitationem voluptatibus dolor ut qui iste.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(475, '2021-01-06 22:28:39', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 94.00, NULL, 'paid', 'Quia provident sequi sit dolores iste sit. Eius iure et voluptates facilis neque ea. Voluptatem nihil expedita totam enim. Nemo necessitatibus eaque similique quo est vero aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(476, '2020-08-15 21:10:13', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 70.00, NULL, 'paid', 'Nisi blanditiis non repellendus dolorem repellendus ut laudantium neque. Inventore quas rem officia vel exercitationem atque. Sed aut ut ad aliquam earum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(477, '2020-12-11 09:41:34', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 83.00, NULL, 'paid', 'Sit deserunt nihil quia rerum. Id numquam atque modi magni aut facere nam. Maiores in non sed eum aspernatur quas dignissimos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 13, NULL, NULL, ''),
(478, '2020-10-11 14:49:04', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 45.00, NULL, 'paid', 'Laborum est eum mollitia. Occaecati ut consequuntur qui. Aut commodi incidunt quibusdam eligendi. Sed nobis repudiandae fugit aut sunt debitis molestiae. Et dignissimos voluptatem aperiam ipsam quis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(479, '2020-12-28 12:05:55', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 39.00, NULL, 'paid', 'Et est ipsum in nihil sed soluta. Laborum facere adipisci est ipsam unde maxime. Culpa laborum in aut. Inventore numquam est eius.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(480, '2021-05-28 11:36:03', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 59.00, NULL, 'paid', 'Deserunt nisi nobis beatae et id enim. Tempora eos a rerum rerum. Voluptates dolorum aliquam sequi culpa ipsa aliquam iste. Voluptatibus nam quibusdam accusantium molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, ''),
(481, '2020-06-21 09:32:54', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 50.00, NULL, 'paid', 'Non dolor voluptatum commodi. Hic qui sit omnis provident debitis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(482, '2020-09-29 02:44:11', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 95.00, NULL, 'paid', 'Dolorem harum omnis fugit quis qui. Molestiae reprehenderit consequatur consequatur facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(483, '2020-09-27 07:13:25', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 56.00, NULL, 'paid', 'Possimus et expedita culpa inventore rerum nostrum. Ipsa voluptatem velit alias sed fuga consequatur. Placeat perferendis nam corporis explicabo. Odio aut vero tempora aut dignissimos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(484, '2020-10-11 04:55:39', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 94.00, NULL, 'paid', 'Atque voluptate sed rem fugit. Cumque possimus ipsum quo omnis eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, ''),
(485, '2020-09-13 14:12:57', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 63.00, NULL, 'paid', 'Eaque voluptatem dolores nostrum excepturi quia. Dolorum accusamus optio quo omnis neque molestiae autem. Exercitationem inventore rem et quisquam libero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, ''),
(486, '2020-12-24 18:06:46', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 70.00, NULL, 'paid', 'Labore voluptas autem consequatur praesentium doloribus. Et nobis rerum maiores. Excepturi quisquam aliquid omnis harum voluptatum. Ut necessitatibus fugiat doloribus sed sunt facere sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(487, '2020-07-27 04:53:34', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 30.00, NULL, 'paid', 'Dolor ut velit et inventore voluptas. Sunt non esse tenetur officiis. Voluptates iusto eos est magni voluptatem voluptatem.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(488, '2021-01-16 13:42:20', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 60.00, NULL, 'paid', 'Placeat commodi quaerat qui voluptas doloribus fuga sed. Optio id ullam explicabo adipisci laborum ut iusto. Aliquam debitis deleniti saepe corrupti aut et non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(489, '2020-10-13 16:27:32', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 57.00, NULL, 'paid', 'At consequatur earum voluptatem similique mollitia. Cupiditate labore et aspernatur consequatur cumque ab est qui. Amet aut numquam repellat ullam. Esse aut aliquid laudantium ipsum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(490, '2021-04-12 13:26:31', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 59.00, NULL, 'paid', 'Quis qui doloribus eos deserunt. Facere velit molestias et dolores eum molestias. Et deleniti tenetur qui facere neque praesentium similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(491, '2020-12-08 00:57:23', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 98.00, NULL, 'paid', 'Et fuga perferendis id sit quo doloremque. Reiciendis deserunt corporis ipsa unde inventore. Quas esse tenetur reprehenderit fugiat sed asperiores. Sint aut ex eligendi sed natus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(492, '2020-07-10 02:14:45', '2021-06-16 09:39:36', NULL, NULL, 3, NULL, 0.00, 43.00, NULL, 'paid', 'Fuga quis adipisci suscipit quos. Unde non voluptatem beatae voluptas molestiae beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(493, '2020-09-16 23:47:46', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 83.00, NULL, 'paid', 'Molestiae odio quia ad aliquid est quo. Maxime incidunt et dicta ratione voluptate sunt qui. Doloremque eaque ipsa excepturi et ut explicabo velit. A sapiente quia animi incidunt ut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 18, NULL, NULL, ''),
(494, '2021-02-11 17:06:47', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 63.00, NULL, 'paid', 'Saepe non provident hic dicta natus. Id eaque quidem reprehenderit fugit aut suscipit qui quo. Qui facilis a dolores. Rerum delectus cupiditate quasi eius deserunt nesciunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, ''),
(495, '2021-06-10 23:04:17', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 94.00, NULL, 'paid', 'Blanditiis et amet ut non sapiente debitis et. Est quis fugiat sequi autem. Natus quaerat eos dolores accusantium fugiat blanditiis atque et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, ''),
(496, '2020-12-12 16:53:29', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 97.00, NULL, 'paid', 'Quam similique laudantium suscipit et. In commodi numquam debitis illum quos omnis accusamus ut. Debitis exercitationem nihil et atque.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, ''),
(497, '2021-04-30 08:49:40', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 84.00, NULL, 'paid', 'Aut explicabo ex accusamus sed ratione consequatur vero. Rerum porro dolorum consectetur dolor. Asperiores aut dolor rerum reiciendis. Iste consequatur molestiae culpa soluta adipisci nemo et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(498, '2020-10-30 23:55:52', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 93.00, NULL, 'paid', 'Blanditiis dolorem velit dolores voluptatem veritatis. Qui doloribus illum excepturi perferendis non omnis. Accusamus est exercitationem ut est quia modi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(499, '2020-08-25 22:10:10', '2021-06-16 09:39:36', NULL, NULL, 2, NULL, 0.00, 59.00, NULL, 'paid', 'Rerum vitae atque natus eum provident aut. Quidem quas in porro.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, ''),
(500, '2021-01-30 10:24:24', '2021-06-16 09:39:36', NULL, NULL, 1, NULL, 0.00, 48.00, NULL, 'paid', 'Fuga vero magni ab consequatur. Fuga qui maiores sit. Repellendus qui aut in eum provident sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(501, '2021-06-15 10:35:44', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 90.00, NULL, 'paid', 'Dolores dolores corporis dicta fuga non fugiat labore. Autem qui fugit quisquam consequatur repellat. Dicta minus et ut natus. Qui accusantium assumenda voluptas aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, ''),
(502, '2021-06-16 09:14:10', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 99.00, NULL, 'paid', 'Est doloribus nam voluptatem molestias iusto reiciendis. Magni saepe adipisci vel labore. Dolorem consequatur fugit eum facere. Cupiditate est eveniet mollitia nulla.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(503, '2021-06-16 02:13:36', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 84.00, NULL, 'paid', 'Sed est rem et cupiditate est. Beatae accusantium commodi recusandae. Eligendi eaque voluptas quis voluptas est impedit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(504, '2021-06-16 09:31:21', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 59.00, NULL, 'paid', 'Sit non sint quia ex. Rerum fugit qui ratione est. Omnis fuga optio sint praesentium quia dicta eius. Illo aut praesentium ratione laboriosam laboriosam consectetur. Non dolores sed explicabo fugiat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(505, '2021-06-15 13:34:26', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 34.00, NULL, 'paid', 'Nemo sit mollitia ipsum omnis. Ipsam aperiam earum quidem eius sit voluptatibus. Est earum nulla temporibus aut architecto. Voluptatibus occaecati voluptas odio itaque beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(506, '2021-06-15 23:26:39', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 62.00, NULL, 'paid', 'Magni vero eveniet cupiditate. Nesciunt quibusdam voluptatem rem similique.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(507, '2021-06-15 11:10:34', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 73.00, NULL, 'paid', 'Sit veritatis autem dolorem. Eligendi nihil ea est ratione perferendis et saepe. Ipsam corrupti qui aspernatur aut non quam doloremque et. Id est aliquam iste ducimus quis dolor quasi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(508, '2021-06-15 22:48:28', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 31.00, NULL, 'paid', 'Aspernatur id fugit tempore eum. Voluptatem asperiores enim harum id nostrum tenetur iure. Ipsam sapiente dolorem ut tempore ducimus sed deserunt id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(509, '2021-06-15 14:21:18', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 45.00, NULL, 'paid', 'Aut nulla quo aut velit. Deleniti quia pariatur debitis qui. Repellendus voluptatum quis nam ut. Et tempore quia eligendi quae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 31, NULL, NULL, ''),
(510, '2021-06-15 21:47:47', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 53.00, NULL, 'paid', 'Aperiam ipsa velit mollitia quos. Fugiat aut sequi et alias. Eos sed facere non dolorum. Tempora omnis nam nisi recusandae. Quis et culpa fugit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, ''),
(511, '2021-06-15 16:50:33', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 49.00, NULL, 'paid', 'Molestiae optio optio cupiditate quasi corporis ut. Perspiciatis est aliquam aliquam. Qui atque pariatur quasi rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(512, '2021-06-15 10:48:06', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 56.00, NULL, 'paid', 'Voluptas ratione voluptates sequi et qui et hic. In illum dolor non earum distinctio officia. Itaque minima quidem aspernatur reiciendis ad praesentium et et. Incidunt modi ut quae suscipit et velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 21, NULL, NULL, ''),
(513, '2021-06-15 23:21:24', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 100.00, NULL, 'paid', 'Harum debitis aspernatur animi itaque. Expedita necessitatibus ut enim accusamus. Blanditiis consequatur et et quasi magni nisi ad amet.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(514, '2021-06-15 17:30:09', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 95.00, NULL, 'paid', 'Deserunt omnis ea soluta dolor reiciendis sint eveniet sit. Fuga et ut fugit rerum dicta ad. Et aut ullam omnis quia. Voluptatum placeat placeat omnis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, ''),
(515, '2021-06-16 08:57:14', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 67.00, NULL, 'paid', 'Alias dolore optio magni placeat. Qui ut eaque enim autem aut et quasi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, ''),
(516, '2021-06-15 16:51:06', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 85.00, NULL, 'paid', 'Inventore repudiandae ipsam ipsa explicabo libero id dicta. Qui qui quo magnam saepe. Similique illo voluptates et perferendis et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(517, '2021-06-16 09:10:17', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 41.00, NULL, 'paid', 'Repellat ea omnis assumenda rerum reiciendis. Cumque et omnis saepe. Atque delectus iure perspiciatis quasi culpa qui ipsam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(518, '2021-06-15 18:42:46', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 69.00, NULL, 'paid', 'Aut ut inventore omnis ut et quod nihil eum. Sunt a fugit nostrum maxime qui temporibus. Odit dolores voluptatibus esse maiores minus animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(519, '2021-06-16 04:00:07', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 99.00, NULL, 'paid', 'Qui totam tempora repellat voluptatem enim accusamus. Odit fugit voluptatem deserunt amet. Magnam eos sint aliquid facere rerum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(520, '2021-06-15 17:47:22', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 35.00, NULL, 'paid', 'Voluptatem quibusdam voluptatum est id. Eos consequuntur dolores voluptas similique at deserunt tenetur. Inventore ratione delectus nobis omnis repudiandae fugit et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(521, '2021-06-15 10:17:11', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 47.00, NULL, 'paid', 'Rerum est vel facilis totam repellendus. Iste voluptates ducimus necessitatibus architecto molestiae aspernatur esse. Sed nostrum sit at sapiente sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(522, '2021-06-16 04:06:47', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 59.00, NULL, 'paid', 'Reprehenderit quo aut cumque cum inventore ipsum. Ipsum officiis omnis rerum laboriosam quibusdam. Sunt sed et consectetur qui eaque. Officiis eaque quia natus vero.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 28, NULL, NULL, ''),
(523, '2021-06-16 00:09:11', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 61.00, NULL, 'paid', 'Quae blanditiis sunt accusamus veniam quod laboriosam. Numquam dolorum velit a repudiandae quod dolorum. Exercitationem non dolor perferendis illo ipsum provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 32, NULL, NULL, ''),
(524, '2021-06-15 18:15:28', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 100.00, NULL, 'paid', 'Dolorum quia porro eaque cumque aut consequatur. Laudantium voluptas ea voluptas tenetur ut ratione. Quos suscipit quidem officia itaque. Omnis debitis nemo voluptas eaque totam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(525, '2021-06-15 19:44:32', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 90.00, NULL, 'paid', 'Quos omnis sequi facere aut aut est dolorum. Quisquam adipisci ipsa incidunt. Laboriosam debitis aut officia id.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(526, '2021-06-16 00:23:48', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 65.00, NULL, 'paid', 'Molestias eos nihil itaque similique velit quidem. Molestias accusamus impedit velit asperiores. Molestias magnam aut error omnis autem eum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(527, '2021-06-16 01:12:15', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 92.00, NULL, 'paid', 'Est a architecto adipisci sint iure eveniet. Quidem quia minus accusamus ut dolores quia unde. Perspiciatis nihil in qui sunt. Voluptates iure sequi assumenda enim voluptatibus velit qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(528, '2021-06-15 10:20:02', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 59.00, NULL, 'paid', 'Pariatur atque eaque dolorem nemo ea libero. Voluptatem deleniti et esse quisquam ipsa voluptas blanditiis. Sit asperiores aut aut id. Sunt eveniet id quae et maiores qui deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(529, '2021-06-15 20:19:22', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 67.00, NULL, 'paid', 'Possimus eos enim dolorem adipisci. Commodi sint reprehenderit dolore. Est veniam ea fuga doloremque ut possimus ab. Voluptatum beatae ad esse laudantium nesciunt eius enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 8, NULL, NULL, ''),
(530, '2021-06-15 10:08:28', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 84.00, NULL, 'paid', 'Alias reprehenderit sed ullam ea et ut officiis. Quidem veritatis ipsam voluptas. Dicta aut quo mollitia rerum. Blanditiis qui beatae et ullam consequuntur commodi non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(531, '2021-06-16 03:30:39', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 50.00, NULL, 'paid', 'Quia nemo eaque odit rerum dolorum qui. Qui doloribus ea unde. Veritatis sit soluta cumque dolorem natus veritatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 34, NULL, NULL, ''),
(532, '2021-06-16 07:41:58', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 87.00, NULL, 'paid', 'Natus iusto maxime aliquam modi unde quam. Dolor voluptas culpa et veniam aspernatur aut. Officia porro quaerat quo perspiciatis sit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(533, '2021-06-15 23:12:27', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 64.00, NULL, 'paid', 'Iure enim excepturi laborum. Ullam voluptate aut amet ratione est vero quidem. Cumque veniam quo ex ea. Et minus dignissimos vel cum repellendus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 9, NULL, NULL, ''),
(534, '2021-06-15 19:44:37', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 42.00, NULL, 'paid', 'Non ut voluptatem at dolor. Ipsum sit ducimus vel sed sunt quia quae saepe. Autem tempore amet nemo et sed consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(535, '2021-06-15 23:21:13', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 87.00, NULL, 'paid', 'Similique voluptatum sunt deleniti inventore qui et. Reiciendis occaecati officia in quas id sint placeat. In accusamus earum ut qui vero. Consectetur hic non molestiae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 35, NULL, NULL, ''),
(536, '2021-06-15 16:01:54', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 79.00, NULL, 'paid', 'Labore totam debitis reiciendis est reprehenderit dolor soluta. Dolorum et dolorem officia aut et. Aspernatur minima qui et consequatur deserunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(537, '2021-06-15 17:18:14', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 39.00, NULL, 'paid', 'Molestiae ducimus mollitia delectus et. Rem nemo assumenda quo totam. Eum est provident qui dignissimos. Facere et sed tempore accusamus mollitia assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 36, NULL, NULL, ''),
(538, '2021-06-16 08:17:56', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 51.00, NULL, 'paid', 'Rerum nostrum quidem iste vero tempore molestiae quisquam. Labore ratione maiores quos dicta consequuntur omnis. Sed vel rerum minus inventore animi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(539, '2021-06-15 16:52:46', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 71.00, NULL, 'paid', 'Facilis tempora culpa qui fugit mollitia. Dolores rerum quia vitae ex aspernatur et. Dolore quidem maxime exercitationem quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, ''),
(540, '2021-06-15 09:44:52', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 73.00, NULL, 'paid', 'Dignissimos eligendi aut corrupti porro rem voluptatem eos. Porro quam nihil amet animi ut. Quo velit tempore reiciendis rerum maxime perferendis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(541, '2021-06-16 01:16:33', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 54.00, NULL, 'paid', 'Corporis ut et quod voluptatem. Dolorum aperiam eum ducimus voluptatibus maiores assumenda sequi quia. Dolore et eius eum quia non nam quisquam beatae.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(542, '2021-06-16 04:11:30', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 36.00, NULL, 'paid', 'Quisquam eum eum distinctio vero voluptatem omnis. Et voluptates quam qui. Doloribus fuga tempora fugiat quo. Nisi consequatur eum in illum corporis occaecati.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(543, '2021-06-15 11:00:26', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 37.00, NULL, 'paid', 'Sed ipsa quia blanditiis. Temporibus consectetur reprehenderit aut consequatur occaecati amet. Dolorem est eum voluptatibus. Quibusdam ut omnis nobis qui soluta dignissimos.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 30, NULL, NULL, ''),
(544, '2021-06-15 13:00:31', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 65.00, NULL, 'paid', 'Quia quod quas explicabo repellat. Ex quibusdam qui assumenda est dolorum. Voluptas rerum in autem est voluptates. Dolores et non in adipisci quasi officiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(545, '2021-06-16 08:13:02', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 61.00, NULL, 'paid', 'Quam dolores non illo sint. Aut dolores consectetur est impedit. Accusantium illum magni occaecati consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, ''),
(546, '2021-06-15 16:16:35', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 55.00, NULL, 'paid', 'Molestiae aut odio velit quis corporis earum. Nam provident quae eaque architecto maxime.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(547, '2021-06-15 19:12:30', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 87.00, NULL, 'paid', 'Id est repellendus animi. Rerum voluptas doloremque vel qui. Non aut praesentium impedit dolor nihil consequatur nihil assumenda.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(548, '2021-06-16 08:48:44', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 83.00, NULL, 'paid', 'Dolor rerum reprehenderit fugit fuga id rem necessitatibus aliquam. Esse consequatur quo libero eos cum porro sed. Culpa voluptatem ab veniam assumenda dolorem ad. Tenetur iusto dolor aut facere.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 29, NULL, NULL, ''),
(549, '2021-06-15 17:22:40', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 31.00, NULL, 'paid', 'Iusto aut quae itaque illo nihil aliquam blanditiis. Enim voluptatem quo molestiae qui quibusdam. Recusandae placeat dolor dolores sapiente. Pariatur ipsam enim repellat consequatur harum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 19, NULL, NULL, ''),
(550, '2021-06-15 12:28:01', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 48.00, NULL, 'paid', 'Et saepe eum vel perferendis. Quia tempora ut quasi praesentium reprehenderit. Enim amet nostrum nulla est deleniti ut dolor. Laboriosam at qui exercitationem laudantium dolor ut voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 42, NULL, NULL, ''),
(551, '2021-06-15 20:50:33', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 61.00, NULL, 'paid', 'Alias aut autem ducimus architecto. Sint dolor veritatis qui dolorem vitae modi sequi sit. Sint est expedita laboriosam magni.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(552, '2021-06-16 01:40:36', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 86.00, NULL, 'paid', 'Non architecto omnis sunt dignissimos. Qui porro dolores molestiae delectus asperiores. Distinctio laborum ut maxime suscipit qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 43, NULL, NULL, ''),
(553, '2021-06-16 07:36:33', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 33.00, NULL, 'paid', 'Velit pariatur neque quia modi enim aut et facilis. Sunt maiores et ab enim a. Aut et modi voluptatum facere sed ut. Quis accusamus ex voluptatem consequatur hic veniam consectetur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 22, NULL, NULL, ''),
(554, '2021-06-15 21:44:25', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 68.00, NULL, 'paid', 'Deserunt accusantium beatae illum vel rerum. Recusandae eveniet tenetur atque enim. Ut distinctio quod asperiores enim.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(555, '2021-06-15 18:25:59', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 53.00, NULL, 'paid', 'Nisi quaerat quod est laudantium perferendis. Porro quidem eos magni et aut perspiciatis hic. Qui sunt est soluta maxime dolorem rerum reiciendis. Ex possimus voluptatem culpa qui perspiciatis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(556, '2021-06-15 12:40:58', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 98.00, NULL, 'paid', 'Hic animi error qui inventore vero. Aut est quo doloremque et non. Aliquam sit quidem doloremque debitis beatae eligendi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(557, '2021-06-16 02:22:51', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 89.00, NULL, 'paid', 'Rem officia quos fugiat eligendi voluptatum dolores. At aspernatur nesciunt sapiente eaque voluptate. Et hic non quae vel qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 33, NULL, NULL, ''),
(558, '2021-06-15 18:17:39', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 47.00, NULL, 'paid', 'Ipsum similique dolor laudantium voluptatem ut et ut. Non sunt officiis qui rerum aut sed. Iusto rerum adipisci aliquam. Et suscipit consequuntur doloremque ducimus consequuntur vero placeat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 25, NULL, NULL, ''),
(559, '2021-06-16 06:32:42', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 94.00, NULL, 'paid', 'Saepe exercitationem architecto qui est temporibus accusamus ex. Tempore odio laborum hic quisquam facilis laudantium optio vel. Ut sint placeat doloremque adipisci molestiae consequatur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(560, '2021-06-15 15:49:14', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 55.00, NULL, 'paid', 'Maxime non et odio quo libero aspernatur laborum tempora. Rerum ratione quos blanditiis modi vero reprehenderit dolor. In quos consequuntur amet qui. Qui iure ut blanditiis.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(561, '2021-06-15 20:00:40', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 64.00, NULL, 'paid', 'Reprehenderit eum nulla eum quod blanditiis mollitia. At quam dolore culpa placeat qui nam. Fuga ut odit omnis vel. Libero quidem eum qui ea.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 14, NULL, NULL, ''),
(562, '2021-06-15 21:26:42', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 95.00, NULL, 'paid', 'Est qui sint quis tempora dicta error suscipit. Possimus voluptates quasi esse unde.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, ''),
(563, '2021-06-16 07:22:34', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 76.00, NULL, 'paid', 'Illum fuga similique amet blanditiis iste praesentium. Assumenda et blanditiis cupiditate quas error aperiam consectetur. Repudiandae amet aut vel dolorum nisi minima et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(564, '2021-06-15 23:31:13', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 71.00, NULL, 'paid', 'Explicabo impedit odit sint similique quas ab quam ad. Mollitia commodi ea aut voluptas eligendi. Praesentium consequuntur est amet molestiae alias asperiores vitae. Repellat voluptate saepe sit at.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 40, NULL, NULL, ''),
(565, '2021-06-15 12:35:39', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 82.00, NULL, 'paid', 'Eum consequatur explicabo possimus aut omnis sit. Harum ut ratione odit corporis placeat. Cupiditate qui et esse labore. Eveniet dignissimos culpa sit nihil esse iure dolores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(566, '2021-06-15 23:05:25', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 52.00, NULL, 'paid', 'Sint dolores non voluptatem quia. Ex eaque et aut tenetur natus et. Dolor repudiandae aut quidem. Quia modi sapiente tempora consequatur quo sed.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(567, '2021-06-16 03:31:56', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 76.00, NULL, 'paid', 'Optio soluta neque cumque enim ipsum libero. Omnis officia quam dolor iure. Unde numquam vitae perferendis eaque. Fugiat fuga sunt qui quia est.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(568, '2021-06-15 18:27:20', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 71.00, NULL, 'paid', 'Cupiditate inventore est ratione sed consequuntur non et. Tempora eos est consequatur illum. Totam sint eligendi rem. Expedita harum eos perferendis quo magnam.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(569, '2021-06-15 14:18:42', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 93.00, NULL, 'paid', 'Aut voluptatem expedita beatae occaecati sunt repudiandae ea. Omnis amet dicta perferendis magnam quaerat. Rerum enim magnam fugiat quasi rerum. Temporibus amet dolor aut omnis quo assumenda ex.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 11, NULL, NULL, ''),
(570, '2021-06-16 04:35:02', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 61.00, NULL, 'paid', 'Esse ut a eligendi fugit. Assumenda laudantium sint praesentium. Sit modi reprehenderit aspernatur maxime in qui.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(571, '2021-06-15 11:19:21', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 79.00, NULL, 'paid', 'Ducimus architecto pariatur molestias. Ut corrupti unde doloremque illum eum. Facilis iste eius consequatur nihil sunt. Qui quae beatae vitae et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 3, NULL, NULL, ''),
(572, '2021-06-15 13:47:25', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 64.00, NULL, 'paid', 'Itaque ex nobis nulla commodi est. Ut qui doloremque id asperiores dolor. Provident ad sit sint.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 38, NULL, NULL, ''),
(573, '2021-06-16 03:32:21', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 86.00, NULL, 'paid', 'Enim officiis voluptatibus odio non voluptate. Qui odit ullam est assumenda. Dolorem qui reiciendis doloremque delectus.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(574, '2021-06-15 15:58:07', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 67.00, NULL, 'paid', 'Dignissimos quia et voluptas a sed sint. Sapiente nobis vel qui iusto quidem architecto tempora ea. Quia id eum est dolorum. Ipsum iure voluptate eveniet et id laborum et.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 1, NULL, NULL, ''),
(575, '2021-06-15 11:39:08', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 97.00, NULL, 'paid', 'Dolor sit mollitia beatae maxime quisquam saepe accusantium. Dolor eos et sed repellat unde. Eos sint dolor quasi itaque vel soluta. Saepe veritatis qui aut illum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(576, '2021-06-15 22:09:57', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 37.00, NULL, 'paid', 'Id aliquid alias quae assumenda molestias aut omnis. Esse facilis repellat dolorem vitae necessitatibus. Eum placeat omnis voluptatem et. Tempore eos aperiam aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, ''),
(577, '2021-06-15 13:12:06', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 79.00, NULL, 'paid', 'Iste iusto molestiae dignissimos distinctio omnis ut quisquam cum. Sit qui ipsa dignissimos. Nihil voluptates quo aliquid quia vel et. Laudantium ipsa non asperiores corrupti eius sunt.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 26, NULL, NULL, ''),
(578, '2021-06-15 23:18:27', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 58.00, NULL, 'paid', 'Modi rem et dolores sint omnis et animi. Dolores debitis sed repellendus libero non.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 45, NULL, NULL, ''),
(579, '2021-06-15 11:01:35', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 48.00, NULL, 'paid', 'Non ipsum error ipsum ut consequuntur itaque ut. Enim recusandae quae quae. Sapiente minus non laudantium voluptate deleniti assumenda sit. Quod quia vitae est sint et ut provident.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 4, NULL, NULL, ''),
(580, '2021-06-16 00:09:42', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 74.00, NULL, 'paid', 'Ab commodi est id ad atque rerum quia. Iste impedit fugiat neque reiciendis dolor ut qui. Esse eius doloribus excepturi nihil accusamus voluptate quo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 27, NULL, NULL, ''),
(581, '2021-06-16 00:12:27', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 98.00, NULL, 'paid', 'Quas aut est enim qui accusamus quidem magni. Ut et aperiam quis hic vel.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 17, NULL, NULL, ''),
(582, '2021-06-16 00:39:39', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 77.00, NULL, 'paid', 'Incidunt dolorem eaque qui adipisci. Sint voluptate aut at non amet debitis autem. Ut placeat ipsum officia. Culpa quia et tempora ut illo omnis. Optio aliquam inventore omnis quo autem nemo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 15, NULL, NULL, ''),
(583, '2021-06-15 17:06:30', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 39.00, NULL, 'paid', 'Vel laudantium laudantium omnis occaecati minus. Odit esse commodi voluptatem corrupti dolorem porro. Voluptatem est neque hic dicta exercitationem velit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 12, NULL, NULL, ''),
(584, '2021-06-16 02:36:57', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 36.00, NULL, 'paid', 'Quisquam aut iure quas alias necessitatibus rerum. Beatae similique enim et ut occaecati deleniti et tempora. Voluptatibus voluptatem necessitatibus eveniet fuga iusto occaecati repellat.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(585, '2021-06-16 06:12:55', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 62.00, NULL, 'paid', 'Fugiat odio earum tempore soluta quo consequatur sed. Commodi quia recusandae sed. Et quo illum a nesciunt nisi corporis commodi.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(586, '2021-06-16 00:52:12', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 88.00, NULL, 'paid', 'Fugit veniam sed qui dolore similique quia iure. Vero commodi impedit doloribus facere. Ut commodi beatae doloremque sunt voluptas. Repellendus quam corrupti consequuntur.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 41, NULL, NULL, ''),
(587, '2021-06-15 16:57:48', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 60.00, NULL, 'paid', 'Quia est debitis nostrum ut fuga. Et voluptas officia et ut. Voluptas dolorem delectus consequuntur quidem dolores. Aut neque laborum repellat iste cumque non praesentium.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(588, '2021-06-15 16:34:44', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 85.00, NULL, 'paid', 'Voluptas eum eos ut officiis qui. Laborum perspiciatis laborum dolorem et quia dolorum.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(589, '2021-06-16 01:46:44', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 74.00, NULL, 'paid', 'Hic quasi praesentium est hic nihil possimus. Enim omnis repellendus velit sunt voluptatem nostrum ducimus corrupti. Reiciendis dolorem veritatis labore et. Quisquam aut sapiente est enim et dolore.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 44, NULL, NULL, ''),
(590, '2021-06-16 01:58:00', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 63.00, NULL, 'paid', 'Sunt illum vel nemo qui perspiciatis enim. Consequatur officia ut ipsa asperiores et est. Officiis vel ipsam omnis dolores ipsum earum. Repellendus ipsam velit dicta asperiores.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 5, NULL, NULL, ''),
(591, '2021-06-15 12:40:39', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 94.00, NULL, 'paid', 'Delectus est provident eos qui doloremque neque quis. Qui corrupti atque veritatis et suscipit quaerat. Rem tempora et optio eius ducimus aliquid.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 7, NULL, NULL, ''),
(592, '2021-06-15 15:04:59', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 75.00, NULL, 'paid', 'Impedit blanditiis possimus esse quis. Veritatis error facere vitae veniam. Dolores officia dicta rem unde odit.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 10, NULL, NULL, ''),
(593, '2021-06-16 08:10:55', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 70.00, NULL, 'paid', 'Exercitationem qui non culpa. Id enim aut voluptatibus qui rem minima ex. Laboriosam tempore esse eum dolores ut aut. Quod sed aut omnis mollitia voluptas nobis vero alias.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 37, NULL, NULL, ''),
(594, '2021-06-15 12:20:18', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 35.00, NULL, 'paid', 'Sed et voluptatem adipisci numquam veniam animi. Maiores quis magni aliquam illum est. Consequatur earum et et distinctio quibusdam. Velit sequi nobis autem praesentium fugit omnis corrupti.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 16, NULL, NULL, ''),
(595, '2021-06-15 19:44:50', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 86.00, NULL, 'paid', 'Quibusdam recusandae vel eos voluptas nihil error. Aut odio repellat maiores eos dolore. Sunt in temporibus rerum velit. Consequatur quis ducimus reprehenderit necessitatibus officiis error voluptas.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 23, NULL, NULL, ''),
(596, '2021-06-16 00:05:59', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 88.00, NULL, 'paid', 'Libero eius tempora provident dignissimos eum rerum. Ducimus libero sit id ex. Nemo libero ut maxime harum. Dolor nobis qui quia reprehenderit ut culpa.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(597, '2021-06-15 20:29:28', '2021-06-16 09:39:37', NULL, NULL, 3, NULL, 0.00, 55.00, NULL, 'paid', 'Corrupti non delectus autem. Ipsa vel velit quia minus aut. Ut quia itaque nisi. Ullam et voluptatem aut.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 39, NULL, NULL, ''),
(598, '2021-06-16 03:51:48', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 79.00, NULL, 'paid', 'Dolorum magni voluptatum sed quia. Est sapiente non ratione quo. Soluta officiis iure quo commodi doloribus numquam autem. Recusandae eum omnis eaque eius animi libero nulla.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 2, NULL, NULL, ''),
(599, '2021-06-15 23:27:41', '2021-06-16 09:39:37', NULL, NULL, 2, NULL, 0.00, 67.00, NULL, 'paid', 'Itaque quaerat distinctio cumque tempore pariatur quis. Molestias aperiam ab totam et dignissimos suscipit reiciendis. Omnis mollitia voluptatibus aut tenetur sapiente et explicabo.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 20, NULL, NULL, ''),
(600, '2021-06-16 04:32:49', '2021-06-16 09:39:37', NULL, NULL, 1, NULL, 0.00, 66.00, NULL, 'paid', 'Dicta pariatur non sunt est. Quos nihil eos ut quasi. Sit iure molestiae illum est veniam dolore fugit. Error vel tempore sit vel velit quia.', NULL, NULL, NULL, 0.00, 0, 0.00, 1, '', 0.00, 0.00, NULL, 6, NULL, NULL, ''),
(601, '2021-06-18 09:28:22', '2021-06-18 09:28:22', NULL, NULL, 1, NULL, 0.00, 29.48, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 6.19, 0.00, NULL, 12, NULL, NULL, ''),
(602, '2021-06-18 09:30:55', '2021-06-18 09:32:45', NULL, NULL, 1, NULL, 0.00, 11.49, 'cod', 'paid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.41, 0.00, NULL, 1, NULL, NULL, '');
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `address_id`, `client_id`, `restorant_id`, `driver_id`, `delivery_price`, `order_price`, `payment_method`, `payment_status`, `comment`, `lat`, `lng`, `srtipe_payment_id`, `fee`, `fee_value`, `static_fee`, `delivery_method`, `delivery_pickup_interval`, `vatvalue`, `payment_processor_fee`, `time_to_prepare`, `table_id`, `phone`, `whatsapp_address`, `payment_link`) VALUES
(603, '2021-06-28 10:31:01', '2021-06-28 10:31:01', NULL, 2, 1, NULL, 0.00, 19.98, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 4.20, 0.00, NULL, 2, NULL, NULL, ''),
(604, '2021-06-28 10:33:38', '2021-06-28 10:33:38', NULL, NULL, 1, NULL, 0.00, 9.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.10, 0.00, NULL, 2, NULL, NULL, ''),
(605, '2021-06-28 11:15:21', '2021-06-28 11:15:21', NULL, NULL, 1, NULL, 0.00, 9.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.10, 0.00, NULL, 2, NULL, NULL, ''),
(606, '2021-06-28 11:18:35', '2021-06-28 11:18:35', NULL, NULL, 1, NULL, 0.00, 10.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.31, 0.00, NULL, 1, NULL, NULL, ''),
(607, '2021-06-28 16:59:55', '2021-06-28 16:59:55', NULL, NULL, 1, NULL, 0.00, 9.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.10, 0.00, NULL, 2, NULL, NULL, ''),
(608, '2021-06-29 06:23:02', '2021-06-29 06:23:02', NULL, NULL, 1, NULL, 0.00, 9.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.10, 0.00, NULL, 2, NULL, NULL, ''),
(609, '2021-06-29 08:48:50', '2021-06-29 08:48:50', NULL, NULL, 1, NULL, 0.00, 11.19, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.35, 0.00, NULL, 1, NULL, NULL, ''),
(610, '2021-06-29 09:37:21', '2021-06-29 09:37:21', NULL, NULL, 1, NULL, 0.00, 11.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.52, 0.00, NULL, 15, NULL, NULL, ''),
(611, '2021-06-29 10:57:34', '2021-06-29 10:57:34', NULL, 2, 1, NULL, 0.00, 21.98, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 4.62, 0.00, NULL, 2, NULL, NULL, ''),
(612, '2021-06-29 11:12:10', '2021-06-29 11:12:10', NULL, 2, 1, NULL, 0.00, 10.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.31, 0.00, NULL, 2, NULL, NULL, ''),
(613, '2021-06-29 11:13:29', '2021-06-29 11:13:29', NULL, 2, 1, NULL, 0.00, 9.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.10, 0.00, NULL, 2, NULL, NULL, ''),
(614, '2021-06-29 11:46:18', '2021-06-29 11:46:18', NULL, 2, 1, NULL, 0.00, 9.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.10, 0.00, NULL, 2, NULL, NULL, ''),
(615, '2021-06-29 11:49:26', '2021-06-29 11:49:26', NULL, 2, 1, NULL, 0.00, 10.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.31, 0.00, NULL, 2, NULL, NULL, ''),
(616, '2021-06-29 14:13:50', '2021-06-29 14:13:50', NULL, NULL, 1, NULL, 0.00, 9.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.10, 0.00, NULL, 13, NULL, NULL, ''),
(617, '2021-06-29 14:19:47', '2021-06-29 14:19:47', NULL, 2, 1, NULL, 0.00, 7.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 1.68, 0.00, NULL, 13, NULL, NULL, ''),
(618, '2021-06-29 15:10:24', '2021-06-29 15:10:24', NULL, NULL, 1, NULL, 0.00, 27.48, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 5.77, 0.00, NULL, 2, NULL, NULL, ''),
(619, '2021-06-29 15:14:10', '2021-06-29 15:14:10', NULL, NULL, 1, NULL, 0.00, 23.49, 'cod', 'unpaid', ' Can you please bring me some salt?', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 4.93, 0.00, NULL, 12, NULL, NULL, ''),
(620, '2021-06-29 19:53:29', '2021-06-29 19:53:29', NULL, NULL, 1, NULL, 0.00, 9.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.10, 0.00, NULL, 1, NULL, NULL, ''),
(621, '2021-07-01 09:36:51', '2021-07-13 17:17:14', NULL, NULL, 1, NULL, 0.00, 12.19, 'cod', 'paid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.56, 0.00, NULL, 2, NULL, NULL, ''),
(622, '2021-07-01 09:37:49', '2021-07-13 17:17:10', NULL, NULL, 1, NULL, 0.00, 9.99, 'cod', 'paid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.10, 0.00, NULL, 1, NULL, NULL, ''),
(623, '2021-07-11 14:16:30', '2021-07-11 14:21:30', NULL, 1, 1, NULL, 0.00, 11.49, 'cod', 'paid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.41, 0.00, NULL, 1, NULL, NULL, ''),
(624, '2021-07-13 17:14:02', '2021-07-13 17:16:54', NULL, NULL, 1, NULL, 0.00, 71.97, 'cod', 'paid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 15.12, 0.00, NULL, 2, NULL, NULL, ''),
(625, '2021-07-17 09:17:01', '2021-07-17 09:20:12', NULL, NULL, 55, NULL, 0.00, 25.00, 'cod', 'paid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 243, NULL, NULL, ''),
(626, '2021-07-17 09:19:24', '2021-07-17 09:20:11', NULL, NULL, 55, NULL, 0.00, 60.00, 'cod', 'paid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 0.00, 0.00, NULL, 243, NULL, NULL, ''),
(627, '2021-07-17 17:43:05', '2021-07-17 17:43:05', NULL, NULL, 1, NULL, 0.00, 64.95, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 13.64, 0.00, NULL, 14, NULL, NULL, ''),
(628, '2021-07-18 09:49:35', '2021-07-18 09:49:35', NULL, NULL, 1, NULL, 0.00, 11.99, 'cod', 'unpaid', ' ', NULL, NULL, NULL, 0.00, 0, 0.00, 3, '', 2.52, 0.00, NULL, 1, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_has_items`
--

CREATE TABLE `order_has_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `extras` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vat` double(8,2) DEFAULT '0.00',
  `vatvalue` double(8,2) DEFAULT '0.00',
  `variant_price` double(8,2) DEFAULT NULL,
  `variant_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_items`
--

INSERT INTO `order_has_items` (`id`, `created_at`, `updated_at`, `order_id`, `item_id`, `qty`, `extras`, `vat`, `vatvalue`, `variant_price`, `variant_name`) VALUES
(1, NULL, NULL, 601, 17, 1, '[\"Mushroom + CHF0.50\"]', 21.00, 3.67, 17.49, 'small,double-decker'),
(2, NULL, NULL, 601, 26, 1, '[]', 21.00, 2.52, 11.99, ''),
(3, NULL, NULL, 602, 1, 1, '[\"Extra cheese + CHF1.20\",\"Extra olives + CHF0.30\"]', 21.00, 2.41, 11.49, ''),
(4, NULL, NULL, 603, 1, 1, '[]', 21.00, 2.10, 9.99, ''),
(5, NULL, NULL, 603, 3, 1, '[]', 21.00, 2.10, 9.99, ''),
(6, NULL, NULL, 604, 6, 1, '[]', 21.00, 2.10, 9.99, ''),
(7, NULL, NULL, 605, 1, 1, '[]', 21.00, 2.10, 9.99, ''),
(8, NULL, NULL, 606, 2, 1, '[]', 21.00, 2.31, 10.99, ''),
(9, NULL, NULL, 607, 1, 1, '[]', 21.00, 2.10, 9.99, ''),
(10, NULL, NULL, 608, 1, 1, '[]', 21.00, 2.10, 9.99, ''),
(11, NULL, NULL, 609, 3, 1, '[\"Extra cheese + \\u20ac1.20\"]', 21.00, 2.35, 11.19, ''),
(12, NULL, NULL, 610, 18, 1, '[]', 21.00, 2.52, 11.99, ''),
(13, NULL, NULL, 611, 2, 1, '[]', 21.00, 2.31, 10.99, ''),
(14, NULL, NULL, 611, 2, 1, '[]', 21.00, 2.31, 10.99, ''),
(15, NULL, NULL, 612, 2, 1, '[]', 21.00, 2.31, 10.99, ''),
(16, NULL, NULL, 613, 6, 1, '[]', 21.00, 2.10, 9.99, ''),
(17, NULL, NULL, 614, 1, 1, '[]', 21.00, 2.10, 9.99, ''),
(18, NULL, NULL, 615, 2, 1, '[]', 21.00, 2.31, 10.99, ''),
(19, NULL, NULL, 616, 4, 1, '[]', 21.00, 2.10, 9.99, ''),
(20, NULL, NULL, 617, 5, 1, '[]', 21.00, 1.68, 7.99, ''),
(21, NULL, NULL, 618, 7, 1, '[\"Peperoni + \\u20ac2.00\",\"Olive + \\u20ac1.00\"]', 21.00, 3.15, 14.99, 'small,thin-crust'),
(22, NULL, NULL, 618, 2, 1, '[\"Extra cheese + \\u20ac1.20\",\"Extra olives + \\u20ac0.30\"]', 21.00, 2.62, 12.49, ''),
(23, NULL, NULL, 619, 8, 1, '[\"Olive + \\u20ac1.00\",\"Mushroom + \\u20ac0.50\"]', 21.00, 4.93, 23.49, 'large,thin-crust'),
(24, NULL, NULL, 620, 1, 1, '[]', 21.00, 2.10, 9.99, ''),
(25, NULL, NULL, 621, 2, 1, '[\"Extra cheese + \\u20ac1.20\"]', 21.00, 2.56, 12.19, ''),
(26, NULL, NULL, 622, 1, 1, '[]', 21.00, 2.10, 9.99, ''),
(27, NULL, NULL, 623, 1, 1, '[\"Extra cheese + \\u20ac1.20\",\"Extra olives + \\u20ac0.30\"]', 21.00, 2.41, 11.49, ''),
(28, NULL, NULL, 624, 1, 1, '[]', 21.00, 2.10, 9.99, ''),
(29, NULL, NULL, 624, 9, 1, '[]', 21.00, 3.99, 18.99, 'medium,thin-crust'),
(30, NULL, NULL, 624, 14, 1, '[]', 21.00, 9.03, 42.99, 'medium,hand-tosset'),
(31, NULL, NULL, 625, 345, 1, '[]', NULL, 0.00, 25.00, ''),
(32, NULL, NULL, 626, 346, 6, '[]', NULL, 0.00, 10.00, ''),
(33, NULL, NULL, 627, 1, 5, '[\"Extra cheese + \\u20ac1.20\",\"Extra olives + \\u20ac0.30\",\"Tuna + \\u20ac1.50\"]', 21.00, 13.64, 12.99, ''),
(34, NULL, NULL, 628, 25, 1, '[]', 21.00, 2.52, 11.99, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_has_status`
--

CREATE TABLE `order_has_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_status`
--

INSERT INTO `order_has_status` (`id`, `created_at`, `updated_at`, `order_id`, `status_id`, `user_id`, `comment`) VALUES
(1, '2021-06-17 00:24:27', NULL, 532, 9, 2, ''),
(2, '2021-06-18 09:28:22', NULL, 601, 1, 2, 'Local order'),
(3, '2021-06-18 09:30:55', NULL, 602, 1, 2, 'Local order'),
(4, '2021-06-18 09:32:28', NULL, 602, 3, 2, ''),
(5, '2021-06-18 09:32:35', NULL, 602, 5, 2, ''),
(6, '2021-06-18 09:32:40', NULL, 602, 7, 2, ''),
(7, '2021-06-18 09:32:45', NULL, 602, 11, 2, ''),
(8, '2021-06-18 09:32:50', NULL, 601, 3, 2, ''),
(9, '2021-06-18 09:32:55', NULL, 601, 5, 2, ''),
(10, '2021-06-27 20:16:35', NULL, 601, 7, 2, ''),
(11, '2021-06-28 10:31:01', NULL, 603, 1, 2, 'Local order'),
(12, '2021-06-28 10:33:38', NULL, 604, 1, 2, 'Local order'),
(13, '2021-06-28 11:15:21', NULL, 605, 1, 2, 'Local order'),
(14, '2021-06-28 11:18:35', NULL, 606, 1, 2, 'Local order'),
(15, '2021-06-28 16:59:55', NULL, 607, 1, 2, 'Local order'),
(16, '2021-06-29 06:23:02', NULL, 608, 1, 2, 'Local order'),
(17, '2021-06-29 08:48:50', NULL, 609, 1, 2, 'Local order'),
(18, '2021-06-29 09:37:21', NULL, 610, 1, 2, 'Local order'),
(19, '2021-06-29 09:43:24', NULL, 610, 3, 2, ''),
(20, '2021-06-29 10:57:34', NULL, 611, 1, 2, 'Local order'),
(21, '2021-06-29 11:12:10', NULL, 612, 1, 2, 'Local order'),
(22, '2021-06-29 11:13:29', NULL, 613, 1, 2, 'Local order'),
(23, '2021-06-29 11:46:18', NULL, 614, 1, 2, 'Local order'),
(24, '2021-06-29 11:49:26', NULL, 615, 1, 2, 'Local order'),
(25, '2021-06-29 14:13:50', NULL, 616, 1, 2, 'Local order'),
(26, '2021-06-29 14:19:47', NULL, 617, 1, 2, 'Local order'),
(27, '2021-06-29 15:10:24', NULL, 618, 1, 2, 'Local order'),
(28, '2021-06-29 15:14:10', NULL, 619, 1, 2, 'Local order'),
(29, '2021-06-29 19:53:29', NULL, 620, 1, 2, 'Local order'),
(30, '2021-07-01 09:36:51', NULL, 621, 1, 2, 'Local order'),
(31, '2021-07-01 09:37:49', NULL, 622, 1, 2, 'Local order'),
(32, '2021-07-11 14:16:30', NULL, 623, 1, 2, 'Local order'),
(33, '2021-07-11 14:21:21', NULL, 623, 3, 2, ''),
(34, '2021-07-11 14:21:25', NULL, 623, 5, 2, ''),
(35, '2021-07-11 14:21:27', NULL, 623, 7, 2, ''),
(36, '2021-07-11 14:21:30', NULL, 623, 11, 2, ''),
(37, '2021-07-13 17:14:02', NULL, 624, 1, 2, 'Local order'),
(38, '2021-07-13 17:16:46', NULL, 624, 3, 2, ''),
(39, '2021-07-13 17:16:50', NULL, 624, 5, 2, ''),
(40, '2021-07-13 17:16:52', NULL, 624, 7, 2, ''),
(41, '2021-07-13 17:16:54', NULL, 624, 11, 2, ''),
(42, '2021-07-13 17:16:56', NULL, 622, 3, 2, ''),
(43, '2021-07-13 17:16:59', NULL, 621, 3, 2, ''),
(44, '2021-07-13 17:17:02', NULL, 620, 3, 2, ''),
(45, '2021-07-13 17:17:04', NULL, 622, 5, 2, ''),
(46, '2021-07-13 17:17:06', NULL, 622, 7, 2, ''),
(47, '2021-07-13 17:17:08', NULL, 621, 5, 2, ''),
(48, '2021-07-13 17:17:10', NULL, 622, 11, 2, ''),
(49, '2021-07-13 17:17:12', NULL, 621, 7, 2, ''),
(50, '2021-07-13 17:17:14', NULL, 621, 11, 2, ''),
(51, '2021-07-17 09:17:01', NULL, 625, 1, 41, 'Local order'),
(52, '2021-07-17 09:19:24', NULL, 626, 1, 41, 'Local order'),
(53, '2021-07-17 09:19:44', NULL, 625, 3, 41, ''),
(54, '2021-07-17 09:19:55', NULL, 626, 3, 41, ''),
(55, '2021-07-17 09:19:58', NULL, 626, 5, 41, ''),
(56, '2021-07-17 09:20:05', NULL, 625, 5, 41, ''),
(57, '2021-07-17 09:20:07', NULL, 626, 7, 41, ''),
(58, '2021-07-17 09:20:08', NULL, 625, 7, 41, ''),
(59, '2021-07-17 09:20:11', NULL, 626, 11, 41, ''),
(60, '2021-07-17 09:20:12', NULL, 625, 11, 41, ''),
(61, '2021-07-17 17:43:05', NULL, 627, 1, 2, 'Local order'),
(62, '2021-07-18 09:49:35', NULL, 628, 1, 2, 'Local order');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showAsLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `title`, `content`, `showAsLink`) VALUES
(1, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'Terms and conditions', '<p><strong>foodtiger website Terms of Use</strong><br />\n                            <br />\n                            These Terms of Use govern your use of the foodtiger website and, unless otherwise stated, to your use of any other website or mobile application owned or operated by foodtiger Bulgaria or operated on behalf of foodtiger (collectively the &ldquo;Websites&rdquo;). Please read these Terms of Use carefully before using the Websites.<br />\n                            <br />\n                            <strong>Agreement to Terms</strong><br />\n                            <br />\n                            By using the Websites, you agree to these Terms of Use and the foodtiger General Online Privacy Policy (for visitors who are eighteen years of age or over) or the foodtiger Children&rsquo;s Online Privacy Policy (for visitors who are under eighteen (18) years of age) which are incorporated herein by reference. Each time you use the Websites, you reaffirm your acceptance of the then-current Terms of Use. If you do not wish to be bound by these Terms of Use, your only remedy is to discontinue using the Websites.<br />\n                            <br />\n                            foodtiger may change these Terms of Use at any time and in its sole discretion. The modified Terms of Use will be effective immediately upon posting and you agree to the new posted Terms of Use by continuing your use of the Websites. You are responsible for staying informed of any changes. If you do not agree with the modified Terms of Use, your only remedy is to discontinue using the Websites.<br />\n                            <br />\n                            <strong>Accounts</strong><br />\n                            <br />\n                            You may be required to create an account and specify a password to use certain features on the Websites. You agree to provide, maintain and update true, accurate, current and complete information about yourself as prompted by the registration processes. You may not impersonate any person or entity or misrepresent your identity or affiliation with any person or entity, including using another person&rsquo;s username, password, or other account information.<br />\n                            <br />\n                            You are entirely responsible for maintaining the confidentiality of your password and your account. And you are entirely responsible for all activity made by you or anyone that uses your account. You agree to safeguard your password from access by others. If you believe that your account has been compromised, you must immediately contact us by mail at:&nbsp;support@foodtiger.com or send a message to our live-chat service. You agree to indemnify and hold harmless foodtiger for losses incurred by foodtiger or another party due to someone else using your account as a result of your failure to use reasonable care to safeguard your password.<br />\n                            <br />\n                            <strong>Cancellation</strong><br />\n                            <br />\n                            You have the right to cancel your order up to five minutes after your order is placed on the foodtiger platform. After this point, the restaurant would have started to prepare the food and therefore no refunds would be possible. For the avoidance of doubt, timing will be assessed based on the point you place your call with our call-center, or send a message to our live-chat service. In the event of a cash-on-delivery order, your order will be delivered as instructed and cash must be collected by the rider. In the event that a customer refuses to pay the cash to our rider, foodtiger reserves the right to limit his/her future cash payments.<br />\n                            <br />\n                            <strong>Content Posted by Other Users</strong><br />\n                            <br />\n                            foodtiger is not responsible for, and does not endorse, Content in any posting made by other users on the Websites. Under no circumstances shall foodtiger be held liable, directly or indirectly, for any loss or damage caused or alleged to have been caused to you in connection with any Content posted by a third party on the Websites. If you become aware of misuse of the Websites by any person, please contact foodtiger by mail at:&nbsp;support@foodtiger.com or send a message to our live-chat service.<br />\n                            <br />\n                            If you feel threatened or believe someone else is in danger, you should contact the local law enforcement agency immediately.<br />\n                            <br />\n                            <br />\n                            <strong>Activities Prohibited on the Websites</strong><br />\n                            <br />\n                            The following is a partial list of the kinds of conduct that are illegal or prohibited on the Websites. foodtiger reserves the right to investigate and take appropriate legal action against anyone who, in foodtiger sole discretion, engages in any of the prohibited activities. Prohibited activities include &mdash; but are not limited to &mdash; the following:<br />\n                            <br />\n                            - Using the Websites for any purpose in violation of local, state, or federal laws or regulations;<br />\n                            - Posting Content that infringes the intellectual property rights, privacy rights, publicity rights, trade secret rights, or any other rights of any party;<br />\n                            - Posting Content that is unlawful, obscene, defamatory, threatening, harassing, abusive, slanderous, hateful, or embarrassing to any other person or entity as determined by foodtiger in its sole discretion or pursuant to local community standards;<br />\n                            - Posting Content that constitutes cyber-bullying, as determined by foodtiger in its sole discretion;<br />\n                            - Posting Content that depicts any dangerous, life-threatening, or otherwise risky behavior;<br />\n                            - Posting telephone numbers, street addresses, or last names of any person;<br />\n                            - Posting URLs to external websites or any form of HTML or programming code;<br />\n                            - Posting anything that may be &ldquo;spam,&rdquo; as determined by foodtiger in its sole discretion;<br />\n                            - Impersonating another person when posting Content;<br />\n                            - Harvesting or otherwise collecting information about others, including e-mail addresses, without their consent;<br />\n                            - Allowing any other person or entity to use your identification for posting or viewing comments;<br />\n                            - Harassing, threatening, stalking, or abusing any person;<br />\n                            - Engaging in any other conduct that restricts or inhibits any other person from using or enjoying the Websites, or which, in the sole discretion of foodtiger, exposes foodtiger or any of its customers, suppliers, or any other parties to any liability or detriment of any type; or<br />\n                            - Encouraging other people to engage in any prohibited activities as described herein.<br />\n                            foodtiger reserves the right -- but is not obligated -- to do any or all of the following:<br />\n                            <br />\n                            - Investigate an allegation that any Content posted on the Websites does not conform to these Terms of Use and determine in its sole discretion to remove or request the removal of the Content;<br />\n                            - Remove Content which is abusive, illegal, or disruptive, or that otherwise fails to conform with these Terms of Use;<br />\n                            - Terminate a user&rsquo;s access to the Websites upon any breach of these Terms of Use;<br />\n                            - Monitor, edit, or disclose any Content on the Websites; and<br />\n                            - Edit or delete any Content posted on the Websites, regardless of whether such Content violates these standards.<br />\n                            - foodtiger Trademarks and Copyrights<br />\n                            <br />\n                            All trademarks, logos, and service marks displayed on the Website are registered and unregistered Trademarks of foodtiger and/or third parties who have authorized their use (collectively the &ldquo;Trademarks&rdquo;)<br />\n                            <br />\n                            You may not use, copy, reproduce, republish, upload, post, transmit, distribute, or modify these Trademarks in any way. The use of foodtiger&#39;s trademarks on any other website is strictly prohibited. All of the materials contained on the Websites are copyrighted except where explicitly noted otherwise. foodtiger will aggressively enforce its intellectual property rights to the fullest extent of the law, including the seeking of criminal prosecution. foodtiger neither warrants nor represents that your use of materials displayed on the Websites will not infringe rights of third parties not owned by or affiliated with foodtiger. Use of any materials on the Websites is at your own risk.<br />\n                            <br />\n                            <strong>Hyperlinks</strong><br />\n                            <br />\n                            This Websites may contain hyperlinks to third-party websites. foodtiger does not control or endorse these third-party websites or any goods or services sold on those websites. Some of these websites may contain materials that are objectionable, unlawful, or inaccurate. You acknowledge and agree that foodtiger is not responsible or liable for any Content or other materials on these third party websites.<br />\n                            <br />\n                            <strong>Governing Law and Severability</strong><br />\n                            <br />\n                            These Terms of Use shall be governed by and construed in accordance with the laws of Bulgaria, without regard to its conflict of laws rules. You expressly agree that the exclusive jurisdiction for any claim or dispute under the Terms of Use and or your use of the Websites resides in the courts of Bulgaria, and you further expressly agree to submit to the personal jurisdiction of such courts for the purpose of litigating any such claim or action.<br />\n                            <br />\n                            If any provision of these Terms of Use is found to be invalid by any court having competent jurisdiction, the invalidity of such provision shall not affect the validity of the remaining provisions of these Terms of Use, which shall remain in full force and effect. No waiver of any provision in these Terms of Use shall be deemed a further or continuing waiver of such provision or any other provision.<br />\n                            <br />\n                            <strong>Payment</strong><br />\n                            <br />\n                            Payments are processed by Emerging Markets Online Food Delivery S.&agrave; r.l., a limited liability company (soci&eacute;t&eacute; &agrave; responsabilit&eacute; limit&eacute;e) incorporated and existing under the laws of the Grand Duchy of Luxembourg, which is the ultimate holding of the local company in Bulgaria. Cross-border subrcharges may be applicable.<br />\n                            The end customer can choose between different payment methods provided on the platforms, which are currently the following: [credit card and immediate transfer.] The provider reserves the right to provide other payment methods or to no longer offer certain payment methods. The end customer bindingly chooses the payment method when placing the respective order. Provided that the end customer chooses an online payment method, the payment might be processed by an external payment provider cooperating with the provider. Card data will in this case be stored for future orders by the payment provider, on the condition that the end customer chooses the respective storage of such and hereby gives consent to it. Due to the COVID-19 emergency in the Republic of Bulgaria, all orders paid online will be delivered without physical contact.<br />\n                            <br />\n                            <strong>Warranties</strong><br />\n                            <br />\n                            The Websites and the Content are provided on an &ldquo;as is&rdquo; basis. To the fullest extent permitted by law, foodtiger, its parent, subsidiaries, and affiliates (the foodtiger entities), and each of their agents, representatives and service providers, disclaim all warranties, either expressed or implied, statutory or otherwise, including but not limited to the implied warranties of merchantibility, non-infringement of third parties rights, and fitness for particular purpose. Applicable law may not allow the exclusion of implied warranties, so the above exclusion may not apply to you. The foodtiger Entities, their agents, representatives and service providers cannot and do not guarantee or warrant that: (a) the Websites will be reliable, accurate, complete, or updated on a timely basis; (b) the Websites will be free of human and machine errors, omissions, delays, interruptions or losses, including loss of data; (c) any files available for downloading from the Websites will be free of infection by viruses, worms, Trojan horses, or other codes that manifest contaminating or destructive properties; (d) any Content you post on the Websites will remain on the Websites; or (e) the functions or services performed on the Websites will be uninterrupted or error-free or that defects in the Websites will be corrected.<br />\n                            <br />\n                            <strong>Limitation of Liability</strong><br />\n                            <br />\n                            The foodtiger entities, their agents, representatives, and service providers, entire liability and your exclusive remedy with respect to your use of the websites is to discontinue your use of the websites. The foodtiger entities, their agents, representatives, and service providers shall not be liable for any indirect, special, incidental, consequential, or exemplary damages arising from your use of the websites or for any other claim related in any way to your use of the websites. These exclusions for indirect, special, consequential, and exemplary damages include, without limitation, damages for lost profits, lost data, loss of goodwill, work stoppage, work stoppage, computer failure, or malfunction, or any other commercial damages or losses, even if the foodtiger entities, their agents, representatives, and service providers have been advised of the possibility thereof and regardless of the legal or equitable theory upon which the claim is based. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, the foodtiger entities, their agents, representatives and service providers&#39; liability shall be limited to the extent permitted by law.<br />\n                            <br />\n                            <strong>Termination</strong><br />\n                            <br />\n                            foodtiger has the right to terminate your account and access to the Websites for any reason, including, without limitation, if foodtiger, in its sole discretion, considers your use to be unacceptable, or in the event of any breach by you of the Terms of Use. foodtiger may, but shall be under no obligation to, provide you a warning prior to termination of your use of the Websites.<br />\n                            <br />\n                            <strong>Vouchers</strong><br />\n                            <br />\n                            Unless otherwise stated,<br />\n                            <br />\n                            - Vouchers are only applicable to food orders, excluding delivery fees and containers<br />\n                            - Valid only for online payment<br />\n                            - foodtiger reserves the right to cancel orders and accounts if fraud activities are detected<br />\n                            - foodtiger reserves the right to stop this voucher to be used on certain restaurants without prior notice<br />\n                            - Individual restaurants terms &amp; conditions apply<br />\n                            <br />\n                            <strong>Contact Us</strong><br />\n                            <br />\n                            Questions? Comments? Please send an email to us at&nbsp;contact@foodtiger.com<br />\n                            <br />\n                            &copy; 2020 foodtiger. All rights reserved.</p>', 1),
(2, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 'How it works', '<p>foodtiger is simple and easy way to order food online. Enjoy the variety of choices and cuisines which could be delivered to your home or office.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Here is how foodtiger works:</strong><br />\n                        &nbsp;</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Find a restaurant:</strong></p>\n\n                        <p>Enter you address or choose from the map on the front page to set your location. Take a review on the restaurants which deliver to your address. Choose a restaurant and dive in its tasty menu.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Choose a dish:</strong></p>\n\n                        <p>Choose from the displayed dishes. If there is an option to add products or sauce, for pizza for example, you will be asked for your choice right after you click on the dish. Your order will be dispayed on the right side of the page.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Finish your order and choose type of payment:</strong></p>\n\n                        <p>When you complete the order with delicious food, click &quot;Buy&quot;. Now you only have to write your address and choose type of payment as you follow the instructions on the page.</p>\n\n                        <p>&nbsp;</p>\n\n                        <p><strong>Delivery:</strong></p>\n\n                        <p>You will receive SMS as confirmation for your order and information about the delivery time and.....</p>\n\n                        <p>That&#39;s all!</p>\n\n                        <p>&nbsp;</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paths`
--

CREATE TABLE `paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage restorants', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30'),
(2, 'manage drivers', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30'),
(3, 'manage orders', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30'),
(4, 'edit settings', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30'),
(5, 'view orders', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30'),
(6, 'edit restorant', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30'),
(7, 'edit orders', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30'),
(8, 'access backedn', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit_items` int(11) NOT NULL DEFAULT '0' COMMENT '0 is unlimited',
  `limit_orders` int(11) NOT NULL DEFAULT '0' COMMENT '0 is unlimited',
  `price` double(8,2) NOT NULL,
  `trial_days` int(11) NOT NULL,
  `period` int(11) NOT NULL DEFAULT '1' COMMENT '1 - monthly, 2-anually',
  `paddle_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `features` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `limit_views` int(11) NOT NULL DEFAULT '0' COMMENT '0 is unlimited',
  `enable_ordering` int(11) NOT NULL DEFAULT '1',
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `limit_items`, `limit_orders`, `price`, `trial_days`, `period`, `paddle_id`, `created_at`, `updated_at`, `deleted_at`, `description`, `features`, `limit_views`, `enable_ordering`, `stripe_id`, `paypal_id`, `mollie_id`, `paystack_id`) VALUES
(1, 'Free', 20, 0, 0.00, 999, 1, '', '2021-06-16 09:39:36', '2021-07-01 21:11:15', NULL, 'If you run a small restaurant or bar, or just need the basics, this plan is great.', 'Full access to QR tool, Access to the menu creation tool, Unlimited views, 20 items in the menu, Community support', 0, 2, 'price_1J0ZCJIM5rmqm6fhszT02lB6', NULL, NULL, NULL),
(2, 'Starter', 0, 0, 9.00, 0, 1, '', '2021-06-16 09:39:36', '2021-06-17 14:17:28', '2021-06-17 14:17:28', 'For bigger restaurants and bars. Offer a full menu. Limitless plan', 'Full access to QR tool, Access to the menu creation tool, Unlimited views, Unlimited items in the menu, Dedicated Support', 0, 2, '', NULL, NULL, NULL),
(3, 'Propack', 0, 0, 49.00, 14, 1, '', '2021-06-16 09:39:36', '2021-07-01 21:10:29', NULL, 'Accept orders direclty from your customer mobile phone', 'Accept Orders, Manage order, Full access to QR tool, Access to the menu creation tool, Unlimited views, Unlimited items in the menu, Dedicated Support', 0, 1, 'price_1J0ZElIM5rmqm6fh7pKhpzhW', NULL, NULL, NULL),
(4, 'test', 123, 0, 123.00, 22, 1, '', '2021-06-17 14:41:17', '2021-06-18 15:16:47', '2021-06-18 15:16:47', 'test', 'asd', 0, 1, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restoareas`
--

CREATE TABLE `restoareas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restoareas`
--

INSERT INTO `restoareas` (`id`, `name`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inside', 1, NULL, NULL, NULL),
(2, 'Terrasse', 1, NULL, NULL, NULL),
(3, 'Inside', 2, NULL, NULL, NULL),
(4, 'Terrasse', 2, NULL, NULL, NULL),
(5, 'Inside', 3, NULL, NULL, NULL),
(6, 'Terrasse', 3, NULL, NULL, NULL),
(7, 'Inside', 4, NULL, NULL, NULL),
(8, 'Terrasse', 4, NULL, NULL, NULL),
(9, 'Inside', 5, NULL, NULL, NULL),
(10, 'Terrasse', 5, NULL, NULL, NULL),
(11, 'Inside', 6, NULL, NULL, NULL),
(12, 'Terrasse', 6, NULL, NULL, NULL),
(13, 'Inside', 7, NULL, NULL, NULL),
(14, 'Terrasse', 7, NULL, NULL, NULL),
(15, 'Inside', 8, NULL, NULL, NULL),
(16, 'Terrasse', 8, NULL, NULL, NULL),
(17, 'Inside', 9, NULL, NULL, NULL),
(18, 'Terrasse', 9, NULL, NULL, NULL),
(19, 'Inside', 10, NULL, NULL, NULL),
(20, 'Terrasse', 10, NULL, NULL, NULL),
(21, 'Inside', 11, NULL, NULL, NULL),
(22, 'Terrasse', 11, NULL, NULL, NULL),
(23, 'Inside', 12, NULL, NULL, NULL),
(24, 'Terrasse', 12, NULL, NULL, NULL),
(25, 'Inside', 13, NULL, NULL, NULL),
(26, 'Terrasse', 13, NULL, NULL, NULL),
(27, 'Inside', 14, NULL, NULL, NULL),
(28, 'Terrasse', 14, NULL, NULL, NULL),
(29, 'Inside', 15, NULL, NULL, NULL),
(30, 'Terrasse', 15, NULL, NULL, NULL),
(31, 'Inside', 16, NULL, NULL, NULL),
(32, 'Terrasse', 16, NULL, NULL, NULL),
(33, 'Room', 1, '2021-07-13 17:15:25', '2021-07-13 17:15:25', NULL),
(35, 'Inside', 55, '2021-07-17 09:16:07', '2021-07-17 09:16:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restorants`
--

CREATE TABLE `restorants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdomain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fee` double(8,2) NOT NULL DEFAULT '0.00',
  `static_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `radius` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `city_id` int(11) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `user_register` int(11) NOT NULL DEFAULT '1',
  `whatsapp_only` int(11) NOT NULL DEFAULT '0',
  `can_pickup` int(11) NOT NULL DEFAULT '1',
  `can_deliver` int(11) NOT NULL DEFAULT '1',
  `self_deliver` int(11) NOT NULL DEFAULT '0',
  `free_deliver` int(11) NOT NULL DEFAULT '0',
  `whatsapp_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_covertion` int(11) NOT NULL DEFAULT '1',
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_payment_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restorants`
--

INSERT INTO `restorants` (`id`, `created_at`, `updated_at`, `name`, `subdomain`, `logo`, `cover`, `active`, `user_id`, `lat`, `lng`, `address`, `phone`, `minimum`, `description`, `fee`, `static_fee`, `radius`, `is_featured`, `city_id`, `views`, `user_register`, `whatsapp_only`, `can_pickup`, `can_deliver`, `self_deliver`, `free_deliver`, `whatsapp_phone`, `fb_username`, `do_covertion`, `currency`, `payment_info`, `mollie_payment_key`) VALUES
(1, '2021-06-16 09:39:30', '2021-07-18 10:36:48', 'Leuka Pizza', 'leuka-pizza', 'f323ae90-b289-4572-8cf7-9b1c2a6995b8', 'b16fa698-07cd-43df-ba93-c711af1c839e', 1, 2, '40.654509', '-73.948990', '6 Yukon Drive Raeford, NC 28376', '+41762055215', '0', 'italian, pasta, pizza', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 562, 0, 1, 0, 0, 0, 0, '+41762055215', NULL, 1, 'EUR', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(2, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 'Oasis Burgers', 'oasisburgers', 'https://foodtiger.mobidonia.com/uploads/restorants/c8d27bcc-54da-4c18-b8e6-f1414c71612c', '', 1, 2, '40.588894', '-73.939175', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(3, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 'Brooklyn Taco', 'brooklyntaco', 'https://foodtiger.mobidonia.com/uploads/restorants/3e571ad8-e161-4245-91d9-88b47d6d6770', '', 1, 2, '40.607402', '-73.987272', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(4, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 'The Brooklyn tree', 'thebrooklyntree', 'https://foodtiger.mobidonia.com/uploads/restorants/6fa5233f-00f3-4f52-950c-5a1705583dfc', '', 1, 2, '40.621997', '-73.938831', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.61811135844185, \"lng\": -74.04154967363282}, {\"lat\": 40.593088644275994, \"lng\": -74.00447081621094}, {\"lat\": 40.57483700944677, \"lng\": -74.01271056230469}, {\"lat\": 40.57222922648421, \"lng\": -73.94816588457032}, {\"lat\": 40.58318123192112, \"lng\": -73.87812804277344}, {\"lat\": 40.620196161732025, \"lng\": -73.89117430742188}, {\"lat\": 40.64520872605633, \"lng\": -73.85340880449219}, {\"lat\": 40.71862893820799, \"lng\": -73.96327208574219}, {\"lat\": 40.680627151592745, \"lng\": -74.01957701738282}, {\"lat\": 40.66552453494284, \"lng\": -74.00447081621094}]', 0, 2, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(5, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 'Awang Italian Restorant', 'awangitalianrestorant', 'https://foodtiger.mobidonia.com/uploads/restorants/4a2067cb-f39c-4b26-83ef-9097512d3328', '', 1, 2, '40.716729', '-73.793035', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, pasta, pizza', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(6, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 'Wendy Taco', 'wendytaco', 'https://foodtiger.mobidonia.com/uploads/restorants/6f9e8892-4a28-4c99-ab24-57179a1424b9', '', 1, 2, '40.751418', '-73.809531', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'yummy taco, wraps, fast food', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(7, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 'Burger 2Go', 'burger2go', 'https://foodtiger.mobidonia.com/uploads/restorants/80a49037-07e9-4e28-b23e-66fd641c1c77', '', 1, 2, '40.753759', '-73.799224', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'burgers, drinks, best chicken', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(8, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 'Titan Foods', 'titanfoods', 'https://foodtiger.mobidonia.com/uploads/restorants/56e90ea7-5321-4cfd-8b2c-918ccd3c3f77', '', 1, 2, '40.749078', '-73.812623', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.72538611607021, \"lng\": -73.96387365315225}, {\"lat\": 40.65093145404635, \"lng\": -73.85195043537881}, {\"lat\": 40.62175171970407, \"lng\": -73.76680639241006}, {\"lat\": 40.64051158441822, \"lng\": -73.71462133381631}, {\"lat\": 40.670724724281335, \"lng\": -73.67891576741006}, {\"lat\": 40.76388243617103, \"lng\": -73.74758031819131}, {\"lat\": 40.79351981360113, \"lng\": -73.84851720783975}, {\"lat\": 40.78728146460242, \"lng\": -73.91100194905069}]', 0, 3, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(9, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 'Pizza Manhattn', 'pizzamanhattn', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 1, 2, '40.726358', '-73.996879', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(10, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 'il Buco', 'ilbuco', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 1, 2, '40.724883', '-74.001985', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(11, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 'Vandal Burgers', 'vandalburgers', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 1, 2, '40.724102', '-73.999064', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(12, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 'Malibu Diner', 'malibudiner', 'https://foodtiger.mobidonia.com/uploads/restorants/a2b5b612-9fec-4e28-bb7d-88a06d97bda6', '', 1, 2, '40.717857', '-74.004561', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.70279189834177, \"lng\": -74.01818193403926}, {\"lat\": 40.711640621663136, \"lng\": -73.97972978560176}, {\"lat\": 40.798503799354734, \"lng\": -73.91381181685176}, {\"lat\": 40.83487975446948, \"lng\": -73.94745744673457}, {\"lat\": 40.750665070026194, \"lng\": -74.01200212446895}]', 0, 4, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(13, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 'Pizza Relham', 'pizzarelham', 'https://foodtiger.mobidonia.com/uploads/restorants/0102bebe-b6c4-46b0-9195-ee06bca71a37', '', 1, 2, '40.842930', '-73.866629', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'italian, international, pasta', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 0, 0, 1, 1, 0, 0, '+38971605048', NULL, 1, '', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(14, '2021-06-16 09:39:35', '2021-06-16 11:54:35', 'NorWood Burito', 'norwood-burito', 'https://foodtiger.mobidonia.com/uploads/restorants/4384df9b-9656-49d1-bfc1-9b5e85e1193a', '', 1, 2, '40.850218', '-73.887522', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'tacos, wraps, Quesadilla', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 0, 0, 0, 0, 0, 0, '+38971605048', NULL, 1, 'EUR', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(15, '2021-06-16 09:39:35', '2021-06-16 10:17:18', 'Morris Park Burger', 'morris-park-burger', 'https://foodtiger.mobidonia.com/uploads/restorants/5757558a-94d7-4ba9-b39c-2e258701f051', '', 1, 2, '40.842427', '-73.866908', '6 Yukon Drive Raeford, NC 28376', '(530) 625-9694', '10', 'drinks, beef burgers', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 0, 0, 0, 0, 0, 0, 0, '+38971605048', NULL, 1, 'EUR', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(16, '2021-06-16 09:39:35', '2021-06-28 18:47:16', 'Nedim Dauti', 'nedim-dauti', 'a986e75e-e568-4ce4-b9a9-ec1fe4666798', 'c8662970-13c5-407b-bffe-7e44bb2d7fe0', 1, 2, '40.832557', '-73.889583', 'chemin d\'arche', '+41762055215', '10', 'drinks, lunch, bbq', 0.00, 0.00, '[{\"lat\": 40.79717207195068, \"lng\": -73.91185629950473}, {\"lat\": 40.83822431229653, \"lng\": -73.94893515692661}, {\"lat\": 40.90572332325597, \"lng\": -73.9097963629813}, {\"lat\": 40.89793848793209, \"lng\": -73.83426535712192}, {\"lat\": 40.886519072020896, \"lng\": -73.78139365302036}, {\"lat\": 40.81900047658591, \"lng\": -73.79169333563755}]', 0, 1, 134, 0, 0, 0, 0, 0, 0, '+41762055215', NULL, 1, 'EUR', 'We accept Cash On Deliver and direct payments. DEMO PAYMENT', 'test_W7vgVS4bUTVarzBm39wjUk7SRV3Aek'),
(52, '2021-07-01 21:13:11', '2021-07-01 21:13:11', 'Bosna', 'bosna', '', '', 1, 38, '0', '0', '', '0762055215', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', ''),
(53, '2021-07-01 23:57:50', '2021-07-01 23:57:50', 'Blerim\'s SteakHouse', 'blerims-steakhouse', '', '', 1, 39, '0', '0', '', '0225480078', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', ''),
(54, '2021-07-17 09:06:22', '2021-07-17 09:06:22', 'Double Trees by Hilton', 'double-trees-by-hilton', '', '', 1, 40, '0', '0', '', '+41762055215', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', ''),
(55, '2021-07-17 09:08:02', '2021-07-17 13:43:56', 'Doubles Trees Hilton', 'doubles-trees-hilton', '949f2868-d536-446b-8698-5830cb958416', 'f526d64e-c375-4ee2-bf9d-9d65debf6fa5', 1, 41, '39.84504666756537', '32.81538763779297', 'Caferağa, Albay Faik Sözdener Cd. No.31, 34710 Kadıköy/İstanbul', '0762055215', '0', 'Restaurant hotel', 0.00, 0.00, '{}', 0, NULL, 8, 0, 0, 0, 0, 0, 0, '0762055215', NULL, 1, 'TRY', '', ''),
(56, '2021-07-17 21:36:32', '2021-07-17 21:36:32', 'Alyssa Parsons', 'alyssa-parsons', '', '', 1, 42, '0', '0', '', '+1 (732) 718-8318', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', ''),
(57, '2021-07-17 22:30:05', '2021-07-17 22:30:05', 'Resta', 'resta', '', '', 1, 43, '0', '0', '', '0948384834888', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', ''),
(58, '2021-07-18 09:47:24', '2021-07-18 09:47:24', 'dekts', 'dekts', '', '', 1, 44, '0', '0', '', '+91 8320354276', '0', '', 0.00, 0.00, '{}', 0, NULL, 0, 1, 0, 1, 1, 0, 0, NULL, NULL, 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30'),
(2, 'owner', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30'),
(3, 'driver', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30'),
(4, 'client', 'web', '2021-06-16 09:39:30', '2021-06-16 09:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(8, 1),
(5, 2),
(6, 2),
(8, 2),
(7, 3),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restorant_details_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `restorant_details_cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `playstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `appstore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `maps_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `delivery` double(8,2) NOT NULL DEFAULT '0.00',
  `typeform` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_info_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_options` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `site_logo_dark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_fields` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `created_at`, `updated_at`, `site_name`, `site_logo`, `search`, `restorant_details_image`, `restorant_details_cover_image`, `description`, `header_title`, `header_subtitle`, `currency`, `facebook`, `instagram`, `playstore`, `appstore`, `maps_api_key`, `delivery`, `typeform`, `mobile_info_title`, `mobile_info_subtitle`, `order_options`, `site_logo_dark`, `order_fields`) VALUES
(1, '2021-06-16 09:39:30', '2021-07-01 21:17:34', 'Le Repass', '1b05dfbb-d390-4584-995a-a589fcff609a', '/default/cover.jpg', '64812685-f4a1-43b8-bc56-c5130e50df27', '0ef773e3-45d8-4a3f-b137-859b6c091c5e', 'A contactless Menu for your Restaurant', '', '', 'USD', '', '', '', '', 'AIzaSyCZhq0g1x1ttXPa1QB3ylcDQPTAzp_KUgA', 0.00, '', '', '', '{}', '782792ff-d74d-4de6-84ed-bb4064c8fee6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_verifications`
--

CREATE TABLE `sms_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `alias`) VALUES
(1, 'Just created', 'just_created'),
(2, 'Accepted by admin', 'accepted_by_admin'),
(3, 'Accepted by restaurant', 'accepted_by_restaurant'),
(4, 'Assigned to driver', 'assigned_to_driver'),
(5, 'Prepared', 'prepared'),
(6, 'Picked up', 'picked_up'),
(7, 'Delivered', 'delivered'),
(8, 'Rejected by admin', 'rejected_by_admin'),
(9, 'Rejected by restaurant', 'rejected_by_restaurant'),
(10, 'Updated', 'updated'),
(11, 'Closed', 'closed'),
(12, 'Rejected by driver', 'rejected_by_driver'),
(13, 'Accepted by driver', 'accepted_by_driver');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `credit_card`, `card_exp_date`, `card_token`, `stripe_id`, `stripe_status`, `stripe_plan`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(24, 2, 'main', NULL, NULL, NULL, 'sub_JipzWHOG2Ipq9d', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-23 07:07:53', '2021-06-23 07:07:39', '2021-06-23 07:07:53'),
(25, 23, 'main', NULL, NULL, NULL, 'sub_Jj1sSpEv40mpZV', 'trialing', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-21 19:24:28', NULL, '2021-06-23 19:24:44', '2021-06-23 19:24:44'),
(26, 24, 'main', NULL, NULL, NULL, 'sub_Jj203dLPRV8Y0Y', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-21 19:32:41', '2021-06-24 04:34:39', '2021-06-23 19:33:04', '2021-06-24 04:34:39'),
(27, 24, 'main', NULL, NULL, NULL, 'sub_JjBC9u8UiMKa0Q', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-21 19:32:41', '2021-06-24 05:06:46', '2021-06-24 05:03:12', '2021-06-24 05:06:46'),
(28, 24, 'main', NULL, NULL, NULL, 'sub_JjBQdlk9dRVZCy', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 05:16:58', '2021-06-24 05:16:46', '2021-06-24 05:16:58'),
(29, 24, 'main', NULL, NULL, NULL, 'sub_JjDKRpm0n5rMKA', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 07:15:26', '2021-06-24 07:15:20', '2021-06-24 07:15:26'),
(30, 24, 'main', NULL, NULL, NULL, 'sub_JjEdpfllYmFmFR', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 08:37:42', '2021-06-24 08:35:39', '2021-06-24 08:37:42'),
(31, 24, 'main', NULL, NULL, NULL, 'sub_JjEitW4mtb5Pwz', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 08:40:40', '2021-06-24 08:40:28', '2021-06-24 08:40:40'),
(32, 24, 'main', NULL, NULL, NULL, 'sub_JjI2vkk9KMZkWL', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 12:07:14', '2021-06-24 12:07:08', '2021-06-24 12:07:14'),
(33, 24, 'main', NULL, NULL, NULL, 'sub_JjI3flaW8hObNL', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 12:09:40', '2021-06-24 12:08:10', '2021-06-24 12:09:40'),
(34, 24, 'main', NULL, NULL, NULL, 'sub_JjI53y9Eg8NHzI', 'active', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, NULL, '2021-06-24 12:09:54', '2021-06-24 12:09:54'),
(35, 2, 'main', NULL, NULL, NULL, 'sub_JjI7F24RNuKdpI', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 12:13:12', '2021-06-24 12:11:38', '2021-06-24 12:13:12'),
(36, 2, 'main', NULL, NULL, NULL, 'sub_JjI9C16exu0m6t', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 12:17:06', '2021-06-24 12:13:28', '2021-06-24 12:17:06'),
(37, 2, 'main', NULL, NULL, NULL, 'sub_JjIDg423wrRaXo', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 12:19:01', '2021-06-24 12:17:23', '2021-06-24 12:19:01'),
(38, 2, 'main', NULL, NULL, NULL, 'sub_JjIF0qyVD1rt6M', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 12:21:01', '2021-06-24 12:19:46', '2021-06-24 12:21:01'),
(39, 2, 'main', NULL, NULL, NULL, 'sub_JjIH5NpQ03w4WR', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 14:32:22', '2021-06-24 12:22:05', '2021-06-24 14:32:22'),
(40, 26, 'main', NULL, NULL, NULL, 'sub_JjIKcTu67Ux4E9', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 12:25:18', '2021-06-24 12:24:57', '2021-06-24 12:25:18'),
(41, 26, 'main', NULL, NULL, NULL, 'sub_JjKDLCOQwWNeb8', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 14:22:46', '2021-06-24 14:21:36', '2021-06-24 14:22:46'),
(42, 27, 'main', NULL, NULL, NULL, 'sub_JjKG5CN44kFPMQ', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 14:27:07', '2021-06-24 14:25:02', '2021-06-24 14:27:07'),
(43, 27, 'main', NULL, NULL, NULL, 'sub_JjKMKVVFnP9pnP', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 14:41:56', '2021-06-24 14:31:02', '2021-06-24 14:41:56'),
(44, 2, 'main', NULL, NULL, NULL, 'sub_JjKOJ8EtGTATxF', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-24 14:33:42', '2021-06-24 14:32:36', '2021-06-24 14:33:42'),
(45, 27, 'main', NULL, NULL, NULL, 'sub_JjZRg8oomS7aZp', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-25 06:06:15', '2021-06-25 06:06:04', '2021-06-25 06:06:15'),
(46, 27, 'main', NULL, NULL, NULL, 'sub_JjZW8Tbn1ByPO0', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, '2021-06-25 06:11:13', '2021-06-25 06:11:07', '2021-06-25 06:11:13'),
(47, 36, 'main', NULL, NULL, NULL, 'sub_JjacERo1ojhuxk', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-07-02 07:18:46', '2021-06-25 11:16:19', '2021-06-25 07:19:06', '2021-06-25 11:16:19'),
(48, 31, 'main', NULL, NULL, NULL, 'sub_JjafB4rdI4qF8W', 'active', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, NULL, '2021-06-25 07:21:24', '2021-06-25 07:21:24'),
(49, 32, 'main', NULL, NULL, NULL, 'sub_JjahIEmOJ3BNOS', 'active', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, NULL, '2021-06-25 07:23:24', '2021-06-25 07:23:24'),
(50, 37, 'main', NULL, NULL, NULL, 'sub_JjcPh0zelpQ98D', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-07-02 09:06:45', '2021-06-25 14:01:46', '2021-06-25 09:09:41', '2021-06-25 14:01:46'),
(51, 36, 'main', NULL, NULL, NULL, 'sub_Jjeyfl4HaU2v2L', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-07-02 07:18:46', '2021-06-25 11:53:01', '2021-06-25 11:48:42', '2021-06-25 11:53:01'),
(52, 36, 'main', NULL, NULL, NULL, 'sub_Jjf2RAmxK4jrtt', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-07-02 07:18:46', '2021-06-25 11:53:58', '2021-06-25 11:53:16', '2021-06-25 11:53:58'),
(53, 36, 'main', NULL, NULL, NULL, 'sub_Jjf3JSunJTLux9', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-07-02 07:18:46', '2021-06-25 11:54:22', '2021-06-25 11:54:16', '2021-06-25 11:54:22'),
(54, 36, 'main', NULL, NULL, NULL, 'sub_Jjf4jD6KGleXOs', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-07-02 07:18:46', '2021-06-25 14:21:41', '2021-06-25 11:54:33', '2021-06-25 14:21:41'),
(55, 37, 'main', NULL, NULL, NULL, 'sub_Jjh75IhVy1Y0oT', 'canceled', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-07-02 09:06:45', '2021-06-25 14:03:32', '2021-06-25 14:02:10', '2021-06-25 14:03:32'),
(56, 37, 'main', NULL, NULL, NULL, 'sub_JjhAWnrVhlYazU', 'trialing', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-07-02 09:06:45', NULL, '2021-06-25 14:04:37', '2021-06-25 14:04:37'),
(57, 36, 'main', NULL, NULL, NULL, 'sub_Jji4ESZQ5MdGDI', 'trialing', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-07-02 07:18:46', NULL, '2021-06-25 15:01:18', '2021-06-25 15:01:18'),
(58, 2, 'main', NULL, NULL, NULL, 'sub_JkXlbDlaP1rWu5', 'active', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, NULL, NULL, '2021-06-27 20:26:12', '2021-06-27 20:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_items`
--

INSERT INTO `subscription_items` (`id`, `subscription_id`, `stripe_id`, `stripe_plan`, `quantity`, `created_at`, `updated_at`) VALUES
(20, 20, 'si_Jif0Q3HlNcKIfd', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-22 19:46:34', '2021-06-22 19:46:34'),
(21, 21, 'si_Jif2curYGYbmWC', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-22 19:49:05', '2021-06-22 19:49:05'),
(22, 22, 'si_JioHmWECfcff9c', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-23 05:22:02', '2021-06-23 05:22:02'),
(23, 23, 'si_JipsUgREoZRkbW', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-23 07:00:52', '2021-06-23 07:00:52'),
(24, 24, 'si_Jipzs0lcoMVUm5', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-23 07:07:39', '2021-06-23 07:07:39'),
(25, 25, 'si_Jj1s8Twl1NthFn', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-23 19:24:44', '2021-06-23 19:24:44'),
(26, 26, 'si_Jj20MYu4NiXU8V', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-23 19:33:04', '2021-06-23 19:33:04'),
(27, 27, 'si_JjBCB0b0Em1XmL', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 05:03:12', '2021-06-24 05:03:12'),
(28, 28, 'si_JjBQt3ZS6DtInI', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 05:16:46', '2021-06-24 05:16:46'),
(29, 29, 'si_JjDKdkXZwwPyex', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 07:15:20', '2021-06-24 07:15:20'),
(30, 30, 'si_JjEd5go6yefqb9', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 08:35:39', '2021-06-24 08:35:39'),
(31, 31, 'si_JjEi0G3bM9i4iZ', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 08:40:28', '2021-06-24 08:40:28'),
(32, 32, 'si_JjI24VIZo4A2Dd', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 12:07:08', '2021-06-24 12:07:08'),
(33, 33, 'si_JjI3qoz9H0a7kR', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 12:08:10', '2021-06-24 12:08:10'),
(34, 34, 'si_JjI5str3nZq2Fe', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 12:09:54', '2021-06-24 12:09:54'),
(35, 35, 'si_JjI7s1XXl1jmG8', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 12:11:38', '2021-06-24 12:11:38'),
(36, 36, 'si_JjI9vbRgC9bAmX', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 12:13:28', '2021-06-24 12:13:28'),
(37, 37, 'si_JjIDTjF0Qj3lEs', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 12:17:23', '2021-06-24 12:17:23'),
(38, 38, 'si_JjIFxMogz7sCkq', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 12:19:46', '2021-06-24 12:19:46'),
(39, 39, 'si_JjIHt1yFibnqYP', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 12:22:05', '2021-06-24 12:22:05'),
(40, 40, 'si_JjIKMQ68WOzPxt', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 12:24:57', '2021-06-24 12:24:57'),
(41, 41, 'si_JjKDdHjsj2zmWw', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 14:21:36', '2021-06-24 14:21:36'),
(42, 42, 'si_JjKGtxJ9xrDpmZ', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 14:25:02', '2021-06-24 14:25:02'),
(43, 43, 'si_JjKMHEGGO2Zk2P', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 14:31:02', '2021-06-24 14:31:02'),
(44, 44, 'si_JjKOItR5cY3Btr', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-24 14:32:36', '2021-06-24 14:32:36'),
(45, 45, 'si_JjZRG8UsejUdUI', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 06:06:04', '2021-06-25 06:06:04'),
(46, 46, 'si_JjZW5L9J9NzuMg', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 06:11:07', '2021-06-25 06:11:07'),
(47, 47, 'si_JjackJNPTkI0Kq', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 07:19:06', '2021-06-25 07:19:06'),
(48, 48, 'si_JjafS1AAu1XyVO', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 07:21:24', '2021-06-25 07:21:24'),
(49, 49, 'si_JjahyEt18MqcKS', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 07:23:24', '2021-06-25 07:23:24'),
(50, 50, 'si_JjcPPF9jlA9gPy', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 09:09:41', '2021-06-25 09:09:41'),
(51, 51, 'si_JjeyskOs5r3uw7', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 11:48:42', '2021-06-25 11:48:42'),
(52, 52, 'si_Jjf2bLpbAFfoy3', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 11:53:16', '2021-06-25 11:53:16'),
(53, 53, 'si_Jjf3hLXK4ho8vV', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 11:54:16', '2021-06-25 11:54:16'),
(54, 54, 'si_Jjf44TMUcAcBt6', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 11:54:33', '2021-06-25 11:54:33'),
(55, 55, 'si_Jjh78uGsb9OgYp', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 14:02:10', '2021-06-25 14:02:10'),
(56, 56, 'si_JjhADNYEsiiUPY', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 14:04:37', '2021-06-25 14:04:37'),
(57, 57, 'si_Jji4KtlptLCi7l', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-25 15:01:18', '2021-06-25 15:01:18'),
(58, 58, 'si_JkXlF5N2HUSDfL', 'price_1J3ha5IM5rmqm6fhwzqcXFHm', 1, '2021-06-27 20:26:12', '2021-06-27 20:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL DEFAULT '4',
  `restoarea_id` bigint(20) UNSIGNED DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `size`, `restoarea_id`, `restaurant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Table 1', 4, 1, 1, NULL, NULL, NULL),
(2, 'Table 2', 4, 1, 1, NULL, NULL, NULL),
(3, 'Table 3', 4, 1, 1, NULL, NULL, NULL),
(4, 'Table 4', 4, 1, 1, NULL, NULL, NULL),
(5, 'Table 5', 4, 1, 1, NULL, NULL, NULL),
(6, 'Table 6', 4, 1, 1, NULL, NULL, NULL),
(7, 'Table 7', 4, 1, 1, NULL, NULL, NULL),
(8, 'Table 8', 4, 1, 1, NULL, NULL, NULL),
(9, 'Table 9', 4, 1, 1, NULL, NULL, NULL),
(10, 'Table 10', 4, 1, 1, NULL, NULL, NULL),
(11, 'Table 1', 4, 2, 1, NULL, NULL, NULL),
(12, 'Table 2', 4, 2, 1, NULL, NULL, NULL),
(13, 'Table 3', 4, 2, 1, NULL, NULL, NULL),
(14, 'Table 4', 4, 2, 1, NULL, NULL, NULL),
(15, 'Table 5', 4, 2, 1, NULL, NULL, NULL),
(16, 'Table 1', 4, 3, 2, NULL, NULL, NULL),
(17, 'Table 2', 4, 3, 2, NULL, NULL, NULL),
(18, 'Table 3', 4, 3, 2, NULL, NULL, NULL),
(19, 'Table 4', 4, 3, 2, NULL, NULL, NULL),
(20, 'Table 5', 4, 3, 2, NULL, NULL, NULL),
(21, 'Table 6', 4, 3, 2, NULL, NULL, NULL),
(22, 'Table 7', 4, 3, 2, NULL, NULL, NULL),
(23, 'Table 8', 4, 3, 2, NULL, NULL, NULL),
(24, 'Table 9', 4, 3, 2, NULL, NULL, NULL),
(25, 'Table 10', 4, 3, 2, NULL, NULL, NULL),
(26, 'Table 1', 4, 4, 2, NULL, NULL, NULL),
(27, 'Table 2', 4, 4, 2, NULL, NULL, NULL),
(28, 'Table 3', 4, 4, 2, NULL, NULL, NULL),
(29, 'Table 4', 4, 4, 2, NULL, NULL, NULL),
(30, 'Table 5', 4, 4, 2, NULL, NULL, NULL),
(31, 'Table 1', 4, 5, 3, NULL, NULL, NULL),
(32, 'Table 2', 4, 5, 3, NULL, NULL, NULL),
(33, 'Table 3', 4, 5, 3, NULL, NULL, NULL),
(34, 'Table 4', 4, 5, 3, NULL, NULL, NULL),
(35, 'Table 5', 4, 5, 3, NULL, NULL, NULL),
(36, 'Table 6', 4, 5, 3, NULL, NULL, NULL),
(37, 'Table 7', 4, 5, 3, NULL, NULL, NULL),
(38, 'Table 8', 4, 5, 3, NULL, NULL, NULL),
(39, 'Table 9', 4, 5, 3, NULL, NULL, NULL),
(40, 'Table 10', 4, 5, 3, NULL, NULL, NULL),
(41, 'Table 1', 4, 6, 3, NULL, NULL, NULL),
(42, 'Table 2', 4, 6, 3, NULL, NULL, NULL),
(43, 'Table 3', 4, 6, 3, NULL, NULL, NULL),
(44, 'Table 4', 4, 6, 3, NULL, NULL, NULL),
(45, 'Table 5', 4, 6, 3, NULL, NULL, NULL),
(46, 'Table 1', 4, 7, 4, NULL, NULL, NULL),
(47, 'Table 2', 4, 7, 4, NULL, NULL, NULL),
(48, 'Table 3', 4, 7, 4, NULL, NULL, NULL),
(49, 'Table 4', 4, 7, 4, NULL, NULL, NULL),
(50, 'Table 5', 4, 7, 4, NULL, NULL, NULL),
(51, 'Table 6', 4, 7, 4, NULL, NULL, NULL),
(52, 'Table 7', 4, 7, 4, NULL, NULL, NULL),
(53, 'Table 8', 4, 7, 4, NULL, NULL, NULL),
(54, 'Table 9', 4, 7, 4, NULL, NULL, NULL),
(55, 'Table 10', 4, 7, 4, NULL, NULL, NULL),
(56, 'Table 1', 4, 8, 4, NULL, NULL, NULL),
(57, 'Table 2', 4, 8, 4, NULL, NULL, NULL),
(58, 'Table 3', 4, 8, 4, NULL, NULL, NULL),
(59, 'Table 4', 4, 8, 4, NULL, NULL, NULL),
(60, 'Table 5', 4, 8, 4, NULL, NULL, NULL),
(61, 'Table 1', 4, 9, 5, NULL, NULL, NULL),
(62, 'Table 2', 4, 9, 5, NULL, NULL, NULL),
(63, 'Table 3', 4, 9, 5, NULL, NULL, NULL),
(64, 'Table 4', 4, 9, 5, NULL, NULL, NULL),
(65, 'Table 5', 4, 9, 5, NULL, NULL, NULL),
(66, 'Table 6', 4, 9, 5, NULL, NULL, NULL),
(67, 'Table 7', 4, 9, 5, NULL, NULL, NULL),
(68, 'Table 8', 4, 9, 5, NULL, NULL, NULL),
(69, 'Table 9', 4, 9, 5, NULL, NULL, NULL),
(70, 'Table 10', 4, 9, 5, NULL, NULL, NULL),
(71, 'Table 1', 4, 10, 5, NULL, NULL, NULL),
(72, 'Table 2', 4, 10, 5, NULL, NULL, NULL),
(73, 'Table 3', 4, 10, 5, NULL, NULL, NULL),
(74, 'Table 4', 4, 10, 5, NULL, NULL, NULL),
(75, 'Table 5', 4, 10, 5, NULL, NULL, NULL),
(76, 'Table 1', 4, 11, 6, NULL, NULL, NULL),
(77, 'Table 2', 4, 11, 6, NULL, NULL, NULL),
(78, 'Table 3', 4, 11, 6, NULL, NULL, NULL),
(79, 'Table 4', 4, 11, 6, NULL, NULL, NULL),
(80, 'Table 5', 4, 11, 6, NULL, NULL, NULL),
(81, 'Table 6', 4, 11, 6, NULL, NULL, NULL),
(82, 'Table 7', 4, 11, 6, NULL, NULL, NULL),
(83, 'Table 8', 4, 11, 6, NULL, NULL, NULL),
(84, 'Table 9', 4, 11, 6, NULL, NULL, NULL),
(85, 'Table 10', 4, 11, 6, NULL, NULL, NULL),
(86, 'Table 1', 4, 12, 6, NULL, NULL, NULL),
(87, 'Table 2', 4, 12, 6, NULL, NULL, NULL),
(88, 'Table 3', 4, 12, 6, NULL, NULL, NULL),
(89, 'Table 4', 4, 12, 6, NULL, NULL, NULL),
(90, 'Table 5', 4, 12, 6, NULL, NULL, NULL),
(91, 'Table 1', 4, 13, 7, NULL, NULL, NULL),
(92, 'Table 2', 4, 13, 7, NULL, NULL, NULL),
(93, 'Table 3', 4, 13, 7, NULL, NULL, NULL),
(94, 'Table 4', 4, 13, 7, NULL, NULL, NULL),
(95, 'Table 5', 4, 13, 7, NULL, NULL, NULL),
(96, 'Table 6', 4, 13, 7, NULL, NULL, NULL),
(97, 'Table 7', 4, 13, 7, NULL, NULL, NULL),
(98, 'Table 8', 4, 13, 7, NULL, NULL, NULL),
(99, 'Table 9', 4, 13, 7, NULL, NULL, NULL),
(100, 'Table 10', 4, 13, 7, NULL, NULL, NULL),
(101, 'Table 1', 4, 14, 7, NULL, NULL, NULL),
(102, 'Table 2', 4, 14, 7, NULL, NULL, NULL),
(103, 'Table 3', 4, 14, 7, NULL, NULL, NULL),
(104, 'Table 4', 4, 14, 7, NULL, NULL, NULL),
(105, 'Table 5', 4, 14, 7, NULL, NULL, NULL),
(106, 'Table 1', 4, 15, 8, NULL, NULL, NULL),
(107, 'Table 2', 4, 15, 8, NULL, NULL, NULL),
(108, 'Table 3', 4, 15, 8, NULL, NULL, NULL),
(109, 'Table 4', 4, 15, 8, NULL, NULL, NULL),
(110, 'Table 5', 4, 15, 8, NULL, NULL, NULL),
(111, 'Table 6', 4, 15, 8, NULL, NULL, NULL),
(112, 'Table 7', 4, 15, 8, NULL, NULL, NULL),
(113, 'Table 8', 4, 15, 8, NULL, NULL, NULL),
(114, 'Table 9', 4, 15, 8, NULL, NULL, NULL),
(115, 'Table 10', 4, 15, 8, NULL, NULL, NULL),
(116, 'Table 1', 4, 16, 8, NULL, NULL, NULL),
(117, 'Table 2', 4, 16, 8, NULL, NULL, NULL),
(118, 'Table 3', 4, 16, 8, NULL, NULL, NULL),
(119, 'Table 4', 4, 16, 8, NULL, NULL, NULL),
(120, 'Table 5', 4, 16, 8, NULL, NULL, NULL),
(121, 'Table 1', 4, 17, 9, NULL, NULL, NULL),
(122, 'Table 2', 4, 17, 9, NULL, NULL, NULL),
(123, 'Table 3', 4, 17, 9, NULL, NULL, NULL),
(124, 'Table 4', 4, 17, 9, NULL, NULL, NULL),
(125, 'Table 5', 4, 17, 9, NULL, NULL, NULL),
(126, 'Table 6', 4, 17, 9, NULL, NULL, NULL),
(127, 'Table 7', 4, 17, 9, NULL, NULL, NULL),
(128, 'Table 8', 4, 17, 9, NULL, NULL, NULL),
(129, 'Table 9', 4, 17, 9, NULL, NULL, NULL),
(130, 'Table 10', 4, 17, 9, NULL, NULL, NULL),
(131, 'Table 1', 4, 18, 9, NULL, NULL, NULL),
(132, 'Table 2', 4, 18, 9, NULL, NULL, NULL),
(133, 'Table 3', 4, 18, 9, NULL, NULL, NULL),
(134, 'Table 4', 4, 18, 9, NULL, NULL, NULL),
(135, 'Table 5', 4, 18, 9, NULL, NULL, NULL),
(136, 'Table 1', 4, 19, 10, NULL, NULL, NULL),
(137, 'Table 2', 4, 19, 10, NULL, NULL, NULL),
(138, 'Table 3', 4, 19, 10, NULL, NULL, NULL),
(139, 'Table 4', 4, 19, 10, NULL, NULL, NULL),
(140, 'Table 5', 4, 19, 10, NULL, NULL, NULL),
(141, 'Table 6', 4, 19, 10, NULL, NULL, NULL),
(142, 'Table 7', 4, 19, 10, NULL, NULL, NULL),
(143, 'Table 8', 4, 19, 10, NULL, NULL, NULL),
(144, 'Table 9', 4, 19, 10, NULL, NULL, NULL),
(145, 'Table 10', 4, 19, 10, NULL, NULL, NULL),
(146, 'Table 1', 4, 20, 10, NULL, NULL, NULL),
(147, 'Table 2', 4, 20, 10, NULL, NULL, NULL),
(148, 'Table 3', 4, 20, 10, NULL, NULL, NULL),
(149, 'Table 4', 4, 20, 10, NULL, NULL, NULL),
(150, 'Table 5', 4, 20, 10, NULL, NULL, NULL),
(151, 'Table 1', 4, 21, 11, NULL, NULL, NULL),
(152, 'Table 2', 4, 21, 11, NULL, NULL, NULL),
(153, 'Table 3', 4, 21, 11, NULL, NULL, NULL),
(154, 'Table 4', 4, 21, 11, NULL, NULL, NULL),
(155, 'Table 5', 4, 21, 11, NULL, NULL, NULL),
(156, 'Table 6', 4, 21, 11, NULL, NULL, NULL),
(157, 'Table 7', 4, 21, 11, NULL, NULL, NULL),
(158, 'Table 8', 4, 21, 11, NULL, NULL, NULL),
(159, 'Table 9', 4, 21, 11, NULL, NULL, NULL),
(160, 'Table 10', 4, 21, 11, NULL, NULL, NULL),
(161, 'Table 1', 4, 22, 11, NULL, NULL, NULL),
(162, 'Table 2', 4, 22, 11, NULL, NULL, NULL),
(163, 'Table 3', 4, 22, 11, NULL, NULL, NULL),
(164, 'Table 4', 4, 22, 11, NULL, NULL, NULL),
(165, 'Table 5', 4, 22, 11, NULL, NULL, NULL),
(166, 'Table 1', 4, 23, 12, NULL, NULL, NULL),
(167, 'Table 2', 4, 23, 12, NULL, NULL, NULL),
(168, 'Table 3', 4, 23, 12, NULL, NULL, NULL),
(169, 'Table 4', 4, 23, 12, NULL, NULL, NULL),
(170, 'Table 5', 4, 23, 12, NULL, NULL, NULL),
(171, 'Table 6', 4, 23, 12, NULL, NULL, NULL),
(172, 'Table 7', 4, 23, 12, NULL, NULL, NULL),
(173, 'Table 8', 4, 23, 12, NULL, NULL, NULL),
(174, 'Table 9', 4, 23, 12, NULL, NULL, NULL),
(175, 'Table 10', 4, 23, 12, NULL, NULL, NULL),
(176, 'Table 1', 4, 24, 12, NULL, NULL, NULL),
(177, 'Table 2', 4, 24, 12, NULL, NULL, NULL),
(178, 'Table 3', 4, 24, 12, NULL, NULL, NULL),
(179, 'Table 4', 4, 24, 12, NULL, NULL, NULL),
(180, 'Table 5', 4, 24, 12, NULL, NULL, NULL),
(181, 'Table 1', 4, 25, 13, NULL, NULL, NULL),
(182, 'Table 2', 4, 25, 13, NULL, NULL, NULL),
(183, 'Table 3', 4, 25, 13, NULL, NULL, NULL),
(184, 'Table 4', 4, 25, 13, NULL, NULL, NULL),
(185, 'Table 5', 4, 25, 13, NULL, NULL, NULL),
(186, 'Table 6', 4, 25, 13, NULL, NULL, NULL),
(187, 'Table 7', 4, 25, 13, NULL, NULL, NULL),
(188, 'Table 8', 4, 25, 13, NULL, NULL, NULL),
(189, 'Table 9', 4, 25, 13, NULL, NULL, NULL),
(190, 'Table 10', 4, 25, 13, NULL, NULL, NULL),
(191, 'Table 1', 4, 26, 13, NULL, NULL, NULL),
(192, 'Table 2', 4, 26, 13, NULL, NULL, NULL),
(193, 'Table 3', 4, 26, 13, NULL, NULL, NULL),
(194, 'Table 4', 4, 26, 13, NULL, NULL, NULL),
(195, 'Table 5', 4, 26, 13, NULL, NULL, NULL),
(196, 'Table 1', 4, 27, 14, NULL, NULL, NULL),
(197, 'Table 2', 4, 27, 14, NULL, NULL, NULL),
(198, 'Table 3', 4, 27, 14, NULL, NULL, NULL),
(199, 'Table 4', 4, 27, 14, NULL, NULL, NULL),
(200, 'Table 5', 4, 27, 14, NULL, NULL, NULL),
(201, 'Table 6', 4, 27, 14, NULL, NULL, NULL),
(202, 'Table 7', 4, 27, 14, NULL, NULL, NULL),
(203, 'Table 8', 4, 27, 14, NULL, NULL, NULL),
(204, 'Table 9', 4, 27, 14, NULL, NULL, NULL),
(205, 'Table 10', 4, 27, 14, NULL, NULL, NULL),
(206, 'Table 1', 4, 28, 14, NULL, NULL, NULL),
(207, 'Table 2', 4, 28, 14, NULL, NULL, NULL),
(208, 'Table 3', 4, 28, 14, NULL, NULL, NULL),
(209, 'Table 4', 4, 28, 14, NULL, NULL, NULL),
(210, 'Table 5', 4, 28, 14, NULL, NULL, NULL),
(211, 'Table 1', 4, 29, 15, NULL, NULL, NULL),
(212, 'Table 2', 4, 29, 15, NULL, NULL, NULL),
(213, 'Table 3', 4, 29, 15, NULL, NULL, NULL),
(214, 'Table 4', 4, 29, 15, NULL, NULL, NULL),
(215, 'Table 5', 4, 29, 15, NULL, NULL, NULL),
(216, 'Table 6', 4, 29, 15, NULL, NULL, NULL),
(217, 'Table 7', 4, 29, 15, NULL, NULL, NULL),
(218, 'Table 8', 4, 29, 15, NULL, NULL, NULL),
(219, 'Table 9', 4, 29, 15, NULL, NULL, NULL),
(220, 'Table 10', 4, 29, 15, NULL, NULL, NULL),
(221, 'Table 1', 4, 30, 15, NULL, NULL, NULL),
(222, 'Table 2', 4, 30, 15, NULL, NULL, NULL),
(223, 'Table 3', 4, 30, 15, NULL, NULL, NULL),
(224, 'Table 4', 4, 30, 15, NULL, NULL, NULL),
(225, 'Table 5', 4, 30, 15, NULL, NULL, NULL),
(226, 'Table 1', 4, 31, 16, NULL, NULL, NULL),
(227, 'Table 2', 4, 31, 16, NULL, NULL, NULL),
(228, 'Table 3', 4, 31, 16, NULL, NULL, NULL),
(229, 'Table 4', 4, 31, 16, NULL, NULL, NULL),
(230, 'Table 5', 4, 31, 16, NULL, NULL, NULL),
(231, 'Table 6', 4, 31, 16, NULL, NULL, NULL),
(232, 'Table 7', 4, 31, 16, NULL, NULL, NULL),
(233, 'Table 8', 4, 31, 16, NULL, NULL, NULL),
(234, 'Table 9', 4, 31, 16, NULL, NULL, NULL),
(235, 'Table 10', 4, 31, 16, NULL, NULL, NULL),
(236, 'Table 1', 4, 32, 16, NULL, NULL, NULL),
(237, 'Table 2', 4, 32, 16, NULL, NULL, NULL),
(238, 'Table 3', 4, 32, 16, NULL, NULL, NULL),
(239, 'Table 4', 4, 32, 16, NULL, NULL, NULL),
(240, 'Table 5', 4, 32, 16, NULL, NULL, NULL),
(241, 'Room 1', 2, 33, 1, '2021-07-13 17:16:16', '2021-07-13 17:16:16', NULL),
(242, 'Room 2', 4, 33, 1, '2021-07-13 17:16:29', '2021-07-13 17:16:29', NULL),
(243, 'Table 1', 4, 35, 55, '2021-07-17 09:16:23', '2021-07-17 09:16:23', NULL),
(244, 'jasht', 3, 35, 55, '2021-07-17 09:43:12', '2021-07-17 09:43:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cancel_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_url` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checkout_id` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subscription_plan_id` varchar(555) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stripe_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birth_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working` int(11) NOT NULL DEFAULT '1',
  `onorder` int(11) DEFAULT NULL,
  `numorders` int(11) NOT NULL DEFAULT '0',
  `rejectedorders` int(11) NOT NULL,
  `paypal_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_mandate_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_percentage` decimal(6,4) NOT NULL DEFAULT '0.0000',
  `extra_billing_information` text COLLATE utf8mb4_unicode_ci,
  `mollie_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_subscribtion_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_trans_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `google_id`, `fb_id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `phone`, `remember_token`, `created_at`, `updated_at`, `active`, `coupon_code`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `verification_code`, `phone_verified_at`, `plan_id`, `plan_status`, `cancel_url`, `update_url`, `checkout_id`, `subscription_plan_id`, `stripe_account`, `birth_date`, `lat`, `lng`, `working`, `onorder`, `numorders`, `rejectedorders`, `paypal_subscribtion_id`, `mollie_customer_id`, `mollie_mandate_id`, `tax_percentage`, `extra_billing_information`, `mollie_subscribtion_id`, `paystack_subscribtion_id`, `paystack_trans_id`) VALUES
(1, NULL, NULL, 'Admin Le Repass', 'info@facturisa.ch', '2021-06-16 09:39:30', '$2y$10$phUkJrRLoUQ5/Eo26yeYGu0GphdhS1bPgaB9YOU8oQKX7dogkyJAy', 'qrglr3xp5sdr2yXwqZ2LhtBtcYGoNwBbUPPHhq8Ieoq8auRB8szdEfDnK4aZo8sBy6CHhrZZqfIYDG5q', '0762055215', 'XVvGJRQa5HFTlDjjSFYk7uUMCM5NqFRRpwrUxUJ8FVnZUwOeI9JgFtr5XBoo', '2021-06-16 09:39:30', '2021-07-01 23:53:56', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(2, NULL, NULL, 'Nedim Dauti', 'info@voglio.ch', '2021-06-16 09:39:30', '$2y$10$4V1eBK8p8bz6SSyIr36D6uo1Hkr3wbqM6zJjIKLCCVAq1LyPKhW1a', 'ZbFBjOs9W0Xdx2zwKaV7m086WhWqvbT3KQUe05BcEjhKY6jPWXSEb8vF4nPzAF9fDsZLDLKl0k8mXA1S', '+41762055215', 'O3zG8Bkep2wrLjXq485CMUJlrFiYoH6YD45WP1pd16wteATSTultKARQsEkO', '2021-06-16 09:39:30', '2021-07-18 10:26:44', 1, 'telegrafi21', 'cus_Jif0rr3Nj1Wt5U', 'visa', '4242', '2021-06-21 19:46:03', NULL, NULL, 3, '', '', '', '', '', 'acct_1J6TOkRHEgShEC80', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(12, NULL, NULL, 'test1', 'test1@gmail.com', NULL, '$2y$10$jWjYvWARi.05Lvo1rHAI3uyCtNK7aTQwMUFoap.BzIKw.6W9bQ8iq', '58jFV8444YD8ir3WBU97IDpv2WVXxPabcQypgc1L69dXszb5sbuf4fSRz0K2rTNZO4Hw9zehguEVWz0e', '23123123', NULL, '2021-06-23 11:07:13', '2021-06-23 11:07:13', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(13, NULL, NULL, 'Maraj', 'md.marasdsdsdjrashid@gmail.com', NULL, '$2y$10$I0t4d/jjPQ16FuaL4WaGsuspBKjuU3K3.AK9fvDyYw7oAtWNjMnBa', 'WE1NN7o5EcYUMh4zvgmHn5FQw1arG9Cyypi8RSpYUqyFFfsw4yZ8MvyqTSrb2LhzOUJI3Qr382k04lEr', '23', NULL, '2021-06-23 17:34:08', '2021-06-23 17:34:08', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(14, NULL, NULL, '4ffg', 'ts22est@gmail.com', NULL, '$2y$10$i20MfhPCJlwTsflQh9d6K.DWEF6IOKCpOANy9HidZL/D6k4tzj2Jy', 'IGSTd0Lgo2j8Mrkxe88dEEgBkR2WD92jVTyIhjVkVu34Zp3CbRJkLhKVUJzcR4omlsNabMBMgTH54JgW', '3212', NULL, '2021-06-23 17:34:49', '2021-06-23 17:34:49', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(15, NULL, NULL, '123123', 'couasd@ddasd.com', NULL, '$2y$10$tptmu9.q9dHdWQv4hxiASuVBQvWJiFmhr6WinVAKNBX6KTPBd/1lm', 'XaKuC03Go298ZjBYEp36GvPUxE3X3hI08WGGFcsUGsdqJpURcF4TyascrNRuxRRJCpiyyCg4bRsfjDtM', '231123', NULL, '2021-06-23 17:50:14', '2021-06-23 17:50:14', 1, 'gtt', NULL, NULL, NULL, NULL, NULL, NULL, 3, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(38, NULL, NULL, 'Nedim Dauti', 'nedim.dauti@live.com', NULL, '$2y$10$zKGpd/hOAc9o9MBrd9sFaOsC73EOQmE6nC18pKq.sOmAlYPI9OOe.', 'CnLvLwxX0BrH8cCRJGGltvXP6sOk5ZMD4s14ymglIcOSU8KiBLNWh2VKkPP5JC8jRskDDmivJFLtwKrp', '0762055215', NULL, '2021-07-01 21:13:11', '2021-07-01 21:13:11', 1, 'telegrafi21', NULL, NULL, NULL, '2021-07-15 21:13:11', NULL, NULL, 3, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(39, NULL, NULL, 'Blerim Dauti', 'blerimblerii@gmail.com', NULL, '$2y$10$1Ncq8HoWY4QvM1ZKZOjDbuJNmW7Fz.eqZ7D5WLiGTF9acFTHIUiWy', '2k9O4qL7Tlu71dJEUhvX9uwGKDfMLoUiFvMCZUcddnXHeFnJNO8dPz7UNJxJJ1cmTGXyZ3cRxJm9DY3m', '0225480078', NULL, '2021-07-01 23:57:50', '2021-07-01 23:57:50', 1, 'telegrafi21', NULL, NULL, NULL, '2021-07-15 23:57:50', NULL, NULL, 3, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(40, NULL, NULL, 'Nedim Dauti', 'hanifdauti@live.com', NULL, '$2y$10$26jBXNVhwb0yNPNqaWbvzeDENnOSrPAhnpYFPp6bu4pZdChqFreTK', 'e4Omv2yVyfzoH241hW4MFHs4zA4Dc9Qmlkfr2KPkCC6AWN278glc6BjfYU7qpVactUxSHydfqX2qbwVc', '+41762055215', NULL, '2021-07-17 09:06:22', '2021-07-17 09:06:23', 1, '', NULL, NULL, NULL, '2021-07-31 09:06:22', NULL, NULL, 3, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(41, NULL, NULL, 'Hanif Dauti', 'hanifdauti@hotmail.com', NULL, '$2y$10$s7CubOCL3OGEOccyJRntUuZKay6IwKFrKrN3vmhl/7IWrFP1ZCrtK', 'BqJJHdITj0pgRhjNOcoiHiMhkyDb7Sf5Cwr6X1jrS9DkNbnavV0GBATBGNEdvMYQa2Rmj42DyShjtb0k', '0762055215', NULL, '2021-07-17 09:08:02', '2021-07-17 09:08:02', 1, '', NULL, NULL, NULL, '2021-07-31 09:08:02', NULL, NULL, 3, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(42, NULL, NULL, 'Slade Reyes', 'wilefiz@mailinator.com', NULL, '$2y$10$Eh4tb68AQKcIh0dE.Al9/.Q3sFgzvMAP/7gunye67OHfXCB0v7WK.', 'I4xv0jFk3HnAk5LAQmgGp8aNeSOAuOHAfm1KXWzVg7XnztlhnWiN6CxOa0vnTSMkJRmqh5sirMUdeSbu', '+1 (732) 718-8318', NULL, '2021-07-17 21:36:32', '2021-07-17 21:36:32', 1, '', NULL, NULL, NULL, '2021-07-31 21:36:32', NULL, NULL, 3, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(43, NULL, NULL, 'Resta', 'contact@resta.com', NULL, '$2y$10$fevKLfryA.ic8Xl7g1iJx.vSkRM.FUraI49E1xZWobSsiPrmqpDD.', 'VqjObColpHA2art0A7FRoH8RQ7tOfhZHBr8DywhxwTNkCQeb52EBcMG5WDp3LaFHTMzMmcgENMJqvn6n', '0948384834888', NULL, '2021-07-17 22:30:05', '2021-07-17 22:30:05', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL),
(44, NULL, NULL, 'devat', 'devat73@gmail.com', NULL, '$2y$10$kXczvq.mO/XQw2ipCXw3xu38kL8vs6dzPM9pOy1n1j0r65HnYefey', 'kiICrvIS6uTNv7dFhTMyovQ6agV5s7aV3i3YjEjSrbG2JtyVaLqHHupIAcHnP7YPj4SrqJI6ilUGcATB', '+91 8320354276', NULL, '2021-07-18 09:47:23', '2021-07-18 09:47:24', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, '', '', '', '', '', '', '', NULL, NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `options` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `enable_qty` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10.99, '{\"1\":\"small\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(2, 11.99, '{\"1\":\"small\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(3, 12.99, '{\"1\":\"small\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(4, 13.99, '{\"1\":\"medium\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(5, 14.99, '{\"1\":\"medium\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(6, 15.99, '{\"1\":\"medium\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(7, 16.99, '{\"1\":\"large\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(8, 17.99, '{\"1\":\"large\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(9, 18.99, '{\"1\":\"large\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(10, 19.99, '{\"1\":\"family\",\"2\":\"hand-tosset\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(11, 20.99, '{\"1\":\"family\",\"2\":\"thin-crust\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(12, 21.99, '{\"1\":\"family\",\"2\":\"double-decker\"}', '', 0, 0, 0, 7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(13, 14.99, '{\"3\":\"small\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(14, 15.99, '{\"3\":\"small\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(15, 16.99, '{\"3\":\"small\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(16, 17.99, '{\"3\":\"medium\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(17, 18.99, '{\"3\":\"medium\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(18, 19.99, '{\"3\":\"medium\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(19, 20.99, '{\"3\":\"large\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(20, 21.99, '{\"3\":\"large\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(21, 22.99, '{\"3\":\"large\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(22, 23.99, '{\"3\":\"family\",\"4\":\"hand-tosset\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(23, 24.99, '{\"3\":\"family\",\"4\":\"thin-crust\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(24, 25.99, '{\"3\":\"family\",\"4\":\"double-decker\"}', '', 0, 0, 0, 8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(25, 14.99, '{\"5\":\"small\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(26, 15.99, '{\"5\":\"small\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(27, 16.99, '{\"5\":\"small\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(28, 17.99, '{\"5\":\"medium\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(29, 18.99, '{\"5\":\"medium\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(30, 19.99, '{\"5\":\"medium\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(31, 20.99, '{\"5\":\"large\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(32, 21.99, '{\"5\":\"large\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(33, 22.99, '{\"5\":\"large\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(34, 23.99, '{\"5\":\"family\",\"6\":\"hand-tosset\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(35, 24.99, '{\"5\":\"family\",\"6\":\"thin-crust\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(36, 25.99, '{\"5\":\"family\",\"6\":\"double-decker\"}', '', 0, 0, 0, 9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(37, 14.99, '{\"7\":\"small\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(38, 15.99, '{\"7\":\"small\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(39, 16.99, '{\"7\":\"small\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(40, 17.99, '{\"7\":\"medium\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(41, 18.99, '{\"7\":\"medium\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(42, 19.99, '{\"7\":\"medium\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(43, 20.99, '{\"7\":\"large\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(44, 21.99, '{\"7\":\"large\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(45, 22.99, '{\"7\":\"large\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(46, 23.99, '{\"7\":\"family\",\"8\":\"hand-tosset\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(47, 24.99, '{\"7\":\"family\",\"8\":\"thin-crust\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(48, 25.99, '{\"7\":\"family\",\"8\":\"double-decker\"}', '', 0, 0, 0, 10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(49, 14.99, '{\"9\":\"small\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(50, 15.99, '{\"9\":\"small\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(51, 16.99, '{\"9\":\"small\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(52, 17.99, '{\"9\":\"medium\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(53, 18.99, '{\"9\":\"medium\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(54, 19.99, '{\"9\":\"medium\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(55, 20.99, '{\"9\":\"large\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(56, 21.99, '{\"9\":\"large\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(57, 22.99, '{\"9\":\"large\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(58, 23.99, '{\"9\":\"family\",\"10\":\"hand-tosset\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(59, 24.99, '{\"9\":\"family\",\"10\":\"thin-crust\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(60, 25.99, '{\"9\":\"family\",\"10\":\"double-decker\"}', '', 0, 0, 0, 11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(61, 14.99, '{\"11\":\"small\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(62, 15.99, '{\"11\":\"small\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(63, 16.99, '{\"11\":\"small\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(64, 17.99, '{\"11\":\"medium\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(65, 18.99, '{\"11\":\"medium\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(66, 19.99, '{\"11\":\"medium\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(67, 20.99, '{\"11\":\"large\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(68, 21.99, '{\"11\":\"large\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(69, 22.99, '{\"11\":\"large\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(70, 23.99, '{\"11\":\"family\",\"12\":\"hand-tosset\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(71, 24.99, '{\"11\":\"family\",\"12\":\"thin-crust\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(72, 25.99, '{\"11\":\"family\",\"12\":\"double-decker\"}', '', 0, 0, 0, 12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(73, 10.49, '{\"13\":\"small\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(74, 11.49, '{\"13\":\"small\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(75, 12.49, '{\"13\":\"small\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(76, 13.49, '{\"13\":\"medium\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(77, 14.49, '{\"13\":\"medium\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(78, 15.49, '{\"13\":\"medium\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(79, 16.49, '{\"13\":\"large\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(80, 17.49, '{\"13\":\"large\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(81, 18.49, '{\"13\":\"large\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(82, 19.49, '{\"13\":\"family\",\"14\":\"hand-tosset\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', NULL),
(83, 20.49, '{\"13\":\"family\",\"14\":\"thin-crust\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(84, 21.49, '{\"13\":\"family\",\"14\":\"double-decker\"}', '', 0, 0, 0, 13, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(85, 39.99, '{\"15\":\"small\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(86, 40.99, '{\"15\":\"small\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(87, 41.99, '{\"15\":\"small\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(88, 42.99, '{\"15\":\"medium\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(89, 43.99, '{\"15\":\"medium\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(90, 44.99, '{\"15\":\"medium\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(91, 45.99, '{\"15\":\"large\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(92, 46.99, '{\"15\":\"large\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(93, 47.99, '{\"15\":\"large\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(94, 48.99, '{\"15\":\"family\",\"16\":\"hand-tosset\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(95, 49.99, '{\"15\":\"family\",\"16\":\"thin-crust\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(96, 50.99, '{\"15\":\"family\",\"16\":\"double-decker\"}', '', 0, 0, 0, 14, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(97, 14.99, '{\"17\":\"small\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(98, 15.99, '{\"17\":\"small\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(99, 16.99, '{\"17\":\"small\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(100, 17.99, '{\"17\":\"medium\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(101, 18.99, '{\"17\":\"medium\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(102, 19.99, '{\"17\":\"medium\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(103, 20.99, '{\"17\":\"large\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(104, 21.99, '{\"17\":\"large\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(105, 22.99, '{\"17\":\"large\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(106, 23.99, '{\"17\":\"family\",\"18\":\"hand-tosset\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(107, 24.99, '{\"17\":\"family\",\"18\":\"thin-crust\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(108, 25.99, '{\"17\":\"family\",\"18\":\"double-decker\"}', '', 0, 0, 0, 15, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(109, 14.99, '{\"19\":\"small\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(110, 15.99, '{\"19\":\"small\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(111, 16.99, '{\"19\":\"small\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(112, 17.99, '{\"19\":\"medium\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(113, 18.99, '{\"19\":\"medium\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(114, 19.99, '{\"19\":\"medium\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(115, 20.99, '{\"19\":\"large\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(116, 21.99, '{\"19\":\"large\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(117, 22.99, '{\"19\":\"large\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(118, 23.99, '{\"19\":\"family\",\"20\":\"hand-tosset\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(119, 24.99, '{\"19\":\"family\",\"20\":\"thin-crust\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(120, 25.99, '{\"19\":\"family\",\"20\":\"double-decker\"}', '', 0, 0, 0, 16, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(121, 14.99, '{\"21\":\"small\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(122, 15.99, '{\"21\":\"small\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(123, 16.99, '{\"21\":\"small\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(124, 17.99, '{\"21\":\"medium\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(125, 18.99, '{\"21\":\"medium\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(126, 19.99, '{\"21\":\"medium\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(127, 20.99, '{\"21\":\"large\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(128, 21.99, '{\"21\":\"large\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(129, 22.99, '{\"21\":\"large\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(130, 23.99, '{\"21\":\"family\",\"22\":\"hand-tosset\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(131, 24.99, '{\"21\":\"family\",\"22\":\"thin-crust\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(132, 25.99, '{\"21\":\"family\",\"22\":\"double-decker\"}', '', 0, 0, 0, 17, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(133, 10.99, '{\"23\":\"small\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(134, 11.99, '{\"23\":\"small\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(135, 12.99, '{\"23\":\"small\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(136, 13.99, '{\"23\":\"medium\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(137, 14.99, '{\"23\":\"medium\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(138, 15.99, '{\"23\":\"medium\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(139, 16.99, '{\"23\":\"large\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(140, 17.99, '{\"23\":\"large\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(141, 18.99, '{\"23\":\"large\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(142, 19.99, '{\"23\":\"family\",\"24\":\"hand-tosset\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(143, 20.99, '{\"23\":\"family\",\"24\":\"thin-crust\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(144, 21.99, '{\"23\":\"family\",\"24\":\"double-decker\"}', '', 0, 0, 0, 67, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(145, 14.99, '{\"25\":\"small\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(146, 15.99, '{\"25\":\"small\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(147, 16.99, '{\"25\":\"small\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(148, 17.99, '{\"25\":\"medium\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(149, 18.99, '{\"25\":\"medium\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(150, 19.99, '{\"25\":\"medium\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(151, 20.99, '{\"25\":\"large\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(152, 21.99, '{\"25\":\"large\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(153, 22.99, '{\"25\":\"large\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(154, 23.99, '{\"25\":\"family\",\"26\":\"hand-tosset\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(155, 24.99, '{\"25\":\"family\",\"26\":\"thin-crust\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(156, 25.99, '{\"25\":\"family\",\"26\":\"double-decker\"}', '', 0, 0, 0, 68, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(157, 14.99, '{\"27\":\"small\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(158, 15.99, '{\"27\":\"small\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(159, 16.99, '{\"27\":\"small\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(160, 17.99, '{\"27\":\"medium\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(161, 18.99, '{\"27\":\"medium\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(162, 19.99, '{\"27\":\"medium\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(163, 20.99, '{\"27\":\"large\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(164, 21.99, '{\"27\":\"large\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(165, 22.99, '{\"27\":\"large\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(166, 23.99, '{\"27\":\"family\",\"28\":\"hand-tosset\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(167, 24.99, '{\"27\":\"family\",\"28\":\"thin-crust\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(168, 25.99, '{\"27\":\"family\",\"28\":\"double-decker\"}', '', 0, 0, 0, 69, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(169, 14.99, '{\"29\":\"small\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(170, 15.99, '{\"29\":\"small\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(171, 16.99, '{\"29\":\"small\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(172, 17.99, '{\"29\":\"medium\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(173, 18.99, '{\"29\":\"medium\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(174, 19.99, '{\"29\":\"medium\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(175, 20.99, '{\"29\":\"large\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(176, 21.99, '{\"29\":\"large\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(177, 22.99, '{\"29\":\"large\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(178, 23.99, '{\"29\":\"family\",\"30\":\"hand-tosset\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(179, 24.99, '{\"29\":\"family\",\"30\":\"thin-crust\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(180, 25.99, '{\"29\":\"family\",\"30\":\"double-decker\"}', '', 0, 0, 0, 70, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(181, 14.99, '{\"31\":\"small\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(182, 15.99, '{\"31\":\"small\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(183, 16.99, '{\"31\":\"small\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(184, 17.99, '{\"31\":\"medium\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(185, 18.99, '{\"31\":\"medium\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(186, 19.99, '{\"31\":\"medium\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(187, 20.99, '{\"31\":\"large\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(188, 21.99, '{\"31\":\"large\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(189, 22.99, '{\"31\":\"large\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(190, 23.99, '{\"31\":\"family\",\"32\":\"hand-tosset\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(191, 24.99, '{\"31\":\"family\",\"32\":\"thin-crust\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(192, 25.99, '{\"31\":\"family\",\"32\":\"double-decker\"}', '', 0, 0, 0, 71, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(193, 14.99, '{\"33\":\"small\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(194, 15.99, '{\"33\":\"small\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(195, 16.99, '{\"33\":\"small\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(196, 17.99, '{\"33\":\"medium\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(197, 18.99, '{\"33\":\"medium\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(198, 19.99, '{\"33\":\"medium\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(199, 20.99, '{\"33\":\"large\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(200, 21.99, '{\"33\":\"large\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(201, 22.99, '{\"33\":\"large\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(202, 23.99, '{\"33\":\"family\",\"34\":\"hand-tosset\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(203, 24.99, '{\"33\":\"family\",\"34\":\"thin-crust\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(204, 25.99, '{\"33\":\"family\",\"34\":\"double-decker\"}', '', 0, 0, 0, 72, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(205, 10.49, '{\"35\":\"small\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(206, 11.49, '{\"35\":\"small\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(207, 12.49, '{\"35\":\"small\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(208, 13.49, '{\"35\":\"medium\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(209, 14.49, '{\"35\":\"medium\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(210, 15.49, '{\"35\":\"medium\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(211, 16.49, '{\"35\":\"large\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(212, 17.49, '{\"35\":\"large\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(213, 18.49, '{\"35\":\"large\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(214, 19.49, '{\"35\":\"family\",\"36\":\"hand-tosset\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(215, 20.49, '{\"35\":\"family\",\"36\":\"thin-crust\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(216, 21.49, '{\"35\":\"family\",\"36\":\"double-decker\"}', '', 0, 0, 0, 73, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(217, 39.99, '{\"37\":\"small\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(218, 40.99, '{\"37\":\"small\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(219, 41.99, '{\"37\":\"small\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(220, 42.99, '{\"37\":\"medium\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(221, 43.99, '{\"37\":\"medium\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(222, 44.99, '{\"37\":\"medium\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(223, 45.99, '{\"37\":\"large\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(224, 46.99, '{\"37\":\"large\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(225, 47.99, '{\"37\":\"large\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(226, 48.99, '{\"37\":\"family\",\"38\":\"hand-tosset\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(227, 49.99, '{\"37\":\"family\",\"38\":\"thin-crust\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(228, 50.99, '{\"37\":\"family\",\"38\":\"double-decker\"}', '', 0, 0, 0, 74, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(229, 14.99, '{\"39\":\"small\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(230, 15.99, '{\"39\":\"small\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(231, 16.99, '{\"39\":\"small\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(232, 17.99, '{\"39\":\"medium\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(233, 18.99, '{\"39\":\"medium\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(234, 19.99, '{\"39\":\"medium\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(235, 20.99, '{\"39\":\"large\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(236, 21.99, '{\"39\":\"large\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(237, 22.99, '{\"39\":\"large\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(238, 23.99, '{\"39\":\"family\",\"40\":\"hand-tosset\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(239, 24.99, '{\"39\":\"family\",\"40\":\"thin-crust\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(240, 25.99, '{\"39\":\"family\",\"40\":\"double-decker\"}', '', 0, 0, 0, 75, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(241, 14.99, '{\"41\":\"small\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(242, 15.99, '{\"41\":\"small\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(243, 16.99, '{\"41\":\"small\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(244, 17.99, '{\"41\":\"medium\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(245, 18.99, '{\"41\":\"medium\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(246, 19.99, '{\"41\":\"medium\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(247, 20.99, '{\"41\":\"large\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(248, 21.99, '{\"41\":\"large\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(249, 22.99, '{\"41\":\"large\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(250, 23.99, '{\"41\":\"family\",\"42\":\"hand-tosset\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(251, 24.99, '{\"41\":\"family\",\"42\":\"thin-crust\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(252, 25.99, '{\"41\":\"family\",\"42\":\"double-decker\"}', '', 0, 0, 0, 76, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(253, 14.99, '{\"43\":\"small\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(254, 15.99, '{\"43\":\"small\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(255, 16.99, '{\"43\":\"small\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(256, 17.99, '{\"43\":\"medium\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(257, 18.99, '{\"43\":\"medium\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(258, 19.99, '{\"43\":\"medium\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(259, 20.99, '{\"43\":\"large\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(260, 21.99, '{\"43\":\"large\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(261, 22.99, '{\"43\":\"large\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(262, 23.99, '{\"43\":\"family\",\"44\":\"hand-tosset\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(263, 24.99, '{\"43\":\"family\",\"44\":\"thin-crust\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(264, 25.99, '{\"43\":\"family\",\"44\":\"double-decker\"}', '', 0, 0, 0, 77, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(265, 10.99, '{\"45\":\"small\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(266, 11.99, '{\"45\":\"small\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(267, 12.99, '{\"45\":\"small\",\"46\":\"double-decker\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(268, 13.99, '{\"45\":\"medium\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(269, 14.99, '{\"45\":\"medium\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(270, 15.99, '{\"45\":\"medium\",\"46\":\"double-decker\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(271, 16.99, '{\"45\":\"large\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(272, 17.99, '{\"45\":\"large\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(273, 18.99, '{\"45\":\"large\",\"46\":\"double-decker\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(274, 19.99, '{\"45\":\"family\",\"46\":\"hand-tosset\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(275, 20.99, '{\"45\":\"family\",\"46\":\"thin-crust\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(276, 21.99, '{\"45\":\"family\",\"46\":\"double-decker\"}', '', 0, 0, 0, 98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', NULL),
(277, 14.99, '{\"47\":\"small\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(278, 15.99, '{\"47\":\"small\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(279, 16.99, '{\"47\":\"small\",\"48\":\"double-decker\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(280, 17.99, '{\"47\":\"medium\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(281, 18.99, '{\"47\":\"medium\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(282, 19.99, '{\"47\":\"medium\",\"48\":\"double-decker\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(283, 20.99, '{\"47\":\"large\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(284, 21.99, '{\"47\":\"large\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(285, 22.99, '{\"47\":\"large\",\"48\":\"double-decker\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(286, 23.99, '{\"47\":\"family\",\"48\":\"hand-tosset\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(287, 24.99, '{\"47\":\"family\",\"48\":\"thin-crust\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(288, 25.99, '{\"47\":\"family\",\"48\":\"double-decker\"}', '', 0, 0, 0, 99, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(289, 14.99, '{\"49\":\"small\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(290, 15.99, '{\"49\":\"small\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(291, 16.99, '{\"49\":\"small\",\"50\":\"double-decker\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(292, 17.99, '{\"49\":\"medium\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(293, 18.99, '{\"49\":\"medium\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(294, 19.99, '{\"49\":\"medium\",\"50\":\"double-decker\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(295, 20.99, '{\"49\":\"large\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(296, 21.99, '{\"49\":\"large\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(297, 22.99, '{\"49\":\"large\",\"50\":\"double-decker\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(298, 23.99, '{\"49\":\"family\",\"50\":\"hand-tosset\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(299, 24.99, '{\"49\":\"family\",\"50\":\"thin-crust\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(300, 25.99, '{\"49\":\"family\",\"50\":\"double-decker\"}', '', 0, 0, 0, 100, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(301, 14.99, '{\"51\":\"small\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(302, 15.99, '{\"51\":\"small\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(303, 16.99, '{\"51\":\"small\",\"52\":\"double-decker\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(304, 17.99, '{\"51\":\"medium\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(305, 18.99, '{\"51\":\"medium\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(306, 19.99, '{\"51\":\"medium\",\"52\":\"double-decker\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(307, 20.99, '{\"51\":\"large\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(308, 21.99, '{\"51\":\"large\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(309, 22.99, '{\"51\":\"large\",\"52\":\"double-decker\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(310, 23.99, '{\"51\":\"family\",\"52\":\"hand-tosset\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(311, 24.99, '{\"51\":\"family\",\"52\":\"thin-crust\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(312, 25.99, '{\"51\":\"family\",\"52\":\"double-decker\"}', '', 0, 0, 0, 101, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(313, 14.99, '{\"53\":\"small\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(314, 15.99, '{\"53\":\"small\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(315, 16.99, '{\"53\":\"small\",\"54\":\"double-decker\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(316, 17.99, '{\"53\":\"medium\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(317, 18.99, '{\"53\":\"medium\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(318, 19.99, '{\"53\":\"medium\",\"54\":\"double-decker\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(319, 20.99, '{\"53\":\"large\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(320, 21.99, '{\"53\":\"large\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(321, 22.99, '{\"53\":\"large\",\"54\":\"double-decker\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(322, 23.99, '{\"53\":\"family\",\"54\":\"hand-tosset\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(323, 24.99, '{\"53\":\"family\",\"54\":\"thin-crust\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(324, 25.99, '{\"53\":\"family\",\"54\":\"double-decker\"}', '', 0, 0, 0, 102, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(325, 14.99, '{\"55\":\"small\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(326, 15.99, '{\"55\":\"small\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(327, 16.99, '{\"55\":\"small\",\"56\":\"double-decker\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(328, 17.99, '{\"55\":\"medium\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(329, 18.99, '{\"55\":\"medium\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(330, 19.99, '{\"55\":\"medium\",\"56\":\"double-decker\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(331, 20.99, '{\"55\":\"large\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(332, 21.99, '{\"55\":\"large\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(333, 22.99, '{\"55\":\"large\",\"56\":\"double-decker\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(334, 23.99, '{\"55\":\"family\",\"56\":\"hand-tosset\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(335, 24.99, '{\"55\":\"family\",\"56\":\"thin-crust\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(336, 25.99, '{\"55\":\"family\",\"56\":\"double-decker\"}', '', 0, 0, 0, 103, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(337, 10.49, '{\"57\":\"small\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(338, 11.49, '{\"57\":\"small\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(339, 12.49, '{\"57\":\"small\",\"58\":\"double-decker\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(340, 13.49, '{\"57\":\"medium\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(341, 14.49, '{\"57\":\"medium\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(342, 15.49, '{\"57\":\"medium\",\"58\":\"double-decker\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(343, 16.49, '{\"57\":\"large\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(344, 17.49, '{\"57\":\"large\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(345, 18.49, '{\"57\":\"large\",\"58\":\"double-decker\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(346, 19.49, '{\"57\":\"family\",\"58\":\"hand-tosset\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(347, 20.49, '{\"57\":\"family\",\"58\":\"thin-crust\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(348, 21.49, '{\"57\":\"family\",\"58\":\"double-decker\"}', '', 0, 0, 0, 104, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(349, 39.99, '{\"59\":\"small\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(350, 40.99, '{\"59\":\"small\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(351, 41.99, '{\"59\":\"small\",\"60\":\"double-decker\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(352, 42.99, '{\"59\":\"medium\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(353, 43.99, '{\"59\":\"medium\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(354, 44.99, '{\"59\":\"medium\",\"60\":\"double-decker\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(355, 45.99, '{\"59\":\"large\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(356, 46.99, '{\"59\":\"large\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(357, 47.99, '{\"59\":\"large\",\"60\":\"double-decker\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(358, 48.99, '{\"59\":\"family\",\"60\":\"hand-tosset\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(359, 49.99, '{\"59\":\"family\",\"60\":\"thin-crust\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(360, 50.99, '{\"59\":\"family\",\"60\":\"double-decker\"}', '', 0, 0, 0, 105, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(361, 14.99, '{\"61\":\"small\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(362, 15.99, '{\"61\":\"small\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(363, 16.99, '{\"61\":\"small\",\"62\":\"double-decker\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(364, 17.99, '{\"61\":\"medium\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(365, 18.99, '{\"61\":\"medium\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(366, 19.99, '{\"61\":\"medium\",\"62\":\"double-decker\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(367, 20.99, '{\"61\":\"large\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(368, 21.99, '{\"61\":\"large\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(369, 22.99, '{\"61\":\"large\",\"62\":\"double-decker\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(370, 23.99, '{\"61\":\"family\",\"62\":\"hand-tosset\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(371, 24.99, '{\"61\":\"family\",\"62\":\"thin-crust\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(372, 25.99, '{\"61\":\"family\",\"62\":\"double-decker\"}', '', 0, 0, 0, 106, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(373, 14.99, '{\"63\":\"small\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(374, 15.99, '{\"63\":\"small\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(375, 16.99, '{\"63\":\"small\",\"64\":\"double-decker\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(376, 17.99, '{\"63\":\"medium\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(377, 18.99, '{\"63\":\"medium\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(378, 19.99, '{\"63\":\"medium\",\"64\":\"double-decker\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(379, 20.99, '{\"63\":\"large\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(380, 21.99, '{\"63\":\"large\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(381, 22.99, '{\"63\":\"large\",\"64\":\"double-decker\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(382, 23.99, '{\"63\":\"family\",\"64\":\"hand-tosset\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(383, 24.99, '{\"63\":\"family\",\"64\":\"thin-crust\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(384, 25.99, '{\"63\":\"family\",\"64\":\"double-decker\"}', '', 0, 0, 0, 107, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(385, 14.99, '{\"65\":\"small\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(386, 15.99, '{\"65\":\"small\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(387, 16.99, '{\"65\":\"small\",\"66\":\"double-decker\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(388, 17.99, '{\"65\":\"medium\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(389, 18.99, '{\"65\":\"medium\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(390, 19.99, '{\"65\":\"medium\",\"66\":\"double-decker\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(391, 20.99, '{\"65\":\"large\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(392, 21.99, '{\"65\":\"large\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(393, 22.99, '{\"65\":\"large\",\"66\":\"double-decker\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(394, 23.99, '{\"65\":\"family\",\"66\":\"hand-tosset\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(395, 24.99, '{\"65\":\"family\",\"66\":\"thin-crust\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(396, 25.99, '{\"65\":\"family\",\"66\":\"double-decker\"}', '', 0, 0, 0, 108, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(397, 10.99, '{\"67\":\"small\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(398, 11.99, '{\"67\":\"small\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(399, 12.99, '{\"67\":\"small\",\"68\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(400, 13.99, '{\"67\":\"medium\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(401, 14.99, '{\"67\":\"medium\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(402, 15.99, '{\"67\":\"medium\",\"68\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(403, 16.99, '{\"67\":\"large\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(404, 17.99, '{\"67\":\"large\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(405, 18.99, '{\"67\":\"large\",\"68\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(406, 19.99, '{\"67\":\"family\",\"68\":\"hand-tosset\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(407, 20.99, '{\"67\":\"family\",\"68\":\"thin-crust\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(408, 21.99, '{\"67\":\"family\",\"68\":\"double-decker\"}', '', 0, 0, 0, 160, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(409, 14.99, '{\"69\":\"small\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(410, 15.99, '{\"69\":\"small\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(411, 16.99, '{\"69\":\"small\",\"70\":\"double-decker\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(412, 17.99, '{\"69\":\"medium\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(413, 18.99, '{\"69\":\"medium\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(414, 19.99, '{\"69\":\"medium\",\"70\":\"double-decker\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(415, 20.99, '{\"69\":\"large\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(416, 21.99, '{\"69\":\"large\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(417, 22.99, '{\"69\":\"large\",\"70\":\"double-decker\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(418, 23.99, '{\"69\":\"family\",\"70\":\"hand-tosset\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(419, 24.99, '{\"69\":\"family\",\"70\":\"thin-crust\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(420, 25.99, '{\"69\":\"family\",\"70\":\"double-decker\"}', '', 0, 0, 0, 161, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(421, 14.99, '{\"71\":\"small\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(422, 15.99, '{\"71\":\"small\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(423, 16.99, '{\"71\":\"small\",\"72\":\"double-decker\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(424, 17.99, '{\"71\":\"medium\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(425, 18.99, '{\"71\":\"medium\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(426, 19.99, '{\"71\":\"medium\",\"72\":\"double-decker\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(427, 20.99, '{\"71\":\"large\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(428, 21.99, '{\"71\":\"large\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(429, 22.99, '{\"71\":\"large\",\"72\":\"double-decker\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(430, 23.99, '{\"71\":\"family\",\"72\":\"hand-tosset\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(431, 24.99, '{\"71\":\"family\",\"72\":\"thin-crust\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(432, 25.99, '{\"71\":\"family\",\"72\":\"double-decker\"}', '', 0, 0, 0, 162, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(433, 14.99, '{\"73\":\"small\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(434, 15.99, '{\"73\":\"small\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(435, 16.99, '{\"73\":\"small\",\"74\":\"double-decker\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(436, 17.99, '{\"73\":\"medium\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(437, 18.99, '{\"73\":\"medium\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(438, 19.99, '{\"73\":\"medium\",\"74\":\"double-decker\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(439, 20.99, '{\"73\":\"large\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(440, 21.99, '{\"73\":\"large\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(441, 22.99, '{\"73\":\"large\",\"74\":\"double-decker\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(442, 23.99, '{\"73\":\"family\",\"74\":\"hand-tosset\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(443, 24.99, '{\"73\":\"family\",\"74\":\"thin-crust\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(444, 25.99, '{\"73\":\"family\",\"74\":\"double-decker\"}', '', 0, 0, 0, 163, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(445, 14.99, '{\"75\":\"small\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(446, 15.99, '{\"75\":\"small\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(447, 16.99, '{\"75\":\"small\",\"76\":\"double-decker\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(448, 17.99, '{\"75\":\"medium\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(449, 18.99, '{\"75\":\"medium\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(450, 19.99, '{\"75\":\"medium\",\"76\":\"double-decker\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(451, 20.99, '{\"75\":\"large\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(452, 21.99, '{\"75\":\"large\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(453, 22.99, '{\"75\":\"large\",\"76\":\"double-decker\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(454, 23.99, '{\"75\":\"family\",\"76\":\"hand-tosset\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(455, 24.99, '{\"75\":\"family\",\"76\":\"thin-crust\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(456, 25.99, '{\"75\":\"family\",\"76\":\"double-decker\"}', '', 0, 0, 0, 164, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(457, 14.99, '{\"77\":\"small\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(458, 15.99, '{\"77\":\"small\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(459, 16.99, '{\"77\":\"small\",\"78\":\"double-decker\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(460, 17.99, '{\"77\":\"medium\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(461, 18.99, '{\"77\":\"medium\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(462, 19.99, '{\"77\":\"medium\",\"78\":\"double-decker\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(463, 20.99, '{\"77\":\"large\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(464, 21.99, '{\"77\":\"large\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(465, 22.99, '{\"77\":\"large\",\"78\":\"double-decker\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(466, 23.99, '{\"77\":\"family\",\"78\":\"hand-tosset\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(467, 24.99, '{\"77\":\"family\",\"78\":\"thin-crust\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(468, 25.99, '{\"77\":\"family\",\"78\":\"double-decker\"}', '', 0, 0, 0, 165, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(469, 10.49, '{\"79\":\"small\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(470, 11.49, '{\"79\":\"small\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(471, 12.49, '{\"79\":\"small\",\"80\":\"double-decker\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(472, 13.49, '{\"79\":\"medium\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(473, 14.49, '{\"79\":\"medium\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(474, 15.49, '{\"79\":\"medium\",\"80\":\"double-decker\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(475, 16.49, '{\"79\":\"large\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(476, 17.49, '{\"79\":\"large\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(477, 18.49, '{\"79\":\"large\",\"80\":\"double-decker\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(478, 19.49, '{\"79\":\"family\",\"80\":\"hand-tosset\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(479, 20.49, '{\"79\":\"family\",\"80\":\"thin-crust\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(480, 21.49, '{\"79\":\"family\",\"80\":\"double-decker\"}', '', 0, 0, 0, 166, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(481, 39.99, '{\"81\":\"small\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(482, 40.99, '{\"81\":\"small\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(483, 41.99, '{\"81\":\"small\",\"82\":\"double-decker\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(484, 42.99, '{\"81\":\"medium\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(485, 43.99, '{\"81\":\"medium\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(486, 44.99, '{\"81\":\"medium\",\"82\":\"double-decker\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(487, 45.99, '{\"81\":\"large\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(488, 46.99, '{\"81\":\"large\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(489, 47.99, '{\"81\":\"large\",\"82\":\"double-decker\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(490, 48.99, '{\"81\":\"family\",\"82\":\"hand-tosset\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(491, 49.99, '{\"81\":\"family\",\"82\":\"thin-crust\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(492, 50.99, '{\"81\":\"family\",\"82\":\"double-decker\"}', '', 0, 0, 0, 167, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(493, 14.99, '{\"83\":\"small\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:32', '2021-06-16 09:39:32', NULL),
(494, 15.99, '{\"83\":\"small\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(495, 16.99, '{\"83\":\"small\",\"84\":\"double-decker\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(496, 17.99, '{\"83\":\"medium\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(497, 18.99, '{\"83\":\"medium\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(498, 19.99, '{\"83\":\"medium\",\"84\":\"double-decker\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(499, 20.99, '{\"83\":\"large\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(500, 21.99, '{\"83\":\"large\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(501, 22.99, '{\"83\":\"large\",\"84\":\"double-decker\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(502, 23.99, '{\"83\":\"family\",\"84\":\"hand-tosset\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(503, 24.99, '{\"83\":\"family\",\"84\":\"thin-crust\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(504, 25.99, '{\"83\":\"family\",\"84\":\"double-decker\"}', '', 0, 0, 0, 168, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(505, 14.99, '{\"85\":\"small\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(506, 15.99, '{\"85\":\"small\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(507, 16.99, '{\"85\":\"small\",\"86\":\"double-decker\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(508, 17.99, '{\"85\":\"medium\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(509, 18.99, '{\"85\":\"medium\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(510, 19.99, '{\"85\":\"medium\",\"86\":\"double-decker\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(511, 20.99, '{\"85\":\"large\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(512, 21.99, '{\"85\":\"large\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(513, 22.99, '{\"85\":\"large\",\"86\":\"double-decker\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(514, 23.99, '{\"85\":\"family\",\"86\":\"hand-tosset\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(515, 24.99, '{\"85\":\"family\",\"86\":\"thin-crust\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(516, 25.99, '{\"85\":\"family\",\"86\":\"double-decker\"}', '', 0, 0, 0, 169, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(517, 14.99, '{\"87\":\"small\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(518, 15.99, '{\"87\":\"small\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(519, 16.99, '{\"87\":\"small\",\"88\":\"double-decker\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(520, 17.99, '{\"87\":\"medium\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(521, 18.99, '{\"87\":\"medium\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(522, 19.99, '{\"87\":\"medium\",\"88\":\"double-decker\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(523, 20.99, '{\"87\":\"large\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(524, 21.99, '{\"87\":\"large\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(525, 22.99, '{\"87\":\"large\",\"88\":\"double-decker\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(526, 23.99, '{\"87\":\"family\",\"88\":\"hand-tosset\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(527, 24.99, '{\"87\":\"family\",\"88\":\"thin-crust\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(528, 25.99, '{\"87\":\"family\",\"88\":\"double-decker\"}', '', 0, 0, 0, 170, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(529, 10.99, '{\"89\":\"small\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(530, 11.99, '{\"89\":\"small\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(531, 12.99, '{\"89\":\"small\",\"90\":\"double-decker\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(532, 13.99, '{\"89\":\"medium\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(533, 14.99, '{\"89\":\"medium\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(534, 15.99, '{\"89\":\"medium\",\"90\":\"double-decker\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(535, 16.99, '{\"89\":\"large\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(536, 17.99, '{\"89\":\"large\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(537, 18.99, '{\"89\":\"large\",\"90\":\"double-decker\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(538, 19.99, '{\"89\":\"family\",\"90\":\"hand-tosset\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(539, 20.99, '{\"89\":\"family\",\"90\":\"thin-crust\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(540, 21.99, '{\"89\":\"family\",\"90\":\"double-decker\"}', '', 0, 0, 0, 174, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(541, 14.99, '{\"91\":\"small\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(542, 15.99, '{\"91\":\"small\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(543, 16.99, '{\"91\":\"small\",\"92\":\"double-decker\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(544, 17.99, '{\"91\":\"medium\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(545, 18.99, '{\"91\":\"medium\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(546, 19.99, '{\"91\":\"medium\",\"92\":\"double-decker\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(547, 20.99, '{\"91\":\"large\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(548, 21.99, '{\"91\":\"large\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(549, 22.99, '{\"91\":\"large\",\"92\":\"double-decker\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(550, 23.99, '{\"91\":\"family\",\"92\":\"hand-tosset\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(551, 24.99, '{\"91\":\"family\",\"92\":\"thin-crust\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(552, 25.99, '{\"91\":\"family\",\"92\":\"double-decker\"}', '', 0, 0, 0, 175, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(553, 14.99, '{\"93\":\"small\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(554, 15.99, '{\"93\":\"small\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(555, 16.99, '{\"93\":\"small\",\"94\":\"double-decker\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(556, 17.99, '{\"93\":\"medium\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(557, 18.99, '{\"93\":\"medium\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(558, 19.99, '{\"93\":\"medium\",\"94\":\"double-decker\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(559, 20.99, '{\"93\":\"large\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(560, 21.99, '{\"93\":\"large\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(561, 22.99, '{\"93\":\"large\",\"94\":\"double-decker\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(562, 23.99, '{\"93\":\"family\",\"94\":\"hand-tosset\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(563, 24.99, '{\"93\":\"family\",\"94\":\"thin-crust\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(564, 25.99, '{\"93\":\"family\",\"94\":\"double-decker\"}', '', 0, 0, 0, 176, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(565, 14.99, '{\"95\":\"small\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(566, 15.99, '{\"95\":\"small\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(567, 16.99, '{\"95\":\"small\",\"96\":\"double-decker\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(568, 17.99, '{\"95\":\"medium\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(569, 18.99, '{\"95\":\"medium\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(570, 19.99, '{\"95\":\"medium\",\"96\":\"double-decker\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(571, 20.99, '{\"95\":\"large\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(572, 21.99, '{\"95\":\"large\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(573, 22.99, '{\"95\":\"large\",\"96\":\"double-decker\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(574, 23.99, '{\"95\":\"family\",\"96\":\"hand-tosset\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(575, 24.99, '{\"95\":\"family\",\"96\":\"thin-crust\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(576, 25.99, '{\"95\":\"family\",\"96\":\"double-decker\"}', '', 0, 0, 0, 177, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(577, 14.99, '{\"97\":\"small\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(578, 15.99, '{\"97\":\"small\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(579, 16.99, '{\"97\":\"small\",\"98\":\"double-decker\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(580, 17.99, '{\"97\":\"medium\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(581, 18.99, '{\"97\":\"medium\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(582, 19.99, '{\"97\":\"medium\",\"98\":\"double-decker\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(583, 20.99, '{\"97\":\"large\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(584, 21.99, '{\"97\":\"large\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(585, 22.99, '{\"97\":\"large\",\"98\":\"double-decker\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(586, 23.99, '{\"97\":\"family\",\"98\":\"hand-tosset\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(587, 24.99, '{\"97\":\"family\",\"98\":\"thin-crust\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(588, 25.99, '{\"97\":\"family\",\"98\":\"double-decker\"}', '', 0, 0, 0, 178, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(589, 14.99, '{\"99\":\"small\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(590, 15.99, '{\"99\":\"small\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(591, 16.99, '{\"99\":\"small\",\"100\":\"double-decker\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(592, 17.99, '{\"99\":\"medium\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(593, 18.99, '{\"99\":\"medium\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(594, 19.99, '{\"99\":\"medium\",\"100\":\"double-decker\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(595, 20.99, '{\"99\":\"large\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(596, 21.99, '{\"99\":\"large\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(597, 22.99, '{\"99\":\"large\",\"100\":\"double-decker\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(598, 23.99, '{\"99\":\"family\",\"100\":\"hand-tosset\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(599, 24.99, '{\"99\":\"family\",\"100\":\"thin-crust\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(600, 25.99, '{\"99\":\"family\",\"100\":\"double-decker\"}', '', 0, 0, 0, 179, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(601, 10.49, '{\"101\":\"small\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(602, 11.49, '{\"101\":\"small\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(603, 12.49, '{\"101\":\"small\",\"102\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(604, 13.49, '{\"101\":\"medium\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(605, 14.49, '{\"101\":\"medium\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(606, 15.49, '{\"101\":\"medium\",\"102\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(607, 16.49, '{\"101\":\"large\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(608, 17.49, '{\"101\":\"large\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(609, 18.49, '{\"101\":\"large\",\"102\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(610, 19.49, '{\"101\":\"family\",\"102\":\"hand-tosset\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(611, 20.49, '{\"101\":\"family\",\"102\":\"thin-crust\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(612, 21.49, '{\"101\":\"family\",\"102\":\"double-decker\"}', '', 0, 0, 0, 180, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(613, 39.99, '{\"103\":\"small\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(614, 40.99, '{\"103\":\"small\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(615, 41.99, '{\"103\":\"small\",\"104\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(616, 42.99, '{\"103\":\"medium\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(617, 43.99, '{\"103\":\"medium\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(618, 44.99, '{\"103\":\"medium\",\"104\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(619, 45.99, '{\"103\":\"large\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(620, 46.99, '{\"103\":\"large\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(621, 47.99, '{\"103\":\"large\",\"104\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(622, 48.99, '{\"103\":\"family\",\"104\":\"hand-tosset\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(623, 49.99, '{\"103\":\"family\",\"104\":\"thin-crust\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(624, 50.99, '{\"103\":\"family\",\"104\":\"double-decker\"}', '', 0, 0, 0, 181, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(625, 14.99, '{\"105\":\"small\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(626, 15.99, '{\"105\":\"small\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(627, 16.99, '{\"105\":\"small\",\"106\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(628, 17.99, '{\"105\":\"medium\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(629, 18.99, '{\"105\":\"medium\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(630, 19.99, '{\"105\":\"medium\",\"106\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(631, 20.99, '{\"105\":\"large\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(632, 21.99, '{\"105\":\"large\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(633, 22.99, '{\"105\":\"large\",\"106\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(634, 23.99, '{\"105\":\"family\",\"106\":\"hand-tosset\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(635, 24.99, '{\"105\":\"family\",\"106\":\"thin-crust\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(636, 25.99, '{\"105\":\"family\",\"106\":\"double-decker\"}', '', 0, 0, 0, 182, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(637, 14.99, '{\"107\":\"small\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(638, 15.99, '{\"107\":\"small\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(639, 16.99, '{\"107\":\"small\",\"108\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(640, 17.99, '{\"107\":\"medium\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(641, 18.99, '{\"107\":\"medium\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(642, 19.99, '{\"107\":\"medium\",\"108\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(643, 20.99, '{\"107\":\"large\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(644, 21.99, '{\"107\":\"large\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(645, 22.99, '{\"107\":\"large\",\"108\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(646, 23.99, '{\"107\":\"family\",\"108\":\"hand-tosset\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(647, 24.99, '{\"107\":\"family\",\"108\":\"thin-crust\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(648, 25.99, '{\"107\":\"family\",\"108\":\"double-decker\"}', '', 0, 0, 0, 183, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(649, 14.99, '{\"109\":\"small\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(650, 15.99, '{\"109\":\"small\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(651, 16.99, '{\"109\":\"small\",\"110\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(652, 17.99, '{\"109\":\"medium\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:33', '2021-06-16 09:39:33', NULL),
(653, 18.99, '{\"109\":\"medium\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(654, 19.99, '{\"109\":\"medium\",\"110\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(655, 20.99, '{\"109\":\"large\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(656, 21.99, '{\"109\":\"large\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(657, 22.99, '{\"109\":\"large\",\"110\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(658, 23.99, '{\"109\":\"family\",\"110\":\"hand-tosset\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(659, 24.99, '{\"109\":\"family\",\"110\":\"thin-crust\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(660, 25.99, '{\"109\":\"family\",\"110\":\"double-decker\"}', '', 0, 0, 0, 184, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(661, 10.99, '{\"111\":\"small\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(662, 11.99, '{\"111\":\"small\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(663, 12.99, '{\"111\":\"small\",\"112\":\"double-decker\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(664, 13.99, '{\"111\":\"medium\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(665, 14.99, '{\"111\":\"medium\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(666, 15.99, '{\"111\":\"medium\",\"112\":\"double-decker\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(667, 16.99, '{\"111\":\"large\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(668, 17.99, '{\"111\":\"large\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(669, 18.99, '{\"111\":\"large\",\"112\":\"double-decker\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(670, 19.99, '{\"111\":\"family\",\"112\":\"hand-tosset\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(671, 20.99, '{\"111\":\"family\",\"112\":\"thin-crust\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(672, 21.99, '{\"111\":\"family\",\"112\":\"double-decker\"}', '', 0, 0, 0, 239, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(673, 14.99, '{\"113\":\"small\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(674, 15.99, '{\"113\":\"small\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(675, 16.99, '{\"113\":\"small\",\"114\":\"double-decker\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(676, 17.99, '{\"113\":\"medium\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(677, 18.99, '{\"113\":\"medium\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(678, 19.99, '{\"113\":\"medium\",\"114\":\"double-decker\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(679, 20.99, '{\"113\":\"large\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(680, 21.99, '{\"113\":\"large\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(681, 22.99, '{\"113\":\"large\",\"114\":\"double-decker\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(682, 23.99, '{\"113\":\"family\",\"114\":\"hand-tosset\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(683, 24.99, '{\"113\":\"family\",\"114\":\"thin-crust\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(684, 25.99, '{\"113\":\"family\",\"114\":\"double-decker\"}', '', 0, 0, 0, 240, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(685, 14.99, '{\"115\":\"small\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(686, 15.99, '{\"115\":\"small\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(687, 16.99, '{\"115\":\"small\",\"116\":\"double-decker\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(688, 17.99, '{\"115\":\"medium\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(689, 18.99, '{\"115\":\"medium\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(690, 19.99, '{\"115\":\"medium\",\"116\":\"double-decker\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(691, 20.99, '{\"115\":\"large\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(692, 21.99, '{\"115\":\"large\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(693, 22.99, '{\"115\":\"large\",\"116\":\"double-decker\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(694, 23.99, '{\"115\":\"family\",\"116\":\"hand-tosset\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(695, 24.99, '{\"115\":\"family\",\"116\":\"thin-crust\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(696, 25.99, '{\"115\":\"family\",\"116\":\"double-decker\"}', '', 0, 0, 0, 241, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(697, 14.99, '{\"117\":\"small\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(698, 15.99, '{\"117\":\"small\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(699, 16.99, '{\"117\":\"small\",\"118\":\"double-decker\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(700, 17.99, '{\"117\":\"medium\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(701, 18.99, '{\"117\":\"medium\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(702, 19.99, '{\"117\":\"medium\",\"118\":\"double-decker\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(703, 20.99, '{\"117\":\"large\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(704, 21.99, '{\"117\":\"large\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(705, 22.99, '{\"117\":\"large\",\"118\":\"double-decker\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(706, 23.99, '{\"117\":\"family\",\"118\":\"hand-tosset\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(707, 24.99, '{\"117\":\"family\",\"118\":\"thin-crust\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(708, 25.99, '{\"117\":\"family\",\"118\":\"double-decker\"}', '', 0, 0, 0, 242, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(709, 14.99, '{\"119\":\"small\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(710, 15.99, '{\"119\":\"small\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(711, 16.99, '{\"119\":\"small\",\"120\":\"double-decker\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(712, 17.99, '{\"119\":\"medium\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(713, 18.99, '{\"119\":\"medium\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(714, 19.99, '{\"119\":\"medium\",\"120\":\"double-decker\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(715, 20.99, '{\"119\":\"large\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(716, 21.99, '{\"119\":\"large\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(717, 22.99, '{\"119\":\"large\",\"120\":\"double-decker\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(718, 23.99, '{\"119\":\"family\",\"120\":\"hand-tosset\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(719, 24.99, '{\"119\":\"family\",\"120\":\"thin-crust\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(720, 25.99, '{\"119\":\"family\",\"120\":\"double-decker\"}', '', 0, 0, 0, 243, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(721, 14.99, '{\"121\":\"small\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(722, 15.99, '{\"121\":\"small\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(723, 16.99, '{\"121\":\"small\",\"122\":\"double-decker\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(724, 17.99, '{\"121\":\"medium\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(725, 18.99, '{\"121\":\"medium\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(726, 19.99, '{\"121\":\"medium\",\"122\":\"double-decker\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(727, 20.99, '{\"121\":\"large\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(728, 21.99, '{\"121\":\"large\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(729, 22.99, '{\"121\":\"large\",\"122\":\"double-decker\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(730, 23.99, '{\"121\":\"family\",\"122\":\"hand-tosset\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(731, 24.99, '{\"121\":\"family\",\"122\":\"thin-crust\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(732, 25.99, '{\"121\":\"family\",\"122\":\"double-decker\"}', '', 0, 0, 0, 244, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(733, 10.49, '{\"123\":\"small\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(734, 11.49, '{\"123\":\"small\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(735, 12.49, '{\"123\":\"small\",\"124\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(736, 13.49, '{\"123\":\"medium\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(737, 14.49, '{\"123\":\"medium\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(738, 15.49, '{\"123\":\"medium\",\"124\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(739, 16.49, '{\"123\":\"large\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(740, 17.49, '{\"123\":\"large\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(741, 18.49, '{\"123\":\"large\",\"124\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(742, 19.49, '{\"123\":\"family\",\"124\":\"hand-tosset\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(743, 20.49, '{\"123\":\"family\",\"124\":\"thin-crust\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(744, 21.49, '{\"123\":\"family\",\"124\":\"double-decker\"}', '', 0, 0, 0, 245, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(745, 39.99, '{\"125\":\"small\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(746, 40.99, '{\"125\":\"small\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(747, 41.99, '{\"125\":\"small\",\"126\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(748, 42.99, '{\"125\":\"medium\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(749, 43.99, '{\"125\":\"medium\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(750, 44.99, '{\"125\":\"medium\",\"126\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(751, 45.99, '{\"125\":\"large\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(752, 46.99, '{\"125\":\"large\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(753, 47.99, '{\"125\":\"large\",\"126\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(754, 48.99, '{\"125\":\"family\",\"126\":\"hand-tosset\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(755, 49.99, '{\"125\":\"family\",\"126\":\"thin-crust\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(756, 50.99, '{\"125\":\"family\",\"126\":\"double-decker\"}', '', 0, 0, 0, 246, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(757, 14.99, '{\"127\":\"small\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(758, 15.99, '{\"127\":\"small\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(759, 16.99, '{\"127\":\"small\",\"128\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(760, 17.99, '{\"127\":\"medium\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(761, 18.99, '{\"127\":\"medium\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(762, 19.99, '{\"127\":\"medium\",\"128\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(763, 20.99, '{\"127\":\"large\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(764, 21.99, '{\"127\":\"large\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(765, 22.99, '{\"127\":\"large\",\"128\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(766, 23.99, '{\"127\":\"family\",\"128\":\"hand-tosset\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(767, 24.99, '{\"127\":\"family\",\"128\":\"thin-crust\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(768, 25.99, '{\"127\":\"family\",\"128\":\"double-decker\"}', '', 0, 0, 0, 247, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(769, 14.99, '{\"129\":\"small\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(770, 15.99, '{\"129\":\"small\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(771, 16.99, '{\"129\":\"small\",\"130\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(772, 17.99, '{\"129\":\"medium\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(773, 18.99, '{\"129\":\"medium\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(774, 19.99, '{\"129\":\"medium\",\"130\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(775, 20.99, '{\"129\":\"large\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(776, 21.99, '{\"129\":\"large\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(777, 22.99, '{\"129\":\"large\",\"130\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(778, 23.99, '{\"129\":\"family\",\"130\":\"hand-tosset\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(779, 24.99, '{\"129\":\"family\",\"130\":\"thin-crust\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(780, 25.99, '{\"129\":\"family\",\"130\":\"double-decker\"}', '', 0, 0, 0, 248, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(781, 14.99, '{\"131\":\"small\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL);
INSERT INTO `variants` (`id`, `price`, `options`, `image`, `qty`, `enable_qty`, `order`, `item_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(782, 15.99, '{\"131\":\"small\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(783, 16.99, '{\"131\":\"small\",\"132\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(784, 17.99, '{\"131\":\"medium\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(785, 18.99, '{\"131\":\"medium\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(786, 19.99, '{\"131\":\"medium\",\"132\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(787, 20.99, '{\"131\":\"large\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(788, 21.99, '{\"131\":\"large\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(789, 22.99, '{\"131\":\"large\",\"132\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(790, 23.99, '{\"131\":\"family\",\"132\":\"hand-tosset\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(791, 24.99, '{\"131\":\"family\",\"132\":\"thin-crust\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(792, 25.99, '{\"131\":\"family\",\"132\":\"double-decker\"}', '', 0, 0, 0, 249, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(793, 10.99, '{\"133\":\"small\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(794, 11.99, '{\"133\":\"small\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(795, 12.99, '{\"133\":\"small\",\"134\":\"double-decker\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(796, 13.99, '{\"133\":\"medium\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(797, 14.99, '{\"133\":\"medium\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(798, 15.99, '{\"133\":\"medium\",\"134\":\"double-decker\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(799, 16.99, '{\"133\":\"large\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(800, 17.99, '{\"133\":\"large\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(801, 18.99, '{\"133\":\"large\",\"134\":\"double-decker\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(802, 19.99, '{\"133\":\"family\",\"134\":\"hand-tosset\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(803, 20.99, '{\"133\":\"family\",\"134\":\"thin-crust\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(804, 21.99, '{\"133\":\"family\",\"134\":\"double-decker\"}', '', 0, 0, 0, 262, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(805, 14.99, '{\"135\":\"small\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(806, 15.99, '{\"135\":\"small\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(807, 16.99, '{\"135\":\"small\",\"136\":\"double-decker\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(808, 17.99, '{\"135\":\"medium\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(809, 18.99, '{\"135\":\"medium\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(810, 19.99, '{\"135\":\"medium\",\"136\":\"double-decker\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(811, 20.99, '{\"135\":\"large\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(812, 21.99, '{\"135\":\"large\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(813, 22.99, '{\"135\":\"large\",\"136\":\"double-decker\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(814, 23.99, '{\"135\":\"family\",\"136\":\"hand-tosset\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(815, 24.99, '{\"135\":\"family\",\"136\":\"thin-crust\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(816, 25.99, '{\"135\":\"family\",\"136\":\"double-decker\"}', '', 0, 0, 0, 263, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(817, 14.99, '{\"137\":\"small\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(818, 15.99, '{\"137\":\"small\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(819, 16.99, '{\"137\":\"small\",\"138\":\"double-decker\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(820, 17.99, '{\"137\":\"medium\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(821, 18.99, '{\"137\":\"medium\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(822, 19.99, '{\"137\":\"medium\",\"138\":\"double-decker\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(823, 20.99, '{\"137\":\"large\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(824, 21.99, '{\"137\":\"large\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(825, 22.99, '{\"137\":\"large\",\"138\":\"double-decker\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(826, 23.99, '{\"137\":\"family\",\"138\":\"hand-tosset\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(827, 24.99, '{\"137\":\"family\",\"138\":\"thin-crust\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(828, 25.99, '{\"137\":\"family\",\"138\":\"double-decker\"}', '', 0, 0, 0, 264, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(829, 14.99, '{\"139\":\"small\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(830, 15.99, '{\"139\":\"small\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(831, 16.99, '{\"139\":\"small\",\"140\":\"double-decker\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(832, 17.99, '{\"139\":\"medium\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(833, 18.99, '{\"139\":\"medium\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(834, 19.99, '{\"139\":\"medium\",\"140\":\"double-decker\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(835, 20.99, '{\"139\":\"large\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(836, 21.99, '{\"139\":\"large\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:34', '2021-06-16 09:39:34', NULL),
(837, 22.99, '{\"139\":\"large\",\"140\":\"double-decker\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(838, 23.99, '{\"139\":\"family\",\"140\":\"hand-tosset\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(839, 24.99, '{\"139\":\"family\",\"140\":\"thin-crust\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(840, 25.99, '{\"139\":\"family\",\"140\":\"double-decker\"}', '', 0, 0, 0, 265, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(841, 14.99, '{\"141\":\"small\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(842, 15.99, '{\"141\":\"small\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(843, 16.99, '{\"141\":\"small\",\"142\":\"double-decker\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(844, 17.99, '{\"141\":\"medium\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(845, 18.99, '{\"141\":\"medium\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(846, 19.99, '{\"141\":\"medium\",\"142\":\"double-decker\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(847, 20.99, '{\"141\":\"large\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(848, 21.99, '{\"141\":\"large\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(849, 22.99, '{\"141\":\"large\",\"142\":\"double-decker\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(850, 23.99, '{\"141\":\"family\",\"142\":\"hand-tosset\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(851, 24.99, '{\"141\":\"family\",\"142\":\"thin-crust\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(852, 25.99, '{\"141\":\"family\",\"142\":\"double-decker\"}', '', 0, 0, 0, 266, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(853, 14.99, '{\"143\":\"small\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(854, 15.99, '{\"143\":\"small\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(855, 16.99, '{\"143\":\"small\",\"144\":\"double-decker\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(856, 17.99, '{\"143\":\"medium\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(857, 18.99, '{\"143\":\"medium\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(858, 19.99, '{\"143\":\"medium\",\"144\":\"double-decker\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(859, 20.99, '{\"143\":\"large\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(860, 21.99, '{\"143\":\"large\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(861, 22.99, '{\"143\":\"large\",\"144\":\"double-decker\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(862, 23.99, '{\"143\":\"family\",\"144\":\"hand-tosset\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(863, 24.99, '{\"143\":\"family\",\"144\":\"thin-crust\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(864, 25.99, '{\"143\":\"family\",\"144\":\"double-decker\"}', '', 0, 0, 0, 267, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(865, 10.49, '{\"145\":\"small\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(866, 11.49, '{\"145\":\"small\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(867, 12.49, '{\"145\":\"small\",\"146\":\"double-decker\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(868, 13.49, '{\"145\":\"medium\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(869, 14.49, '{\"145\":\"medium\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(870, 15.49, '{\"145\":\"medium\",\"146\":\"double-decker\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(871, 16.49, '{\"145\":\"large\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(872, 17.49, '{\"145\":\"large\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(873, 18.49, '{\"145\":\"large\",\"146\":\"double-decker\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(874, 19.49, '{\"145\":\"family\",\"146\":\"hand-tosset\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(875, 20.49, '{\"145\":\"family\",\"146\":\"thin-crust\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(876, 21.49, '{\"145\":\"family\",\"146\":\"double-decker\"}', '', 0, 0, 0, 268, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(877, 39.99, '{\"147\":\"small\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(878, 40.99, '{\"147\":\"small\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(879, 41.99, '{\"147\":\"small\",\"148\":\"double-decker\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(880, 42.99, '{\"147\":\"medium\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(881, 43.99, '{\"147\":\"medium\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(882, 44.99, '{\"147\":\"medium\",\"148\":\"double-decker\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(883, 45.99, '{\"147\":\"large\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(884, 46.99, '{\"147\":\"large\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(885, 47.99, '{\"147\":\"large\",\"148\":\"double-decker\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(886, 48.99, '{\"147\":\"family\",\"148\":\"hand-tosset\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(887, 49.99, '{\"147\":\"family\",\"148\":\"thin-crust\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(888, 50.99, '{\"147\":\"family\",\"148\":\"double-decker\"}', '', 0, 0, 0, 269, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(889, 14.99, '{\"149\":\"small\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(890, 15.99, '{\"149\":\"small\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(891, 16.99, '{\"149\":\"small\",\"150\":\"double-decker\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(892, 17.99, '{\"149\":\"medium\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(893, 18.99, '{\"149\":\"medium\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(894, 19.99, '{\"149\":\"medium\",\"150\":\"double-decker\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(895, 20.99, '{\"149\":\"large\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(896, 21.99, '{\"149\":\"large\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(897, 22.99, '{\"149\":\"large\",\"150\":\"double-decker\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(898, 23.99, '{\"149\":\"family\",\"150\":\"hand-tosset\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(899, 24.99, '{\"149\":\"family\",\"150\":\"thin-crust\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(900, 25.99, '{\"149\":\"family\",\"150\":\"double-decker\"}', '', 0, 0, 0, 270, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(901, 14.99, '{\"151\":\"small\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(902, 15.99, '{\"151\":\"small\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(903, 16.99, '{\"151\":\"small\",\"152\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(904, 17.99, '{\"151\":\"medium\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(905, 18.99, '{\"151\":\"medium\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(906, 19.99, '{\"151\":\"medium\",\"152\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(907, 20.99, '{\"151\":\"large\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(908, 21.99, '{\"151\":\"large\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(909, 22.99, '{\"151\":\"large\",\"152\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(910, 23.99, '{\"151\":\"family\",\"152\":\"hand-tosset\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(911, 24.99, '{\"151\":\"family\",\"152\":\"thin-crust\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(912, 25.99, '{\"151\":\"family\",\"152\":\"double-decker\"}', '', 0, 0, 0, 271, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(913, 14.99, '{\"153\":\"small\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(914, 15.99, '{\"153\":\"small\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(915, 16.99, '{\"153\":\"small\",\"154\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(916, 17.99, '{\"153\":\"medium\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(917, 18.99, '{\"153\":\"medium\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(918, 19.99, '{\"153\":\"medium\",\"154\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(919, 20.99, '{\"153\":\"large\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(920, 21.99, '{\"153\":\"large\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(921, 22.99, '{\"153\":\"large\",\"154\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(922, 23.99, '{\"153\":\"family\",\"154\":\"hand-tosset\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(923, 24.99, '{\"153\":\"family\",\"154\":\"thin-crust\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(924, 25.99, '{\"153\":\"family\",\"154\":\"double-decker\"}', '', 0, 0, 0, 272, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(925, 10.99, '{\"155\":\"small\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(926, 11.99, '{\"155\":\"small\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(927, 12.99, '{\"155\":\"small\",\"156\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(928, 13.99, '{\"155\":\"medium\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(929, 14.99, '{\"155\":\"medium\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(930, 15.99, '{\"155\":\"medium\",\"156\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(931, 16.99, '{\"155\":\"large\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(932, 17.99, '{\"155\":\"large\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(933, 18.99, '{\"155\":\"large\",\"156\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(934, 19.99, '{\"155\":\"family\",\"156\":\"hand-tosset\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(935, 20.99, '{\"155\":\"family\",\"156\":\"thin-crust\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(936, 21.99, '{\"155\":\"family\",\"156\":\"double-decker\"}', '', 0, 0, 0, 326, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(937, 14.99, '{\"157\":\"small\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(938, 15.99, '{\"157\":\"small\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(939, 16.99, '{\"157\":\"small\",\"158\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(940, 17.99, '{\"157\":\"medium\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(941, 18.99, '{\"157\":\"medium\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(942, 19.99, '{\"157\":\"medium\",\"158\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(943, 20.99, '{\"157\":\"large\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(944, 21.99, '{\"157\":\"large\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(945, 22.99, '{\"157\":\"large\",\"158\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(946, 23.99, '{\"157\":\"family\",\"158\":\"hand-tosset\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(947, 24.99, '{\"157\":\"family\",\"158\":\"thin-crust\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(948, 25.99, '{\"157\":\"family\",\"158\":\"double-decker\"}', '', 0, 0, 0, 327, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(949, 14.99, '{\"159\":\"small\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(950, 15.99, '{\"159\":\"small\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(951, 16.99, '{\"159\":\"small\",\"160\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(952, 17.99, '{\"159\":\"medium\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(953, 18.99, '{\"159\":\"medium\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(954, 19.99, '{\"159\":\"medium\",\"160\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(955, 20.99, '{\"159\":\"large\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(956, 21.99, '{\"159\":\"large\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(957, 22.99, '{\"159\":\"large\",\"160\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(958, 23.99, '{\"159\":\"family\",\"160\":\"hand-tosset\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(959, 24.99, '{\"159\":\"family\",\"160\":\"thin-crust\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(960, 25.99, '{\"159\":\"family\",\"160\":\"double-decker\"}', '', 0, 0, 0, 328, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(961, 14.99, '{\"161\":\"small\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(962, 15.99, '{\"161\":\"small\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(963, 16.99, '{\"161\":\"small\",\"162\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(964, 17.99, '{\"161\":\"medium\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(965, 18.99, '{\"161\":\"medium\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(966, 19.99, '{\"161\":\"medium\",\"162\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(967, 20.99, '{\"161\":\"large\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(968, 21.99, '{\"161\":\"large\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(969, 22.99, '{\"161\":\"large\",\"162\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(970, 23.99, '{\"161\":\"family\",\"162\":\"hand-tosset\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(971, 24.99, '{\"161\":\"family\",\"162\":\"thin-crust\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(972, 25.99, '{\"161\":\"family\",\"162\":\"double-decker\"}', '', 0, 0, 0, 329, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(973, 14.99, '{\"163\":\"small\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(974, 15.99, '{\"163\":\"small\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(975, 16.99, '{\"163\":\"small\",\"164\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(976, 17.99, '{\"163\":\"medium\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(977, 18.99, '{\"163\":\"medium\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(978, 19.99, '{\"163\":\"medium\",\"164\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(979, 20.99, '{\"163\":\"large\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(980, 21.99, '{\"163\":\"large\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(981, 22.99, '{\"163\":\"large\",\"164\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(982, 23.99, '{\"163\":\"family\",\"164\":\"hand-tosset\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(983, 24.99, '{\"163\":\"family\",\"164\":\"thin-crust\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(984, 25.99, '{\"163\":\"family\",\"164\":\"double-decker\"}', '', 0, 0, 0, 330, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(985, 14.99, '{\"165\":\"small\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(986, 15.99, '{\"165\":\"small\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(987, 16.99, '{\"165\":\"small\",\"166\":\"double-decker\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(988, 17.99, '{\"165\":\"medium\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(989, 18.99, '{\"165\":\"medium\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(990, 19.99, '{\"165\":\"medium\",\"166\":\"double-decker\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(991, 20.99, '{\"165\":\"large\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(992, 21.99, '{\"165\":\"large\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(993, 22.99, '{\"165\":\"large\",\"166\":\"double-decker\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(994, 23.99, '{\"165\":\"family\",\"166\":\"hand-tosset\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(995, 24.99, '{\"165\":\"family\",\"166\":\"thin-crust\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(996, 25.99, '{\"165\":\"family\",\"166\":\"double-decker\"}', '', 0, 0, 0, 331, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(997, 10.49, '{\"167\":\"small\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(998, 11.49, '{\"167\":\"small\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(999, 12.49, '{\"167\":\"small\",\"168\":\"double-decker\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1000, 13.49, '{\"167\":\"medium\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1001, 14.49, '{\"167\":\"medium\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1002, 15.49, '{\"167\":\"medium\",\"168\":\"double-decker\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1003, 16.49, '{\"167\":\"large\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1004, 17.49, '{\"167\":\"large\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1005, 18.49, '{\"167\":\"large\",\"168\":\"double-decker\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1006, 19.49, '{\"167\":\"family\",\"168\":\"hand-tosset\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1007, 20.49, '{\"167\":\"family\",\"168\":\"thin-crust\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1008, 21.49, '{\"167\":\"family\",\"168\":\"double-decker\"}', '', 0, 0, 0, 332, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1009, 39.99, '{\"169\":\"small\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1010, 40.99, '{\"169\":\"small\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1011, 41.99, '{\"169\":\"small\",\"170\":\"double-decker\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1012, 42.99, '{\"169\":\"medium\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1013, 43.99, '{\"169\":\"medium\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1014, 44.99, '{\"169\":\"medium\",\"170\":\"double-decker\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1015, 45.99, '{\"169\":\"large\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1016, 46.99, '{\"169\":\"large\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1017, 47.99, '{\"169\":\"large\",\"170\":\"double-decker\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1018, 48.99, '{\"169\":\"family\",\"170\":\"hand-tosset\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1019, 49.99, '{\"169\":\"family\",\"170\":\"thin-crust\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1020, 50.99, '{\"169\":\"family\",\"170\":\"double-decker\"}', '', 0, 0, 0, 333, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1021, 14.99, '{\"171\":\"small\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1022, 15.99, '{\"171\":\"small\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1023, 16.99, '{\"171\":\"small\",\"172\":\"double-decker\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1024, 17.99, '{\"171\":\"medium\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1025, 18.99, '{\"171\":\"medium\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1026, 19.99, '{\"171\":\"medium\",\"172\":\"double-decker\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1027, 20.99, '{\"171\":\"large\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1028, 21.99, '{\"171\":\"large\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1029, 22.99, '{\"171\":\"large\",\"172\":\"double-decker\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1030, 23.99, '{\"171\":\"family\",\"172\":\"hand-tosset\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1031, 24.99, '{\"171\":\"family\",\"172\":\"thin-crust\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1032, 25.99, '{\"171\":\"family\",\"172\":\"double-decker\"}', '', 0, 0, 0, 334, '2021-06-16 09:39:35', '2021-06-16 09:39:35', NULL),
(1033, 14.99, '{\"173\":\"small\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1034, 15.99, '{\"173\":\"small\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1035, 16.99, '{\"173\":\"small\",\"174\":\"double-decker\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1036, 17.99, '{\"173\":\"medium\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1037, 18.99, '{\"173\":\"medium\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1038, 19.99, '{\"173\":\"medium\",\"174\":\"double-decker\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1039, 20.99, '{\"173\":\"large\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1040, 21.99, '{\"173\":\"large\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1041, 22.99, '{\"173\":\"large\",\"174\":\"double-decker\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1042, 23.99, '{\"173\":\"family\",\"174\":\"hand-tosset\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1043, 24.99, '{\"173\":\"family\",\"174\":\"thin-crust\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1044, 25.99, '{\"173\":\"family\",\"174\":\"double-decker\"}', '', 0, 0, 0, 335, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1045, 14.99, '{\"175\":\"small\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1046, 15.99, '{\"175\":\"small\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1047, 16.99, '{\"175\":\"small\",\"176\":\"double-decker\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1048, 17.99, '{\"175\":\"medium\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1049, 18.99, '{\"175\":\"medium\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1050, 19.99, '{\"175\":\"medium\",\"176\":\"double-decker\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1051, 20.99, '{\"175\":\"large\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1052, 21.99, '{\"175\":\"large\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1053, 22.99, '{\"175\":\"large\",\"176\":\"double-decker\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1054, 23.99, '{\"175\":\"family\",\"176\":\"hand-tosset\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1055, 24.99, '{\"175\":\"family\",\"176\":\"thin-crust\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL),
(1056, 25.99, '{\"175\":\"family\",\"176\":\"double-decker\"}', '', 0, 0, 0, 336, '2021-06-16 09:39:36', '2021-06-16 09:39:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variants_has_extras`
--

CREATE TABLE `variants_has_extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `extra_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants_has_extras`
--

INSERT INTO `variants_has_extras` (`id`, `created_at`, `updated_at`, `variant_id`, `extra_id`) VALUES
(1, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 1, 21),
(2, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 2, 21),
(3, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 3, 21),
(4, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 4, 21),
(5, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 5, 21),
(6, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 6, 21),
(7, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 7, 22),
(8, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 8, 22),
(9, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 9, 22),
(10, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 10, 22),
(11, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 11, 22),
(12, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 12, 22),
(13, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 13, 25),
(14, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 14, 25),
(15, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 15, 25),
(16, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 16, 25),
(17, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 17, 25),
(18, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 18, 25),
(19, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 19, 26),
(20, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 20, 26),
(21, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 21, 26),
(22, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 22, 26),
(23, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 23, 26),
(24, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 24, 26),
(25, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 25, 29),
(26, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 26, 29),
(27, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 27, 29),
(28, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 28, 29),
(29, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 29, 29),
(30, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 30, 29),
(31, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 31, 30),
(32, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 32, 30),
(33, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 33, 30),
(34, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 34, 30),
(35, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 35, 30),
(36, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 36, 30),
(37, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 37, 33),
(38, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 38, 33),
(39, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 39, 33),
(40, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 40, 33),
(41, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 41, 33),
(42, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 42, 33),
(43, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 43, 34),
(44, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 44, 34),
(45, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 45, 34),
(46, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 46, 34),
(47, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 47, 34),
(48, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 48, 34),
(49, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 49, 37),
(50, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 50, 37),
(51, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 51, 37),
(52, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 52, 37),
(53, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 53, 37),
(54, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 54, 37),
(55, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 55, 38),
(56, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 56, 38),
(57, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 57, 38),
(58, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 58, 38),
(59, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 59, 38),
(60, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 60, 38),
(61, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 61, 41),
(62, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 62, 41),
(63, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 63, 41),
(64, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 64, 41),
(65, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 65, 41),
(66, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 66, 41),
(67, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 67, 42),
(68, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 68, 42),
(69, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 69, 42),
(70, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 70, 42),
(71, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 71, 42),
(72, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 72, 42),
(73, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 73, 45),
(74, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 74, 45),
(75, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 75, 45),
(76, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 76, 45),
(77, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 77, 45),
(78, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 78, 45),
(79, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 79, 46),
(80, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 80, 46),
(81, '2021-06-16 09:39:30', '2021-06-16 09:39:30', 81, 46),
(82, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 82, 46),
(83, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 83, 46),
(84, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 84, 46),
(85, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 85, 49),
(86, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 86, 49),
(87, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 87, 49),
(88, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 88, 49),
(89, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 89, 49),
(90, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 90, 49),
(91, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 91, 50),
(92, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 92, 50),
(93, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 93, 50),
(94, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 94, 50),
(95, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 95, 50),
(96, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 96, 50),
(97, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 97, 53),
(98, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 98, 53),
(99, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 99, 53),
(100, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 100, 53),
(101, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 101, 53),
(102, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 102, 53),
(103, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 103, 54),
(104, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 104, 54),
(105, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 105, 54),
(106, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 106, 54),
(107, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 107, 54),
(108, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 108, 54),
(109, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 109, 57),
(110, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 110, 57),
(111, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 111, 57),
(112, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 112, 57),
(113, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 113, 57),
(114, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 114, 57),
(115, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 115, 58),
(116, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 116, 58),
(117, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 117, 58),
(118, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 118, 58),
(119, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 119, 58),
(120, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 120, 58),
(121, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 121, 61),
(122, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 122, 61),
(123, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 123, 61),
(124, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 124, 61),
(125, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 125, 61),
(126, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 126, 61),
(127, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 127, 62),
(128, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 128, 62),
(129, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 129, 62),
(130, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 130, 62),
(131, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 131, 62),
(132, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 132, 62),
(133, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 133, 83),
(134, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 134, 83),
(135, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 135, 83),
(136, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 136, 83),
(137, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 137, 83),
(138, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 138, 83),
(139, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 139, 84),
(140, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 140, 84),
(141, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 141, 84),
(142, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 142, 84),
(143, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 143, 84),
(144, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 144, 84),
(145, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 145, 87),
(146, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 146, 87),
(147, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 147, 87),
(148, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 148, 87),
(149, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 149, 87),
(150, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 150, 87),
(151, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 151, 88),
(152, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 152, 88),
(153, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 153, 88),
(154, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 154, 88),
(155, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 155, 88),
(156, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 156, 88),
(157, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 157, 91),
(158, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 158, 91),
(159, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 159, 91),
(160, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 160, 91),
(161, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 161, 91),
(162, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 162, 91),
(163, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 163, 92),
(164, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 164, 92),
(165, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 165, 92),
(166, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 166, 92),
(167, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 167, 92),
(168, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 168, 92),
(169, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 169, 95),
(170, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 170, 95),
(171, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 171, 95),
(172, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 172, 95),
(173, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 173, 95),
(174, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 174, 95),
(175, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 175, 96),
(176, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 176, 96),
(177, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 177, 96),
(178, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 178, 96),
(179, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 179, 96),
(180, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 180, 96),
(181, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 181, 99),
(182, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 182, 99),
(183, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 183, 99),
(184, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 184, 99),
(185, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 185, 99),
(186, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 186, 99),
(187, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 187, 100),
(188, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 188, 100),
(189, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 189, 100),
(190, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 190, 100),
(191, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 191, 100),
(192, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 192, 100),
(193, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 193, 103),
(194, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 194, 103),
(195, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 195, 103),
(196, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 196, 103),
(197, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 197, 103),
(198, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 198, 103),
(199, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 199, 104),
(200, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 200, 104),
(201, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 201, 104),
(202, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 202, 104),
(203, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 203, 104),
(204, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 204, 104),
(205, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 205, 107),
(206, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 206, 107),
(207, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 207, 107),
(208, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 208, 107),
(209, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 209, 107),
(210, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 210, 107),
(211, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 211, 108),
(212, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 212, 108),
(213, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 213, 108),
(214, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 214, 108),
(215, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 215, 108),
(216, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 216, 108),
(217, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 217, 111),
(218, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 218, 111),
(219, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 219, 111),
(220, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 220, 111),
(221, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 221, 111),
(222, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 222, 111),
(223, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 223, 112),
(224, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 224, 112),
(225, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 225, 112),
(226, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 226, 112),
(227, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 227, 112),
(228, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 228, 112),
(229, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 229, 115),
(230, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 230, 115),
(231, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 231, 115),
(232, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 232, 115),
(233, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 233, 115),
(234, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 234, 115),
(235, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 235, 116),
(236, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 236, 116),
(237, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 237, 116),
(238, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 238, 116),
(239, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 239, 116),
(240, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 240, 116),
(241, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 241, 119),
(242, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 242, 119),
(243, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 243, 119),
(244, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 244, 119),
(245, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 245, 119),
(246, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 246, 119),
(247, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 247, 120),
(248, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 248, 120),
(249, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 249, 120),
(250, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 250, 120),
(251, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 251, 120),
(252, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 252, 120),
(253, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 253, 123),
(254, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 254, 123),
(255, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 255, 123),
(256, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 256, 123),
(257, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 257, 123),
(258, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 258, 123),
(259, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 259, 124),
(260, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 260, 124),
(261, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 261, 124),
(262, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 262, 124),
(263, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 263, 124),
(264, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 264, 124),
(265, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 265, 145),
(266, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 266, 145),
(267, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 267, 145),
(268, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 268, 145),
(269, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 269, 145),
(270, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 270, 145),
(271, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 271, 146),
(272, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 272, 146),
(273, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 273, 146),
(274, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 274, 146),
(275, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 275, 146),
(276, '2021-06-16 09:39:31', '2021-06-16 09:39:31', 276, 146),
(277, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 277, 149),
(278, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 278, 149),
(279, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 279, 149),
(280, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 280, 149),
(281, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 281, 149),
(282, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 282, 149),
(283, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 283, 150),
(284, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 284, 150),
(285, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 285, 150),
(286, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 286, 150),
(287, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 287, 150),
(288, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 288, 150),
(289, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 289, 153),
(290, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 290, 153),
(291, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 291, 153),
(292, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 292, 153),
(293, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 293, 153),
(294, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 294, 153),
(295, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 295, 154),
(296, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 296, 154),
(297, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 297, 154),
(298, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 298, 154),
(299, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 299, 154),
(300, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 300, 154),
(301, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 301, 157),
(302, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 302, 157),
(303, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 303, 157),
(304, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 304, 157),
(305, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 305, 157),
(306, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 306, 157),
(307, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 307, 158),
(308, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 308, 158),
(309, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 309, 158),
(310, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 310, 158),
(311, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 311, 158),
(312, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 312, 158),
(313, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 313, 161),
(314, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 314, 161),
(315, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 315, 161),
(316, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 316, 161),
(317, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 317, 161),
(318, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 318, 161),
(319, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 319, 162),
(320, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 320, 162),
(321, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 321, 162),
(322, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 322, 162),
(323, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 323, 162),
(324, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 324, 162),
(325, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 325, 165),
(326, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 326, 165),
(327, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 327, 165),
(328, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 328, 165),
(329, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 329, 165),
(330, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 330, 165),
(331, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 331, 166),
(332, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 332, 166),
(333, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 333, 166),
(334, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 334, 166),
(335, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 335, 166),
(336, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 336, 166),
(337, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 337, 169),
(338, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 338, 169),
(339, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 339, 169),
(340, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 340, 169),
(341, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 341, 169),
(342, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 342, 169),
(343, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 343, 170),
(344, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 344, 170),
(345, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 345, 170),
(346, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 346, 170),
(347, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 347, 170),
(348, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 348, 170),
(349, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 349, 173),
(350, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 350, 173),
(351, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 351, 173),
(352, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 352, 173),
(353, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 353, 173),
(354, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 354, 173),
(355, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 355, 174),
(356, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 356, 174),
(357, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 357, 174),
(358, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 358, 174),
(359, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 359, 174),
(360, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 360, 174),
(361, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 361, 177),
(362, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 362, 177),
(363, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 363, 177),
(364, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 364, 177),
(365, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 365, 177),
(366, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 366, 177),
(367, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 367, 178),
(368, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 368, 178),
(369, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 369, 178),
(370, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 370, 178),
(371, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 371, 178),
(372, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 372, 178),
(373, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 373, 181),
(374, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 374, 181),
(375, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 375, 181),
(376, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 376, 181),
(377, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 377, 181),
(378, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 378, 181),
(379, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 379, 182),
(380, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 380, 182),
(381, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 381, 182),
(382, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 382, 182),
(383, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 383, 182),
(384, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 384, 182),
(385, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 385, 185),
(386, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 386, 185),
(387, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 387, 185),
(388, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 388, 185),
(389, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 389, 185),
(390, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 390, 185),
(391, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 391, 186),
(392, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 392, 186),
(393, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 393, 186),
(394, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 394, 186),
(395, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 395, 186),
(396, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 396, 186),
(397, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 397, 207),
(398, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 398, 207),
(399, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 399, 207),
(400, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 400, 207),
(401, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 401, 207),
(402, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 402, 207),
(403, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 403, 208),
(404, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 404, 208),
(405, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 405, 208),
(406, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 406, 208),
(407, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 407, 208),
(408, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 408, 208),
(409, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 409, 211),
(410, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 410, 211),
(411, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 411, 211),
(412, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 412, 211),
(413, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 413, 211),
(414, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 414, 211),
(415, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 415, 212),
(416, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 416, 212),
(417, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 417, 212),
(418, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 418, 212),
(419, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 419, 212),
(420, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 420, 212),
(421, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 421, 215),
(422, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 422, 215),
(423, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 423, 215),
(424, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 424, 215),
(425, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 425, 215),
(426, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 426, 215),
(427, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 427, 216),
(428, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 428, 216),
(429, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 429, 216),
(430, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 430, 216),
(431, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 431, 216),
(432, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 432, 216),
(433, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 433, 219),
(434, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 434, 219),
(435, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 435, 219),
(436, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 436, 219),
(437, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 437, 219),
(438, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 438, 219),
(439, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 439, 220),
(440, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 440, 220),
(441, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 441, 220),
(442, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 442, 220),
(443, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 443, 220),
(444, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 444, 220),
(445, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 445, 223),
(446, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 446, 223),
(447, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 447, 223),
(448, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 448, 223),
(449, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 449, 223),
(450, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 450, 223),
(451, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 451, 224),
(452, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 452, 224),
(453, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 453, 224),
(454, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 454, 224),
(455, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 455, 224),
(456, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 456, 224),
(457, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 457, 227),
(458, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 458, 227),
(459, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 459, 227),
(460, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 460, 227),
(461, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 461, 227),
(462, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 462, 227),
(463, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 463, 228),
(464, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 464, 228),
(465, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 465, 228),
(466, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 466, 228),
(467, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 467, 228),
(468, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 468, 228),
(469, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 469, 231),
(470, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 470, 231),
(471, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 471, 231),
(472, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 472, 231),
(473, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 473, 231),
(474, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 474, 231),
(475, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 475, 232),
(476, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 476, 232),
(477, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 477, 232),
(478, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 478, 232),
(479, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 479, 232),
(480, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 480, 232),
(481, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 481, 235),
(482, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 482, 235),
(483, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 483, 235),
(484, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 484, 235),
(485, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 485, 235),
(486, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 486, 235),
(487, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 487, 236),
(488, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 488, 236),
(489, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 489, 236),
(490, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 490, 236),
(491, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 491, 236),
(492, '2021-06-16 09:39:32', '2021-06-16 09:39:32', 492, 236),
(493, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 493, 239),
(494, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 494, 239),
(495, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 495, 239),
(496, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 496, 239),
(497, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 497, 239),
(498, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 498, 239),
(499, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 499, 240),
(500, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 500, 240),
(501, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 501, 240),
(502, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 502, 240),
(503, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 503, 240),
(504, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 504, 240),
(505, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 505, 243),
(506, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 506, 243),
(507, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 507, 243),
(508, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 508, 243),
(509, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 509, 243),
(510, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 510, 243),
(511, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 511, 244),
(512, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 512, 244),
(513, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 513, 244),
(514, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 514, 244),
(515, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 515, 244),
(516, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 516, 244),
(517, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 517, 247),
(518, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 518, 247),
(519, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 519, 247),
(520, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 520, 247),
(521, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 521, 247),
(522, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 522, 247),
(523, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 523, 248),
(524, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 524, 248),
(525, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 525, 248),
(526, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 526, 248),
(527, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 527, 248),
(528, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 528, 248),
(529, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 529, 251),
(530, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 530, 251),
(531, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 531, 251),
(532, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 532, 251),
(533, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 533, 251),
(534, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 534, 251),
(535, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 535, 252),
(536, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 536, 252),
(537, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 537, 252),
(538, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 538, 252),
(539, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 539, 252),
(540, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 540, 252),
(541, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 541, 255),
(542, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 542, 255),
(543, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 543, 255),
(544, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 544, 255),
(545, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 545, 255),
(546, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 546, 255),
(547, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 547, 256),
(548, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 548, 256),
(549, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 549, 256),
(550, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 550, 256),
(551, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 551, 256),
(552, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 552, 256),
(553, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 553, 259),
(554, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 554, 259),
(555, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 555, 259),
(556, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 556, 259),
(557, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 557, 259),
(558, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 558, 259),
(559, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 559, 260),
(560, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 560, 260),
(561, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 561, 260),
(562, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 562, 260),
(563, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 563, 260),
(564, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 564, 260),
(565, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 565, 263),
(566, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 566, 263),
(567, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 567, 263),
(568, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 568, 263),
(569, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 569, 263),
(570, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 570, 263),
(571, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 571, 264),
(572, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 572, 264),
(573, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 573, 264),
(574, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 574, 264),
(575, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 575, 264),
(576, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 576, 264),
(577, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 577, 267),
(578, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 578, 267),
(579, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 579, 267),
(580, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 580, 267),
(581, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 581, 267),
(582, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 582, 267),
(583, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 583, 268),
(584, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 584, 268),
(585, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 585, 268),
(586, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 586, 268),
(587, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 587, 268),
(588, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 588, 268),
(589, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 589, 271),
(590, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 590, 271),
(591, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 591, 271),
(592, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 592, 271),
(593, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 593, 271),
(594, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 594, 271),
(595, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 595, 272),
(596, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 596, 272),
(597, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 597, 272),
(598, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 598, 272),
(599, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 599, 272),
(600, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 600, 272),
(601, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 601, 275),
(602, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 602, 275),
(603, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 603, 275),
(604, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 604, 275),
(605, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 605, 275),
(606, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 606, 275),
(607, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 607, 276),
(608, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 608, 276),
(609, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 609, 276),
(610, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 610, 276),
(611, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 611, 276),
(612, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 612, 276),
(613, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 613, 279),
(614, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 614, 279),
(615, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 615, 279),
(616, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 616, 279),
(617, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 617, 279),
(618, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 618, 279),
(619, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 619, 280),
(620, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 620, 280),
(621, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 621, 280),
(622, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 622, 280),
(623, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 623, 280),
(624, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 624, 280),
(625, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 625, 283),
(626, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 626, 283),
(627, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 627, 283),
(628, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 628, 283),
(629, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 629, 283),
(630, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 630, 283),
(631, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 631, 284),
(632, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 632, 284),
(633, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 633, 284),
(634, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 634, 284),
(635, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 635, 284),
(636, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 636, 284),
(637, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 637, 287),
(638, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 638, 287),
(639, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 639, 287),
(640, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 640, 287),
(641, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 641, 287),
(642, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 642, 287),
(643, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 643, 288),
(644, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 644, 288),
(645, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 645, 288),
(646, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 646, 288),
(647, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 647, 288),
(648, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 648, 288),
(649, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 649, 291),
(650, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 650, 291),
(651, '2021-06-16 09:39:33', '2021-06-16 09:39:33', 651, 291),
(652, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 652, 291),
(653, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 653, 291),
(654, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 654, 291),
(655, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 655, 292),
(656, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 656, 292),
(657, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 657, 292),
(658, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 658, 292),
(659, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 659, 292),
(660, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 660, 292),
(661, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 661, 313),
(662, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 662, 313),
(663, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 663, 313),
(664, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 664, 313),
(665, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 665, 313),
(666, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 666, 313),
(667, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 667, 314),
(668, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 668, 314),
(669, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 669, 314),
(670, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 670, 314),
(671, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 671, 314),
(672, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 672, 314),
(673, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 673, 317),
(674, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 674, 317),
(675, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 675, 317),
(676, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 676, 317),
(677, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 677, 317),
(678, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 678, 317),
(679, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 679, 318),
(680, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 680, 318),
(681, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 681, 318),
(682, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 682, 318),
(683, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 683, 318),
(684, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 684, 318),
(685, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 685, 321),
(686, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 686, 321),
(687, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 687, 321),
(688, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 688, 321),
(689, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 689, 321),
(690, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 690, 321),
(691, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 691, 322),
(692, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 692, 322),
(693, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 693, 322),
(694, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 694, 322),
(695, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 695, 322),
(696, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 696, 322),
(697, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 697, 325),
(698, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 698, 325),
(699, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 699, 325),
(700, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 700, 325),
(701, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 701, 325),
(702, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 702, 325),
(703, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 703, 326),
(704, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 704, 326),
(705, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 705, 326),
(706, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 706, 326),
(707, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 707, 326),
(708, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 708, 326),
(709, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 709, 329),
(710, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 710, 329),
(711, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 711, 329),
(712, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 712, 329),
(713, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 713, 329),
(714, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 714, 329),
(715, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 715, 330),
(716, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 716, 330),
(717, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 717, 330),
(718, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 718, 330),
(719, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 719, 330),
(720, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 720, 330),
(721, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 721, 333),
(722, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 722, 333),
(723, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 723, 333),
(724, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 724, 333),
(725, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 725, 333),
(726, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 726, 333),
(727, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 727, 334),
(728, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 728, 334),
(729, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 729, 334),
(730, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 730, 334),
(731, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 731, 334),
(732, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 732, 334),
(733, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 733, 337),
(734, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 734, 337),
(735, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 735, 337),
(736, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 736, 337),
(737, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 737, 337),
(738, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 738, 337),
(739, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 739, 338),
(740, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 740, 338),
(741, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 741, 338),
(742, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 742, 338),
(743, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 743, 338),
(744, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 744, 338),
(745, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 745, 341),
(746, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 746, 341),
(747, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 747, 341),
(748, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 748, 341),
(749, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 749, 341),
(750, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 750, 341),
(751, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 751, 342),
(752, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 752, 342),
(753, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 753, 342),
(754, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 754, 342),
(755, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 755, 342),
(756, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 756, 342),
(757, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 757, 345),
(758, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 758, 345),
(759, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 759, 345),
(760, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 760, 345),
(761, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 761, 345),
(762, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 762, 345),
(763, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 763, 346),
(764, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 764, 346),
(765, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 765, 346),
(766, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 766, 346),
(767, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 767, 346),
(768, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 768, 346),
(769, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 769, 349),
(770, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 770, 349),
(771, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 771, 349),
(772, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 772, 349),
(773, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 773, 349),
(774, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 774, 349),
(775, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 775, 350),
(776, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 776, 350),
(777, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 777, 350),
(778, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 778, 350),
(779, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 779, 350),
(780, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 780, 350),
(781, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 781, 353),
(782, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 782, 353),
(783, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 783, 353),
(784, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 784, 353),
(785, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 785, 353),
(786, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 786, 353),
(787, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 787, 354),
(788, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 788, 354),
(789, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 789, 354),
(790, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 790, 354),
(791, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 791, 354),
(792, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 792, 354),
(793, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 793, 375),
(794, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 794, 375),
(795, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 795, 375),
(796, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 796, 375),
(797, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 797, 375),
(798, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 798, 375),
(799, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 799, 376),
(800, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 800, 376),
(801, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 801, 376),
(802, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 802, 376),
(803, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 803, 376),
(804, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 804, 376),
(805, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 805, 379),
(806, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 806, 379),
(807, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 807, 379),
(808, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 808, 379),
(809, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 809, 379),
(810, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 810, 379),
(811, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 811, 380),
(812, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 812, 380),
(813, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 813, 380),
(814, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 814, 380),
(815, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 815, 380),
(816, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 816, 380),
(817, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 817, 383),
(818, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 818, 383),
(819, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 819, 383),
(820, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 820, 383),
(821, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 821, 383),
(822, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 822, 383),
(823, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 823, 384),
(824, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 824, 384);
INSERT INTO `variants_has_extras` (`id`, `created_at`, `updated_at`, `variant_id`, `extra_id`) VALUES
(825, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 825, 384),
(826, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 826, 384),
(827, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 827, 384),
(828, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 828, 384),
(829, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 829, 387),
(830, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 830, 387),
(831, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 831, 387),
(832, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 832, 387),
(833, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 833, 387),
(834, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 834, 387),
(835, '2021-06-16 09:39:34', '2021-06-16 09:39:34', 835, 388),
(836, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 836, 388),
(837, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 837, 388),
(838, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 838, 388),
(839, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 839, 388),
(840, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 840, 388),
(841, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 841, 391),
(842, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 842, 391),
(843, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 843, 391),
(844, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 844, 391),
(845, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 845, 391),
(846, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 846, 391),
(847, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 847, 392),
(848, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 848, 392),
(849, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 849, 392),
(850, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 850, 392),
(851, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 851, 392),
(852, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 852, 392),
(853, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 853, 395),
(854, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 854, 395),
(855, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 855, 395),
(856, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 856, 395),
(857, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 857, 395),
(858, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 858, 395),
(859, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 859, 396),
(860, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 860, 396),
(861, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 861, 396),
(862, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 862, 396),
(863, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 863, 396),
(864, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 864, 396),
(865, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 865, 399),
(866, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 866, 399),
(867, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 867, 399),
(868, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 868, 399),
(869, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 869, 399),
(870, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 870, 399),
(871, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 871, 400),
(872, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 872, 400),
(873, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 873, 400),
(874, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 874, 400),
(875, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 875, 400),
(876, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 876, 400),
(877, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 877, 403),
(878, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 878, 403),
(879, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 879, 403),
(880, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 880, 403),
(881, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 881, 403),
(882, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 882, 403),
(883, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 883, 404),
(884, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 884, 404),
(885, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 885, 404),
(886, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 886, 404),
(887, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 887, 404),
(888, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 888, 404),
(889, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 889, 407),
(890, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 890, 407),
(891, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 891, 407),
(892, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 892, 407),
(893, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 893, 407),
(894, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 894, 407),
(895, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 895, 408),
(896, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 896, 408),
(897, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 897, 408),
(898, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 898, 408),
(899, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 899, 408),
(900, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 900, 408),
(901, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 901, 411),
(902, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 902, 411),
(903, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 903, 411),
(904, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 904, 411),
(905, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 905, 411),
(906, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 906, 411),
(907, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 907, 412),
(908, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 908, 412),
(909, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 909, 412),
(910, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 910, 412),
(911, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 911, 412),
(912, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 912, 412),
(913, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 913, 415),
(914, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 914, 415),
(915, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 915, 415),
(916, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 916, 415),
(917, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 917, 415),
(918, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 918, 415),
(919, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 919, 416),
(920, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 920, 416),
(921, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 921, 416),
(922, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 922, 416),
(923, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 923, 416),
(924, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 924, 416),
(925, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 925, 455),
(926, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 926, 455),
(927, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 927, 455),
(928, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 928, 455),
(929, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 929, 455),
(930, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 930, 455),
(931, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 931, 456),
(932, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 932, 456),
(933, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 933, 456),
(934, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 934, 456),
(935, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 935, 456),
(936, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 936, 456),
(937, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 937, 459),
(938, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 938, 459),
(939, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 939, 459),
(940, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 940, 459),
(941, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 941, 459),
(942, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 942, 459),
(943, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 943, 460),
(944, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 944, 460),
(945, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 945, 460),
(946, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 946, 460),
(947, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 947, 460),
(948, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 948, 460),
(949, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 949, 463),
(950, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 950, 463),
(951, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 951, 463),
(952, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 952, 463),
(953, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 953, 463),
(954, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 954, 463),
(955, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 955, 464),
(956, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 956, 464),
(957, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 957, 464),
(958, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 958, 464),
(959, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 959, 464),
(960, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 960, 464),
(961, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 961, 467),
(962, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 962, 467),
(963, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 963, 467),
(964, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 964, 467),
(965, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 965, 467),
(966, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 966, 467),
(967, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 967, 468),
(968, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 968, 468),
(969, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 969, 468),
(970, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 970, 468),
(971, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 971, 468),
(972, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 972, 468),
(973, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 973, 471),
(974, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 974, 471),
(975, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 975, 471),
(976, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 976, 471),
(977, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 977, 471),
(978, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 978, 471),
(979, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 979, 472),
(980, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 980, 472),
(981, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 981, 472),
(982, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 982, 472),
(983, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 983, 472),
(984, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 984, 472),
(985, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 985, 475),
(986, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 986, 475),
(987, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 987, 475),
(988, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 988, 475),
(989, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 989, 475),
(990, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 990, 475),
(991, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 991, 476),
(992, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 992, 476),
(993, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 993, 476),
(994, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 994, 476),
(995, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 995, 476),
(996, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 996, 476),
(997, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 997, 479),
(998, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 998, 479),
(999, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 999, 479),
(1000, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1000, 479),
(1001, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1001, 479),
(1002, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1002, 479),
(1003, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1003, 480),
(1004, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1004, 480),
(1005, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1005, 480),
(1006, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1006, 480),
(1007, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1007, 480),
(1008, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1008, 480),
(1009, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1009, 483),
(1010, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1010, 483),
(1011, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1011, 483),
(1012, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1012, 483),
(1013, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1013, 483),
(1014, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1014, 483),
(1015, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1015, 484),
(1016, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1016, 484),
(1017, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1017, 484),
(1018, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1018, 484),
(1019, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1019, 484),
(1020, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1020, 484),
(1021, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1021, 487),
(1022, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1022, 487),
(1023, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1023, 487),
(1024, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1024, 487),
(1025, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1025, 487),
(1026, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1026, 487),
(1027, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1027, 488),
(1028, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1028, 488),
(1029, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1029, 488),
(1030, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1030, 488),
(1031, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1031, 488),
(1032, '2021-06-16 09:39:35', '2021-06-16 09:39:35', 1032, 488),
(1033, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1033, 491),
(1034, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1034, 491),
(1035, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1035, 491),
(1036, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1036, 491),
(1037, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1037, 491),
(1038, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1038, 491),
(1039, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1039, 492),
(1040, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1040, 492),
(1041, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1041, 492),
(1042, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1042, 492),
(1043, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1043, 492),
(1044, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1044, 492),
(1045, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1045, 495),
(1046, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1046, 495),
(1047, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1047, 495),
(1048, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1048, 495),
(1049, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1049, 495),
(1050, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1050, 495),
(1051, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1051, 496),
(1052, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1052, 496),
(1053, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1053, 496),
(1054, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1054, 496),
(1055, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1055, 496),
(1056, '2021-06-16 09:39:36', '2021-06-16 09:39:36', 1056, 496);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `by` int(11) NOT NULL DEFAULT '1' COMMENT '1 - Owner, 0 - Client Himself',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `name`, `email`, `phone_number`, `note`, `restaurant_id`, `table_id`, `by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'test', 'test@gmail.com', '1706055613', NULL, 1, 2, 2, '2021-06-29 08:18:07', '2021-06-29 08:18:07', NULL),
(3, 'test', 'test@gmail.com', '1706055613', NULL, 1, 2, 2, '2021-06-29 08:20:18', '2021-06-29 08:20:18', NULL),
(4, 'Maraj', 'info@facturisa.ch', 'qweqwe', NULL, 1, 4, 2, '2021-06-29 08:25:23', '2021-06-29 08:25:23', NULL),
(5, 'Maraj', 'md.marajrashid@gmail.com', '8801706055613', NULL, 1, 2, 2, '2021-06-29 08:29:54', '2021-06-29 08:29:54', NULL),
(6, 'Nedim Dauti', 'info@voglio.ch', '0762055215', NULL, 1, 1, 2, '2021-06-29 08:48:27', '2021-06-29 08:48:27', NULL),
(7, 'Nedim Dauti', 'Nedim.dauti@live.com', '0762055215', NULL, 1, 15, 2, '2021-06-29 09:37:09', '2021-06-29 09:37:09', NULL),
(8, 'test', 'test@gmail.com', '1706055613', NULL, 1, 2, 2, '2021-06-29 10:56:20', '2021-06-29 10:56:20', NULL),
(9, 'Nedim Dauti', 'Nedim.dauti@live.com', '0762055215', NULL, 1, 13, 2, '2021-06-29 14:13:35', '2021-06-29 14:13:35', NULL),
(10, 'John Smith', 'johnsmith@gmail.com', '0724239058', NULL, 1, 2, 2, '2021-06-29 15:07:26', '2021-06-29 15:07:26', NULL),
(11, 'John smith', 'johsnmith@gmail.com', '0986432429385', NULL, 1, 2, 2, '2021-06-29 15:09:42', '2021-06-29 15:09:42', NULL),
(12, 'John Smith', 'johnsmith@gmail.com', '09861237645', NULL, 1, 12, 2, '2021-06-29 15:13:27', '2021-06-29 15:13:27', NULL),
(13, 'test', 'test@gmail.com', '8801706055613', 'ghjghj', 1, 3, 2, '2021-06-29 19:07:56', '2021-06-29 19:07:56', NULL),
(14, 'Nedim', 'nedim.dauti@live.com', NULL, NULL, 1, 1, 2, '2021-06-29 19:53:08', '2021-06-29 19:53:08', NULL),
(15, 'test', 'test@gmail.com', NULL, 'ghjghj', 1, 2, 2, '2021-06-30 10:30:57', '2021-06-30 10:30:57', NULL),
(16, 'Maraj', 'md.marajrashid@gmail.com', '8801706055613', 'ghjghj', 1, 2, 2, '2021-07-01 05:24:54', '2021-07-01 05:24:54', NULL),
(17, 'Maraj', 'md.marajrashid@gmail.com', '8801706055613', 'ghjghj', 1, 2, 2, '2021-07-01 05:46:31', '2021-07-01 05:46:31', NULL),
(18, 'Maraj', 'md.marajrashid@gmail.com', '8801706055613', 'ghjghj', 1, 13, 2, '2021-07-01 05:48:07', '2021-07-01 05:48:07', NULL),
(19, 'Maraj', 'md.marajrashid@gmail.com', '8801706055613', 'ghjghj', 1, 2, 2, '2021-07-01 05:50:26', '2021-07-01 05:50:26', NULL),
(20, 'asd', NULL, NULL, NULL, 1, NULL, 2, '2021-07-01 05:59:31', '2021-07-01 05:59:31', NULL),
(21, 'asd', NULL, NULL, NULL, 1, 1, 2, '2021-07-01 06:02:10', '2021-07-01 06:02:10', NULL),
(22, 'Nedim Dauti', 'info@voglio.ch', NULL, NULL, 1, 2, 2, '2021-07-01 09:36:37', '2021-07-01 09:36:37', NULL),
(23, 'Nedim Dauti', 'info@voglio.ch', NULL, NULL, 1, 1, 2, '2021-07-01 09:37:36', '2021-07-01 09:37:36', NULL),
(24, 'Nedim', NULL, NULL, NULL, 1, 3, 2, '2021-07-01 11:04:53', '2021-07-01 11:04:53', NULL),
(25, 'Nedim', 'info@voglio.ch', NULL, NULL, 1, 1, 2, '2021-07-11 14:16:08', '2021-07-11 14:16:08', NULL),
(26, 'Hanif', 'Hanifdauti@ hotmail.com', '075446649', 'Nn', 1, 2, 2, '2021-07-13 17:11:14', '2021-07-13 17:11:14', NULL),
(27, 'Rakesh Maity', 'rakeshmaity271@gmail.com', '9073090507', 'test', 1, 1, 2, '2021-07-18 10:33:29', '2021-07-18 10:33:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_user_id_foreign` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_vendor_id_foreign` (`vendor_id`),
  ADD KEY `banners_page_id_foreign` (`page_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_alias_unique` (`alias`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_item_id_foreign` (`item_id`);

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hours_restorant_id_foreign` (`restorant_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localmenus_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_item_id_foreign` (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_restorant_id_foreign` (`restorant_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_items_order_id_foreign` (`order_id`),
  ADD KEY `order_has_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_status_order_id_foreign` (`order_id`),
  ADD KEY `order_has_status_status_id_foreign` (`status_id`),
  ADD KEY `order_has_status_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paths`
--
ALTER TABLE `paths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_order_id_foreign` (`order_id`);

--
-- Indexes for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restoareas_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `restorants`
--
ALTER TABLE `restorants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restorants_name_unique` (`name`),
  ADD UNIQUE KEY `restorants_subdomain_unique` (`subdomain`),
  ADD KEY `restorants_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_verifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_name_unique` (`name`),
  ADD UNIQUE KEY `status_alias_unique` (`alias`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_plan_unique` (`subscription_id`,`stripe_plan`),
  ADD KEY `subscription_items_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_restoarea_id_foreign` (`restoarea_id`),
  ADD KEY `tables_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_language_id_foreign` (`language_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`),
  ADD UNIQUE KEY `users_verification_code_unique` (`verification_code`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_item_id_foreign` (`item_id`);

--
-- Indexes for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_has_extras_variant_id_foreign` (`variant_id`),
  ADD KEY `variants_has_extras_extra_id_foreign` (`extra_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_restaurant_id_foreign` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;
--
-- AUTO_INCREMENT for table `hours`
--
ALTER TABLE `hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `localmenus`
--
ALTER TABLE `localmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;
--
-- AUTO_INCREMENT for table `order_has_items`
--
ALTER TABLE `order_has_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `order_has_status`
--
ALTER TABLE `order_has_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `paths`
--
ALTER TABLE `paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `restoareas`
--
ALTER TABLE `restoareas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `restorants`
--
ALTER TABLE `restorants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;
--
-- AUTO_INCREMENT for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;
--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `banners_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `hours`
--
ALTER TABLE `hours`
  ADD CONSTRAINT `hours_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `localmenus`
--
ALTER TABLE `localmenus`
  ADD CONSTRAINT `localmenus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_restorant_id_foreign` FOREIGN KEY (`restorant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `order_has_items`
--
ALTER TABLE `order_has_items`
  ADD CONSTRAINT `order_has_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_has_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `order_has_status`
--
ALTER TABLE `order_has_status`
  ADD CONSTRAINT `order_has_status_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_has_status_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `order_has_status_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `restoareas`
--
ALTER TABLE `restoareas`
  ADD CONSTRAINT `restoareas_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);

--
-- Constraints for table `restorants`
--
ALTER TABLE `restorants`
  ADD CONSTRAINT `restorants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sms_verifications`
--
ALTER TABLE `sms_verifications`
  ADD CONSTRAINT `sms_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`),
  ADD CONSTRAINT `tables_restoarea_id_foreign` FOREIGN KEY (`restoarea_id`) REFERENCES `restoareas` (`id`);

--
-- Constraints for table `translations`
--
ALTER TABLE `translations`
  ADD CONSTRAINT `translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `variants_has_extras`
--
ALTER TABLE `variants_has_extras`
  ADD CONSTRAINT `variants_has_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`),
  ADD CONSTRAINT `variants_has_extras_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restorants` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
