-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 07:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dummy_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` int(11) NOT NULL,
  `caller_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `call_duration` int(11) DEFAULT NULL,
  `call_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `caller_id`, `receiver_id`, `call_duration`, `call_date`) VALUES
(1, 1, 2, 10, '2024-01-01'),
(2, 2, 3, 15, '2024-01-02'),
(3, 3, 1, 8, '2024-01-03'),
(4, 4, 2, 12, '2024-01-04'),
(5, 5, 3, 7, '2024-01-05'),
(6, 6, 1, 20, '2024-01-06'),
(7, 7, 2, 5, '2024-01-07'),
(8, 8, 3, 18, '2024-01-08'),
(9, 9, 1, 9, '2024-01-09'),
(10, 10, 2, 14, '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message_text` text DEFAULT NULL,
  `message_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message_text`, `message_date`) VALUES
(1, 1, 2, 'Hello', '2024-01-01'),
(2, 2, 3, 'How are you?', '2024-01-02'),
(3, 3, 1, 'Good morning', '2024-01-03'),
(4, 4, 2, 'Hi there!', '2024-01-04'),
(5, 5, 3, 'What\'s up?', '2024-01-05'),
(6, 6, 1, 'Meeting at 3 PM', '2024-01-06'),
(7, 7, 2, 'Lets grab coffee', '2024-01-07'),
(8, 8, 3, 'How was your day?', '2024-01-08'),
(9, 9, 1, 'Exciting news!', '2024-01-09'),
(10, 10, 2, 'Happy birthday!', '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `peopleaskedfordirection`
--

CREATE TABLE `peopleaskedfordirection` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `direction_asked` text DEFAULT NULL,
  `asking_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peopleaskedfordirection`
--

INSERT INTO `peopleaskedfordirection` (`id`, `person_id`, `direction_asked`, `asking_date`) VALUES
(1, 1, 'Street A', '2024-01-01'),
(2, 2, 'Street B', '2024-01-02'),
(3, 3, 'Street C', '2024-01-03'),
(4, 4, 'Street D', '2024-01-04'),
(5, 5, 'Street E', '2024-01-05'),
(6, 6, 'Street F', '2024-01-06'),
(7, 7, 'Street G', '2024-01-07'),
(8, 8, 'Street H', '2024-01-08'),
(9, 9, 'Street I', '2024-01-09'),
(10, 10, 'Street J', '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `profileviews`
--

CREATE TABLE `profileviews` (
  `id` int(11) NOT NULL,
  `viewer_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `view_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profileviews`
--

INSERT INTO `profileviews` (`id`, `viewer_id`, `profile_id`, `view_date`) VALUES
(1, 1, 2, '2024-01-01'),
(2, 2, 3, '2024-01-02'),
(3, 3, 1, '2024-01-03'),
(4, 4, 2, '2024-01-04'),
(5, 5, 3, '2024-01-05'),
(6, 6, 1, '2024-01-06'),
(7, 7, 2, '2024-01-07'),
(8, 8, 3, '2024-01-08'),
(9, 9, 1, '2024-01-09'),
(10, 10, 2, '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `searchesappearance`
--

CREATE TABLE `searchesappearance` (
  `id` int(11) NOT NULL,
  `search_query` text DEFAULT NULL,
  `appearance_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `searchesappearance`
--

INSERT INTO `searchesappearance` (`id`, `search_query`, `appearance_date`) VALUES
(1, 'Java programming', '2024-01-01'),
(2, 'MySQL tutorial', '2024-01-02'),
(3, 'Web development', '2024-01-03'),
(4, 'Data science', '2024-01-04'),
(5, 'Mobile app development', '2024-01-05'),
(6, 'Cloud computing', '2024-01-06'),
(7, 'Artificial intelligence', '2024-01-07'),
(8, 'Cybersecurity', '2024-01-08'),
(9, 'Blockchain technology', '2024-01-09'),
(10, 'Internet of Things', '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `websitevisits`
--

CREATE TABLE `websitevisits` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `visit_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `websitevisits`
--

INSERT INTO `websitevisits` (`id`, `profile_id`, `visit_date`) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-02'),
(3, 3, '2024-01-03'),
(4, 4, '2024-01-04'),
(5, 5, '2024-01-05'),
(6, 6, '2024-01-06'),
(7, 7, '2024-01-07'),
(8, 8, '2024-01-08'),
(9, 9, '2024-01-09'),
(10, 10, '2024-01-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peopleaskedfordirection`
--
ALTER TABLE `peopleaskedfordirection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profileviews`
--
ALTER TABLE `profileviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searchesappearance`
--
ALTER TABLE `searchesappearance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websitevisits`
--
ALTER TABLE `websitevisits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `peopleaskedfordirection`
--
ALTER TABLE `peopleaskedfordirection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profileviews`
--
ALTER TABLE `profileviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `searchesappearance`
--
ALTER TABLE `searchesappearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `websitevisits`
--
ALTER TABLE `websitevisits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
