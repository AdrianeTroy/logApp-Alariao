-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3301
-- Generation Time: May 28, 2021 at 08:23 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', 'admin', '2021-04-13 16:19:05'),
(17, 'qwerty', '123456', '2021-05-28 16:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date_logged` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `lname`, `fname`, `address`, `date_logged`) VALUES
(7, 'Urtiz', 'Troy', 'Philippines', '2021-04-13 17:33:27'),
(13, 'Xander', 'Alex', 'sabahaynamin@gmail.com', '2021-05-28 15:58:59'),
(14, 'Sussy', 'Cassey', 'sabahaynaminulit@gmail.com', '2021-05-28 16:08:25'),
(15, 'Alariao', 'Angelica ROse', 'ateko@gmail.com', '2021-05-28 16:11:04'),
(16, 'Jackson', 'Michael', 'heehee@gmail.com', '2021-05-28 16:12:58'),
(17, 'Obama', 'Barrack', 'obamacare@gmail.com', '2021-05-28 16:13:55'),
(18, 'Trump', 'Donald', 'makeamericagreatagain@gmail.com', '2021-05-28 16:15:00'),
(19, 'Biden', 'what\'s his first name again?', 'americawhat@gmail.com', '2021-05-28 16:17:06');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
