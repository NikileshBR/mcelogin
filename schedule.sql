-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2023 at 10:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schedule`
--

-- --------------------------------------------------------

--
-- Table structure for table `cse5a`
--

CREATE TABLE `cse5a` (
  `day_` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL,
  `h3` text NOT NULL,
  `h4` text NOT NULL,
  `h5` text NOT NULL,
  `h6` text NOT NULL,
  `h7` text NOT NULL,
  `h8` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cse5a`
--

INSERT INTO `cse5a` (`day_`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`) VALUES
('mon', 'DC', 'WP', 'WP', 'AJ', '', '', 'CIP', 'CIP'),
('tue', 'DBMS', 'OS', 'DC', 'AJ', 'DBMS LAB', 'DBMS LAB', '', ''),
('wed', 'DC', 'DBMS', 'OS', 'WP', 'AJ LAB', 'AJ LAB', '', ''),
('thu', 'OS', 'DBMS', 'DC', 'AJ', 'WP LAB', 'WP LAB', '', ''),
('fri', 'WP', 'DBMS', 'TME', 'TME', '', '', '', ''),
('sat', '', '', 'TME', 'TME', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cse5c`
--

CREATE TABLE `cse5c` (
  `day_` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL,
  `h3` text NOT NULL,
  `h4` text NOT NULL,
  `h5` text NOT NULL,
  `h6` text NOT NULL,
  `h7` text NOT NULL,
  `h8` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cse5c`
--

INSERT INTO `cse5c` (`day_`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`) VALUES
('mon', 'DBMS', 'OS', 'DC', 'WP', 'AJ LAB', 'AJ LAB', '', ''),
('tue', 'OS', 'DBMS', 'DC', 'TME', '', '', '', ''),
('wed', 'DC', 'TME', 'DBMS', 'AJ', 'DBMS LAB', 'DBMS LAB', 'WP LAB', 'WP LAB'),
('thu', 'CIP', 'CIP', 'TME', 'WP', '', '', '', ''),
('fri', 'WP', 'DC', 'OS', 'AJ', '', '', '', ''),
('sat', 'TME', 'DBMS', 'AJ', 'OS', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cse7a`
--

CREATE TABLE `cse7a` (
  `day_` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL,
  `h3` text NOT NULL,
  `h4` text NOT NULL,
  `h5` text NOT NULL,
  `h6` text NOT NULL,
  `h7` text NOT NULL,
  `h8` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cse7a`
--

INSERT INTO `cse7a` (`day_`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`) VALUES
('mon', 'CC', 'IOT', 'NCSL', 'OE', '', '', '', ''),
('tue', 'NSCL', 'CC', 'IOT', 'OE', 'ML', 'BDA', '', ''),
('wed', 'IOT', 'ML', 'NSCL', 'OE', '', '', '', ''),
('thu', 'NSCL', 'ML', 'NSCL', 'OE', '', '', '', ''),
('fri', 'NSCL', 'ML', 'CC', 'IOT', '', 'BDA', 'ML LAB', 'ML LAB'),
('sat', 'ML', 'BDA', 'MP LAB', 'MP LAB', '', 'AI', 'AI', 'AI');

-- --------------------------------------------------------

--
-- Table structure for table `cse7b`
--

CREATE TABLE `cse7b` (
  `day_` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL,
  `h3` text NOT NULL,
  `h4` text NOT NULL,
  `h5` text NOT NULL,
  `h6` text NOT NULL,
  `h7` text NOT NULL,
  `h8` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cse7b`
--

INSERT INTO `cse7b` (`day_`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`) VALUES
('mon', '', 'BDA', 'ML', 'OE', '', 'CC', 'ML LAB', 'ML LAB'),
('tue', 'IOT', 'ML', 'NSCL', 'OE', '', '', 'NS LAB', 'NS LAB'),
('wed', 'CC', 'NSCL', 'IOT', 'OE', '', '', 'ML', 'BDA'),
('thu', 'BDA', 'IOT', 'NSCL', 'ML', '', '', '', ''),
('fri', 'ML', 'NSCL', 'BDA', 'CC', '', '', '', ''),
('sat', 'NSCL', 'CC', 'MP LAB', 'MP LAB', '', 'AI', 'AI', 'AI');

-- --------------------------------------------------------

--
-- Table structure for table `grievance`
--

CREATE TABLE `grievance` (
  `usn` varchar(40) NOT NULL,
  `name` text NOT NULL,
  `subject` text NOT NULL,
  `text` longtext NOT NULL,
  `radio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grievance`
--

INSERT INTO `grievance` (`usn`, `name`, `subject`, `text`, `radio`) VALUES
('4MC20CS006', 'Akhil Babu', 'Faculty Mentoring', 'Usage of chits for writing grievances seems unprofessional and is wastage of paper.', 'yes'),
('4MC20CS013', 'Anish Kashyap', 'Mobile Phone Usage', 'After use of mobile phones being restricted in campus, it has been difficult to stay updated with the class timings.', 'yes'),
('4MC20CS021', 'B R Nikilesh', 'Break Time', 'Due to hectic academic schedule it is difficult to manage studies with other activities.', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `lecturerinfo`
--

CREATE TABLE `lecturerinfo` (
  `name` text NOT NULL,
  `tid` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lectureclass` longtext NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturerinfo`
--

INSERT INTO `lecturerinfo` (`name`, `tid`, `email`, `lectureclass`, `password`) VALUES
('Prakash', '123', 'prakash@gmail.com', 'cse5a,cse5c,cse7a,cse7b', '$2y$10$09ZBCQrXslMZ7WiW9yjAPeYpbxSVlT7cID13UOhvbJdCmvnqWxMVq'),
('Suresh', '456', 'suresh@gmail.com', 'cse5c,cse7b', '$2y$10$U9MYtSh0AbQE/uT6XuTG6Of.NkNy4d1Kp0NoKHiFelQmeeAvvhe2C'),
('Shanti', '789', 'shanti@gmail.com', 'cse5a,cse5c,cse7a', '$2y$10$gtOCZhTt8LG3C/a7mXNrJOPrfUC5BMbqBJCOqXao2A9QCzzaxZnvu');

-- --------------------------------------------------------

--
-- Table structure for table `ocse5a`
--

CREATE TABLE `ocse5a` (
  `day_` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL,
  `h3` text NOT NULL,
  `h4` text NOT NULL,
  `h5` text NOT NULL,
  `h6` text NOT NULL,
  `h7` text NOT NULL,
  `h8` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ocse5a`
--

INSERT INTO `ocse5a` (`day_`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`) VALUES
('mon', 'DC', 'WP', 'WP', 'AJ', '', '', 'CIP', 'CIP'),
('tue', 'DBMS', 'OS', 'DC', 'AJ', 'DBMS LAB', 'DBMS LAB', '', ''),
('wed', 'DC', 'DBMS', 'OS', 'WP', 'AJ LAB', 'AJ LAB', '', ''),
('thu', 'OS', 'DBMS', 'DC', 'AJ', 'WP LAB', 'WP LAB', '', ''),
('fri', 'WP', 'DBMS', 'TME', 'TME', '', '', '', ''),
('sat', '', '', 'TME', 'TME', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ocse5c`
--

CREATE TABLE `ocse5c` (
  `day_` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL,
  `h3` text NOT NULL,
  `h4` text NOT NULL,
  `h5` text NOT NULL,
  `h6` text NOT NULL,
  `h7` text NOT NULL,
  `h8` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ocse5c`
--

INSERT INTO `ocse5c` (`day_`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`) VALUES
('mon', 'DBMS', 'OS', 'DC', 'WP', 'AJ LAB', 'AJ LAB', '', ''),
('tue', 'OS', 'DBMS', 'DC', 'TME', '', '', '', ''),
('wed', 'DC', 'TME', 'DBMS', 'AJ', 'DBMS LAB', 'DBMS LAB', 'WP LAB', 'WP LAB'),
('thu', 'CIP', 'CIP', 'TME', 'WP', '', '', '', ''),
('fri', 'WP', 'DC', 'OS', 'AJ', '', '', '', ''),
('sat', 'TME', 'DBMS', 'AJ', 'OS', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ocse7a`
--

CREATE TABLE `ocse7a` (
  `day_` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL,
  `h3` text NOT NULL,
  `h4` text NOT NULL,
  `h5` text NOT NULL,
  `h6` text NOT NULL,
  `h7` text NOT NULL,
  `h8` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ocse7a`
--

INSERT INTO `ocse7a` (`day_`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`) VALUES
('mon', 'CC', 'IOT', 'NCSL', 'OE', '', '', '', ''),
('tue', 'NSCL', 'CC', 'IOT', 'OE', 'ML', 'BDA', '', ''),
('wed', 'IOT', 'ML', 'NSCL', 'OE', '', '', '', ''),
('thu', 'NSCL', 'ML', 'NSCL', 'OE', '', '', '', ''),
('fri', 'NSCL', 'ML', 'CC', 'IOT', '', 'BDA', 'ML LAB', 'ML LAB'),
('sat', 'ML', 'BDA', 'MP LAB', 'MP LAB', '', 'AI', 'AI', 'AI');

-- --------------------------------------------------------

--
-- Table structure for table `ocse7b`
--

CREATE TABLE `ocse7b` (
  `day_` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL,
  `h3` text NOT NULL,
  `h4` text NOT NULL,
  `h5` text NOT NULL,
  `h6` text NOT NULL,
  `h7` text NOT NULL,
  `h8` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ocse7b`
--

INSERT INTO `ocse7b` (`day_`, `h1`, `h2`, `h3`, `h4`, `h5`, `h6`, `h7`, `h8`) VALUES
('mon', '', 'BDA', 'ML', 'OE', '', 'CC', 'ML LAB', 'ML LAB'),
('tue', 'IOT', 'ML', 'NSCL', 'OE', '', '', 'NS LAB', 'NS LAB'),
('wed', 'CC', 'NSCL', 'IOT', 'OE', '', '', 'ML', 'BDA'),
('thu', 'BDA', 'IOT', 'NSCL', 'ML', '', '', '', ''),
('fri', 'ML', 'NSCL', 'BDA', 'CC', '', '', '', ''),
('sat', 'NSCL', 'CC', 'MP LAB', 'MP LAB', '', 'AI', 'AI', 'AI');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `Name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `usn` varchar(14) NOT NULL,
  `password` varchar(100) NOT NULL,
  `bys` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`Name`, `email`, `usn`, `password`, `bys`) VALUES
('Akhil Babu', 'akhil@gmail.com', '4MC20CS006', '$2y$10$lvcFyxB8SPpdwkQx5fGUROjQNb/LwQulLKj0V1xglJvJVdhk8Kmom', 'CSE5A'),
('Anish Kashyap', 'anish@gmail.com', '4MC20CS013', '$2y$10$xkowEYe8ngMvNS1VS5KcreodL1vuwoAmTyrIyK40hla0BrieylLAW', 'CSE5A'),
('B R Nikilesh', 'brnikilesh8@gmail.com', '4MC20CS021', '$2y$10$NVoosJKu3Vja/T8JY6zixeQ3iUzhMbYHSbyOa6062UcUbQMKWvB46', 'CSE5A');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `votername` text NOT NULL,
  `voterusn` varchar(40) NOT NULL,
  `candidate` text NOT NULL,
  `candidateusn` varchar(40) NOT NULL,
  `radio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`votername`, `voterusn`, `candidate`, `candidateusn`, `radio`) VALUES
('B R Nikilesh', '4MC20CS021', 'B R Nikilesh', '4MC20CS021', 'yes'),
('Anish Kashyap', '4MC20CS013', 'Anish Kashyap', '4MC20CS013', 'yes'),
('Anish Kashyap', '4MC20CS013', 'B R Nikilesh', '4MC20CS021', 'yes'),
('Akhil Babu', '4MC20CS006', 'Akhil Babu', '4MC20CS006', 'yes'),
('Akhil Babu', '4MC20CS006', 'Anish Kashyap', '4MC20CS013', 'yes'),
('Akhil Babu', '4MC20CS006', 'B R Nikilesh', '4MC20CS021', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grievance`
--
ALTER TABLE `grievance`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`usn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
