-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2017 at 06:37 AM
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
(10, 'Cửa Composite Sơn PU - Vân Nổi', 'cua-composite-son-pu-van-noi', 0, '', '', '2017-10-13 12:11:24', '0000-00-00 00:00:00'),
(11, 'Cửa Composite Sơn PU', 'cua-composite-son-pu', 0, '', '', '2017-10-13 12:12:15', '0000-00-00 00:00:00');

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

--
-- Dumping data for table `tlpv_login`
--

INSERT INTO `tlpv_login` (`id`, `token`, `created_at`, `expired_at`, `data`) VALUES
(44, 'dbc0e17032b48bec0012064b7b356dc4', '2017-09-28 16:30:48', '2017-09-28 16:31:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(45, '257359e06e49ce320f4b6cce0a824ae0', '2017-09-28 16:39:05', '2017-09-28 16:41:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(46, 'ff8f6d1a7437661ca726dd742b57ce60', '2017-09-28 16:44:31', '2017-09-28 20:44:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(47, 'e9ac7535d813a82827d7053a75279524', '2017-09-28 23:11:05', '2017-09-29 03:11:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(48, 'd83550c7233475c467e1809655bc81bb', '2017-09-29 11:38:04', '2017-09-29 15:38:04', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(49, '995c5ee0b30b00df4bc59c7d533c03f2', '2017-10-01 16:25:25', '2017-10-01 18:20:51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(50, '772c795b61e95e9935525d91db57dabd', '2017-10-01 18:20:53', '2017-10-01 22:20:53', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(51, '291f90fa0e177d3f678ed9a02584091a', '2017-10-01 22:42:05', '2017-10-02 02:42:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(52, '4d6ed41c862f2b91ba0ae429fbb500db', '2017-10-04 12:40:22', '2017-10-04 16:40:22', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(53, '4196bf40935854a4d75c6ddf1a2bb7a6', '2017-10-05 01:36:27', '2017-10-05 05:36:27', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(54, '224586538e43f86b0bce8ed51244d02a', '2017-10-07 23:13:59', '2017-10-08 03:13:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(55, 'f99c45f37bd18c91157e0e1d9f9f0dc8', '2017-10-08 19:00:59', '2017-10-08 23:00:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(56, '27de5a5cd3e767c9c319f9b4127f11e1', '2017-10-09 09:15:42', '2017-10-09 13:15:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(57, '2027e47d004c43814c97eedd65686606', '2017-10-14 09:38:26', '2017-10-14 13:38:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36');

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
  `order_num` int(11) NOT NULL DEFAULT '999',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_product`
--

INSERT INTO `tlpv_product` (`id`, `category_id`, `name`, `slug`, `image`, `image_link`, `price`, `short_description`, `long_description`, `order_num`, `created_at`, `updated_at`) VALUES
(12, 11, 'SMO-01', 'smo-01', 'SMO-01.jpg', NULL, 0, '', '', 2, '2017-10-13 12:39:45', '2017-10-14 09:47:05'),
(14, 11, 'SMO-05', 'smo-05', 'SMO-05.jpg', NULL, 0, '', '', 999, '2017-10-13 12:41:56', '0000-00-00 00:00:00'),
(15, 11, 'SMO-07 (1)', 'smo-07', 'SMO-07.JPG', NULL, 0, '', '', 999, '2017-10-13 12:45:11', '2017-10-13 12:46:56'),
(16, 11, 'SMO-07 (2)', 'smo-07-2', 'smo-07_(1).jpg', NULL, 0, '', '', 999, '2017-10-13 12:46:41', '0000-00-00 00:00:00'),
(17, 11, 'SMO-09', 'smo-09', 'smo-09.jpg', NULL, 0, '', '', 999, '2017-10-13 12:48:32', '0000-00-00 00:00:00'),
(18, 11, 'SMO-10', 'smo-10', 'SMO-10_(2).jpg', NULL, 0, '', '', 999, '2017-10-13 12:50:13', '0000-00-00 00:00:00'),
(19, 11, 'SMO-11 (1)', 'smo-11', 'smo-11_(5).jpg', NULL, 0, '', '', 999, '2017-10-13 12:51:20', '2017-10-13 12:51:49'),
(20, 11, 'SMO-11 (2)', 'smo-11-2', 'smo-11.jpg', NULL, 0, '', '', 999, '2017-10-13 12:53:37', '0000-00-00 00:00:00'),
(21, 11, 'SMO-13', 'smo-13', 'smo-13.jpg', NULL, 0, '', '', 999, '2017-10-13 12:55:55', '0000-00-00 00:00:00'),
(22, 11, 'SMO-02', 'smo-02', 'smo-02.jpg', NULL, 0, '', '', 999, '2017-10-13 12:59:14', '0000-00-00 00:00:00'),
(23, 11, 'SMO-19', 'smo-19', 'smo-19.jpg', NULL, 0, '', '', 999, '2017-10-13 13:00:31', '0000-00-00 00:00:00'),
(24, 11, 'SMO-20', 'smo-20', 'smo-211.jpg', NULL, 0, '', '', 999, '2017-10-13 13:02:08', '2017-10-13 13:05:38'),
(25, 11, 'SMO-22', 'smo-22', 'smo-22.jpg', NULL, 0, '', '', 999, '2017-10-13 13:03:39', '0000-00-00 00:00:00'),
(27, 11, 'SMO-21', 'smo-21', 'smo-21_(1)1.jpg', NULL, 0, '', '', 999, '2017-10-13 13:07:54', '0000-00-00 00:00:00'),
(28, 11, 'SMO-23', 'smo-23', 'smo-23.jpg', NULL, 0, '', '', 999, '2017-10-13 13:09:07', '0000-00-00 00:00:00'),
(29, 11, 'SMO-25', 'smo-25', 'smo-25.jpg', NULL, 0, '', '', 999, '2017-10-13 13:10:02', '0000-00-00 00:00:00'),
(30, 11, 'SMO-29', 'smo-29', 'smo-292.jpg', NULL, 0, '', '', 999, '2017-10-13 13:11:03', '0000-00-00 00:00:00'),
(31, 9, 'SMK-01', 'smk-01', 'smk-01.jpg', NULL, 0, '', '', 999, '2017-10-13 15:26:34', '2017-10-13 22:39:22'),
(32, 9, 'SMK-02', 'smk-02', 'smk-02.jpg', NULL, 0, '', '', 999, '2017-10-13 15:27:37', '2017-10-13 22:39:40'),
(33, 9, 'SMK-03', 'smk-03', 'smk-03.jpg', NULL, 0, '', '', 999, '2017-10-13 15:28:31', '2017-10-13 22:39:53'),
(34, 9, 'SMK-05', 'smk-05', 'smk-05.jpg', NULL, 0, '', '', 999, '2017-10-13 15:29:20', '2017-10-13 22:40:36'),
(35, 9, 'SMK-06', 'smk-06', 'smk-06.jpg', NULL, 0, '', '', 999, '2017-10-13 15:33:01', '2017-10-13 22:40:27'),
(36, 9, 'SMK-07 (1)', 'smk-07-1', 'smk-07_(1).JPG', NULL, 0, '', '', 999, '2017-10-13 15:33:55', '2017-10-13 22:40:17'),
(37, 9, 'SMK-07 (2)', 'smk-07-2', 'smk-07_(2).jpg', NULL, 0, '', '', 999, '2017-10-13 15:34:48', '2017-10-13 22:40:05'),
(48, 9, 'SMK-08', 'smk-08', 'smk-08.jpg', NULL, 0, '', '', 999, '2017-10-14 08:11:16', '0000-00-00 00:00:00'),
(49, 9, 'SMK-09', 'smk-09', 'smk-09.jpg', NULL, 0, '', '', 999, '2017-10-14 08:11:48', '0000-00-00 00:00:00'),
(50, 9, 'SMK-10', 'smk-10', 'smk-10.jpg', NULL, 0, '', '', 999, '2017-10-14 08:12:18', '0000-00-00 00:00:00'),
(51, 9, 'SMK-11', 'smk-11', 'smk-11.jpg', NULL, 0, '', '', 999, '2017-10-14 08:13:06', '0000-00-00 00:00:00'),
(52, 9, 'SMK-07 (3)', 'smk-07-3', 'smk-07_(3).jpg', NULL, 0, '', '', 999, '2017-10-14 08:14:13', '0000-00-00 00:00:00'),
(53, 9, 'SMK-12 (11)', 'smk-12-11', 'smk-12_(1).jpg', NULL, 0, '', '', 999, '2017-10-14 08:15:56', '0000-00-00 00:00:00'),
(54, 9, 'SMK-12 (2)', 'smk-12-2', 'smk-12_(2).jpg', NULL, 0, '', '', 999, '2017-10-14 08:16:31', '0000-00-00 00:00:00'),
(55, 9, 'SMK-13', 'smk-13', 'smk-13.jpg', NULL, 0, '', '', 999, '2017-10-14 08:17:01', '2017-10-14 08:18:26'),
(57, 9, 'SMK-15', 'smk-15', 'smk-15.jpg', NULL, 0, '', '', 999, '2017-10-14 08:18:59', '0000-00-00 00:00:00'),
(58, 9, 'SMK-16 (1)', 'smk-16', 'smk-16.jpg', NULL, 0, '', '', 999, '2017-10-14 08:20:14', '2017-10-14 08:21:16'),
(59, 9, 'SMK-16 (2)', 'smk-16-2', 'smk-16_(2).jpg', NULL, 0, '', '', 999, '2017-10-14 08:22:41', '0000-00-00 00:00:00'),
(60, 9, 'SMK-17 (1)', 'smk-17-1', 'smk-17_(1).jpg', NULL, 0, '', '', 999, '2017-10-14 08:23:51', '0000-00-00 00:00:00'),
(61, 9, 'SMK-17 (2)', 'smk-17-2', 'SMK-17_(2).jpg', NULL, 0, '', '', 999, '2017-10-14 08:25:26', '0000-00-00 00:00:00'),
(63, 9, 'SMK-18', 'smk-18', 'smk-18.jpg', NULL, 0, '', '', 999, '2017-10-14 08:28:00', '0000-00-00 00:00:00'),
(64, 9, 'SMK-19', 'smk-19', 'smk-19.jpg', NULL, 0, '', '', 999, '2017-10-14 08:29:28', '0000-00-00 00:00:00'),
(65, 9, 'SMK-20', 'smk-20', 'smk-20.jpg', NULL, 0, '', '', 999, '2017-10-14 08:30:01', '0000-00-00 00:00:00'),
(66, 9, 'SMK-21', 'smk-21', 'smk-21.jpg', NULL, 0, '', '', 999, '2017-10-14 08:31:16', '0000-00-00 00:00:00'),
(67, 9, 'SMK-22', 'smk-22', 'smk-22.jpg', NULL, 0, '', '', 999, '2017-10-14 08:31:57', '0000-00-00 00:00:00'),
(68, 9, 'SMK-23', 'smk-23', 'smk-23.jpg', NULL, 0, '', '', 999, '2017-10-14 08:32:59', '0000-00-00 00:00:00'),
(69, 9, 'SMK-25', 'smk-25', '20171014_083815.jpg', NULL, 0, '', '', 999, '2017-10-14 08:41:31', '2017-10-14 08:41:57'),
(70, 9, 'SMK-26', 'smk-26', 'smk-26.jpg', NULL, 0, '', '', 999, '2017-10-14 08:43:54', '0000-00-00 00:00:00');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tlpv_category`
--
ALTER TABLE `tlpv_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tlpv_form`
--
ALTER TABLE `tlpv_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tlpv_image`
--
ALTER TABLE `tlpv_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tlpv_login`
--
ALTER TABLE `tlpv_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `tlpv_product`
--
ALTER TABLE `tlpv_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;