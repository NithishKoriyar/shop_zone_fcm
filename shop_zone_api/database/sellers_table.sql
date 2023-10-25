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
-- Table structure for table `sellers_table`
--

CREATE TABLE `sellers_table` (
  `seller_id` int(11) NOT NULL,
  `seller_name` text NOT NULL,
  `seller_email` varchar(20) NOT NULL,
  `seller_password` varchar(250) NOT NULL,
  `seller_profile` varchar(250) NOT NULL,
  `seller_phone` varchar(10) NOT NULL,
  `seller_address` varchar(250) NOT NULL,
  `rating` double NOT NULL,
  `earnings` int(100) NOT NULL,
  `sellerDeviceToken` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers_table`
--

INSERT INTO `sellers_table` (`seller_id`, `seller_name`, `seller_email`, `seller_password`, `seller_profile`, `seller_phone`, `seller_address`, `rating`, `earnings`, `sellerDeviceToken`) VALUES
(72, 's1', 's1@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'sellerProfile/64e837a79c23c_images.jpg', '2147483647', 'kadaba', 0, 0, ''),
(73, 's2', 's2@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'sellerProfile/64e839f8b0a4b_American-psycho-patrick-bateman (1).jpg', '987678909', 'kadaba', 3.25, 1332000, ''),
(74, 'sony', 's3@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'sellerProfile/64f94b0060063_images (2).png', '2147483647', 'kadaba mardhla', 3.5, 60000, 'fhtZj129SEiDNrD0yMujuj:APA91bH1gvhEtCUT7j_DY2f_9-_iBFHYGt6HGUyIBzfTmL68nHYEIPvYWAbVhNE4D50OdqqnpJWvTip2voHYkBQnQ7im2kXZNDWbu2wySkdezm_TzFiWIKcG_K0YjzGjcqjT62-nHsE0'),
(79, 'test', 'test@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'sellerProfile/651b9872cf264_Screenshot_2023-09-27-00-01-06-93_1c337646f29875672b5a61192b9010f9_20231003_095824.jpg', '9456498564', 'kadaba Mardhala', 0, 0, 'fhtZj129SEiDNrD0yMujuj:APA91bH1gvhEtCUT7j_DY2f_9-_iBFHYGt6HGUyIBzfTmL68nHYEIPvYWAbVhNE4D50OdqqnpJWvTip2voHYkBQnQ7im2kXZNDWbu2wySkdezm_TzFiWIKcG_K0YjzGjcqjT62-nHsE0'),
(80, 'sony sellers', 'sony@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'sellerProfile/651ceffa1729f_images (2)_20231004_102324.png', '6666666666', 'ddertdg dsrgrs sd r sgsrg', 2.5, 540000, 'fmYhRwPIT5SsZEuwjPmEOk:APA91bFFYWmt9oa03eNa5N-nO_VtDJcPLz3l54t7EaLFwesYisTTG-QwKtuLap5puc2VZBgH27bafRKLIsFGdfDap3m-TzGJUKx2yaPvv4lzyNWohUZd3aWFjDukkPqiMKDzIHeezE_h');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sellers_table`
--
ALTER TABLE `sellers_table`
  ADD PRIMARY KEY (`seller_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sellers_table`
--
ALTER TABLE `sellers_table`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
