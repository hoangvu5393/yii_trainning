-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 10:26 AM
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
(83, 'Vu', 'Dinh', '0795282406', 'abc@gmail.com', NULL),
(84, 'Vu', 'Dinh', '12345', 'a', NULL),
(85, 'abc', 'updated 2 def', '0795282406', 'hoangvuse61058@gmail.com', '1993-03-05 00:00:00'),
(86, 'Vu', 'Dinh', '123435', 'a@GMAIL.COM', NULL),
(87, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(88, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(89, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(90, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(91, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(92, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(93, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(94, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(95, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(96, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(97, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(98, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(99, 'Vu', 'Que 2', '1234', 'abc@gmail.com', NULL),
(100, 'Vu', 'Que 2', '1234', 'abc@gmail.com', NULL),
(101, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(102, 'Vu', 'Que 2', '1234', 'abc@gmail.com', NULL),
(103, 'Vu', 'Que 2', '1234', 'abc@gmail.com', NULL),
(104, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(105, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(106, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(107, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(108, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(109, 'vu', 'que 4', '12345', 'abc@gmail.com', NULL),
(110, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(111, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(112, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(113, 'Vu', 'Dinh Que', '12345', 'abc@gmail.com', NULL),
(114, 'Vu', 'Dinh Que 5', '12345', 'abc@gmail.com', NULL),
(115, 'Vu', 'Dinh Que 6', '12345', 'abc@gmail.com', NULL),
(116, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(117, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(118, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(119, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(120, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(121, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(122, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(123, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(124, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(125, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(126, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(127, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(128, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(129, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(130, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(131, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(132, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(133, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(134, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(135, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(136, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(137, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(138, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(139, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(140, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(141, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(142, 'Vu', 'Dinh Que 7', '12345', 'abc@gmail.com', NULL),
(143, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(144, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(145, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(146, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(147, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(148, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(149, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(150, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(151, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(152, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(153, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(154, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(155, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(156, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(157, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(158, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(159, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(160, 'Vu', 'Dinh Que 8', '12345', 'abc@gmail.com', NULL),
(161, 'Vu', 'Dinh Que 9', '12345', 'abc@gmail.com', NULL),
(162, 'Vu', 'Dinh Que 10', '12345', 'abc@gmail.com', NULL),
(163, 'Vu', 'Dinh Que 10', '12345', 'abc@gmail.com', NULL),
(164, 'Vu', 'Dinh Que 10', '12345', 'abc@gmail.com', NULL),
(165, 'Vu', 'Dinh Que 10', '12345', 'abc@gmail.com', NULL),
(166, 'Vu', 'Dinh Que 10', '12345', 'abc@gmail.com', NULL),
(167, 'Vu', 'Dinh Que 11', '12345', 'abc@gmail.com', NULL),
(168, 'Vu', 'Dinh Que 11', '12345', 'abc@gmail.com', NULL),
(169, 'Vu', 'Dinh Que 11', '12345', 'abc@gmail.com', NULL),
(170, 'Vu', 'Dinh Que 11', '12345', 'abc@gmail.com', NULL),
(171, 'Vu', 'Dinh Que 11', '12345', 'abc@gmail.com', NULL),
(172, 'Vu', 'Dinh Que 12', '12345', 'abc@gmail.com', NULL),
(173, 'Vu', 'Dinh Que 12', '12345', 'abc@gmail.com', NULL),
(174, 'Vu', 'Dinh Que 12', '12345', 'abc@gmail.com', NULL),
(175, 'Vu', 'Dinh Que 12', '12345', 'abc@gmail.com', NULL),
(176, 'Vu', 'Dinh Que 12', '12345', 'abc@gmail.com', NULL),
(177, 'Vu', 'Dinh Que 12', '12345', 'abc@gmail.com', NULL),
(178, 'Vu', 'Dinh Que 12', '12345', 'abc@gmail.com', NULL),
(179, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(180, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(181, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(182, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(183, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(184, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(185, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(186, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(187, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(188, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(189, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(190, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(191, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(192, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(193, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(194, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(195, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(196, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(197, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(198, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(199, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(200, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(201, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(202, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(203, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(204, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(205, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(206, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(207, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(208, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(209, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(210, 'Vu', 'Dinh 26-3', '12345678', 'abc@gmail.com', NULL),
(211, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(212, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(213, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(214, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(215, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(216, 'Vu', 'Dinh 26-4', '12345678', 'abc@gmail.com', NULL),
(217, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(218, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(219, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(220, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(221, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(222, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(223, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(224, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(225, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(226, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(227, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(228, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(229, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(230, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(231, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(232, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(233, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(234, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(235, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(236, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(237, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(238, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(239, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(240, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(241, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(242, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(243, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(244, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(245, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(246, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(247, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(248, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(249, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(250, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(251, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(252, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(253, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(254, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(255, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(256, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(257, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(258, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(259, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(260, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(261, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(262, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(263, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(264, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(265, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(266, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(267, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(268, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(269, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(270, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(271, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(272, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(273, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(274, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(275, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(276, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(277, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(278, 'Vu', 'Dinh', '12345', 'abc@gmail.com', NULL),
(279, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(280, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(281, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(282, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(283, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(284, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(285, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(286, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(287, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(288, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(289, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(290, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(291, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(292, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(293, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(294, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(295, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(296, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(297, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(298, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(299, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(300, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(301, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(302, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(303, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(304, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(305, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(306, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(307, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL),
(308, 'Vu', 'Dinh Queue 12 vu', '12345', 'abc@gmail.com', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
