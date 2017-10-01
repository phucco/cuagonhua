-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 08:31 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

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
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_category`
--

INSERT INTO `tlpv_category` (`id`, `name`, `slug`, `parent_id`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 'Danh mục lớn 1', 'danh-muc-1', 0, 'Mô tả ngắn hơn', 'Mô tả dài hơn', '2017-09-28 11:00:00', '2017-10-01 16:50:35'),
(5, 'hoeoelo', 'hoeoelo', 1, 'ngắn', 'dài hơn', '2017-10-01 19:53:05', '2017-10-01 19:53:05');

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
(51, '291f90fa0e177d3f678ed9a02584091a', '2017-10-01 22:42:05', '2017-10-02 02:42:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36');

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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_product`
--

INSERT INTO `tlpv_product` (`id`, `category_id`, `name`, `slug`, `image`, `image_link`, `price`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cửa gỗ Tàu 2', 'cua-go-tau-2', 'link.jpg', 'link.jpg, link2.png', 0, 'Cửa dễ hỏng', 'Mô tả dài cửa gỗ Tàu', '2017-09-28 08:00:00', '2017-10-01 18:18:30'),
(3, 1, 'cửa tàu', 'cua-tau', NULL, NULL, 0, 'gsergowerij', 'weorvweovnw erwergweornvwergjwoerjwervsdnflksefg ưer', '2017-10-01 19:53:51', '2017-10-01 19:57:31');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tlpv_form`
--
ALTER TABLE `tlpv_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tlpv_image`
--
ALTER TABLE `tlpv_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tlpv_login`
--
ALTER TABLE `tlpv_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `tlpv_product`
--
ALTER TABLE `tlpv_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
