-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 04:02 PM
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
-- Table structure for table `cek_status`
--

CREATE TABLE `cek_status` (
  `id` int(100) NOT NULL,
  `id_peminjaman` varchar(100) NOT NULL,
  `kategori_peminjaman` varchar(100) NOT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status_peminjaman` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cek_status`
--

INSERT INTO `cek_status` (`id`, `id_peminjaman`, `kategori_peminjaman`, `tanggal_peminjaman`, `tanggal_kembali`, `status_peminjaman`, `status`) VALUES
(1, 'PE002', 'Alat', '2020-06-01', '2020-06-23', 'Peminjaman Disetujui', 'Ada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cek_status`
--
ALTER TABLE `cek_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cek_status`
--
ALTER TABLE `cek_status`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
