-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2019 at 07:09 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genuine`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  `business_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categorisation`
--

CREATE TABLE `categorisation` (
  `id` int(11) NOT NULL,
  `cat_name` int(11) NOT NULL,
  `cat_description` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `bar_code` varchar(250) NOT NULL,
  `qr_code` varchar(250) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `brand_id` int(20) NOT NULL,
  `cat_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usergroup` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `telephone`, `password`, `usergroup`) VALUES
(1, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1),
(2, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1),
(3, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1),
(4, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1),
(5, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1),
(6, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1),
(7, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1),
(8, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1),
(9, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1),
(10, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1),
(11, 'suyog', 'choure', 'suy99', 'choure.suyog@gmail.com', '1122334455', 'admin123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorisation`
--
ALTER TABLE `categorisation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categorisation`
--
ALTER TABLE `categorisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;