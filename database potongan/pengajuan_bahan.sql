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
-- Table structure for table `pengajuan_bahan`
--

CREATE TABLE `pengajuan_bahan` (
  `id` int(100) NOT NULL,
  `id_pengajuan_bahan` varchar(100) NOT NULL,
  `nama_bahan` varchar(100) NOT NULL,
  `seri` varchar(100) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `satuan_grosir` varchar(100) NOT NULL,
  `jumlah_grosir` int(100) NOT NULL,
  `harga_grosir` varchar(100) NOT NULL,
  `estimasi_jumlah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_bahan`
--

INSERT INTO `pengajuan_bahan` (`id`, `id_pengajuan_bahan`, `nama_bahan`, `seri`, `merk`, `satuan_grosir`, `jumlah_grosir`, `harga_grosir`, `estimasi_jumlah`) VALUES
(0, '920202', 'laptop', '2000', 'ROG', '1', 1, '20000000', '10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
