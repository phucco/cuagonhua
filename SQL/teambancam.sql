-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2017 at 03:16 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teambancam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_conversation`
--

CREATE TABLE `tlpv_conversation` (
  `id` int(11) NOT NULL,
  `user_ids` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_conversation`
--

INSERT INTO `tlpv_conversation` (`id`, `user_ids`, `name`, `created_at`) VALUES
(1, '1', 'first conversation', '2017-08-08 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_file`
--

CREATE TABLE `tlpv_file` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(32) NOT NULL,
  `file_ext` varchar(10) NOT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_file`
--

INSERT INTO `tlpv_file` (`id`, `user_id`, `type`, `name`, `code`, `file_ext`, `content`, `created_at`, `deleted_at`) VALUES
(1, 1, 'document', 'test upload and insert db', 'e41bbd4af5da30044b88dc9ab711c5b2', 'srt', '&lt;p&gt;&lt;b&gt;content bold&lt;/b&gt;&lt;/p&gt;', '2017-08-06 11:31:41', '2017-08-06 17:09:42'),
(2, 1, 'image', 'ẢNh 2', '682793af8891c399ad9dee25d69700fb', 'jpg', '&lt;p&gt;content ảnh&lt;/p&gt;', '2017-08-06 16:20:19', NULL),
(3, 1, 'video', 'video 1', '0c2a1b8eada4803abd90386df241cbf3', 'mp4', '&lt;p&gt;&lt;u&gt;content video&lt;/u&gt;&lt;/p&gt;', '2017-08-06 16:35:19', NULL),
(4, 2, 'image', 'ảnh 2 ', '8d373a5f49b37b82596aaaadb567e6ff', 'jpg', '&lt;p&gt;chim cánh cụt&lt;/p&gt;', '2017-08-06 16:46:06', NULL),
(5, 2, 'document', 'first email', '20d534ef3fe79831c525d1a218cc2818', 'jpg', '&lt;p&gt;&lt;b&gt;content&lt;/b&gt;&lt;/p&gt;', '2017-08-09 17:49:23', NULL),
(6, 2, 'document', 'ưerqwer', '5b18caad9f604f12b0705acba0ed409e', '', '&lt;p&gt;qưerqwerqwer&lt;/p&gt;', '2017-08-10 09:14:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_login`
--

CREATE TABLE `tlpv_login` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_login`
--

INSERT INTO `tlpv_login` (`id`, `token`, `user_id`, `created_at`, `expired_at`, `data`) VALUES
(7, 'ee9b5d2a3a2b2cfda1684e111dab4c47', 1, '2017-08-04 22:49:08', '2017-08-04 22:49:24', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(8, '5c4191b6e3da3557f04a029a9fcbfe84', 1, '2017-08-04 22:50:48', '2017-08-04 22:52:13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(9, 'cbb16a3b1ea54f91ceea12953ddcc813', 1, '2017-08-04 22:52:20', '2017-08-04 22:52:46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(10, 'f43bd739e4bf96f21c61e530251e1c00', 1, '2017-08-04 22:55:20', '2017-08-04 22:55:34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(11, '371780e468b74f098bdf54bc6186a9c2', 1, '2017-08-05 15:47:44', '2017-08-05 16:18:56', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(12, '128445a3c39bf3e26d75022995807d42', 2, '2017-08-05 16:19:03', '2017-08-05 20:19:03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(13, '5f267541efc8e3147fefe13dfe66c1fe', 1, '2017-08-05 21:53:19', '2017-08-06 01:53:19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(14, '91a80aa13397d9488406cd0159f0dac8', 1, '2017-08-06 09:20:14', '2017-08-06 13:20:14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(15, 'd23de23adecc5165c59396327efdfaef', 1, '2017-08-06 16:12:35', '2017-08-06 20:12:35', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(16, '9d06a9a7cc28ec2dd98529a8f6449f06', 1, '2017-08-06 21:29:07', '2017-08-07 01:29:07', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(17, 'ab2e761d8ef6054f27d09c0529334fa0', 1, '2017-08-07 22:46:29', '2017-08-08 02:46:29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(18, '8a207250c475d25fd61aa4b4cf01cedb', 2, '2017-08-08 11:34:52', '2017-08-08 15:34:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(19, 'b0ae2822313310f450d7df2b7fd7f562', 2, '2017-08-08 17:07:05', '2017-08-08 21:07:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(20, '26e1e2a5be0e04429eeb5c0f14ec9e99', 2, '2017-08-09 08:49:59', '2017-08-09 12:49:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(21, 'cd8df2db0ebe6dc944340fff35ab5ab7', 2, '2017-08-09 14:13:03', '2017-08-09 18:13:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(22, 'bfff8906afe9eb7433f105198c7a0c34', 2, '2017-08-09 18:14:10', '2017-08-09 22:14:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36'),
(23, '5cb97e6f5ed8158f8d76fed8c81ed421', 2, '2017-08-10 09:14:39', '2017-08-10 13:14:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(24, '7fd5743f8f02e52215a25f3dbddc2f00', 2, '2017-08-10 11:52:11', '2017-08-10 15:52:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(25, '80b4e7123c5fa55bc4ba122eef58b7e5', 2, '2017-08-10 14:07:57', '2017-08-10 18:07:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(26, 'db55234ae271d6b6f0a9623299d12619', 1, '2017-08-10 19:55:15', '2017-08-10 23:55:15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(27, '193fc6184fe4cc15272716bfd8fa26fe', 1, '2017-08-12 16:31:45', '2017-08-12 17:08:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(28, 'a50d0ef89fed6acccfff9d8998d9adea', 2, '2017-08-12 17:08:10', '2017-08-12 21:08:10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(29, '4fd43a364d9e7ec6be6fb152015a03f0', 2, '2017-08-12 20:55:09', '2017-08-13 00:55:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(30, '90767b6a3dac1bcb3b0c08cec2d121e5', 2, '2017-08-13 09:41:06', '2017-08-13 13:41:06', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(31, '511c211a2be342625ea1a7a2ead170a7', 2, '2017-08-13 11:59:16', '2017-08-13 15:59:16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(32, 'c2034b0d8b426eed639a2164b2bb53dc', 1, '2017-08-13 15:50:11', '2017-08-13 16:21:06', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(33, 'b8317775888799838459b758f053e9e1', 3, '2017-08-13 16:21:12', '2017-08-13 18:03:22', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(34, 'b827d2edd55b822a7025c9440d88c504', 2, '2017-08-13 18:03:28', '2017-08-13 19:04:31', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(35, '40e27a4c5e2e14ae69f14342f131cd8a', 5, '2017-08-13 19:04:39', '2017-08-13 23:04:39', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(36, '2c30fb9a76161579bf733140f63e56d0', 4, '2017-08-14 11:55:12', '2017-08-14 15:55:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(37, '03abc1328006e776940036a0eafe4af2', 1, '2017-08-16 14:22:43', '2017-08-16 16:57:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(38, '84a1129ee4121b613cc898c51465de77', 5, '2017-08-16 16:57:43', '2017-08-16 17:03:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(39, 'b7cddffd5431212fd8df29f02b2371b7', 5, '2017-08-16 17:03:27', '2017-08-16 17:05:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(40, '80e330f7059df8b8db6d76b2b796e3d7', 5, '2017-08-16 17:11:28', '2017-08-16 17:30:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(41, 'a516a80448483ab733ea413898265d00', 5, '2017-08-16 17:31:02', '2017-08-16 21:31:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(42, 'aaf7832bdee438412001b4c21392e98e', 2, '2017-08-16 23:25:03', '2017-08-17 03:25:03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36'),
(43, 'd742e62452e75ee2cf224988577b65f4', 2, '2017-08-19 19:43:26', '2017-08-19 23:43:26', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_mail`
--

CREATE TABLE `tlpv_mail` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `file_code` varchar(32) DEFAULT NULL,
  `file_ext` varchar(5) DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  `recipient_ids` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `is_draft` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_mail`
--

INSERT INTO `tlpv_mail` (`id`, `subject`, `content`, `file_code`, `file_ext`, `sender_id`, `recipient_ids`, `created_at`, `is_draft`) VALUES
(1, 'first email', '&lt;p&gt;&lt;b&gt;content&lt;/b&gt;&lt;/p&gt;', '20d534ef3fe79831c525d1a218cc2818', 'jpg', 2, '.1.2.', '2017-08-09 17:49:23', 0),
(2, 'ưerqwer', '&lt;p&gt;qưerqwerqwer&lt;/p&gt;', '', NULL, 1, '.2.', '2017-08-10 09:14:51', 0),
(3, 'ko có file', '&lt;p&gt;content ko có file&lt;/p&gt;', NULL, NULL, 1, '.1.2.', '2017-08-10 09:32:39', 0),
(4, 'Gửi cho 4 người ', '&lt;p&gt;content gửi cho 4 người    &lt;/p&gt;', NULL, NULL, 1, '.2.3.4.5.', '2017-08-12 16:40:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_message`
--

CREATE TABLE `tlpv_message` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_post`
--

CREATE TABLE `tlpv_post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_post`
--

INSERT INTO `tlpv_post` (`id`, `user_id`, `title`, `content`, `file_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Thông báo đầu tiên', 'Nội dung thông báo đầu tiên', NULL, '2017-07-19 12:00:00', '2017-07-30 13:59:00'),
(2, 2, 'Thông báo thứ hai', '&lt;p&gt;content thông báo thứ hai&lt;/p&gt;', NULL, '2017-08-05 16:19:20', '2017-08-13 18:03:52'),
(3, 1, 'Thông báo thứ ba test alert', '&lt;p&gt;test content 2&lt;/p&gt;', NULL, '2017-08-06 00:25:10', '2017-08-06 21:35:51'),
(4, 1, 'Thông báo thứ tư', '&lt;p&gt;&lt;b&gt;&lt;u&gt;Test alert again 1111&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;img k=&quot; data-filename=&quot; xss=&quot;removed&quot;&gt;&lt;br&gt;&lt;/p&gt;', NULL, '2017-08-06 09:22:10', '2017-08-07 22:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_read`
--

CREATE TABLE `tlpv_read` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mail_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `file_code` varchar(32) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_read`
--

INSERT INTO `tlpv_read` (`id`, `user_id`, `mail_id`, `post_id`, `message_id`, `conversation_id`, `file_code`, `time`) VALUES
(1, 2, 1, NULL, NULL, NULL, NULL, '2017-08-12 22:39:01'),
(3, 1, 3, NULL, NULL, NULL, NULL, '2017-08-13 15:50:18'),
(4, 1, 1, NULL, NULL, NULL, NULL, '2017-08-13 15:55:13'),
(5, 1, 4, NULL, NULL, NULL, NULL, '2017-08-13 16:04:57'),
(6, 1, 2, NULL, NULL, NULL, NULL, '2017-08-13 16:05:01'),
(7, 3, 4, NULL, NULL, NULL, NULL, '2017-08-13 16:21:16'),
(8, 3, NULL, 4, NULL, NULL, NULL, '2017-08-13 17:58:04'),
(9, 3, NULL, 3, NULL, NULL, NULL, '2017-08-13 18:01:59'),
(10, 3, NULL, 2, NULL, NULL, NULL, '2017-08-13 18:02:02'),
(11, 3, NULL, 1, NULL, NULL, NULL, '2017-08-13 18:02:03'),
(12, 2, NULL, 4, NULL, NULL, NULL, '2017-08-13 18:03:35'),
(13, 2, NULL, 3, NULL, NULL, NULL, '2017-08-13 18:03:38'),
(14, 2, NULL, 2, NULL, NULL, NULL, '2017-08-13 18:03:41'),
(15, 2, NULL, 1, NULL, NULL, NULL, '2017-08-13 18:03:55'),
(17, 5, NULL, 4, NULL, NULL, NULL, '2017-08-13 19:05:15'),
(18, 5, NULL, 2, NULL, NULL, NULL, '2017-08-13 19:05:18'),
(19, 5, NULL, 1, NULL, NULL, NULL, '2017-08-13 19:05:21'),
(20, 5, NULL, 3, NULL, NULL, NULL, '2017-08-13 19:05:23'),
(21, 4, 4, NULL, NULL, NULL, NULL, '2017-08-14 11:56:02'),
(23, 1, NULL, NULL, NULL, NULL, 'e41bbd4af5da30044b88dc9ab711c5b2', '2017-08-16 14:53:15');

-- --------------------------------------------------------

--
-- Table structure for table `tlpv_user`
--

CREATE TABLE `tlpv_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` text NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlpv_user`
--

INSERT INTO `tlpv_user` (`id`, `username`, `name`, `password`, `phone`, `address`, `role`, `is_activated`, `created_at`, `updated_at`) VALUES
(1, 'thuylinh', 'Thùy Linh', '$2y$10$vs0JjYgoYaKFKR1hxf44MO3eMLracL8dz0JKp9etVlJebczQmMUwm', '0949400245', '234 PHVD', 1, 0, '2017-08-02 18:22:44', '2017-08-03 14:50:10'),
(2, 'khue', 'Khuất Cao Khuê', '$2y$10$vs0JjYgoYaKFKR1hxf44MO3eMLracL8dz0JKp9etVlJebczQmMUwm', '1234123412', '12341234', 1, 0, '2017-08-03 11:51:58', '2017-08-03 11:51:58'),
(3, 'quyet', 'Nguyễn Mạnh Quyết', '$2y$10$sDr6Ougis7okJr.EScf8Ju862vGKWKlvxPaZCWHthvuiSioDbI5t.', '0123456789', '0', 1, 0, '2017-08-12 16:36:57', '2017-08-12 16:36:57'),
(4, 'habyly', 'Hà ', '$2y$10$bx.T6cRsNFtLmKSEo3Ucde6CkEQVLKfNHaDQA1I5jpUDDwIqxaDCG', '0123456789', '0', 1, 0, '2017-08-12 16:37:24', '2017-08-12 16:37:24'),
(5, 'doanh', 'Doanh', '$2y$10$8tOUgIyq5fY1SgZcBVPiLeXC1stA26UzZeDmRv2svb04Qw.l6sQMe', '0123456789', '0', 1, 0, '2017-08-12 16:39:25', '2017-08-12 16:39:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tlpv_conversation`
--
ALTER TABLE `tlpv_conversation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlpv_file`
--
ALTER TABLE `tlpv_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlpv_login`
--
ALTER TABLE `tlpv_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `tlpv_mail`
--
ALTER TABLE `tlpv_mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlpv_message`
--
ALTER TABLE `tlpv_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlpv_post`
--
ALTER TABLE `tlpv_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlpv_read`
--
ALTER TABLE `tlpv_read`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlpv_user`
--
ALTER TABLE `tlpv_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tlpv_conversation`
--
ALTER TABLE `tlpv_conversation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tlpv_file`
--
ALTER TABLE `tlpv_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tlpv_login`
--
ALTER TABLE `tlpv_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tlpv_mail`
--
ALTER TABLE `tlpv_mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tlpv_message`
--
ALTER TABLE `tlpv_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tlpv_post`
--
ALTER TABLE `tlpv_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tlpv_read`
--
ALTER TABLE `tlpv_read`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tlpv_user`
--
ALTER TABLE `tlpv_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
