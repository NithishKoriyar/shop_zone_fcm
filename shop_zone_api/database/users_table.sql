-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: sdb-63.hosting.stackcp.net
-- Generation Time: Oct 07, 2023 at 05:58 AM
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
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_profile` varchar(220) NOT NULL,
  `userDeviceToken` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`user_id`, `user_name`, `user_email`, `user_password`, `user_profile`, `userDeviceToken`) VALUES
(63, 'u1', 'u1@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'userProfile/64e834cd4a029_Screenshot 2023-03-15 153603.png', ''),
(64, 'u2', 'u2@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'userProfile/64e83be318cfb_images (1).jpg', ''),
(70, 'u3', 'u3@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'userProfile/64f9642495268_images.jpg', ''),
(71, 'nithish', 'u4@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'userProfile/64fc083571051_IMG-20230908-WA0023_20230909_112125.jpg', ''),
(72, 'test', 'test@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'userProfile/651b979547210_IMG_20231002_201333_181_20231003_095353.jpg', 'fhtZj129SEiDNrD0yMujuj:APA91bH1gvhEtCUT7j_DY2f_9-_iBFHYGt6HGUyIBzfTmL68nHYEIPvYWAbVhNE4D50OdqqnpJWvTip2voHYkBQnQ7im2kXZNDWbu2wySkdezm_TzFiWIKcG_K0YjzGjcqjT62-nHsE0'),
(74, 'apple', 'apple@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'userProfile/651cefa6b5a8a_images (1) (3)_20231004_102206.jpg', 'fmYhRwPIT5SsZEuwjPmEOk:APA91bFFYWmt9oa03eNa5N-nO_VtDJcPLz3l54t7EaLFwesYisTTG-QwKtuLap5puc2VZBgH27bafRKLIsFGdfDap3m-TzGJUKx2yaPvv4lzyNWohUZd3aWFjDukkPqiMKDzIHeezE_h');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
