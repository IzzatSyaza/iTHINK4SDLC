-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 06:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbuser`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbackdb`
--

CREATE TABLE `feedbackdb` (
  `rating` varchar(10) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedbackdb`
--

INSERT INTO `feedbackdb` (`rating`, `comment`, `name`, `email`) VALUES
('good', 'TERBOEK!', 'Ashraf', 'naqi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `forum_1`
--

CREATE TABLE `forum_1` (
  `id` int(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_1`
--

INSERT INTO `forum_1` (`id`, `email`, `title`, `date`, `question`) VALUES
(53, 'acap@gmail.com', 'How to prevent the issue of bully', '2021-01-06 00:54:44', 'Title');

-- --------------------------------------------------------

--
-- Table structure for table `forum_2`
--

CREATE TABLE `forum_2` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `forum_3`
--

CREATE TABLE `forum_3` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_1`
--

CREATE TABLE `forum_reply_1` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `forumtitle` varchar(500) NOT NULL,
  `reply` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_reply_1`
--

INSERT INTO `forum_reply_1` (`id`, `email`, `forumtitle`, `reply`) VALUES
(58, 'acap@gmail.com', 'How to prevent the issue of bully', 'IDK');

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_2`
--

CREATE TABLE `forum_reply_2` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `forumtitle` varchar(500) NOT NULL,
  `reply` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply_3`
--

CREATE TABLE `forum_reply_3` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `forumtitle` varchar(500) NOT NULL,
  `reply` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(21, 'Naqiuddin', 'Jupri', 'np@gmail.com', 'A12345'),
(20, 'Ashraf', 'Aiman', 'acap@gmail.com', 'A12345');

-- --------------------------------------------------------

--
-- Table structure for table `markquiz1`
--

CREATE TABLE `markquiz1` (
  `email` varchar(40) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `markquiz1`
--

INSERT INTO `markquiz1` (`email`, `marks`) VALUES
('acap@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `markquiz2`
--

CREATE TABLE `markquiz2` (
  `email` varchar(40) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `markquiz2`
--

INSERT INTO `markquiz2` (`email`, `marks`) VALUES
('acap@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profiledb`
--

CREATE TABLE `profiledb` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` text DEFAULT NULL,
  `mobileno` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `profilepicture` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profiledb`
--

INSERT INTO `profiledb` (`id`, `email`, `address`, `mobileno`, `gender`, `profilepicture`) VALUES
(7, 'acap@gmail.com', '', '', 'Male', './pics/male.png'),
(8, 'np@gmail.com', '', '01234567', 'Male', './pics/male.png');

-- --------------------------------------------------------

--
-- Table structure for table `quiz1`
--

CREATE TABLE `quiz1` (
  `question` varchar(5) NOT NULL,
  `answer` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz1`
--

INSERT INTO `quiz1` (`question`, `answer`) VALUES
('q1', 'a'),
('q2', 'b'),
('q3', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `quiz2`
--

CREATE TABLE `quiz2` (
  `question` varchar(5) NOT NULL,
  `answer` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz2`
--

INSERT INTO `quiz2` (`question`, `answer`) VALUES
('q1', 'a'),
('q2', 'b'),
('q3', 'c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbackdb`
--
ALTER TABLE `feedbackdb`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `forum_1`
--
ALTER TABLE `forum_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_2`
--
ALTER TABLE `forum_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_3`
--
ALTER TABLE `forum_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_reply_1`
--
ALTER TABLE `forum_reply_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_reply_2`
--
ALTER TABLE `forum_reply_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_reply_3`
--
ALTER TABLE `forum_reply_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markquiz1`
--
ALTER TABLE `markquiz1`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `markquiz2`
--
ALTER TABLE `markquiz2`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `profiledb`
--
ALTER TABLE `profiledb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz1`
--
ALTER TABLE `quiz1`
  ADD PRIMARY KEY (`question`);

--
-- Indexes for table `quiz2`
--
ALTER TABLE `quiz2`
  ADD PRIMARY KEY (`question`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `forum_1`
--
ALTER TABLE `forum_1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `forum_2`
--
ALTER TABLE `forum_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `forum_3`
--
ALTER TABLE `forum_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forum_reply_1`
--
ALTER TABLE `forum_reply_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `forum_reply_2`
--
ALTER TABLE `forum_reply_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `forum_reply_3`
--
ALTER TABLE `forum_reply_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `profiledb`
--
ALTER TABLE `profiledb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
