-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
--
-- Generation Time: Jun 04, 2021 at 09:05 AM
-- Server version: 5.7.29
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test-primal`
--

-- --------------------------------------------------------

CREATE TABLE `brands` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'Alpine');

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `brand_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`) VALUES
(1, 'Alpine A110 Color Edition 2021', '1.png', 'The Alpine A110 is one of the most entertaining and rewarding sports cars you can buy – at any price. Being ultra-lightweight means that, despite its relatively small engine, performance won\'t disappoint, while at the same time it feels incredibly nimble. It\'s also got some of the best-predicted resale values of any car on sale. The Porsche Cayman has higher limits that mean, ultimately, it\'s more capable, but the A110 is at least as much fun on the road as the Cayman, or any other sports car for that matter.', 4800000),
(2, 'Alpine A110 Pure Edition 2021', '2.png', 'Sports cars built with driving pleasure as their primary purpose are few and far between these days. Yes, there are super cars available in abundance, but sports cars without six-figure price tags are becoming rarer as business cases and the green revolution begin defining the industry. As a result, the world of enthusiasts was taken aback when Renault revived the name of a 70’s rally legend. The Alpine A110 was born again at the 2017 Geneva International Motor Show and journalists from across the globe salivated. Why? Well, with an 1,110 kilogram kerb weight, the A110 was the lightweight sports cars we had all been waiting for.', 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `author`, `review`) VALUES
(1, 1, 'Thomas', 'Excellent car, recommending it to everyone who can afford it.'),
(2, 1, 'Robin', 'This car is amazing. I do not regret buying it.'),
(3, 2, 'Pierre', 'I highly recommend this car, this is one of the best in the world.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_foreign_key_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
