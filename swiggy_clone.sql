-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 07:42 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swiggy_clone`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `user_phone` varchar(13) NOT NULL,
  `user_name` varchar(25) DEFAULT NULL,
  `user_mail` varchar(30) DEFAULT NULL,
  `user_password` varchar(15) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`user_phone`, `user_name`, `user_mail`, `user_password`, `user_id`) VALUES
('9380216994', 'sudeep', 'sudeepmanasali@gmail.com', 'sudeep@123', 1),
('9886509532', 'sandesh', 'sandesh@gmail.com', 'sandesh1234', 3),
('4567891234', 'dileep', 'dileep@gmail.com', 'dileep', 5),
('9638527412', 'manas adiki', 'adiki@gmail.com', 'adiki', 6);

-- --------------------------------------------------------

--
-- Table structure for table `favorates`
--

CREATE TABLE `favorates` (
  `user_id` int(11) DEFAULT NULL,
  `restraurant_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manage_address`
--

CREATE TABLE `manage_address` (
  `user_id` int(11) DEFAULT NULL,
  `home_address` varchar(25) DEFAULT NULL,
  `other_address` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offerId` int(11) DEFAULT NULL,
  `offerCode` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `trans_date` date DEFAULT current_timestamp(),
  `amount` int(11) DEFAULT NULL,
  `hotel_name` varchar(15) DEFAULT NULL,
  `items` varchar(2000) DEFAULT NULL,
  `confirmation` varchar(10) DEFAULT 'False',
  `delivery_address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `user_id`, `trans_date`, `amount`, `hotel_name`, `items`, `confirmation`, `delivery_address`) VALUES
(6, 1, '2021-06-01', 82, 'Jalsa', '[{\"item\":\"Pasta\"}]', 'False', '942, 21st Main Road,'),
(7, 1, '2021-06-01', 83, 'Spice Elephant', '[{\"item\":\"Pasta\"}]', 'False', '2nd Floor, 80 Feet R'),
(8, 1, '2021-06-01', 82, 'Jalsa', '[{\"item\":\"Pasta\"}]', 'False', '942, 21st Main Road,'),
(9, 1, '2021-06-02', 82, 'Jalsa', '[{\"item\":\"Pasta\",\"itemCost\":53.875,\"itemCount\":1}]', 'False', '942, 21st Main Road,'),
(10, 1, '2021-06-03', 82, 'Jalsa', '[{\"item\":\"Pasta\",\"itemCost\":53.875,\"itemCount\":1}]', 'False', '942, 21st Main Road,'),
(11, 1, '2021-06-03', 82, 'Jalsa', '[{\"item\":\"Pasta\",\"itemCost\":53.875,\"itemCount\":1}]', 'False', '942, 21st Main Road,'),
(12, 1, '2021-06-03', 82, 'Jalsa', '[{\"item\":\"Pasta\",\"itemCost\":53.875,\"itemCount\":1}]', 'False', '942, 21st Main Road,'),
(13, 1, '2021-06-04', 83, 'Spice Elephant', '[{\"item\":\"Momos\",\"itemCost\":53.935,\"itemCount\":1}]', 'False', '2nd Floor, 80 Feet R'),
(14, 1, '2021-06-04', 79, 'Addhuri Udupi B', '[{\"item\":\"Masala Dosa\",\"itemCost\":50.44,\"itemCount\":1}]', 'False', '1st Floor, Annakutee'),
(15, 1, '2021-06-04', 83, 'Spice Elephant', '[{\"item\":\"Momos\",\"itemCost\":53.935,\"itemCount\":1}]', 'False', '2nd Floor, 80 Feet R'),
(16, 1, '2021-06-04', 83, 'Spice Elephant', '[{\"item\":\"Momos\",\"itemCost\":53.935,\"itemCount\":1}]', 'False', '2nd Floor, 80 Feet R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
