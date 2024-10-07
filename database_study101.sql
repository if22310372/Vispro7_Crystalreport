-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 07:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_study101`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brainhack`
--

CREATE TABLE `tbl_brainhack` (
  `brainhack_id` int(11) NOT NULL,
  `brainhack_pomodoro` time NOT NULL,
  `brainhack_flashcard` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_calender`
--

CREATE TABLE `tbl_calender` (
  `calender_id` int(11) NOT NULL,
  `calender_title` varchar(30) NOT NULL,
  `calender_content` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diary`
--

CREATE TABLE `tbl_diary` (
  `diary_id` int(11) NOT NULL,
  `diary_title` varchar(30) NOT NULL,
  `diary_content` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task`
--

CREATE TABLE `tbl_task` (
  `task_id` int(11) NOT NULL,
  `task_title` varchar(30) NOT NULL,
  `task_duedate` datetime NOT NULL,
  `task_status` varchar(30) NOT NULL,
  `task_todo` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tracker`
--

CREATE TABLE `tbl_tracker` (
  `assesment_id` int(11) NOT NULL,
  `assesment_title` varchar(30) NOT NULL,
  `assesment_valueName` varchar(30) NOT NULL,
  `assesment_value` int(11) NOT NULL,
  `assesment_type` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `usere_email` varchar(30) NOT NULL,
  `user_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brainhack`
--
ALTER TABLE `tbl_brainhack`
  ADD PRIMARY KEY (`brainhack_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_calender`
--
ALTER TABLE `tbl_calender`
  ADD PRIMARY KEY (`calender_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_diary`
--
ALTER TABLE `tbl_diary`
  ADD PRIMARY KEY (`diary_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_tracker`
--
ALTER TABLE `tbl_tracker`
  ADD PRIMARY KEY (`assesment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brainhack`
--
ALTER TABLE `tbl_brainhack`
  MODIFY `brainhack_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_calender`
--
ALTER TABLE `tbl_calender`
  MODIFY `calender_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_diary`
--
ALTER TABLE `tbl_diary`
  MODIFY `diary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_task`
--
ALTER TABLE `tbl_task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tracker`
--
ALTER TABLE `tbl_tracker`
  MODIFY `assesment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_brainhack`
--
ALTER TABLE `tbl_brainhack`
  ADD CONSTRAINT `tbl_brainhack_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_calender`
--
ALTER TABLE `tbl_calender`
  ADD CONSTRAINT `tbl_calender_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_diary`
--
ALTER TABLE `tbl_diary`
  ADD CONSTRAINT `tbl_diary_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD CONSTRAINT `tbl_task_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_tracker`
--
ALTER TABLE `tbl_tracker`
  ADD CONSTRAINT `tbl_tracker_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
