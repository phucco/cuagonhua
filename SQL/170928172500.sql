-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2017 at 12:25 PM
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
(46, 'ff8f6d1a7437661ca726dd742b57ce60', '2017-09-28 16:44:31', '2017-09-28 20:44:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_product`
--

CREATE TABLE `tlpv_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- AUTO_INCREMENT for table `tlpv_login`
--
ALTER TABLE `tlpv_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tlpv_product`
--
ALTER TABLE `tlpv_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
