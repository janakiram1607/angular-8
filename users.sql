-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 04, 2019 at 06:49 AM
-- Server version: 10.3.17-MariaDB-0+deb10u1
-- PHP Version: 7.3.4-2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `angularjo`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `f_name` varchar(60) DEFAULT NULL,
  `l_name` varchar(60) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pswd` varchar(120) NOT NULL,
  `user_role` tinyint(2) NOT NULL DEFAULT 2,
  `record_status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_by` varchar(50) DEFAULT NULL,
  `deleted_date` datetime NOT NULL,
  `deleted_by` varchar(50) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `login_device` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT;
