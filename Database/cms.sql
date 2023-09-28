-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 28, 2023 at 09:45 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '1234', '2022-04-22 12:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Normal', 'Basic Problems', '2022-05-11 10:54:06', ''),
(2, 'General', '', '2022-05-28 07:10:55', ''),
(3, 'High-Demand', 'Common Problem', '2022-05-28 07:10:55', ''),
(4, 'Personal', 'Personal Problem', '2022-05-28 07:10:55', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2022-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2022-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2022-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2022-05-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2022-05-15 17:08:26'),
(6, 25, 'in process', 'In process', '2022-05-31 11:03:51'),
(7, 24, 'closed', 'done', '2022-05-31 11:04:25'),
(8, 25, 'closed', 'done', '2022-05-31 11:13:05'),
(9, 26, 'in process', 'skdj', '2022-05-31 11:22:59'),
(10, 26, 'closed', 'done', '2022-05-31 11:23:37'),
(11, 28, 'closed', 'this problem is solved;', '2022-05-31 13:21:45'),
(12, 27, 'closed', 'Done', '2022-05-31 16:26:32'),
(13, 29, 'in process', 'done', '2022-06-01 06:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'MIDC area', 'Industrial area', '2016-10-18 11:35:02', '[value-5]'),
(2, 'VP college', 'College', '2022-10-18 11:35:02', '[value-5]'),
(3, 'Suryanagari', '', '2016-10-18 11:35:02', '31-05-2022 07:04:51 PM'),
(4, 'Naks Garden', 'a', '2016-10-18 11:35:58', '28-03-2022 03:40:02 PM'),
(5, 'Subhadra Mall', 'Baramati', '2017-03-28 07:20:36', '31-05-2022 07:03:50 PM'),
(6, 'City-Inn Chowk', 'near City-Inn hotel', '2017-06-11 10:54:12', '31-05-2022 07:04:25 PM');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 3, 'Road Problem', '2022-03-28 07:11:07', ''),
(2, 3, 'Light Problem', '2022-03-28 07:11:20', ''),
(3, 3, 'Water Problem', '2022-05-11 10:54:06', '[value-5]'),
(4, 3, 'Traffic', '2022-02-11 10:54:06', '[value-5]'),
(5, 3, 'Pollution', '2022-05-11 10:54:06', '[value-5]'),
(10, 3, 'Other', '2022-04-01 10:54:06', '[value-5]'),
(11, 2, 'Road Problem', '2022-03-28 07:11:07', ''),
(12, 2, 'Light Problem', '2022-03-28 07:11:07', ''),
(13, 2, 'Water Problem', '2022-03-28 07:11:07', ''),
(14, 2, 'Other', '2022-03-28 07:11:07', ''),
(16, 1, 'Road Problem', '2022-03-28 07:11:07', ''),
(17, 1, 'Light Problem', '2022-03-28 07:11:07', ''),
(18, 1, 'Water Problem', '2022-03-28 07:11:07', ''),
(20, 4, 'Pollution', '2022-03-28 07:11:07', ''),
(21, 4, 'Light Problem', '2022-03-28 07:11:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(24, 4, 2, 'Select Subcategory', 'General Query', 'fsdfs', 'asjd', 'sdfja', '', '2022-05-31 09:58:34', 'closed', '2022-05-31 11:04:25'),
(25, 4, 3, 'Road Problem', 'General Query', 'VP college', 'na', 'problem', 'wMsI06.png', '2022-05-31 10:46:50', 'closed', '2022-05-31 11:13:05'),
(26, 1, 1, 'Road Problem', 'General Query', 'VP college', 'na', 'problme', 'profile.png', '2022-05-31 11:14:03', 'closed', '2022-05-31 11:23:37'),
(27, 1, 1, 'Select Subcategory', ' Complaint', 'MIDC area', 'Immediate action required', 'problem', '', '2022-05-31 13:16:00', 'closed', '2022-05-31 16:26:32'),
(28, 1, 2, 'Road Problem', 'General Query', 'Cityinn Chouk', 'Important', 'we are facing this problem since 2-3 week.\r\nwe request you to please resolve this problem', '4b9944847bd5ddb13fa2bf5f096ca212.png', '2022-05-31 13:18:49', 'closed', '2022-05-31 13:21:45'),
(29, 5, 3, 'Water Problem', ' Complaint', 'Naks Garden', 'important', 'insufficiency of water,\r\nnow days i am facing shortage of water.', '', '2022-05-31 13:30:11', 'in process', '2022-06-01 06:39:55'),
(30, 1, 3, 'Water Problem', 'General Query', 'MIDC area', 'Immediate action required', 'we are facing this problem since 1 month, please resolve this problem.', '', '2022-05-31 16:23:43', NULL, '0000-00-00 00:00:00'),
(31, 7, 3, 'Light Problem', ' Complaint', 'City-Inn Chowk', 'Important', 'Problem', '', '2022-05-31 16:43:19', NULL, '0000-00-00 00:00:00'),
(32, 1, 1, 'Road Problem', ' Complaint', 'VP college', 'Required', 'Required to solve the problem', '', '2022-05-31 16:45:06', NULL, '0000-00-00 00:00:00'),
(33, 1, 2, 'Light Problem', 'General Query', 'Subhadra Mall', 'NA', 'General Problem', 'wMsI06.png', '2022-05-31 16:45:51', NULL, '0000-00-00 00:00:00'),
(34, 8, 3, 'Light Problem', 'General Query', 'Naks Garden', 'compalin 1234', 'na', '', '2023-01-19 21:52:34', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(8, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2022-05-11 17:47:51', '', 0),
(9, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2022-05-12 17:47:54', '', 0),
(10, 0, 'fsdfsdff', 0x3a3a3100000000000000000000000000, '2022-05-12 17:48:11', '', 0),
(18, 0, 'test@gm.com', 0x3a3a3100000000000000000000000000, '2022-05-13 10:48:50', '', 0),
(19, 5, 'abc@abc.com', 0x3a3a3100000000000000000000000000, '2022-05-13 10:56:30', '11-06-2017 04:39:15 PM', 1),
(20, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2022-05-13 11:13:28', '11-06-2017 04:45:46 PM', 1),
(21, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2022-05-13 11:19:45', '11-06-2017 04:50:02 PM', 1),
(22, 1, 'abhi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-14 18:26:07', '', 1),
(23, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-15 17:05:22', '', 0),
(24, 0, 'abhi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-31 17:05:32', '', 0),
(25, 1, 'abhi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-31 17:07:12', '01-06-2022 12:06:21 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'abhijit chavan', 'abhi@gmail.com', '072bcc3744ebd5ddbf9d21b13757bbbf', 1234567890, 'at post baramti,baramati', 'VP college', 'india', 413116, '48aeb12ad8929b64d8570edfdefa5199.png', '2022-05-31 09:52:38', '2022-05-31 16:20:08', 1),
(3, 'abhjit chavan', '1234@abhi', '81dc9bdb52d04dc20036dbd8313ed055', 8605755236, NULL, NULL, NULL, NULL, '0b9df9129ffc3836f13d87127dcaa3d4jpeg', '2022-05-30 14:40:47', '2022-05-31 12:49:49', 1),
(5, 'Satyajeet ', 'jeet6@gmail.com', 'f379eaf3c831b04de153469d1bec345e', 6666666666, NULL, NULL, NULL, NULL, NULL, '2022-05-31 13:27:00', '0000-00-00 00:00:00', 1),
(6, 'Abhijit Sukare', 'abhis@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1231234560, NULL, NULL, NULL, NULL, NULL, '2022-05-31 16:41:52', '0000-00-00 00:00:00', 1),
(7, 'Akki', 'akki@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 8967341256, NULL, NULL, NULL, NULL, NULL, '2022-05-31 16:42:32', '0000-00-00 00:00:00', 1),
(8, 'xyz abc', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 8898989898, NULL, NULL, NULL, NULL, NULL, '2023-01-19 21:51:14', '0000-00-00 00:00:00', 1),
(9, 'abhijit ', 'abhijit@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 8989898989, NULL, NULL, NULL, NULL, NULL, '2023-09-28 07:43:47', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
