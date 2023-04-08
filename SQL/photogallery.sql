-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql201.epizy.com
-- Generation Time: Feb 23, 2023 at 11:31 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_33365957_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `photogallery`
--

CREATE TABLE `photogallery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photogallery`
--

INSERT INTO `photogallery` (`id`, `name`, `photo`, `description`, `device`, `date`) VALUES
(1, 'Parth Soni', 'cathedral.jpg', 'This photo is taken by me in Hamilton ', 'Google Pixel 6', '2022-06-01'),
(2, 'Harsh Patel', 'mountainview.jpg', 'This photo describes a Hamilton mountain view.', 'Iphone 13 pro max', '2022-07-06'),
(3, 'Darshan Patel', 'randomhome.jpg', 'These is random home pictures taken at the bayfront street in Hamilton.', 'Canon ', '2022-09-14'),
(4, 'Dee ', 'bayfrontpark.jpg', 'This is sunset view at bayfront Park in Hamilton', 'Google Pixel 6', '2022-08-16'),
(5, 'Hitesh', 'topcityview.jpg', 'This is Top view of Hamilton city', 'Iphone 14', '2021-09-13'),
(6, 'Parth Patel', 'school.jpg', 'This is school picture in Hamilton', 'Iphone 12 ', '2022-08-09'),
(7, 'Parth Soni', 'housingview.jpg', 'Top view of Housing in city of Hamilton', 'Google Pixel 6', '2020-09-25'),
(8, 'Harsh Patel', 'bayfrontway.jpg', 'Street view at bayfront', 'Iphone 13 pro max', '2020-05-15'),
(9, 'Darshan Patel', 'mainstreetview.jpg', 'Main Street view', 'Iphone 11', '2021-05-20'),
(10, 'Parth Patel', 'indurstyview.jpg', 'Industry view ', 'Samsung s22', '2022-09-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photogallery`
--
ALTER TABLE `photogallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photogallery`
--
ALTER TABLE `photogallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
