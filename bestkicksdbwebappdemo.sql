-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2015 at 04:23 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bestkicksdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'And1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Asics', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Converse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Jordan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Levis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'New Balance', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'New Era', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Nike', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Onitsuka Tiger', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Peak', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Puma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Reebok', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Skechers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Sperry', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Under Armour', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Vans', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'World Balance', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pink', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Red', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Orange', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Yellow', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Green', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Blue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Violet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Black', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Grey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'White', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Cream', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Brown', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Multicolor', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL,
  `content` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE IF NOT EXISTS `conditions` (
`id` int(10) unsigned NOT NULL,
  `name` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '5.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '6.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '7.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '8.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '9.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '10.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Caloocan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Las Piñas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Makati', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Malabon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Mandaluyong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Manila', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Marikina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Muntinlupa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Parañaque', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Pasay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Pasig', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Pateros', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Quezon City', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'San Juan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Taguig', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Valenzuela', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_03_08_125315_create_locations_table', 1),
('2015_03_08_125332_create_user_types_table', 1),
('2015_03_08_125341_create_user_statuses_table', 1),
('2015_03_08_125400_create_brands_table', 1),
('2015_03_08_125408_create_colors_table', 1),
('2015_03_08_125417_create_conditions_table', 1),
('2015_03_08_125427_create_sizes_table', 1),
('2015_03_08_125453_create_statuses_table', 1),
('2015_03_08_125511_create_shoe_types_table', 1),
('2015_03_08_125525_create_users_table', 1),
('2015_03_08_125551_create_posts_table', 1),
('2015_03_08_125638_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(10) unsigned NOT NULL,
  `colors_id` int(10) unsigned NOT NULL,
  `sizes_id` int(10) unsigned NOT NULL,
  `brands_id` int(10) unsigned NOT NULL,
  `conditions_id` int(10) unsigned NOT NULL,
  `locations_id` int(10) unsigned NOT NULL,
  `shoe_types_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `statuses_id` int(10) unsigned NOT NULL,
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `frontview` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `backview` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `soleview` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `rightview` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `leftview` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `topview` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `colors_id`, `sizes_id`, `brands_id`, `conditions_id`, `locations_id`, `shoe_types_id`, `users_id`, `statuses_id`, `title`, `description`, `frontview`, `backview`, `soleview`, `rightview`, `leftview`, `topview`, `price`, `created_at`, `updated_at`) VALUES
(1, 13, 7, 9, 6, 3, 1, 6, 1, 'LeBron XII Easter', 'bnds, new release', 'front.jpg', 'back.jpg', 'sole.jpg', 'right.jpg', 'left.jpg', 'top.jpg', '12000.00', '2015-03-29 16:06:03', '2015-03-29 16:06:03'),
(2, 5, 7, 16, 5, 3, 1, 6, 1, 'Curry One Candy Reign', 'cool design, golden state, new release', 'front.jpg', 'back.jpg', 'sole.JPG', 'right.JPG', 'left.JPG', 'top.JPG', '6499.00', '2015-03-29 16:15:33', '2015-03-29 16:15:33'),
(3, 7, 11, 9, 6, 9, 1, 3, 1, 'Kyrie 1 Easter', 'new colorway, uncle drew', 'front.jpg', 'back.jpg', 'sole.jpg', 'right.jpg', 'left.jpg', 'top.jpg', '6299.00', '2015-03-29 16:21:50', '2015-03-29 16:21:50'),
(4, 5, 11, 9, 5, 9, 1, 3, 1, 'KD 7 Easter', 'used twice for balling, good as new', 'front.jpg', 'back.jpg', 'sole.jpg', 'right.jpg', 'left.jpg', 'top.jpg', '7499.00', '2015-03-29 16:28:57', '2015-03-29 17:20:50'),
(5, 9, 13, 1, 6, 9, 1, 4, 1, 'DRose 5 Boost Alternate', 'rush, last price', 'front.jpg', 'back.jpg', 'sole.jpg', 'right.jpg', 'left.jpg', 'top.jpg', '6299.00', '2015-03-29 23:01:01', '2015-03-29 23:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `shoe_types`
--

CREATE TABLE IF NOT EXISTS `shoe_types` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shoe_types`
--

INSERT INTO `shoe_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Basketball', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Running', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Casual', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Formal', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE IF NOT EXISTS `sizes` (
`id` int(10) unsigned NOT NULL,
  `name` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '7.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '7.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '8.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '8.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '9.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '9.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '10.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '10.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '11.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '11.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '12.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '12.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '13.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '13.50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '14.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Up', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Sold', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `locations_id` int(10) unsigned NOT NULL,
  `user_types_id` int(10) unsigned NOT NULL,
  `user_statuses_id` int(10) unsigned NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `middlename` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `mobilenumber` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `display_photo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `valid_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `locations_id`, `user_types_id`, `user_statuses_id`, `username`, `email`, `password`, `remember_token`, `firstname`, `lastname`, `middlename`, `dateofbirth`, `gender`, `mobilenumber`, `display_photo`, `valid_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 'admin', 'admin@email.com', '$2y$10$di0IcRSaMV6n0gJAFly5JOcOAkng2nhC9WWrZZLwMAoWcDZjuTr8y', NULL, 'admin', 'admin', 'admin', '9999-12-31', 'M', '09333817983', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 15, 2, 2, 'asperez', 'asperez@email.com', '$2y$10$i.M322fvd0ZRmNDEpjc7Eep72aL1RgOMwBg66c/xLlagldYujsU/.', 'e0Gqxv0CV9tscQjvUEQS8Vg3R06faGlaXdCIaLwnnh1YPrBoHjIslgj0zkIm', 'Allan Dave', 'Perez', 'Santos', '1994-09-28', 'M', '09752464113', 'SM Aura.jpg', 'God is light.jpg', '0000-00-00 00:00:00', '2015-03-30 05:15:47'),
(3, 9, 3, 2, 'ealim', 'ealim@email.com', '$2y$10$/0opFcMNMocduLUqFJhdFOX9vCDAfuBZak/8w7AjbThwBPADQ4i1e', 'XHp7OBDUFTyNl66fHyZ3sL51F34YhyRl7Jl8WafJPIa8bBx4HSfXK3IllBFn', 'Kenneth Bryan', 'Lim', 'Abellera', '1995-02-14', 'M', '09069502516', 'pag.jpg', '9.jpg', '0000-00-00 00:00:00', '2015-03-29 23:03:49'),
(4, 9, 3, 2, 'jfcanseco', 'jfcanseco@email.com', '$2y$10$pjRFGK1Av70VlrLriwUH8Os.woaoKuOlJqlfMwBY8oQMcoBe9d9em', '7b2wib6zZz77pwrwvYZhgaNmeeaNLwBcXbASKiOzhSl8nM1zohBhEebUuAL6', 'Jose Francisco', 'Canseco', 'Cantuba', '1996-05-28', 'M', '09272754338', '1.jpg', '1489205_10201038950650938_747389208_n.jpg', '0000-00-00 00:00:00', '2015-03-29 23:02:57'),
(5, 1, 2, 2, 'buyer', 'buyer@email.com', '$2y$10$YrCQt4tNlSOKfxMnu6PxBezHN7c2HdMVaE7GQYboHA80P3.eYBLMu', NULL, 'Buyer', 'Buyer', 'Buyer', '2015-01-01', 'M', '09998887777', 'default_user.jpg', 'default_validid.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 3, 2, 'seller', 'seller@email.com', '$2y$10$T.FQmvFJ8wztHpy8.iwKBOD1dk2ibfYVPReOifmBUDItoNMcWhhx2', 'REHNWqu5j7ihrVYg8HnpS1k0MkwWz8vENsmqal3UPBqQUlBKN9fUkrEgeo1X', 'Seller', 'Seller', 'Seller', '2015-01-01', 'M', '09981234567', 'default_user.jpg', 'default_validid.png', '0000-00-00 00:00:00', '2015-03-29 16:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_statuses`
--

CREATE TABLE IF NOT EXISTS `user_statuses` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_statuses`
--

INSERT INTO `user_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Regular', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Verified', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE IF NOT EXISTS `user_types` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Buyer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Seller', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`), ADD KEY `comments_users_id_foreign` (`users_id`), ADD KEY `comments_posts_id_foreign` (`posts_id`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`), ADD KEY `posts_colors_id_foreign` (`colors_id`), ADD KEY `posts_sizes_id_foreign` (`sizes_id`), ADD KEY `posts_brands_id_foreign` (`brands_id`), ADD KEY `posts_conditions_id_foreign` (`conditions_id`), ADD KEY `posts_locations_id_foreign` (`locations_id`), ADD KEY `posts_shoe_types_id_foreign` (`shoe_types_id`), ADD KEY `posts_users_id_foreign` (`users_id`), ADD KEY `posts_statuses_id_foreign` (`statuses_id`);

--
-- Indexes for table `shoe_types`
--
ALTER TABLE `shoe_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD KEY `users_locations_id_foreign` (`locations_id`), ADD KEY `users_user_types_id_foreign` (`user_types_id`), ADD KEY `users_user_statuses_id_foreign` (`user_statuses_id`);

--
-- Indexes for table `user_statuses`
--
ALTER TABLE `user_statuses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `shoe_types`
--
ALTER TABLE `shoe_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_statuses`
--
ALTER TABLE `user_statuses`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `comments_posts_id_foreign` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`),
ADD CONSTRAINT `comments_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_brands_id_foreign` FOREIGN KEY (`brands_id`) REFERENCES `brands` (`id`),
ADD CONSTRAINT `posts_colors_id_foreign` FOREIGN KEY (`colors_id`) REFERENCES `colors` (`id`),
ADD CONSTRAINT `posts_conditions_id_foreign` FOREIGN KEY (`conditions_id`) REFERENCES `conditions` (`id`),
ADD CONSTRAINT `posts_locations_id_foreign` FOREIGN KEY (`locations_id`) REFERENCES `locations` (`id`),
ADD CONSTRAINT `posts_shoe_types_id_foreign` FOREIGN KEY (`shoe_types_id`) REFERENCES `shoe_types` (`id`),
ADD CONSTRAINT `posts_sizes_id_foreign` FOREIGN KEY (`sizes_id`) REFERENCES `sizes` (`id`),
ADD CONSTRAINT `posts_statuses_id_foreign` FOREIGN KEY (`statuses_id`) REFERENCES `statuses` (`id`),
ADD CONSTRAINT `posts_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_locations_id_foreign` FOREIGN KEY (`locations_id`) REFERENCES `locations` (`id`),
ADD CONSTRAINT `users_user_statuses_id_foreign` FOREIGN KEY (`user_statuses_id`) REFERENCES `user_statuses` (`id`),
ADD CONSTRAINT `users_user_types_id_foreign` FOREIGN KEY (`user_types_id`) REFERENCES `user_types` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
