-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2018 at 11:34 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `name`, `msg`, `date`) VALUES
(1, 'Pragya', 'Hey you all', '2018-10-28 08:33:33'),
(2, 'Sara', 'Ramailo cha hai..', '2018-10-28 08:33:33'),
(3, 'testing', 'testing\r\n', '2018-10-28 09:16:06'),
(4, 'binayak', 'munni badnam', '2018-10-28 09:35:25'),
(5, 'Himal', 'oye kaha ho timi haru ?\r\n\r\n', '2018-10-28 10:07:28'),
(6, 'binayak', 'ghar', '2018-10-28 10:07:48'),
(7, 'nik', 'yeah', '2018-10-28 10:10:50'),
(8, 'pralu', 'huncha ?', '2018-10-28 10:19:19'),
(9, 'haku', 'oye', '2018-10-28 10:26:14'),
(10, 'ganesh', ' k vo', '2018-10-28 10:26:41'),
(11, 'pralesh', 'hey hey dear', '2018-10-28 10:27:48'),
(12, 'pralu', 'HEY NIKITA', '2018-10-28 10:31:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
