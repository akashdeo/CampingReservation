-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2017 at 02:41 AM
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
-- Table structure for table `camps_db`
--

CREATE TABLE `camps_db` (
  `camp_id` varchar(30) NOT NULL,
  `camp_name` varchar(200) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `description` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camps_db`
--

INSERT INTO `camps_db` (`camp_id`, `camp_name`, `cost`, `address`, `phone_number`, `description`, `image`) VALUES
('1', 'Hampta', '$200', 'Manali', '123', 'Near Manali', 'hampta.png'),
('2', 'Chandrakheni', '$500', 'Rohtang', '456', 'Near Rohtang Pass', 'chandrakheni.png'),
('3', 'Sarpass', '$200', 'Manikaran', '789', 'Near Manikaran', 'sarpass.png'),
('4', 'Sarkundi', '$150', 'Kullu', '898', 'Near Kulu', 'sarkundi.png'),
('5', 'abc', '$100', '345 Dallas', '234', 'xyz', 'skylake_yosemite_ca.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camps_db`
--
ALTER TABLE `camps_db`
  ADD PRIMARY KEY (`camp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
