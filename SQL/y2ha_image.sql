-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 03:02 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myvn`
--

-- --------------------------------------------------------

--
-- Table structure for table `y2ha_image`
--

CREATE TABLE `y2ha_image` (
  `id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `photographer_id` int(11) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `file_ext` varchar(4) DEFAULT NULL,
  `file_size` float DEFAULT NULL COMMENT 'in kilobytes',
  `image_width` int(11) NOT NULL,
  `image_height` int(11) NOT NULL,
  `count_view` int(11) DEFAULT '0',
  `count_comment` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `y2ha_image`
--

INSERT INTO `y2ha_image` (`id`, `model_id`, `photographer_id`, `alt`, `code`, `file_ext`, `file_size`, `image_width`, `image_height`, `count_view`, `count_comment`, `created`, `updated`) VALUES
(1, 18, 11, 'quynh-anh-shyn', '11bd0ff533', 'jpg', 373.51, 1502, 1000, 0, 0, '2017-03-19 09:56:51', '2017-03-19 10:17:32'),
(2, 2, 12, 'an-japan', '7f349530eb', 'jpg', 77.99, 960, 638, 0, 0, '2017-03-19 10:21:08', NULL),
(3, 2, 1, 'an-japan', '3c252fa14f', 'jpg', 378.87, 1600, 1067, 0, 0, '2017-03-19 10:40:11', NULL),
(4, 2, 1, 'an-japan', '391c5f953a', 'jpg', 177.92, 1600, 1067, 0, 0, '2017-03-19 10:40:28', NULL),
(5, 2, 1, 'an-japan', 'dda8019dec', 'jpg', 127.5, 800, 1200, 0, 0, '2017-03-19 10:40:28', NULL),
(6, 16, 1, 'ngoc-trinh', '788292a2cd', 'jpg', 336.47, 600, 900, 0, 0, '2017-03-19 10:42:38', NULL),
(7, 16, 1, 'ngoc-trinh', 'e26fef09ea', 'jpg', 388.67, 600, 900, 0, 0, '2017-03-19 10:42:38', NULL),
(8, 1, 1, 'unknown', 'd9812f756d', 'jpg', 85.97, 1024, 684, 0, 0, '2017-03-19 10:43:22', NULL),
(9, 14, 9, 'nang-ut-ong-tre', 'ca9541826e', 'jpg', 677.33, 2048, 1365, 0, 0, '2017-03-19 11:01:41', NULL),
(10, 14, 9, 'nang-ut-ong-tre', '6760b95768', 'jpg', 2249.54, 2048, 1308, 0, 0, '2017-03-19 11:05:42', NULL),
(11, 8, 1, 'kieu-trinh', 'ddd65013f9', 'jpg', 815.06, 2048, 1365, 0, 0, '2017-03-20 10:42:34', NULL),
(12, 1, 1, 'unknown', '26ddd45b02', 'jpg', 476.72, 2048, 1365, 0, 0, '2017-03-20 10:47:50', NULL),
(13, 12, 1, 'midu', '149815eb97', 'jpg', 153.12, 1200, 800, 0, 0, '2017-03-20 10:57:54', NULL),
(14, 1, 9, 'unknown', '177b118df5', 'jpg', 451.84, 2048, 1365, 0, 0, '2017-03-20 10:58:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `y2ha_image`
--
ALTER TABLE `y2ha_image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `y2ha_image`
--
ALTER TABLE `y2ha_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
