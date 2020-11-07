-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2020 at 11:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(2, 'Vegetarian', 'Our vegetarian meal prep offers a variety of different options and allows you to customize your favorite grains, veggies, and more!', '5f80afdfb19b86.39372851.jpg', '2020-10-09', NULL),
(3, 'Carnivore', 'Have you ever wondered about the carnivore diet? We offer a meal kit that will fit your needs if you are currently on the diet or want to give it a try! Full of rich, tender steak, chicken, and more!', '5f80b3adc8e828.30150522.png', '2020-10-09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(30) NOT NULL,
  `picpath` varchar(50) NOT NULL DEFAULT 'uploads/generic.jpg',
  `bio` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('testlast', '../uploads/5f80b9025e4f84.78223980.png', 'This is a new bio.'),
('joemama24', '../uploads/5f8099fbd270f5.89525566.png', 'This is an updated bio'),
('Admin', 'uploads/generic.jpg', NULL),
('asdf', 'uploads/generic.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `uname` varchar(80) CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `review_text` text CHARACTER SET utf8mb4 NOT NULL,
  `rev_date` datetime NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `item_id`, `uname`, `title`, `review_text`, `rev_date`, `rating_num`, `status`) VALUES
(8, 3, 'joemama24', 'first review', 'yo this product sucks', '2020-10-22 00:01:32', 1, 1),
(9, 3, 'joemama24', 'dfdfa', 'ajdjkfjlj;ej', '2020-10-22 00:02:03', 4, 1),
(10, 2, 'joemama24', 'asdjfdkj', 'jjjjj', '2020-10-22 00:09:07', 4, 1),
(11, 2, 'joemama24', 'Awesome Vegetarian!', 'Well beyond expectations!', '2020-10-22 00:09:42', 5, 1),
(12, 2, 'joemama24', 'This shit sucks', 'Horrible product', '2020-10-24 16:08:44', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `lname`, `fname`, `email`, `uname`, `password`) VALUES
(0, 'Mraz', 'Ryan', 'rmm0049@mix.wvu.edu', 'Admin', '$2y$10$UWzmLKmmXbYnjqqxL5dvqeqw.VEMlEX77WdWMu72jg7x5CFWiqIqy'),
(8, 'Mraz', 'Ryan', 'rmm0049@mix.wvu.edu', 'rmm0049', '$2y$10$pTyRXHC4KHxRI730Wzeau.YVNYNohfvucTHiXvXD4KtfxpPxlDsKu'),
(9, 'last', 'test', 'test@gmail.com', 'testlast', '$2y$10$Wlrefc6lYITV3OCkTww.5.lvJAUiZUJpW.Rp3WCP9havCk4GtDlHm'),
(10, 'Mama', 'Joe', 'joemama@gmail.com', 'joemama24', '$2y$10$O1RXToN3iKSY6x53ueF8seeUVrMhtaCnoThFeXSg.t8rD2eky8caG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
