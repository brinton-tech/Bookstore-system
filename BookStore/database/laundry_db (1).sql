-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 01:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_form`
--

CREATE TABLE `admin_form` (
  `id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_form`
--

INSERT INTO `admin_form` (`id`, `password`) VALUES
('admin', 'test'),
('admin', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `book_form`
--

CREATE TABLE `book_form` (
  `date` date NOT NULL,
  `topwear` varchar(10) NOT NULL,
  `bottomwear` varchar(10) NOT NULL,
  `woolen` varchar(10) NOT NULL,
  `others` varchar(50) NOT NULL,
  `servicetype` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_form`
--

INSERT INTO `book_form` (`date`, `topwear`, `bottomwear`, `woolen`, `others`, `servicetype`, `name`, `email`, `phone`, `address`, `description`) VALUES
('2023-01-31', '7', '0', '0', '0', 'ironing', 'kumar', 'alokkumar@gmail.com', 1234567890, 'achhi', 'please iron properly.'),
('2023-11-27', '50', '50', '50', 'Please Wash Clean', 'stainremoval', 'brinton otieno', 'brintonotieno45@gmail.com', 786543234, 'Nairobi', 'just contact me when you reach destination'),
('2023-01-19', '0', '0', '3', '0', 'dryclean', 'Chiranjib Parida', 'chiranjibparida99@gmail.com', 7788924623, 'Plot no-324, Laxmisagar, Bhubaneswar', 'I have 3 woolen cloths. please dry clean those.');

-- --------------------------------------------------------

--
-- Table structure for table `signup_form`
--

CREATE TABLE `signup_form` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `securityquestion` varchar(50) NOT NULL,
  `securityanswer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup_form`
--

INSERT INTO `signup_form` (`id`, `name`, `email`, `password`, `phone`, `address`, `securityquestion`, `securityanswer`) VALUES
(7, 'patel', 'brintonotieno45@gmail.com', '1234', 0, '0786543234', 'nairobi', 'father'),
(8, 'Elvis Peter', 'Elvis@gmail.com', '12345', 786543234, 'Nairobi', 'petspecies', 'Dog');

-- --------------------------------------------------------

--
-- Table structure for table `status_form`
--

CREATE TABLE `status_form` (
  `email` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_form`
--

INSERT INTO `status_form` (`email`, `status`) VALUES
('alokkumar@gmail.com', ' Order Rec'),
('alokkumar@gmail.com', ' Order Rec'),
('alokkumar@gmail.com', ' Order Rec'),
('alokkumar@gmail.com', ' Order Rec'),
('alokkumar@gmail.com', ' Order Rec'),
('alokkumar@gmail.com', ' Order Rec'),
('brintonotieno45@gmail.com', 'In Progess'),
('alokkumar@gmail.com', 'Completed'),
('brintonotieno45@gmail.com', ' Order Rec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_form`
--
ALTER TABLE `book_form`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `signup_form`
--
ALTER TABLE `signup_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `signup_form`
--
ALTER TABLE `signup_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
