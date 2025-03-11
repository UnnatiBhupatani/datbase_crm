-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2025 at 12:52 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_crms`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_customers`
--

CREATE TABLE `assign_customers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_customers`
--

INSERT INTO `assign_customers` (`id`, `user_id`, `customer_id`) VALUES
(85, 22, 58),
(87, 22, 60),
(88, 22, 61),
(89, 22, 62),
(92, 23, 65),
(96, 24, 69),
(99, 26, 72),
(101, 26, 75),
(102, 22, 74),
(103, 22, 64),
(104, 23, 59),
(105, 22, 63),
(106, 22, 68),
(107, 27, 73),
(109, 23, 66),
(110, 22, 67),
(111, 22, 70),
(112, 22, 71);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `customer_id`, `comments`, `created_at`, `updated_at`) VALUES
(2, 62, 'ssss', '2025-03-11 06:05:14', '2025-03-11 06:05:14'),
(3, 61, 'fgfgfh', '2025-03-11 06:06:01', '2025-03-11 06:06:01'),
(8, 58, 'sdaasd', '2025-03-11 06:38:30', '2025-03-11 06:38:30'),
(9, 62, 'asadsad', '2025-03-11 06:54:05', '2025-03-11 06:54:05'),
(10, 58, 'ssss', '2025-03-11 06:54:10', '2025-03-11 06:54:10'),
(11, 58, 'sdssdfsdf', '2025-03-11 06:54:13', '2025-03-11 06:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `customer_FirstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_LastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `customer_id`, `customer_FirstName`, `customer_LastName`, `contact_date`, `description`, `status`, `created_at`, `updated_at`) VALUES
(13, 22, 58, 'Estelle', 'Swaniawski', '2025-03-07', 'sacsad', 'followup', '2025-03-11 00:12:13', '2025-03-11 00:12:13'),
(14, 23, 59, 'Jay', 'Maggio', '2025-03-07', 'wdad', 'pending', '2025-03-11 00:12:21', '2025-03-11 01:25:49'),
(15, 22, 60, 'Sigmund', 'Weissnat', '2025-03-11', 'asdasd', 'done', '2025-03-11 00:12:31', '2025-03-11 00:12:31'),
(16, 22, 62, 'Sterling', 'Johnston', '2025-03-05', 'sdsd', 'followup', '2025-03-11 00:12:40', '2025-03-11 00:12:40'),
(17, 22, 61, 'Manuel', 'Nikolaus', '2025-03-13', 'sdds', 'pending', '2025-03-11 00:12:50', '2025-03-11 00:12:57'),
(18, 22, 63, 'Marian', 'Glover', '2025-03-05', 'dfdf', 'followup', '2025-03-11 00:19:55', '2025-03-11 01:27:13'),
(19, 23, 65, 'Elisha', 'Okuneva', '2025-03-05', 'dfdfsd', 'pending', '2025-03-11 00:20:04', '2025-03-11 00:20:38'),
(20, 23, 66, 'Whitney', 'Cartwright', '2025-03-15', 'dfdsfdf', 'done', '2025-03-11 00:20:13', '2025-03-11 00:20:13'),
(21, 22, 67, 'Kevon', 'Nicolas', '2025-03-07', 'dfdf', 'pending', '2025-03-11 00:20:19', '2025-03-11 07:11:43'),
(22, 22, 64, 'Alisa', 'Yundt', '2025-03-06', 'dfsdfsdf', 'done', '2025-03-11 00:20:27', '2025-03-11 03:12:12'),
(23, 22, 68, 'Elena', 'O\'Connell', '2025-03-13', 'sdsdf', 'done', '2025-03-11 00:21:01', '2025-03-11 01:27:51'),
(24, 24, 69, 'Sandrine', 'Langosh', '2025-03-13', 'dfsdfsdf', 'done', '2025-03-11 00:21:09', '2025-03-11 00:21:22'),
(25, 26, 71, 'Erna', 'Kemmer', '2025-03-01', 'awdsfsdf', 'pending', '2025-03-11 00:22:48', '2025-03-11 00:22:48'),
(26, 26, 75, 'Alisa', 'Leannon', '2025-03-07', 'fsdfsdf', 'followup', '2025-03-11 00:22:56', '2025-03-11 00:22:56'),
(27, 26, 72, 'Mollie', 'Roob', '2025-03-08', 'dfsdfd', 'done', '2025-03-11 00:23:03', '2025-03-11 00:23:03'),
(28, 22, 74, 'Adonis', 'Flatley', '2025-03-08', 'sasdsd', 'done', '2025-03-11 01:27:30', '2025-03-11 07:03:10'),
(29, 22, 70, 'Sebastian', 'Emard', '2025-02-28', 'sdsafd', 'done', '2025-03-11 07:11:56', '2025-03-11 07:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact_histories`
--

CREATE TABLE `contact_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `customer_FirstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Customer_LastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_histories`
--

INSERT INTO `contact_histories` (`id`, `user_id`, `customer_id`, `customer_FirstName`, `Customer_LastName`, `contact_date`, `description`, `contact_status`, `created_at`, `updated_at`) VALUES
(1, 22, 58, 'Estelle', 'Swaniawski', '2025-03-07', 'sacsad', 'followup', '2025-03-11 03:23:15', '2025-03-11 05:05:03'),
(2, 22, 58, 'Estelle', 'Swaniawski', '2025-03-07', 'sacsad', 'followup', '2025-03-11 03:23:27', '2025-03-11 05:06:16'),
(3, 22, 58, 'Estelle', 'Swaniawski', '2025-03-07', 'sacsad', 'followup', '2025-03-11 03:23:42', '2025-03-11 05:05:11'),
(4, 22, 62, 'Sterling', 'Johnston', '2025-03-05', 'sdsd', 'followup', '2025-03-11 04:38:37', '2025-03-11 04:38:37'),
(5, 22, 74, 'Adonis', 'Flatley', '2025-03-08', 'sasdsd', 'pending', '2025-03-11 04:40:39', '2025-03-11 04:40:39'),
(6, 22, 60, 'Sigmund', 'Weissnat', '2025-03-11', 'asdasd', 'done', '2025-03-11 04:42:44', '2025-03-11 04:42:44'),
(7, 22, 60, 'Sigmund', 'Weissnat', '2025-03-11', 'asdasd', 'done', '2025-03-11 04:44:56', '2025-03-11 04:44:56'),
(8, 22, 58, 'Estelle', 'Swaniawski', '2025-03-07', 'sacsad', 'followup', '2025-03-11 05:07:15', '2025-03-11 05:07:28'),
(9, 22, 58, 'Estelle', 'Swaniawski', '2025-03-07', 'sacsad', 'followup', '2025-03-11 05:08:52', '2025-03-11 05:08:58'),
(10, 22, 61, 'Manuel', 'Nikolaus', '2025-03-13', 'sdds', 'pending', '2025-03-11 05:09:32', '2025-03-11 05:11:24'),
(11, 22, 61, 'Manuel', 'Nikolaus', '2025-03-13', 'sdds', 'pending', '2025-03-11 05:09:38', '2025-03-11 05:13:02'),
(12, 22, 61, 'Manuel', 'Nikolaus', '2025-03-13', 'sdds', 'pending', '2025-03-11 05:09:43', '2025-03-11 05:09:43'),
(13, 22, 58, 'Estelle', 'Swaniawski', '2025-03-07', 'sacsad', 'followup', '2025-03-11 05:18:52', '2025-03-11 05:18:52'),
(14, 22, 58, 'Estelle', 'Swaniawski', '2025-03-07', 'sacsad', 'followup', '2025-03-11 05:53:08', '2025-03-11 05:53:08'),
(15, 22, 74, 'Adonis', 'Flatley', '2025-03-08', 'sasdsd', 'done', '2025-03-11 07:03:10', '2025-03-11 07:03:10'),
(16, 22, 67, 'Kevon', 'Nicolas', '2025-03-07', 'dfdf', 'pending', '2025-03-11 07:11:43', '2025-03-11 07:11:43'),
(17, 22, 70, 'Sebastian', 'Emard', '2025-02-28', 'sdsafd', 'done', '2025-03-11 07:11:56', '2025-03-11 07:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `customer_FirstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_LastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phoneNo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `user_id`, `customer_FirstName`, `customer_LastName`, `customer_email`, `customer_gender`, `customer_phoneNo`, `customer_city`, `customer_address`, `created_at`, `updated_at`) VALUES
(58, 24, 'Estelle', 'Swaniawski', 'sporer.katherine@example.com', 'male', '8045695129', 'ahmedabad', '6587 Dewayne Grove\nSouth Brennon, SD 97766', '2025-03-11 00:05:24', '2025-03-11 00:05:24'),
(59, 26, 'Jay', 'Maggio', 'gracie85@example.org', 'female', '7324702897', 'junagadh', '16516 Reynolds Neck Suite 062\nNew Vaughnton, NJ 75266-7378', '2025-03-11 00:05:24', '2025-03-11 00:05:24'),
(60, 24, 'Sigmund', 'Weissnat', 'bosco.tia@example.net', 'female', '5499049080', 'ahmedabad', '9950 Aufderhar Corners\nKohlerport, FL 46205-9847', '2025-03-11 00:05:24', '2025-03-11 00:05:24'),
(61, 22, 'Manuel', 'Nikolaus', 'ruthe53@example.net', 'male', '7393752284', 'baroda', '112 Welch Lodge Suite 422\nWest Humberto, ME 96964', '2025-03-11 00:05:24', '2025-03-11 00:05:24'),
(62, 22, 'Sterling', 'Johnston', 'blick.collin@example.com', 'male', '1329351436', 'junagadh', '400 Stark Village\nHowellfort, FL 79684', '2025-03-11 00:05:24', '2025-03-11 00:05:24'),
(63, 19, 'Marian', 'Glover', 'johns.verla@example.net', 'female', '5042363513', 'baroda', '794 Wyman Spring\nNew Shyannburgh, FL 40539-0983', '2025-03-11 00:05:24', '2025-03-11 00:05:24'),
(64, 19, 'Alisa', 'Yundt', 'aweber@example.com', 'male', '3536411634', 'ahmedabad', '39259 Frances Parks Apt. 424\nPort Francesfurt, NE 61581-1042', '2025-03-11 00:05:24', '2025-03-11 00:05:24'),
(65, 2, 'Elisha', 'Okuneva', 'lilla38@example.net', 'female', '1294813906', 'ahmedabad', '28718 Natasha Heights\nIlianaberg, DC 86028', '2025-03-11 00:05:24', '2025-03-11 00:05:24'),
(66, 26, 'Whitney', 'Cartwright', 'johnpaul.durgan@example.org', 'female', '3132512884', 'ahmedabad', '12864 O\'Hara Heights Suite 330\nEast Rebekabury, NM 32564-4003', '2025-03-11 00:10:22', '2025-03-11 00:10:22'),
(67, 26, 'Kevon', 'Nicolas', 'nwisoky@example.com', 'female', '7948748516', 'ahmedabad', '76658 Eloisa Divide\nGradychester, MI 99679-5585', '2025-03-11 00:10:22', '2025-03-11 00:10:22'),
(68, 19, 'Elena', 'O\'Connell', 'auer.jayden@example.com', 'male', '8781114183', 'baroda', '4466 Turcotte Manors Suite 943\nLake Angus, VT 81660-7296', '2025-03-11 00:10:22', '2025-03-11 00:10:22'),
(69, 22, 'Sandrine', 'Langosh', 'wskiles@example.org', 'male', '8799418803', 'ahmedabad', '704 Donavon Walks\nSouth Abigale, ND 77623-7290', '2025-03-11 00:10:22', '2025-03-11 00:10:22'),
(70, 22, 'Sebastian', 'Emard', 'ruth.mante@example.net', 'male', '1220605600', 'junagadh', '2055 Armani Hill Apt. 086\nPort Furman, MS 07595', '2025-03-11 00:10:22', '2025-03-11 00:10:22'),
(71, 2, 'Erna', 'Kemmer', 'andreanne.strosin@example.net', 'male', '8112963831', 'junagadh', '42528 Kirlin Green Apt. 910\nSouth Erikmouth, IN 56082', '2025-03-11 00:10:22', '2025-03-11 00:10:22'),
(72, 23, 'Mollie', 'Roob', 'merl86@example.net', 'male', '3132473059', 'baroda', '21994 Flatley Pines\nYesseniaville, MN 22291', '2025-03-11 00:10:22', '2025-03-11 00:10:22'),
(73, 19, 'Noelia', 'Kessler', 'jenkins.adan@example.org', 'male', '9187742048', 'junagadh', '1515 Oberbrunner Rapid Suite 073\nSouth Anthonyberg, NH 29621', '2025-03-11 00:10:22', '2025-03-11 00:10:22'),
(74, 24, 'Adonis', 'Flatley', 'haley.carlos@example.net', 'male', '8534096321', 'junagadh', '77499 Bo Spur\nHaneside, KS 47879-0691', '2025-03-11 00:10:22', '2025-03-11 00:10:22'),
(75, 2, 'Alisa', 'Leannon', 'alejandrin.medhurst@example.com', 'male', '1292306318', 'baroda', '33020 Kayleigh Greens\nNorth Gust, NH 20751', '2025-03-11 00:10:22', '2025-03-11 00:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_19_054100_create_cutomer_details_table', 2),
(5, '2025_02_19_055657_create_customer_details_table', 3),
(6, '2025_02_19_060230_create_customer_details_table', 4),
(7, '2025_02_19_062512_create_customer_details_table', 5),
(8, '2025_02_19_063000_create_customer_data_table', 6),
(11, '2025_02_19_085648_create_roles_table', 9),
(12, '2025_02_19_085747_create_permissions_table', 9),
(13, '2025_02_19_092239_role_permission', 10),
(14, '0001_01_01_000000_create_users_table', 11),
(15, '2025_02_20_085909_user_customer', 12),
(32, '2025_02_19_063302_create_customer_details_table', 21),
(33, '2025_02_20_132553_create_contacts_table', 22),
(38, '2025_02_25_051422_create_assign_customers_table', 24),
(39, '2025_02_21_054209_create_contact_histories_table', 25),
(40, '2025_03_11_112044_create_comments_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `permission_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission_name`, `created_at`, `updated_at`) VALUES
(1, 'add_customer', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(2, 'edit_customer', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(3, 'delete_customer', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(4, 'manage_user', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(5, 'manage_permission', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(6, 'assign_customer', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(7, 'contact_customer', '2025-02-12 12:23:28', '2025-02-19 12:23:28'),
(8, 'manage_comments', '2025-02-12 12:23:28', '2025-02-19 12:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2025-02-13 08:59:42', '2025-02-18 18:30:00'),
(2, 'super_admin', NULL, NULL),
(4, 'Executive', '2025-02-24 12:52:10', '2025-02-19 12:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(1, 4),
(2, 4),
(1, 5),
(2, 5),
(1, 6),
(2, 6),
(4, 7),
(1, 8),
(2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('27OuElW4Ij0xOAU3yJ3xMS7B1Ja0kyEXtMhlxkSx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzZEcUZoOVA3dWJQZWNJVmdLYmRMZE84NU1WeENvdEtJQTJzbUMzVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jdXN0b21lci9jb21tZW50cy9kZWxldGUvMTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1741693408),
('O558NSyMGEp5AKeVlW9IPFlZ7FikvBOZ0ojKkrJS', 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY0JtdlI1UXBVYUhsMzNtTE5UQ2RXTWUzNHpRZ0hCb2pYOXlJTlM5QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjIwOiJub3RpZmljYXRpb25fbWVzc2FnZSI7czo0NDoiWW91IGhhdmUgMyBwZW5kaW5nIGFuZCAzIGZvbGxvdy11cCBjb250YWN0cy4iO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE5O30=', 1741697566);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(2, 1, 'Dipali Bhupatani', '$2y$12$ERiu/ma41SfarUbkQcQsae1wRmizpBYw6WYbzsmLt9JPRTXiKaB.q', '2025-02-19 06:02:45', '2025-02-24 07:23:39'),
(19, 2, 'Unnati Bhupatani', '$2y$12$K5lMecc6VZCDKX233BGHCunkwmR9qTZEY.FcILGFg.Axy7xRErPE.', '2025-02-20 01:54:14', '2025-02-24 07:23:16'),
(22, 4, 'Divya Ramavat', '$2y$12$B1PS/WB6ujbV8i/kLK.dFOEeSxBOdCTCo64dDA9LP4h78IbsIapb6', '2025-02-24 07:22:59', '2025-02-24 07:22:59'),
(23, 4, 'shaily doshi', '$2y$12$RKL15N17gTlnfOPHf/Wvfu4/eK6im.ITye6.KqsBsx5h84UrFDv7.', '2025-02-24 23:37:55', '2025-02-24 23:37:55'),
(24, 4, 'sapna pal', '$2y$12$j5F8akuy5lpZsFF77EWX9uzSqr0hyYKf4Ds8.wMcMjIuiCnocJJb6', '2025-02-24 23:38:09', '2025-02-24 23:38:09'),
(26, 4, 'Reema Gotecha', '$2y$12$zNV7sNYNEKW.EPy2K2fGX.BBqyIOQTUuvAwy4bQwfPpwrGZZytzpC', '2025-02-28 05:08:03', '2025-02-28 05:08:03'),
(27, 4, 'Meet Bhupatani', '$2y$12$4t9Zs4aAXQnd6KeGY5F6r.95SiVujT2.ArY5.GwVVztFORBSuegbq', '2025-03-11 02:14:34', '2025-03-11 02:14:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_customers`
--
ALTER TABLE `assign_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assign_customers_customer_id_unique` (`customer_id`),
  ADD KEY `assign_customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`),
  ADD KEY `contacts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `contact_histories`
--
ALTER TABLE `contact_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_histories_user_id_foreign` (`user_id`),
  ADD KEY `contact_histories_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD UNIQUE KEY `role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_customers`
--
ALTER TABLE `assign_customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `contact_histories`
--
ALTER TABLE `contact_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_customers`
--
ALTER TABLE `assign_customers`
  ADD CONSTRAINT `assign_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`id`),
  ADD CONSTRAINT `assign_customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`id`),
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `contact_histories`
--
ALTER TABLE `contact_histories`
  ADD CONSTRAINT `contact_histories_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`id`),
  ADD CONSTRAINT `contact_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD CONSTRAINT `customer_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
