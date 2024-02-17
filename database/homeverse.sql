-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 28, 2023 at 01:20 PM
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
-- Database: `homeverse`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `backgroundName` varchar(255) NOT NULL,
  `propertyName` varchar(255) NOT NULL,
  `propertyPrice` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `backgroundName`, `propertyName`, `propertyPrice`, `status`, `full_name`, `phone`, `email`) VALUES
(8, 'Background-Name-6448.jpg', 'Germane Flynn', 59200.00, 'Cancelled', 'Miles Morales', 712545335, 'milesmorales@mailinator.com'),
(9, 'Background-Name-9370.jpg', 'Adrienne Villa', 57000.00, 'Bought', 'Mr Shelby', 754060142, 'shelbyreals@hotmail.com'),
(10, 'Background-Name-2263.jpg', 'Yael Flats', 29500.00, 'Ordered', 'Clyde Artz', 740965535, 'clydeartz@mailinator.com'),
(12, 'Background-Name-6448.jpg', 'Germane Flynn', 59200.00, 'Bought', 'Faith Katelina Kilonzo', 115687568, 'reginarobert355@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `backgroundName` varchar(255) NOT NULL,
  `pictureName` varchar(255) NOT NULL,
  `pictureName2` varchar(255) NOT NULL,
  `oldPrice` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discountPercent` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `squareFt` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `whatsapp` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `blog` varchar(10) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `featured_blog` varchar(10) NOT NULL,
  `active_blog` varchar(10) NOT NULL,
  `dates` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `name`, `type`, `status`, `city`, `backgroundName`, `pictureName`, `pictureName2`, `oldPrice`, `discount`, `price`, `discountPercent`, `bedrooms`, `bathrooms`, `squareFt`, `description`, `featured`, `active`, `duration`, `owner`, `phone`, `whatsapp`, `email`, `blog`, `comment`, `featured_blog`, `active_blog`, `dates`) VALUES
(27, 'Artkins Key House', 'House', 'For Rent', 'Nakuru', 'Background-Name-5041.jpg', 'Picture-Name-5606.jpg', 'Picture-Name2-2508.jpg', 50000.00, 500.00, 49500.00, 1, 10, 5, 3652, 'Comfortable House for Family Vacation', 'Yes', 'Yes', '/Month', 'Artkins', 757451020, 757451020, 'artkins@hotmail.com', 'Yes', 'Best House of 2022', 'Yes', 'Yes', '2022-06-09'),
(29, 'Wilkinson Apartments', 'Apartment', 'For Rent', 'Naivasha', 'Background-Name-6653.jpg', 'Picture-Name-2126.jpg', 'Picture-Name2-5944.jpg', 9000.00, 1000.00, 8000.00, 11, 1, 1, 3280, 'Cool Apartments for Students', 'Yes', 'Yes', '/Month', 'Shaun', 783784054, 783784054, 'shaunartkins@hotmail.com', 'Yes', 'Cheapest Apartments of 2021', 'Yes', 'Yes', '2021-09-16'),
(30, 'Franklin Holdings', 'Building', 'For Sale', 'Mombasa', 'Background-Name-9170.jpg', 'Picture-Name-6386.jpg', 'Picture-Name2-9139.jpg', 50000.00, 2000.00, 48000.00, 4, 3, 5, 2045, 'Unique Building for Business', 'Yes', 'Yes', '/Month', 'Franklin', 783784054, 783784054, 'franklinholdings@gmailcom', 'No', '', '', '', '0000-00-00'),
(31, 'Yael Flats', 'Flat', 'For Rent', 'Kisumu', 'Background-Name-2263.jpg', 'Picture-Name-698.jpg', 'Picture-Name2-9287.jpg', 30000.00, 500.00, 29500.00, 2, 8, 4, 3524, 'Luxurious Flats for Family', 'Yes', 'Yes', '/Month', 'Livia', 714230692, 714230692, 'liviaartkins@hotmail.com', 'Yes', 'Coolest Flats of 2023', 'No', 'Yes', '2023-02-09'),
(32, 'Adrienne Villa', 'Villa', 'For Sale', 'Nakuru', 'Background-Name-9370.jpg', 'Picture-Name-7928.jpg', 'Picture-Name2-1095.jpg', 60000.00, 3000.00, 57000.00, 5, 10, 5, 3542, 'Comfortable Villa', 'Yes', 'Yes', '/Month', 'Miles', 720421570, 714230692, 'milesmorales@mailinator.com', 'No', '', '', '', '0000-00-00'),
(33, 'Germane Flynn', 'House', 'For Rent', 'Nairobi', 'Background-Name-6448.jpg', 'Picture-Name-3412.jpg', 'Picture-Name2-7547.jpg', 60000.00, 800.00, 59200.00, 1, 12, 5, 3540, 'Luxurious House', 'Yes', 'Yes', '/Month', 'Whitney', 712545335, 712545335, 'whitneyartkins@hotmail.com', 'Yes', 'Coolest House of 2022', 'Yes', 'Yes', '2022-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  `active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `property_id`, `username`, `review`, `active`) VALUES
(37, 33, 'Whitney', 'This is the most spacious house i have seen so far', 'Yes'),
(38, 33, 'Artkins', 'This is the best house i have bought', 'Yes'),
(39, 33, 'Livia', 'Get your dream house here at Homeverse', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userProfile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `username`, `userProfile`, `email`, `phone`, `password`, `admin`) VALUES
(1, 'Don Artkins', 'Artkins', 'User-Profile-2849.jpg', 'bellachao@hotmail.com', 757451020, '21232f297a57a5a743894a0e4a801fc3', 'Yes'),
(2, 'Whitney Artkins', 'Whitney', 'User-Profile-2828.png', 'whitney254@hotmail.com', 757451020, '21232f297a57a5a743894a0e4a801fc3', 'Yes'),
(19, 'Livia Artkins', 'Livia', 'User-Profile-4414.jpg', 'liviaartkins@hotmail.com', 757451020, 'd6a6bc0db10694a2d90e3a69648f3a03', 'No'),
(20, 'Shaun Artkins', 'Shaun', 'User-Profile-3156.jpg', 'shaunartkins@hotmail.com', 712545335, 'd6a6bc0db10694a2d90e3a69648f3a03', 'No'),
(24, 'Roanna Rush', 'Rush', 'User-Profile-6752.jpeg', 'xeqix@mailinator.com', 712663975, '47982c18f4861b2edf96bfe9f73f12bf', 'No'),
(27, 'Chris Baaru', 'Baaru', 'No-Profile.png', 'chrisbaaru@gmail.com', 114663795, 'a765884f4d99cc66fb7e2abc9ffe4156', 'No'),
(28, 'Oketch Manu', 'Manu', 'No-Profile.png', 'oketchmanu@hotmail.com', 114291362, 'a765884f4d99cc66fb7e2abc9ffe4156', 'No'),
(29, 'Faith Katelina Kilonzo', 'Katelina', 'No-Profile.png', 'reginarobert355@gmail.com', 115687568, '21232f297a57a5a743894a0e4a801fc3', 'Yes'),
(37, 'Ben Carson', 'Ben', 'No-Profile.png', 'bencarson@mailinator.com', 745412554, '7fe4771c008a22eb763df47d19e2c6aa', 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
