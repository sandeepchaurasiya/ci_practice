-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2019 at 12:22 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` varchar(30) NOT NULL,
  `product_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'ASUS Laptop 1500', '799.00', 'asus-laptop.jpg'),
(2, 'Microsoft Surface Pro 3', '898.00', 'surface-pro.jpg'),
(3, 'Samsung EVO 32GB', '12.00', 'samsung-sd-card.jpg'),
(4, 'Desktop Hard Drive', '50.00', 'computer-hard-disk.jpg'),
(5, 'External Hard Drive', '80.00', 'external-hard-disk.jpg'),
(6, 'Crock-Pot Oval Slow Cooker', '34.00', 'crok-pot-cooker.jpg'),
(7, 'Magic Blender System', '80.00', 'blender.jpg'),
(8, 'Cordless Hand Vacuum', '40.00', 'vaccum-cleaner.jpg'),
(9, 'Dishwasher Detergent', '15.00', 'detergent-powder.jpg'),
(10, 'Essential Oil Diffuser', '20.00', 'unpower-difuser.jpg'),
(11, 'Medical Personalized', '11.00', 'hand-bag.jpg'),
(12, 'Best Bridle Leather Belt', '64.00', 'mens-belt.jpg'),
(13, 'HANDMADE Bow set', '24.00', 'pastal-colors.jpg'),
(14, 'Ceramic Coffee Mug', '18.00', 'coffee-mug.jpg'),
(15, 'Wine Birthday Glass', '18.00', 'wine-glass.jpg'),
(21, 'Cycle', '100', 'counter-2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
