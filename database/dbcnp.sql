-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 02:59 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcnp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`id`, `name`, `contact`, `email`, `username`, `password`) VALUES
(1, 'pshash', '+91 7795826383', 'pshashank795@gmail.com', 'pshash', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `tblcnp`
--

CREATE TABLE `tblcnp` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcnp`
--

INSERT INTO `tblcnp` (`id`, `name`, `price`, `description`, `image`, `status`) VALUES
(1, 'Baltimore Oriole', 8000, 'The rich, whistling song of the Baltimore Oriole, ', 'images/e.jpg', 'Available'),
(2, 'Maltese', 15000, 'A dog breed whoâ€™s gentle and fearless, the Malte', 'images/2.jpg', 'Available'),
(3, 'Bulldog', 7500, 'Bulldogs originally were used to drive cattle to m', 'images/3.jpg', 'Available'),
(4, 'Gordon Setter', 6000, 'The Gordon Setter, the black avenger of the Highla', 'images/5.jpg', 'Available'),
(5, 'Bedlington Terrier', 5000, 'Bedlingtons are lithe, energetic Englishmen. The c', 'images/9.JPG', 'Available');
INSERT INTO `tblcnp` (`id`, `name`, `price`, `description`, `image`, `status`) VALUES
(6, 'Golden Retriever', 12000, 'The Golden Retriever is a friendly, intelligent, and devoted breed known for its beautiful golden coat.', 'images/gold.jpg', 'Available'),
(7, 'Siamese Cat', 7000, 'The Siamese cat is a highly social and vocal breed with striking blue almond-shaped eyes.', 'images/Sia.jpg', 'Available'),
(8, 'Airedale Terrier', 8500, 'Airedales are the largest of the terrier breeds, known for their courage and playful personality.', 'images/Air.jpg', 'Available'),
(9, 'Russian Blue Cat', 9000, 'Russian Blue cats are known for their stunning blue-gray coat and reserved but affectionate demeanor.', 'images/russia.jpg', 'Available'),
(10, 'Dalmatian', 10000, 'Dalmatians are famous for their distinctive black spots and energetic, playful nature.', 'images/dalmatian.jpg', 'Available');


-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `cnpoid` int(11) DEFAULT NULL,
  `oqty` int(11) DEFAULT NULL,
  `ostatus` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `otype` varchar(50) DEFAULT NULL,
  `datepickup` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `cname`, `address`, `contact`, `cnpoid`, `oqty`, `ostatus`, `timestamp`, `otype`, `datepickup`) VALUES
(10, 'Adithya Shashikumar', 'Electronic city', '9369420867', 4, 1, 'new', '2023-09-13 15:09:46', 'Pick-up', '2023-09-14'),
(11, 'Kruthik P', 'UB city', '9095744586', 3, 3, 'new', '2023-09-17 23:15:46', 'Pick-up', '2023-09-18'),
(12, 'Shashank Puttasubbappa', 'hsr layout', '1234567890', 5, 3, 'new', '2023-09-18 02:00:16', 'Pick-up', '0000-00-00'),
(13, 'Nidhi H S', 'Mysore', '9876543210', 5, 4, 'new', '2023-03-18 02:21:14', 'Deliver', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcnp`
--
ALTER TABLE `tblcnp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admininfo`
--
ALTER TABLE `admininfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcnp`
--
ALTER TABLE `tblcnp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
