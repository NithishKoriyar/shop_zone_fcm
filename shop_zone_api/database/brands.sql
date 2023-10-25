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
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brandID` varchar(250) NOT NULL,
  `brandInfo` varchar(250) NOT NULL,
  `brandTitle` varchar(250) NOT NULL,
  `publishedDate` varchar(250) NOT NULL,
  `sellerUID` varchar(250) NOT NULL,
  `status` text NOT NULL,
  `thumbnailUrl` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brandID`, `brandInfo`, `brandTitle`, `publishedDate`, `sellerUID`, `status`, `thumbnailUrl`) VALUES
('1692940201870', 'sony the brand of brand', 'SONY', '2023-08-25 10:40:32', '72', 'available', 'Brands/20230825071032331.png'),
('1692940234295', 'apple iphones', 'iPhones', '2023-08-25 10:41:09', '72', 'available', 'Brands/20230825071109564.png'),
('1692940794028', 'A good looking, comfortable, capable and seemingly powerful Android phone', 'SAMSUNG', '2023-08-25 10:51:50', '73', 'available', 'Brands/20230825072150606.jpg'),
('1693637270539', 'iphone', 'iphone', '2023-09-02 12:18:52', '73', 'available', 'Brands/20230902084852659.png'),
('1694059269553', 'sony phones', 'SONY', '2023-09-07 09:31:29', '74', 'available', 'Brands/20230907060129383.png'),
('1696307554392', 'wal', 'fbgg', '2023-10-03 05:32:53', '79', 'available', 'Brands/651b9974cc4b2.jpg'),
('1696395274596', 'sony phones', 'sony', '2023-10-04 05:54:57', '80', 'available', 'Brands/651cf02070fc6.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
