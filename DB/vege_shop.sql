-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2023 at 06:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vege_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_order`
--

CREATE TABLE `item_order` (
  `order_id` int(5) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `price_per_kilo` int(20) NOT NULL,
  `order_quantity` int(20) NOT NULL,
  `custamer_code` int(20) NOT NULL,
  `order_tot` int(20) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_order`
--

INSERT INTO `item_order` (`order_id`, `item_name`, `price_per_kilo`, `order_quantity`, `custamer_code`, `order_tot`, `order_date`) VALUES
(5, 'd', 5, 2, 1, 10, '2022-10-19'),
(6, 'Tomato', 5, 10, 1, 50, '2022-10-19'),
(7, 'Tomato', 5, 3, 2, 15, '2022-10-19'),
(8, 'Carrot', 26, 15, 2, 390, '2022-10-19'),
(22, 'gg', 5, 6, 3, 30, '2023-02-01'),
(23, 'Carrot', 26, 10, 4, 260, '2023-02-17'),
(24, 'Banana', 1000, 4, 5, 4000, '2023-07-08'),
(25, 'Tomato', 5, 5, 5, 25, '2023-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `vegetable`
--

CREATE TABLE `vegetable` (
  `id` int(11) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `price_per_kilo` varchar(20) NOT NULL,
  `quantity_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vegetable`
--

INSERT INTO `vegetable` (`id`, `item_name`, `price_per_kilo`, `quantity_kilo`) VALUES
(2, 'Tomato', '5', 82),
(3, 'Carrot', '26', 76),
(9, 'Banana', '1000', 46);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_order`
--
ALTER TABLE `item_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `vegetable`
--
ALTER TABLE `vegetable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item_order`
--
ALTER TABLE `item_order`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vegetable`
--
ALTER TABLE `vegetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
