-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2020 at 09:57 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silabkom`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_tipe_laboratorium`
--

CREATE TABLE `master_tipe_laboratorium` (
  `id` int(2) NOT NULL,
  `jenis_laboratorium` varchar(30) NOT NULL,
  `foto` varchar(225) NOT NULL,
  `koordinator` text NOT NULL,
  `laboran` text NOT NULL,
  `alamat` varchar(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `anggota` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_tipe_laboratorium`
--

INSERT INTO `master_tipe_laboratorium` (`id`, `jenis_laboratorium`, `foto`, `koordinator`, `laboran`, `alamat`, `email`, `anggota`) VALUES
(1, 'endhog', 'files/2020/05/esport2.jpg', 'IAudj', 'asijdoi', 'asiew', 'satekirik@okdalang.com', 'kajdspi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_tipe_laboratorium`
--
ALTER TABLE `master_tipe_laboratorium`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_tipe_laboratorium`
--
ALTER TABLE `master_tipe_laboratorium`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
