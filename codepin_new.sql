-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 01:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codepin_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 4, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, '2024-05-02 07:50:00'),
(2, 0, 5, 'Admin', 'icon-server', '', NULL, NULL, '2024-05-02 07:50:00'),
(3, 2, 6, 'Users', 'icon-users', 'auth/users', NULL, NULL, '2024-05-02 07:50:00'),
(4, 2, 7, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2024-05-02 07:50:00'),
(5, 2, 8, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, '2024-05-02 07:50:00'),
(6, 2, 9, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, '2024-05-02 07:50:00'),
(7, 2, 10, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, '2024-05-02 07:50:00'),
(8, 0, 11, 'Helpers', 'icon-cogs', '', NULL, '2024-05-01 00:10:04', '2024-05-02 07:50:00'),
(9, 8, 12, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-05-01 00:10:04', '2024-05-02 07:50:00'),
(10, 8, 13, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-05-01 00:10:04', '2024-05-02 07:50:00'),
(11, 8, 14, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-05-01 00:10:04', '2024-05-02 07:50:00'),
(12, 8, 15, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-05-01 00:10:04', '2024-05-02 07:50:00'),
(13, 0, 16, 'Contacts', 'icon-file', 'contacts', NULL, '2024-05-01 07:25:32', '2024-05-02 07:50:00'),
(14, 20, 3, 'Blog-categories', 'icon-file', 'blog-categories', NULL, '2024-05-02 02:02:53', '2024-05-03 05:02:30'),
(15, 20, 2, 'Blogs', 'icon-file', 'blogs', NULL, '2024-05-02 02:17:54', '2024-05-03 05:02:09'),
(16, 0, 17, 'Titles', 'icon-file', 'titles', NULL, '2024-05-02 06:25:02', '2024-05-02 07:50:00'),
(17, 21, 18, 'Service-categories', 'icon-file', 'service-categories', NULL, '2024-05-02 07:47:37', '2024-05-03 05:04:06'),
(19, 21, 18, 'Services', 'icon-file', 'services', NULL, '2024-05-03 00:17:38', '2024-05-03 05:03:45'),
(20, 0, 0, 'Blog Section', 'icon-archive', NULL, '*', '2024-05-03 05:01:57', '2024-05-03 05:01:57'),
(21, 0, 0, 'Service Section', 'icon-briefcase', NULL, '*', '2024-05-03 05:03:27', '2024-05-03 05:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-01 00:13:39', '2024-05-01 00:13:39'),
(2, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2024-05-01 00:25:33', '2024-05-01 00:25:33'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-01 00:30:04', '2024-05-01 00:30:04'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-01 03:59:23', '2024-05-01 03:59:23'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-01 06:56:56', '2024-05-01 06:56:56'),
(6, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-01 06:57:01', '2024-05-01 06:57:01'),
(7, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"contact\",\"model_name\":\"App\\\\Models\\\\Contact\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ContactController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"company\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"company_website\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"subject\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"budget\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"KnVkTQpgeUANdQB4oKuFKcFOMgarGJ1FRhdfc75W\"}', '2024-05-01 07:25:31', '2024-05-01 07:25:31'),
(8, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-01 07:25:34', '2024-05-01 07:25:34'),
(9, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-01 07:25:50', '2024-05-01 07:25:50'),
(10, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-01 07:25:52', '2024-05-01 07:25:52'),
(11, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-01 07:25:56', '2024-05-01 07:25:56'),
(12, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-01 07:33:34', '2024-05-01 07:33:34'),
(13, 1, 'admin/contacts/create', 'GET', '127.0.0.1', '[]', '2024-05-01 07:33:38', '2024-05-01 07:33:38'),
(14, 1, 'admin/contacts', 'POST', '127.0.0.1', '{\"name\":\"Damian Mcguire\",\"email\":\"wuzetunu@mailinator.com\",\"company\":\"Lang Kaufman Co\",\"company_website\":\"Horne Stafford Inc\",\"subject\":\"Rerum quasi ab fugit\",\"budget\":\"Veniam voluptatum b\",\"message\":\"Qui quibusdam perfer\",\"_token\":\"KnVkTQpgeUANdQB4oKuFKcFOMgarGJ1FRhdfc75W\"}', '2024-05-01 07:33:42', '2024-05-01 07:33:42'),
(15, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-01 07:33:42', '2024-05-01 07:33:42'),
(16, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 01:17:21', '2024-05-02 01:17:21'),
(17, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:17:25', '2024-05-02 01:17:25'),
(18, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_Contact\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"1,2,3,4,5,6,7,8,9,10,11,12,13\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 01:17:31', '2024-05-02 01:17:31'),
(19, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:17:31', '2024-05-02 01:17:31'),
(20, 1, 'admin/contacts/1,2,3,4,5,6,7,8,9,10,11,12,13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 01:17:32', '2024-05-02 01:17:32'),
(21, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:17:32', '2024-05-02 01:17:32'),
(22, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:17:34', '2024-05-02 01:17:34'),
(23, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 01:49:30', '2024-05-02 01:49:30'),
(24, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 01:49:30', '2024-05-02 01:49:30'),
(25, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:49:34', '2024-05-02 01:49:34'),
(26, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 01:49:36', '2024-05-02 01:49:36'),
(27, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 01:59:55', '2024-05-02 01:59:55'),
(28, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"blog_category\",\"model_name\":\"App\\\\Models\\\\BlogCategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\BlogCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_keyword\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:02:53', '2024-05-02 02:02:53'),
(29, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 02:02:53', '2024-05-02 02:02:53'),
(30, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 02:03:05', '2024-05-02 02:03:05'),
(31, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:03:07', '2024-05-02 02:03:07'),
(32, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:09:02', '2024-05-02 02:09:02'),
(33, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:09:12', '2024-05-02 02:09:12'),
(34, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"Digital Marketing\",\"slug\":null,\"seo_title\":\"Seo Title\",\"seo_description\":\"Seo Description\",\"seo_keyword\":\"Seo Keyword\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:09:51', '2024-05-02 02:09:51'),
(35, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:09:52', '2024-05-02 02:09:52'),
(36, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:09:55', '2024-05-02 02:09:55'),
(37, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"UI UX Design\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:10:03', '2024-05-02 02:10:03'),
(38, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:03', '2024-05-02 02:10:03'),
(39, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:12', '2024-05-02 02:10:12'),
(40, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"End to End Ecommerce Solution\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:10:15', '2024-05-02 02:10:15'),
(41, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:15', '2024-05-02 02:10:15'),
(42, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:26', '2024-05-02 02:10:26'),
(43, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"Website Design & Development\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:10:29', '2024-05-02 02:10:29'),
(44, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:30', '2024-05-02 02:10:30'),
(45, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:38', '2024-05-02 02:10:38'),
(46, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"APP Design & Development\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:10:41', '2024-05-02 02:10:41'),
(47, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:41', '2024-05-02 02:10:41'),
(48, 1, 'admin/blog-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:47', '2024-05-02 02:10:47'),
(49, 1, 'admin/blog-categories', 'POST', '127.0.0.1', '{\"name\":\"Custom Software Development\",\"slug\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:10:51', '2024-05-02 02:10:51'),
(50, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:10:51', '2024-05-02 02:10:51'),
(51, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:12:14', '2024-05-02 02:12:14'),
(52, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:12:43', '2024-05-02 02:12:43'),
(53, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:12:59', '2024-05-02 02:12:59'),
(54, 1, 'admin/contacts', 'GET', '127.0.0.1', '[]', '2024-05-02 02:13:21', '2024-05-02 02:13:21'),
(55, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 02:13:23', '2024-05-02 02:13:23'),
(56, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 02:13:42', '2024-05-02 02:13:42'),
(57, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"blogs\",\"model_name\":\"App\\\\Models\\\\Blog\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\BlogController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_content\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"url\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_description\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_keyword\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":\"1\",\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:17:54', '2024-05-02 02:17:54'),
(58, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 02:17:55', '2024-05-02 02:17:55'),
(59, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 02:18:20', '2024-05-02 02:18:20'),
(60, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:18:22', '2024-05-02 02:18:22'),
(61, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:18:24', '2024-05-02 02:18:24'),
(62, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:18:30', '2024-05-02 02:18:30'),
(63, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:20:23', '2024-05-02 02:20:23'),
(64, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:09', '2024-05-02 02:21:09'),
(65, 1, 'admin/blogs', 'POST', '127.0.0.1', '{\"title\":\"Hello\",\"slug\":null,\"short_content\":null,\"alt\":null,\"url\":null,\"description\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:21:17', '2024-05-02 02:21:17'),
(66, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:17', '2024-05-02 02:21:17'),
(67, 1, 'admin/blogs/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:29', '2024-05-02 02:21:29'),
(68, 1, 'admin/blogs/1', 'PUT', '127.0.0.1', '{\"title\":\"APP Design & Development\",\"slug\":\"hello\",\"short_content\":null,\"alt\":null,\"url\":null,\"description\":null,\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 02:21:32', '2024-05-02 02:21:32'),
(69, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:32', '2024-05-02 02:21:32'),
(70, 1, 'admin/blogs/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:38', '2024-05-02 02:21:38'),
(71, 1, 'admin/blogs/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 02:21:44', '2024-05-02 02:21:44'),
(72, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:21:44', '2024-05-02 02:21:44'),
(73, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:22:47', '2024-05-02 02:22:47'),
(74, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:22:49', '2024-05-02 02:22:49'),
(75, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 02:24:35', '2024-05-02 02:24:35'),
(76, 1, 'admin/blogs', 'POST', '127.0.0.1', '{\"title\":null,\"slug\":null,\"short_content\":null,\"alt\":null,\"url\":null,\"description\":\"<p><strong>hello<\\/strong><\\/p>\",\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/blogs\"}', '2024-05-02 02:24:52', '2024-05-02 02:24:52'),
(77, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:24:53', '2024-05-02 02:24:53'),
(78, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:27:22', '2024-05-02 02:27:22'),
(79, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 02:27:24', '2024-05-02 02:27:24'),
(80, 1, 'admin/blogs/2', 'PUT', '127.0.0.1', '{\"title\":null,\"slug\":null,\"short_content\":null,\"alt\":null,\"url\":null,\"description\":\"<p><strong>hello<\\/strong><\\/p>\",\"seo_title\":null,\"seo_description\":null,\"seo_keyword\":null,\"question\":null,\"answer\":null,\"status\":\"1\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 02:27:34', '2024-05-02 02:27:34'),
(81, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:27:35', '2024-05-02 02:27:35'),
(82, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 02:27:49', '2024-05-02 02:27:49'),
(83, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 03:33:15', '2024-05-02 03:33:15'),
(84, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 03:33:19', '2024-05-02 03:33:19'),
(85, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 03:33:24', '2024-05-02 03:33:24'),
(86, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 03:34:41', '2024-05-02 03:34:41'),
(87, 1, 'admin/blogs/2', 'PUT', '127.0.0.1', '{\"category_id\":\"5\",\"search_terms\":null,\"title\":\"Culpa harum aut dol\",\"slug\":null,\"short_content\":\"Impedit architecto\",\"alt\":\"Et impedit tempora\",\"url\":\"https:\\/\\/www.voc.tv\",\"description\":\"<p><strong>hello<\\/strong><\\/p>\",\"seo_title\":\"Commodi impedit eni\",\"seo_description\":\"Laborum Proident i\",\"seo_keyword\":\"Consectetur volupta\",\"question\":\"Ex non ullam ut volu\",\"answer\":\"Quis fugiat autem ve\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"after-save\":\"view\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/blogs\"}', '2024-05-02 03:35:12', '2024-05-02 03:35:12'),
(88, 1, 'admin/blogs/2', 'GET', '127.0.0.1', '[]', '2024-05-02 03:35:12', '2024-05-02 03:35:12'),
(89, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 03:35:16', '2024-05-02 03:35:16'),
(90, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 03:38:28', '2024-05-02 03:38:28'),
(91, 1, 'admin/blogs', 'POST', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Aut dignissimos sapi\",\"slug\":null,\"short_content\":\"Aut incidunt nesciu\",\"alt\":\"Omnis rem in rerum n\",\"url\":\"https:\\/\\/www.lucikitazam.org.uk\",\"description\":\"<p><em><strong>XasaSsSAs<\\/strong><\\/em><\\/p>\",\"seo_title\":\"Excepturi excepturi\",\"seo_description\":\"Eiusmod quisquam cul\",\"seo_keyword\":\"Velit illum quis a\",\"question\":\"Aut velit sit numqua\",\"answer\":\"Laboris est dolor v\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"after-save\":\"view\"}', '2024-05-02 03:38:48', '2024-05-02 03:38:48'),
(92, 1, 'admin/blogs/3', 'GET', '127.0.0.1', '[]', '2024-05-02 03:38:48', '2024-05-02 03:38:48'),
(93, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 03:38:50', '2024-05-02 03:38:50'),
(94, 1, 'admin/blogs', 'POST', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Labore sit iusto am\",\"slug\":null,\"short_content\":\"Quaerat deleniti eum\",\"alt\":\"Expedita dolores lab\",\"url\":\"https:\\/\\/www.lecali.info\",\"description\":\"<p>ZXZXzxzXzxxzxzxzxz<a href=\\\"https:\\/\\/ahitechno.com\\/\\\">https:\\/\\/ahitechno.com\\/<\\/a><\\/p>\",\"seo_title\":\"Sint deserunt ut im\",\"seo_description\":\"Est alias id et vol\",\"seo_keyword\":\"Porro amet maxime q\",\"question\":\"Et nobis rerum nemo\",\"answer\":\"Eaque excepteur do t\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 03:39:26', '2024-05-02 03:39:26'),
(95, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 03:39:27', '2024-05-02 03:39:27'),
(96, 1, 'admin/blogs/4/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 03:39:30', '2024-05-02 03:39:30'),
(97, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 03:39:45', '2024-05-02 03:39:45'),
(98, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2024-05-02 04:04:40', '2024-05-02 04:04:40'),
(99, 1, 'admin/blogs', 'POST', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":null,\"short_content\":\"Possimus velit sus\",\"image_file_del_\":\"new\\/Heaven\'s Lost Property.jpg,\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"Sint aut sunt accus\",\"answer\":\"Porro laborum Simil\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"after-save\":\"view\"}', '2024-05-02 04:05:07', '2024-05-02 04:05:07'),
(100, 1, 'admin/blogs/5', 'GET', '127.0.0.1', '[]', '2024-05-02 04:05:07', '2024-05-02 04:05:07'),
(101, 1, 'admin/blogs/5', 'GET', '127.0.0.1', '[]', '2024-05-02 04:05:09', '2024-05-02 04:05:09'),
(102, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 04:05:11', '2024-05-02 04:05:11'),
(103, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 04:05:25', '2024-05-02 04:05:25'),
(104, 1, 'admin/blogs/5', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":\"porro-aliquam-doloru\",\"short_content\":\"Possimus velit sus\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"Sint aut sunt accus\",\"answer\":\"Porro laborum Simil\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 04:05:32', '2024-05-02 04:05:32'),
(105, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 04:05:33', '2024-05-02 04:05:33'),
(106, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 06:15:29', '2024-05-02 06:15:29'),
(107, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 06:15:36', '2024-05-02 06:15:36'),
(108, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 06:15:36', '2024-05-02 06:15:36'),
(109, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 06:15:39', '2024-05-02 06:15:39'),
(110, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"title\",\"model_name\":\"App\\\\Models\\\\Title\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\TitleController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"seo_title_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_home\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_about\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_about\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_about\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_services\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_services\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_services\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_blog\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_blog\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_blog\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_case\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_case\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_case\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key_contact\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 06:25:01', '2024-05-02 06:25:01'),
(111, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 06:25:04', '2024-05-02 06:25:04'),
(112, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 06:25:24', '2024-05-02 06:25:24'),
(113, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 06:25:26', '2024-05-02 06:25:26'),
(114, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2024-05-02 06:25:28', '2024-05-02 06:25:28'),
(115, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2024-05-02 06:25:38', '2024-05-02 06:25:38'),
(116, 1, 'admin/titles', 'POST', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home des\",\"seo_key_home\":\"home key\",\"seo_title_about\":null,\"seo_des_about\":null,\"seo_key_about\":null,\"seo_title_services\":null,\"seo_des_services\":null,\"seo_key_services\":null,\"seo_title_blog\":null,\"seo_des_blog\":null,\"seo_key_blog\":null,\"seo_title_case\":null,\"seo_des_case\":null,\"seo_key_case\":null,\"seo_title_contact\":null,\"seo_des_contact\":null,\"seo_key_contact\":null,\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 06:39:39', '2024-05-02 06:39:39'),
(117, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 06:39:39', '2024-05-02 06:39:39'),
(118, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 06:40:49', '2024-05-02 06:40:49'),
(119, 1, 'admin/titles/1', 'PUT', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home des\",\"seo_key_home\":\"home key\",\"seo_title_about\":\"about title\",\"seo_des_about\":\"about des\",\"seo_key_about\":\"about key\",\"seo_title_services\":\"services title\",\"seo_des_services\":\"services des\",\"seo_key_services\":\"services key\",\"seo_title_blog\":\"blog title\",\"seo_des_blog\":\"blog des\",\"seo_key_blog\":\"blog key\",\"seo_title_case\":\"case title\",\"seo_des_case\":\"case des\",\"seo_key_case\":\"case key\",\"seo_title_contact\":\"contact title\",\"seo_des_contact\":\"contact des\",\"seo_key_contact\":\"contact key\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 06:43:03', '2024-05-02 06:43:03'),
(120, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 06:43:03', '2024-05-02 06:43:03'),
(121, 1, 'admin/titles/create', 'GET', '127.0.0.1', '[]', '2024-05-02 07:10:44', '2024-05-02 07:10:44'),
(122, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 07:10:46', '2024-05-02 07:10:46'),
(123, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:10:48', '2024-05-02 07:10:48'),
(124, 1, 'admin/titles/1', 'PUT', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home des\",\"seo_key_home\":\"home key\",\"seo_title_about\":\"about title\",\"seo_des_about\":\"about des\",\"seo_key_about\":\"about key\",\"seo_title_services\":null,\"seo_des_services\":null,\"seo_key_services\":null,\"seo_title_blog\":\"blog title\",\"seo_des_blog\":\"blog des\",\"seo_key_blog\":\"blog key\",\"seo_title_case\":\"case title\",\"seo_des_case\":\"case des\",\"seo_key_case\":\"case key\",\"seo_title_contact\":\"contact title\",\"seo_des_contact\":\"contact des\",\"seo_key_contact\":\"contact key\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 07:11:02', '2024-05-02 07:11:02'),
(125, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 07:11:03', '2024-05-02 07:11:03'),
(126, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:17:22', '2024-05-02 07:17:22'),
(127, 1, 'admin/titles/1', 'PUT', '127.0.0.1', '{\"seo_title_home\":\"home title\",\"seo_des_home\":\"home des\",\"seo_key_home\":\"home key\",\"seo_title_about\":\"about title\",\"seo_des_about\":\"about des\",\"seo_key_about\":\"about key\",\"seo_title_services\":\"services Title\",\"seo_des_services\":\"services des\",\"seo_key_services\":\"services key\",\"seo_title_blog\":\"blog title\",\"seo_des_blog\":\"blog des\",\"seo_key_blog\":\"blog key\",\"seo_title_case\":\"case title\",\"seo_des_case\":\"case des\",\"seo_key_case\":\"case key\",\"seo_title_contact\":\"contact title\",\"seo_des_contact\":\"contact des\",\"seo_key_contact\":\"contact key\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 07:17:53', '2024-05-02 07:17:53'),
(128, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-02 07:17:53', '2024-05-02 07:17:53'),
(129, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 07:43:22', '2024-05-02 07:43:22'),
(130, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"service_category\",\"model_name\":\"App\\\\Models\\\\ServiceCategory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ServiceCategoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_des\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_key\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:47:37', '2024-05-02 07:47:37'),
(131, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 07:47:37', '2024-05-02 07:47:37'),
(132, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-02 07:47:51', '2024-05-02 07:47:51'),
(133, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:47:53', '2024-05-02 07:47:53'),
(134, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:48:02', '2024-05-02 07:48:02'),
(135, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Blog Section\",\"icon\":\"icon-align-justify\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:48:26', '2024-05-02 07:48:26'),
(136, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:48:26', '2024-05-02 07:48:26'),
(137, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:49:01', '2024-05-02 07:49:01'),
(138, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:49:03', '2024-05-02 07:49:03'),
(139, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"15\\\"},{\\\"id\\\":\\\"14\\\"},{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"}]},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"},{\\\"id\\\":\\\"12\\\"}]},{\\\"id\\\":\\\"13\\\"},{\\\"id\\\":\\\"16\\\"},{\\\"id\\\":\\\"17\\\"}]\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:50:00', '2024-05-02 07:50:00'),
(140, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:50:00', '2024-05-02 07:50:00'),
(141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:50:02', '2024-05-02 07:50:02'),
(142, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:50:15', '2024-05-02 07:50:15'),
(143, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:50:19', '2024-05-02 07:50:19'),
(144, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 07:51:29', '2024-05-02 07:51:29'),
(145, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-05-02 07:51:33', '2024-05-02 07:51:33'),
(146, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:51:36', '2024-05-02 07:51:36'),
(147, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:51:59', '2024-05-02 07:51:59'),
(148, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"18\",\"search_terms\":null,\"title\":\"Blog Section\",\"icon\":\"icon-align-justify\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 07:52:04', '2024-05-02 07:52:04'),
(149, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:05', '2024-05-02 07:52:05'),
(150, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Blog Section\",\"icon\":\"icon-align-justify\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 07:52:13', '2024-05-02 07:52:13'),
(151, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:14', '2024-05-02 07:52:14'),
(152, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:17', '2024-05-02 07:52:17'),
(153, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:27', '2024-05-02 07:52:27'),
(154, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:40', '2024-05-02 07:52:40'),
(155, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:46', '2024-05-02 07:52:46'),
(156, 1, 'admin/auth/menu/18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:52:49', '2024-05-02 07:52:49'),
(157, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:49', '2024-05-02 07:52:49'),
(158, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:52', '2024-05-02 07:52:52'),
(159, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:54', '2024-05-02 07:52:54'),
(160, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:55', '2024-05-02 07:52:55'),
(161, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:56', '2024-05-02 07:52:56'),
(162, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:52:58', '2024-05-02 07:52:58'),
(163, 1, 'admin/blog-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:53:00', '2024-05-02 07:53:00'),
(164, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:56:49', '2024-05-02 07:56:49'),
(165, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 07:56:51', '2024-05-02 07:56:51'),
(166, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Micah Ayala\",\"slug\":\"Blanditiis eum incid\",\"seo_title\":\"Modi dolores fugiat\",\"seo_des\":\"Qui ex neque nisi re\",\"seo_key\":\"Qui ut ducimus veri\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:56:53', '2024-05-02 07:56:53'),
(167, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:56:53', '2024-05-02 07:56:53'),
(168, 1, 'admin/service-categories/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:58:36', '2024-05-02 07:58:36'),
(169, 1, 'admin/service-categories/1', 'PUT', '127.0.0.1', '{\"name\":\"Micah Ayala\",\"slug\":null,\"seo_title\":\"Modi dolores fugiat\",\"seo_des\":\"Qui ex neque nisi re\",\"seo_key\":\"Qui ut ducimus veri\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\",\"_method\":\"PUT\"}', '2024-05-02 07:58:41', '2024-05-02 07:58:41'),
(170, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:58:41', '2024-05-02 07:58:41'),
(171, 1, 'admin/service-categories/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 07:58:45', '2024-05-02 07:58:45'),
(172, 1, 'admin/service-categories/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"d9OcQ85fpp3bkiz3tZcgX4tB5gDUegZjgSZGYYYI\"}', '2024-05-02 07:58:47', '2024-05-02 07:58:47'),
(173, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 07:58:48', '2024-05-02 07:58:48'),
(174, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 23:46:57', '2024-05-02 23:46:57'),
(175, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:13', '2024-05-02 23:47:13'),
(176, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrators\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"$2y$12$UgWURSXv5Odv0QDp2Wd2Rub8veZ3hA6wiFO0R9\\/mIiQPyhPsWi7gC\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-02 23:47:17', '2024-05-02 23:47:17'),
(177, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:17', '2024-05-02 23:47:17'),
(178, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:20', '2024-05-02 23:47:20'),
(179, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:22', '2024-05-02 23:47:22'),
(180, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:24', '2024-05-02 23:47:24'),
(181, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2024-05-02 23:47:27', '2024-05-02 23:47:27'),
(182, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:50:38', '2024-05-02 23:50:38'),
(183, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 23:50:48', '2024-05-02 23:50:48'),
(184, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:50:56', '2024-05-02 23:50:56'),
(185, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 23:50:57', '2024-05-02 23:50:57'),
(186, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:51:01', '2024-05-02 23:51:01'),
(187, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:53:04', '2024-05-02 23:53:04'),
(188, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:53:38', '2024-05-02 23:53:38'),
(189, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:53:49', '2024-05-02 23:53:49'),
(190, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:53:55', '2024-05-02 23:53:55'),
(191, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:54:15', '2024-05-02 23:54:15'),
(192, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:54:51', '2024-05-02 23:54:51'),
(193, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 23:54:57', '2024-05-02 23:54:57'),
(194, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:54:59', '2024-05-02 23:54:59'),
(195, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 23:55:04', '2024-05-02 23:55:04'),
(196, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:55:34', '2024-05-02 23:55:34'),
(197, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:56:04', '2024-05-02 23:56:04'),
(198, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-02 23:56:07', '2024-05-02 23:56:07'),
(199, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-02 23:56:18', '2024-05-02 23:56:18'),
(200, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:56:55', '2024-05-02 23:56:55'),
(201, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:56:57', '2024-05-02 23:56:57'),
(202, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Marcia Rose\",\"slug\":null,\"seo_title\":\"Aliquid aut dolor po\",\"seo_description\":\"Consequatur soluta\",\"seo_keyword\":\"Amet omnis optio m\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:57:03', '2024-05-02 23:57:03'),
(203, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:57:05', '2024-05-02 23:57:05'),
(204, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:57:41', '2024-05-02 23:57:41'),
(205, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Unity Hunt\",\"slug\":null,\"seo_title\":\"Sunt est pariatur Q\",\"seo_des\":\"Et eiusmod mollit si\",\"seo_key\":\"Commodi eveniet ani\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:57:44', '2024-05-02 23:57:44'),
(206, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:57:44', '2024-05-02 23:57:44'),
(207, 1, 'admin/service-categories/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:57:53', '2024-05-02 23:57:53'),
(208, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:57:53', '2024-05-02 23:57:53'),
(209, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:04', '2024-05-02 23:58:04'),
(210, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Digital Marketing\",\"slug\":null,\"seo_title\":\"Veritatis mollitia l\",\"seo_des\":\"In fugiat consequat\",\"seo_key\":\"Et similique minim d\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:58:22', '2024-05-02 23:58:22'),
(211, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:22', '2024-05-02 23:58:22'),
(212, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:28', '2024-05-02 23:58:28'),
(213, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"UI UX Design\",\"slug\":null,\"seo_title\":\"Delectus odit quis\",\"seo_des\":\"Distinctio Eligendi\",\"seo_key\":\"Sit lorem veniam vo\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"after-save\":\"view\"}', '2024-05-02 23:58:33', '2024-05-02 23:58:33'),
(214, 1, 'admin/service-categories/4', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:33', '2024-05-02 23:58:33'),
(215, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:42', '2024-05-02 23:58:42'),
(216, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:43', '2024-05-02 23:58:43'),
(217, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"End to End Ecommerce Solution\",\"slug\":null,\"seo_title\":\"Velit deleniti recu\",\"seo_des\":\"Blanditiis ut esse\",\"seo_key\":\"Non culpa praesenti\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"after-save\":\"continue_creating\"}', '2024-05-02 23:58:54', '2024-05-02 23:58:54'),
(218, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:58:55', '2024-05-02 23:58:55'),
(219, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Website Design & Development\",\"slug\":null,\"seo_title\":\"Qui eaque sequi mole\",\"seo_des\":\"Incidunt nostrum el\",\"seo_key\":\"Nulla hic iure conse\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"after-save\":\"view\"}', '2024-05-02 23:59:09', '2024-05-02 23:59:09'),
(220, 1, 'admin/service-categories/6', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:09', '2024-05-02 23:59:09'),
(221, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:16', '2024-05-02 23:59:16'),
(222, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:27', '2024-05-02 23:59:27'),
(223, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"APP Design & Development\",\"slug\":null,\"seo_title\":\"Consequuntur volupta\",\"seo_des\":\"Pariatur Ea perfere\",\"seo_key\":\"Consectetur aut ex\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:59:33', '2024-05-02 23:59:33'),
(224, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:33', '2024-05-02 23:59:33'),
(225, 1, 'admin/service-categories/create', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:40', '2024-05-02 23:59:40'),
(226, 1, 'admin/service-categories', 'POST', '127.0.0.1', '{\"name\":\"Custom Software Development\",\"slug\":null,\"seo_title\":\"Consequatur Assumen\",\"seo_des\":\"Deserunt laborum nes\",\"seo_key\":\"Aut quas iusto non v\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-02 23:59:46', '2024-05-02 23:59:46'),
(227, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:46', '2024-05-02 23:59:46'),
(228, 1, 'admin/service-categories', 'GET', '127.0.0.1', '[]', '2024-05-02 23:59:51', '2024-05-02 23:59:51'),
(229, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-03 00:05:14', '2024-05-03 00:05:14'),
(230, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"services\",\"model_name\":\"App\\\\Models\\\\Service\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ServiceController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"service_category_id\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"slug\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"short_content\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"home_image\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"alt\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"url\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_description\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"seo_keyword\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"question\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"answer\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"type\":\"integer\",\"key\":null,\"default\":\"1\",\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 00:17:37', '2024-05-03 00:17:37'),
(231, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-03 00:17:39', '2024-05-03 00:17:39'),
(232, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-03 00:18:00', '2024-05-03 00:18:00'),
(233, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-03 00:19:30', '2024-05-03 00:19:30'),
(234, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 00:19:32', '2024-05-03 00:19:32'),
(235, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 00:35:48', '2024-05-03 00:35:48'),
(236, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 00:35:49', '2024-05-03 00:35:49'),
(237, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 00:41:38', '2024-05-03 00:41:38'),
(238, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"3\",\"search_terms\":null,\"title\":\"Fugiat est quisquam\",\"slug\":null,\"short_content\":\"Voluptatum qui nobis\",\"alt\":\"Maxime molestiae vol\",\"url\":\"https:\\/\\/www.wosypi.cm\",\"description\":\"<p>wwqwqewqewqe<strong>&nbsp;wwqewewe eqwewqe&nbsp;<\\/strong><\\/p>\",\"seo_title\":\"Aut vitae qui assume\",\"seo_description\":\"Placeat ad animi i\",\"seo_keyword\":\"Aliquip ipsa aut id\",\"question\":\"Quos facere commodi\",\"answer\":\"Dolor sint perferend\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 00:58:16', '2024-05-03 00:58:16'),
(239, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 00:58:17', '2024-05-03 00:58:17'),
(240, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 00:59:22', '2024-05-03 00:59:22'),
(241, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 00:59:59', '2024-05-03 00:59:59'),
(242, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"4\",\"search_terms\":null,\"title\":\"Nulla quo culpa aute\",\"slug\":null,\"short_content\":\"Ut nobis aut vel aut\",\"alt\":\"In non a consectetur\",\"url\":\"https:\\/\\/www.coqunuderifyx.org.uk\",\"description\":\"<p>UI UX De<\\/p>\",\"seo_title\":\"Officia sit asperio\",\"seo_description\":\"Voluptas dignissimos\",\"seo_keyword\":\"Adipisicing sunt ut\",\"question\":\"Illum voluptatem qu\",\"answer\":\"Eaque assumenda et u\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 01:02:06', '2024-05-03 01:02:06'),
(243, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:02:07', '2024-05-03 01:02:07'),
(244, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 01:02:11', '2024-05-03 01:02:11'),
(245, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"service_category_id\":\"3\",\"search_terms\":null,\"title\":\"Fugiat est quisquam\",\"slug\":\"fugiat-est-quisquam\",\"short_content\":\"Voluptatum qui nobis\",\"alt\":\"Maxime molestiae vol\",\"url\":\"https:\\/\\/www.wosypi.cm\",\"description\":\"<h3>CodePin: Your All-in-One Digital Marketing Powerhouse<\\/h3>\\r\\n\\r\\n<p><strong>We&#39;re a data-driven digital marketing agency obsessed with results.<\\/strong>&nbsp;Our passionate team of SEO specialists, content marketing wizards, social media ninjas, and PPC pros collaborate closely with you to craft a customized digital strategy that gets you noticed online.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/new\\/images\\/digital-marketing4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>Looking to dominate search engines, skyrocket social media engagement, and achieve real business growth?<\\/strong>&nbsp;Look no further than CodePin!<\\/p>\\r\\n\\r\\n<p><strong>No matter your industry (education, SaaS, healthcare, finance, or beyond) or digital marketing experience level (beginner or seasoned pro), we&#39;ve got you covered.<\\/strong>&nbsp;We leverage the latest and most effective tools to create high-quality, results-oriented strategies.<\\/p>\\r\\n\\r\\n<p>Here&#39;s how CodePin empowers your digital presence:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li><strong>SEO Optimization:<\\/strong>&nbsp;Increase your website traffic through targeted keyword research and strategic on-page and off-page optimization.<\\/li>\\r\\n\\t<li><strong>Content Marketing:<\\/strong>&nbsp;Captivate your audience with engaging, informative content that positions you as an industry leader.<\\/li>\\r\\n\\t<li><strong>Social Media Marketing:<\\/strong>&nbsp;Build a thriving online community, boost brand awareness, and drive conversions through strategic social media management.<\\/li>\\r\\n\\t<li><strong>Pay-Per-Click (PPC) Advertising:<\\/strong>&nbsp;Reach your ideal customers with laser-focused PPC campaigns that deliver a high return on investment (ROI).<\\/li>\\r\\n<\\/ul>\",\"seo_title\":\"Aut vitae qui assume\",\"seo_description\":\"Placeat ad animi i\",\"seo_keyword\":\"Aliquip ipsa aut id\",\"question\":\"Quos facere commodi\",\"answer\":\"Dolor sint perferend\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 01:02:34', '2024-05-03 01:02:34');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(246, 1, 'admin/services/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 01:02:34', '2024-05-03 01:02:34'),
(247, 1, 'admin/services/1', 'PUT', '127.0.0.1', '{\"service_category_id\":\"3\",\"search_terms\":null,\"title\":\"Fugiat est quisquam\",\"slug\":\"fugiat-est-quisquam\",\"short_content\":\"Voluptatum qui nobis\",\"alt\":\"Maxime molestiae vol\",\"url\":\"https:\\/\\/www.wosypi.cm\",\"description\":\"<h3>CodePin: Your All-in-One Digital Marketing Powerhouse<\\/h3>\\r\\n\\r\\n<p><strong>We&#39;re a data-driven digital marketing agency obsessed with results.<\\/strong>&nbsp;Our passionate team of SEO specialists, content marketing wizards, social media ninjas, and PPC pros collaborate closely with you to craft a customized digital strategy that gets you noticed online.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/127.0.0.1:8000\\/new\\/images\\/digital-marketing4.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>Looking to dominate search engines, skyrocket social media engagement, and achieve real business growth?<\\/strong>&nbsp;Look no further than CodePin!<\\/p>\\r\\n\\r\\n<p><strong>No matter your industry (education, SaaS, healthcare, finance, or beyond) or digital marketing experience level (beginner or seasoned pro), we&#39;ve got you covered.<\\/strong>&nbsp;We leverage the latest and most effective tools to create high-quality, results-oriented strategies.<\\/p>\\r\\n\\r\\n<p>Here&#39;s how CodePin empowers your digital presence:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li><strong>SEO Optimization:<\\/strong>&nbsp;Increase your website traffic through targeted keyword research and strategic on-page and off-page optimization.<\\/li>\\r\\n\\t<li><strong>Content Marketing:<\\/strong>&nbsp;Captivate your audience with engaging, informative content that positions you as an industry leader.<\\/li>\\r\\n\\t<li><strong>Social Media Marketing:<\\/strong>&nbsp;Build a thriving online community, boost brand awareness, and drive conversions through strategic social media management.<\\/li>\\r\\n\\t<li><strong>Pay-Per-Click (PPC) Advertising:<\\/strong>&nbsp;Reach your ideal customers with laser-focused PPC campaigns that deliver a high return on investment (ROI).<\\/li>\\r\\n<\\/ul>\",\"seo_title\":\"Aut vitae qui assume\",\"seo_description\":\"Placeat ad animi i\",\"seo_keyword\":\"Aliquip ipsa aut id\",\"question\":\"Quos facere commodi\",\"answer\":\"Dolor sint perferend\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 01:03:16', '2024-05-03 01:03:16'),
(248, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:03:17', '2024-05-03 01:03:17'),
(249, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 01:03:23', '2024-05-03 01:03:23'),
(250, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"5\",\"search_terms\":null,\"title\":\"Esse quaerat eveniet\",\"slug\":null,\"short_content\":\"Fugiat non totam ci\",\"alt\":\"Non recusandae Ea a\",\"url\":\"https:\\/\\/www.qaronyzewaxo.me.uk\",\"description\":\"<p>asdsadsdsdsadasdsd<\\/p>\",\"seo_title\":\"Obcaecati aliqua Qu\",\"seo_description\":\"Reiciendis voluptas\",\"seo_keyword\":\"Enim hic laborum Eu\",\"question\":\"Rerum exercitation a\",\"answer\":\"Nam omnis perferendi\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 01:04:21', '2024-05-03 01:04:21'),
(251, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:04:21', '2024-05-03 01:04:21'),
(252, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 01:04:24', '2024-05-03 01:04:24'),
(253, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"6\",\"search_terms\":null,\"title\":\"Consequatur volupta\",\"slug\":null,\"short_content\":\"Voluptatibus dolorem\",\"alt\":\"Ut consectetur et q\",\"url\":\"https:\\/\\/www.lypomonogyn.cc\",\"description\":\"<p>asdsadas asdd asd&nbsp; a ds dsad adsads akjkja la kjlal s sa<\\/p>\",\"seo_title\":\"Dolor sunt aliquip a\",\"seo_description\":\"Nulla ut qui pariatu\",\"seo_keyword\":\"Quo porro quae recus\",\"question\":\"Quod quia cupidatat\",\"answer\":\"Animi necessitatibu\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 01:05:10', '2024-05-03 01:05:10'),
(254, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:05:10', '2024-05-03 01:05:10'),
(255, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 01:05:14', '2024-05-03 01:05:14'),
(256, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"7\",\"search_terms\":null,\"title\":\"Eos eveniet tempore\",\"slug\":null,\"short_content\":\"Doloribus reprehende\",\"alt\":\"Accusamus et iure ut\",\"url\":\"https:\\/\\/www.zijojocupe.cm\",\"description\":\"<p><strong>&nbsp;App design&nbsp;<\\/strong><\\/p>\",\"seo_title\":\"Aut id officiis und\",\"seo_description\":\"Perferendis corrupti\",\"seo_keyword\":\"Dolor delectus natu\",\"question\":\"Sit est voluptate a\",\"answer\":\"Ipsa non placeat p\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"after-save\":\"view\"}', '2024-05-03 01:07:16', '2024-05-03 01:07:16'),
(257, 1, 'admin/services/5', 'GET', '127.0.0.1', '[]', '2024-05-03 01:07:17', '2024-05-03 01:07:17'),
(258, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 01:07:19', '2024-05-03 01:07:19'),
(259, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:07:27', '2024-05-03 01:07:27'),
(260, 1, 'admin/services/create', 'GET', '127.0.0.1', '[]', '2024-05-03 01:07:38', '2024-05-03 01:07:38'),
(261, 1, 'admin/services', 'POST', '127.0.0.1', '{\"service_category_id\":\"8\",\"search_terms\":null,\"title\":\"Laborum Laboris sun\",\"slug\":null,\"short_content\":\"Omnis voluptatem pla\",\"alt\":\"Est voluptate verita\",\"url\":\"https:\\/\\/www.mynycumyc.co.uk\",\"description\":\"<p><strong>Custom Software<\\/strong><\\/p>\",\"seo_title\":\"Est molestias totam\",\"seo_description\":\"Quisquam reprehender\",\"seo_keyword\":\"Cupiditate modi expe\",\"question\":\"Non et minus adipisc\",\"answer\":\"Eaque velit unde do\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 01:08:27', '2024-05-03 01:08:27'),
(262, 1, 'admin/services', 'GET', '127.0.0.1', '[]', '2024-05-03 01:08:27', '2024-05-03 01:08:27'),
(263, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 04:42:22', '2024-05-03 04:42:22'),
(264, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 04:44:05', '2024-05-03 04:44:05'),
(265, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 04:44:14', '2024-05-03 04:44:14'),
(266, 1, 'admin/titles/1/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 04:45:04', '2024-05-03 04:45:04'),
(267, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 04:45:20', '2024-05-03 04:45:20'),
(268, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 04:45:21', '2024-05-03 04:45:21'),
(269, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 04:57:49', '2024-05-03 04:57:49'),
(270, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 05:00:21', '2024-05-03 05:00:21'),
(271, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 05:00:42', '2024-05-03 05:00:42'),
(272, 1, 'admin/titles', 'GET', '127.0.0.1', '[]', '2024-05-03 05:00:59', '2024-05-03 05:00:59'),
(273, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:01:28', '2024-05-03 05:01:28'),
(274, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Blog Section\",\"icon\":\"icon-archive\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 05:01:57', '2024-05-03 05:01:57'),
(275, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:01:58', '2024-05-03 05:01:58'),
(276, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:01:59', '2024-05-03 05:01:59'),
(277, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:04', '2024-05-03 05:02:04'),
(278, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"20\",\"search_terms\":null,\"title\":\"Blogs\",\"icon\":\"icon-file\",\"uri\":\"blogs\",\"roles\":[null],\"permission\":null,\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 05:02:09', '2024-05-03 05:02:09'),
(279, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:09', '2024-05-03 05:02:09'),
(280, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:11', '2024-05-03 05:02:11'),
(281, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:13', '2024-05-03 05:02:13'),
(282, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:21', '2024-05-03 05:02:21'),
(283, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:26', '2024-05-03 05:02:26'),
(284, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"20\",\"search_terms\":null,\"title\":\"Blog-categories\",\"icon\":\"icon-file\",\"uri\":\"blog-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 05:02:30', '2024-05-03 05:02:30'),
(285, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:30', '2024-05-03 05:02:30'),
(286, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:02:31', '2024-05-03 05:02:31'),
(287, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Service Section\",\"icon\":\"icon-briefcase\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\"}', '2024-05-03 05:03:27', '2024-05-03 05:03:27'),
(288, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:27', '2024-05-03 05:03:27'),
(289, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:29', '2024-05-03 05:03:29'),
(290, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:36', '2024-05-03 05:03:36'),
(291, 1, 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"21\",\"search_terms\":null,\"title\":\"Services\",\"icon\":\"icon-file\",\"uri\":\"services\",\"roles\":[null],\"permission\":null,\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 05:03:45', '2024-05-03 05:03:45'),
(292, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:45', '2024-05-03 05:03:45'),
(293, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:47', '2024-05-03 05:03:47'),
(294, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 05:03:58', '2024-05-03 05:03:58'),
(295, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"21\",\"search_terms\":null,\"title\":\"Service-categories\",\"icon\":\"icon-file\",\"uri\":\"service-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 05:04:06', '2024-05-03 05:04:06'),
(296, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:04:06', '2024-05-03 05:04:06'),
(297, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:04:08', '2024-05-03 05:04:08'),
(298, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:04:42', '2024-05-03 05:04:42'),
(299, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:05:16', '2024-05-03 05:05:16'),
(300, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:05:33', '2024-05-03 05:05:33'),
(301, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:05:46', '2024-05-03 05:05:46'),
(302, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:01', '2024-05-03 05:06:01'),
(303, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:04', '2024-05-03 05:06:04'),
(304, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:08', '2024-05-03 05:06:08'),
(305, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:16', '2024-05-03 05:06:16'),
(306, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:28', '2024-05-03 05:06:28'),
(307, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:40', '2024-05-03 05:06:40'),
(308, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:44', '2024-05-03 05:06:44'),
(309, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:46', '2024-05-03 05:06:46'),
(310, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:06:49', '2024-05-03 05:06:49'),
(311, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-05-03 05:07:58', '2024-05-03 05:07:58'),
(312, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-03 05:21:04', '2024-05-03 05:21:04'),
(313, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:17', '2024-05-03 06:12:17'),
(314, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:21', '2024-05-03 06:12:21'),
(315, 1, 'admin/blogs/5', 'PUT', '127.0.0.1', '{\"category_id\":\"2\",\"search_terms\":null,\"title\":\"Porro aliquam doloru\",\"slug\":\"porro-aliquam-doloru\",\"short_content\":\"Possimus velit sus\",\"alt\":\"Optio magni totam e\",\"url\":\"https:\\/\\/www.bore.tv\",\"description\":\"<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt<\\/p>\",\"seo_title\":\"In sed itaque offici\",\"seo_description\":\"Pariatur Doloremque\",\"seo_keyword\":\"Exercitationem culpa\",\"question\":\"Sint aut sunt accus\",\"answer\":\"Porro laborum Simil\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 06:12:30', '2024-05-03 06:12:30'),
(316, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:30', '2024-05-03 06:12:30'),
(317, 1, 'admin/blogs/4/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:32', '2024-05-03 06:12:32'),
(318, 1, 'admin/blogs/4', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Labore sit iusto am\",\"slug\":\"labore-sit-iusto-am\",\"short_content\":\"Quaerat deleniti eum\",\"alt\":\"Expedita dolores lab\",\"url\":\"https:\\/\\/www.lecali.info\",\"description\":\"<p>ZXZXzxzXzxxzxzxzxz<a href=\\\"https:\\/\\/ahitechno.com\\/\\\">https:\\/\\/ahitechno.com\\/<\\/a><\\/p>\",\"seo_title\":\"Sint deserunt ut im\",\"seo_description\":\"Est alias id et vol\",\"seo_keyword\":\"Porro amet maxime q\",\"question\":\"Et nobis rerum nemo\",\"answer\":\"Eaque excepteur do t\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 06:12:40', '2024-05-03 06:12:40'),
(319, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:40', '2024-05-03 06:12:40'),
(320, 1, 'admin/blogs/3/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:43', '2024-05-03 06:12:43'),
(321, 1, 'admin/blogs/3', 'PUT', '127.0.0.1', '{\"category_id\":\"1\",\"search_terms\":null,\"title\":\"Aut dignissimos sapi\",\"slug\":\"aut-dignissimos-sapi\",\"short_content\":\"Aut incidunt nesciu\",\"alt\":\"Omnis rem in rerum n\",\"url\":\"https:\\/\\/www.lucikitazam.org.uk\",\"description\":\"<p><em><strong>XasaSsSAs<\\/strong><\\/em><\\/p>\",\"seo_title\":\"Excepturi excepturi\",\"seo_description\":\"Eiusmod quisquam cul\",\"seo_keyword\":\"Velit illum quis a\",\"question\":\"Aut velit sit numqua\",\"answer\":\"Laboris est dolor v\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 06:12:50', '2024-05-03 06:12:50'),
(322, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:50', '2024-05-03 06:12:50'),
(323, 1, 'admin/blogs/2/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 06:12:52', '2024-05-03 06:12:52'),
(324, 1, 'admin/blogs/2', 'PUT', '127.0.0.1', '{\"category_id\":\"5\",\"search_terms\":null,\"title\":\"Culpa harum aut dol\",\"slug\":\"culpa-harum-aut-dol\",\"short_content\":\"Impedit architecto\",\"alt\":\"Et impedit tempora\",\"url\":\"https:\\/\\/www.voc.tv\",\"description\":\"<p><strong>hello<\\/strong><\\/p>\",\"seo_title\":\"Commodi impedit eni\",\"seo_description\":\"Laborum Proident i\",\"seo_keyword\":\"Consectetur volupta\",\"question\":\"Ex non ullam ut volu\",\"answer\":\"Quis fugiat autem ve\",\"_token\":\"OOZ2K4fM9Qc1nGgvZgGwijxDSP7pWIneuFXlIqtS\",\"_method\":\"PUT\"}', '2024-05-03 06:13:05', '2024-05-03 06:13:05'),
(325, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:13:06', '2024-05-03 06:13:06'),
(326, 1, 'admin/blogs/5/edit', 'GET', '127.0.0.1', '[]', '2024-05-03 06:13:07', '2024-05-03 06:13:07'),
(327, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:13:09', '2024-05-03 06:13:09'),
(328, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:13:15', '2024-05-03 06:13:15'),
(329, 1, 'admin/blogs', 'GET', '127.0.0.1', '[]', '2024-05-03 06:13:24', '2024-05-03 06:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-05-01 00:10:04', '2024-05-01 00:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-05-01 00:07:00', '2024-05-01 00:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 20, NULL, NULL),
(1, 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$UgWURSXv5Odv0QDp2Wd2Rub8veZ3hA6wiFO0R9/mIiQPyhPsWi7gC', 'Administrators', NULL, NULL, '2024-05-01 00:07:00', '2024-05-02 23:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `short_content`, `image`, `alt`, `url`, `description`, `seo_title`, `seo_description`, `seo_keyword`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(2, 5, 'Culpa harum aut dol', 'culpa-harum-aut-dol', 'Impedit architecto', 'images/website-details_1.jpg', 'Et impedit tempora', 'https://www.voc.tv', '<p><strong>hello</strong></p>', 'Commodi impedit eni', 'Laborum Proident i', 'Consectetur volupta', 'Ex non ullam ut volu', 'Quis fugiat autem ve', 1, '2024-05-02 02:24:52', '2024-05-03 06:13:05'),
(3, 1, 'Aut dignissimos sapi', 'aut-dignissimos-sapi', 'Aut incidunt nesciu', 'images/e-commerce-details_2.jpg', 'Omnis rem in rerum n', 'https://www.lucikitazam.org.uk', '<p><em><strong>XasaSsSAs</strong></em></p>', 'Excepturi excepturi', 'Eiusmod quisquam cul', 'Velit illum quis a', 'Aut velit sit numqua', 'Laboris est dolor v', 1, '2024-05-02 03:38:48', '2024-05-03 06:12:50'),
(4, 1, 'Labore sit iusto am', 'labore-sit-iusto-am', 'Quaerat deleniti eum', 'images/digital-marketing-details_1.jpg', 'Expedita dolores lab', 'https://www.lecali.info', '<p>ZXZXzxzXzxxzxzxzxz<a href=\"https://ahitechno.com/\">https://ahitechno.com/</a></p>', 'Sint deserunt ut im', 'Est alias id et vol', 'Porro amet maxime q', 'Et nobis rerum nemo', 'Eaque excepteur do t', 1, '2024-05-02 03:39:27', '2024-05-03 06:12:40'),
(5, 2, 'Porro aliquam doloru', 'porro-aliquam-doloru', 'Possimus velit sus', 'images/blog-details.jpg', 'Optio magni totam e', 'https://www.bore.tv', '<p>utiut7tutuytuytuytuv tu uytuy&nbsp; utu utuytuyt</p>', 'In sed itaque offici', 'Pariatur Doloremque', 'Exercitationem culpa', 'Sint aut sunt accus', 'Porro laborum Simil', 1, '2024-05-02 04:05:07', '2024-05-03 06:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `slug`, `seo_title`, `seo_description`, `seo_keyword`, `created_at`, `updated_at`) VALUES
(1, 'Digital Marketing', 'digital-marketing', 'Seo Title', 'Seo Description', 'Seo Keyword', '2024-05-02 02:09:51', '2024-05-02 02:09:51'),
(2, 'UI UX Design', 'ui-ux-design', 'Seo Title', 'Seo Description', 'Seo Keyword', '2024-05-02 02:10:03', '2024-05-02 02:10:03'),
(3, 'End to End Ecommerce Solution', 'end-to-end-ecommerce-solution', 'Seo Title', 'Seo Description', 'Seo Keyword', '2024-05-02 02:10:15', '2024-05-02 02:10:15'),
(4, 'Website Design & Development', 'website-design-development', 'Seo Title', 'Seo Description', 'Seo Keyword', '2024-05-02 02:10:29', '2024-05-02 02:10:29'),
(5, 'APP Design & Development', 'app-design-development', 'Seo Title', 'Seo Description', 'Seo Keyword', '2024-05-02 02:10:41', '2024-05-02 02:10:41'),
(6, 'Custom Software Development', 'custom-software-development', 'Seo Title', 'Seo Description', 'Seo Keyword', '2024-05-02 02:10:51', '2024-05-02 02:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `company`, `company_website`, `subject`, `budget`, `message`, `created_at`, `updated_at`) VALUES
(16, 'ClarkSchwartz', 'xuqowenu@mailinator.com', '+13526236307', 'Larson and Kidd Trading', 'Pacheco and George LLC', 'How can we help?', 'What\'s your ideal budget?', 'Voluptatibus non Nam', '2024-05-02 01:24:29', '2024-05-02 01:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_05_01_125531_create_contact_table', 2),
(7, '2024_05_02_073253_create_blog_category_table', 3),
(8, '2024_05_02_074754_create_blogs_table', 4),
(9, '2024_05_02_115501_create_title_table', 5),
(10, '2024_05_02_131737_create_service_category_table', 6),
(11, '2024_05_03_054737_create_services_table', 7);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_category_id`, `title`, `slug`, `short_content`, `image`, `home_image`, `alt`, `url`, `description`, `seo_title`, `seo_description`, `seo_keyword`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, '3', 'Fugiat est quisquam', 'fugiat-est-quisquam', 'Voluptatum qui nobis', 'images/digital-marketing4.jpg', 'images/digital-marketing.png', 'Maxime molestiae vol', 'https://www.wosypi.cm', '<h3>CodePin: Your All-in-One Digital Marketing Powerhouse</h3>\r\n\r\n<p><strong>We&#39;re a data-driven digital marketing agency obsessed with results.</strong>&nbsp;Our passionate team of SEO specialists, content marketing wizards, social media ninjas, and PPC pros collaborate closely with you to craft a customized digital strategy that gets you noticed online.</p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/new/images/digital-marketing4.jpg\" /></p>\r\n\r\n<p><strong>Looking to dominate search engines, skyrocket social media engagement, and achieve real business growth?</strong>&nbsp;Look no further than CodePin!</p>\r\n\r\n<p><strong>No matter your industry (education, SaaS, healthcare, finance, or beyond) or digital marketing experience level (beginner or seasoned pro), we&#39;ve got you covered.</strong>&nbsp;We leverage the latest and most effective tools to create high-quality, results-oriented strategies.</p>\r\n\r\n<p>Here&#39;s how CodePin empowers your digital presence:</p>\r\n\r\n<ul>\r\n	<li><strong>SEO Optimization:</strong>&nbsp;Increase your website traffic through targeted keyword research and strategic on-page and off-page optimization.</li>\r\n	<li><strong>Content Marketing:</strong>&nbsp;Captivate your audience with engaging, informative content that positions you as an industry leader.</li>\r\n	<li><strong>Social Media Marketing:</strong>&nbsp;Build a thriving online community, boost brand awareness, and drive conversions through strategic social media management.</li>\r\n	<li><strong>Pay-Per-Click (PPC) Advertising:</strong>&nbsp;Reach your ideal customers with laser-focused PPC campaigns that deliver a high return on investment (ROI).</li>\r\n</ul>', 'Aut vitae qui assume', 'Placeat ad animi i', 'Aliquip ipsa aut id', 'Quos facere commodi', 'Dolor sint perferend', 1, '2024-05-03 00:58:16', '2024-05-03 01:03:16'),
(2, '4', 'Nulla quo culpa aute', 'nulla-quo-culpa-aute', 'Ut nobis aut vel aut', 'images/ui-ux-details.jpg', 'images/ui-ux.png', 'In non a consectetur', 'https://www.coqunuderifyx.org.uk', '<p>UI UX De</p>', 'Officia sit asperio', 'Voluptas dignissimos', 'Adipisicing sunt ut', 'Illum voluptatem qu', 'Eaque assumenda et u', 1, '2024-05-03 01:02:06', '2024-05-03 01:02:06'),
(3, '5', 'Esse quaerat eveniet', 'esse-quaerat-eveniet', 'Fugiat non totam ci', 'images/e-commerce-details.jpg', 'images/ecom.png', 'Non recusandae Ea a', 'https://www.qaronyzewaxo.me.uk', '<p>asdsadsdsdsadasdsd</p>', 'Obcaecati aliqua Qu', 'Reiciendis voluptas', 'Enim hic laborum Eu', 'Rerum exercitation a', 'Nam omnis perferendi', 1, '2024-05-03 01:04:21', '2024-05-03 01:04:21'),
(4, '6', 'Consequatur volupta', 'consequatur-volupta', 'Voluptatibus dolorem', 'images/website-details.jpg', 'images/web-development.png', 'Ut consectetur et q', 'https://www.lypomonogyn.cc', '<p>asdsadas asdd asd&nbsp; a ds dsad adsads akjkja la kjlal s sa</p>', 'Dolor sunt aliquip a', 'Nulla ut qui pariatu', 'Quo porro quae recus', 'Quod quia cupidatat', 'Animi necessitatibu', 1, '2024-05-03 01:05:10', '2024-05-03 01:05:10'),
(5, '7', 'Eos eveniet tempore', 'eos-eveniet-tempore', 'Doloribus reprehende', 'images/e-commerce-details_1.jpg', 'images/app-dev.png', 'Accusamus et iure ut', 'https://www.zijojocupe.cm', '<p><strong>&nbsp;App design&nbsp;</strong></p>', 'Aut id officiis und', 'Perferendis corrupti', 'Dolor delectus natu', 'Sit est voluptate a', 'Ipsa non placeat p', 1, '2024-05-03 01:07:16', '2024-05-03 01:07:16'),
(6, '8', 'Laborum Laboris sun', 'laborum-laboris-sun', 'Omnis voluptatem pla', 'images/digital-marketing-details.jpg', 'images/custom-soft.png', 'Est voluptate verita', 'https://www.mynycumyc.co.uk', '<p><strong>Custom Software</strong></p>', 'Est molestias totam', 'Quisquam reprehender', 'Cupiditate modi expe', 'Non et minus adipisc', 'Eaque velit unde do', 1, '2024-05-03 01:08:27', '2024-05-03 01:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`id`, `name`, `slug`, `seo_title`, `seo_des`, `seo_key`, `created_at`, `updated_at`) VALUES
(3, 'Digital Marketing', 'digital-marketing', 'Veritatis mollitia l', 'In fugiat consequat', 'Et similique minim d', '2024-05-02 23:58:22', '2024-05-02 23:58:22'),
(4, 'UI UX Design', 'ui-ux-design', 'Delectus odit quis', 'Distinctio Eligendi', 'Sit lorem veniam vo', '2024-05-02 23:58:33', '2024-05-02 23:58:33'),
(5, 'End to End Ecommerce Solution', 'end-to-end-ecommerce-solution', 'Velit deleniti recu', 'Blanditiis ut esse', 'Non culpa praesenti', '2024-05-02 23:58:54', '2024-05-02 23:58:54'),
(6, 'Website Design & Development', 'website-design-development', 'Qui eaque sequi mole', 'Incidunt nostrum el', 'Nulla hic iure conse', '2024-05-02 23:59:09', '2024-05-02 23:59:09'),
(7, 'APP Design & Development', 'app-design-development', 'Consequuntur volupta', 'Pariatur Ea perfere', 'Consectetur aut ex', '2024-05-02 23:59:33', '2024-05-02 23:59:33'),
(8, 'Custom Software Development', 'custom-software-development', 'Consequatur Assumen', 'Deserunt laborum nes', 'Aut quas iusto non v', '2024-05-02 23:59:46', '2024-05-02 23:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(10) UNSIGNED NOT NULL,
  `seo_title_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_services` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_services` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_services` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_case` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_case` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_case` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title_search` varchar(251) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_des_search` varchar(251) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_key_search` varchar(251) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `seo_title_home`, `seo_des_home`, `seo_key_home`, `seo_title_about`, `seo_des_about`, `seo_key_about`, `seo_title_services`, `seo_des_services`, `seo_key_services`, `seo_title_blog`, `seo_des_blog`, `seo_key_blog`, `seo_title_case`, `seo_des_case`, `seo_key_case`, `seo_title_contact`, `seo_des_contact`, `seo_key_contact`, `seo_title_search`, `seo_des_search`, `seo_key_search`, `created_at`, `updated_at`) VALUES
(1, 'home title', 'home des', 'home key', 'about title', 'about des', 'about key', 'services Title', 'services des', 'services key', 'blog title', 'blog des', 'blog key', 'case title', 'case des', 'case key', 'contact title', 'contact des', 'contact key', 'Search Title', 'Search Des', 'Search Key', '2024-05-02 06:39:39', '2024-05-02 07:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
