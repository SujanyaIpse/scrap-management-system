-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 11:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escrap`
--

-- --------------------------------------------------------

--
-- Table structure for table `form_data`
--

CREATE TABLE `form_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `form_name` varchar(255) NOT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `estimated_weight` varchar(50) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'On Hold'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_data`
--

INSERT INTO `form_data` (`id`, `user_id`, `form_name`, `contact_number`, `contact_name`, `pincode`, `contact_email`, `category`, `date`, `time`, `address`, `estimated_weight`, `remarks`, `created_at`, `status`) VALUES
(4, NULL, '', '2345678901', 'Akshay Parishnath Dange', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-24', '21:33:00', 'Pune', 'Less than 20kg', 'no', '2024-05-21 13:04:39', 'Accepted'),
(5, NULL, '', '2345678901', 'Akshay Parishnath Dange', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-29', '12:20:00', 'hyd', 'More than 700kg', 'metal', '2024-05-21 13:50:48', 'Accepted'),
(6, NULL, '', '7666194604', 'Sujanya', '442505', 'sujanyaipse11@gmail.com', 'household', '2024-05-24', '11:13:00', 'Pune', '20-50kg', 'no', '2024-05-21 15:42:40', 'Accepted'),
(7, NULL, '', '4567328800', 'Akshay Parishnath Dange', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-16', '04:23:00', 'MQ-437 Ramnagar', 'Less than 20kg', '', '2024-05-22 18:50:53', 'Accepted'),
(8, NULL, '', '4567328802', 'Siddhant Sharad thool', '442505', 'siddhan5110w@gmail.com', 'household', '2024-05-24', '03:44:00', 'b AJbhjhbajkbjkbxkax', 'Less than 20kg', '', '2024-05-22 19:11:33', 'Accepted'),
(11, 1, '', '4567328800', 'Akshay Parishnath Dange', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-22', '19:41:00', 'b AJbhjhbajkbjkbxkax', 'Less than 20kg', '', '2024-05-23 09:11:34', 'Accepted'),
(12, 1, '', '7666194604', 'Siddhant Sharad thool', '442505', 'siddhan5110w@gmail.com', 'household', '2024-06-01', '16:58:00', 'Anand Park Society , Gurunanak Nagar', 'Less than 20kg', '', '2024-05-23 09:28:53', 'Accepted'),
(13, 1, '', '2345678901', 'xyz', '', 'ak@gmail.com', 'household', '2024-05-28', '18:04:00', 'b AJbhjhbajkbjkbxkax', 'Less than 20kg', '', '2024-05-23 09:31:15', 'Accepted'),
(14, 1, '', '2345678901', 'Akshay Parishnath Dange', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-16', '15:11:00', 'Anand Park Society , Gurunanak Nagar', 'Less than 20kg', '', '2024-05-23 09:37:05', 'Accepted'),
(15, 1, '', '7666194604', 'Akshay Parishnath Dange', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-29', '19:27:00', 'Anand Park Society , Gurunanak Nagar', 'Less than 20kg', '', '2024-05-23 09:53:51', 'Accepted'),
(16, 2, '', '7666194604', 'Suajnay', '442505', '', 'household', '2024-05-25', '19:28:00', 'Anand Park Society , Gurunanak Nagar', 'Less than 20kg', '', '2024-05-23 09:55:57', 'Accepted'),
(17, 2, '', '2345678901', 'abcd', '123456', '', 'enterprise', '2024-05-23', '15:35:00', 'blr', 'Less than 20kg', 'no', '2024-05-23 10:00:23', 'Accepted'),
(18, 2, '', '7666194604', 'abcd', '123456', '', 'enterprise', '2024-05-30', '15:39:00', 'chennai', 'Less than 20kg', '', '2024-05-23 10:04:42', 'Rejected'),
(19, 2, '', '7666194604', 'Sujanya Ipse', '442505', 'akshayspdange@gmail.com', 'enterprise', '2024-05-25', '06:37:00', 'chennai', '20-50kg', '', '2024-05-23 21:04:45', 'Rejected'),
(20, 2, '', '2345678901', 'Akshay Parishnath Dange', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-25', '02:13:00', 'chennai', 'More than 700kg', '', '2024-05-24 05:40:23', 'Accepted'),
(21, 2, '', '8308634459', 'Akshay ', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-25', '02:52:00', 'chennai', '20-50kg', '', '2024-05-24 07:20:43', 'Accepted'),
(22, 2, '', '8308634459', 'Akshay ', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-25', '01:51:00', 'chennai', '100-700kg', '', '2024-05-24 07:21:02', 'On Hold'),
(23, 2, '', '8308634459', 'Akshay ', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-25', '14:53:00', 'Pune', '20-50kg', '', '2024-05-24 07:21:56', 'On Hold'),
(24, 2, '', '8308634459', 'Akshay', '442505', 'akshayspdange@gmail.com', 'household', '2024-05-27', '04:04:00', 'MQ-437 Ramnagar', '20-50kg', '', '2024-05-24 08:32:55', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `mobile`, `email`, `password`, `created_at`) VALUES
(1, 'Akshay Parishnath Dange', '8308634459', 'akshayspdange@gmail.com', 'Akshay22@', '2024-05-21 11:08:18'),
(2, 'Sujanya', '7666194604', 'sujanyaipse11@gmail.com', 'Sujanya@11', '2024-05-21 15:37:44'),
(4, 'Akshay Parishnath Dange', '8308634459', 'akshayspdang@gmail.com', 'Akshay22@', '2024-05-22 20:54:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form_data`
--
ALTER TABLE `form_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form_data`
--
ALTER TABLE `form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `form_data`
--
ALTER TABLE `form_data`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `registration` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
