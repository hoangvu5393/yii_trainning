-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2020 at 12:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1584349905),
('m130524_201442_init', 1584418269),
('m190124_110200_add_verification_token_column_to_user_table', 1584418270),
('m200316_090303_create_students_table', 1584350040),
('m200317_041247_create_students_table', 1584418448),
('m200323_050135_add_access_token_column_to_user_table', 1584940981);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `phone`, `email`, `dob`) VALUES
(6, 'abc', 'updated 2 def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(8, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(9, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(10, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(11, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(12, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(13, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(14, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(15, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(16, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(17, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(18, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(19, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(20, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(21, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(22, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(23, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(24, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(25, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(26, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(27, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(28, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(29, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(30, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(31, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(32, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(40, 'abc', 'def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(54, 'abc', 'def', NULL, NULL, NULL),
(56, 'abc', 'def', NULL, NULL, NULL),
(60, 'abc', 'def', NULL, NULL, NULL),
(61, 'abc', 'def', '123', NULL, NULL),
(62, 'vu', '2', '123', NULL, NULL),
(63, 'vu', '2', '123', NULL, NULL),
(64, 'vu', '2', '123', NULL, NULL),
(65, 'vu', '2', '123', NULL, NULL),
(66, 'vu', '3', '1213', NULL, NULL),
(67, 'vu', '4', NULL, NULL, NULL),
(68, 'vu', '5', NULL, NULL, NULL),
(69, 'vu', '6', '123', NULL, NULL),
(70, 'vu', '12', '123', NULL, NULL),
(71, 'vu', '13', NULL, NULL, NULL),
(72, 'vu', '14', '12345', NULL, NULL),
(73, 'vu', '15', '123456', NULL, NULL),
(74, 'vu', '16', '123456', NULL, NULL),
(75, 'vu', '17', '123456', NULL, NULL),
(76, 'vu', '18', '12345678', NULL, NULL),
(77, 'vu', '19', NULL, NULL, NULL),
(78, 'vu', '20', NULL, NULL, NULL),
(79, 'vu', '20', NULL, NULL, NULL),
(80, 'vu', '21', NULL, NULL, NULL),
(81, 'Vu', '25', '1234567', 'abc', NULL),
(82, 'Vu', 'Dinh', '0795282406', 'abc@gmail.com', NULL),
(83, 'Vu', 'Dinh', '0795282406', 'abc@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `access_token`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'vudinh', 'NfZTnNbCvfTfvPPkWZY_mVLDHlQ0ogBI', 'OsDYLKLD_GN6r2Y16hPSAlt7iLYxTDLi', '$2y$13$YEhsxb22hgHypAy8mnORieRPNG77gsUgMfK6N6rXRwlRf.wGUUMza', NULL, '', 9, 1584943094, 1584943094, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
