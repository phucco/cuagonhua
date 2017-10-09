-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2017 at 11:42 AM
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
(1, 'Danh mục lớn 1', 'danh-muc-1', 0, 'Mô tả ngắn hơn', 'Mô tả dài hơn', '2017-09-28 11:00:00', '2017-10-01 16:50:35'),
(5, 'hoeoelo', 'hoeoelo', 1, 'ngắn', 'dài hơn', '2017-10-01 19:53:05', '2017-10-01 19:53:05'),
(6, 'danh mục lớn 2', 'danh-muc-lon-2', 0, 'qư4frqw', 'èewr', '2017-10-08 19:43:14', '2017-10-08 19:43:14'),
(7, 'danh mục nhỏ 2', 'danh-muc-nho-2', 1, 'q23r', 'qwefwe', '2017-10-08 19:43:27', '2017-10-08 19:43:27'),
(8, 'danh mục nhỏ xxx', 'danh-muc-nho-xxx', 6, 'qửerqwe', 'rqwerqwer', '2017-10-08 19:43:39', '2017-10-08 19:43:39');

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
(1, 'Phúc', 'VC', '09930909', 'PVĐ', 'me@psroih', 'tiêu đề mail', 'nội dung', 1, '2017-10-02 00:00:00'),
(2, 'Phúc', '', '0949400245', '234 Pham Van Dong', 'hp9570@gmail.com', 'tieu de', 'noi dung', 1, '2017-10-04 12:42:35');

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
(51, '291f90fa0e177d3f678ed9a02584091a', '2017-10-01 22:42:05', '2017-10-02 02:42:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(52, '4d6ed41c862f2b91ba0ae429fbb500db', '2017-10-04 12:40:22', '2017-10-04 16:40:22', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(53, '4196bf40935854a4d75c6ddf1a2bb7a6', '2017-10-05 01:36:27', '2017-10-05 05:36:27', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(54, '224586538e43f86b0bce8ed51244d02a', '2017-10-07 23:13:59', '2017-10-08 03:13:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(55, 'f99c45f37bd18c91157e0e1d9f9f0dc8', '2017-10-08 19:00:59', '2017-10-08 23:00:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36'),
(56, '27de5a5cd3e767c9c319f9b4127f11e1', '2017-10-09 09:15:42', '2017-10-09 13:15:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36');

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
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_product`
--

INSERT INTO `tlpv_product` (`id`, `category_id`, `name`, `slug`, `image`, `image_link`, `price`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cửa gỗ Tàu 2', 'cua-go-tau-2', '704852-478e0d1185ed730fc41b874b00066270.jpg', 'link.jpg, link2.png', 0, 'Cửa dễ hỏng', 'Mô tả dài cửa gỗ Tàu', '2017-09-28 08:00:00', '2017-10-01 18:18:30'),
(2, 1, 'Cửa gỗ Tàu 2', 'cua-go-tau-2', '704852-478e0d1185ed730fc41b874b00066270.jpg', 'link.jpg, link2.png', 0, 'Cửa dễ hỏng', 'Mô tả dài cửa gỗ Tàu', '2017-09-28 08:00:00', '2017-10-01 18:18:30'),
(3, 1, 'cửa tàu', 'cua-tau', '704852-478e0d1185ed730fc41b874b00066270.jpg', NULL, 0, 'gsergowerij', 'weorvweovnw erwergweornvwergjwoerjwervsdnflksefg ưer', '2017-10-01 19:53:51', '2017-10-01 19:57:31'),
(5, 1, 'Cửa gỗ Tàu 2', 'cua-go-tau-2', '704852-478e0d1185ed730fc41b874b00066270.jpg', 'link.jpg, link2.png', 0, 'Cửa dễ hỏng', 'Mô tả dài cửa gỗ Tàu', '2017-09-28 08:00:00', '2017-10-01 18:18:30'),
(6, 1, 'Cửa gỗ Tàu 2', 'cua-go-tau-2', '704852-478e0d1185ed730fc41b874b00066270.jpg', 'link.jpg, link2.png', 0, 'Cửa dễ hỏng', 'Mô tả dài cửa gỗ Tàu', '2017-09-28 08:00:00', '2017-10-01 18:18:30'),
(8, 8, 'sản phẩm', 'san-pham', '284aa852e843d836668476df306d5676.jpg', NULL, 0, 'ngắn', 'dài', '2017-10-09 09:19:03', '0000-00-00 00:00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tlpv_form`
--
ALTER TABLE `tlpv_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tlpv_image`
--
ALTER TABLE `tlpv_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tlpv_login`
--
ALTER TABLE `tlpv_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `tlpv_product`
--
ALTER TABLE `tlpv_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
