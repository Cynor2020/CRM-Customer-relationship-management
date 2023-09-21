-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2023 at 09:08 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `cust_id` int(3) NOT NULL,
  `cust_name` varchar(30) NOT NULL,
  `cust_email` varchar(30) NOT NULL,
  `cust_mobile_no` int(10) NOT NULL,
  `cust_password` int(8) NOT NULL,
  `cust_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`cust_id`, `cust_name`, `cust_email`, `cust_mobile_no`, `cust_password`, `cust_address`) VALUES
(1, 'Sagar Aware', 'sagar@gmail.com', 453456789, 2004, 'shirdi'),
(2, 'Kunal Gaikwad', 'kunal@gmail.com', 2147483647, 1999, 'nashik');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `user` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `income` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `cust_name` varchar(30) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_details` varchar(100) NOT NULL,
  `product_qua` int(2) NOT NULL,
  `product_price` int(6) NOT NULL,
  `product_total` int(6) NOT NULL,
  `order_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`cust_name`, `product_name`, `product_details`, `product_qua`, `product_price`, `product_total`, `order_id`) VALUES
('aman v', 'Samsung S22 Ultra', '', 1, 160000, 0, 24);

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `product_id` int(3) NOT NULL,
  `product_seller` varchar(150) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(5) NOT NULL,
  `product_qua` int(3) NOT NULL,
  `product_details` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`product_id`, `product_seller`, `product_name`, `product_price`, `product_qua`, `product_details`) VALUES
(14, 'Mahesh Wani', 'Redmi note 11', 16000, 10, '4/128 , Mediatek G99 , 64MP'),
(15, 'shreehari v', 'Redmi note 12', 18000, 10, '6/128 , Mediatek D4050 , 64MP'),
(16, 'ramesh wani', 'Redmi note 12 pro', 19000, 10, '6/128 , Mediatek D6050 , 64MP'),
(13, 'Sagar Wani', 'Redmi note 10', 15000, 10, '4/64 , Mediatek G99 , 50MP'),
(12, 'Amar Mali', 'Redmi note 9', 13000, 10, '4/64 , Mediatek G86 , 50MP'),
(17, 'Lokesh', 'Redmi note 12 pro 5G', 23000, 10, '6/128 , Mediatek D7050 , 64MP'),
(18, 'Malhari', 'Redmi note 12 pro 5G +', 25000, 10, '8/128 , Mediatek D9050 , 108MP'),
(19, 'Ganesh Aher', 'Redmi 12 5G', 13000, 50, '4/128 , SnapD 4th gen2 , 50MP AI'),
(20, 'Rohit Bhusare', 'Samsung S20 Ultra', 130000, 50, '6/128 , SnapD 8th gen2 , 200MP AI'),
(21, 'Ganesh Bhusare', 'Samsung S22 Ultra', 160000, 50, '6/128 , SnapD 8th gen2 , 200MP AI'),
(22, 'Valmik Jadhav', 'Realme narzo 50i', 11000, 50, '4/64 , mediatek G99 , 48MP AI'),
(23, 'Mohit darekar', 'Lava z2', 11000, 50, '4/64 , mediatek G94 , 48MP AI'),
(24, 'Eknath Darekar', 'IQ z6Lite', 13000, 50, '4/64 , S.dragon695 , 48MP AI'),
(25, 'Rahul Navale', 'Moto g33', 10000, 50, '4/64 , S.dragon690 , 48MP AI'),
(26, 'Vishal Navale', 'intex', 10000, 50, '4/64 , S.dragon685 , 48MP AI'),
(27, 'Kunal g', 'r narzo 20', 2000, 1, 'htfftf');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` int(3) NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `user_name`, `mobile`, `email`, `address`, `password`) VALUES
(28, 'Amol Bagul', '1234567890', 'amolbagul@gmail.com', '', '1234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_seller` (`product_seller`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `cust_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `order_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `product_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
