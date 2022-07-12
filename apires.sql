-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2022 a las 22:53:58
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apires1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-04-02 02:22:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-04-02 02:22:43', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_document_type/add-save', 'Añadir nueva información Cedula en Tipo documento', '', 1, '2022-04-02 02:25:29', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_client/add-save', 'Añadir nueva información conductor en Clientes', '', 1, '2022-04-02 02:25:53', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-04-02 02:26:16', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-04-02 02:28:11', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-04-02 02:29:12', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-04-02 02:30:58', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-04-02 02:32:27', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-04-06 08:41:48', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Administrador en Gestión de Menús', '', 1, '2022-04-06 09:03:43', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Usuario en Gestión de Menús', '', 1, '2022-04-06 09:06:19', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Conductor en Gestión de Menús', '', 1, '2022-04-06 09:10:40', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Operador en Gestión de Menús', '', 1, '2022-04-06 09:12:35', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Documentación en Gestión de Menús', '', 1, '2022-04-06 09:14:22', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Tablas Básicas en Gestión de Menús', '', 1, '2022-04-06 09:18:28', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Actualizar información Tipo documento en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-download</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>3</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-04-06 09:31:41', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-04-06 19:07:38', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-04-20 23:48:41', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-04-20 23:54:31', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-04-20 23:56:22', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información Operador en Gestión de usuarios', '', 1, '2022-04-21 00:04:08', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/users/delete/2', 'Eliminar información Operador en Gestión de usuarios', '', 1, '2022-04-21 00:04:34', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Actualizar información Clientes en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-heart</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-04-21 00:30:01', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/add-save', 'Añadir nueva información Tarjeta de Identidad en Tipo documento', '', 1, '2022-04-21 00:47:10', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/add-save', 'Añadir nueva información Cedula de Ciudadanía en Tipo documento', '', 1, '2022-04-21 00:47:32', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/add-save', 'Añadir nueva información Pasaporte en Tipo documento', '', 1, '2022-04-21 00:47:59', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-04-21 00:48:24', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-04-21 00:48:50', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/module_generator/delete/13', 'Eliminar información Clientes en Generador de Módulos', '', 1, '2022-04-21 01:21:44', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_client/add-save', 'Añadir nueva información lpklp en Clientes', '', 1, '2022-04-21 02:28:36', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/edit-save/3', 'Actualizar información Pasaporte en Tipo documento', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>inactive</td><td>active</td></tr></tbody></table>', 1, '2022-04-21 02:38:59', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/edit-save/1', 'Actualizar información Tarjeta de Identidad en Tipo documento', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>active</td><td>inactive</td></tr></tbody></table>', 1, '2022-04-21 02:43:29', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/edit-save/1', 'Actualizar información Tarjeta de Identidad en Tipo documento', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>inactive</td><td>active</td></tr></tbody></table>', 1, '2022-04-21 02:44:38', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2022-04-21 02:48:37', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-04-21 02:55:56', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2022-04-21 14:42:54', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Actualizar información Vehículos en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>3</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-04-21 14:45:41', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/delete/8', 'Eliminar información Tablas Básicas en Gestión de Menús', '', 1, '2022-04-21 14:46:00', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Actualizar información Super Admin en Gestión de usuarios', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2022-04/85475111_1_h.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>ocarrascall@sena.edu.co</td></tr><tr><td>password</td><td>$2y$10$LY2yiARjlFx9XmG1zjxs8OZmsjsiYxFjcPE4GoXf8Ec/6wGGPXmWO</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2022-04-21 14:53:16', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Actualizar información Super Admin en Gestión de usuarios', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$LY2yiARjlFx9XmG1zjxs8OZmsjsiYxFjcPE4GoXf8Ec/6wGGPXmWO</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2022-04-21 14:53:34', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Actualizar información Super Admin en Gestión de usuarios', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$LY2yiARjlFx9XmG1zjxs8OZmsjsiYxFjcPE4GoXf8Ec/6wGGPXmWO</td><td>$2y$10$BbZtsJpPnphj6hc2w1qNUOMiEFnUczaNeH5.EFxLnUfy.x9o68o.O</td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2022-04-21 14:53:49', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-21 14:53:58', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-21 14:54:29', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/module_generator/delete/15', 'Eliminar información Vehículos en Generador de Módulos', '', 1, '2022-04-21 15:34:10', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Actualizar información Vehículos en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>3</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-04-21 15:38:04', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Empresa en Gestión de Menús', '', 1, '2022-04-21 15:45:06', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Actualizar información RNT en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr></tbody></table>', 1, '2022-04-21 15:51:52', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Actualizar información Transportador en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Conductor</td><td>Transportador</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-04-21 15:53:56', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Actualizar información Conductor en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-04-21 15:56:25', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Actualizar información Sedes en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Empresa</td><td>Sedes</td></tr></tbody></table>', 1, '2022-04-21 16:02:13', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Actualizar información Empresa en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr></tbody></table>', 1, '2022-04-21 16:03:21', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-21 21:09:37', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-21 22:36:50', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_service_type/add-save', 'Añadir nueva información Traslado en la ciudad en Tipo de Servicio', '', 1, '2022-04-21 23:52:59', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/edit-save/2', 'Actualizar información Cedula de Ciudadanía en Tipo documento', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>active</td><td></td></tr></tbody></table>', 1, '2022-04-22 00:12:27', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/edit-save/2', 'Actualizar información Cedula de Ciudadanía en Tipo documento', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-04-22 00:13:10', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/edit-save/2', 'Actualizar información Cedula de Ciudadanía en Tipo documento', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-04-22 00:13:35', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-22 02:06:44', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-22 02:16:11', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-22 11:17:40', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/edit-save/2', 'Actualizar información Cedula de Ciudadanía en Tipo documento', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 11:21:30', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/edit-save/3', 'Actualizar información Pasaporte en Tipo documento', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 11:22:20', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/edit-save/1', 'Actualizar información Tarjeta de Identidad en Tipo documento', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 11:24:32', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_document_type/edit-save/2', 'Actualizar información Cedula de Ciudadanía en Tipo documento', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-04-22 11:25:10', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Actualizar información Tipo de Servicio en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-angle-double-right</td></tr><tr><td>parent_id</td><td>3</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-04-22 11:41:07', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_service_type/edit-save/7', 'Actualizar información Traslado en la ciudad en Tipo de Servicio', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 11:47:42', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_service_type/edit-save/1', 'Actualizar información Traslado en la ciudad en Tipo de Servicio', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-04-22 12:03:25', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_service_type/edit-save/1', 'Actualizar información Traslado en la ciudad en Tipo de Servicio', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-04-22 12:03:36', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_service_type/add-save', 'Añadir nueva información Traslado al aeropuerto en Tipo de Servicio', '', 1, '2022-04-22 12:05:28', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_service_type/add-save', 'Añadir nueva información Puerta a puerta en Tipo de Servicio', '', 1, '2022-04-22 12:06:15', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_service_type/add-save', 'Añadir nueva información Viajes en Tipo de Servicio', '', 1, '2022-04-22 12:06:39', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/module_generator/delete/21', 'Eliminar información Tipo de Documento en Generador de Módulos', '', 1, '2022-04-22 12:30:18', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_payment_type/edit-save/3', 'Actualizar información Efectivo en Tipo de Pago', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 12:35:26', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_payment_type/edit-save/2', 'Actualizar información Credito en Tipo de Pago', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 12:35:31', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_payment_type/edit-save/1', 'Actualizar información Debito en Tipo de Pago', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 12:35:38', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_payment_type/edit-save/3', 'Actualizar información Efectivo en Tipo de Pago', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr></tbody></table>', 1, '2022-04-22 12:35:42', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_baggage_type/add-save', 'Añadir nueva información Artículo personal en Tipo de Equipaje', '', 1, '2022-04-22 12:46:31', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_baggage_type/add-save', 'Añadir nueva información Equipaje de mano en Tipo de Equipaje', '', 1, '2022-04-22 12:47:48', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_baggage_type/add-save', 'Añadir nueva información Equipaje en bodega en Tipo de Equipaje', '', 1, '2022-04-22 12:48:50', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_additional_service_type/edit-save/3', 'Actualizar información Implementos deportivos en baul en Tipo de Servicio Adicional', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 13:14:29', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_additional_service_type/edit-save/1', 'Actualizar información Guía turístico en Tipo de Servicio Adicional', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 13:14:47', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:26:09', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:27:25', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:27:53', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:28:08', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:28:28', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:28:45', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:29:05', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:29:27', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:29:48', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:30:12', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_route/add-save', 'Añadir nueva información  en Rutas', '', 1, '2022-04-22 13:30:39', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_service_type/edit-save/2', 'Actualizar información Traslado al aeropuerto en Tipo de Servicio', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-04-22 13:32:44', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_service_type/edit-save/2', 'Actualizar información Traslado al aeropuerto en Tipo de Servicio', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr></tbody></table>', 1, '2022-04-22 13:32:50', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_service_type/edit-save/2', 'Actualizar información Traslado al aeropuerto en Tipo de Servicio', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 13:33:15', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_vehicle_type/add-save', 'Añadir nueva información Vehículo estándar en Tipo de Vehículo', '', 1, '2022-04-22 13:44:32', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_vehicle_type/add-save', 'Añadir nueva información Buseta tipo Van en Tipo de Vehículo', '', 1, '2022-04-22 13:45:00', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_vehicle_type/add-save', 'Añadir nueva información Buseta Van Grande en Tipo de Vehículo', '', 1, '2022-04-22 13:45:22', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_rnt/add-save', 'Añadir nueva información  en RNT', '', 1, '2022-04-22 15:21:56', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_vehicle16/add-save', 'Añadir nueva información  en Vehículos', '', 1, '2022-04-22 15:32:11', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_vehicle16/add-save', 'Añadir nueva información  en Vehículos', '', 1, '2022-04-22 15:33:57', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_vehicle16/add-save', 'Añadir nueva información  en Vehículos', '', 1, '2022-04-22 15:37:09', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_vehicle_type/add-save', 'Añadir nueva información Vehículo especial en Tipo de Vehículo', '', 1, '2022-04-22 20:10:58', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_vehicle16/edit-save/3', 'Actualizar información  en Vehículos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-04-22 20:34:31', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_vehicle16/edit-save/2', 'Actualizar información  en Vehículos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-04-22 20:34:40', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_vehicle16/edit-save/1', 'Actualizar información  en Vehículos', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-04-22 20:34:55', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/add-save', 'Añadir nueva información A+ en Tipo de Sangre', '', 1, '2022-04-22 22:14:52', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/add-save', 'Añadir nueva información B+ en Tipo de Sangre', '', 1, '2022-04-22 22:15:03', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/add-save', 'Añadir nueva información O+ en Tipo de Sangre', '', 1, '2022-04-22 22:15:09', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/add-save', 'Añadir nueva información AB+ en Tipo de Sangre', '', 1, '2022-04-22 22:15:19', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/add-save', 'Añadir nueva información A- en Tipo de Sangre', '', 1, '2022-04-22 22:15:29', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/add-save', 'Añadir nueva información B- en Tipo de Sangre', '', 1, '2022-04-22 22:15:37', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/add-save', 'Añadir nueva información O- en Tipo de Sangre', '', 1, '2022-04-22 22:15:49', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/add-save', 'Añadir nueva información AB- en Tipo de Sangre', '', 1, '2022-04-22 22:15:57', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/edit-save/7', 'Actualizar información O- en Tipo de Sangre', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 22:16:03', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/edit-save/6', 'Actualizar información B- en Tipo de Sangre', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 22:16:08', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/edit-save/4', 'Actualizar información AB+ en Tipo de Sangre', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 22:16:14', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/edit-save/3', 'Actualizar información O+ en Tipo de Sangre', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 22:16:19', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_blood_type/edit-save/2', 'Actualizar información B+ en Tipo de Sangre', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-22 22:16:24', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Actualizar información Licencia en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Licencias</td><td>Licencia</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2022-04-22 23:01:43', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Actualizar información Vehículo en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Vehículos</td><td>Vehículo</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-04-22 23:02:01', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Actualizar información Cliente en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Clientes</td><td>Cliente</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-04-22 23:02:14', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Actualizar información Ruta en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Rutas</td><td>Ruta</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>3</td><td></td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2022-04-22 23:02:31', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/24', 'Actualizar información Certificados de Vehículo en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Certificados de Vehículos</td><td>Certificados de Vehículo</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>5</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-04-22 23:02:44', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Página Principal en Gestión de Menús', '', 1, '2022-04-22 23:19:16', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/menu_management/edit-save/31', 'Actualizar información Estado de Registros en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Estado</td><td>Estado de Registros</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-04-22 23:34:12', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_payment_type/edit-save/3', 'Actualizar información Efectivo en Tipo de Pago', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-04-23 00:14:50', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_payment_type/edit-save/3', 'Actualizar información Efectivo en Tipo de Pago', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr></tbody></table>', 1, '2022-04-23 00:15:13', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_baggage_type/edit-save/2', 'Actualizar información Equipaje de mano en Tipo de Equipaje', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>price</td><td>25000</td><td>0</td></tr></tbody></table>', 1, '2022-04-23 00:22:48', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_baggage_type/edit-save/3', 'Actualizar información Equipaje en bodega en Tipo de Equipaje', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr></tbody></table>', 1, '2022-04-23 00:22:55', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-23 01:48:09', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-23 04:27:00', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-25 23:54:01', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_department/add-save', 'Añadir nueva información Antioquia en Departamento', '', 1, '2022-04-25 23:57:48', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Aeropuerto José María Córdoba (Rionegro) en Plaza', '', 1, '2022-04-26 00:35:38', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Amaga en Plaza', '', 1, '2022-04-26 00:35:56', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Andes en Plaza', '', 1, '2022-04-26 00:36:07', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Bello en Plaza', '', 1, '2022-04-26 00:36:18', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Bolombolo en Plaza', '', 1, '2022-04-26 00:36:30', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Caldas en Plaza', '', 1, '2022-04-26 00:36:40', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Copacabana en Plaza', '', 1, '2022-04-26 00:36:52', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Finlandia en Plaza', '', 1, '2022-04-26 00:37:02', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Hispania en Plaza', '', 1, '2022-04-26 00:37:12', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Jardín en Plaza', '', 1, '2022-04-26 00:37:26', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Medellín (Centro) en Plaza', '', 1, '2022-04-26 00:37:36', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Montenegro en Plaza', '', 1, '2022-04-26 00:37:52', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Pereira en Plaza', '', 1, '2022-04-26 00:38:02', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Riosucio en Plaza', '', 1, '2022-04-26 00:38:13', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información San Jeronimo en Plaza', '', 1, '2022-04-26 00:38:25', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_place/add-save', 'Añadir nueva información Santa Fé de Antioquia en Plaza', '', 1, '2022-04-26 00:38:38', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/module_generator/delete/38', 'Eliminar información Tarifa en Generador de Módulos', '', 1, '2022-04-26 02:58:39', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/module_generator/delete/27', 'Eliminar información Tarifa en Generador de Módulos', '', 1, '2022-04-26 02:58:46', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_fare/add-save', 'Añadir nueva información  en Tarifa', '', 1, '2022-04-26 03:28:56', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_fare/add-save', 'Añadir nueva información  en Tarifa', '', 1, '2022-04-26 03:29:56', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/ust_fare/edit-save/1', 'Actualizar información  en Tarifa', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_location</td><td>4</td><td>6</td></tr></tbody></table>', 1, '2022-04-26 03:31:47', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36 OPR/85.0.4341.60', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-26 20:10:23', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-29 18:53:57', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información Daniel en Gestión de usuarios', '', 1, '2022-04-29 18:55:58', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-29 18:56:06', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-29 18:56:23', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/users/edit-save/3', 'Actualizar información Daniel en Gestión de usuarios', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td></td><td>$2y$10$bBKrNJYweeM0rK315Z6WtuaOntphQHnIeEqRuIqE3UM7up9/TuR1C</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2022-04-29 18:56:49', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-29 18:56:52', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-04-29 18:56:58', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-04-29 18:57:20', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-29 18:57:26', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-29 18:57:50', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-04-29 18:57:55', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-04-29 18:58:08', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-29 18:58:14', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-29 18:58:44', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-04-29 18:58:49', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-04-29 18:59:10', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-29 18:59:14', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-29 19:03:04', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-29 21:56:22', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/ust_vehicle16/add-save', 'Añadir nueva información  en Vehículos', '', 1, '2022-04-29 21:58:00', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-29 21:58:11', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-04-30 01:19:23', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/menu_management/edit-save/29', 'Actualizar información Página Principal en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-04-30 01:20:10', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/menu_management/edit-save/28', 'Actualizar información Aliados en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>29</td><td></td></tr></tbody></table>', 1, '2022-04-30 01:20:20', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-04-30 01:20:54', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-04-30 01:20:59', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-04-30 01:21:12', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-05 00:27:15', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-05 01:57:59', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-05 01:59:21', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-11 00:28:46', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-11 00:30:23', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-11 00:30:26', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-11 00:30:42', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_service_type/edit-save/4', 'Actualizar información Viajes en Tipo de Servicio', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>helper</td><td></td><td></td></tr><tr><td>image</td><td></td><td>uploads/1/2022-05/viajes.jpg</td></tr></tbody></table>', 1, '2022-05-11 00:32:42', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-11 00:32:48', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-11 00:34:47', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_service_type/edit-save/3', 'Actualizar información Puerta a puerta en Tipo de Servicio', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>helper</td><td></td><td></td></tr><tr><td>image</td><td></td><td>uploads/1/2022-05/puerta_a_puerta.jpg</td></tr></tbody></table>', 1, '2022-05-11 00:35:03', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_service_type/edit-save/2', 'Actualizar información Traslado al aeropuerto en Tipo de Servicio', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>helper</td><td></td><td></td></tr><tr><td>image</td><td></td><td>uploads/1/2022-05/aeropuerto_olaya_herrera_medellin.JPG</td></tr></tbody></table>', 1, '2022-05-11 00:35:16', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_service_type/edit-save/1', 'Actualizar información Traslado en la ciudad en Tipo de Servicio', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>helper</td><td></td><td></td></tr><tr><td>image</td><td></td><td>uploads/1/2022-05/traslado_ciudad.jpg</td></tr></tbody></table>', 1, '2022-05-11 00:35:24', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-11 00:35:28', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-11 00:36:04', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_slider/add-save', 'Añadir nueva información  en Slider', '', 1, '2022-05-11 00:37:07', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_slider/add-save', 'Añadir nueva información  en Slider', '', 1, '2022-05-11 00:38:13', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_slider/add-save', 'Añadir nueva información  en Slider', '', 1, '2022-05-11 00:38:42', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-11 00:38:45', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-11 22:23:05', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-11 22:24:14', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-11 22:24:18', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-11 22:25:58', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-11 22:27:14', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-12 00:50:44', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/edit-save/2', 'Actualizar información  en Aliados', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>link</td><td></td><td>https://www.google.com/</td></tr></tbody></table>', 1, '2022-05-12 00:53:33', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-12 00:53:39', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-12 00:54:17', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/edit-save/1', 'Actualizar información  en Aliados', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>link</td><td></td><td>https://www.sena.edu.co/es-co/Paginas/default.aspx</td></tr></tbody></table>', 1, '2022-05-12 00:55:15', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-12 00:55:19', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-12 02:06:43', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-12 02:08:44', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-12 19:04:29', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/edit-save/2', 'Actualizar información  en Aliados', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>link</td><td>https://www.google.com/</td><td>https://www.youtube.com/watch?v=KoLLyEsnJvw</td></tr></tbody></table>', 1, '2022-05-12 19:06:04', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-12 19:06:13', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-12 19:14:18', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-12 19:15:22', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-12 19:16:03', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-12 19:17:00', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-12 19:17:09', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-12 19:17:21', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-12 19:18:36', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-12 19:19:27', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-12 19:19:31', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-13 00:41:50', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/delete/2', 'Eliminar información 2 en Aliados', '', 1, '2022-05-13 00:42:06', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/delete/6', 'Eliminar información 6 en Aliados', '', 1, '2022-05-13 00:42:12', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/delete/7', 'Eliminar información 7 en Aliados', '', 1, '2022-05-13 00:42:16', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/delete/5', 'Eliminar información 5 en Aliados', '', 1, '2022-05-13 00:42:20', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/delete/4', 'Eliminar información 4 en Aliados', '', 1, '2022-05-13 00:42:31', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-13 00:42:59', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-13 00:43:03', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-13 01:49:22', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-13 01:52:18', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-13 18:19:58', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-13 18:20:46', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-13 18:20:50', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-16 22:28:40', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_service_type/add-save', 'Añadir nueva información xxxxxxxx en Tipo de Servicio', '', 1, '2022-05-16 22:30:35', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-16 22:30:40', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-16 22:30:55', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_service_type/add-save', 'Añadir nueva información bbbb bbbbbbbbbbbbbbbb en Tipo de Servicio', '', 1, '2022-05-16 22:31:29', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-16 22:31:33', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-16 22:32:24', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_service_type/delete/5', 'Eliminar información xxxxxxxx en Tipo de Servicio', '', 1, '2022-05-16 22:32:32', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_service_type/delete/6', 'Eliminar información bbbb bbbbbbbbbbbbbbbb en Tipo de Servicio', '', 1, '2022-05-16 22:32:35', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-16 22:32:40', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-17 00:21:42', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_slider/add-save', 'Añadir nueva información  en Slider', '', 1, '2022-05-17 00:22:14', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-17 00:22:18', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-17 18:42:28', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-17 18:44:05', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-17 18:44:19', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-17 21:14:39', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-18 00:00:32', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_slider/delete/4', 'Eliminar información 4 en Slider', '', 1, '2022-05-18 00:00:41', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-18 00:00:46', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-18 00:13:25', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-18 00:14:45', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-20 02:37:33', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-20 02:38:40', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-20 18:48:51', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-20 19:19:59', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-20 22:20:40', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-23 18:47:29', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/delete/9', 'Eliminar información 9 en Aliados', '', 1, '2022-05-23 18:47:42', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/delete/8', 'Eliminar información 8 en Aliados', '', 1, '2022-05-23 18:47:45', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/delete/3', 'Eliminar información 3 en Aliados', '', 1, '2022-05-23 18:47:51', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-23 18:49:07', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/delete/1', 'Eliminar información 1 en Aliados', '', 1, '2022-05-23 18:49:12', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-23 18:50:03', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-23 18:51:35', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-23 18:52:29', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_allied/add-save', 'Añadir nueva información  en Aliados', '', 1, '2022-05-23 18:53:22', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-23 18:53:27', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-27 18:34:50', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_additional_service_type/delete/4', 'Eliminar información Guía turístico en Tipo de Servicio Adicional', '', 1, '2022-05-27 18:36:11', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_additional_service_type/delete/3', 'Eliminar información Hotel la estrella  en Tipo de Servicio Adicional', '', 1, '2022-05-27 18:36:14', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_additional_service_type/add-save', 'Añadir nueva información Hotel La estrella en Tipo de Servicio Adicional', '', 1, '2022-05-27 18:38:16', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-31 18:33:45', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-31 19:14:56', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-31 19:45:49', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-31 19:54:01', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-05-31 22:00:03', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-05-31 22:00:35', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-03 19:24:34', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-03 19:24:45', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.53', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-22 20:55:44', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-23 21:35:18', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-23 21:42:47', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.53', 'http://127.0.0.1:8000/admin/login', 'ocarrascall@sena.edu.co login with IP Address 127.0.0.1', '', 1, '2022-06-24 00:57:05', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.53', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co logout', '', 1, '2022-06-24 00:57:30', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.53', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-24 00:59:11', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.53', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-24 01:00:25', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36 OPR/88.0.4412.53', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-29 21:35:34', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36 OPR/88.0.4412.53', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-29 21:35:53', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36 OPR/88.0.4412.53', 'http://127.0.0.1:8000/admin/login', 'daniel@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-06-29 22:18:19', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36 OPR/88.0.4412.53', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com logout', '', 3, '2022-06-29 22:18:54', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36 OPR/88.0.4412.53', 'http://127.0.0.1:8000/admin/login', 'ocarrascall@sena.edu.co login with IP Address 127.0.0.1', '', 1, '2022-06-29 22:19:22', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36 OPR/88.0.4412.53', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co logout', '', 1, '2022-06-29 22:20:48', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2022-06-30 02:23:40', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-30 19:44:24', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-30 19:45:11', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-30 19:45:24', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-30 19:49:20', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-30 19:49:38', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-30 19:55:55', NULL),
(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-30 20:01:47', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-30 20:02:18', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-30 20:02:34', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-30 20:03:16', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-30 20:03:50', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-30 20:04:08', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-06-30 20:04:22', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-06-30 20:05:00', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-06 00:10:56', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-06 00:32:42', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-06 01:22:47', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://localhost:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-06 01:22:52', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-06 20:51:48', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-06 20:52:32', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-06 20:59:51', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-06 21:04:27', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-06 21:04:42', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-06 21:19:43', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-07 18:42:14', NULL),
(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información Daniel en Gestión de usuarios', '', 1, '2022-07-07 18:44:22', NULL),
(331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-07 18:44:38', NULL),
(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel2@gmail.com desde la Dirección IP 127.0.0.1', '', 7, '2022-07-07 18:44:46', NULL),
(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel2@gmail.com se desconectó', '', 7, '2022-07-07 18:44:57', NULL),
(334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-07 18:45:21', NULL),
(335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-07 18:46:39', NULL),
(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-07 18:46:53', NULL),
(337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-07 18:47:24', NULL),
(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-07 18:47:37', NULL),
(339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Actualizar información Conductor en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-07-07 18:48:18', NULL),
(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-07 18:48:36', NULL),
(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel2@gmail.com desde la Dirección IP 127.0.0.1', '', 7, '2022-07-07 18:48:44', NULL),
(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-07 18:49:45', NULL),
(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Actualizar información Transportador en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2022-07-07 18:50:07', NULL),
(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-07 19:09:48', NULL),
(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-07 19:09:59', NULL),
(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-07 19:10:14', NULL),
(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-07 19:10:50', NULL),
(348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/28', 'Actualizar información Aliados en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>29</td><td></td></tr></tbody></table>', 1, '2022-07-07 19:11:35', NULL),
(349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Actualizar información Usuario en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-07-07 19:11:48', NULL),
(350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Actualizar información Cliente en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-07-07 19:12:00', NULL),
(351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-07 19:12:04', NULL),
(352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-07 19:12:13', NULL),
(353, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-07 19:13:59', NULL),
(354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-07 19:14:06', NULL),
(355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel2@gmail.com se desconectó', '', 7, '2022-07-07 19:14:46', NULL),
(356, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-07 19:15:03', NULL),
(357, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-07 19:37:08', NULL),
(358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-07 19:38:23', NULL),
(359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_client/add-save', 'Añadir nueva información Daniel en Clientes', '', 3, '2022-07-07 19:38:59', NULL),
(360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_client/edit-save/6', 'Actualizar información Daniel en Clientes', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr></tbody></table>', 3, '2022-07-07 19:40:21', NULL),
(361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-07 19:40:25', NULL),
(362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-07 19:40:47', NULL),
(363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_client/edit-save/6', 'Actualizar información Daniel en Clientes', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2022-07-07 19:41:20', NULL),
(364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-07 19:41:24', NULL),
(365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel2@gmail.com desde la Dirección IP 127.0.0.1', '', 7, '2022-07-07 19:41:42', NULL),
(366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel2@gmail.com se desconectó', '', 7, '2022-07-07 19:41:49', NULL),
(367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-07 19:42:02', NULL),
(368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-08 20:49:34', NULL),
(369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-08 21:09:57', NULL),
(370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-08 21:10:15', NULL),
(371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-08 21:11:02', NULL),
(372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/38', 'Actualizar información Reserva del Servicio en Gestión de Menús', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2022-07-08 21:11:37', NULL),
(373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información Sandra en Gestión de usuarios', '', 1, '2022-07-08 21:12:17', NULL),
(374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-08 21:12:21', NULL),
(375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-08 21:12:33', NULL),
(376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_service_booking_n', 'Intentar ver :name en Reserva del Servicio', '', 3, '2022-07-08 21:12:34', NULL),
(377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/ust_service_booking_n', 'Intentar ver :name en Reserva del Servicio', '', 3, '2022-07-08 21:12:45', NULL),
(378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-08 21:12:49', NULL),
(379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-08 21:13:07', NULL),
(380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-08 21:13:53', NULL),
(381, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-08 21:14:01', NULL),
(382, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-08 21:15:45', NULL),
(383, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-08 21:15:51', NULL),
(384, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-08 21:16:11', NULL),
(385, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-08 21:16:19', NULL),
(386, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-08 21:16:47', NULL),
(387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-08 21:16:53', NULL),
(388, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-08 21:21:16', NULL),
(389, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-08 21:21:24', NULL),
(390, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-08 21:22:03', NULL),
(391, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-08 21:22:39', NULL),
(392, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de daniel@gmail.com desde la Dirección IP 127.0.0.1', '', 3, '2022-07-08 21:22:54', NULL),
(393, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com se desconectó', '', 3, '2022-07-08 21:28:15', NULL),
(394, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de marlinisutria@gmail.com desde la Dirección IP 127.0.0.1', '', 9, '2022-07-08 21:33:45', NULL),
(395, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marlinisutria@gmail.com logout', '', 9, '2022-07-08 22:26:22', NULL),
(396, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'ocarrascall@sena.edu.co login with IP Address 127.0.0.1', '', 1, '2022-07-08 23:47:42', NULL),
(397, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co logout', '', 1, '2022-07-09 01:02:40', NULL),
(398, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'daniel@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-07-09 01:03:14', NULL),
(399, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com logout', '', 3, '2022-07-09 01:04:56', NULL),
(400, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'ocarrascall@sena.edu.co login with IP Address 127.0.0.1', '', 1, '2022-07-09 01:05:38', NULL),
(401, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co logout', '', 1, '2022-07-09 01:23:46', NULL),
(402, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'daniel@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-07-09 01:24:04', NULL),
(403, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'ocarrascall@sena.edu.co login with IP Address 127.0.0.1', '', 1, '2022-07-12 18:25:33', NULL),
(404, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co logout', '', 1, '2022-07-12 18:25:47', NULL),
(405, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'daniel@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-07-12 18:25:58', NULL),
(406, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com logout', '', 3, '2022-07-12 18:33:24', NULL),
(407, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'ocarrascall@sena.edu.co login with IP Address 127.0.0.1', '', 1, '2022-07-12 18:33:32', NULL),
(408, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co logout', '', 1, '2022-07-12 18:34:08', NULL),
(409, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'daniel@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-07-12 18:34:16', NULL),
(410, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Try delete the image of Daniel data at Gestión de usuarios', '', 3, '2022-07-12 18:43:11', NULL),
(411, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/delete-image', 'Try delete the image of Daniel data at Gestión de usuarios', '', 3, '2022-07-12 18:43:27', NULL),
(412, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com logout', '', 3, '2022-07-12 18:50:01', NULL),
(413, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'ocarrascall@sena.edu.co login with IP Address 127.0.0.1', '', 1, '2022-07-12 18:50:13', NULL),
(414, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co logout', '', 1, '2022-07-12 18:50:18', NULL),
(415, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'daniel@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-07-12 18:50:25', NULL),
(416, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com logout', '', 3, '2022-07-12 20:22:27', NULL),
(417, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marlinisutria@gmail.com login with IP Address 127.0.0.1', '', 9, '2022-07-12 20:24:03', NULL),
(418, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marlinisutria@gmail.com logout', '', 9, '2022-07-12 22:00:32', NULL),
(419, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marlinisutria@gmail.com login with IP Address 127.0.0.1', '', 9, '2022-07-12 22:02:36', NULL),
(420, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marlinisutria@gmail.com logout', '', 9, '2022-07-12 22:02:47', NULL),
(421, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'daniel@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-07-12 22:03:08', NULL),
(422, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com logout', '', 3, '2022-07-12 22:03:22', NULL),
(423, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'daniel2@gmail.com login with IP Address 127.0.0.1', '', 7, '2022-07-12 22:05:15', NULL),
(424, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel2@gmail.com logout', '', 7, '2022-07-13 00:14:15', NULL),
(425, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'daniel@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-07-13 00:14:27', NULL),
(426, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'daniel@gmail.com logout', '', 3, '2022-07-13 00:18:14', NULL),
(427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marlinisutria@gmail.com login with IP Address 127.0.0.1', '', 9, '2022-07-13 00:23:07', NULL),
(428, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marlinisutria@gmail.com logout', '', 9, '2022-07-13 00:29:06', NULL),
(429, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'marlinisutria@gmail.com login with IP Address 127.0.0.1', '', 9, '2022-07-13 00:29:24', NULL),
(430, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'marlinisutria@gmail.com logout', '', 9, '2022-07-13 00:37:44', NULL),
(431, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'j@gmail.com login with IP Address 127.0.0.1', '', 13, '2022-07-13 00:37:53', NULL),
(432, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'j@gmail.com logout', '', 13, '2022-07-13 00:39:14', NULL),
(433, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'ocarrascall@sena.edu.co login with IP Address 127.0.0.1', '', 1, '2022-07-13 00:53:34', NULL),
(434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ocarrascall@sena.edu.co se desconectó', '', 1, '2022-07-13 01:00:51', NULL),
(435, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de ocarrascall@sena.edu.co desde la Dirección IP 127.0.0.1', '', 1, '2022-07-13 01:00:59', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Tipo documento', 'Route', 'AdminUstDocumentTypeControllerGetIndex', 'normal', 'fa fa-angle-double-right', 3, 1, 0, 1, 3, '2022-04-02 02:23:02', '2022-04-06 09:31:41'),
(3, 'Administrador', 'URL', '#', 'normal', 'fa fa-briefcase', 0, 1, 0, 1, 3, '2022-04-06 09:03:43', NULL),
(4, 'Usuario', 'URL', '#', 'normal', 'fa fa-user', 0, 1, 0, 1, 4, '2022-04-06 09:06:19', '2022-07-07 19:11:48'),
(5, 'Transportador', 'URL', '#', 'normal', 'fa fa-car', 0, 1, 0, 1, 5, '2022-04-06 09:10:40', '2022-07-07 18:50:07'),
(6, 'Operador', 'URL', '#', 'normal', 'fa fa-laptop', 0, 1, 0, 1, 6, '2022-04-06 09:12:35', NULL),
(7, 'Documentación', 'URL', '#', 'normal', 'fa fa-file-archive-o', 0, 1, 0, 1, 7, '2022-04-06 09:14:22', NULL),
(9, 'Cliente', 'Route', 'AdminUstClientControllerGetIndex', 'normal', 'fa fa-glass', 4, 1, 0, 1, 1, '2022-04-21 01:22:31', '2022-07-07 19:11:59'),
(11, 'Vehículo', 'Route', 'AdminUstVehicle16ControllerGetIndex', 'normal', 'fa fa-angle-double-right', 5, 1, 0, 1, 2, '2022-04-21 15:34:53', '2022-04-22 23:02:01'),
(12, 'Sedes', 'URL', '#', 'normal', 'fa fa-institution', 0, 1, 0, 1, 2, '2022-04-21 15:45:06', '2022-04-21 16:02:12'),
(13, 'RNT', 'Route', 'AdminUstRntControllerGetIndex', 'normal', 'fa fa-angle-double-right', 12, 1, 0, 1, 2, '2022-04-21 15:48:58', '2022-04-21 15:51:52'),
(14, 'Conductor', 'Route', 'AdminUstDriveControllerGetIndex', 'normal', 'fa fa-angle-double-right', 5, 1, 0, 1, 1, '2022-04-21 15:54:55', '2022-07-07 18:48:17'),
(15, 'Empresa', 'Route', 'AdminUstBusinessControllerGetIndex', 'normal', 'fa fa-angle-double-right', 12, 1, 0, 1, 1, '2022-04-21 16:00:30', '2022-04-21 16:03:21'),
(16, 'Tipo de Servicio', 'Route', 'AdminUstServiceTypeControllerGetIndex', 'normal', 'fa fa-angle-double-right', 3, 1, 0, 1, 4, '2022-04-21 23:47:34', '2022-04-22 11:41:07'),
(18, 'Tipo de Pago', 'Route', 'AdminUstPaymentTypeControllerGetIndex', NULL, 'fa fa-angle-double-right', 3, 1, 0, 1, 5, '2022-04-22 12:31:06', NULL),
(19, 'Tipo de Equipaje', 'Route', 'AdminUstBaggageTypeControllerGetIndex', NULL, 'fa fa-angle-double-right', 3, 1, 0, 1, 6, '2022-04-22 12:39:26', NULL),
(20, 'Tipo de Servicio Adicional', 'Route', 'AdminUstAdditionalServiceTypeControllerGetIndex', NULL, 'fa fa-angle-double-right', 3, 1, 0, 1, 7, '2022-04-22 13:10:30', NULL),
(21, 'Ruta', 'Route', 'AdminUstRouteControllerGetIndex', 'normal', 'fa fa-angle-double-right', 3, 1, 0, 1, 10, '2022-04-22 13:16:52', '2022-04-22 23:02:31'),
(22, 'Tipo de Vehículo', 'Route', 'AdminUstVehicleTypeControllerGetIndex', NULL, 'fa fa-angle-double-right', 3, 1, 0, 1, 8, '2022-04-22 13:38:05', NULL),
(24, 'Certificados de Vehículo', 'Route', 'AdminUstVehicleCertificateControllerGetIndex', 'normal', 'fa fa-angle-double-right', 5, 1, 0, 1, 3, '2022-04-22 20:53:17', '2022-04-22 23:02:44'),
(25, 'Tipo de Sangre', 'Route', 'AdminUstBloodTypeControllerGetIndex', NULL, 'fa fa-angle-double-right', 3, 1, 0, 1, 9, '2022-04-22 22:11:34', NULL),
(26, 'Licencia', 'Route', 'AdminUstLicenseControllerGetIndex', 'normal', 'fa fa-angle-double-right', 5, 1, 0, 1, 4, '2022-04-22 22:43:34', '2022-04-22 23:01:43'),
(27, 'Slider', 'Route', 'AdminUstSliderControllerGetIndex', NULL, 'fa fa-angle-double-right', 29, 1, 0, 1, 4, '2022-04-22 23:06:16', NULL),
(28, 'Aliados', 'Route', 'AdminUstAlliedControllerGetIndex', 'normal', 'fa fa-angle-double-right', 29, 1, 0, 1, 1, '2022-04-22 23:16:05', '2022-07-07 19:11:35'),
(29, 'Página Principal', 'URL', '#', 'normal', 'fa fa-home', 0, 1, 0, 1, 1, '2022-04-22 23:19:16', '2022-04-30 01:20:10'),
(30, 'Contactenos', 'Route', 'AdminUstContactUsControllerGetIndex', NULL, 'fa fa-angle-double-right', 29, 1, 0, 1, 3, '2022-04-22 23:22:04', NULL),
(31, 'Estado de Registros', 'Route', 'AdminUstStatusControllerGetIndex', 'normal', 'fa fa-angle-double-right', 3, 1, 0, 1, 2, '2022-04-22 23:30:47', '2022-04-22 23:34:12'),
(32, 'Chat', 'Route', 'AdminUstChatControllerGetIndex', NULL, 'fa fa-angle-double-right', 29, 1, 0, 1, 2, '2022-04-22 23:35:37', NULL),
(33, 'Departamento', 'Route', 'AdminUstDepartmentControllerGetIndex', NULL, 'fa fa-angle-double-right', 3, 1, 0, 1, 1, '2022-04-25 23:54:55', NULL),
(34, 'Plaza', 'Route', 'AdminUstPlaceControllerGetIndex', NULL, 'fa fa-angle-double-right', 0, 1, 0, 1, 8, '2022-04-26 00:02:02', NULL),
(36, 'Tarifa', 'Route', 'AdminUstFareControllerGetIndex', NULL, 'fa fa-angle-double-right', 0, 1, 0, 1, 9, '2022-04-26 02:59:32', NULL),
(37, 'Reserva de Servicio', 'Route', 'AdminUstServiceBookingControllerGetIndex', NULL, 'fa fa-angle-double-right', 0, 1, 0, 1, 10, '2022-04-26 20:11:05', NULL),
(38, 'Reserva del Servicio', 'Route', 'AdminUstServiceBookingNControllerGetIndex', 'normal', 'fa fa-star', 0, 1, 0, 1, 11, '2022-07-07 18:59:12', '2022-07-08 21:11:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(3, 3, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 1, 1),
(10, 2, 1),
(13, 10, 1),
(18, 13, 1),
(23, 12, 1),
(24, 15, 1),
(26, 16, 1),
(27, 17, 1),
(28, 18, 1),
(29, 19, 1),
(30, 20, 1),
(32, 22, 1),
(33, 23, 1),
(35, 25, 1),
(37, 26, 1),
(38, 11, 1),
(40, 21, 1),
(41, 24, 1),
(42, 27, 1),
(45, 30, 1),
(47, 31, 1),
(48, 32, 1),
(49, 33, 1),
(50, 34, 1),
(51, 35, 1),
(52, 36, 1),
(53, 37, 1),
(54, 29, 2),
(55, 29, 1),
(58, 14, 3),
(59, 14, 1),
(60, 5, 3),
(61, 5, 1),
(63, 28, 1),
(64, 4, 2),
(65, 4, 1),
(66, 9, 2),
(67, 9, 1),
(68, 38, 2),
(69, 38, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notificaciones', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-04-02 02:22:31', NULL, NULL),
(2, 'Privilegios', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-04-02 02:22:31', NULL, NULL),
(3, 'Privilegios & Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-04-02 02:22:31', NULL, NULL),
(4, 'Gestión de usuarios', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-04-02 02:22:31', NULL, NULL),
(5, 'Ajustes', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-04-02 02:22:31', NULL, NULL),
(6, 'Generador de Módulos', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-04-02 02:22:31', NULL, NULL),
(7, 'Gestión de Menús', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-04-02 02:22:31', NULL, NULL),
(8, 'Plantillas de Correo', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-04-02 02:22:31', NULL, NULL),
(9, 'Generador de Estadísticas', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-04-02 02:22:31', NULL, NULL),
(10, 'Generador de API', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-04-02 02:22:31', NULL, NULL),
(11, 'Log de Accesos (Usuarios)', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-04-02 02:22:31', NULL, NULL),
(12, 'Tipo de Documento', 'fa fa-download', 'ust_document_type', 'ust_document_type', 'AdminUstDocumentTypeController', 0, 0, '2022-04-02 02:23:02', NULL, NULL),
(13, 'Clientes', 'fa fa-user', 'ust_client', 'ust_client', 'AdminUstClientController', 0, 0, '2022-04-02 02:23:50', NULL, '2022-04-21 01:21:44'),
(14, 'Clientes', 'fa fa-glass', 'ust_client', 'ust_client', 'AdminUstClientController', 0, 0, '2022-04-21 01:22:31', NULL, NULL),
(15, 'Vehículos', 'fa fa-glass', 'ust_vehicle', 'ust_vehicle', 'AdminUstVehicleController', 0, 0, '2022-04-21 01:52:03', NULL, '2022-04-21 15:34:10'),
(16, 'Vehículos', 'fa fa-angle-double-right', 'ust_vehicle16', 'ust_vehicle', 'AdminUstVehicle16Controller', 0, 0, '2022-04-21 15:34:53', NULL, NULL),
(17, 'RNT', 'fa fa-angle-double-right', 'ust_rnt', 'ust_rnt', 'AdminUstRntController', 0, 0, '2022-04-21 15:48:58', NULL, NULL),
(18, 'Conductor', 'fa fa-angle-double-right', 'ust_drive', 'ust_drive', 'AdminUstDriveController', 0, 0, '2022-04-21 15:54:55', NULL, NULL),
(19, 'Empresa', 'fa fa-angle-double-right', 'ust_business', 'ust_business', 'AdminUstBusinessController', 0, 0, '2022-04-21 16:00:30', NULL, NULL),
(20, 'Tipo de Servicio', 'fa fa-glass', 'ust_service_type', 'ust_service_type', 'AdminUstServiceTypeController', 0, 0, '2022-04-21 23:47:34', NULL, NULL),
(21, 'Tipo de Documento', 'fa fa-angle-double-right', 'ust_document_type21', 'ust_document_type', 'AdminUstDocumentType21Controller', 0, 0, '2022-04-22 12:26:23', NULL, '2022-04-22 12:30:18'),
(22, 'Tipo de Pago', 'fa fa-angle-double-right', 'ust_payment_type', 'ust_payment_type', 'AdminUstPaymentTypeController', 0, 0, '2022-04-22 12:31:06', NULL, NULL),
(23, 'Tipo de Equipaje', 'fa fa-angle-double-right', 'ust_baggage_type', 'ust_baggage_type', 'AdminUstBaggageTypeController', 0, 0, '2022-04-22 12:39:26', NULL, NULL),
(24, 'Tipo de Servicio Adicional', 'fa fa-angle-double-right', 'ust_additional_service_type', 'ust_additional_service_type', 'AdminUstAdditionalServiceTypeController', 0, 0, '2022-04-22 13:10:30', NULL, NULL),
(25, 'Rutas', 'fa fa-angle-double-right', 'ust_route', 'ust_route', 'AdminUstRouteController', 0, 0, '2022-04-22 13:16:51', NULL, NULL),
(26, 'Tipo de Vehículo', 'fa fa-angle-double-right', 'ust_vehicle_type', 'ust_vehicle_type', 'AdminUstVehicleTypeController', 0, 0, '2022-04-22 13:38:05', NULL, NULL),
(27, 'Tarifa', 'fa fa-angle-double-right', 'ust_fare', 'ust_fare', 'AdminUstFareController', 0, 0, '2022-04-22 13:47:08', NULL, '2022-04-26 02:58:46'),
(28, 'Certificados de Vehículos', 'fa fa-angle-double-right', 'ust_vehicle_certificate', 'ust_vehicle_certificate', 'AdminUstVehicleCertificateController', 0, 0, '2022-04-22 20:53:17', NULL, NULL),
(29, 'Tipo de Sangre', 'fa fa-angle-double-right', 'ust_blood_type', 'ust_blood_type', 'AdminUstBloodTypeController', 0, 0, '2022-04-22 22:11:34', NULL, NULL),
(30, 'Licencia', 'fa fa-angle-double-right', 'ust_license', 'ust_license', 'AdminUstLicenseController', 0, 0, '2022-04-22 22:43:34', NULL, NULL),
(31, 'Slider', 'fa fa-angle-double-right', 'ust_slider', 'ust_slider', 'AdminUstSliderController', 0, 0, '2022-04-22 23:06:16', NULL, NULL),
(32, 'Aliados', 'fa fa-angle-double-right', 'ust_allied', 'ust_allied', 'AdminUstAlliedController', 0, 0, '2022-04-22 23:16:05', NULL, NULL),
(33, 'Contactenos', 'fa fa-angle-double-right', 'ust_contact_us', 'ust_contact_us', 'AdminUstContactUsController', 0, 0, '2022-04-22 23:22:04', NULL, NULL),
(34, 'Estado', 'fa fa-angle-double-right', 'ust_status', 'ust_status', 'AdminUstStatusController', 0, 0, '2022-04-22 23:30:47', NULL, NULL),
(35, 'Chat', 'fa fa-angle-double-right', 'ust_chat', 'ust_chat', 'AdminUstChatController', 0, 0, '2022-04-22 23:35:37', NULL, NULL),
(36, 'Departamento', 'fa fa-angle-double-right', 'ust_department', 'ust_department', 'AdminUstDepartmentController', 0, 0, '2022-04-25 23:54:55', NULL, NULL),
(37, 'Plaza', 'fa fa-angle-double-right', 'ust_place', 'ust_place', 'AdminUstPlaceController', 0, 0, '2022-04-26 00:02:02', NULL, NULL),
(38, 'Tarifa', 'fa fa-angle-double-right', 'ust_fare38', 'ust_fare', 'AdminUstFare38Controller', 0, 0, '2022-04-26 02:55:14', NULL, '2022-04-26 02:58:39'),
(39, 'Tarifa', 'fa fa-angle-double-right', 'ust_fare', 'ust_fare', 'AdminUstFareController', 0, 0, '2022-04-26 02:59:32', NULL, NULL),
(40, 'Reserva de Servicio', 'fa fa-angle-double-right', 'ust_service_booking', 'ust_service_booking', 'AdminUstServiceBookingController', 0, 0, '2022-04-26 20:11:05', NULL, NULL),
(41, 'Reserva del Servicio', 'fa fa-star', 'ust_service_booking_n', 'ust_service_booking', 'AdminUstServiceBookingNController', 0, 0, '2022-07-07 18:59:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2022-04-02 02:22:31', NULL),
(2, 'Cliente', 0, 'skin-blue', NULL, NULL),
(3, 'Conductor', 0, 'skin-green', '2022-07-07 13:43:25', '2022-07-07 13:43:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2022-04-02 02:22:31', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2022-04-02 02:22:31', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2022-04-02 02:22:31', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2022-04-02 02:22:31', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2022-04-02 02:22:31', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2022-04-02 02:22:31', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2022-04-02 02:22:31', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2022-04-02 02:22:31', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2022-04-02 02:22:31', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2022-04-02 02:22:31', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2022-04-02 02:22:31', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(30, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(31, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(32, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(33, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(34, 1, 1, 1, 1, 1, 1, 34, NULL, NULL),
(35, 1, 1, 1, 1, 1, 1, 35, NULL, NULL),
(36, 1, 1, 1, 1, 1, 1, 36, NULL, NULL),
(37, 1, 1, 1, 1, 1, 1, 37, NULL, NULL),
(38, 1, 1, 1, 1, 1, 1, 38, NULL, NULL),
(39, 1, 1, 1, 1, 1, 1, 39, NULL, NULL),
(40, 1, 1, 1, 1, 1, 1, 40, NULL, NULL),
(47, 1, 0, 1, 1, 0, 3, 18, NULL, NULL),
(48, 1, 0, 0, 0, 0, 3, 40, NULL, NULL),
(49, 1, 1, 1, 1, 1, 1, 41, NULL, NULL),
(53, 1, 1, 1, 1, 1, 2, 32, NULL, NULL),
(54, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(55, 1, 1, 1, 0, 0, 2, 41, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2022-04-02 02:22:31', NULL, 'Estilo de página de registro', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2022-04-02 02:22:31', NULL, 'Estilo de página de registro', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2022-06/140ea8d22d14a553ebe67f7700da33b7.png', 'upload_image', NULL, NULL, '2022-04-02 02:22:31', NULL, 'Estilo de página de registro', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Correo', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Correo', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Correo', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2022-04-02 02:22:31', NULL, 'Ajustes de Correo', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Correo', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Correo', 'SMTP Password'),
(10, 'appname', 'Integral Trans', 'text', NULL, NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Aplicaciones', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-04-02 02:22:31', NULL, 'Ajustes de Aplicaciones', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2022-05/9a2958a8537f7f743258f9b3b1da37db.png', 'upload_image', NULL, NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Aplicaciones', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Aplicaciones', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Aplicaciones', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Aplicaciones', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2022-04-02 02:22:31', NULL, 'Ajustes de Aplicaciones', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2022-04/85475111_1_h.jpg', 'ocarrascall@sena.edu.co', '$2y$10$BbZtsJpPnphj6hc2w1qNUOMiEFnUczaNeH5.EFxLnUfy.x9o68o.O', 1, '2022-04-02 02:22:31', '2022-04-21 14:53:49', 'Active'),
(3, 'Daniel', 'uploads/1/2022-04/login.PNG', 'daniel@gmail.com', '$2y$10$bBKrNJYweeM0rK315Z6WtuaOntphQHnIeEqRuIqE3UM7up9/TuR1C', 2, '2022-04-29 18:55:58', '2022-04-29 18:56:48', NULL),
(7, 'Daniel', 'uploads/1/2022-07/frm.PNG', 'daniel2@gmail.com', '$2y$10$icic.RlRWhcbpr34CrrDdeHKRguQsCTHDYlIdmJXJnxNgRV7.zG46', 3, '2022-07-07 18:44:22', NULL, NULL),
(9, 'IntegralTrans', 'uploads/HSAgbo7PBtdY8pa0czKBjPBMUFvUZ6t7yTSW0VtZ.png', 'marlinisutria@gmail.com', '$2y$10$bLXZh2N/bs0Z2bLBdcYx7e5dRMKGAXLg362rd76ROphDhGgrCTsg2', 2, '2022-07-08 21:32:57', '2022-07-08 21:32:57', NULL),
(13, 'jose', NULL, 'j@gmail.com', '$2y$10$Fuesj5y9HCnkAq67mG5Z7uVgJ2vZcBB1myruLs.KzI48pBc9i5gb6', 2, NULL, NULL, NULL),
(14, 'sara', 'uploads/Wb0IGX8I2QRjcWuLOTU4KlbuTK41tokCUj708m2O.png', 's@gmail.com', '$2y$10$OcQfjXqXk4dlXloyfxEOl.ph6/tnPW/gZiBqnVt1Y1jdz46Il5UO6', 2, '2022-07-13 00:40:08', '2022-07-13 00:40:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(30, '2022_03_22_154627_create_ust__contactenos_table', 3),
(31, '2022_03_22_200254_create_forms_table', 4),
(429, '2014_10_12_000000_create_users_table', 5),
(430, '2014_10_12_100000_create_password_resets_table', 5),
(431, '2016_08_07_145904_add_table_cms_apicustom', 5),
(432, '2016_08_07_150834_add_table_cms_dashboard', 5),
(433, '2016_08_07_151210_add_table_cms_logs', 5),
(434, '2016_08_07_151211_add_details_cms_logs', 5),
(435, '2016_08_07_152014_add_table_cms_privileges', 5),
(436, '2016_08_07_152214_add_table_cms_privileges_roles', 5),
(437, '2016_08_07_152320_add_table_cms_settings', 5),
(438, '2016_08_07_152421_add_table_cms_users', 5),
(439, '2016_08_07_154624_add_table_cms_menus_privileges', 5),
(440, '2016_08_07_154624_add_table_cms_moduls', 5),
(441, '2016_08_17_225409_add_status_cms_users', 5),
(442, '2016_08_20_125418_add_table_cms_notifications', 5),
(443, '2016_09_04_033706_add_table_cms_email_queues', 5),
(444, '2016_09_16_035347_add_group_setting', 5),
(445, '2016_09_16_045425_add_label_setting', 5),
(446, '2016_09_17_104728_create_nullable_cms_apicustom', 5),
(447, '2016_10_01_141740_add_method_type_apicustom', 5),
(448, '2016_10_01_141846_add_parameters_apicustom', 5),
(449, '2016_10_01_141934_add_responses_apicustom', 5),
(450, '2016_10_01_144826_add_table_apikey', 5),
(451, '2016_11_14_141657_create_cms_menus', 5),
(452, '2016_11_15_132350_create_cms_email_templates', 5),
(453, '2016_11_15_190410_create_cms_statistics', 5),
(454, '2016_11_17_102740_create_cms_statistic_components', 5),
(455, '2017_06_06_164501_add_deleted_at_cms_moduls', 5),
(456, '2019_08_19_000000_create_failed_jobs_table', 5),
(457, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(458, '2022_03_24_211233_create_ust_contact_us_table', 5),
(459, '2022_03_29_163532_create_ust_services_table', 5),
(460, '2022_03_29_212000_create_ust_document_type_table', 5),
(461, '2022_03_29_213045_create_ust_client_table', 5),
(462, '2022_04_01_192347_create_ust_chat_table', 5),
(463, '2022_05_23_162107_create_notes_table', 6),
(464, '2022_05_23_184003_create_products_table', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mascota', 60000, 'Permite llevar una mascota en tu viaje', 0, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngwing.com%2Fes%2Ffree-png-pbkcx&psig=AOvVaw3iQfjdoFQHUM0-CsJFwLj6&ust=1653418045790000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCJDd4a6k9vcCFQAAAAAdAAAAABAJ', NULL, NULL),
(2, 'Guía turístico', 80000, 'Un guía turístico para tu viaje', 0, '', NULL, NULL),
(4, 'Implementos deportivos', 70000, 'Medidas a convenir ', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.iadb.org%2Fes%2Fmejorandovidas%2Fel-boom-del-aprendizaje-en-linea&psig=AOvVaw2fHrfjwhGTWcOy2XZ4AOve&ust=1653426836390000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCOiC8o3F9vcCFQAAAAAdAAAAABAD', '2022-05-23 21:13:16', '2022-05-23 21:13:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_additional_service_type`
--

CREATE TABLE `ust_additional_service_type` (
  `id` int(11) NOT NULL,
  `additional_service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `helper` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ust_additional_service_type`
--

INSERT INTO `ust_additional_service_type` (`id`, `additional_service_name`, `price`, `image`, `helper`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Hotel La estrella', 130000, 'uploads/1/2022-05/hotel_dummy.png', 'Una noche sin desayuno', 1, '2022-05-27 18:38:16', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_allied`
--

CREATE TABLE `ust_allied` (
  `id` int(11) NOT NULL,
  `id_business` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `description_en` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_allied`
--

INSERT INTO `ust_allied` (`id`, `id_business`, `description`, `description_en`, `image`, `status`, `created_at`, `updated_at`, `link`) VALUES
(10, 1, 'Lleras', 'lleras', 'uploads/1/2022-05/lleras.jpg', 0, '2022-05-23 18:49:07', '2022-05-23 13:49:07', 'https://www.llerasexpresshotel.com/'),
(11, 1, 'Madeiro', 'madeiro', 'uploads/1/2022-05/madeiro.jpg', 0, '2022-05-23 18:52:28', '2022-05-23 13:52:28', 'https://hotelmadeiromedellin.com-hotel.com/es/'),
(12, 1, 'Jardín', 'jardin', 'uploads/1/2022-05/hoteljardin.jpg', 0, '2022-05-23 18:53:22', '2022-05-23 13:53:22', 'https://hoteljardin.com.co/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_baggage_type`
--

CREATE TABLE `ust_baggage_type` (
  `id` int(11) NOT NULL,
  `baggage_name` varchar(50) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `size` varchar(100) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_baggage_type`
--

INSERT INTO `ust_baggage_type` (`id`, `baggage_name`, `price`, `size`, `weight`, `image`, `helper`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Artículo personal', '0', '40 cm de alto x 35 cm de ancho x 25 cm de profundidad', '6 kg', NULL, 'Una cartera, un bolso para portátil o morral pequeño', 1, '2022-04-22 12:46:31', '2022-04-22 07:46:31'),
(2, 'Equipaje de mano', '0', '55 cm de alto x 40 cm de ancho x 25 cm de profundidad', '10 kg', NULL, 'Debe viajar en el baul del vehículo', 1, '2022-04-22 12:47:48', '2022-04-23 00:22:48'),
(3, 'Equipaje en bodega', '33000', '158 cm lineales (La suma de largo, ancho y alto)', '20 kg', NULL, 'Debe viajar en el baul del vehículo', 0, '2022-04-22 12:48:50', '2022-04-23 00:22:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_blood_type`
--

CREATE TABLE `ust_blood_type` (
  `id` int(11) NOT NULL,
  `blood_type_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_blood_type`
--

INSERT INTO `ust_blood_type` (`id`, `blood_type_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A+', 1, '2022-04-22 22:14:52', '2022-04-22 17:14:52'),
(2, 'B+', 1, '2022-04-22 22:15:03', '2022-04-22 22:16:24'),
(3, 'O+', 1, '2022-04-22 22:15:09', '2022-04-22 22:16:19'),
(4, 'AB+', 1, '2022-04-22 22:15:19', '2022-04-22 22:16:14'),
(5, 'A-', 1, '2022-04-22 22:15:29', '2022-04-22 17:15:29'),
(6, 'B-', 1, '2022-04-22 22:15:37', '2022-04-22 22:16:08'),
(7, 'O-', 1, '2022-04-22 22:15:49', '2022-04-22 22:16:03'),
(8, 'AB-', 1, '2022-04-22 22:15:57', '2022-04-22 17:15:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_business`
--

CREATE TABLE `ust_business` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `nit` varchar(12) NOT NULL,
  `legal_representative` varchar(50) NOT NULL,
  `document_id` varchar(12) NOT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_business`
--

INSERT INTO `ust_business` (`id`, `name`, `address`, `nit`, `legal_representative`, `document_id`, `helper`, `status`, `created_at`, `updated_at`) VALUES
(1, 'INTEGRAL TRANS SAS', 'Calle 51 57-70', '900687184-4', 'JAIME DIEGO RUIZ ACEVEDO', '70345321', 'Empresa con modalidad de Arrendadores de Vehículos para turismo, ejecutivos ,empresarial e individual Nacional e internacional, CON O SIN CONDUCTOR.', 1, '2022-04-08 09:42:11', '2022-04-08 09:42:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_chat`
--

CREATE TABLE `ust_chat` (
  `id` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_client`
--

CREATE TABLE `ust_client` (
  `id` int(11) NOT NULL,
  `id_document_type` int(11) NOT NULL,
  `document_id` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cell_phone` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_client`
--

INSERT INTO `ust_client` (`id`, `id_document_type`, `document_id`, `name`, `last_name`, `email`, `cell_phone`, `address`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(6, 2, '12345', 'Daniel', 'Gomez', 'sanchez17082003@gmail.com', '321', 'cra 654', NULL, 1, '2022-07-07 19:38:59', '2022-07-07 19:41:20'),
(7, 2, '123456', 'IntegralTrans', 'Agudelo', 'marlinisutria@gmail.com', '321654', 'cra 654', 'uploads/HSAgbo7PBtdY8pa0czKBjPBMUFvUZ6t7yTSW0VtZ.png', 1, '2022-07-08 21:32:57', '2022-07-08 21:32:57'),
(13, 2, '9', 'marlinis', 'utria', 'marlinisutria@gmail.com', '147258', 'asdf', NULL, 1, '2022-07-12 19:25:05', '2022-07-12 19:25:05'),
(14, 2, '123456', 'sara', 'ramirez', 's@gmail.com', '2', 'cra 654', 'uploads/Wb0IGX8I2QRjcWuLOTU4KlbuTK41tokCUj708m2O.png', 1, '2022-07-13 00:40:08', '2022-07-13 00:40:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_contact_us`
--

CREATE TABLE `ust_contact_us` (
  `id` int(11) NOT NULL,
  `id_business` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cell_phone` varchar(12) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_contract`
--

CREATE TABLE `ust_contract` (
  `id` int(11) NOT NULL,
  `id_service_booking` int(11) NOT NULL,
  `id_rnt` int(11) NOT NULL,
  `id_drive` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_department`
--

CREATE TABLE `ust_department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_department`
--

INSERT INTO `ust_department` (`id`, `department_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Antioquia', 1, '2022-04-25 23:57:48', '2022-04-25 18:57:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_document_type`
--

CREATE TABLE `ust_document_type` (
  `id` int(11) NOT NULL,
  `document_name` varchar(50) NOT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_document_type`
--

INSERT INTO `ust_document_type` (`id`, `document_name`, `helper`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tarjeta de Identidad', 'Mayor de 16 años', 1, '2022-04-21 00:47:10', '2022-04-22 11:24:32'),
(2, 'Cedula de Ciudadanía', 'Mayor o igual a 18 años', 1, '2022-04-21 00:47:32', '2022-04-22 11:25:10'),
(3, 'Pasaporte', 'Persona Extranjera', 1, '2022-04-21 00:47:59', '2022-04-22 11:22:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_drive`
--

CREATE TABLE `ust_drive` (
  `id` int(11) NOT NULL,
  `id_vehicle` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `id_document_type` int(11) NOT NULL,
  `document_id` varchar(12) NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `cell_phone` varchar(12) NOT NULL,
  `id_blood_type` int(11) NOT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_fare`
--

CREATE TABLE `ust_fare` (
  `id` int(11) NOT NULL,
  `id_service_type` int(11) NOT NULL,
  `id_vehicle_type` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `id_destination` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `measurement_unit` varchar(15) DEFAULT NULL,
  `distance` decimal(10,2) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_fare`
--

INSERT INTO `ust_fare` (`id`, `id_service_type`, `id_vehicle_type`, `id_location`, `id_destination`, `price`, `measurement_unit`, `distance`, `helper`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 6, 1, '0', 'km', '0.00', 'Tarifas vehículo estandar 1 - 4 pasajeros', 1, '2022-04-26 03:28:56', '2022-04-26 03:31:47'),
(2, 2, 1, 4, 2, '1500', 'km', '0.00', 'Tarifas vehículo estandar 1 - 4 pasajeros', 1, '2022-04-26 03:29:56', '2022-04-25 22:29:56'),
(3, 3, 1, 6, 7, '50000', NULL, NULL, NULL, 1, '2022-05-04 19:23:10', '2022-05-04 19:23:10'),
(4, 2, 1, 6, 1, '80000', NULL, NULL, NULL, 1, '2022-05-04 19:23:10', '2022-05-04 19:23:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_languaje`
--

CREATE TABLE `ust_languaje` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `faker_locale` varchar(5) NOT NULL,
  `fallback_locale` varchar(2) NOT NULL,
  `locale` varchar(2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_languaje`
--

INSERT INTO `ust_languaje` (`id`, `name`, `faker_locale`, `fallback_locale`, `locale`, `status`) VALUES
(1, 'Español', 'es_ES', 'es', 'es', 1),
(2, 'Ingles', 'en_EN', 'en', 'en', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_license`
--

CREATE TABLE `ust_license` (
  `id` int(11) NOT NULL,
  `id_drive` int(11) NOT NULL,
  `transit_license_number` varchar(12) NOT NULL,
  `category` varchar(50) NOT NULL,
  `expedition_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `driver_restrictions` varchar(255) DEFAULT NULL,
  `issuing_transit_agency` varchar(100) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_payment_status`
--

CREATE TABLE `ust_payment_status` (
  `id` int(11) NOT NULL,
  `payment_status_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_payment_status`
--

INSERT INTO `ust_payment_status` (`id`, `payment_status_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pendiente', 1, '2022-04-26 17:02:31', '2022-04-26 17:02:31'),
(2, 'Aprobado', 1, '2022-04-26 17:02:31', '2022-04-26 17:02:31'),
(3, 'Cancelado', 1, '2022-04-26 17:02:36', '2022-04-26 17:02:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_payment_type`
--

CREATE TABLE `ust_payment_type` (
  `id` int(11) NOT NULL,
  `payment_name` varchar(50) NOT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_payment_type`
--

INSERT INTO `ust_payment_type` (`id`, `payment_name`, `helper`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Debito', 'Pago por PSE', 1, NULL, '2022-04-22 12:35:38'),
(2, 'Credito', 'Visa, Master Card, etc', 1, NULL, '2022-04-22 12:35:31'),
(3, 'Efectivo', 'Pago en efectivo', 0, NULL, '2022-04-23 00:15:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_place`
--

CREATE TABLE `ust_place` (
  `id` int(11) NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `id_department` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_place`
--

INSERT INTO `ust_place` (`id`, `place_name`, `id_department`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aeropuerto José María Córdoba (Rionegro)', 1, 1, '2022-04-26 00:35:38', '2022-04-25 19:35:38'),
(2, 'Amaga', 1, 1, '2022-04-26 00:35:56', '2022-04-25 19:35:56'),
(3, 'Andes', 1, 1, '2022-04-26 00:36:06', '2022-04-25 19:36:06'),
(4, 'Bello', 1, 1, '2022-04-26 00:36:18', '2022-04-25 19:36:18'),
(5, 'Bolombolo', 1, 1, '2022-04-26 00:36:30', '2022-04-25 19:36:30'),
(6, 'Caldas', 1, 1, '2022-04-26 00:36:40', '2022-04-25 19:36:40'),
(7, 'Copacabana', 1, 1, '2022-04-26 00:36:52', '2022-04-25 19:36:52'),
(8, 'Finlandia', 1, 1, '2022-04-26 00:37:02', '2022-04-25 19:37:02'),
(9, 'Hispania', 1, 1, '2022-04-26 00:37:12', '2022-04-25 19:37:12'),
(10, 'Jardín', 1, 1, '2022-04-26 00:37:26', '2022-04-25 19:37:26'),
(11, 'Medellín (Centro)', 1, 1, '2022-04-26 00:37:36', '2022-04-25 19:37:36'),
(12, 'Montenegro', 1, 1, '2022-04-26 00:37:52', '2022-04-25 19:37:52'),
(13, 'Pereira', 1, 1, '2022-04-26 00:38:02', '2022-04-25 19:38:02'),
(14, 'Riosucio', 1, 1, '2022-04-26 00:38:13', '2022-04-25 19:38:13'),
(15, 'San Jeronimo', 1, 1, '2022-04-26 00:38:25', '2022-04-25 19:38:25'),
(16, 'Santa Fé de Antioquia', 1, 1, '2022-04-26 00:38:38', '2022-04-25 19:38:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_rnt`
--

CREATE TABLE `ust_rnt` (
  `id` int(11) NOT NULL,
  `id_business` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `expedition_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_rnt`
--

INSERT INTO `ust_rnt` (`id`, `id_business`, `code`, `expedition_date`, `expiration_date`, `image`, `helper`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '28895', '2020-05-08', '2021-03-31', NULL, 'Registro nacional de turismo', 1, '2022-04-22 15:21:56', '2022-04-22 10:21:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_service_booking`
--

CREATE TABLE `ust_service_booking` (
  `id` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_service_type` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `pickup_address` varchar(100) NOT NULL,
  `id_destination` int(11) NOT NULL,
  `destination_address` varchar(100) DEFAULT NULL,
  `number_passengers` bigint(2) NOT NULL,
  `departure_date` date NOT NULL,
  `departure_time` time NOT NULL,
  `return_date` date DEFAULT NULL,
  `return_time` time DEFAULT NULL,
  `id_payment_type` int(11) NOT NULL,
  `payment_status` varchar(25) NOT NULL DEFAULT 'Pendiente de pago',
  `drive_note` varchar(255) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_service_booking`
--

INSERT INTO `ust_service_booking` (`id`, `id_client`, `id_service_type`, `id_location`, `pickup_address`, `id_destination`, `destination_address`, `number_passengers`, `departure_date`, `departure_time`, `return_date`, `return_time`, `id_payment_type`, `payment_status`, `drive_note`, `ip`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 3, 'll', 76, 'jkj', 4, '2022-07-08', '00:00:00', NULL, NULL, 2, 'Pendiente de pago', 'ui', '7', 1, '2022-07-08 16:27:43', '2022-07-08 16:27:43'),
(2, 7, 2, 3, '78yh', 76, 'hjh', 4, '2022-07-08', '13:02:13', '2022-07-06', '11:02:13', 3, 'Pendiente de pago', 'ghg', 'ghu', 1, '2022-07-12 15:03:19', '2022-07-12 15:03:19'),
(5, 6, 3, 3333, 'fsdfsd', 333, 'sdfsdf', 88, '0000-00-00', '00:00:00', NULL, NULL, 1, 'Pendiente de pago', NULL, NULL, 1, '2022-07-12 15:32:17', '2022-07-12 15:32:17'),
(6, 13, 3, 44, 'aasdasd', 342, 'sdfsf', 3, '2022-07-12', '17:27:31', '2022-07-13', '22:27:31', 2, 'Pendiente de pago', NULL, NULL, 1, '2022-07-12 19:28:16', '2022-07-12 19:28:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_service_booking_additional_service_type`
--

CREATE TABLE `ust_service_booking_additional_service_type` (
  `id_service_booking` int(11) NOT NULL,
  `id_additional_service_type` int(11) NOT NULL,
  `quantity` decimal(2,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_service_booking_baggage`
--

CREATE TABLE `ust_service_booking_baggage` (
  `id_service_booking` int(11) NOT NULL,
  `id_baggage_type` int(11) NOT NULL,
  `quantity` decimal(2,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_service_type`
--

CREATE TABLE `ust_service_type` (
  `id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_description` varchar(500) NOT NULL,
  `service_description_en` varchar(500) NOT NULL,
  `service_name_en` varchar(150) NOT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_service_type`
--

INSERT INTO `ust_service_type` (`id`, `service_name`, `service_description`, `service_description_en`, `service_name_en`, `helper`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Traslado en la ciudad', 'Disposición por horas dentro del área metropolitana le asignamos conductor que le trasladara a diferentes sitios que usted requiera ,cenas, reuniones, etc. permaneciendo el vehículo a su disposición en el tiempo que sea necesario.', 'Disposition by hours within the metropolitan area we assign you a driver who will take you to different places that you require, dinners, meetings, et', '\nTransfer in the city', '', 'uploads/1/2022-05/traslado_ciudad.jpg', 1, '2022-04-21 23:52:59', '2022-05-11 00:35:24'),
(2, 'Traslado al aeropuerto', 'Con previa reservación le realizamos su traslado al aeropuerto desde su oficina o residencia. Aeropuerto José María Córdoba (Rionegro) – Medellín Medellín – Aeropuerto José María Córdoba (Rionegro) Aeropuerto Olaya Herrera (Medellín) – Hotel Hotel – Aeropuerto Olaya Herrera (Medellín)', 'With previous reservation we make your transfer to the airport from your office or residence. José María Córdoba Airport (Rionegro) – Medellín Medellín – José María Córdoba Airport (Rionegro) Olaya Herrera Airport (Medellín) – Hotel Hotel – Olaya Herrera Airport (Medellín)', ' Airport transfer', NULL, 'uploads/1/2022-05/aeropuerto_olaya_herrera_medellin.JPG', 1, '2022-04-22 12:05:28', '2022-05-11 00:35:16'),
(3, 'Puerta a puerta', 'Trasladamos a nuestros clientes desde la puerta de su casa hasta la puerta de su oficina.', 'We move our clients from the door of their house to the door of their office.', ' Door to door', NULL, 'uploads/1/2022-05/puerta_a_puerta.jpg', 1, '2022-04-22 12:06:15', '2022-05-11 00:35:03'),
(4, 'Viajes', 'Trasládese en nuestras confortables unidades a cualquier parte del interior de Medellín o del departamento de Antioquia, bien sea por viajes de negocio o turismo. Si usted desea nuestros conductores lo esperan el tiempo necesario para el traslado de nuevo a su destino.', 'Move in our comfortable units to any part of the interior of Medellín or the department of Antioquia, either for business trips or tourism. If you wish, our drivers will wait for you for the necessary time to transfer you back to your destination.', ' Trips', NULL, 'uploads/1/2022-05/viajes.jpg', 1, '2022-04-22 12:06:39', '2022-05-11 00:32:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_slider`
--

CREATE TABLE `ust_slider` (
  `id` int(11) NOT NULL,
  `id_business` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `descripcion_ingles` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_slider`
--

INSERT INTO `ust_slider` (`id`, `id_business`, `description`, `descripcion_ingles`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Vehículos', ' Vehicle', 'uploads/1/2022-05/slide3.jpg', 0, '2022-05-11 00:37:07', '2022-05-10 19:37:07'),
(2, 1, 'Hotel', 'Hotel', 'uploads/1/2022-05/slide1.jpg', 0, '2022-05-11 00:38:13', '2022-05-10 19:38:13'),
(3, 1, 'Transporte', ' Transportation', 'uploads/1/2022-05/slide2.jpg', 0, '2022-05-11 00:38:42', '2022-05-10 19:38:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_status`
--

CREATE TABLE `ust_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_status`
--

INSERT INTO `ust_status` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(0, 'Inactivo', '2022-04-22 06:13:36', '2022-04-22 06:13:36'),
(1, 'Activo', '2022-04-22 06:14:14', '2022-04-22 06:14:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_vehicle`
--

CREATE TABLE `ust_vehicle` (
  `id` int(11) NOT NULL,
  `id_rnt` int(11) NOT NULL,
  `id_vehicle_type` int(11) NOT NULL,
  `trademark` varchar(50) NOT NULL,
  `line` varchar(50) DEFAULT NULL,
  `color` varchar(50) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `model` varchar(4) NOT NULL,
  `passenger_capacity` bigint(3) NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_vehicle`
--

INSERT INTO `ust_vehicle` (`id`, `id_rnt`, `id_vehicle_type`, `trademark`, `line`, `color`, `plate`, `model`, `passenger_capacity`, `image`, `helper`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Renault', '5', 'BLANCO ARTICA', 'DHZ036', '0', 0, NULL, NULL, 1, '2022-04-22 15:32:11', '2022-04-22 20:34:55'),
(2, 1, 1, 'Kia', 'New Sportage', 'Plata', 'HAZ657', '0', 0, NULL, NULL, 1, '2022-04-22 15:33:57', '2022-04-22 20:34:40'),
(3, 1, 1, 'Hyundai', 'Tucson', 'GRIS CARBON', 'IUA838', '0', 0, NULL, NULL, 1, '2022-04-22 15:37:09', '2022-04-22 20:34:31'),
(4, 1, 1, 'Lamborghini', '12', 'Blanco', '123-as3', '2022', 3, 'uploads/1/2022-04/renault.jpg', NULL, 1, '2022-04-29 21:58:00', '2022-04-29 16:58:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_vehicle_certificate`
--

CREATE TABLE `ust_vehicle_certificate` (
  `id` int(11) NOT NULL,
  `id_vehicle` int(11) NOT NULL,
  `issuing_agency` varchar(50) NOT NULL,
  `certificate_type` varchar(50) NOT NULL,
  `certificate_number` varchar(15) NOT NULL,
  `expedition_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `helper` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ust_vehicle_type`
--

CREATE TABLE `ust_vehicle_type` (
  `id` int(11) NOT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ust_vehicle_type`
--

INSERT INTO `ust_vehicle_type` (`id`, `vehicle_name`, `helper`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Vehículo estándar', '1 a 4 pasajeros', NULL, 1, '2022-04-22 13:44:32', '2022-04-22 08:44:32'),
(2, 'Vehículo especial', '1 a 7 pasajeros', NULL, 1, '2022-04-22 13:45:00', '2022-04-22 08:45:00'),
(3, 'Buseta tipo Van', '1 a 8 pasajeros', NULL, 1, '2022-04-22 13:45:22', '2022-04-22 08:45:22'),
(4, 'Buseta Van Grande', '1 a 15 pasajeros', NULL, 1, '2022-04-22 20:10:58', '2022-04-22 15:10:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_additional_service_type`
--
ALTER TABLE `ust_additional_service_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_allied`
--
ALTER TABLE `ust_allied`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_business` (`id_business`);

--
-- Indices de la tabla `ust_baggage_type`
--
ALTER TABLE `ust_baggage_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_blood_type`
--
ALTER TABLE `ust_blood_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indices de la tabla `ust_business`
--
ALTER TABLE `ust_business`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_chat`
--
ALTER TABLE `ust_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`);

--
-- Indices de la tabla `ust_client`
--
ALTER TABLE `ust_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_document_type` (`id_document_type`);

--
-- Indices de la tabla `ust_contact_us`
--
ALTER TABLE `ust_contact_us`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_business` (`id_business`);

--
-- Indices de la tabla `ust_contract`
--
ALTER TABLE `ust_contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_service_booking` (`id_service_booking`),
  ADD KEY `id_rnt` (`id_rnt`),
  ADD KEY `id_drive` (`id_drive`);

--
-- Indices de la tabla `ust_department`
--
ALTER TABLE `ust_department`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_document_type`
--
ALTER TABLE `ust_document_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_drive`
--
ALTER TABLE `ust_drive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vehicle` (`id_vehicle`),
  ADD KEY `id_document_type` (`id_document_type`),
  ADD KEY `id_blood_type` (`id_blood_type`);

--
-- Indices de la tabla `ust_fare`
--
ALTER TABLE `ust_fare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vehicle_type` (`id_vehicle_type`),
  ADD KEY `id_location` (`id_location`),
  ADD KEY `id_destination` (`id_destination`),
  ADD KEY `id_service_type` (`id_service_type`);

--
-- Indices de la tabla `ust_languaje`
--
ALTER TABLE `ust_languaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_license`
--
ALTER TABLE `ust_license`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_drive` (`id_drive`);

--
-- Indices de la tabla `ust_payment_status`
--
ALTER TABLE `ust_payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_payment_type`
--
ALTER TABLE `ust_payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_place`
--
ALTER TABLE `ust_place`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_department` (`id_department`);

--
-- Indices de la tabla `ust_rnt`
--
ALTER TABLE `ust_rnt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_business` (`id_business`);

--
-- Indices de la tabla `ust_service_booking`
--
ALTER TABLE `ust_service_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_service_type` (`id_service_type`),
  ADD KEY `id_payment_type` (`id_payment_type`),
  ADD KEY `id_destination` (`id_destination`),
  ADD KEY `id_location` (`id_location`);

--
-- Indices de la tabla `ust_service_booking_additional_service_type`
--
ALTER TABLE `ust_service_booking_additional_service_type`
  ADD KEY `id_service_booking` (`id_service_booking`),
  ADD KEY `id_additional_service_type` (`id_additional_service_type`);

--
-- Indices de la tabla `ust_service_booking_baggage`
--
ALTER TABLE `ust_service_booking_baggage`
  ADD KEY `id_service_booking` (`id_service_booking`),
  ADD KEY `id_baggage_type` (`id_baggage_type`);

--
-- Indices de la tabla `ust_service_type`
--
ALTER TABLE `ust_service_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_slider`
--
ALTER TABLE `ust_slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_business` (`id_business`);

--
-- Indices de la tabla `ust_status`
--
ALTER TABLE `ust_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ust_vehicle`
--
ALTER TABLE `ust_vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rnt` (`id_rnt`),
  ADD KEY `id_vehicle_type` (`id_vehicle_type`);

--
-- Indices de la tabla `ust_vehicle_certificate`
--
ALTER TABLE `ust_vehicle_certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vehicle` (`id_vehicle`);

--
-- Indices de la tabla `ust_vehicle_type`
--
ALTER TABLE `ust_vehicle_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ust_additional_service_type`
--
ALTER TABLE `ust_additional_service_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ust_allied`
--
ALTER TABLE `ust_allied`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ust_baggage_type`
--
ALTER TABLE `ust_baggage_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ust_blood_type`
--
ALTER TABLE `ust_blood_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ust_business`
--
ALTER TABLE `ust_business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ust_chat`
--
ALTER TABLE `ust_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ust_client`
--
ALTER TABLE `ust_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ust_contact_us`
--
ALTER TABLE `ust_contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ust_contract`
--
ALTER TABLE `ust_contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ust_department`
--
ALTER TABLE `ust_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ust_document_type`
--
ALTER TABLE `ust_document_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ust_drive`
--
ALTER TABLE `ust_drive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ust_fare`
--
ALTER TABLE `ust_fare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ust_languaje`
--
ALTER TABLE `ust_languaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ust_license`
--
ALTER TABLE `ust_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ust_payment_status`
--
ALTER TABLE `ust_payment_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ust_payment_type`
--
ALTER TABLE `ust_payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ust_place`
--
ALTER TABLE `ust_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `ust_rnt`
--
ALTER TABLE `ust_rnt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ust_service_booking`
--
ALTER TABLE `ust_service_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ust_service_type`
--
ALTER TABLE `ust_service_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ust_slider`
--
ALTER TABLE `ust_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ust_vehicle`
--
ALTER TABLE `ust_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ust_vehicle_certificate`
--
ALTER TABLE `ust_vehicle_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ust_vehicle_type`
--
ALTER TABLE `ust_vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ust_allied`
--
ALTER TABLE `ust_allied`
  ADD CONSTRAINT `ust_allied_ibfk_1` FOREIGN KEY (`id_business`) REFERENCES `ust_business` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_chat`
--
ALTER TABLE `ust_chat`
  ADD CONSTRAINT `ust_chat_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `ust_client` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_client`
--
ALTER TABLE `ust_client`
  ADD CONSTRAINT `ust_client_ibfk_1` FOREIGN KEY (`id_document_type`) REFERENCES `ust_document_type` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_contact_us`
--
ALTER TABLE `ust_contact_us`
  ADD CONSTRAINT `ust_contact_us_ibfk_1` FOREIGN KEY (`id_business`) REFERENCES `ust_business` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_contract`
--
ALTER TABLE `ust_contract`
  ADD CONSTRAINT `ust_contract_ibfk_1` FOREIGN KEY (`id_service_booking`) REFERENCES `ust_service_booking` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_contract_ibfk_2` FOREIGN KEY (`id_rnt`) REFERENCES `ust_rnt` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_contract_ibfk_3` FOREIGN KEY (`id_drive`) REFERENCES `ust_drive` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_drive`
--
ALTER TABLE `ust_drive`
  ADD CONSTRAINT `ust_drive_ibfk_1` FOREIGN KEY (`id_vehicle`) REFERENCES `ust_vehicle` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_drive_ibfk_2` FOREIGN KEY (`id_document_type`) REFERENCES `ust_document_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_drive_ibfk_3` FOREIGN KEY (`id_blood_type`) REFERENCES `ust_blood_type` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_fare`
--
ALTER TABLE `ust_fare`
  ADD CONSTRAINT `ust_fare_ibfk_2` FOREIGN KEY (`id_vehicle_type`) REFERENCES `ust_vehicle_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_fare_ibfk_3` FOREIGN KEY (`id_location`) REFERENCES `ust_place` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_fare_ibfk_4` FOREIGN KEY (`id_destination`) REFERENCES `ust_place` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_fare_ibfk_5` FOREIGN KEY (`id_service_type`) REFERENCES `ust_service_type` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_license`
--
ALTER TABLE `ust_license`
  ADD CONSTRAINT `ust_license_ibfk_1` FOREIGN KEY (`id_drive`) REFERENCES `ust_drive` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_place`
--
ALTER TABLE `ust_place`
  ADD CONSTRAINT `ust_place_ibfk_1` FOREIGN KEY (`id_department`) REFERENCES `ust_department` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_rnt`
--
ALTER TABLE `ust_rnt`
  ADD CONSTRAINT `ust_rnt_ibfk_1` FOREIGN KEY (`id_business`) REFERENCES `ust_business` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_service_booking`
--
ALTER TABLE `ust_service_booking`
  ADD CONSTRAINT `ust_service_booking_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `ust_client` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_service_booking_ibfk_6` FOREIGN KEY (`id_payment_type`) REFERENCES `ust_payment_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_service_booking_ibfk_7` FOREIGN KEY (`id_service_type`) REFERENCES `ust_service_type` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_service_booking_additional_service_type`
--
ALTER TABLE `ust_service_booking_additional_service_type`
  ADD CONSTRAINT `ust_service_booking_additional_service_type_ibfk_1` FOREIGN KEY (`id_service_booking`) REFERENCES `ust_service_booking` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_service_booking_additional_service_type_ibfk_2` FOREIGN KEY (`id_additional_service_type`) REFERENCES `ust_additional_service_type` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_service_booking_baggage`
--
ALTER TABLE `ust_service_booking_baggage`
  ADD CONSTRAINT `ust_service_booking_baggage_ibfk_1` FOREIGN KEY (`id_baggage_type`) REFERENCES `ust_baggage_type` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_service_booking_baggage_ibfk_2` FOREIGN KEY (`id_service_booking`) REFERENCES `ust_service_booking` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_slider`
--
ALTER TABLE `ust_slider`
  ADD CONSTRAINT `ust_slider_ibfk_1` FOREIGN KEY (`id_business`) REFERENCES `ust_business` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_vehicle`
--
ALTER TABLE `ust_vehicle`
  ADD CONSTRAINT `ust_vehicle_ibfk_1` FOREIGN KEY (`id_rnt`) REFERENCES `ust_rnt` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ust_vehicle_ibfk_2` FOREIGN KEY (`id_vehicle_type`) REFERENCES `ust_vehicle_type` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ust_vehicle_certificate`
--
ALTER TABLE `ust_vehicle_certificate`
  ADD CONSTRAINT `ust_vehicle_certificate_ibfk_1` FOREIGN KEY (`id_vehicle`) REFERENCES `ust_vehicle` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
