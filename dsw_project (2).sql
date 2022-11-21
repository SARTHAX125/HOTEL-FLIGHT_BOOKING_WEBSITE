-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 05:16 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dsw project`
--

-- --------------------------------------------------------

--
-- Table structure for table `flightbooking`
--

CREATE TABLE `flightbooking` (
  `username` varchar(20) NOT NULL,
  `flightname` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `seat` int(11) NOT NULL,
  `flightdate` date NOT NULL,
  `pickup` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flightbooking`
--

INSERT INTO `flightbooking` (`username`, `flightname`, `price`, `seat`, `flightdate`, `pickup`, `destination`) VALUES
('SARTHAK125', 'VISTARA AIRLINES  ', 5000, 1, '2021-12-10', 'Bengaluru  ', 'Delhi  ');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flightId` int(15) NOT NULL,
  `flightname1` varchar(20) NOT NULL,
  `flightname2` varchar(20) NOT NULL,
  `pickup` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flightId`, `flightname1`, `flightname2`, `pickup`, `destination`, `date`) VALUES
(24, 'VISTARA AIRLINES', 'INDIGO AIRLINES', 'BENGALURU', 'LUCKNOW', '0000-00-00'),
(25, 'VISTARA AIRLINES', 'INDIGO AIRLINES', 'BENGALURU', 'DELHI', '0000-00-00'),
(26, 'VISTARA AIRLINES', 'INDIGO AIRLINES', 'LUCKNOW', 'BENGALURU', '0000-00-00'),
(27, 'VISTARA AIRLINES', 'INDIGO AIRLINES', 'LUCKNOW', 'DELHI', '0000-00-00'),
(28, 'VISTARA AIRLINES', 'INDIGO AIRLINES', 'DELHI', 'LUCKNOW', '0000-00-00'),
(29, 'VISTARA AIRLINES', 'INDIGO AIRLINES', 'DELHI', 'BENGALURU', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `room` int(2) NOT NULL,
  `roomtype` varchar(20) NOT NULL,
  `bill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `username`, `destination`, `check_in`, `check_out`, `room`, `roomtype`, `bill`) VALUES
(98, 'SARTHAK125 ', 'Delhi ', '2021-12-11', '2021-12-12', 1, 'DELUX ROOM  ', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(38, 'SARTHAK', 'SAINI', 'sarthaksaini125@gmail.com', 'SARTHAK125', '$2y$10$gyKEMrkbXp7sWiqgY/FPbu8FEKBvRANfz4cJ0Z4IOlV7iUqDBMH.W');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flightId`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flightId` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
