-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2017 at 02:42 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpl_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_camps_db`
--

CREATE TABLE `user_camps_db` (
  `username` varchar(30) NOT NULL,
  `camp_id` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_camps_db`
--

INSERT INTO `user_camps_db` (`username`, `camp_id`) VALUES
('b123', '2'),
('gunjan', '1'),
('gunjan', '3'),
('shriroop', '1'),
('shriroop', '2'),
('shriroop', '3'),
('shriroop', '4'),
('shriroop', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_camps_db`
--
ALTER TABLE `user_camps_db`
  ADD PRIMARY KEY (`username`,`camp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
