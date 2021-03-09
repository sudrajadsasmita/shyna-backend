-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2021_03_05_110318_create_product_table',	1),
(5,	'2021_03_05_111127_create_product_galleries_table',	2),
(6,	'2021_03_05_112241_create_product_galleries_table',	3),
(7,	'2021_03_05_114829_create_transaction',	4),
(8,	'2021_03_05_120215_create_transaction_detail',	5),
(9,	'2021_03_05_110318_create_products_table',	6),
(10,	'2021_03_05_114829_create_transactions',	6),
(11,	'2021_03_05_120215_create_transaction_details',	6),
(12,	'2021_03_05_122347_create_product_galleries',	7);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `slug`, `type`, `description`, `price`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	'Unikelo Kaos',	'unikelo-kaos',	'Kaos Ringan',	'<p>Deskripsi mas</p>',	1000,	99,	NULL,	NULL,	'2021-03-06 09:18:56'),
(2,	'Kaos LOUI',	'kaos-loui',	'Kaos',	'<p>Kaos Hype</p>',	1000,	9,	'2021-03-06 09:23:20',	'2021-03-06 08:24:45',	'2021-03-06 09:23:20'),
(3,	'Kaos Spandek',	'kaos-spandek',	'Kaos',	'<p>Kaos e wong jones</p>',	90000,	12,	'2021-03-06 09:24:30',	'2021-03-06 09:24:28',	'2021-03-06 09:24:30'),
(4,	'Kaos LOUI',	'kaos-loui',	'Kaos',	'<p>Kaos Umat Sangar</p>',	1999000,	99999,	'2021-03-08 02:36:37',	'2021-03-06 11:14:03',	'2021-03-08 02:36:37'),
(5,	'Kaos LOUI',	'kaos-loui',	'Kaos',	'<p>Kaos apik</p>',	100000,	9,	NULL,	'2021-03-08 10:05:48',	'2021-03-08 10:05:48');

DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_galleries` (`id`, `product_id`, `photo`, `is_default`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3,	1,	'assets/product/NorCz7JeQWptgbpEQvG3p1D8tYom12WgVvRSX9Ep.jpg',	1,	NULL,	'2021-03-06 11:06:36',	'2021-03-06 11:06:36'),
(4,	4,	'assets/product/KLCsR3SZYUD6UNs5oIQyV9thDhCxhv6JEpSgzGFR.png',	1,	'2021-03-06 11:18:58',	'2021-03-06 11:14:32',	'2021-03-06 11:18:58'),
(5,	4,	'assets/product/N9zYyPXHoKrSVDaNpzM7TjXCG3evLqdaZ0fNjkbA.jpg',	1,	'2021-03-08 02:36:37',	'2021-03-08 02:35:52',	'2021-03-08 02:36:37'),
(6,	4,	'assets/product/Om1qQIv39cbilNpRpjA2N2VKEFIAY3b3d2K8RDSW.jpg',	1,	'2021-03-08 02:36:37',	'2021-03-08 02:36:12',	'2021-03-08 02:36:37'),
(7,	5,	'assets/product/k96wtInaHgKepwwWFVUGjBXxfZJc8HSOxu2MaTPO.jpg',	1,	NULL,	'2021-03-08 10:06:11',	'2021-03-08 10:06:11'),
(8,	5,	'assets/product/rT8HmYhO0pfbJYzQtPQ65M6vmjn2E5dElXRP7kIh.jpg',	0,	NULL,	'2021-03-08 10:06:25',	'2021-03-08 10:06:25'),
(9,	5,	'assets/product/yRRKe67wTDaPxVe0QsNF8wdZgrWnRmjmDKlyIg1v.jpg',	0,	NULL,	'2021-03-08 10:06:36',	'2021-03-08 10:06:36');

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transactions` (`id`, `uuid`, `name`, `email`, `number`, `address`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	'SDS000001',	'Sudrajad Dwi Sasmita',	'sudrajad.dwi@gmail.com',	'085607497496',	'Klaten, Jawa tengah',	9,	'SUCCESS',	NULL,	'2021-03-08 13:23:27',	'2021-03-08 11:11:15');

DROP TABLE IF EXISTS `transaction_details`;
CREATE TABLE `transaction_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	NULL,	'2021-03-08 13:24:04',	'2021-03-08 13:24:04');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'admin',	'admin@gmail.com',	NULL,	'$2y$10$yZ4Q5N4itqRi1lNAN.58j.CxHcteco53PPags4L9HcQyflNGXOqTG',	NULL,	'2021-03-05 10:11:40',	'2021-03-05 10:11:40');

-- 2021-03-09 16:05:20
