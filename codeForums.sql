-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 04, 2022 at 07:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Python', 'Python is an object-oriented programming language. Python is an interpreted high-level general-purpose programming language.', '2022-02-25 17:44:57'),
(2, 'Javascript', 'Javascript is a scripting language used in web development. JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS.', '2022-02-25 17:45:37'),
(3, 'Django', 'It is a python framework for web development. Django is a Python-based free and open-source web framework that follows the model–template–views architectural pattern. ', '2022-02-25 18:06:43'),
(4, 'Flask', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries. It has no database abstraction layer, form validation, or any other components', '2022-02-25 18:07:13'),
(5, 'C++', 'C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or \"C with Classes\".', '2022-02-27 10:40:45'),
(6, 'AngularJS', 'AngularJS was a JavaScript-based open-source front-end web framework for developing single-page applications.', '2022-02-27 10:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'go to youtube channel code with harry he has a playlist on openCVor on edureka', 2, 1, '2022-02-26 22:28:01'),
(2, 'ss the code', 3, 3, '2022-02-27 00:26:31'),
(3, 'ss the code', 3, 3, '2022-02-27 00:27:38'),
(4, 'wow', 3, 3, '2022-02-27 00:28:03'),
(5, 'hey', 1, 3, '2022-02-27 00:35:59'),
(6, 'add it in environment variable', 5, 3, '2022-02-27 15:16:56'),
(7, 'right click and do save as', 6, 3, '2022-02-27 15:17:24'),
(8, 'download from google', 4, 5, '2022-03-03 23:24:11'),
(9, 'ttt', 7, 5, '2022-03-03 23:24:36'),
(10, 'yupp', 6, 5, '2022-03-03 23:25:02'),
(11, 'ss', 8, 5, '2022-03-03 23:25:48'),
(12, 'try using axios', 3, 6, '2022-03-20 12:21:09'),
(13, '&lt;html&gt; hello &lt;/html&gt;', 3, 7, '2022-03-22 15:07:44'),
(14, 'refresh the page', 10, 9, '2022-03-25 12:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(7) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(3, 'no fetch api working', 'plz help', 2, 3, '2022-02-27 00:26:19'),
(4, 'python not getting installed', 'oh my god', 1, 3, '2022-02-27 00:38:01'),
(5, 'ming64', 'ming64 not working help', 5, 4, '2022-02-27 15:15:24'),
(6, 'angular.min.js not getting downloaded', 'its shows errror', 6, 4, '2022-02-27 15:16:11'),
(7, 'django', 'i want to learn django provide some tutorials', 3, 5, '2022-03-03 23:20:55'),
(8, 'help', 'getting error', 5, 5, '2022-03-03 23:25:31'),
(9, 'variable', 'variable giving error', 2, 7, '2022-03-22 15:06:02'),
(10, 'api', 'api not working', 2, 8, '2022-03-25 12:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(2, 'yah', '$2y$10$tgMiXrKDi2L3QimKN5OYD.dRrPN6PjLK1XM2SqiZJlZvylfZ336US', '2022-02-26 23:10:42'),
(3, 'yash', '$2y$10$8yvSEYmMlxpO4p2a226KIuKeXh25iZB3RBqrdjQ00jMsVO2uUwSfi', '2022-02-27 00:08:57'),
(4, 'jay156', '$2y$10$HtKbmGK0bs6dejc3DDEflO4VUatjXD9F7/JErFKjMxbA15IQolBDK', '2022-02-27 15:14:38'),
(5, 'yogesh12', '$2y$10$cyC1wIrQxvaFvwK1idw5b.Mhwev10J1TeRmQ93sCO0XRpeQbqZgdK', '2022-03-03 23:19:48'),
(6, 'mary', '$2y$10$NBeYQunepJtlXFjHZ2IwguQs8OcVdj9lt4u.bbSOlqRvMbQ4eB7gG', '2022-03-20 12:18:25'),
(7, 'yash123', '$2y$10$v.NpYbsMKSjEUD4khK3XneslzpO.ACNMpzIyCUilkUH2tKedTHmHK', '2022-03-22 15:03:50'),
(8, 'harry', '$2y$10$5qUji58sjGQX/1CE3Ei.IOZ1JVXqNl3o3I4oAgJuOLmEuwEMHVH3e', '2022-03-25 12:26:34'),
(9, 'may', '$2y$10$TtwW3ZnM3nkS8JxL6bQK8.w9m3JAFzq74zL7NbIx95CUYdvaRvsFC', '2022-03-25 12:30:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
