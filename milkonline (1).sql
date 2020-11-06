-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2020 at 06:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milkonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add aboutus', 9, 'add_aboutus'),
(34, 'Can change aboutus', 9, 'change_aboutus'),
(35, 'Can delete aboutus', 9, 'delete_aboutus'),
(36, 'Can view aboutus', 9, 'view_aboutus'),
(37, 'Can add cart item', 10, 'add_cartitem'),
(38, 'Can change cart item', 10, 'change_cartitem'),
(39, 'Can delete cart item', 10, 'delete_cartitem'),
(40, 'Can view cart item', 10, 'view_cartitem'),
(41, 'Can add cart', 11, 'add_cart'),
(42, 'Can change cart', 11, 'change_cart'),
(43, 'Can delete cart', 11, 'delete_cart'),
(44, 'Can view cart', 11, 'view_cart'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem'),
(49, 'Can add order', 13, 'add_order'),
(50, 'Can change order', 13, 'change_order'),
(51, 'Can delete order', 13, 'delete_order'),
(52, 'Can view order', 13, 'view_order'),
(53, 'Can add gallery', 14, 'add_gallery'),
(54, 'Can change gallery', 14, 'change_gallery'),
(55, 'Can delete gallery', 14, 'delete_gallery'),
(56, 'Can view gallery', 14, 'view_gallery');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$ow0TVjUIgzF9$RfaJu0Ks0fYyxUIrYzBW2wRNbzK02GfrS1CYAOpFc88=', '2020-03-31 07:23:54.109770', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2020-03-28 10:05:13.664724');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-28 10:07:25.593716', '1', 'Milk', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-03-28 10:07:41.154183', '2', 'Curd', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-03-28 10:10:21.590156', '1', 'Peda', 1, '[{\"added\": {}}]', 8, 1),
(4, '2020-03-28 10:12:49.866082', '2', 'Curd  Sadum', 1, '[{\"added\": {}}]', 8, 1),
(5, '2020-03-28 10:13:34.826316', '3', 'Curd item2', 1, '[{\"added\": {}}]', 8, 1),
(6, '2020-03-28 10:15:21.933829', '4', 'Milk item2', 1, '[{\"added\": {}}]', 8, 1),
(7, '2020-03-28 10:36:56.515314', '4', 'Milk Powder', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 8, 1),
(8, '2020-03-28 10:37:47.152426', '2', 'Lasy', 2, '[{\"changed\": {\"fields\": [\"name\", \"slug\"]}}]', 8, 1),
(9, '2020-03-28 10:39:01.541796', '3', 'Gulab Jamun', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 8, 1),
(10, '2020-03-28 10:43:00.592415', '1', 'Our Story', 1, '[{\"added\": {}}]', 9, 1),
(11, '2020-03-28 10:50:23.148975', '1', 'Our Story', 2, '[{\"changed\": {\"fields\": [\"description\", \"image\"]}}]', 9, 1),
(12, '2020-03-28 11:00:16.752183', '1', 'Our Story', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 9, 1),
(13, '2020-03-28 11:08:27.288660', '1', 'Our Story', 2, '[]', 9, 1),
(14, '2020-03-28 11:25:26.695744', '1', 'Our Story', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 9, 1),
(15, '2020-03-28 11:35:12.874441', '2', 'Curd', 2, '[{\"changed\": {\"fields\": [\"img\"]}}]', 7, 1),
(16, '2020-03-28 11:35:24.049935', '1', 'Milk', 2, '[{\"changed\": {\"fields\": [\"img\"]}}]', 7, 1),
(17, '2020-03-28 11:38:00.186744', '1', 'Milk', 2, '[]', 7, 1),
(18, '2020-03-28 11:41:58.306404', '3', 'Curd product', 1, '[{\"added\": {}}]', 7, 1),
(19, '2020-03-28 11:42:10.780574', '3', 'Curd product', 2, '[{\"changed\": {\"fields\": [\"img\"]}}]', 7, 1),
(20, '2020-03-28 11:45:36.579891', '3', 'Curd product', 3, '', 7, 1),
(21, '2020-03-28 12:29:05.836320', '5', 'demp name', 1, '[{\"added\": {}}]', 8, 1),
(22, '2020-03-28 12:43:32.057437', '6', 'demo3', 1, '[{\"added\": {}}]', 8, 1),
(23, '2020-03-28 12:44:05.621386', '7', 'demo4', 1, '[{\"added\": {}}]', 8, 1),
(24, '2020-03-28 12:46:54.824330', '6', 'demo3', 3, '', 8, 1),
(25, '2020-03-28 12:46:54.828381', '7', 'demo4', 3, '', 8, 1),
(26, '2020-03-28 12:46:54.832375', '5', 'demp name', 3, '', 8, 1),
(27, '2020-03-28 13:35:49.311226', '3', 'Gulab Jamun', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(28, '2020-03-28 13:37:06.650394', '3', 'Gulab Jamun', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(29, '2020-03-28 13:41:01.949431', '4', 'Milk Powder', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(30, '2020-03-28 13:41:51.063500', '8', 'product1', 1, '[{\"added\": {}}]', 8, 1),
(31, '2020-03-28 13:44:13.327680', '2', 'Curd', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 7, 1),
(32, '2020-03-28 13:44:33.423196', '1', 'Milk', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 7, 1),
(33, '2020-03-28 13:46:05.401167', '1', 'Milk', 2, '[{\"changed\": {\"fields\": [\"img\"]}}]', 7, 1),
(34, '2020-03-28 13:46:54.645492', '4', 'mdw', 1, '[{\"added\": {}}]', 7, 1),
(35, '2020-03-28 13:47:33.056083', '4', 'mdw', 3, '', 7, 1),
(36, '2020-03-28 13:50:28.647964', '8', 'product1', 3, '', 8, 1),
(37, '2020-03-28 13:51:26.948433', '2', 'Lasy', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(38, '2020-03-28 13:52:26.114125', '2', 'Lasy', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(39, '2020-03-28 13:57:36.005508', '1', 'Milk', 2, '[{\"changed\": {\"fields\": [\"img\"]}}]', 7, 1),
(40, '2020-03-28 13:58:19.075753', '2', 'Curd', 2, '[{\"changed\": {\"fields\": [\"img\"]}}]', 7, 1),
(41, '2020-03-29 09:24:43.435885', '2', 'Lasy', 2, '[{\"changed\": {\"fields\": [\"description\"]}}]', 8, 1),
(42, '2020-03-29 13:52:58.844256', '5', 'demo', 1, '[{\"added\": {}}]', 7, 1),
(43, '2020-03-29 13:54:11.165696', '5', 'demo', 3, '', 7, 1),
(44, '2020-03-31 06:26:45.301380', '3', 'Gulab Jamun', 2, '[{\"changed\": {\"fields\": [\"stock\"]}}]', 8, 1),
(45, '2020-03-31 16:12:34.556439', '1', 'gallery object (1)', 1, '[{\"added\": {}}]', 14, 1),
(46, '2020-03-31 16:12:42.517283', '2', 'gallery object (2)', 1, '[{\"added\": {}}]', 14, 1),
(47, '2020-03-31 16:13:06.214424', '3', 'gallery object (3)', 1, '[{\"added\": {}}]', 14, 1),
(48, '2020-03-31 16:13:20.228590', '4', 'gallery object (4)', 1, '[{\"added\": {}}]', 14, 1),
(49, '2020-03-31 16:13:29.818348', '5', 'gallery object (5)', 1, '[{\"added\": {}}]', 14, 1),
(50, '2020-03-31 16:14:12.504154', '6', 'gallery object (6)', 1, '[{\"added\": {}}]', 14, 1),
(51, '2020-03-31 16:14:32.483997', '7', 'gallery object (7)', 1, '[{\"added\": {}}]', 14, 1),
(52, '2020-03-31 16:14:41.636260', '8', 'gallery object (8)', 1, '[{\"added\": {}}]', 14, 1),
(53, '2020-03-31 16:14:49.802288', '9', 'gallery object (9)', 1, '[{\"added\": {}}]', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'cart', 'cart'),
(10, 'cart', 'cartitem'),
(5, 'contenttypes', 'contenttype'),
(9, 'MilkonlineApp', 'aboutus'),
(7, 'MilkonlineApp', 'category'),
(14, 'MilkonlineApp', 'gallery'),
(8, 'MilkonlineApp', 'product'),
(13, 'order', 'order'),
(12, 'order', 'orderitem'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'MilkonlineApp', '0001_initial', '2020-03-28 10:01:59.232066'),
(2, 'MilkonlineApp', '0002_auto_20200327_1414', '2020-03-28 10:01:59.380618'),
(3, 'contenttypes', '0001_initial', '2020-03-28 10:01:59.492017'),
(4, 'auth', '0001_initial', '2020-03-28 10:01:59.903545'),
(5, 'admin', '0001_initial', '2020-03-28 10:02:00.768160'),
(6, 'admin', '0002_logentry_remove_auto_add', '2020-03-28 10:02:01.005345'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-28 10:02:01.019087'),
(8, 'contenttypes', '0002_remove_content_type_name', '2020-03-28 10:02:01.211276'),
(9, 'auth', '0002_alter_permission_name_max_length', '2020-03-28 10:02:01.314977'),
(10, 'auth', '0003_alter_user_email_max_length', '2020-03-28 10:02:01.349810'),
(11, 'auth', '0004_alter_user_username_opts', '2020-03-28 10:02:01.363967'),
(12, 'auth', '0005_alter_user_last_login_null', '2020-03-28 10:02:01.483346'),
(13, 'auth', '0006_require_contenttypes_0002', '2020-03-28 10:02:01.490046'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2020-03-28 10:02:01.506011'),
(15, 'auth', '0008_alter_user_username_max_length', '2020-03-28 10:02:01.537128'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2020-03-28 10:02:01.577278'),
(17, 'auth', '0010_alter_group_name_max_length', '2020-03-28 10:02:01.605796'),
(18, 'auth', '0011_update_proxy_permissions', '2020-03-28 10:02:01.623263'),
(19, 'sessions', '0001_initial', '2020-03-28 10:02:01.676464'),
(20, 'MilkonlineApp', '0003_aboutus', '2020-03-28 10:33:57.413627'),
(21, 'cart', '0001_initial', '2020-03-30 05:34:56.046957'),
(22, 'order', '0001_initial', '2020-03-31 09:22:13.397623'),
(23, 'MilkonlineApp', '0004_gallery', '2020-03-31 16:11:24.639749');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0236747btrk6e8thxb64jzcp4r82egxq', 'NDU3YzhmM2Q1ZDk4MTRmMjg2MDQ0MmFiOGM0M2NkZTJjYmQ4YzlkZDp7fQ==', '2020-04-14 04:37:51.871995'),
('0gjlodmzlw1uo09rf54n1dbv8nxckuxu', 'NDk2YjY0NDY3MTc2YzYzODkyMzA0MDY2Mjc4ZjI3MzhlNjcxNzdjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZmRkYjhjZDJmZGU3NDkxZmExZjIxYjZhMzY2ODFjNTQ5Y2QxNzUxIn0=', '2020-04-14 07:23:54.117836'),
('7pkop2jgmixjqortpquhixazo63xgh7e', 'NDU3YzhmM2Q1ZDk4MTRmMjg2MDQ0MmFiOGM0M2NkZTJjYmQ4YzlkZDp7fQ==', '2020-04-14 04:34:17.474199'),
('mvbm0vxxokmff5uctkkw50yaz59phcfw', 'NDk2YjY0NDY3MTc2YzYzODkyMzA0MDY2Mjc4ZjI3MzhlNjcxNzdjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZmRkYjhjZDJmZGU3NDkxZmExZjIxYjZhMzY2ODFjNTQ5Y2QxNzUxIn0=', '2020-04-14 06:26:32.681513'),
('qo3aja9zrpkfsl25ezb2wj1n0xupixeb', 'NDU3YzhmM2Q1ZDk4MTRmMjg2MDQ0MmFiOGM0M2NkZTJjYmQ4YzlkZDp7fQ==', '2020-04-14 05:23:10.022181'),
('ujr88l4kpuwr4edh26a6eq3axkn30dhh', 'NDk2YjY0NDY3MTc2YzYzODkyMzA0MDY2Mjc4ZjI3MzhlNjcxNzdjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZmRkYjhjZDJmZGU3NDkxZmExZjIxYjZhMzY2ODFjNTQ5Y2QxNzUxIn0=', '2020-04-11 10:05:36.821178');

-- --------------------------------------------------------

--
-- Table structure for table `milkonlineapp_aboutus`
--

CREATE TABLE `milkonlineapp_aboutus` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `milkonlineapp_aboutus`
--

INSERT INTO `milkonlineapp_aboutus` (`id`, `name`, `slug`, `description`, `image`) VALUES
(1, 'Our Story', 'our-story', 'Milk is a nutrient-rich, white liquid food produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who are breastfed) before they are able to digest other types of food.', '');

-- --------------------------------------------------------

--
-- Table structure for table `milkonlineapp_category`
--

CREATE TABLE `milkonlineapp_category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `milkonlineapp_category`
--

INSERT INTO `milkonlineapp_category` (`id`, `name`, `slug`, `description`, `img`) VALUES
(1, 'Milk', 'milk', 'A whitish liquid containing proteins, fats, lactose, and various vitamins and minerals that is produced by the mammary glands of all mature female mammals after they have given birth and serves as nourishment for their young.', 'category/milkk2.jpg'),
(2, 'Curd', 'curd', 'A whitish liquid containing proteins, fats, lactose, and various vitamins and minerals that is produced by the mammary glands of all mature female mammals after they have given birth and serves as nourishment for their young.', 'category/milkpowder.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `milkonlineapp_product`
--

CREATE TABLE `milkonlineapp_product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `milkonlineapp_product`
--

INSERT INTO `milkonlineapp_product` (`id`, `name`, `slug`, `description`, `price`, `image`, `stock`, `available`, `created`, `updated`, `category_id`) VALUES
(1, 'Peda', 'peda', 'milk. noun. A whitish liquid containing proteins, fats, lactose, and various vitamins and minerals that is produced by the mammary glands of all mature female mammals after they have given birth and serves as nourishment for their young. The milk of cows, goats, or other animals, used as food by humans.', '12.00', 'product/milkk2.jpg', 30, 1, '2020-03-28 10:10:21.590156', '2020-03-28 10:10:21.590156', 1),
(2, 'Lasy', 'Lasy', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit.', '30.00', 'product/milkk2_ezY1dpG.jpg', 40, 1, '2020-03-28 10:12:49.865053', '2020-03-29 09:24:43.431899', 2),
(3, 'Gulab Jamun', 'curd-item2', 'milk. noun. A whitish liquid containing proteins, fats, lactose, and various vitamins and minerals that is produced by the mammary glands of all mature female mammals after they have given birth and serves as nourishment for their young. The milk of cows, goats, or other animals, used as food by humans.', '1345.00', 'product/curd22.jpg', 2, 1, '2020-03-28 10:13:34.824027', '2020-03-31 06:26:45.290185', 2),
(4, 'Milk Powder', 'milk-item2', 'milk. noun. A whitish liquid containing proteins, fats, lactose, and various vitamins and minerals that is produced by the mammary glands of all mature female mammals after they have given birth and serves as nourishment for their young. The milk of cows, goats, or other animals, used as food by humans.', '123.00', 'product/milkpowder.jpg', 22, 1, '2020-03-28 10:15:21.933829', '2020-03-28 13:41:01.936698', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `milkonlineapp_aboutus`
--
ALTER TABLE `milkonlineapp_aboutus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `milkonlineapp_category`
--
ALTER TABLE `milkonlineapp_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `milkonlineapp_product`
--
ALTER TABLE `milkonlineapp_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `MilkonlineApp_produc_category_id_91f7e47d_fk_Milkonlin` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `milkonlineapp_aboutus`
--
ALTER TABLE `milkonlineapp_aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `milkonlineapp_category`
--
ALTER TABLE `milkonlineapp_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `milkonlineapp_product`
--
ALTER TABLE `milkonlineapp_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `milkonlineapp_product`
--
ALTER TABLE `milkonlineapp_product`
  ADD CONSTRAINT `MilkonlineApp_produc_category_id_91f7e47d_fk_Milkonlin` FOREIGN KEY (`category_id`) REFERENCES `milkonlineapp_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
