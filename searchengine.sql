-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2020 at 01:30 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `searchengine`
--

-- --------------------------------------------------------

--
-- Table structure for table `searchengine`
--

CREATE TABLE `searchengine` (
  `Id` int(100) NOT NULL,
  `Name` varchar(1000) NOT NULL,
  `Url` varchar(1000) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `searchengine`
--

INSERT INTO `searchengine` (`Id`, `Name`, `Url`, `Date`) VALUES
(1, 'Google', 'https://www.google.com', '2020-09-09 22:19:24'),
(2, 'Facebook', 'https://www.facebook.com', '2020-09-09 22:19:24'),
(3, 'Google Play Music', 'https://www.play.google.com', '2020-09-09 22:19:24'),
(4, 'Google Images', 'https://images.google.com/', '2020-09-09 22:19:24'),
(5, 'Google Store', 'https://store.google.com/', '2020-09-09 22:19:24'),
(6, 'Chrome Web Store - Apps - Google Chrome', 'https://chrome.google.com/webstore/category/extensions', '2020-09-09 22:19:24'),
(7, 'Amazon', 'https://www.amazon.com/', '2020-09-09 22:19:24'),
(8, 'Amazon Prime', 'https://www.primevideo.com/', '2020-09-09 22:19:24'),
(9, 'Amazon (company) - Wikipedia', 'https://en.wikipedia.org/wiki/Amazon_(company)', '2020-09-09 22:19:24'),
(10, 'YouTube', 'https://www.youtube.com/', '2020-09-09 22:21:42'),
(11, 'YouTube (@YouTube) · Twitter', 'https://twitter.com/YouTube', '2020-09-09 22:21:42'),
(12, 'YouTube - Wikipedia', 'https://en.wikipedia.org/wiki/YouTube', '2020-09-09 22:21:42'),
(13, 'Twitter', 'https://twitter.com/', '2020-09-09 22:24:15'),
(14, 'Twitter (@Twitter) · Twitter', 'https://twitter.com/Twitter', '2020-09-09 22:24:15'),
(15, 'Twitter', 'https://en.wikipedia.org/wiki/Twitter', '2020-09-09 22:24:15'),
(16, 'Facebook', 'https://en.wikipedia.org/wiki/Facebook', '2020-09-09 22:25:47'),
(17, 'Founder and CEO of Facebook, Inc.', 'https://en.wikipedia.org/wiki/Mark_Zuckerberg', '2020-09-09 22:25:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `searchengine`
--
ALTER TABLE `searchengine`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `searchengine`
--
ALTER TABLE `searchengine`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
