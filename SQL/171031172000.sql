-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2017 at 11:20 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linhyeucun`
--

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_category`
--

CREATE TABLE `tlpv_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `short_description` varchar(300) DEFAULT NULL,
  `long_description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_category`
--

INSERT INTO `tlpv_category` (`id`, `name`, `slug`, `parent_id`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(9, 'Cửa Composite In Nhiệt', 'cua-composite-in-nhiet', 0, 'mô tả ngắn', 'mô tả dài', '2017-10-13 12:10:36', '2017-10-13 16:54:51'),
(11, 'Cửa Composite Sơn PU', 'cua-composite-son-pu', 0, '', '', '2017-10-13 12:12:15', '0000-00-00 00:00:00'),
(12, 'Bảng màu', 'bang-mau', 0, '', '', '2017-10-20 19:54:00', '0000-00-00 00:00:00'),
(13, 'Mẫu thiết kế hoa văn cửa', 'mau-thiet-ke-hoa-van-cua', 0, '', '', '2017-10-21 11:23:31', '0000-00-00 00:00:00'),
(14, 'SMO', 'smo', 13, '', '', '2017-10-21 11:34:12', '0000-00-00 00:00:00'),
(15, 'SMK', 'smk', 13, '', '', '2017-10-23 21:41:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_form`
--

CREATE TABLE `tlpv_form` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text,
  `email` varchar(100) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `message` text,
  `unread` tinyint(4) DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_form`
--

INSERT INTO `tlpv_form` (`id`, `name`, `company`, `phone`, `address`, `email`, `title`, `message`, `unread`, `created_at`) VALUES
(3, 'Phúc', 'VCCorp', '0919209309', '908.A2, Green Stars, 234 Phạm Văn Đồng', 'me@phuc.co', 'test form', 'oke không?', 1, '2017-10-19 16:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_image`
--

CREATE TABLE `tlpv_image` (
  `id` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `file_ext` varchar(4) DEFAULT NULL,
  `file_size` float DEFAULT NULL COMMENT 'in kilobytes',
  `image_width` int(11) NOT NULL,
  `image_height` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_image`
--

INSERT INTO `tlpv_image` (`id`, `file_name`, `alt`, `file_ext`, `file_size`, `image_width`, `image_height`, `created_at`) VALUES
(1, '2z45a65dhc_google-drive.jpg', 'drive', 'jpg', 17.1, 680, 388, '2017-10-14 10:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_login`
--

CREATE TABLE `tlpv_login` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_product`
--

CREATE TABLE `tlpv_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_link` text,
  `price` int(11) NOT NULL,
  `short_description` varchar(300) DEFAULT NULL,
  `long_description` text,
  `stock` tinyint(4) NOT NULL DEFAULT '1',
  `order_num` int(11) NOT NULL DEFAULT '999',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_product`
--

INSERT INTO `tlpv_product` (`id`, `category_id`, `name`, `slug`, `image`, `image_link`, `price`, `short_description`, `long_description`, `stock`, `order_num`, `created_at`, `updated_at`) VALUES
(12, 11, 'SMO-01', 'smo-01', 'SMO-01.jpg', NULL, 0, '', '', 1, 1, '2017-10-13 12:39:45', '2017-10-21 11:21:22'),
(14, 11, 'SMO-05', 'smo-05', 'SMO-05.jpg', NULL, 0, '', '', 1, 2, '2017-10-13 12:41:56', '2017-10-21 11:21:27'),
(15, 11, 'SMO-07 (1)', 'smo-07', 'SMO-07.JPG', NULL, 0, '', '', 1, 4, '2017-10-13 12:45:11', '2017-10-21 11:21:31'),
(16, 11, 'SMO-07 (2)', 'smo-07-2', 'smo-07_(1).jpg', NULL, 0, '', '', 1, 3, '2017-10-13 12:46:41', '2017-10-21 11:21:36'),
(17, 11, 'SMO-09', 'smo-09', 'smo-09.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 12:48:32', '0000-00-00 00:00:00'),
(18, 11, 'SMO-10', 'smo-10', 'SMO-10_(2).jpg', NULL, 0, '', '', 1, 999, '2017-10-13 12:50:13', '0000-00-00 00:00:00'),
(19, 11, 'SMO-11 (1)', 'smo-11', 'smo-11_(5).jpg', NULL, 0, '', '', 1, 999, '2017-10-13 12:51:20', '2017-10-13 12:51:49'),
(20, 11, 'SMO-11 (2)', 'smo-11-2', 'smo-11.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 12:53:37', '0000-00-00 00:00:00'),
(21, 11, 'SMO-13', 'smo-13', 'smo-13.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 12:55:55', '0000-00-00 00:00:00'),
(22, 11, 'SMO-02', 'smo-02', 'smo-02.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 12:59:14', '0000-00-00 00:00:00'),
(23, 11, 'SMO-19', 'smo-19', 'smo-19.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 13:00:31', '0000-00-00 00:00:00'),
(24, 11, 'SMO-20', 'smo-20', 'smo-211.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 13:02:08', '2017-10-13 13:05:38'),
(25, 11, 'SMO-22', 'smo-22', 'smo-22.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 13:03:39', '0000-00-00 00:00:00'),
(27, 11, 'SMO-21', 'smo-21', 'smo-21_(1)1.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 13:07:54', '0000-00-00 00:00:00'),
(28, 11, 'SMO-23', 'smo-23', 'smo-23.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 13:09:07', '0000-00-00 00:00:00'),
(29, 11, 'SMO-25', 'smo-25', 'smo-25.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 13:10:02', '0000-00-00 00:00:00'),
(30, 11, 'SMO-29', 'smo-29', 'smo-292.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 13:11:03', '0000-00-00 00:00:00'),
(31, 9, 'SMK-01', 'smk-01', 'smk-01.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 15:26:34', '2017-10-13 22:39:22'),
(32, 9, 'SMK-02', 'smk-02', 'smk-02.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 15:27:37', '2017-10-13 22:39:40'),
(33, 9, 'SMK-03', 'smk-03', 'smk-03.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 15:28:31', '2017-10-13 22:39:53'),
(34, 9, 'SMK-05', 'smk-05', 'smk-05.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 15:29:20', '2017-10-13 22:40:36'),
(35, 9, 'SMK-06', 'smk-06', 'smk-06.jpg', NULL, 0, '', '', 1, 999, '2017-10-13 15:33:01', '2017-10-13 22:40:27'),
(36, 9, 'SMK-07 (1)', 'smk-07-1', 'smk-07_(1).JPG', NULL, 0, '', '', 1, 999, '2017-10-13 15:33:55', '2017-10-13 22:40:17'),
(37, 9, 'SMK-07 (2)', 'smk-07-2', 'smk-07_(2).jpg', NULL, 0, '', '', 1, 999, '2017-10-13 15:34:48', '2017-10-13 22:40:05'),
(48, 9, 'SMK-08', 'smk-08', 'smk-08.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:11:16', '0000-00-00 00:00:00'),
(49, 9, 'SMK-09', 'smk-09', 'smk-09.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:11:48', '0000-00-00 00:00:00'),
(50, 9, 'SMK-10', 'smk-10', 'smk-10.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:12:18', '0000-00-00 00:00:00'),
(51, 9, 'SMK-11', 'smk-11', 'smk-11.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:13:06', '0000-00-00 00:00:00'),
(52, 9, 'SMK-07 (3)', 'smk-07-3', 'smk-07_(3).jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:14:13', '0000-00-00 00:00:00'),
(53, 9, 'SMK-12 (11)', 'smk-12-11', 'smk-12_(1).jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:15:56', '0000-00-00 00:00:00'),
(54, 9, 'SMK-12 (2)', 'smk-12-2', 'smk-12_(2).jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:16:31', '0000-00-00 00:00:00'),
(55, 9, 'SMK-13', 'smk-13', 'smk-13.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:17:01', '2017-10-14 08:18:26'),
(57, 9, 'SMK-15', 'smk-15', 'smk-15.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:18:59', '0000-00-00 00:00:00'),
(58, 9, 'SMK-16 (1)', 'smk-16', 'smk-16.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:20:14', '2017-10-14 08:21:16'),
(59, 9, 'SMK-16 (2)', 'smk-16-2', 'smk-16_(2).jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:22:41', '0000-00-00 00:00:00'),
(60, 9, 'SMK-17 (1)', 'smk-17-1', 'smk-17_(1).jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:23:51', '0000-00-00 00:00:00'),
(61, 9, 'SMK-17 (2)', 'smk-17-2', 'SMK-17_(2).jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:25:26', '0000-00-00 00:00:00'),
(63, 9, 'SMK-18', 'smk-18', 'smk-18.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:28:00', '0000-00-00 00:00:00'),
(64, 9, 'SMK-19', 'smk-19', 'smk-19.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:29:28', '0000-00-00 00:00:00'),
(65, 9, 'SMK-20', 'smk-20', 'smk-20.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:30:01', '0000-00-00 00:00:00'),
(66, 9, 'SMK-21', 'smk-21', 'smk-21.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:31:16', '0000-00-00 00:00:00'),
(67, 9, 'SMK-22', 'smk-22', 'smk-22.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:31:57', '0000-00-00 00:00:00'),
(68, 9, 'SMK-23', 'smk-23', 'smk-23.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:32:59', '0000-00-00 00:00:00'),
(69, 9, 'SMK-25', 'smk-25', '20171014_083815.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:41:31', '2017-10-14 08:41:57'),
(70, 9, 'SMK-26', 'smk-26', 'smk-26.jpg', NULL, 0, '', '', 1, 999, '2017-10-14 08:43:54', '0000-00-00 00:00:00'),
(71, 12, 'G01', 'g01', 'G01.png', NULL, 0, '', '', 1, 999, '2017-10-20 19:56:24', '0000-00-00 00:00:00'),
(72, 12, 'G02', 'g02', 'G02.jpg', NULL, 0, '', '', 1, 999, '2017-10-20 19:57:19', '0000-00-00 00:00:00'),
(73, 12, 'G03', 'g03', 'G03.jpg', NULL, 0, '', '', 1, 999, '2017-10-20 19:58:14', '0000-00-00 00:00:00'),
(74, 12, 'G04', 'g04', 'G04.png', NULL, 0, '', '', 1, 999, '2017-10-20 19:59:22', '0000-00-00 00:00:00'),
(75, 12, 'G05', 'g05', 'G05.jpg', NULL, 0, '', '', 1, 999, '2017-10-20 20:00:14', '0000-00-00 00:00:00'),
(76, 12, 'HP01', 'hp01', 'HP01.jpg', NULL, 0, '', '', 1, 999, '2017-10-20 20:01:00', '0000-00-00 00:00:00'),
(77, 12, 'HP02', 'hp02', 'HP02.jpg', NULL, 0, '', '', 1, 999, '2017-10-20 20:01:43', '0000-00-00 00:00:00'),
(78, 12, 'P01', 'p01', 'P01.jpg', NULL, 0, '', '', 1, 999, '2017-10-20 20:02:18', '0000-00-00 00:00:00'),
(79, 12, 'P02', 'p02', 'P02.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:00:16', '0000-00-00 00:00:00'),
(80, 12, 'P03', 'p03', 'P03.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:01:57', '0000-00-00 00:00:00'),
(81, 12, 'P04', 'p04', 'P04.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:03:19', '0000-00-00 00:00:00'),
(82, 12, 'P05', 'p05', 'P05.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:04:14', '0000-00-00 00:00:00'),
(83, 12, 'H01', 'h01', 'H01.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:05:15', '0000-00-00 00:00:00'),
(84, 12, 'H02', 'h02', 'H02_(2).png', NULL, 0, '', '', 1, 999, '2017-10-21 11:07:04', '0000-00-00 00:00:00'),
(85, 12, 'H03', 'h03', 'H03.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:09:04', '0000-00-00 00:00:00'),
(86, 12, 'H04', 'h04', 'H04.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:09:14', '0000-00-00 00:00:00'),
(87, 12, 'H05', 'h05', 'H05.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:09:24', '0000-00-00 00:00:00'),
(88, 12, 'H06', 'h06', 'H06.jpg', NULL, 0, '', '', 1, 999, '2017-10-21 11:09:40', '0000-00-00 00:00:00'),
(89, 12, 'H07', 'h07', 'H07.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:10:28', '0000-00-00 00:00:00'),
(90, 12, 'H08', 'h08', 'H08.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:12:08', '0000-00-00 00:00:00'),
(91, 12, 'H09', 'h09', 'H09.png', NULL, 0, '', '', 1, 999, '2017-10-21 11:13:04', '0000-00-00 00:00:00'),
(92, 12, 'H10', 'h10', 'H10.jpg', NULL, 0, '', '', 1, 999, '2017-10-21 11:17:02', '2017-10-21 11:17:25'),
(93, 14, 'SMO-01', 'smo-01', 'SMO-011.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:46:53', '0000-00-00 00:00:00'),
(94, 14, 'SMO-02', 'smo-02', 'SMO-02.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:47:03', '0000-00-00 00:00:00'),
(95, 14, 'SMO-03', 'smo-03', 'SMO-03.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:47:27', '0000-00-00 00:00:00'),
(96, 14, 'SMO-05', 'smo-05', 'SMO-051.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:47:38', '0000-00-00 00:00:00'),
(97, 14, 'SMO-06', 'smo-06', 'SMO-06.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:48:02', '0000-00-00 00:00:00'),
(98, 14, 'SMO-07', 'smo-07', 'SMO-07.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:48:40', '0000-00-00 00:00:00'),
(99, 14, 'SMO-08', 'smo-08', 'SMO-08.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:48:51', '0000-00-00 00:00:00'),
(100, 14, 'SMO-08', 'smo-08', 'SMO-081.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:48:51', '0000-00-00 00:00:00'),
(101, 14, 'SMO-09', 'smo-09', 'SMO-09.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:49:00', '0000-00-00 00:00:00'),
(102, 14, 'SMO-10', 'smo-10', 'SMO-10.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:49:49', '0000-00-00 00:00:00'),
(103, 14, 'SMO-11', 'smo-11', 'SMO-11.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:50:07', '0000-00-00 00:00:00'),
(104, 14, 'SMO-12', 'smo-12', 'SMO-12.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:50:27', '0000-00-00 00:00:00'),
(105, 14, 'SMO-13', 'smo-13', 'SMO-13.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:50:37', '0000-00-00 00:00:00'),
(106, 14, 'SMO-15', 'smo-15', 'SMO-15.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:50:45', '0000-00-00 00:00:00'),
(107, 14, 'SMO-16', 'smo-16', 'SMO-16.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:51:00', '0000-00-00 00:00:00'),
(108, 14, 'SMO-17', 'smo-17', 'SMO-17.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:51:54', '0000-00-00 00:00:00'),
(109, 14, 'SMO-18', 'smo-18', 'SMO-18.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:52:04', '0000-00-00 00:00:00'),
(110, 14, 'SMO-19', 'smo-19', 'SMO-19.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:52:13', '0000-00-00 00:00:00'),
(111, 14, 'SMO-20', 'smo-20', 'SMO-20.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:52:23', '0000-00-00 00:00:00'),
(112, 14, 'SMO-21', 'smo-21', 'SMO-21.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:52:32', '0000-00-00 00:00:00'),
(113, 14, 'SMO-23', 'smo-23', 'SMO-22.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:52:42', '0000-00-00 00:00:00'),
(114, 14, 'SMO-25', 'smo-25', 'SMO-251.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:52:42', '2017-10-23 20:53:55'),
(115, 14, 'SMO-26', 'smo-26', 'SMO-26.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:54:15', '0000-00-00 00:00:00'),
(116, 14, 'SMO-27', 'smo-27', 'SMO-27.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:54:27', '0000-00-00 00:00:00'),
(117, 14, 'SMO-28', 'smo-28', 'SMO-28.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:54:36', '0000-00-00 00:00:00'),
(119, 14, 'SMO-29', 'smo-29', 'SMO-29.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:55:05', '0000-00-00 00:00:00'),
(120, 14, 'SMO-30', 'smo-30', 'SMO-30.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:55:19', '0000-00-00 00:00:00'),
(121, 14, 'SMO-31', 'smo-31', 'SMO-31.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:55:31', '0000-00-00 00:00:00'),
(122, 14, 'SMO-32', 'smo-32', 'SMO-32.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:55:42', '0000-00-00 00:00:00'),
(123, 14, 'SMO-33', 'smo-33', 'SMO-33.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:55:51', '0000-00-00 00:00:00'),
(124, 14, 'SMO-35', 'smo-35', 'SMO-35.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:56:02', '0000-00-00 00:00:00'),
(125, 14, 'SMO-36', 'smo-36', 'SMO-36.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:56:21', '0000-00-00 00:00:00'),
(126, 14, 'SMO-37', 'smo-37', 'SMO-37.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:57:58', '0000-00-00 00:00:00'),
(127, 14, 'SMO-38', 'smo-38', 'SMO-38.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:58:22', '0000-00-00 00:00:00'),
(128, 14, 'SMO-39', 'smo-39', 'SMO-39.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:58:37', '0000-00-00 00:00:00'),
(129, 14, 'SMO-40', 'smo-40', 'SMO-40.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:58:53', '0000-00-00 00:00:00'),
(130, 14, 'SMO-41', 'smo-41', 'SMO-41.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:59:07', '0000-00-00 00:00:00'),
(131, 14, 'SMO-42', 'smo-42', 'SMO-42.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:59:21', '0000-00-00 00:00:00'),
(132, 14, 'SMO-43', 'smo-43', 'SMO-43.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:59:35', '0000-00-00 00:00:00'),
(133, 14, 'SMO-45', 'smo-45', 'SMO-45.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 20:59:49', '0000-00-00 00:00:00'),
(134, 15, 'SMK-01', 'smk-01', 'SMK-01.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:42:19', '0000-00-00 00:00:00'),
(135, 15, 'SMK-02', 'smk-02', 'SMK-02.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:42:29', '0000-00-00 00:00:00'),
(136, 15, 'SMK-03', 'smk-03', 'SMK-03.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:49:42', '0000-00-00 00:00:00'),
(137, 15, 'SMK-04', 'smk-04', 'SMK-04.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:50:10', '0000-00-00 00:00:00'),
(138, 15, 'SMK-05', 'smk-05', 'SMK-05.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:50:23', '0000-00-00 00:00:00'),
(139, 15, 'SMK-06', 'smk-06', 'SMK-06.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:50:47', '0000-00-00 00:00:00'),
(140, 15, 'SMK-07', 'smk-07', 'SMK-07.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:51:33', '0000-00-00 00:00:00'),
(141, 15, 'SMK-08', 'smk-08', 'SMK-08.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:51:42', '0000-00-00 00:00:00'),
(142, 15, 'SMK-09', 'smk-09', 'SMK-09.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:52:04', '0000-00-00 00:00:00'),
(143, 15, 'SMK-10', 'smk-10', 'SMK-10.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:52:31', '0000-00-00 00:00:00'),
(144, 15, 'SMK-11', 'smk-11', 'SMK-11.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:52:53', '0000-00-00 00:00:00'),
(145, 15, 'SMK-12', 'smk-12', 'SMK-12.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:53:05', '0000-00-00 00:00:00'),
(146, 15, 'SMK-13', 'smk-13', 'SMK-13.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:53:15', '0000-00-00 00:00:00'),
(147, 15, 'SMK-15', 'smk-15', 'SMK-15.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:53:25', '0000-00-00 00:00:00'),
(148, 15, 'SMK-16', 'smk-16', 'SMK-16.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:53:40', '0000-00-00 00:00:00'),
(149, 15, 'SMK-17', 'smk-17', 'SMK-17.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:54:02', '0000-00-00 00:00:00'),
(150, 15, 'SMK-18', 'smk-18', 'SMK-18.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:54:19', '0000-00-00 00:00:00'),
(151, 15, 'SMK-19', 'smk-19', 'SMK-19.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:54:34', '0000-00-00 00:00:00'),
(152, 15, 'SMK-20', 'smk-20', 'SMK-20.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:54:42', '0000-00-00 00:00:00'),
(153, 15, 'SMK-21', 'smk-21', 'SMK-21.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:54:50', '0000-00-00 00:00:00'),
(154, 15, 'SMK-22', 'smk-22', 'SMK-22.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:54:59', '0000-00-00 00:00:00'),
(155, 15, 'SMK-23', 'smk-23', 'SMK-23.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:55:07', '0000-00-00 00:00:00'),
(156, 15, 'SMK-25', 'smk-25', 'SMK-25.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:55:16', '0000-00-00 00:00:00'),
(157, 15, 'SMK-26', 'smk-26', 'SMK-26.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:57:30', '0000-00-00 00:00:00'),
(158, 15, 'SMK-27', 'smk-27', 'SMK-27.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:57:41', '0000-00-00 00:00:00'),
(159, 15, 'SMK-28', 'smk-28', 'SMK-28.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:57:50', '0000-00-00 00:00:00'),
(160, 15, 'SMK-29', 'smk-29', 'SMK-29.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:58:00', '0000-00-00 00:00:00'),
(161, 15, 'SMK-30', 'smk-30', 'SMK-30.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:58:17', '0000-00-00 00:00:00'),
(162, 15, 'SMK-31', 'smk-31', 'SMK-31.jpg', NULL, 0, '', '', 1, 999, '2017-10-23 21:58:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_slide`
--

CREATE TABLE `tlpv_slide` (
  `id` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `file_ext` varchar(4) DEFAULT NULL,
  `file_size` float DEFAULT NULL COMMENT 'in kilobytes',
  `image_width` int(11) NOT NULL,
  `image_height` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_slide`
--

INSERT INTO `tlpv_slide` (`id`, `file_name`, `alt`, `file_ext`, `file_size`, `image_width`, `image_height`, `created_at`) VALUES
(2, '1600x700-1.jpg', 'Slide Cửa gỗ nhựa Hoàng Hải 1', 'jpg', 136.41, 1600, 700, '2017-10-31 14:35:44'),
(3, '1600x700-2.jpg', 'Slide Cửa gỗ nhựa Hoàng Hải 2', 'jpg', 182.27, 1600, 700, '2017-10-31 14:36:40'),
(4, '1600x700-3.jpg', 'Slide Cửa gỗ nhựa Hoàng Hải 3', 'jpg', 574.88, 1600, 700, '2017-10-31 14:36:49'),
(5, '1600x700-4.jpg', 'Slide Cửa gỗ nhựa Hoàng Hải 4', 'jpg', 340.87, 1600, 700, '2017-10-31 14:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_user`
--

CREATE TABLE `tlpv_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_user`
--

INSERT INTO `tlpv_user` (`id`, `username`, `name`, `password`, `created_at`) VALUES
(1, 'tiennam', 'Nguyen Tien Nam', '$2y$10$9PeheBX4SPVHq22el3m3NureKz0Jela4pL9ZJTzlm4w/nB2UBXTgy', '2017-09-27 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tlpv_category`
--
ALTER TABLE `tlpv_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlpv_form`
--
ALTER TABLE `tlpv_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlpv_image`
--
ALTER TABLE `tlpv_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlpv_login`
--
ALTER TABLE `tlpv_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `tlpv_product`
--
ALTER TABLE `tlpv_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlpv_slide`
--
ALTER TABLE `tlpv_slide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tlpv_category`
--
ALTER TABLE `tlpv_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tlpv_form`
--
ALTER TABLE `tlpv_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tlpv_image`
--
ALTER TABLE `tlpv_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tlpv_login`
--
ALTER TABLE `tlpv_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tlpv_product`
--
ALTER TABLE `tlpv_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `tlpv_slide`
--
ALTER TABLE `tlpv_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
