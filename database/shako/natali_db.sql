-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2018 at 10:19 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `natali_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academycourses`
--

CREATE TABLE `academycourses` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ge` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ge` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `description_ru` text COLLATE utf8_unicode_ci,
  `duration` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL,
  `image` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academycourses`
--

INSERT INTO `academycourses` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ge`, `title_en`, `title_ru`, `description_ge`, `description_en`, `description_ru`, `duration`, `price`, `image`) VALUES
(1, NULL, '2018-09-06 08:26:07', '2018-09-06 08:26:07', 'კოლორისტული', 'coloristic', 'колористическое', 'კურსის აღწერა', 'description on english', 'russian description', 'whole course 1 month', 1200, 2);

-- --------------------------------------------------------

--
-- Table structure for table `academyprogramms`
--

CREATE TABLE `academyprogramms` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ge` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `program_type` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academyprogramms`
--

INSERT INTO `academyprogramms` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ge`, `title_en`, `title_ru`, `program_type`, `file`) VALUES
(1, NULL, '2018-09-06 08:49:30', '2018-09-06 08:49:30', 'ფაილის დასახელება', 'this is file title', 'russian file title', 'III step program', 4),
(2, NULL, '2018-09-09 04:43:39', '2018-09-09 04:43:39', NULL, NULL, NULL, 'IV step program', 17),
(3, NULL, '2018-09-09 04:45:07', '2018-09-09 04:45:07', NULL, NULL, NULL, 'III step program', 18),
(4, NULL, '2018-09-09 05:08:41', '2018-09-09 05:08:41', NULL, NULL, NULL, 'III step program', 19),
(5, NULL, '2018-09-09 05:37:47', '2018-09-09 05:37:47', NULL, NULL, NULL, 'standart', 20);

-- --------------------------------------------------------

--
-- Table structure for table `academyteachers`
--

CREATE TABLE `academyteachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description_ge` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `description_ru` text COLLATE utf8_unicode_ci,
  `image` int(11) DEFAULT NULL,
  `name_ge` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ru` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specialist_ge` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specialist_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specialist_ru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academyteachers`
--

INSERT INTO `academyteachers` (`id`, `deleted_at`, `created_at`, `updated_at`, `description_ge`, `description_en`, `description_ru`, `image`, `name_ge`, `name_en`, `name_ru`, `specialist_ge`, `specialist_en`, `specialist_ru`) VALUES
(1, NULL, '2018-09-06 08:46:48', '2018-09-06 08:46:48', 'აღწერა ქართულადა', 'english description', 'russian descr', 3, 'თამარ მახარაშვილი', 'tamar maxarashvili', 'russian teacher name', 'მაკიაჟის სპეციალისტი', 'make-up specialist', 'специалист макияжа ');

-- --------------------------------------------------------

--
-- Table structure for table `antiagecategories`
--

CREATE TABLE `antiagecategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ge` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `antiagesubcategories`
--

CREATE TABLE `antiagesubcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ge` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_category_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beautycategories`
--

CREATE TABLE `beautycategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ge` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `title_ru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beautycategories`
--

INSERT INTO `beautycategories` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ge`, `title_en`, `image`, `title_ru`) VALUES
(1, NULL, '2018-09-06 03:51:31', '2018-09-06 03:51:31', 'თმის მოვლა', 'hire care', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `beautyservices`
--

CREATE TABLE `beautyservices` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ge` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `beautysubcategory_id` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beautyservices`
--

INSERT INTO `beautyservices` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ge`, `title_en`, `price`, `beautysubcategory_id`) VALUES
(1, NULL, '2018-09-06 08:05:23', '2018-09-06 08:05:23', 'კორექცია', 'outlining/correction', '200/100₾', 1);

-- --------------------------------------------------------

--
-- Table structure for table `beautysubcategories`
--

CREATE TABLE `beautysubcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ge` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_category_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `title_ru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beautysubcategories`
--

INSERT INTO `beautysubcategories` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ge`, `title_en`, `parent_category_id`, `title_ru`) VALUES
(1, NULL, '2018-09-06 03:52:42', '2018-09-06 03:52:42', 'მეზოთერაპია', 'mesotherapy', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `deleted_at`, `created_at`, `updated_at`, `name`, `email`, `text`) VALUES
(1, '2018-09-11 04:59:11', '2018-09-11 04:59:02', '2018-09-11 04:59:11', 'soso', 'sosoooooo@mail.com', 'sosoia oxero');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2018-09-05 05:02:22', '2018-09-05 05:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `gender` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'Male',
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `email`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'niko', 'Super Admin', 'Male', 'niko@digitalmate.io', 1, NULL, '2018-09-05 05:03:00', '2018-09-05 05:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Admin', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(2, 'sitename_part1', '', 'Admin', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(3, 'sitename_part2', '', 'Skeleton', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(4, 'sitename_short', '', 'AS', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(5, 'site_description', '', 'Admin Panel Description', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(6, 'sidebar_search', '', '1', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(7, 'show_messages', '', '1', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(8, 'show_notifications', '', '1', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(9, 'show_tasks', '', '1', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(10, 'show_rightsidebar', '', '1', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(11, 'skin', '', 'skin-white', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(12, 'layout', '', 'fixed', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(13, 'default_email', '', 'test@example.com', '2018-09-05 05:02:22', '2018-09-05 05:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'Team', '#', 'fa-group', 'custom', 0, 16, '2018-09-05 05:02:22', '2018-09-09 07:59:20'),
(2, 'Users', 'users', 'fa-group', 'module', 1, 1, '2018-09-05 05:02:22', '2018-09-05 05:30:37'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 14, '2018-09-05 05:02:22', '2018-09-09 08:04:37'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 1, 2, '2018-09-05 05:02:22', '2018-09-05 05:30:37'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 3, '2018-09-05 05:02:22', '2018-09-05 05:30:37'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 4, '2018-09-05 05:02:22', '2018-09-05 05:30:37'),
(7, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 5, '2018-09-05 05:02:22', '2018-09-05 05:30:37'),
(8, 'Beauty', 'http://', 'fa-cube', 'custom', 0, 7, '2018-09-05 05:04:50', '2018-09-09 08:04:37'),
(9, 'Academy', 'http://', 'fa-graduation-cap', 'custom', 0, 8, '2018-09-05 05:04:59', '2018-09-09 08:04:37'),
(11, 'Anti Age Clinic', 'http://', 'fa-cube', 'custom', 0, 9, '2018-09-05 05:05:34', '2018-09-09 08:04:37'),
(12, 'Spa Concept', 'http://', 'fa-cube', 'custom', 0, 10, '2018-09-05 05:05:50', '2018-09-09 08:04:37'),
(13, 'Dry Bar', 'http://', 'fa-cube', 'custom', 0, 11, '2018-09-05 05:06:06', '2018-09-09 08:04:37'),
(14, 'Natali Spa', 'http://', 'fa-cube', 'custom', 0, 12, '2018-09-05 05:06:20', '2018-09-09 08:04:37'),
(15, 'products', 'http://', 'fa-cube', 'custom', 0, 13, '2018-09-05 05:06:36', '2018-09-09 08:04:37'),
(16, 'Site_categories', 'site_categories', 'fa fa-cube', 'module', 20, 1, '2018-09-05 05:13:44', '2018-09-05 05:31:55'),
(17, 'Site_pages', 'site_pages', 'fa fa-cube', 'module', 20, 2, '2018-09-05 05:17:04', '2018-09-05 05:32:03'),
(18, 'BeautyCategories', 'beautycategories', 'fa fa-cube', 'module', 34, 2, '2018-09-05 05:26:14', '2018-09-06 10:21:23'),
(19, 'BeautySubCategories', 'beautysubcategories', 'fa fa-cube', 'module', 34, 3, '2018-09-05 05:30:08', '2018-09-06 10:21:23'),
(20, 'site modules', 'http://', 'fa-cube', 'custom', 0, 5, '2018-09-05 05:31:37', '2018-09-09 07:59:19'),
(21, 'BeautyServices', 'beautyservices', 'fa fa-cube', 'module', 34, 1, '2018-09-05 05:41:08', '2018-09-06 10:21:23'),
(23, 'Page_generators', 'page_generators', 'fa-file-powerpoint-o', 'module', 0, 4, '2018-09-05 08:09:43', '2018-09-09 07:59:19'),
(25, 'AcademyCourses', 'academycourses', 'fa fa-cube', 'module', 9, 2, '2018-09-05 10:49:16', '2018-09-06 08:20:33'),
(26, 'AcademyTeachers', 'academyteachers', 'fa fa-cube', 'module', 9, 3, '2018-09-05 10:55:26', '2018-09-06 08:20:33'),
(27, 'AcademyProgramms', 'academyprogramms', 'fa fa-graduation-cap', 'module', 9, 1, '2018-09-06 08:16:00', '2018-09-06 08:20:33'),
(28, 'AntiAgeCategories', 'antiagecategories', 'fa fa-cubes', 'module', 34, 5, '2018-09-06 09:47:40', '2018-09-06 10:21:23'),
(29, 'AntiAgeSubCategories', 'antiagesubcategories', 'fa fa-sitemap', 'module', 34, 4, '2018-09-06 09:52:46', '2018-09-06 10:21:23'),
(30, 'ServiceCategories', 'servicecategories', 'fa fa-list-ul', 'module', 32, 1, '2018-09-06 10:05:12', '2018-09-06 10:12:34'),
(31, 'ServiceSubCategories', 'servicesubcategories', 'fa fa-sitemap', 'module', 32, 2, '2018-09-06 10:09:13', '2018-09-06 10:12:34'),
(32, 'Servises', 'http://', 'fa-cart-arrow-down', 'custom', 0, 6, '2018-09-06 10:12:10', '2018-09-09 07:59:19'),
(33, 'Services', 'services', 'fa fa-opencart', 'module', 32, 3, '2018-09-06 10:18:36', '2018-09-06 10:18:52'),
(34, 'Reserved modules', 'http://', 'fa-save', 'custom', 0, 15, '2018-09-06 10:20:11', '2018-09-09 07:59:20'),
(35, 'Partners', 'partners', 'fa fa-black-tie', 'module', 0, 1, '2018-09-06 11:37:02', '2018-09-09 07:59:19'),
(36, 'Sliders', 'sliders', 'fa fa-image', 'module', 0, 2, '2018-09-06 13:36:50', '2018-09-09 07:59:19'),
(37, 'News', 'news', 'fa fa-newspaper-o', 'module', 0, 3, '2018-09-06 15:05:36', '2018-09-09 07:59:19'),
(38, 'SpaConceptPartners', 'spaconceptpartners', 'fa fa-cube', 'module', 12, 1, '2018-09-09 07:57:09', '2018-09-09 07:59:20'),
(39, 'SpaConcepTestimonials', 'spaconceptestimonials', 'fa fa-cube', 'module', 12, 2, '2018-09-09 09:11:25', '2018-09-09 09:11:38'),
(40, 'SpaConceptGalleries', 'spaconceptgalleries', 'fa fa-image', 'module', 12, 3, '2018-09-10 09:21:02', '2018-09-10 09:25:48'),
(41, 'Contacts', 'contacts', 'fa fa-cube', 'module', 0, 0, '2018-09-11 04:41:09', '2018-09-11 04:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_05_26_050000_create_modules_table', 1),
(2, '2014_05_26_055000_create_module_field_types_table', 1),
(3, '2014_05_26_060000_create_module_fields_table', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2014_12_01_000000_create_uploads_table', 1),
(7, '2016_05_26_064006_create_departments_table', 1),
(8, '2016_05_26_064007_create_employees_table', 1),
(9, '2016_05_26_064446_create_roles_table', 1),
(10, '2016_07_05_115343_create_role_user_table', 1),
(11, '2016_07_07_134058_create_backups_table', 1),
(12, '2016_07_07_134058_create_menus_table', 1),
(13, '2016_09_10_163337_create_permissions_table', 1),
(14, '2016_09_10_163520_create_permission_role_table', 1),
(15, '2016_09_22_105958_role_module_fields_table', 1),
(16, '2016_09_22_110008_role_module_table', 1),
(17, '2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2018-09-05 05:02:18', '2018-09-05 05:02:22'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2018-09-05 05:02:18', '2018-09-05 05:02:22'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2018-09-05 05:02:18', '2018-09-05 05:02:22'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2018-09-05 05:02:19', '2018-09-05 05:02:22'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2018-09-05 05:02:19', '2018-09-05 05:02:22'),
(6, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2018-09-05 05:02:20', '2018-09-05 05:02:22'),
(7, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2018-09-05 05:02:20', '2018-09-05 05:02:22'),
(8, 'Site_categories', 'Site_categories', 'site_categories', 'title_ge', 'Site_category', 'Site_categoriesController', 'fa-cube', 1, '2018-09-05 05:12:05', '2018-09-05 05:13:44'),
(9, 'Site_pages', 'Site_pages', 'site_pages', 'title_ge', 'Site_page', 'Site_pagesController', 'fa-cube', 1, '2018-09-05 05:14:22', '2018-09-05 05:17:04'),
(10, 'BeautyCategories', 'BeautyCategories', 'beautycategories', 'title_ge', 'BeautyCategory', 'BeautyCategoriesController', 'fa-cube', 1, '2018-09-05 05:24:05', '2018-09-05 05:26:14'),
(11, 'BeautySubCategories', 'BeautySubCategories', 'beautysubcategories', 'title_ge', 'BeautySubCategory', 'BeautySubCategoriesController', 'fa-cube', 1, '2018-09-05 05:26:46', '2018-09-05 05:30:08'),
(12, 'BeautyServices', 'BeautyServices', 'beautyservices', 'title_ge', 'BeautyService', 'BeautyServicesController', 'fa-cube', 1, '2018-09-05 05:32:42', '2018-09-05 05:41:08'),
(15, 'Page_generators', 'Page_generators', 'page_generators', 'title_ge', 'Page_generator', 'Page_generatorsController', 'fa-cube', 1, '2018-09-05 07:52:31', '2018-09-05 08:09:43'),
(16, 'AcademyCourses', 'AcademyCourses', 'academycourses', 'title_ge', 'AcademyCourse', 'AcademyCoursesController', 'fa-cube', 1, '2018-09-05 10:42:08', '2018-09-05 10:49:16'),
(17, 'AcademyTeachers', 'AcademyTeachers', 'academyteachers', 'name_ge', 'AcademyTeacher', 'AcademyTeachersController', 'fa-cube', 1, '2018-09-05 10:50:29', '2018-09-06 08:42:29'),
(18, 'AcademyProgramms', 'AcademyProgramms', 'academyprogramms', 'title_ge', 'AcademyProgramm', 'AcademyProgrammsController', 'fa-graduation-cap', 1, '2018-09-06 08:11:19', '2018-09-06 08:16:00'),
(19, 'AntiAgeCategories', 'AntiAgeCategories', 'antiagecategories', 'title_ge', 'AntiAgeCategory', 'AntiAgeCategoriesController', 'fa-cubes', 1, '2018-09-06 09:44:40', '2018-09-06 09:47:40'),
(20, 'AntiAgeSubCategories', 'AntiAgeSubCategories', 'antiagesubcategories', 'title_ge', 'AntiAgeSubCategory', 'AntiAgeSubCategoriesController', 'fa-sitemap', 1, '2018-09-06 09:49:34', '2018-09-06 09:52:46'),
(21, 'ServiceCategories', 'ServiceCategories', 'servicecategories', 'title_ge', 'ServiceCategory', 'ServiceCategoriesController', 'fa-list-ul', 1, '2018-09-06 10:01:31', '2018-09-06 10:05:12'),
(22, 'ServiceSubCategories', 'ServiceSubCategories', 'servicesubcategories', 'title_ge', 'ServiceSubCategory', 'ServiceSubCategoriesController', 'fa-sitemap', 1, '2018-09-06 10:06:52', '2018-09-06 10:09:13'),
(23, 'Services', 'Services', 'services', 'title_ge', 'Service', 'ServicesController', 'fa-opencart', 1, '2018-09-06 10:14:03', '2018-09-06 10:18:36'),
(24, 'Partners', 'Partners', 'partners', 'name', 'Partner', 'PartnersController', 'fa-black-tie', 1, '2018-09-06 11:35:49', '2018-09-06 11:37:02'),
(25, 'Sliders', 'Sliders', 'sliders', 'page_id', 'Slider', 'SlidersController', 'fa-image', 1, '2018-09-06 13:33:04', '2018-09-06 13:36:50'),
(26, 'News', 'News', 'news', 'title_ge', 'News', 'NewsController', 'fa-newspaper-o', 1, '2018-09-06 15:01:17', '2018-09-06 15:05:36'),
(27, 'SpaConceptPartners', 'SpaConceptPartners', 'spaconceptpartners', 'title_ge', 'SpaConceptPartner', 'SpaConceptPartnersController', 'fa-cube', 1, '2018-09-09 07:53:58', '2018-09-09 07:57:09'),
(28, 'SpaConcepTestimonials', 'SpaConcepTestimonials', 'spaconceptestimonials', 'name_ge', 'SpaConcepTestimonial', 'SpaConcepTestimonialsController', 'fa-cube', 1, '2018-09-09 09:07:12', '2018-09-09 09:15:55'),
(29, 'SpaConceptGalleries', 'SpaConceptGalleries', 'spaconceptgalleries', 'image', 'SpaConceptGallery', 'SpaConceptGalleriesController', 'fa-image', 1, '2018-09-10 09:10:09', '2018-09-10 09:21:02'),
(30, 'Contacts', 'Contacts', 'contacts', 'name', 'Contact', 'ContactsController', 'fa-cube', 1, '2018-09-11 04:40:11', '2018-09-11 04:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(9, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(10, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(11, 'type', 'Type', 2, 13, 0, '0', 0, 20, 0, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(12, 'size', 'Size', 2, 22, 0, '', 0, 250, 1, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(13, 'url', 'Url', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(14, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(15, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(16, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2018-09-05 05:02:18', '2018-09-05 05:02:18'),
(17, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2018-09-05 05:02:19', '2018-09-05 05:02:19'),
(18, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2018-09-05 05:02:19', '2018-09-05 05:02:19'),
(19, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2018-09-05 05:02:19', '2018-09-05 05:02:19'),
(20, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2018-09-05 05:02:19', '2018-09-05 05:02:19'),
(21, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2018-09-05 05:02:19', '2018-09-05 05:02:19'),
(22, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2018-09-05 05:02:19', '2018-09-05 05:02:19'),
(23, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2018-09-05 05:02:19', '2018-09-05 05:02:19'),
(24, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2018-09-05 05:02:19', '2018-09-05 05:02:19'),
(25, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2018-09-05 05:02:19', '2018-09-05 05:02:19'),
(26, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2018-09-05 05:02:19', '2018-09-05 05:02:19'),
(27, 'name', 'Name', 6, 16, 1, '', 0, 250, 1, '', 0, '2018-09-05 05:02:20', '2018-09-05 05:02:20'),
(28, 'file_name', 'File Name', 6, 19, 1, '', 0, 250, 1, '', 0, '2018-09-05 05:02:20', '2018-09-05 05:02:20'),
(29, 'backup_size', 'File Size', 6, 19, 0, '0', 0, 10, 1, '', 0, '2018-09-05 05:02:20', '2018-09-05 05:02:20'),
(30, 'name', 'Name', 7, 16, 1, '', 1, 250, 1, '', 0, '2018-09-05 05:02:20', '2018-09-05 05:02:20'),
(31, 'display_name', 'Display Name', 7, 19, 0, '', 0, 250, 1, '', 0, '2018-09-05 05:02:20', '2018-09-05 05:02:20'),
(32, 'description', 'Description', 7, 21, 0, '', 0, 1000, 0, '', 0, '2018-09-05 05:02:20', '2018-09-05 05:02:20'),
(34, 'title_ge', 'Title ge', 8, 19, 0, '', 0, 50, 0, '', 0, '2018-09-05 05:13:14', '2018-09-05 05:13:14'),
(35, 'title_en', 'Title en', 8, 19, 0, '', 0, 50, 0, '', 0, '2018-09-05 05:13:29', '2018-09-05 05:13:29'),
(36, 'site_category_id', 'Site Category Id', 9, 7, 0, '', 0, 0, 0, '@site_categories', 1, '2018-09-05 05:15:36', '2018-09-05 05:15:36'),
(37, 'title_ge', 'Title ge', 9, 19, 0, '', 0, 100, 0, '', 2, '2018-09-05 05:16:32', '2018-09-05 05:16:32'),
(38, 'title_en', 'Title en', 9, 19, 0, '', 0, 100, 0, '', 3, '2018-09-05 05:16:52', '2018-09-05 05:16:52'),
(39, 'url', 'Url', 9, 19, 0, '', 0, 256, 0, '', 5, '2018-09-05 05:19:34', '2018-09-05 05:19:34'),
(40, 'title_ge', 'Title ge', 10, 19, 0, '', 0, 100, 0, '', 1, '2018-09-05 05:25:05', '2018-09-05 05:25:05'),
(41, 'title_en', 'Title en', 10, 19, 0, '', 0, 100, 0, '', 2, '2018-09-05 05:25:36', '2018-09-05 05:25:36'),
(42, 'image', 'Image', 10, 12, 0, '', 0, 0, 0, '', 4, '2018-09-05 05:25:59', '2018-09-05 05:25:59'),
(43, 'title_ge', 'Title ge', 11, 19, 0, '', 0, 256, 0, '', 2, '2018-09-05 05:28:05', '2018-09-05 05:28:05'),
(44, 'title_en', 'Title en', 11, 19, 0, '', 0, 256, 0, '', 3, '2018-09-05 05:28:18', '2018-09-05 05:28:18'),
(45, 'parent_category_id', 'Parent Category id', 11, 7, 0, '', 0, 0, 0, '@beautycategories', 1, '2018-09-05 05:30:00', '2018-09-05 05:30:00'),
(46, 'title_ge', 'Title ge', 12, 19, 0, '', 0, 256, 0, '', 0, '2018-09-05 05:40:09', '2018-09-05 05:40:09'),
(47, 'title_en', 'Title en', 12, 19, 0, '', 0, 256, 0, '', 0, '2018-09-05 05:40:22', '2018-09-05 05:40:22'),
(48, 'price', 'Price', 12, 19, 0, '', 0, 20, 0, '', 0, '2018-09-05 05:40:59', '2018-09-05 05:40:59'),
(60, 'site_category_id', 'site category id', 15, 7, 0, '', 0, 0, 0, '@site_categories', 0, '2018-09-05 07:53:53', '2018-09-05 07:53:53'),
(61, 'page_id', 'page id', 15, 7, 0, '', 0, 0, 0, '@site_pages', 0, '2018-09-05 07:54:58', '2018-09-05 07:54:58'),
(62, 'section_select', 'section select', 15, 7, 0, '', 0, 0, 0, '[\"top section\",\"central section\",\"bottom section\"]', 0, '2018-09-05 07:56:42', '2018-09-05 07:56:42'),
(63, 'title_ge', 'title ge', 15, 19, 0, '', 0, 256, 0, '', 0, '2018-09-05 07:57:36', '2018-09-05 07:57:36'),
(64, 'title_en', 'title en', 15, 19, 0, '', 0, 256, 0, '', 0, '2018-09-05 07:57:53', '2018-09-05 07:57:53'),
(65, 'title_ru', 'title ru', 15, 19, 0, '', 0, 256, 0, '', 0, '2018-09-05 07:58:19', '2018-09-05 07:58:19'),
(66, 'description_ge', 'description ge', 15, 21, 0, '', 0, 0, 0, '', 0, '2018-09-05 08:08:16', '2018-09-05 08:08:16'),
(67, 'description_en', 'description en', 15, 21, 0, '', 0, 0, 0, '', 0, '2018-09-05 08:08:34', '2018-09-05 08:08:34'),
(68, 'description_ru', 'description ru', 15, 21, 0, '', 0, 0, 0, '', 0, '2018-09-05 08:08:54', '2018-09-05 08:08:54'),
(69, 'image', 'Image', 15, 12, 0, '', 0, 0, 0, '', 0, '2018-09-05 08:09:14', '2018-09-05 08:09:14'),
(70, 'title_ru', 'Title ru', 8, 19, 0, '', 0, 50, 0, '', 0, '2018-09-05 08:16:47', '2018-09-05 08:16:47'),
(71, 'title_ru', 'Title ru', 9, 19, 0, '', 0, 100, 0, '', 4, '2018-09-05 08:17:38', '2018-09-05 08:17:38'),
(73, 'title_ge', 'Title ge', 16, 19, 0, '', 0, 150, 0, '', 0, '2018-09-05 10:44:41', '2018-09-05 10:44:41'),
(74, 'title_en', 'Title en', 16, 19, 0, '', 0, 150, 0, '', 0, '2018-09-05 10:45:09', '2018-09-05 10:45:09'),
(75, 'title_ru', 'Title ru', 16, 19, 0, '', 0, 150, 0, '', 0, '2018-09-05 10:45:38', '2018-09-05 10:45:38'),
(76, 'description_ge', 'Description ge', 16, 21, 0, '', 0, 0, 0, '', 0, '2018-09-05 10:46:13', '2018-09-05 10:46:13'),
(77, 'description_en', 'Description en', 16, 21, 0, '', 0, 0, 0, '', 0, '2018-09-05 10:46:39', '2018-09-05 10:46:39'),
(78, 'description_ru', 'Description ru', 16, 21, 0, '', 0, 0, 0, '', 0, '2018-09-05 10:47:05', '2018-09-05 10:47:05'),
(79, 'duration', 'Duration', 16, 19, 0, '', 0, 20, 0, '', 0, '2018-09-05 10:48:02', '2018-09-05 10:48:02'),
(80, 'price', 'Price', 16, 13, 0, '', 0, 11, 0, '', 0, '2018-09-05 10:48:54', '2018-09-05 10:48:54'),
(81, 'image', 'Image', 16, 12, 0, '', 0, 0, 0, '', 0, '2018-09-05 10:49:11', '2018-09-05 10:49:11'),
(85, 'description_ge', 'Description ge', 17, 21, 0, '', 0, 0, 0, '', 4, '2018-09-05 10:53:15', '2018-09-05 10:53:15'),
(86, 'description_en', 'Description en', 17, 21, 0, '', 0, 0, 0, '', 5, '2018-09-05 10:53:34', '2018-09-05 10:53:34'),
(87, 'description_ru', 'Description ru', 17, 21, 0, '', 0, 0, 0, '', 6, '2018-09-05 10:53:52', '2018-09-05 10:53:52'),
(88, 'image', 'Image', 17, 12, 0, '', 0, 0, 0, '', 7, '2018-09-05 10:55:20', '2018-09-05 10:55:20'),
(89, 'beautysubcategory_id', 'Beauty Sub Category', 12, 7, 0, '', 0, 0, 0, '@beautysubcategories', 0, '2018-09-06 08:02:18', '2018-09-06 08:02:18'),
(90, 'title_ge', 'Title ge', 18, 19, 0, '', 0, 100, 0, '', 0, '2018-09-06 08:12:49', '2018-09-06 08:12:49'),
(91, 'title_en', 'Title en', 18, 19, 0, '', 0, 100, 0, '', 0, '2018-09-06 08:13:04', '2018-09-06 08:13:04'),
(92, 'title_ru', 'Title ru', 18, 19, 0, '', 0, 100, 0, '', 0, '2018-09-06 08:13:20', '2018-09-06 08:13:20'),
(93, 'program_type', 'Program type', 18, 7, 0, '', 0, 0, 0, '[\"III step program\",\"IV step program\",\"practice\",\"standart\"]', 0, '2018-09-06 08:15:33', '2018-09-09 05:31:48'),
(94, 'file', 'File', 18, 9, 0, '', 0, 0, 0, '', 0, '2018-09-06 08:15:49', '2018-09-06 08:15:49'),
(96, 'name_ge', 'Name ge', 17, 19, 0, '', 0, 60, 0, '', 1, '2018-09-06 08:42:23', '2018-09-06 08:42:23'),
(97, 'name_en', 'Name en', 17, 19, 0, '', 0, 60, 0, '', 2, '2018-09-06 08:43:02', '2018-09-06 08:43:02'),
(98, 'name_ru', 'Name ru', 17, 19, 0, '', 0, 60, 0, '', 3, '2018-09-06 08:43:18', '2018-09-06 08:43:18'),
(99, 'title_ge', 'Title ge', 19, 19, 0, '', 0, 100, 0, '', 0, '2018-09-06 09:46:14', '2018-09-06 09:46:14'),
(100, 'title_en', 'Title en', 19, 19, 0, '', 0, 100, 0, '', 0, '2018-09-06 09:46:28', '2018-09-06 09:46:28'),
(101, 'title_ru', 'Title ru', 19, 19, 0, '', 0, 100, 0, '', 0, '2018-09-06 09:47:10', '2018-09-06 09:47:10'),
(102, 'image', 'Image', 19, 12, 0, '', 0, 0, 0, '', 0, '2018-09-06 09:47:28', '2018-09-06 09:47:28'),
(103, 'title_ru', 'Title ru', 11, 19, 0, '', 0, 100, 0, '', 4, '2018-09-06 09:50:20', '2018-09-06 09:50:20'),
(104, 'title_ge', 'Title ge', 20, 19, 0, '', 0, 100, 0, '', 0, '2018-09-06 09:51:03', '2018-09-06 09:51:03'),
(105, 'title_en', 'Title en', 20, 19, 0, '', 0, 100, 0, '', 0, '2018-09-06 09:51:24', '2018-09-06 09:51:24'),
(106, 'title_ru', 'Title ru', 20, 19, 0, '', 0, 100, 0, '', 0, '2018-09-06 09:51:50', '2018-09-06 09:51:50'),
(107, 'parent_category_id', 'Parent Category id', 20, 7, 0, '', 0, 0, 0, '@antiagecategories', 0, '2018-09-06 09:52:33', '2018-09-06 09:52:33'),
(108, 'title_ru', 'Title ru', 10, 19, 0, '', 0, 100, 0, '', 3, '2018-09-06 10:02:08', '2018-09-06 10:02:08'),
(109, 'site_category_id', 'Site category', 21, 7, 0, '', 0, 0, 0, '@site_categories', 0, '2018-09-06 10:03:18', '2018-09-06 10:03:18'),
(110, 'title_ge', 'Title ge', 21, 19, 0, '', 0, 256, 0, '', 0, '2018-09-06 10:03:46', '2018-09-06 10:03:46'),
(111, 'title_en', 'Title en', 21, 19, 0, '', 0, 256, 0, '', 0, '2018-09-06 10:04:03', '2018-09-06 10:04:03'),
(112, 'tile_ru', 'Title ru', 21, 19, 0, '', 0, 256, 0, '', 0, '2018-09-06 10:04:23', '2018-09-06 10:04:23'),
(113, 'image', 'Image', 21, 12, 0, '', 0, 0, 0, '', 0, '2018-09-06 10:05:03', '2018-09-06 10:05:03'),
(114, 'parent_category_id', 'Parent Category id', 22, 7, 0, '', 0, 0, 0, '@servicecategories', 0, '2018-09-06 10:07:25', '2018-09-06 10:07:25'),
(115, 'title_ge', 'Title ge', 22, 19, 0, '', 0, 256, 0, '', 0, '2018-09-06 10:08:05', '2018-09-06 10:08:05'),
(116, 'title_en', 'Title en', 22, 19, 0, '', 0, 256, 0, '', 0, '2018-09-06 10:08:21', '2018-09-06 10:08:21'),
(117, 'title_ru', 'Title ru', 22, 19, 0, '', 0, 256, 0, '', 0, '2018-09-06 10:08:45', '2018-09-06 10:08:45'),
(118, 'parent_id', 'ServicesSubCategory', 23, 7, 0, '', 0, 0, 0, '@servicesubcategories', 0, '2018-09-06 10:16:02', '2018-09-06 10:16:02'),
(119, 'title_ge', 'Title ge', 23, 19, 0, '', 0, 256, 0, '', 0, '2018-09-06 10:16:41', '2018-09-06 10:16:41'),
(120, 'title_en', 'Title en', 23, 19, 0, '', 0, 256, 0, '', 0, '2018-09-06 10:16:58', '2018-09-06 10:16:58'),
(121, 'title_ru', 'Title ru', 23, 19, 0, '', 0, 256, 0, '', 0, '2018-09-06 10:17:28', '2018-09-06 10:17:28'),
(122, 'price', 'Price', 23, 19, 0, '', 0, 20, 0, '', 0, '2018-09-06 10:18:30', '2018-09-06 10:18:30'),
(123, 'service_type', 'Service Type', 23, 15, 0, '', 0, 0, 0, '[\"standart\",\"premium\"]', 0, '2018-09-06 11:28:40', '2018-09-06 11:28:40'),
(124, 'image', 'Image', 24, 12, 0, '', 0, 0, 0, '', 2, '2018-09-06 11:36:13', '2018-09-06 11:36:13'),
(125, 'name', 'Name', 24, 19, 0, '', 0, 50, 0, '', 1, '2018-09-06 11:36:53', '2018-09-06 11:36:53'),
(127, 'page_id', 'Page', 25, 7, 0, '', 0, 0, 0, '@site_pages', 0, '2018-09-06 13:34:41', '2018-09-06 13:34:41'),
(128, 'images', 'Images', 25, 24, 0, '', 0, 0, 0, '', 0, '2018-09-06 13:36:27', '2018-09-06 13:36:27'),
(129, 'thumbnails_image_id', 'Thumbnails image', 21, 12, 0, '', 0, 0, 0, '', 0, '2018-09-06 14:26:05', '2018-09-06 14:26:05'),
(130, 'site_category_id', 'Site Category', 26, 7, 0, '', 0, 0, 0, '@site_categories', 1, '2018-09-06 15:01:54', '2018-09-06 15:01:54'),
(131, 'title_ge', 'Title ge', 26, 19, 0, '', 0, 256, 0, '', 2, '2018-09-06 15:02:28', '2018-09-06 15:02:28'),
(132, 'title_en', 'Title en', 26, 19, 0, '', 0, 256, 0, '', 3, '2018-09-06 15:02:49', '2018-09-06 15:02:49'),
(133, 'title_ru', 'Title ru', 26, 19, 0, '', 0, 256, 0, '', 4, '2018-09-06 15:03:09', '2018-09-06 15:03:09'),
(135, 'description_en', 'Description en', 26, 21, 0, '', 0, 0, 0, '', 6, '2018-09-06 15:04:00', '2018-09-06 15:04:00'),
(136, 'description_ge', 'Description ge', 26, 21, 0, '', 0, 0, 0, '', 5, '2018-09-06 15:04:28', '2018-09-06 15:04:28'),
(137, 'description_ru', 'Description ru', 26, 21, 0, '', 0, 0, 0, '', 7, '2018-09-06 15:05:02', '2018-09-06 15:05:02'),
(138, 'thumbnail_image', 'Thumbnail image', 26, 12, 0, '', 0, 0, 0, '', 8, '2018-09-06 15:07:51', '2018-09-06 15:07:51'),
(139, 'url', 'Url', 8, 19, 0, '', 0, 256, 0, '', 0, '2018-09-07 04:27:43', '2018-09-07 04:27:43'),
(140, 'specialist_ge', 'Specialist ge', 17, 19, 0, '', 0, 100, 0, '', 0, '2018-09-07 09:41:21', '2018-09-07 09:41:21'),
(141, 'specialist_en', 'Specialist en', 17, 19, 0, '', 0, 100, 0, '', 0, '2018-09-07 09:41:38', '2018-09-07 09:41:38'),
(142, 'specialist_ru', 'Specialist ru', 17, 19, 0, '', 0, 100, 0, '', 0, '2018-09-07 09:41:57', '2018-09-07 09:41:57'),
(143, 'title_ge', 'Title ge', 27, 19, 0, '', 0, 256, 0, '', 1, '2018-09-09 07:54:39', '2018-09-09 07:54:39'),
(144, 'title_en', 'Title en', 27, 19, 0, '', 0, 256, 0, '', 2, '2018-09-09 07:54:52', '2018-09-09 07:54:52'),
(145, 'title_ru', 'Title ru', 27, 19, 0, '', 0, 256, 0, '', 3, '2018-09-09 07:55:14', '2018-09-09 07:55:14'),
(146, 'image', 'Image', 27, 12, 0, '', 0, 0, 0, '', 7, '2018-09-09 07:55:33', '2018-09-09 07:55:33'),
(147, 'description_ge', 'Description ge', 27, 21, 0, '', 0, 0, 0, '', 4, '2018-09-09 07:56:06', '2018-09-09 07:56:06'),
(148, 'description_en', 'Description en', 27, 21, 0, '', 0, 0, 0, '', 5, '2018-09-09 07:56:35', '2018-09-09 07:56:35'),
(149, 'description_ru', 'Description ru', 27, 21, 0, '', 0, 0, 0, '', 6, '2018-09-09 07:56:55', '2018-09-09 07:56:55'),
(150, 'position', 'Position', 27, 7, 0, '', 0, 0, 0, '[\"top\",\"central\"]', 8, '2018-09-09 07:58:52', '2018-09-09 08:11:05'),
(155, 'text_ge', 'Text ge', 28, 21, 0, '', 0, 0, 0, '', 4, '2018-09-09 09:09:52', '2018-09-09 09:09:52'),
(157, 'text_ru', 'Text ru', 28, 21, 0, '', 0, 0, 0, '', 6, '2018-09-09 09:10:28', '2018-09-09 09:10:28'),
(158, 'image', 'Image', 28, 12, 0, '', 0, 0, 0, '', 10, '2018-09-09 09:11:10', '2018-09-09 09:11:10'),
(160, 'name_en', 'Name en', 28, 19, 0, '', 0, 50, 0, '', 2, '2018-09-09 09:15:05', '2018-09-09 09:15:05'),
(161, 'name_ge', 'Name ge', 28, 19, 0, '', 0, 50, 0, '', 1, '2018-09-09 09:15:52', '2018-09-09 09:15:52'),
(162, 'name_ru', 'Name ru', 28, 19, 0, '', 0, 50, 0, '', 3, '2018-09-09 09:16:12', '2018-09-09 09:16:12'),
(163, 'text_en', 'Text en', 28, 21, 0, '', 0, 0, 0, '', 5, '2018-09-09 09:18:50', '2018-09-09 09:18:50'),
(167, 'profession_ge', 'Profession ge', 28, 19, 0, '', 0, 50, 0, '', 7, '2018-09-09 09:43:35', '2018-09-09 09:43:35'),
(168, 'profession_en', 'Profession en', 28, 19, 0, '', 0, 50, 0, '', 8, '2018-09-09 09:43:57', '2018-09-09 09:43:57'),
(169, 'profession_ru', 'Profession ru', 28, 19, 0, '', 0, 50, 0, '', 9, '2018-09-09 09:44:17', '2018-09-09 09:44:17'),
(172, 'gallery', 'gallery', 29, 24, 0, '', 0, 0, 0, '', 2, '2018-09-10 09:24:16', '2018-09-10 09:24:16'),
(173, 'category', 'Category', 29, 7, 0, '', 0, 0, 0, '[\"Products\",\"Interior\",\"Devides\"]', 1, '2018-09-10 09:25:18', '2018-09-10 09:25:18'),
(174, 'name', 'Name', 30, 19, 0, '', 0, 256, 0, '', 0, '2018-09-11 04:40:29', '2018-09-11 04:40:29'),
(175, 'email', 'Email', 30, 8, 0, '', 0, 256, 0, '', 0, '2018-09-11 04:40:45', '2018-09-11 04:40:45'),
(176, 'text', 'Text', 30, 21, 0, '', 0, 0, 0, '', 0, '2018-09-11 04:41:04', '2018-09-11 04:41:04'),
(177, 'title_ge', 'Title ge', 25, 19, 0, '', 0, 256, 0, '', 0, '2018-09-14 15:56:30', '2018-09-14 15:56:30'),
(178, 'title_ru', 'Title ru', 25, 19, 0, '', 0, 256, 0, '', 0, '2018-09-14 15:56:50', '2018-09-14 15:56:50'),
(179, 'title_en', 'Title en', 25, 19, 0, '', 0, 256, 0, '', 0, '2018-09-14 15:57:10', '2018-09-14 15:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(2, 'Checkbox', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(3, 'Currency', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(4, 'Date', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(5, 'Datetime', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(6, 'Decimal', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(7, 'Dropdown', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(8, 'Email', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(9, 'File', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(10, 'Float', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(11, 'HTML', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(12, 'Image', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(13, 'Integer', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(14, 'Mobile', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(15, 'Multiselect', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(16, 'Name', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(17, 'Password', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(18, 'Radio', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(19, 'String', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(20, 'Taginput', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(21, 'Textarea', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(22, 'TextField', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(23, 'URL', '2018-09-05 05:02:17', '2018-09-05 05:02:17'),
(24, 'Files', '2018-09-05 05:02:17', '2018-09-05 05:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_category_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `title_ge` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8_unicode_ci,
  `description_ge` text COLLATE utf8_unicode_ci,
  `description_ru` text COLLATE utf8_unicode_ci,
  `thumbnail_image` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `deleted_at`, `created_at`, `updated_at`, `site_category_id`, `title_ge`, `title_en`, `title_ru`, `description_en`, `description_ge`, `description_ru`, `thumbnail_image`) VALUES
(1, NULL, '2018-09-06 15:11:20', '2018-09-06 15:11:20', 1, 'სატესტო პირველი სიახლე', 'test first news', 'проверить первые новости', 'this is my first new description', 'პირველი სიახლის აღწერა', 'это мое первое новое описание', 11),
(2, NULL, '2018-09-09 08:59:12', '2018-09-09 08:59:12', 4, 'სპა კონცეპტის საცდელი ნიუსი', 'spa concept test news', 'Спа концепция тест новости', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'm Ipsum-ის გამოყენებით ვღებულობთ იმაზე მეტ-ნაკლებად სწორი გადანაწილების ტექსტს, ვიდრე ერთიდაიგივე გამეორებადი სიტყვებია ხოლმე. შედეგად, ტექსტი ჩვეულებრივ ინგლისურს გავს, მისი წაითხვა კი შეუძლებელია. დღეს უამრავი პერსონალური საგამომცემლო პროგრამა', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь в', 30),
(3, NULL, '2018-09-09 13:20:19', '2018-09-09 13:20:19', 5, 'საცდელი სიახლე დრაი ბარის', 'dry bar test news', 'Новости тестов сухого бара', 'osed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'ეუშალოს. Lorem Ipsum-ის გამოყენებით ვღებულობთ იმაზე მეტ-ნაკლებად სწორი გადანაწილების ტექსტს, ვიდრე ერთიდაიგივე გამეორებადი სიტყვებია ხოლმე. შედეგად, ტექსტი ჩვეულებრივ ინგლისურს გავს, მისი წაითხვა კი შეუძლებელია. დღეს უამრავი პერსონალური საგამომცემლო პროგრამა და ვებგვერდი იყენებს Lorem Ipsum-ს, როგორც დრო', 'авно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение', 35),
(4, NULL, '2018-09-10 05:09:15', '2018-09-10 05:09:15', 6, 'ნატალი სპას ნიუსი', 'news for natalie spa', 'новости для спа-курорта natalie', 'news description some', 'ნიუსის აღწერა', 'описание новостей', 40);

-- --------------------------------------------------------

--
-- Table structure for table `page_generators`
--

CREATE TABLE `page_generators` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_category_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `section_select` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ge` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ge` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `description_ru` text COLLATE utf8_unicode_ci,
  `image` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_generators`
--

INSERT INTO `page_generators` (`id`, `deleted_at`, `created_at`, `updated_at`, `site_category_id`, `page_id`, `section_select`, `title_ge`, `title_en`, `title_ru`, `description_ge`, `description_en`, `description_ru`, `image`) VALUES
(1, '2018-09-11 22:05:44', '2018-09-07 06:01:43', '2018-09-11 22:05:44', 1, 1, 'top section', 'სალონი შენს სახში', 'feel beauty in your home', 'Давно выяснено, что при оценке дизайна', 'როდესაც უცნობმა მბეჭდავმა ამწყობ დაზგაზე წიგნის საცდელი ეგზემპლარი დაბეჭდა. მისი ტექსტი არამარტო 5 საუკუნის მანძილზე შემორჩა, არამედ მან დღემდე,', 'ong established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it l', 'т потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ва', 15),
(2, NULL, '2018-09-09 05:43:25', '2018-09-09 05:43:25', 2, 6, 'top section', 'სტანდარტული სტილის პროგრამა', 'standart style program', 'тандартная программа стиля', 'ფაქტია, რომ გვერდის წაკითხვად შიგთავსს შეუძლია მკითხველის ყურადღება მიიზიდოს და დიზაინის აღქმაში ხელი შეუშალოს. Lorem Ipsum-ის გამოყენებით ვღებულობთ იმაზე მეტ-ნაკლებად სწორი გადანაწილების ტექსტს, ვიდრე ერთიდაიგივე გამეორებადი სი', 'as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and', 'яснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при', 21),
(3, NULL, '2018-09-09 08:50:50', '2018-09-09 08:50:50', 4, 27, 'top section', 'დანაწილების ტექსტს, ვიდრე ერთიდაიგივე გა', 'ng established fact that a reader will be distracted by the readable content of a page when looking at its layo', 'ее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не полу', 'm Ipsum-ის გამოყენებით ვღებულობთ იმაზე მეტ-ნაკლებად სწორი გადანაწილების ტექსტს, ვიდრე ერთიდაიგივე გამეორებადი სიტყვებია ხოლმე. შედეგად, ტექსტი ჩვეულებრივ ინგლისურს გავს, მისი წაითხვა კი შეუძლებელია. დღეს უამრავი პერსონალური საგამომცემლო პროგრამა', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь в', 29),
(4, NULL, '2018-09-11 03:45:32', '2018-09-11 03:45:32', 1, 1, 'top section', 'ბიუთის სალონის  ტოპ ცონტენტი', 'beauty salon top content', 'верхняя часть салона красоты', 'აღწერა ტოპ კონტენტის', 'description top contetn', 'описание top contetn', 49),
(5, NULL, '2018-09-11 03:47:17', '2018-09-11 03:47:46', 1, 1, 'central section', 'ცენტრალური სექცია ნატალი ბიუთი სალონ', 'centaral section natalie beauty salon', 'центральная секция красоты красоты', 'ბიუთი სალონ ცენტრალური სექცია აღწერა', 'central section desctiopton beauty salon', 'центральная секция красоты красоты', 50),
(6, NULL, '2018-09-11 04:21:10', '2018-09-11 04:21:10', 1, 2, 'top section', 'ველნესლაბის ტოპ  სექციის სათაური', 'welnes labb page top section title', 'Название раздела верхняя часть лаборатории', 'აღწერა ველნეს ლაბის ტოპ სექციის', 'description welnes lab top section', 'описание верхняя часть лаборатории wellnes', 51),
(7, NULL, '2018-09-11 04:22:27', '2018-09-11 04:22:27', 1, 2, 'central section', 'ველნეს ლაბის ცენტრალური სექციის სათაური', 'velnes lap central section title', 'Название центральной секции velnes', 'ველნეს ლაბის ცენტრალური სექციის აღწერა', 'welness lab central setcion description', 'стандартное описание', 0),
(8, NULL, '2018-09-11 04:27:07', '2018-09-11 04:27:07', 1, 3, 'top section', 'სოლარიუმ კლუბის ტოპ სექციის სათაური', 'solarium club top section', 'верхняя часть клуба солярия', 'სოლარიუმ კლუბის აღწერა  ტოპ სექცია', 'description solariu club top seqcion', 'описание солярий top seqcion club', 52),
(9, NULL, '2018-09-11 04:28:59', '2018-09-11 04:28:59', 1, 3, 'central section', 'სოლარიუნ კლუბის ცენტრალური სექცია', 'solarim section central', 'центральная секция solarim', 'სოლარიუმ კლუბი აღწერა', 'description solarium clube central sectio', 'описание солярий clube central sectio', 0),
(10, NULL, '2018-09-11 04:33:24', '2018-09-11 04:33:24', 1, 3, 'bottom section', 'სოლარიუმ კლუბის ქვედა სექცია სათაური', 'solarium club bottom section', 'нижний раздел клуба солярия', 'აღწერა სოლარიუმ კლუბის ქვედა სექცია', 'solarium club bottom section description', 'описание секции нижнего дна солярия', 53),
(11, NULL, '2018-09-11 04:36:16', '2018-09-13 18:15:21', 1, 4, 'top section', 'სასაჩუქრრე ბარათი ტოპ სექცია', 'top section gift card', 'подарочная карта верхнего отдела', 'სასაჩუქრე ბარათის აღწერა ტოპ სექცია', 'gift cart top section description', 'описание верхней части подарочной корзины', 55),
(12, '2018-09-13 18:14:11', '2018-09-11 04:37:55', '2018-09-13 18:14:11', 1, 4, 'top section', 'სასაჩუქრე ბარათის ცენტრალური სექცია სათური', 'gift cart central section title', 'название центральной части подарочной тележки', 'სასაჩუქრე ბარატის აღწერა ცენტრალური სექცია', 'gift cart central description', 'главная подарочная корзина', 54),
(13, '2018-09-11 22:05:59', '2018-09-11 21:50:31', '2018-09-11 22:05:59', 1, 1, 'top section', 'You can set the cache_tags to null or remove', 'You can set the cache_tags to null or remove', 'You can set the cache_tags to null or remove', 'You can set the cache_tags to null or remove it completely from the config file. This will prevent using cache tags, but still cache. By doing this you lose the ability to clear the geoip only cache via the artisan command.', 'You can set the cache_tags to null or remove it completely from the config file. This will prevent using cache tags, but still cache. By doing this you lose the ability to clear the geoip only cache via the artisan command.', 'You can set the cache_tags to null or remove it completely from the config file. This will prevent using cache tags, but still cache. By doing this you lose the ability to clear the geoip only cache via the artisan command.', 32),
(14, NULL, '2018-09-13 19:47:23', '2018-09-13 19:47:23', 2, 25, 'top section', 'ვიდეო პროდაქშენი', 'You can set the cache_tags to null or remove', 'gives an opportunity to adopt the program', 'Currently, the most popular professions in Georgian youth are connected with fashion. We offer you studying in our Hairdresser’s School to support your talent in this comprehensive need for beauty. Our school program includes the newest knowledge of technologies in this field.School educational plan includes basic education programs for multifunctional hairdressers’ trainings, programs for masters of style of advertising and show business, makeup artists, manicure and pedicure specialists, cosmetologists and esthetes. We also have trainings for professional deve lopment of masters listed above.School program is based on the newest technologies and knowledge in the field of hairdressing and makeup. This is the guarantee of high-quality training.Our school pays great attention to professional development of the technical skills using models, it helps our students to obtain practical skills of profession they chose.Different studios with spe cial equipments make possible to conduct seminars and master classes inviting foreign guests and the best masters of style from “Natali”.Management of the school gives an opportunity to adopt the program personally for each student, so students study in comfortable conditions.And traditionally “Natali” – school of masters of style places in a job the best students in the most national chain.', 'Currently, the most popular professions in Georgian youth are connected with fashion. We offer you studying in our Hairdresser’s School to support your talent in this comprehensive need for beauty. Our school program includes the newest knowledge of technologies in this field.School educational plan includes basic education programs for multifunctional hairdressers’ trainings, programs for masters of style of advertising and show business, makeup artists, manicure and pedicure specialists, cosmetologists and esthetes. We also have trainings for professional deve lopment of masters listed above.School program is based on the newest technologies and knowledge in the field of hairdressing and makeup. This is the guarantee of high-quality training.Our school pays great attention to professional development of the technical skills using models, it helps our students to obtain practical skills of profession they chose.Different studios with spe cial equipments make possible to conduct seminars and master classes inviting foreign guests and the best masters of style from “Natali”.Management of the school gives an opportunity to adopt the program personally for each student, so students study in comfortable conditions.And traditionally “Natali” – school of masters of style places in a job the best students in the most national chain.', 'Currently, the most popular professions in Georgian youth are connected with fashion. We offer you studying in our Hairdresser’s School to support your talent in this comprehensive need for beauty. Our school program includes the newest knowledge of technologies in this field.School educational plan includes basic education programs for multifunctional hairdressers’ trainings, programs for masters of style of advertising and show business, makeup artists, manicure and pedicure specialists, cosmetologists and esthetes. We also have trainings for professional deve lopment of masters listed above.School program is based on the newest technologies and knowledge in the field of hairdressing and makeup. This is the guarantee of high-quality training.Our school pays great attention to professional development of the technical skills using models, it helps our students to obtain practical skills of profession they chose.Different studios with spe cial equipments make possible to conduct seminars and master classes inviting foreign guests and the best masters of style from “Natali”.Management of the school gives an opportunity to adopt the program personally for each student, so students study in comfortable conditions.And traditionally “Natali” – school of masters of style places in a job the best students in the most national chain.', 56),
(15, NULL, '2018-09-13 20:44:08', '2018-09-13 20:44:08', 2, 25, 'central section', NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 57),
(16, NULL, '2018-09-13 20:44:36', '2018-09-13 20:44:36', 2, 25, 'central section', NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 58),
(17, NULL, '2018-09-13 21:08:04', '2018-09-13 21:08:04', 2, 6, 'top section', 'Standart Stylist', 'Standart Stylist', 'Standart Stylist', 'Currently, the most popular professions in Georgian youth are connected with fashion. We offer you studying in our Hairdresser’s School to support your talent in this comprehensive need for beauty.', 'Currently, the most popular professions in Georgian youth are connected with fashion. We offer you studying in our Hairdresser’s School to support your talent in this comprehensive need for beauty.', 'Currently, the most popular professions in Georgian youth are connected with fashion. We offer you studying in our Hairdresser’s School to support your talent in this comprehensive need for beauty.', 59),
(18, NULL, '2018-09-13 21:08:44', '2018-09-13 21:08:44', 2, 6, 'top section', 'Standart Stylist', 'Standart Stylist', 'Standart Stylist', 'Currently, the most popular professions in Georgian youth are connected with fashion. We offer you studying in our Hairdresser’s School to support your talent in this comprehensive need for beauty.', 'Currently, the most popular professions in Georgian youth are connected with fashion. We offer you studying in our Hairdresser’s School to support your talent in this comprehensive need for beauty.', 'Currently, the most popular professions in Georgian youth are connected with fashion. We offer you studying in our Hairdresser’s School to support your talent in this comprehensive need for beauty.', 59);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `deleted_at`, `created_at`, `updated_at`, `image`, `name`) VALUES
(1, NULL, '2018-09-06 11:39:04', '2018-09-06 11:39:04', 6, 'germaine capuccini');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2018-09-05 05:02:22', '2018-09-05 05:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2018-09-05 05:02:22', '2018-09-05 05:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(2, 1, 2, 1, 1, 1, 1, '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(3, 1, 3, 1, 1, 1, 1, '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(4, 1, 4, 1, 1, 1, 1, '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(5, 1, 5, 1, 1, 1, 1, '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(6, 1, 6, 1, 1, 1, 1, '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(7, 1, 7, 1, 1, 1, 1, '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(8, 1, 8, 1, 1, 1, 1, '2018-09-05 05:13:44', '2018-09-05 05:13:44'),
(9, 1, 9, 1, 1, 1, 1, '2018-09-05 05:17:04', '2018-09-05 05:17:04'),
(10, 1, 10, 1, 1, 1, 1, '2018-09-05 05:26:14', '2018-09-05 05:26:14'),
(11, 1, 11, 1, 1, 1, 1, '2018-09-05 05:30:08', '2018-09-05 05:30:08'),
(12, 1, 12, 1, 1, 1, 1, '2018-09-05 05:41:08', '2018-09-05 05:41:08'),
(14, 1, 15, 1, 1, 1, 1, '2018-09-05 08:09:43', '2018-09-05 08:09:43'),
(16, 1, 16, 1, 1, 1, 1, '2018-09-05 10:49:16', '2018-09-05 10:49:16'),
(17, 1, 17, 1, 1, 1, 1, '2018-09-05 10:55:26', '2018-09-05 10:55:26'),
(18, 1, 18, 1, 1, 1, 1, '2018-09-06 08:16:00', '2018-09-06 08:16:00'),
(19, 1, 19, 1, 1, 1, 1, '2018-09-06 09:47:40', '2018-09-06 09:47:40'),
(20, 1, 20, 1, 1, 1, 1, '2018-09-06 09:52:46', '2018-09-06 09:52:46'),
(21, 1, 21, 1, 1, 1, 1, '2018-09-06 10:05:12', '2018-09-06 10:05:12'),
(22, 1, 22, 1, 1, 1, 1, '2018-09-06 10:09:13', '2018-09-06 10:09:13'),
(23, 1, 23, 1, 1, 1, 1, '2018-09-06 10:18:36', '2018-09-06 10:18:36'),
(24, 1, 24, 1, 1, 1, 1, '2018-09-06 11:37:02', '2018-09-06 11:37:02'),
(25, 1, 25, 1, 1, 1, 1, '2018-09-06 13:36:50', '2018-09-06 13:36:50'),
(26, 1, 26, 1, 1, 1, 1, '2018-09-06 15:05:36', '2018-09-06 15:05:36'),
(27, 1, 27, 1, 1, 1, 1, '2018-09-09 07:57:09', '2018-09-09 07:57:09'),
(28, 1, 28, 1, 1, 1, 1, '2018-09-09 09:11:25', '2018-09-09 09:11:25'),
(29, 1, 29, 1, 1, 1, 1, '2018-09-10 09:21:02', '2018-09-10 09:21:02'),
(30, 1, 30, 1, 1, 1, 1, '2018-09-11 04:41:09', '2018-09-11 04:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(2, 1, 2, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(3, 1, 3, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(4, 1, 4, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(5, 1, 5, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(6, 1, 6, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(7, 1, 7, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(8, 1, 8, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(9, 1, 9, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(10, 1, 10, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(11, 1, 11, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(12, 1, 12, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(13, 1, 13, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(14, 1, 14, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(15, 1, 15, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(16, 1, 16, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(17, 1, 17, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(18, 1, 18, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(19, 1, 19, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(20, 1, 20, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(21, 1, 21, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(22, 1, 22, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(23, 1, 23, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(24, 1, 24, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(25, 1, 25, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(26, 1, 26, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(27, 1, 27, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(28, 1, 28, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(29, 1, 29, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(30, 1, 30, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(31, 1, 31, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(32, 1, 32, 'write', '2018-09-05 05:02:22', '2018-09-05 05:02:22'),
(34, 1, 34, 'write', '2018-09-05 05:13:14', '2018-09-05 05:13:14'),
(35, 1, 35, 'write', '2018-09-05 05:13:30', '2018-09-05 05:13:30'),
(36, 1, 36, 'write', '2018-09-05 05:15:36', '2018-09-05 05:15:36'),
(37, 1, 37, 'write', '2018-09-05 05:16:33', '2018-09-05 05:16:33'),
(38, 1, 38, 'write', '2018-09-05 05:16:52', '2018-09-05 05:16:52'),
(39, 1, 39, 'write', '2018-09-05 05:19:34', '2018-09-05 05:19:34'),
(40, 1, 40, 'write', '2018-09-05 05:25:05', '2018-09-05 05:25:05'),
(41, 1, 41, 'write', '2018-09-05 05:25:36', '2018-09-05 05:25:36'),
(42, 1, 42, 'write', '2018-09-05 05:25:59', '2018-09-05 05:25:59'),
(43, 1, 43, 'write', '2018-09-05 05:28:05', '2018-09-05 05:28:05'),
(44, 1, 44, 'write', '2018-09-05 05:28:18', '2018-09-05 05:28:18'),
(45, 1, 45, 'write', '2018-09-05 05:30:01', '2018-09-05 05:30:01'),
(46, 1, 46, 'write', '2018-09-05 05:40:10', '2018-09-05 05:40:10'),
(47, 1, 47, 'write', '2018-09-05 05:40:22', '2018-09-05 05:40:22'),
(48, 1, 48, 'write', '2018-09-05 05:40:59', '2018-09-05 05:40:59'),
(60, 1, 60, 'write', '2018-09-05 07:53:53', '2018-09-05 07:53:53'),
(61, 1, 61, 'write', '2018-09-05 07:54:59', '2018-09-05 07:54:59'),
(62, 1, 62, 'write', '2018-09-05 07:56:42', '2018-09-05 07:56:42'),
(63, 1, 63, 'write', '2018-09-05 07:57:36', '2018-09-05 07:57:36'),
(64, 1, 64, 'write', '2018-09-05 07:57:53', '2018-09-05 07:57:53'),
(65, 1, 65, 'write', '2018-09-05 07:58:19', '2018-09-05 07:58:19'),
(66, 1, 66, 'write', '2018-09-05 08:08:16', '2018-09-05 08:08:16'),
(67, 1, 67, 'write', '2018-09-05 08:08:34', '2018-09-05 08:08:34'),
(68, 1, 68, 'write', '2018-09-05 08:08:54', '2018-09-05 08:08:54'),
(69, 1, 69, 'write', '2018-09-05 08:09:14', '2018-09-05 08:09:14'),
(70, 1, 70, 'write', '2018-09-05 08:16:47', '2018-09-05 08:16:47'),
(71, 1, 71, 'write', '2018-09-05 08:17:38', '2018-09-05 08:17:38'),
(73, 1, 73, 'write', '2018-09-05 10:44:41', '2018-09-05 10:44:41'),
(74, 1, 74, 'write', '2018-09-05 10:45:09', '2018-09-05 10:45:09'),
(75, 1, 75, 'write', '2018-09-05 10:45:38', '2018-09-05 10:45:38'),
(76, 1, 76, 'write', '2018-09-05 10:46:13', '2018-09-05 10:46:13'),
(77, 1, 77, 'write', '2018-09-05 10:46:40', '2018-09-05 10:46:40'),
(78, 1, 78, 'write', '2018-09-05 10:47:05', '2018-09-05 10:47:05'),
(79, 1, 79, 'write', '2018-09-05 10:48:02', '2018-09-05 10:48:02'),
(80, 1, 80, 'write', '2018-09-05 10:48:55', '2018-09-05 10:48:55'),
(81, 1, 81, 'write', '2018-09-05 10:49:11', '2018-09-05 10:49:11'),
(85, 1, 85, 'write', '2018-09-05 10:53:15', '2018-09-05 10:53:15'),
(86, 1, 86, 'write', '2018-09-05 10:53:34', '2018-09-05 10:53:34'),
(87, 1, 87, 'write', '2018-09-05 10:53:52', '2018-09-05 10:53:52'),
(88, 1, 88, 'write', '2018-09-05 10:55:20', '2018-09-05 10:55:20'),
(89, 1, 89, 'write', '2018-09-06 08:02:18', '2018-09-06 08:02:18'),
(90, 1, 90, 'write', '2018-09-06 08:12:49', '2018-09-06 08:12:49'),
(91, 1, 91, 'write', '2018-09-06 08:13:04', '2018-09-06 08:13:04'),
(92, 1, 92, 'write', '2018-09-06 08:13:21', '2018-09-06 08:13:21'),
(93, 1, 93, 'write', '2018-09-06 08:15:33', '2018-09-06 08:15:33'),
(94, 1, 94, 'write', '2018-09-06 08:15:49', '2018-09-06 08:15:49'),
(96, 1, 96, 'write', '2018-09-06 08:42:24', '2018-09-06 08:42:24'),
(97, 1, 97, 'write', '2018-09-06 08:43:02', '2018-09-06 08:43:02'),
(98, 1, 98, 'write', '2018-09-06 08:43:18', '2018-09-06 08:43:18'),
(99, 1, 99, 'write', '2018-09-06 09:46:14', '2018-09-06 09:46:14'),
(100, 1, 100, 'write', '2018-09-06 09:46:28', '2018-09-06 09:46:28'),
(101, 1, 101, 'write', '2018-09-06 09:47:10', '2018-09-06 09:47:10'),
(102, 1, 102, 'write', '2018-09-06 09:47:28', '2018-09-06 09:47:28'),
(103, 1, 103, 'write', '2018-09-06 09:50:20', '2018-09-06 09:50:20'),
(104, 1, 104, 'write', '2018-09-06 09:51:03', '2018-09-06 09:51:03'),
(105, 1, 105, 'write', '2018-09-06 09:51:24', '2018-09-06 09:51:24'),
(106, 1, 106, 'write', '2018-09-06 09:51:50', '2018-09-06 09:51:50'),
(107, 1, 107, 'write', '2018-09-06 09:52:33', '2018-09-06 09:52:33'),
(108, 1, 108, 'write', '2018-09-06 10:02:08', '2018-09-06 10:02:08'),
(109, 1, 109, 'write', '2018-09-06 10:03:19', '2018-09-06 10:03:19'),
(110, 1, 110, 'write', '2018-09-06 10:03:46', '2018-09-06 10:03:46'),
(111, 1, 111, 'write', '2018-09-06 10:04:03', '2018-09-06 10:04:03'),
(112, 1, 112, 'write', '2018-09-06 10:04:23', '2018-09-06 10:04:23'),
(113, 1, 113, 'write', '2018-09-06 10:05:03', '2018-09-06 10:05:03'),
(114, 1, 114, 'write', '2018-09-06 10:07:25', '2018-09-06 10:07:25'),
(115, 1, 115, 'write', '2018-09-06 10:08:05', '2018-09-06 10:08:05'),
(116, 1, 116, 'write', '2018-09-06 10:08:21', '2018-09-06 10:08:21'),
(117, 1, 117, 'write', '2018-09-06 10:08:45', '2018-09-06 10:08:45'),
(118, 1, 118, 'write', '2018-09-06 10:16:03', '2018-09-06 10:16:03'),
(119, 1, 119, 'write', '2018-09-06 10:16:41', '2018-09-06 10:16:41'),
(120, 1, 120, 'write', '2018-09-06 10:16:58', '2018-09-06 10:16:58'),
(121, 1, 121, 'write', '2018-09-06 10:17:28', '2018-09-06 10:17:28'),
(122, 1, 122, 'write', '2018-09-06 10:18:30', '2018-09-06 10:18:30'),
(123, 1, 123, 'write', '2018-09-06 11:28:40', '2018-09-06 11:28:40'),
(124, 1, 124, 'write', '2018-09-06 11:36:13', '2018-09-06 11:36:13'),
(125, 1, 125, 'write', '2018-09-06 11:36:53', '2018-09-06 11:36:53'),
(127, 1, 127, 'write', '2018-09-06 13:34:42', '2018-09-06 13:34:42'),
(128, 1, 128, 'write', '2018-09-06 13:36:27', '2018-09-06 13:36:27'),
(129, 1, 129, 'write', '2018-09-06 14:26:05', '2018-09-06 14:26:05'),
(130, 1, 130, 'write', '2018-09-06 15:01:54', '2018-09-06 15:01:54'),
(131, 1, 131, 'write', '2018-09-06 15:02:28', '2018-09-06 15:02:28'),
(132, 1, 132, 'write', '2018-09-06 15:02:49', '2018-09-06 15:02:49'),
(133, 1, 133, 'write', '2018-09-06 15:03:09', '2018-09-06 15:03:09'),
(135, 1, 135, 'write', '2018-09-06 15:04:01', '2018-09-06 15:04:01'),
(136, 1, 136, 'write', '2018-09-06 15:04:28', '2018-09-06 15:04:28'),
(137, 1, 137, 'write', '2018-09-06 15:05:02', '2018-09-06 15:05:02'),
(138, 1, 138, 'write', '2018-09-06 15:07:51', '2018-09-06 15:07:51'),
(139, 1, 139, 'write', '2018-09-07 04:27:44', '2018-09-07 04:27:44'),
(140, 1, 140, 'write', '2018-09-07 09:41:21', '2018-09-07 09:41:21'),
(141, 1, 141, 'write', '2018-09-07 09:41:38', '2018-09-07 09:41:38'),
(142, 1, 142, 'write', '2018-09-07 09:41:57', '2018-09-07 09:41:57'),
(143, 1, 143, 'write', '2018-09-09 07:54:39', '2018-09-09 07:54:39'),
(144, 1, 144, 'write', '2018-09-09 07:54:52', '2018-09-09 07:54:52'),
(145, 1, 145, 'write', '2018-09-09 07:55:15', '2018-09-09 07:55:15'),
(146, 1, 146, 'write', '2018-09-09 07:55:33', '2018-09-09 07:55:33'),
(147, 1, 147, 'write', '2018-09-09 07:56:06', '2018-09-09 07:56:06'),
(148, 1, 148, 'write', '2018-09-09 07:56:35', '2018-09-09 07:56:35'),
(149, 1, 149, 'write', '2018-09-09 07:56:55', '2018-09-09 07:56:55'),
(150, 1, 150, 'write', '2018-09-09 07:58:53', '2018-09-09 07:58:53'),
(155, 1, 155, 'write', '2018-09-09 09:09:53', '2018-09-09 09:09:53'),
(157, 1, 157, 'write', '2018-09-09 09:10:28', '2018-09-09 09:10:28'),
(158, 1, 158, 'write', '2018-09-09 09:11:10', '2018-09-09 09:11:10'),
(160, 1, 160, 'write', '2018-09-09 09:15:05', '2018-09-09 09:15:05'),
(161, 1, 161, 'write', '2018-09-09 09:15:52', '2018-09-09 09:15:52'),
(162, 1, 162, 'write', '2018-09-09 09:16:12', '2018-09-09 09:16:12'),
(163, 1, 163, 'write', '2018-09-09 09:18:50', '2018-09-09 09:18:50'),
(167, 1, 167, 'write', '2018-09-09 09:43:35', '2018-09-09 09:43:35'),
(168, 1, 168, 'write', '2018-09-09 09:43:57', '2018-09-09 09:43:57'),
(169, 1, 169, 'write', '2018-09-09 09:44:18', '2018-09-09 09:44:18'),
(172, 1, 172, 'write', '2018-09-10 09:24:16', '2018-09-10 09:24:16'),
(173, 1, 173, 'write', '2018-09-10 09:25:18', '2018-09-10 09:25:18'),
(174, 1, 174, 'write', '2018-09-11 04:40:29', '2018-09-11 04:40:29'),
(175, 1, 175, 'write', '2018-09-11 04:40:45', '2018-09-11 04:40:45'),
(176, 1, 176, 'write', '2018-09-11 04:41:04', '2018-09-11 04:41:04'),
(177, 1, 177, 'write', '2018-09-14 15:56:31', '2018-09-14 15:56:31'),
(178, 1, 178, 'write', '2018-09-14 15:56:51', '2018-09-14 15:56:51'),
(179, 1, 179, 'write', '2018-09-14 15:57:10', '2018-09-14 15:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `servicecategories`
--

CREATE TABLE `servicecategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_category_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `title_ge` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tile_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `thumbnails_image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `servicecategories`
--

INSERT INTO `servicecategories` (`id`, `deleted_at`, `created_at`, `updated_at`, `site_category_id`, `title_ge`, `title_en`, `tile_ru`, `image`, `thumbnails_image_id`) VALUES
(1, NULL, '2018-09-06 10:34:58', '2018-09-06 14:31:13', 1, 'კანის მოვლა', 'eyebrows/lashes', 'брови / ресницы', 5, 10),
(2, NULL, '2018-09-09 06:29:37', '2018-09-09 06:29:37', 3, 'კაცებისთვის', 'For man', 'Для мужчин', 24, 25),
(3, NULL, '2018-09-09 13:23:41', '2018-09-09 13:23:41', 5, 'დრაი ბარის საცდელი კატეგორია', 'dry bar test category', 'категория испытаний сухих баров', 37, 36),
(4, NULL, '2018-09-10 05:05:19', '2018-09-10 05:05:19', 6, 'ნატალი სპა ცენტრის მთავარი კატეგორია', 'natalie spa center main category', 'основная масса курортного центра natalie', 38, 39);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `title_ge` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_type` varchar(256) COLLATE utf8_unicode_ci DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `deleted_at`, `created_at`, `updated_at`, `parent_id`, `title_ge`, `title_en`, `title_ru`, `price`, `service_type`) VALUES
(2, NULL, '2018-09-06 11:42:38', '2018-09-06 11:54:43', 1, 'ცხვირის პირსინგი', 'Nose piercing', 'Пирсинг носа', '50', ''),
(3, NULL, '2018-09-09 13:26:41', '2018-09-09 13:26:41', 2, 'დრაი ბარის სერვისის დასახელება', 'dry bar service', 'обслуживание сухих баров', '455-899', '[]'),
(4, NULL, '2018-09-10 05:07:24', '2018-09-10 05:07:24', 3, 'ნატალი სპა ცენტრის სერვისი', 'natalie spa center service', 'услуги спа-центра natalie', '500', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `servicesubcategories`
--

CREATE TABLE `servicesubcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_category_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `title_ge` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `servicesubcategories`
--

INSERT INTO `servicesubcategories` (`id`, `deleted_at`, `created_at`, `updated_at`, `parent_category_id`, `title_ge`, `title_en`, `title_ru`) VALUES
(1, NULL, '2018-09-06 11:41:30', '2018-09-06 11:41:30', 1, 'პირსინგი', 'piersing', 'пирсинг'),
(2, NULL, '2018-09-09 13:24:52', '2018-09-09 13:24:52', 3, 'დრაიბარის კატოეგორიის ქვე კატეგორია საცდელი', 'dry bar sub category', 'сухая барная SUB категория'),
(3, NULL, '2018-09-10 05:06:12', '2018-09-10 05:06:12', 4, 'ნატალი სპა ცენტრის ქვე კატეგორია', 'natali spa center sub category', 'подкатегория спа-центра natali');

-- --------------------------------------------------------

--
-- Table structure for table `site_categories`
--

CREATE TABLE `site_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ge` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_categories`
--

INSERT INTO `site_categories` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ge`, `title_en`, `title_ru`, `url`) VALUES
(1, NULL, '2018-09-05 08:23:13', '2018-09-07 04:28:03', 'სილამაზე', 'beauty', 'красота', 'beauty'),
(2, NULL, '2018-09-05 08:23:53', '2018-09-07 04:28:11', 'აკადემია', 'academy', 'академия', 'academy'),
(3, NULL, '2018-09-05 08:25:38', '2018-09-07 04:28:24', 'ანტი ეიჯ კლინიკა', 'anti age clinic', 'антивозрастная клиника', 'antiageclinic'),
(4, NULL, '2018-09-05 08:26:40', '2018-09-07 04:28:35', 'სპა კონცეპტი', 'spa concept', 'спа концепт', 'spaconcept'),
(5, NULL, '2018-09-05 08:28:31', '2018-09-07 04:28:44', 'დრაი ბარი', 'dry bar', 'драй бар', 'drybar'),
(6, NULL, '2018-09-05 08:29:05', '2018-09-07 04:28:56', 'ნატალი სპა', 'natali spa', 'натали спа', 'natalispa'),
(7, NULL, '2018-09-05 08:29:52', '2018-09-07 04:29:04', 'პროდუქტები', 'products', 'продукты', 'products');

-- --------------------------------------------------------

--
-- Table structure for table `site_pages`
--

CREATE TABLE `site_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_category_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `title_ge` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_pages`
--

INSERT INTO `site_pages` (`id`, `site_category_id`, `title_ge`, `title_en`, `title_ru`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'სალონი შენს სახლში', 'salon in you home', 'салон у вас дома', 'salon', '2018-09-05 08:34:49', '2018-09-05 08:34:49', NULL),
(2, 1, 'ველნეს ლაბი', 'wellness lab', 'оздоровительная лаборатория', 'wellness', '2018-09-05 08:36:44', '2018-09-05 08:37:04', NULL),
(3, 1, 'სოლარიუმკლუბი', 'solarium club', 'солярий', 'solarium', '2018-09-05 08:38:00', '2018-09-05 08:38:00', NULL),
(4, 1, 'სასაჩუქრე ბარათი', 'gift card', 'подарочная карта', 'giftcard', '2018-09-05 08:39:08', '2018-09-05 08:39:08', NULL),
(5, 1, 'კონტაქტი', 'contact', 'контакт', 'contact', '2018-09-05 08:39:45', '2018-09-05 08:39:45', NULL),
(6, 2, 'პროგრამები', 'programms', 'программы', 'programms', '2018-09-05 08:41:01', '2018-09-05 08:41:01', NULL),
(7, 2, 'მასწავლებლები', 'teachers', 'учителей', 'teachers', '2018-09-05 08:42:27', '2018-09-05 08:45:02', NULL),
(8, 2, 'კურსები', 'courses', 'курсы', 'courses', '2018-09-05 08:45:33', '2018-09-05 08:45:33', NULL),
(9, 2, 'ბიბლიოთეკა', 'library', 'библиотека', 'library', '2018-09-05 08:46:31', '2018-09-05 08:46:31', NULL),
(10, 2, 'სტუდენტების ვარცხნილობები', 'haircute by students', 'прическа студентами', 'haircutebystudents', '2018-09-05 08:47:53', '2018-09-05 08:55:02', NULL),
(11, 2, 'კონტაქტი', 'contact', 'контакт', 'contact', '2018-09-05 08:48:35', '2018-09-05 08:48:35', NULL),
(12, 3, 'კანის მოვლა', 'skin care', 'уход за кожей', 'skincare', '2018-09-05 08:49:23', '2018-09-05 08:49:23', NULL),
(13, 3, 'სხეულის მოვლა', 'body care', 'уход за телом', 'bodycare', '2018-09-05 08:50:22', '2018-09-05 08:50:22', NULL),
(14, 3, 'ლაზერი', 'laser', 'лазер', 'laser', '2018-09-05 08:51:08', '2018-09-05 08:51:08', NULL),
(15, 3, 'პროდუქტები', 'products', 'продукты', 'products', '2018-09-05 08:51:50', '2018-09-05 08:51:50', NULL),
(16, 3, 'კონტაქტი', 'contact', 'контакт', 'contact', '2018-09-05 08:52:34', '2018-09-05 08:52:34', NULL),
(17, 4, 'პროდუქტები', 'products', 'продукты', 'products', '2018-09-05 08:53:31', '2018-09-05 08:53:31', NULL),
(18, 4, 'შეთავაზებები', 'offers', 'предложения', 'offers', '2018-09-05 08:54:34', '2018-09-05 08:54:34', NULL),
(19, 4, 'პარტნიორები', 'partners', 'партнеры', 'partners', '2018-09-05 08:55:44', '2018-09-05 08:55:44', NULL),
(20, 4, 'გალერია', 'gallery', 'галерея', 'gallery', '2018-09-05 08:57:08', '2018-09-05 08:57:08', NULL),
(21, 4, 'კონტაქტი', 'contact', 'контакт', 'contact', '2018-09-05 08:57:44', '2018-09-05 08:57:44', NULL),
(22, 1, 'საიტის მთავარი გვერდი', 'Site main page', 'Главная страница сайта', NULL, '2018-09-07 04:56:59', '2018-09-07 05:40:33', NULL),
(23, 1, 'მთავარი', 'main', 'главный', NULL, '2018-09-07 04:56:59', '2018-09-07 04:57:14', '2018-09-07 04:57:14'),
(24, 1, 'მთავარი', 'main', 'главный', NULL, '2018-09-07 04:57:00', '2018-09-07 04:57:09', '2018-09-07 04:57:09'),
(25, 2, 'აკადემიის მთავარ იგვერდი', 'Academy main page', 'Главная страница Академии', NULL, '2018-09-07 05:42:04', '2018-09-07 05:42:04', NULL),
(26, 3, 'ანტი ეიჯის მთავარი გვერდი', 'anti age clinic main page', 'антивозрастная клиники  главная страница', NULL, '2018-09-07 05:44:08', '2018-09-07 05:44:08', NULL),
(27, 4, 'სპა  კონცეპტის მთავარი გვერდი', 'spa concept main page', 'спа концепт  Главная страница', NULL, '2018-09-07 05:46:27', '2018-09-07 05:46:27', NULL),
(28, 5, 'დრაი ბარი მთავარი გვერდი', 'dry bar main page', 'главная страница сухих баров', NULL, '2018-09-07 05:49:07', '2018-09-07 05:49:07', NULL),
(29, 6, 'ნატალი სპა', 'natalie spa', 'натали спа', NULL, '2018-09-07 05:50:32', '2018-09-07 05:50:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `images` varchar(256) COLLATE utf8_unicode_ci DEFAULT '[]',
  `title_ge` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `deleted_at`, `created_at`, `updated_at`, `page_id`, `images`, `title_ge`, `title_ru`, `title_en`) VALUES
(1, NULL, '2018-09-06 13:46:41', '2018-09-06 13:46:41', 1, '[\"7\",\"8\",\"9\"]', NULL, NULL, NULL),
(2, NULL, '2018-09-07 05:52:19', '2018-09-07 05:52:19', 22, '[\"14\",\"12\"]', NULL, NULL, NULL),
(3, NULL, '2018-09-09 06:25:29', '2018-09-09 06:25:29', 26, '[\"22\",\"23\"]', NULL, NULL, NULL),
(4, NULL, '2018-09-09 13:17:56', '2018-09-09 13:17:56', 28, '[\"34\",\"33\",\"32\"]', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spaconceptestimonials`
--

CREATE TABLE `spaconceptestimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_ge` text COLLATE utf8_unicode_ci,
  `text_ru` text COLLATE utf8_unicode_ci,
  `image` int(11) DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ge` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ru` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_en` text COLLATE utf8_unicode_ci,
  `profession_ge` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession_ru` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spaconceptestimonials`
--

INSERT INTO `spaconceptestimonials` (`id`, `deleted_at`, `created_at`, `updated_at`, `text_ge`, `text_ru`, `image`, `name_en`, `name_ge`, `name_ru`, `text_en`, `profession_ge`, `profession_en`, `profession_ru`) VALUES
(1, NULL, '2018-09-09 09:20:21', '2018-09-09 09:46:31', 'm Ipsum-ის გამოყენებით ვღებულობთ იმაზე მეტ-ნაკლებად სწორი გადანაწილების ტექსტს, ვიდრე ერთიდაიგივე გამეორებადი სიტყვებია ხოლმე. შედეგად, ტექსტი ჩვეულებრივ ინგლისურს გავს, მისი წაითხვა კი შეუძლებელია. დღეს უამრავი პერსონალური საგამომცემლო პროგრამა', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь в', 31, 'claudio silversteini', 'კლაურიო სილვერსტეინი', 'claudio silversteini', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'დიზაინერი', 'designer', 'дизайнер');

-- --------------------------------------------------------

--
-- Table structure for table `spaconceptgalleries`
--

CREATE TABLE `spaconceptgalleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gallery` varchar(256) COLLATE utf8_unicode_ci DEFAULT '[]',
  `category` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spaconceptgalleries`
--

INSERT INTO `spaconceptgalleries` (`id`, `deleted_at`, `created_at`, `updated_at`, `gallery`, `category`) VALUES
(1, NULL, '2018-09-10 09:29:43', '2018-09-10 09:29:43', '[\"42\",\"41\",\"43\",\"44\"]', 'Devides'),
(2, NULL, '2018-09-10 09:31:50', '2018-09-10 09:31:50', '[\"47\",\"45\",\"48\"]', 'Products');

-- --------------------------------------------------------

--
-- Table structure for table `spaconceptpartners`
--

CREATE TABLE `spaconceptpartners` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ge` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_ru` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `description_ge` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `description_ru` text COLLATE utf8_unicode_ci,
  `position` varchar(256) COLLATE utf8_unicode_ci DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spaconceptpartners`
--

INSERT INTO `spaconceptpartners` (`id`, `deleted_at`, `created_at`, `updated_at`, `title_ge`, `title_en`, `title_ru`, `image`, `description_ge`, `description_en`, `description_ru`, `position`) VALUES
(1, NULL, '2018-09-09 08:07:30', '2018-09-09 08:07:30', 'მალეტი ჯგუფი', 'mallety group', 'маллет груп', 26, 'ცნობილი ფაქტია, რომ გვერდის წაკითხვად შიგთავსს შეუძლია მკითხველის ყურადღება მიიზიდოს და დიზაინის აღქმაში ხელი შეუშალოს. Lorem Ipsum-ის გამოყენებით ვღებულობთ იმაზე მეტ-ნაკლებად სწორი', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь в', 'top'),
(2, NULL, '2018-09-09 08:09:37', '2018-09-09 08:12:27', 'ფილიპ სტარეკი', 'fillipe stareck', 'fillipe stareck', 27, 'ცნობილი ფაქტია, რომ გვერდის წაკითხვად შიგთავსს შეუძლია მკითხველის ყურადღება მიიზიდოს და დიზაინის აღქმაში ხელი შეუშალოს. Lorem Ipsum-ის გამოყენებით ვღებულობთ იმაზე მეტ-ნაკლებად სწორი', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь в', 'central'),
(3, NULL, '2018-09-09 08:42:57', '2018-09-09 08:42:57', 'ნილო', 'nilo', 'nilo', 28, 'm Ipsum-ის გამოყენებით ვღებულობთ იმაზე მეტ-ნაკლებად სწორი გადანაწილების ტექსტს, ვიდრე ერთიდაიგივე გამეორებადი სიტყვებია ხოლმე. შედეგად, ტექსტი ჩვეულებრივ ინგლისურს გავს, მისი წაითხვა კი შეუძლებელია. დღეს უამრავი პერსონალური საგამომცემლო პროგრამა', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь в', 'top');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `public` tinyint(1) DEFAULT '0',
  `type` int(10) UNSIGNED DEFAULT NULL,
  `size` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `user_id`, `public`, `type`, `size`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'download (2).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-06\\1.jpg', 'jpg', 1, 1, 3, '12995', 'image/2018-09-06/1.jpg', NULL, '2018-09-06 03:50:24', '2018-09-06 03:50:25'),
(2, 'images (1).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-06\\2.jpg', 'jpg', 1, 1, 3, '10780', 'image/2018-09-06/2.jpg', NULL, '2018-09-06 08:25:59', '2018-09-06 08:25:59'),
(3, '171219-teacher-stock.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-06\\3.jpg', 'jpg', 1, 1, 3, '1072339', 'image/2018-09-06/3.jpg', NULL, '2018-09-06 08:46:37', '2018-09-06 08:46:38'),
(4, '2003-civic.pdf', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\application\\2018-09-06\\4.pdf', 'pdf', 1, 1, 4, '4272769', 'application/2018-09-06/4.pdf', NULL, '2018-09-06 08:49:12', '2018-09-06 08:49:12'),
(5, 'download (3).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-06\\5.jpg', 'jpg', 1, 1, 3, '4631', 'image/2018-09-06/5.jpg', NULL, '2018-09-06 10:34:52', '2018-09-06 10:34:52'),
(6, 'download (1).png', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-06\\6.png', 'png', 1, 1, 3, '4358', 'image/2018-09-06/6.png', NULL, '2018-09-06 11:39:01', '2018-09-06 11:39:01'),
(7, 'fashion-beauty-cosmetic-57633-728x455.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-06\\7.jpg', 'jpg', 1, 1, 3, '25812', 'image/2018-09-06/7.jpg', NULL, '2018-09-06 13:46:26', '2018-09-06 13:46:26'),
(8, 'images (2).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-06\\8.jpg', 'jpg', 1, 1, 3, '3923', 'image/2018-09-06/8.jpg', NULL, '2018-09-06 13:46:26', '2018-09-06 13:46:26'),
(9, 'images (4).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-06\\9.jpg', 'jpg', 1, 1, 3, '5681', 'image/2018-09-06/9.jpg', NULL, '2018-09-06 13:46:26', '2018-09-06 13:46:27'),
(10, 'images (3).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-06\\10.jpg', 'jpg', 1, 1, 3, '8162', 'image/2018-09-06/10.jpg', NULL, '2018-09-06 13:46:27', '2018-09-06 13:46:27'),
(11, 'Fall-poster-2.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-06\\11.jpg', 'jpg', 1, 1, 3, '273079', 'image/2018-09-06/11.jpg', NULL, '2018-09-06 15:11:16', '2018-09-06 15:11:16'),
(12, 'cosmetic1.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-07\\12.jpg', 'jpg', 1, 1, 3, '71405', 'image/2018-09-07/12.jpg', NULL, '2018-09-07 05:52:09', '2018-09-07 05:52:09'),
(14, 'images (6).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-07\\14.jpg', 'jpg', 1, 1, 3, '4775', 'image/2018-09-07/14.jpg', NULL, '2018-09-07 05:52:10', '2018-09-07 05:52:10'),
(15, 'download (5).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-07\\15.jpg', 'jpg', 1, 1, 3, '6955', 'image/2018-09-07/15.jpg', NULL, '2018-09-07 06:01:32', '2018-09-07 06:01:32'),
(16, '800px-No_Image_Wide.svg.png', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-07\\16.png', 'png', 1, 0, 3, '13610', 'image/2018-09-07/16.png', NULL, '2018-09-07 09:54:52', '2018-09-07 09:54:52'),
(17, 'github-git-cheat-sheet.pdf', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\application\\2018-09-09\\17.pdf', 'pdf', 1, 1, 4, '377767', 'application/2018-09-09/17.pdf', NULL, '2018-09-09 04:43:04', '2018-09-09 04:43:04'),
(18, 'AlgAgeba1.pdf', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\application\\2018-09-09\\18.pdf', 'pdf', 1, 1, 4, '616890', 'application/2018-09-09/18.pdf', NULL, '2018-09-09 04:44:58', '2018-09-09 04:44:58'),
(19, 'Maspindzeli.pdf', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\application\\2018-09-09\\19.pdf', 'pdf', 1, 1, 4, '126701', 'application/2018-09-09/19.pdf', NULL, '2018-09-09 05:08:34', '2018-09-09 05:08:34'),
(20, 'HONDACIVICC10303OM.PDF', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\application\\2018-09-09\\20.pdf', 'pdf', 1, 1, 4, '4170064', 'application/2018-09-09/20.pdf', NULL, '2018-09-09 05:29:33', '2018-09-09 05:29:33'),
(21, 'ac3aa843984fc6fccfa1199c6f373f8a.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\21.jpg', 'jpg', 1, 1, 3, '49852', 'image/2018-09-09/21.jpg', NULL, '2018-09-09 05:42:31', '2018-09-09 05:42:31'),
(22, 'download (7).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\22.jpg', 'jpg', 1, 1, 3, '7576', 'image/2018-09-09/22.jpg', NULL, '2018-09-09 06:25:21', '2018-09-09 06:25:21'),
(23, 'images (7).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\23.jpg', 'jpg', 1, 1, 3, '4221', 'image/2018-09-09/23.jpg', NULL, '2018-09-09 06:25:21', '2018-09-09 06:25:21'),
(24, 'images (8).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\24.jpg', 'jpg', 1, 1, 3, '9295', 'image/2018-09-09/24.jpg', NULL, '2018-09-09 06:28:56', '2018-09-09 06:28:56'),
(25, 'download (8).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\25.jpg', 'jpg', 1, 1, 3, '6362', 'image/2018-09-09/25.jpg', NULL, '2018-09-09 06:29:29', '2018-09-09 06:29:30'),
(26, 'images (9).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\26.jpg', 'jpg', 1, 1, 3, '8777', 'image/2018-09-09/26.jpg', NULL, '2018-09-09 08:07:23', '2018-09-09 08:07:23'),
(27, 'jeffery-whittaker.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\27.jpg', 'jpg', 1, 1, 3, '35002', 'image/2018-09-09/27.jpg', NULL, '2018-09-09 08:08:39', '2018-09-09 08:08:39'),
(28, 'RSM-e1536298388318-500x368.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\28.jpg', 'jpg', 1, 1, 3, '22619', 'image/2018-09-09/28.jpg', NULL, '2018-09-09 08:42:46', '2018-09-09 08:42:46'),
(29, 'spa.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\29.jpg', 'jpg', 1, 1, 3, '212151', 'image/2018-09-09/29.jpg', NULL, '2018-09-09 08:50:45', '2018-09-09 08:50:46'),
(30, 'images (11).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\30.jpg', 'jpg', 1, 1, 3, '5734', 'image/2018-09-09/30.jpg', NULL, '2018-09-09 08:59:08', '2018-09-09 08:59:08'),
(31, 'images (12).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\31.jpg', 'jpg', 1, 1, 3, '7237', 'image/2018-09-09/31.jpg', NULL, '2018-09-09 09:20:17', '2018-09-09 09:20:17'),
(32, '1.JPG', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\32.jpg', 'jpg', 1, 1, 3, '41268', 'image/2018-09-09/32.jpg', NULL, '2018-09-09 13:17:44', '2018-09-09 13:17:44'),
(33, 'download (9).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\33.jpg', 'jpg', 1, 1, 3, '6269', 'image/2018-09-09/33.jpg', NULL, '2018-09-09 13:17:44', '2018-09-09 13:17:44'),
(34, 'images (14).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\34.jpg', 'jpg', 1, 1, 3, '9597', 'image/2018-09-09/34.jpg', NULL, '2018-09-09 13:17:45', '2018-09-09 13:17:45'),
(35, 'N-Gents3b.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\35.jpg', 'jpg', 1, 1, 3, '10734', 'image/2018-09-09/35.jpg', NULL, '2018-09-09 13:20:13', '2018-09-09 13:20:13'),
(36, 'images (17).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\36.jpg', 'jpg', 1, 1, 3, '8694', 'image/2018-09-09/36.jpg', NULL, '2018-09-09 13:23:07', '2018-09-09 13:23:07'),
(37, 'images (16).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-09\\37.jpg', 'jpg', 1, 1, 3, '11018', 'image/2018-09-09/37.jpg', NULL, '2018-09-09 13:23:23', '2018-09-09 13:23:23'),
(38, 'images (20).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\38.jpg', 'jpg', 1, 1, 3, '9662', 'image/2018-09-10/38.jpg', NULL, '2018-09-10 05:05:00', '2018-09-10 05:05:00'),
(39, '720x283-spa.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\39.jpg', 'jpg', 1, 1, 3, '30349', 'image/2018-09-10/39.jpg', NULL, '2018-09-10 05:05:12', '2018-09-10 05:05:13'),
(40, 'download (4).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\40.jpg', 'jpg', 1, 1, 3, '6080', 'image/2018-09-10/40.jpg', NULL, '2018-09-10 05:09:10', '2018-09-10 05:09:10'),
(41, '41atPOl-8TL.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\41.jpg', 'jpg', 1, 1, 3, '23370', 'image/2018-09-10/41.jpg', NULL, '2018-09-10 09:29:21', '2018-09-10 09:29:21'),
(42, '2260423.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\42.jpg', 'jpg', 1, 1, 3, '15444', 'image/2018-09-10/42.jpg', NULL, '2018-09-10 09:29:21', '2018-09-10 09:29:21'),
(43, 'Korean-beauty-handheld-best-high-frequency-facial.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\43.jpg', 'jpg', 1, 1, 3, '123665', 'image/2018-09-10/43.jpg', NULL, '2018-09-10 09:29:21', '2018-09-10 09:29:22'),
(44, 'images (21).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\44.jpg', 'jpg', 1, 1, 3, '3166', 'image/2018-09-10/44.jpg', NULL, '2018-09-10 09:29:21', '2018-09-10 09:29:22'),
(45, 'images (22).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\45.jpg', 'jpg', 1, 1, 3, '5194', 'image/2018-09-10/45.jpg', NULL, '2018-09-10 09:31:38', '2018-09-10 09:31:38'),
(46, '41atPOl-8TL.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\46.jpg', 'jpg', 1, 1, 3, '23370', 'image/2018-09-10/46.jpg', NULL, '2018-09-10 09:31:38', '2018-09-10 09:31:38'),
(47, 'refa-grace-head-spa-scalp-massage-rollers-4.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\47.jpg', 'jpg', 1, 1, 3, '44070', 'image/2018-09-10/47.jpg', NULL, '2018-09-10 09:31:38', '2018-09-10 09:31:38'),
(48, 'vente-chaude-laser-mole-removal-tool-plasma.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-10\\48.jpg', 'jpg', 1, 1, 3, '65118', 'image/2018-09-10/48.jpg', NULL, '2018-09-10 09:31:38', '2018-09-10 09:31:39'),
(49, '10.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-11\\49.jpg', 'jpg', 1, 1, 3, '152243', 'image/2018-09-11/49.jpg', NULL, '2018-09-11 03:45:20', '2018-09-11 03:45:20'),
(50, 'images (23).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-11\\50.jpg', 'jpg', 1, 1, 3, '6769', 'image/2018-09-11/50.jpg', NULL, '2018-09-11 03:47:07', '2018-09-11 03:47:07'),
(51, 'landscape-1484839330-elle-weed-beauty-lead.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-11\\51.jpg', 'jpg', 1, 1, 3, '196702', 'image/2018-09-11/51.jpg', NULL, '2018-09-11 04:21:06', '2018-09-11 04:21:06'),
(52, 'preview.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-11\\52.jpg', 'jpg', 1, 1, 3, '153624', 'image/2018-09-11/52.jpg', NULL, '2018-09-11 04:27:02', '2018-09-11 04:27:02'),
(53, 'solarium-istock.jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-11\\53.jpg', 'jpg', 1, 1, 3, '106360', 'image/2018-09-11/53.jpg', NULL, '2018-09-11 04:33:20', '2018-09-11 04:33:20'),
(54, 'download (10).jpg', 'C:\\OSPanel\\domains\\localhost\\mate\\natalie\\public\\files\\image\\2018-09-11\\54.jpg', 'jpg', 1, 1, 3, '8920', 'image/2018-09-11/54.jpg', NULL, '2018-09-11 04:37:52', '2018-09-11 04:37:52'),
(55, 'gift-card-image.png', 'C:\\xampp\\htdocs\\natali\\public\\files\\image\\2018-09-13\\55.png', 'png', 1, 0, 3, '131794', 'image/2018-09-13/55.png', NULL, '2018-09-13 18:15:11', '2018-09-13 18:15:12'),
(56, 'academy-head-bg.png', 'C:\\xampp\\htdocs\\natali\\public\\files\\image\\2018-09-13\\56.png', 'png', 1, 0, 3, '1656481', 'image/2018-09-13/56.png', NULL, '2018-09-13 19:47:15', '2018-09-13 19:47:16'),
(57, 'academy-mission-img-1.png', 'C:\\xampp\\htdocs\\natali\\public\\files\\image\\2018-09-13\\57.png', 'png', 1, 0, 3, '456367', 'image/2018-09-13/57.png', NULL, '2018-09-13 20:43:52', '2018-09-13 20:43:52'),
(58, 'academy-mission-img-2.png', 'C:\\xampp\\htdocs\\natali\\public\\files\\image\\2018-09-13\\58.png', 'png', 1, 0, 3, '329495', 'image/2018-09-13/58.png', NULL, '2018-09-13 20:44:28', '2018-09-13 20:44:29'),
(59, 'academy-programs-img.png', 'C:\\xampp\\htdocs\\natali\\public\\files\\image\\2018-09-13\\59.png', 'png', 1, 0, 3, '384499', 'image/2018-09-13/59.png', NULL, '2018-09-13 21:07:57', '2018-09-13 21:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `context_id` int(10) UNSIGNED DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'niko', 1, 'niko@digitalmate.io', '$2y$10$SWtg3aQWPn3MbmkxlwKxxOpyBzJVQI.THSdWuJDcMx5yO/OHbUJh2', 'Employee', 'U6Oe7OugJv8jgZjSaYiHKhW8kATGvNrOc0zcaNHdAuOWqOb93P6cVxaGOqxB', NULL, '2018-09-05 05:03:00', '2018-09-05 05:03:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academycourses`
--
ALTER TABLE `academycourses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academyprogramms`
--
ALTER TABLE `academyprogramms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academyteachers`
--
ALTER TABLE `academyteachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antiagecategories`
--
ALTER TABLE `antiagecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antiagesubcategories`
--
ALTER TABLE `antiagesubcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `antiagesubcategories_parent_category_id_foreign` (`parent_category_id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `beautycategories`
--
ALTER TABLE `beautycategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beautyservices`
--
ALTER TABLE `beautyservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beautyservices_beautysubcategory_id_foreign` (`beautysubcategory_id`);

--
-- Indexes for table `beautysubcategories`
--
ALTER TABLE `beautysubcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beautysubcategories_parent_category_id_foreign` (`parent_category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_site_category_id_foreign` (`site_category_id`);

--
-- Indexes for table `page_generators`
--
ALTER TABLE `page_generators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_generators_site_category_id_foreign` (`site_category_id`),
  ADD KEY `page_generators_page_id_foreign` (`page_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `servicecategories`
--
ALTER TABLE `servicecategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicecategories_site_category_id_foreign` (`site_category_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `servicesubcategories`
--
ALTER TABLE `servicesubcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicesubcategories_parent_category_id_foreign` (`parent_category_id`);

--
-- Indexes for table `site_categories`
--
ALTER TABLE `site_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_pages`
--
ALTER TABLE `site_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_pages_site_category_id_foreign` (`site_category_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_page_id_foreign` (`page_id`);

--
-- Indexes for table `spaconceptestimonials`
--
ALTER TABLE `spaconceptestimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spaconceptgalleries`
--
ALTER TABLE `spaconceptgalleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spaconceptpartners`
--
ALTER TABLE `spaconceptpartners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academycourses`
--
ALTER TABLE `academycourses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `academyprogramms`
--
ALTER TABLE `academyprogramms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `academyteachers`
--
ALTER TABLE `academyteachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `antiagecategories`
--
ALTER TABLE `antiagecategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `antiagesubcategories`
--
ALTER TABLE `antiagesubcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beautycategories`
--
ALTER TABLE `beautycategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beautyservices`
--
ALTER TABLE `beautyservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beautysubcategories`
--
ALTER TABLE `beautysubcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_generators`
--
ALTER TABLE `page_generators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `servicecategories`
--
ALTER TABLE `servicecategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `servicesubcategories`
--
ALTER TABLE `servicesubcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_categories`
--
ALTER TABLE `site_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `site_pages`
--
ALTER TABLE `site_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `spaconceptestimonials`
--
ALTER TABLE `spaconceptestimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spaconceptgalleries`
--
ALTER TABLE `spaconceptgalleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spaconceptpartners`
--
ALTER TABLE `spaconceptpartners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `antiagesubcategories`
--
ALTER TABLE `antiagesubcategories`
  ADD CONSTRAINT `antiagesubcategories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `antiagecategories` (`id`);

--
-- Constraints for table `beautyservices`
--
ALTER TABLE `beautyservices`
  ADD CONSTRAINT `beautyservices_beautysubcategory_id_foreign` FOREIGN KEY (`beautysubcategory_id`) REFERENCES `beautysubcategories` (`id`);

--
-- Constraints for table `beautysubcategories`
--
ALTER TABLE `beautysubcategories`
  ADD CONSTRAINT `beautysubcategories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `beautycategories` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_site_category_id_foreign` FOREIGN KEY (`site_category_id`) REFERENCES `site_categories` (`id`);

--
-- Constraints for table `page_generators`
--
ALTER TABLE `page_generators`
  ADD CONSTRAINT `page_generators_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `site_pages` (`id`),
  ADD CONSTRAINT `page_generators_site_category_id_foreign` FOREIGN KEY (`site_category_id`) REFERENCES `site_categories` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `servicecategories`
--
ALTER TABLE `servicecategories`
  ADD CONSTRAINT `servicecategories_site_category_id_foreign` FOREIGN KEY (`site_category_id`) REFERENCES `site_categories` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `servicesubcategories` (`id`);

--
-- Constraints for table `servicesubcategories`
--
ALTER TABLE `servicesubcategories`
  ADD CONSTRAINT `servicesubcategories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `servicecategories` (`id`);

--
-- Constraints for table `site_pages`
--
ALTER TABLE `site_pages`
  ADD CONSTRAINT `site_pages_site_category_id_foreign` FOREIGN KEY (`site_category_id`) REFERENCES `site_categories` (`id`);

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `site_pages` (`id`);

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
