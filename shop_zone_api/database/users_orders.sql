-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: sdb-63.hosting.stackcp.net
-- Generation Time: Oct 07, 2023 at 05:57 AM
-- Server version: 10.6.15-MariaDB-log
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_zone-353033352fb6`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `orderId` varchar(255) NOT NULL,
  `addressID` varchar(255) DEFAULT NULL,
  `totalAmount` int(11) DEFAULT NULL,
  `orderBy` varchar(255) DEFAULT NULL,
  `productIDs` text DEFAULT NULL,
  `paymentDetails` varchar(255) DEFAULT NULL,
  `orderTime` varchar(255) DEFAULT NULL,
  `isSuccess` tinyint(1) DEFAULT NULL,
  `sellerUID` varchar(255) DEFAULT NULL,
  `orderStatus` varchar(255) DEFAULT NULL,
  `itemQuantity` int(11) NOT NULL,
  `itemID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`orderId`, `addressID`, `totalAmount`, `orderBy`, `productIDs`, `paymentDetails`, `orderTime`, `isSuccess`, `sellerUID`, `orderStatus`, `itemQuantity`, `itemID`) VALUES
('1696401423532', '12', 139000, '74', '59', 'Cash On Delivery', '2023-10-04 12:07:05', 1, '72', 'normal', 1, '1692940270833'),
('1696401626899', '12', 150000, '74', '60', 'Cash On Delivery', '2023-10-04 12:10:28', 1, '72', 'normal', 1, '1692940616630'),
('1696401698772', '12', 109000, '74', '61', 'Cash On Delivery', '2023-10-04 12:11:40', 1, '72', 'normal', 1, '1692940542701'),
('1696401886140', '12', 200000, '74', '62', 'Cash On Delivery', '2023-10-04 12:14:48', 1, '73', 'normal', 2, '1693637340645'),
('1696401947555', '12', 278000, '74', '63', 'Cash On Delivery', '2023-10-04 12:15:49', 1, '72', 'normal', 2, '1692940270833'),
('1696402050423', '12', 300000, '74', '64', 'Cash On Delivery', '2023-10-04 12:17:31', 1, '72', 'normal', 2, '1692940616630'),
('1696402064485', '12', 30000, '74', '65', 'Cash On Delivery', '2023-10-04 12:17:48', 1, '80', 'shifted', 1, '1696395300900'),
('1696402440479', '12', 30000, '74', '66', 'Cash On Delivery', '2023-10-04 12:24:03', 1, '80', 'shifted', 1, '1696395300900'),
('1696402570114', '12', 30000, '74', '67', 'Cash On Delivery', '2023-10-04 12:26:12', 1, '80', 'shifted', 1, '1696395300900'),
('1696403274010', '12', 120000, '74', '68', 'Cash On Delivery', '2023-10-04 12:37:55', 1, '74', 'normal', 2, '1694059293662'),
('1696403648139', '11', 60000, '72', '69', 'Cash On Delivery', '2023-10-04 12:44:09', 1, '80', 'shifted', 2, '1696395300900'),
('1696403971968', '11', 60000, '72', '70', 'Cash On Delivery', '2023-10-04 12:49:32', 1, '80', 'shifted', 2, '1696395300900'),
('1696404701923', '11', 30000, '72', '71', 'Cash On Delivery', '2023-10-04 13:01:42', 1, '80', 'shifted', 1, '1696395300900'),
('1696406882759', '12', 60000, '74', '72', 'Cash On Delivery', '2023-10-04 13:38:03', 1, '80', 'shifted', 2, '1696395300900'),
('1696407184432', '11', 120000, '72', '73', 'Cash On Delivery', '2023-10-04 13:43:05', 1, '80', 'shifted', 4, '1696395300900'),
('1696407576656', '11', 60000, '72', '74', 'Cash On Delivery', '2023-10-04 13:49:37', 1, '80', 'shifted', 2, '1696395300900'),
('1696407927256', '11', 60000, '72', '75', 'Cash On Delivery', '2023-10-04 13:55:28', 1, '80', 'normal', 2, '1696395300900');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`orderId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
