-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 11:27 AM
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
-- Table structure for table `master_kategori_alat_bahan`
--

CREATE TABLE `master_kategori_alat_bahan` (
  `id` int(255) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama_alat_bahan` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kategori_alat_bahan`
--

INSERT INTO `master_kategori_alat_bahan` (`id`, `kode`, `nama_alat_bahan`, `jenis`) VALUES
(1, 'B001', 'Kabel LAN', 'Kabel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_kategori_alat_bahan`
--
ALTER TABLE `master_kategori_alat_bahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_kategori_alat_bahan`
--
ALTER TABLE `master_kategori_alat_bahan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
