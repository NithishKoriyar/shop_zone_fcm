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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `brandID` varchar(250) NOT NULL,
  `itemID` varchar(200) NOT NULL,
  `itemInfo` varchar(250) NOT NULL,
  `itemTitle` varchar(250) NOT NULL,
  `longDescription` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `publishedDate` varchar(250) NOT NULL,
  `sellerName` varchar(250) NOT NULL,
  `sellerUID` varchar(250) NOT NULL,
  `status` varchar(100) NOT NULL,
  `thumbnailUrl` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`brandID`, `itemID`, `itemInfo`, `itemTitle`, `longDescription`, `price`, `publishedDate`, `sellerName`, `sellerUID`, `status`, `thumbnailUrl`) VALUES
('1692940234295', '1692940270833', 'Apple iPhone 14 Pro Max 128 GB, Deep Purple', 'Apple iPhone', 'A magical new way to interact with iPhone. A vital safety feature designed to save lives. An innovative 48MP camera for mind-blowing detail. All powered by the ultimate smartphone chip.', 139000, '2023-08-25 10:44:23', 's1', '72', 'available', 'items/20230825071423347.jpg'),
('1692940201870', '1692940542701', 'Sony Xperia 1 iv XQ-CT72 Dual Sim 12GB 256GB 5G (Purple)', 'Sony Xperia 1 iv', 'The Sony Xperia 1 IV has a triple rear camera setup, consisting of a 12 MP primary lens, a 12 MP ultra-wide lens, and a 12 MP telephoto lens. The camera system is designed to provide versatile photography options and support advanced photography tech', 109000, '2023-08-25 10:46:49', 's1', '72', 'available', 'items/20230825071649379.jpg'),
('1692940201870', '1692940616630', 'Sony XPERIA 1 IV 512GB 5G Smartphone (Violet)', 'Sony XPERIA 1 IV', 'Building on the XPERIA 1 III, the violet Sony XPERIA 1 IV 512GB 5G Smartphone provides significant technological improvements that make it an enticing option for everyone from pro photographers to content creators across every major platform. It marr', 150000, '2023-08-25 10:48:33', 's1', '72', 'available', 'items/20230825071833543.png'),
('1692940794028', '1692940915120', 'SAMSUNG Galaxy S23 Ultra 5G (Green, 256 GB)  (12 GB RAM)', 'SAMSUNG Galaxy S23 Ultra 5G', 'Get a smartphone for yourself that can detect your moods and react appropriately. The Samsung Galaxy Ultra\'s potent processor and advanced camera sensor can handle low light and noise reduction. The phone\'s Snapdragon 8 Gen 2 processor, which also pr', 124000, '2023-08-25 10:53:56', 's2', '73', 'available', 'items/20230825072356668.jpg'),
('1692940794028', '1692941039362', 'SAMSUNG Galaxy M34 5G (Waterfall Blue, 128 GB)  (8 GB RAM)', 'SAMSUNG Galaxy M34 5G', 'Get a smartphone for yourself that can detect your moods and react appropriately. The Samsung Galaxy Ultra\'s potent processor and advanced camera sensor can handle low light and noise reduction. The phone\'s Snapdragon 8 Gen 2 processor, which also pr', 25000, '2023-08-25 10:55:32', 's2', '73', 'available', 'items/20230825072532455.jpg'),
('1692940794028', '1693637134420', 'Samsung m33 5g', 'Samsung', 'sumsung fsf s s fs sf s', 40000, '2023-09-02 12:16:33', 's2', '73', 'available', 'items/20230902084633689.jpg'),
('1693637270539', '1693637340645', 'iphone 13 the power 5g', 'iphone 13', 'zed eefdsf esefsge e sdgf fxxfgd dd thd dgt', 100000, '2023-09-02 12:20:03', 's2', '73', 'available', 'items/20230902085003845.jpg'),
('1694059269553', '1694059293662', 'sony i111', 'sony i111', 'sony 5g 16gb ram 512 rom', 60000, '2023-09-07 09:32:53', 'sony', '74', 'available', 'items/20230907060253160.png'),
('1696307554392', '1696307577385', 'hhh', 'gyuu', 'ghhh', 200, '2023-10-03 05:33:14', 'test', '79', 'available', 'items/651b998a2eb9f.jpg'),
('1696395274596', '1696395300900', 'sony x 111', 'sony', 'zXsx WA wdDD W  DdAEARFEA E', 30000, '2023-10-04 05:55:41', 'sony sellers', '80', 'available', 'items/651cf04d6e76d.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
