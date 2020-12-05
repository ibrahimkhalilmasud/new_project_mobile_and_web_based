-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 08:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `institution`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `fees_amount` float DEFAULT NULL,
  `date_of_pay` timestamp NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `school_id`, `fees_amount`, `date_of_pay`, `student_id`) VALUES
(16, 22, 1200, '2020-12-05 05:23:45', 46);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `number` text NOT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `school_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `username`, `password`, `name`, `email`, `address`, `number`, `date_of_register`, `school_id`, `student_id`) VALUES
(172, 'johiru_father', '$2y$10$koUuJSUipBmtuSyHv2mKL.stRXfJ15KbYtW89lClPCpk47A/eQXWO', 'johirul_father', 'johirul_father@school.com', 'jalan Putra', '231321454', '2020-12-03 20:46:38', 21, 45),
(173, 'admin_father', '$2y$10$QTdvhtbSaNILihVMTfm/B.5n9laWWX82WdzYnFtW73lEtYM4Xe2tq', 'adminfather', 'admin@admin.com', 'kl', '021020', '2020-12-05 05:21:30', 22, 46),
(174, 'admin', '$2y$10$/z.jz3MSsVO2y0a/z3gWLegWb0mIeHqG.Ex//FkzwJ6d9XLVeK9Ei', 'admin', 'admin@admin.com', 'kl', '013214', '2020-12-05 06:15:45', 22, 47);

-- --------------------------------------------------------

--
-- Table structure for table `people_emergency`
--

CREATE TABLE `people_emergency` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `relation` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people_emergency`
--

INSERT INTO `people_emergency` (`id`, `school_id`, `name`, `number`, `relation`, `email`, `address`, `date_of_register`, `student_id`) VALUES
(14, 22, 'Admin@father', '02131052', 'Father', 'Admin@admin.com', 'Kl', '2020-12-05 05:22:48', 46);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `number` text NOT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `username`, `password`, `name`, `email`, `address`, `number`, `date_of_register`) VALUES
(21, 'parents2', '$2y$10$o.YmMnBMm8rULbLzJC0KIunJSlICMwQXEj0a1o/0bT0LPwMUPBeMy', 'My school', 'parents2@school.com', 'parents2@school.com', '031465465', '2020-12-03 20:10:55'),
(22, 'admin', '$2y$10$98Bm29o2EGEiIXzvH/3py.RQaTAET7e9jbVriU1TivZZjLRWoEouS', 'Admin', 'admin@school.com', 'Head of the school', '012315664', '2020-12-03 21:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `job` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `grade` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `school_id`, `username`, `password`, `name`, `grade`, `date_of_birth`, `address`, `date_of_register`) VALUES
(45, 21, 'jony', '$2y$10$qZV7ulJF3yOs6XmeqggfPuWE5aiXYy2ClcFr82aZtOdaC7DF2YmXy', 'Johirul Islam', '4', '2/2/2000', 'chow Kit, Malaysia', '2020-12-03 20:25:20'),
(46, 22, 'admin', '$2y$10$6ODlQCIv.zfdXja4/l34JOmw/FnVkZd0/lIpn..R2jvn2eBO/zb8S', 'admin', '2d', '20/2/1997', 'kl', '2020-12-05 05:19:28'),
(47, 22, 'father', '$2y$10$kaftVuV5VCM9BLmTdYDpQe.tjHHgV1gB1VY7zJq1r2JztsF//pxhq', 'admin', '3d', '1/1/1997', 'kl', '2020-12-05 06:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `number` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `school_id`, `username`, `password`, `name`, `subject`, `number`, `email`, `address`, `date_of_register`) VALUES
(23, 22, 'admin', '$2y$10$qVIAn7d9WPRVZfWG/.gkG.dFsAAjVfLA/tQmsGBXAIFajwt9ZYyF.', 'Kamal', 'Math', '312321320', 'math@math.com', 'kl', '2020-12-05 05:22:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `people_emergency`
--
ALTER TABLE `people_emergency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH;

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `school_id` (`school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `people_emergency`
--
ALTER TABLE `people_emergency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `fees_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `parents_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `people_emergency`
--
ALTER TABLE `people_emergency`
  ADD CONSTRAINT `people_emergency_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `people_emergency_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `staffs_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
