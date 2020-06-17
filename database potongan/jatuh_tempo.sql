-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 02:26 PM
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
-- Table structure for table `jatuh_tempo`
--

CREATE TABLE `jatuh_tempo` (
  `id` int(5) NOT NULL,
  `id_peminjaman` varchar(30) NOT NULL,
  `nama_peminjam` varchar(30) NOT NULL,
  `nomor_induk` varchar(30) NOT NULL,
  `status_user` varchar(30) NOT NULL,
  `kategori_peminjaman` varchar(30) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `status_peminjaman` varchar(30) NOT NULL,
  `cetak` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jatuh_tempo`
--

INSERT INTO `jatuh_tempo` (`id`, `id_peminjaman`, `nama_peminjam`, `nomor_induk`, `status_user`, `kategori_peminjaman`, `tanggal_pinjam`, `status_peminjaman`, `cetak`, `status`) VALUES
(1, 'nanyi bro', 'jatuh', 'bangun', 'aku', 'mengejarmu', '2020-06-21', 'namun', 'dirimu tak', 'mau mengerti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jatuh_tempo`
--
ALTER TABLE `jatuh_tempo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jatuh_tempo`
--
ALTER TABLE `jatuh_tempo`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
