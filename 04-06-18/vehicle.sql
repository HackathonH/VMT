-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2018 at 07:30 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle`
--

-- --------------------------------------------------------

--
-- Table structure for table `mileage_details`
--

CREATE TABLE `mileage_details` (
  `vehicle_id` int(11) NOT NULL,
  `mileage` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(100) DEFAULT 'June 2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mileage_details`
--

INSERT INTO `mileage_details` (`vehicle_id`, `mileage`, `user_id`, `date`) VALUES
(501, 100, 501, '2018-06-02 13:36:30'),
(502, 75, 502, '2018-06-02 13:37:15'),
(504, 75, 504, '2018-06-02 13:37:32'),
(501, 120, 501, '2016-06-02 14:41:59'),
(501, 20, 501, '2017-06-02 14:41:59'),
(505, 100, 505, '2018-06-02 16:50:56'),
(506, 100, 506, '2018-06-02 16:51:06'),
(507, 80, 507, '2018-06-02 16:51:17'),
(505, 35, 505, '2016-02-03 04:04:04'),
(505, 45, 505, '2017-02-03 04:04:04'),
(505, 85, 505, '2018-02-03 04:04:04'),
(506, 85, 506, '2016-02-03 04:04:04'),
(506, 95, 506, '2017-02-03 04:04:04'),
(506, 69, 506, '2016-02-03 04:04:04'),
(507, 69, 507, '2016-02-03 04:04:04'),
(507, 61, 507, '2017-06-03 04:04:04'),
(507, 71, 507, '2016-06-03 04:04:04'),
(502, 35, 502, '2016-02-03 04:04:04'),
(502, 65, 502, '2017-05-03 04:04:04'),
(502, 95, 502, '2018-05-03 04:04:04'),
(508, 35, 508, '2016-03-03 12:12:12'),
(508, 50, 508, '2017-03-03 12:12:12'),
(508, 90, 508, '2018-03-03 12:12:12'),
(509, 34, 509, '2016-02-02 12:12:21'),
(509, 84, 509, '2017-02-02 12:12:21'),
(509, 64, 509, '2018-02-02 12:12:21'),
(510, 87, 510, '2018-02-02 12:12:21'),
(510, 30, 510, '2017-02-02 12:12:21'),
(510, 50, 510, '2016-02-02 12:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `petrol_details`
--

CREATE TABLE `petrol_details` (
  `vehicle_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `litres` double NOT NULL,
  `price` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petrol_details`
--

INSERT INTO `petrol_details` (`vehicle_id`, `user_id`, `litres`, `price`, `date`) VALUES
(501, 501, 2, 200, '2016-06-02 09:11:59'),
(501, 501, 1, 100, '2017-06-02 09:11:59'),
(501, 501, 1.5, 170, '2018-06-02 08:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(501, 'adarsh', 'adarsh@1'),
(502, 'akhil', 'akhil@2'),
(504, 'akshay', 'akshay@4'),
(505, 'Venkatesh', 'abcd'),
(506, 'Ross', 'abcd'),
(507, 'Venkat', 'abcd'),
(508, 'catelyn', 'dhfb'),
(509, 'arya', 'dhfb'),
(510, 'sansa', 'dhfb'),
(511, 'john', 'dhfb');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_name` varchar(100) NOT NULL,
  `vehicle_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vehicle_name`, `vehicle_type`) VALUES
(501, 'pulsar', 'bike'),
(502, 'gixer', 'bike'),
(504, 'swift', 'car'),
(505, 'Royal Enfield', 'Bike'),
(506, 'Avengers', 'Bike'),
(507, 'Activa', 'Bike'),
(508, 'ferrari', 'car'),
(509, 'audi', 'car'),
(510, 'ritz', 'car'),
(511, 'benz', 'car');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mileage_details`
--
ALTER TABLE `mileage_details`
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `petrol_details`
--
ALTER TABLE `petrol_details`
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mileage_details`
--
ALTER TABLE `mileage_details`
  ADD CONSTRAINT `mileage_details_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`),
  ADD CONSTRAINT `mileage_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `petrol_details`
--
ALTER TABLE `petrol_details`
  ADD CONSTRAINT `petrol_details_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`),
  ADD CONSTRAINT `petrol_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
