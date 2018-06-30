-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2018 at 10:10 AM
-- Server version: 5.7.17-log
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(2) NOT NULL,
  `hotel_name` varchar(20) NOT NULL,
  `hotel_address` varchar(50) NOT NULL,
  `hotel_city` varchar(10) NOT NULL,
  `hotel_email` varchar(20) NOT NULL,
  `hotel_phone` varchar(20) NOT NULL,
  `hotel_website` varchar(15) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(2) NOT NULL,
  `job_title` varchar(20) NOT NULL,
  `job_position` varchar(20) NOT NULL,
  `job_description` varchar(100) NOT NULL,
  `job_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(3) NOT NULL,
  `ticket_comment` varchar(200) NOT NULL,
  `ticket_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(2) NOT NULL,
  `user_type` int(1) NOT NULL DEFAULT '0',
  `user_email` varchar(20) NOT NULL,
  `user_pass` varchar(20) NOT NULL,
  `user_fname` varchar(20) NOT NULL,
  `user_lname` varchar(20) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_resume` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
