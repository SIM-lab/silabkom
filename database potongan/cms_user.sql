-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 11:20 AM
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
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `bagian` int(11) DEFAULT '1',
  `no_hp` varchar(100) DEFAULT NULL,
  `alamat` text,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `nama`, `gambar`, `username`, `password`, `level`, `bagian`, `no_hp`, `alamat`, `last_login`) VALUES
(1, 'Kholiq', NULL, 'kholiq', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, NULL, NULL, '2020-05-08 09:37:33'),
(2, 'admin', NULL, 'admin', '*4ACFE3202A5FF5CF467898FC58AAB1D615029441', 1, 1, '089 884 189 22', 'Jl. Shima No.6 Pengkol, Jepara', '2017-03-02 11:27:31'),
(3, 'Kepala Laboratorium', NULL, 'kepala', '*C9CDB06D7C010B721A4DBF4EAE1E3B5F3E86E69E', 2, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-01-20 13:28:02'),
(4, 'Laboran', NULL, 'laboran', '*5F9D604D1358B35776BD7ECEFE96829E6F3A2F3B', 3, 1, '0291595628', 'Jl. Citrosoma RT.017/006, Senenan, Jepara', '2017-03-01 08:26:51'),
(5, 'Koordinator Laboratorium', NULL, 'koordinator', '*047D32D531F24D8B9B6FABDDB1E14D3052956CAE', 4, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 14:28:19'),
(6, 'Asisten', NULL, 'asisten', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 5, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 11:12:52'),
(7, 'Dosen', NULL, 'dosen', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 6, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-02-24 11:47:36'),
(8, 'Mahasiswa', NULL, 'mahasiswa', '*3D98533F5EC0664D86B1F8E1CCC2F7C91B5C856D', 7, 1, '', '', '2017-03-01 10:11:37'),
(14, 'RAFANDI', 'files/2020/06/751e915b8290e9720299dd4dd3e73a69.jpg', 'rafandi', '*66005FBF8E725C011243BD39EC5BBF6FFF812C97', 1, 1, '085150021000', 'mbuh', '2020-06-28 16:05:15'),
(15, 'Akhmad', NULL, 'mamad', '*4FD7304813C297DFDE166F713CB77F4EF2EEE9F6', 1, 1, NULL, NULL, '2020-06-15 10:29:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
