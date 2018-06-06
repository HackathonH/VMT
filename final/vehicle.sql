-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2018 at 06:11 AM
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
-- Table structure for table `mileage1`
--

CREATE TABLE `mileage1` (
  `vehicle_id` int(11) NOT NULL,
  `mileage` float NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vehicle_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mileage1`
--

INSERT INTO `mileage1` (`vehicle_id`, `mileage`, `user_id`, `date`, `vehicle_name`) VALUES
(510, 0, 510, '0000-00-00 00:00:00', 'ritz'),
(510, 7.4875, 510, '2018-06-06 04:09:10', 'ritz');

-- --------------------------------------------------------

--
-- Table structure for table `mileage_details`
--

CREATE TABLE `mileage_details` (
  `vehicle_id` int(11) NOT NULL,
  `mileage` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(100) DEFAULT 'June 2',
  `vehicle_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mileage_details`
--

INSERT INTO `mileage_details` (`vehicle_id`, `mileage`, `user_id`, `date`, `vehicle_name`) VALUES
(501, 100, 501, '2018-06-02 13:36:30', 'pulsar'),
(502, 75, 502, '2018-06-02 13:37:15', 'gixer'),
(504, 75, 504, '2018-06-02 13:37:32', 'swift'),
(501, 120, 501, '2016-06-02 14:41:59', 'pulsar'),
(501, 20, 501, '2017-06-02 14:41:59', 'pulsar'),
(505, 100, 505, '2018-06-02 16:50:56', 'Royal Enfield'),
(506, 100, 506, '2018-06-02 16:51:06', 'Avengers'),
(507, 80, 507, '2018-06-02 16:51:17', 'Activa'),
(505, 35, 505, '2016-02-03 04:04:04', 'Royal Enfield'),
(505, 45, 505, '2017-02-03 04:04:04', 'Royal Enfield'),
(505, 85, 505, '2018-02-03 04:04:04', 'Royal Enfield'),
(506, 85, 506, '2016-02-03 04:04:04', 'Avengers'),
(506, 95, 506, '2017-02-03 04:04:04', 'Avengers'),
(506, 69, 506, '2016-02-03 04:04:04', 'Avengers'),
(507, 69, 507, '2016-02-03 04:04:04', 'Activa'),
(507, 61, 507, '2017-06-03 04:04:04', 'Activa'),
(507, 71, 507, '2016-06-03 04:04:04', 'Activa'),
(502, 35, 502, '2016-02-03 04:04:04', 'gixer'),
(502, 65, 502, '2017-05-03 04:04:04', 'gixer'),
(502, 95, 502, '2018-05-03 04:04:04', 'gixer'),
(508, 35, 508, '2016-03-03 12:12:12', 'ferrari'),
(508, 50, 508, '2017-03-03 12:12:12', 'ferrari'),
(508, 90, 508, '2018-03-03 12:12:12', 'ferrari'),
(509, 34, 509, '2016-02-02 12:12:21', 'audi'),
(509, 84, 509, '2017-02-02 12:12:21', 'audi'),
(509, 64, 509, '2018-02-02 12:12:21', 'audi'),
(510, 87, 510, '2018-02-02 12:12:21', 'ritz'),
(510, 30, 510, '2017-02-02 12:12:21', 'ritz'),
(510, 50, 510, '2016-02-02 12:12:21', 'ritz'),
(515, 100, 515, 'June 2', ''),
(510, 50, 510, 'June 2', 'ritz'),
(510, 60, 510, 'June 2', 'ritz'),
(510, 85, 510, 'June 2', 'ritz'),
(501, 1.25, 501, 'June 2', 'pulsar');

-- --------------------------------------------------------

--
-- Table structure for table `odometer_details`
--

CREATE TABLE `odometer_details` (
  `vehicle_id` int(11) NOT NULL,
  `odometer` double NOT NULL,
  `price` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `odometer_details`
--

INSERT INTO `odometer_details` (`vehicle_id`, `odometer`, `price`, `date`) VALUES
(504, 100, 200, '2018-06-05 11:21:11'),
(504, 200, 400, '2018-06-05 11:23:40'),
(520, 100, 400, '2018-06-05 13:11:20'),
(520, 800, 300, '2018-06-05 13:12:31'),
(520, 200, 100, '2018-06-05 13:43:09'),
(520, 400, 100, '2018-06-05 13:43:22'),
(521, 100, 200, '2018-06-05 13:45:32'),
(521, 400, 150, '2018-06-05 13:45:43'),
(521, 600, 200, '2018-06-05 13:45:51'),
(522, 200, 100, '2018-06-05 13:46:07'),
(522, 400, 200, '2018-06-05 13:46:14'),
(522, 500, 100, '2018-06-05 13:46:32'),
(520, 500, 100, '2018-06-06 03:47:24'),
(504, 100, 50, '2018-06-06 03:54:30'),
(504, 100, 50, '2018-06-06 03:55:18'),
(504, 100, 50, '2018-06-06 03:55:26'),
(504, 100, 50, '2018-06-06 03:55:56'),
(504, 100, 50, '2018-06-06 03:56:27'),
(504, 200, 50, '2018-06-06 03:59:10'),
(504, 200, 50, '2018-06-06 03:59:33'),
(504, 200, 50, '2018-06-06 04:00:30'),
(504, 200, 50, '2018-06-06 04:01:15'),
(504, 200, 50, '2018-06-06 04:01:35'),
(504, 200, 50, '2018-06-06 04:06:08'),
(510, 599, 299, '2018-06-06 04:09:10'),
(510, 100, 200, '2018-06-06 04:11:03');

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
(511, 'john', 'dhfb'),
(515, 'jagdeesh', 'sacbhja'),
(516, 'jagdees', 'asdg'),
(517, 'kiran', 'hgscd'),
(520, 'arrow', '12wer3tfg'),
(521, 'flash', '12wer3tfg'),
(522, 'sai', '12wer3tfg'),
(523, 'anusha', '12wer3tfg');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `vehicle_name` varchar(100) NOT NULL,
  `vehicle_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`user_id`, `vehicle_id`, `vehicle_name`, `vehicle_type`) VALUES
(501, 501, 'pulsar', 'bike'),
(502, 502, 'gixer', 'bike'),
(504, 504, 'swift', 'car'),
(505, 505, 'Royal Enfield', 'Bike'),
(506, 506, 'Avengers', 'Bike'),
(507, 507, 'Activa', 'Bike'),
(508, 508, 'ferrari', 'car'),
(509, 509, 'audi', 'car'),
(510, 510, 'ritz', 'car'),
(511, 511, 'benz', 'car'),
(515, 515, 'jupiter', 'bike'),
(520, 520, 'pulsar', 'bike'),
(521, 521, 'pulsar', 'bike'),
(522, 522, 'pulsar', 'bike'),
(523, 523, 'pulsar', 'bike'),
(555, 555, 'benz', 'car');

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
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

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
