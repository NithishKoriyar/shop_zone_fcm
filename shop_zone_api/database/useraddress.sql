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
-- Table structure for table `useraddress`
--

CREATE TABLE `useraddress` (
  `id` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `streetNumber` varchar(20) NOT NULL,
  `flatHouseNumber` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `stateCountry` varchar(100) NOT NULL,
  `completeAddress` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useraddress`
--

INSERT INTO `useraddress` (`id`, `uid`, `name`, `phoneNumber`, `streetNumber`, `flatHouseNumber`, `city`, `stateCountry`, `completeAddress`) VALUES
(1, '64', 'nitjish', '909898789', '999', 'rr', 'vcvcv', 'in', '999, rr, vcvcv, in.'),
(2, '64', 'jjfdd', '3333333333', 'fsfes', 'fsefsfs', 'fsefsefesf', 'esfsfesg', 'fsfes, fsefsfs, fsefsefesf, esfsfesg.'),
(3, '64', 'oo', '9999999999', '77777', '777777', '7777777', '77777777', '77777, 777777, 7777777, 77777777.'),
(4, '64', 'fffffffffffff', '4444444444', '44444444444444444444', '22222222222222222222', 'ffffffffffffffffffffffffffffffffffffffffffffffffff', 'fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', '444444444444444444444444, 222222222222222222222, fffffffffffffffffffffffffffffffffffffffffffffffffffff, fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff.'),
(5, '70', 'nithish', '9741340028', 'mardala', 'Mardala bus stand ka', 'kadaba', 'Karnataka', 'mardala, Mardala bus stand kadaba, kadaba, Karnataka.'),
(7, '71', 'nithish', '999999999', 'usjsjs', 'syyse', 'hehhwwhsh', 'tsggdhdh', 'usjsjs, syyse, hehhwwhsh, tsggdhdh.'),
(8, '71', 'test', '0000000000', '0988', 'test', 'test', 'test', '0988, test, test, test.'),
(9, '71', 'yhhhgh', '8888888888', 'jjhhh', 'ghhhgfggh', 'gfhiggg', 'gthjgcgj', 'jjhhh, ghhhgfggh, gfhiggg, gthjgcgj.'),
(10, '71', 'uuu', '3633321225', 'ggg', 'gggg', 'gggg', 'ccf', 'ggg, gggg, gggg, ccf.'),
(11, '72', 'hh', '2222222222', 'yyy', 'fggg', 'ghhh', 'bghhj', 'yyy, fggg, ghhh, bghhj.'),
(12, '74', 'xvcxzvxcvcv', '7777777777', 'xdvfxvfx', 'fsvgfxv xvxv xvfxv', 'vxfx', 'xfvgfxf vxf xfv', 'xdvfxvfx, fsvgfxv xvxv xvfxv, vxfx, xfvgfxf vxf xfv.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `useraddress`
--
ALTER TABLE `useraddress`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `useraddress`
--
ALTER TABLE `useraddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
