-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2017 at 11:25 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tlpv_slide`
--
ALTER TABLE `tlpv_slide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tlpv_slide`
--
ALTER TABLE `tlpv_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
