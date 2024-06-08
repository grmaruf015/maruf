-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 06:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edge_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`id`, `name`, `email`, `phone`, `gender`, `dob`, `course_id`) VALUES
(1, 'Abir Kabir', 'abir@gmail.com', '0172398239', 'Male', '2009-06-17', 2),
(2, 'Doha', 'doha@gmail.com', '0676767', 'Male', '2024-06-13', 4),
(5, 'Nafisa', 'nafisa@gmail.com', '02398', 'Female', '2024-06-03', 2),
(6, 'GOLAM RABBANI MARUF', 'rabbanimaruf09@gmail.com', '0157955', 'Male', '2024-06-13', 1),
(8, 'Afarin', 'afrin@gmail.com', '01579554', 'Male', '2024-03-06', 2),
(9, 'Afarin', 'afrin@gmail.com', '01579554', 'Male', '2024-03-06', 1),
(10, 'GOLAM RABBANI MARUF', 'golamrabbanimaruf@gmail.com', '01579', 'Male', '2024-06-06', 3),
(13, 'Afrin', 'afrin@gmail.com', '01579', 'Female', '2024-06-05', 1),
(14, 'Golam rabbani Maruf', 'golamrabbanimaruf@gmail.com', '0157955', 'Male', '2024-06-03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(255) NOT NULL,
  `level` varchar(50) NOT NULL,
  `prerequisite` varchar(200) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `content`, `level`, `prerequisite`, `duration`) VALUES
(1, 'Smart Office Application', 'Microsoft Office Word, Excel, Powerpoint and Computer Fundamentals', 'Foundation', 'Any discipline', 60),
(2, 'Basic Web Development', 'HTML, CSS, Javascript, PHP, MySQL', 'Foundation', 'Any Discipline', 60),
(3, 'Database', 'MySQL, Oracle', 'Intermediate', 'Science Background', 80),
(4, 'Mobile Application development', 'Anddroid or Flutter', 'Intermediate', 'Science Background', 80);

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`id`, `description`, `created_at`) VALUES
(1, 'Registration is free', '2024-06-05 18:44:29'),
(2, 'Training kits will be provided', '2024-06-05 18:44:29'),
(3, 'You will get a certificate after finishing any course', '2024-06-05 19:29:42'),
(4, 'Hands on practical Class', '2024-06-05 19:29:42'),
(5, 'Session will be conducted by University teacher or Industry Expert', '2024-06-05 19:30:25'),
(6, 'Mentorship Session', '2024-06-05 19:30:25'),
(7, 'Freelanching guidelines', '2024-06-05 19:30:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
