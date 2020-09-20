-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2020 at 06:37 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wdv341`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_parts`
--

CREATE TABLE `auto_parts` (
  `part_id` int(200) NOT NULL,
  `part_name` varchar(200) NOT NULL,
  `part_number` int(200) NOT NULL,
  `part_description` varchar(200) NOT NULL,
  `date_recieved` date NOT NULL,
  `part_picture` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event_user`
--

CREATE TABLE `event_user` (
  `event_user_id` int(11) NOT NULL,
  `event_user_name` varchar(200) NOT NULL,
  `event_user_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_user`
--

INSERT INTO `event_user` (`event_user_id`, `event_user_name`, `event_user_password`) VALUES
(1, 'wdv341', 'wdv341');

-- --------------------------------------------------------

--
-- Table structure for table `upload_pic`
--

CREATE TABLE `upload_pic` (
  `pic_id` int(200) NOT NULL,
  `pic_name` varchar(200) NOT NULL,
  `pic_description` varchar(200) NOT NULL,
  `pic_location` varchar(200) NOT NULL,
  `date_taken` date NOT NULL,
  `pic_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_pic`
--

INSERT INTO `upload_pic` (`pic_id`, `pic_name`, `pic_description`, `pic_location`, `date_taken`, `pic_image`) VALUES
(2, 'stars', 'here is some stars', 'mars', '2020-12-12', 'centralParkSign.jpg'),
(3, 'david', 'david', 'pleasant hill', '2020-12-12', 'DavidLV.jpg'),
(4, 'david', 'david', 'pleasant hill', '2020-12-12', 'DavidLV.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wdv341_event`
--

CREATE TABLE `wdv341_event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_description` varchar(255) NOT NULL,
  `event_presenter` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(200) NOT NULL,
  `event_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wdv341_event`
--

INSERT INTO `wdv341_event` (`event_id`, `event_name`, `event_description`, `event_presenter`, `event_date`, `event_time`, `event_image`) VALUES
(3, 'Mid-term', 'class mid-term', 'Jeffry', '2020-04-20', '6:30', ''),
(4, 'final', 'class final', 'Jeff ', '2020-06-20', '5:00', ''),
(5, 'last class', 'final class', 'class', '2020-06-25', '5:00', ''),
(6, 'test', 'test', 'test', '2020-10-04', '9:11', ''),
(7, 'test', 'test', 'test', '0000-00-00', '9:11', ''),
(8, 'test for future', 'test for future', 'test for future', '2050-02-02', '6:00', ''),
(9, 'test for future', 'test for future', 'test for future', '2050-12-12', '6:00', ''),
(10, 'test for future', 'test for future', 'test for future', '2050-11-11', '6:00', ''),
(11, 'test for current month', 'test for current month', 'test for current month', '2020-04-14', '6:00', ''),
(21, 'Class', 'meeting', 'Jeff g ', '2020-12-25', '5:55', 'BallVS.jpg'),
(22, 'Class', 'meeting', 'Jeff g ', '2020-12-25', '5:55', 'BallVS.jpg'),
(23, 'curent month', 'current month', 'month', '2020-04-20', '11:36', ''),
(24, 'curent month', 'current month', 'month', '2020-04-20', '11:36', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_parts`
--
ALTER TABLE `auto_parts`
  ADD PRIMARY KEY (`part_id`);

--
-- Indexes for table `event_user`
--
ALTER TABLE `event_user`
  ADD PRIMARY KEY (`event_user_id`);

--
-- Indexes for table `upload_pic`
--
ALTER TABLE `upload_pic`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `wdv341_event`
--
ALTER TABLE `wdv341_event`
  ADD PRIMARY KEY (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_parts`
--
ALTER TABLE `auto_parts`
  MODIFY `part_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_user`
--
ALTER TABLE `event_user`
  MODIFY `event_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_pic`
--
ALTER TABLE `upload_pic`
  MODIFY `pic_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wdv341_event`
--
ALTER TABLE `wdv341_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
