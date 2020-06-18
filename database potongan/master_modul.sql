-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 08:56 AM
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
-- Table structure for table `master_modul`
--

CREATE TABLE `master_modul` (
  `id` int(2) NOT NULL,
  `nama_modul` varchar(30) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `modul` varchar(50) NOT NULL,
  `tipe` varchar(5) NOT NULL,
  `ukuran` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_modul`
--

INSERT INTO `master_modul` (`id`, `nama_modul`, `keterangan`, `modul`, `tipe`, `ukuran`) VALUES
(1, 'insyaf', 'bercanda', 'uploads/mimiperi.pdf', '.pdf', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_modul`
--
ALTER TABLE `master_modul`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_modul`
--
ALTER TABLE `master_modul`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
