-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2020 at 04:16 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `cms_captcha`
--

CREATE TABLE `cms_captcha` (
  `captcha_id` bigint(13) NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_captcha`
--

INSERT INTO `cms_captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(3442, 1593394986, '::1', '825677'),
(3441, 1593394951, '::1', '421876');

-- --------------------------------------------------------

--
-- Table structure for table `cms_file`
--

CREATE TABLE `cms_file` (
  `id` int(2) NOT NULL,
  `desc` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `ufile` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_log`
--

CREATE TABLE `cms_log` (
  `id_log` int(30) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `kegiatan` text,
  `user` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_log`
--

INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(171, '::1', '', '2020-06-21 20:35:09', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>rgt</b></li></ul>', 'rafandi'),
(170, '127.0.0.1', '', '2020-06-21 19:07:25', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama</b> dengan value <b>diki</b></li><li><b>username</b> dengan value <b>DIKI</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>837383764843</b></li><li><b>alamat</b> dengan value <b>iuwhfewnofdierf</b></li></ul>', 'rafandi'),
(169, '127.0.0.1', '', '2020-06-21 19:07:18', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama</b> dengan value <b>diki</b></li><li><b>username</b> dengan value <b>DIKI</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>837383764843</b></li><li><b>alamat</b> dengan value <b>iuwhfewnofdierf</b></li></ul>', 'rafandi'),
(168, '127.0.0.1', '', '2020-06-21 18:25:37', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>uhaud</b></li><li><b>nama</b> dengan value <b>sdiyh</b></li><li><b>nama_barang</b> dengan value <b>uahdu</b></li></ul>', 'rafandi'),
(167, '127.0.0.1', '', '2020-06-21 18:25:34', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>budi</b></li><li><b>status_penggantian</b> dengan value <b>Belum Diganti</b></li></ul>', 'rafandi'),
(166, '127.0.0.1', '', '2020-06-21 18:25:30', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>uhaud</b></li><li><b>nama</b> dengan value <b>sdiyh</b></li><li><b>nama_barang</b> dengan value <b>uahdu</b></li><li><b>status_penggantian</b> dengan value <b>Belum Diganti</b></li></ul>', 'rafandi'),
(165, '127.0.0.1', '', '2020-06-21 18:25:24', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>uhaud</b></li><li><b>nama</b> dengan value <b>sdiyh</b></li><li><b>nama_barang</b> dengan value <b>uahdu</b></li><li><b>status_penggantian</b> dengan value <b>Sudah Diganti</b></li></ul>', 'rafandi'),
(164, '127.0.0.1', '', '2020-06-21 18:20:07', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>budi</b></li><li><b>status_penggantian</b> dengan value <b>Sudah Diganti</b></li></ul>', 'rafandi'),
(163, '127.0.0.1', '', '2020-06-21 17:27:50', 'Menambah periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>periode_pengajuan</b> dengan value <b>iugqwyshi</b></li><li><b>semester</b> dengan value <b>3</b></li><li><b>bulan</b> dengan value <b>juni</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>kurupsi</b></li><li><b>pajak</b> dengan value <b>0</b></li><li><b>status_pengajuan</b> dengan value <b>sukses</b></li><li><b>status</b> dengan value <b>hamba</b></li></ul>', 'rafandi'),
(161, '127.0.0.1', '', '2020-06-21 17:24:18', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>10</b></li><li><b>nama_alat</b> dengan value <b>reyr</b></li></ul>', 'rafandi'),
(162, '127.0.0.1', '', '2020-06-21 17:27:00', 'Mengedit periode_pengajuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>periode_pengajuan</b> dengan value <b>pa1234676</b></li><li><b>semester</b> dengan value <b>Antara</b></li><li><b>bulan</b> dengan value <b>Desember</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>sumber_pendanaan</b> dengan value <b>Jurusan</b></li><li><b>pajak</b> dengan value <b>2</b></li><li><b>status_pengajuan</b> dengan value <b>Disetujui</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(160, '127.0.0.1', '', '2020-06-21 17:24:03', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>nama_alat</b> dengan value <b>45</b></li></ul>', 'rafandi'),
(157, '::1', '', '2020-06-21 17:09:58', 'Logout SILABKOM by ', 'Tamu'),
(158, '::1', '', '2020-06-21 17:10:07', 'Login  by RAFANDI', 'rafandi'),
(159, '::1', '', '2020-06-21 17:10:22', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>nama_alat</b> dengan value <b>45</b></li></ul>', 'rafandi'),
(155, '::1', '', '2020-06-21 17:06:19', 'Login  by RAFANDI', 'rafandi'),
(156, '::1', '', '2020-06-21 17:06:59', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>reyr</b></li></ul>', 'rafandi'),
(154, '::1', '', '2020-06-21 17:05:24', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>nama_alat</b> dengan value <b>45</b></li></ul>', 'rafandi'),
(151, '::1', '', '2020-06-21 17:03:23', 'Login  by RAFANDI', 'rafandi'),
(152, '::1', '', '2020-06-21 17:03:45', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>6tr</b></li></ul>', 'rafandi'),
(153, '::1', '', '2020-06-21 17:04:55', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>nama_alat</b> dengan value <b>3yiudw</b></li></ul>', 'rafandi'),
(150, '::1', '', '2020-06-21 16:49:59', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>nama_alat</b> dengan value <b>3yiudw</b></li></ul>', 'rafandi'),
(147, '::1', '', '2020-06-21 16:48:33', 'Login  by RAFANDI', 'rafandi'),
(148, '::1', '', '2020-06-21 16:49:21', 'Logout SILABKOM by ', 'Tamu'),
(149, '::1', '', '2020-06-21 16:49:34', 'Login  by RAFANDI', 'rafandi'),
(145, '127.0.0.1', '', '2020-06-21 16:37:15', 'Login  by RAFANDI', 'rafandi'),
(146, '127.0.0.1', '', '2020-06-21 16:37:37', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>nama_alat</b> dengan value <b>3yiudw</b></li></ul>', 'rafandi'),
(142, '::1', '', '2020-06-21 13:03:09', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>3yiudw</b></li></ul>', 'rafandi'),
(143, '::1', '', '2020-06-21 13:03:51', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>8</b></li><li><b>nama_alat</b> dengan value <b>3yiudw</b></li></ul>', 'rafandi'),
(144, '::1', '', '2020-06-21 13:07:36', 'Menambah Master user dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>MUHDI</b></li><li><b>username</b> dengan value <b>muhdi</b></li><li><b>password</b> dengan value <b>*F10A304C739EF7B2E8044AA857E17B557984FF40</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/06/7004c4c50693007b9a0b4a154490bd4b.jpg</b></li><li><b>no_hp</b> dengan value <b>089669648807</b></li><li><b>alamat</b> dengan value <b>wadas</b></li></ul>', 'rafandi'),
(141, '::1', '', '2020-06-21 12:57:31', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>ini</b></li></ul>', 'rafandi'),
(140, '::1', '', '2020-06-21 12:54:02', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>6</b></li><li><b>nama_alat</b> dengan value <b>ini</b></li></ul>', 'rafandi'),
(139, '::1', '', '2020-06-21 11:40:33', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>uhyruewo</b></li><li><b>nama_peminjam</b> dengan value <b>iaodq</b></li><li><b>nomor_induk</b> dengan value <b>u3842u</b></li><li><b>status_user</b> dengan value <b>hsdouy</b></li><li><b>kategori_peminjaman</b> dengan value <b>uyq2e8h</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-22</b></li><li><b>cetak</b> dengan value <b>i</b></li><li><b>status</b> dengan value <b>u</b></li></ul>', 'rafandi'),
(134, '::1', '', '2020-06-20 22:12:28', 'Login  by RAFANDI', 'rafandi'),
(135, '127.0.0.1', '', '2020-06-21 08:20:55', 'Login  by RAFANDI', 'rafandi'),
(136, '127.0.0.1', '', '2020-06-21 09:14:17', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>ini</b></li></ul>', 'rafandi'),
(137, '::1', '', '2020-06-21 10:43:21', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(138, '::1', '', '2020-06-21 10:43:48', 'Login  by RAFANDI', 'rafandi'),
(132, '::1', '', '2020-06-20 22:11:35', 'Login  by RAFANDI', 'rafandi'),
(133, '::1', '', '2020-06-20 22:12:02', 'Menambah Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>budi</b></li><li><b>status_penggantian</b> dengan value <b>Belum Diganti</b></li></ul>', 'rafandi'),
(129, '::1', '', '2020-06-20 22:00:44', 'Menghapus laporan dengan id 1', 'rafandi'),
(130, '::1', '', '2020-06-20 22:09:10', 'Login  by RAFANDI', 'rafandi'),
(131, '::1', '', '2020-06-20 22:09:37', 'Menambah Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>budi</b></li><li><b>status_penggantian</b> dengan value <b>Sudah Diganti</b></li></ul>', 'rafandi'),
(127, '::1', '', '2020-06-20 21:57:52', 'Menambah Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>s3234</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>nama_barang</b> dengan value <b>kampak</b></li><li><b>status_penggantian</b> dengan value <b>Avanza</b></li></ul>', 'rafandi'),
(128, '::1', '', '2020-06-20 21:57:58', 'Menghapus laporan dengan id 2', 'rafandi'),
(121, '127.0.0.1', '', '2020-06-20 08:12:29', 'Logout SILABKOM by ', 'Tamu'),
(122, '127.0.0.1', '', '2020-06-20 08:12:44', 'Login  by RAFANDI', 'rafandi'),
(123, '::1', '', '2020-06-20 14:27:39', 'Logout SILABKOM by ', 'Tamu'),
(124, '::1', '', '2020-06-20 14:28:05', 'Login  by RAFANDI', 'rafandi'),
(125, '::1', '', '2020-06-20 16:41:39', 'Login  by RAFANDI', 'rafandi'),
(126, '::1', '', '2020-06-20 19:00:43', 'Login  by RAFANDI', 'rafandi'),
(119, '::1', '', '2020-06-19 13:34:19', 'Login  by RAFANDI', 'rafandi'),
(120, '127.0.0.1', '', '2020-06-19 18:25:30', 'Login  by RAFANDI', 'rafandi'),
(115, '127.0.0.1', '', '2020-06-19 07:22:31', 'Login  by RAFANDI', 'rafandi'),
(116, '127.0.0.1', '', '2020-06-19 08:02:23', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(117, '::1', '', '2020-06-19 08:58:04', 'Login  by RAFANDI', 'rafandi'),
(118, '::1', '', '2020-06-19 10:22:36', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama</b> dengan value <b>diki</b></li><li><b>username</b> dengan value <b>DIKI</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>no_hp</b> dengan value <b>837383764843</b></li><li><b>alamat</b> dengan value <b>iuwhfewnofdierf</b></li></ul>', 'rafandi'),
(112, '::1', '', '2020-06-18 11:05:53', 'Logout SILABKOM by ', 'Tamu'),
(113, '::1', '', '2020-06-18 11:06:04', 'Login  by RAFANDI', 'rafandi'),
(114, '::1', '', '2020-06-18 12:02:01', 'Menambah Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>insyaf</b></li><li><b>keterangan</b> dengan value <b>cocol aku</b></li><li><b>tipe</b> dengan value <b>.pdf</b></li><li><b>ukuran</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(111, '::1', '', '2020-06-18 09:29:05', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama</b> dengan value <b>diki</b></li><li><b>username</b> dengan value <b>DIKI</b></li><li><b>password</b> dengan value <b>*146B60F77CCB19D84BC15AA82F982885472DED7D</b></li><li><b>level</b> dengan value <b>2</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/06/e66420a17294ecea94df1c0627cd9791.png</b></li><li><b>no_hp</b> dengan value <b>-</b></li><li><b>alamat</b> dengan value <b>-</b></li></ul>', 'rafandi'),
(109, '127.0.0.1', '', '2020-06-18 06:59:05', 'Logout SILABKOM by ', 'Tamu'),
(110, '127.0.0.1', '', '2020-06-18 06:59:16', 'Login  by RAFANDI', 'rafandi'),
(107, '::1', '', '2020-06-17 16:38:25', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>no_hp</b> dengan value <b>kosong</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(108, '::1', '', '2020-06-17 20:19:03', 'Login  by RAFANDI', 'rafandi'),
(172, '::1', '', '2020-06-21 20:35:25', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>rgt</b></li></ul>', 'rafandi'),
(173, '::1', '', '2020-06-21 20:50:37', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>rgt</b></li><li><b>merk</b> dengan value <b>politron</b></li><li><b>seri</b> dengan value <b>a</b></li><li><b>stok_min</b> dengan value <b>33</b></li><li><b>stok_ini</b> dengan value <b>21</b></li></ul>', 'rafandi'),
(174, '::1', '', '2020-06-21 20:51:08', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>phone</b></li><li><b>merk</b> dengan value <b>advan</b></li><li><b>seri</b> dengan value <b>G5</b></li><li><b>stok_min</b> dengan value <b>50</b></li><li><b>stok_ini</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(175, '::1', '', '2020-06-21 20:53:00', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>gambar</b> dengan value <b>files/2020/06/2265a229e0444901c8804d87bf03c51d.jpg</b></li><li><b>no_hp</b> dengan value <b>kosong</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(176, '::1', '', '2020-06-21 20:53:04', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(177, '::1', '', '2020-06-21 20:53:36', 'Login  by RAFANDI', 'rafandi'),
(178, '::1', '', '2020-06-22 12:37:28', 'Logout SILABKOM by ', 'Tamu'),
(179, '::1', '', '2020-06-22 12:37:43', 'Login  by RAFANDI', 'rafandi'),
(180, '::1', '', '2020-06-22 22:17:48', 'Menambah Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>asdn</b></li><li><b>keterangan</b> dengan value <b>qwd</b></li><li><b>tipe</b> dengan value <b>.jav</b></li><li><b>ukuran</b> dengan value <b>22.5</b></li></ul>', 'rafandi'),
(181, '127.0.0.1', '', '2020-06-23 13:57:39', 'Logout SILABKOM by ', 'Tamu'),
(182, '127.0.0.1', '', '2020-06-23 14:52:21', 'Login  by RAFANDI', 'rafandi'),
(183, '127.0.0.1', '', '2020-06-23 15:06:31', 'Menambah Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>ads</b></li><li><b>keterangan</b> dengan value <b>asd</b></li><li><b>tipe</b> dengan value <b>.doc</b></li><li><b>ukuran</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(184, '127.0.0.1', '', '2020-06-23 15:08:19', 'Menambah Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>ads</b></li><li><b>keterangan</b> dengan value <b>asd</b></li><li><b>tipe</b> dengan value <b>.doc</b></li><li><b>ukuran</b> dengan value <b>0</b></li></ul>', 'rafandi'),
(185, '127.0.0.1', '', '2020-06-23 15:09:13', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>ads</b></li></ul>', 'rafandi'),
(186, '127.0.0.1', '', '2020-06-23 15:23:40', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>ads</b></li></ul>', 'rafandi'),
(187, '127.0.0.1', '', '2020-06-23 15:23:54', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>ads</b></li></ul>', 'rafandi'),
(188, '127.0.0.1', '', '2020-06-23 15:24:41', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>ads</b></li></ul>', 'rafandi'),
(189, '127.0.0.1', '', '2020-06-23 15:45:46', 'Menambah Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>sfdc</b></li><li><b>keterangan</b> dengan value <b>sdf</b></li><li><b>tipe</b> dengan value <b>.docx</b></li><li><b>ukuran</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(190, '127.0.0.1', '', '2020-06-23 15:46:55', 'Menambah Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>sfdc</b></li><li><b>keterangan</b> dengan value <b>sdf</b></li><li><b>tipe</b> dengan value <b>.docx</b></li><li><b>ukuran</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(191, '127.0.0.1', '', '2020-06-23 18:21:24', 'Login  by RAFANDI', 'rafandi'),
(192, '127.0.0.1', '', '2020-06-23 19:17:29', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama</b> dengan value <b>diki</b></li><li><b>username</b> dengan value <b>DIKI</b></li><li><b>level</b> dengan value <b>6</b></li><li><b>bagian</b> dengan value <b>kosong</b></li><li><b>gambar</b> dengan value <b>files/2020/06/3aca9a9cccacd9e06bf13dd1a48f84ae.jpg</b></li><li><b>no_hp</b> dengan value <b>837383764843</b></li><li><b>alamat</b> dengan value <b>iuwhfewnofdierf</b></li></ul>', 'rafandi'),
(193, '127.0.0.1', '', '2020-06-23 20:04:21', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>insyaf</b></li></ul>', 'rafandi'),
(194, '127.0.0.1', '', '2020-06-23 20:05:09', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>insyaf</b></li></ul>', 'rafandi'),
(195, '127.0.0.1', '', '2020-06-23 20:05:12', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>insyaf</b></li></ul>', 'rafandi'),
(196, '127.0.0.1', '', '2020-06-23 20:06:27', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>insyaf</b></li></ul>', 'rafandi'),
(197, '::1', '', '2020-06-23 20:06:40', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>insyaf</b></li></ul>', 'rafandi'),
(198, '127.0.0.1', '', '2020-06-23 20:08:14', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>insyaf</b></li></ul>', 'rafandi'),
(199, '127.0.0.1', '', '2020-06-23 20:09:13', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>nama_modul</b> dengan value <b>insyaf</b></li></ul>', 'rafandi'),
(200, '127.0.0.1', '', '2020-06-23 20:09:27', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>12</b></li><li><b>nama_alat</b> dengan value <b>phone</b></li><li><b>merk</b> dengan value <b>advan</b></li><li><b>seri</b> dengan value <b>G5</b></li><li><b>stok_min</b> dengan value <b>50</b></li><li><b>stok_ini</b> dengan value <b>60</b></li></ul>', 'rafandi'),
(201, '127.0.0.1', '', '2020-06-23 20:11:18', 'Mengedit Master modul dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>undefined</b></li><li><b>nama_modul</b> dengan value <b>insyaf</b></li></ul>', 'rafandi'),
(202, '127.0.0.1', '', '2020-06-23 21:32:04', 'Menambah Peminjaman peminjaman_alat dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>qjwid</b></li><li><b>nama_alat</b> dengan value <b>ajids</b></li><li><b>merk</b> dengan value <b>iajdi</b></li><li><b>seri</b> dengan value <b>iQJDI</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'rafandi'),
(203, '127.0.0.1', '', '2020-06-23 21:33:01', 'Menghapus laporan dengan id 1', 'rafandi'),
(204, '127.0.0.1', '', '2020-06-23 21:33:53', 'Menambah Peminjaman peminjaman_alat dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>jqhewi</b></li><li><b>nama_alat</b> dengan value <b>iwjerij</b></li><li><b>merk</b> dengan value <b>iejri</b></li><li><b>seri</b> dengan value <b>iwejri</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'rafandi'),
(205, '127.0.0.1', '', '2020-06-23 21:34:01', 'Mengedit Peminjaman peminjaman_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_peminjaman</b> dengan value <b>jqhew</b></li><li><b>nama_alat</b> dengan value <b>iwjerij</b></li><li><b>merk</b> dengan value <b>qqqq</b></li></ul>', 'rafandi'),
(206, '127.0.0.1', '', '2020-06-23 21:47:10', 'Mengedit Peminjaman peminjaman_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>id_peminjaman</b> dengan value <b>jqhew</b></li><li><b>nama_alat</b> dengan value <b>iwjerij</b></li><li><b>merk</b> dengan value <b>qqqq</b></li><li><b>seri</b> dengan value <b>wwww</b></li></ul>', 'rafandi'),
(207, '::1', '', '2020-06-24 06:13:58', 'Login  by RAFANDI', 'rafandi'),
(208, '::1', '', '2020-06-24 11:40:20', 'Login  by RAFANDI', 'rafandi'),
(209, '::1', '', '2020-06-24 12:31:57', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>q3EWDAS</b></li><li><b>alamat_lab</b> dengan value <b>ewa4rfd</b></li><li><b>korlab</b> dengan value <b>ewasfd</b></li><li><b>laboran</b> dengan value <b>esfdc</b></li></ul>', 'rafandi'),
(210, '::1', '', '2020-06-24 12:33:05', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>sdkcsd</b></li><li><b>alamat_lab</b> dengan value <b>jsbdi</b></li><li><b>korlab</b> dengan value <b>khsbdc</b></li><li><b>laboran</b> dengan value <b>knbdzc</b></li></ul>', 'rafandi'),
(211, '::1', '', '2020-06-24 12:34:34', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>na fdkje</b></li><li><b>alamat_lab</b> dengan value <b>ansdlkj</b></li><li><b>korlab</b> dengan value <b>ms dl</b></li><li><b>laboran</b> dengan value <b>akjsdu</b></li></ul>', 'rafandi'),
(212, '::1', '', '2020-06-24 12:55:18', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama_lab</b> dengan value <b>esdhg</b></li><li><b>alamat_lab</b> dengan value <b>files/2020/05/esport2.jpg</b></li><li><b>korlab</b> dengan value <b>IAudj</b></li><li><b>laboran</b> dengan value <b>asijdoi</b></li></ul>', 'rafandi'),
(213, '::1', '', '2020-06-24 15:38:04', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>rgt</b></li><li><b>merk</b> dengan value <b>politron</b></li><li><b>seri</b> dengan value <b>a</b></li><li><b>stok_min</b> dengan value <b>33</b></li><li><b>stok_ini</b> dengan value <b>22</b></li></ul>', 'rafandi'),
(214, '::1', '', '2020-06-24 15:41:57', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>11</b></li><li><b>nama_alat</b> dengan value <b>rgt</b></li><li><b>merk</b> dengan value <b>politron</b></li><li><b>seri</b> dengan value <b>a</b></li><li><b>stok_min</b> dengan value <b>33</b></li><li><b>stok_ini</b> dengan value <b>21</b></li></ul>', 'rafandi'),
(215, '::1', '', '2020-06-24 16:12:50', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>aWD</b></li><li><b>alamat_lab</b> dengan value <b>JAHFDSO</b></li><li><b>korlab</b> dengan value <b>ihjeur</b></li><li><b>laboran</b> dengan value <b>uhe</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(216, '::1', '', '2020-06-24 16:21:10', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>jahdwo</b></li><li><b>alamat_lab</b> dengan value <b>iad</b></li><li><b>korlab</b> dengan value <b>ihawiue</b></li><li><b>laboran</b> dengan value <b>ihewar</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(217, '::1', '', '2020-06-24 16:22:55', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>sdtr</b></li><li><b>alamat_lab</b> dengan value <b>ewt</b></li><li><b>korlab</b> dengan value <b>wte</b></li><li><b>laboran</b> dengan value <b>sdgf</b></li><li><b>status</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(218, '::1', '', '2020-06-24 16:23:43', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>sss</b></li><li><b>alamat_lab</b> dengan value <b>ddd</b></li><li><b>korlab</b> dengan value <b>fff</b></li><li><b>laboran</b> dengan value <b>ggg</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(219, '::1', '', '2020-06-24 16:26:47', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_lab</b> dengan value <b>jahdwo</b></li><li><b>alamat_lab</b> dengan value <b>iad</b></li><li><b>korlab</b> dengan value <b>ihawiue</b></li><li><b>laboran</b> dengan value <b>ihewar</b></li><li><b>status</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(220, '::1', '', '2020-06-24 16:46:05', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_lab</b> dengan value <b>jahdwo</b></li><li><b>alamat_lab</b> dengan value <b>iad</b></li><li><b>korlab</b> dengan value <b>ihawiue</b></li><li><b>laboran</b> dengan value <b>ihewar</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(221, '::1', '', '2020-06-24 18:42:53', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_lab</b> dengan value <b>jahdwo</b></li><li><b>alamat_lab</b> dengan value <b>iad</b></li><li><b>korlab</b> dengan value <b>ihawiue</b></li><li><b>laboran</b> dengan value <b>ihewar</b></li><li><b>status</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(222, '::1', '', '2020-06-24 18:42:59', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_lab</b> dengan value <b>jahdwo</b></li><li><b>alamat_lab</b> dengan value <b>iad</b></li><li><b>korlab</b> dengan value <b>ihawiue</b></li><li><b>laboran</b> dengan value <b>ihewar</b></li><li><b>status</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(223, '::1', '', '2020-06-24 18:52:30', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>budi</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(224, '::1', '', '2020-06-24 18:52:38', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>budi</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(225, '::1', '', '2020-06-24 18:52:42', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>uhaud</b></li><li><b>nama</b> dengan value <b>sdiyh</b></li><li><b>nama_barang</b> dengan value <b>uahdu</b></li><li><b>status</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(226, '::1', '', '2020-06-24 18:56:14', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>uhaud</b></li><li><b>nama</b> dengan value <b>sdiyh</b></li><li><b>nama_barang</b> dengan value <b>uahdu</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(227, '::1', '', '2020-06-24 18:57:08', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_lab</b> dengan value <b>jahdwo</b></li><li><b>alamat_lab</b> dengan value <b>iad</b></li><li><b>korlab</b> dengan value <b>ihawiue</b></li><li><b>laboran</b> dengan value <b>ihewar</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(228, '::1', '', '2020-06-24 18:59:18', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_lab</b> dengan value <b>jahdwo</b></li><li><b>alamat_lab</b> dengan value <b>iad</b></li><li><b>korlab</b> dengan value <b>ihawiue</b></li><li><b>laboran</b> dengan value <b>ihewar</b></li><li><b>status</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(229, '::1', '', '2020-06-24 19:36:25', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>budi</b></li><li><b>status</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(230, '::1', '', '2020-06-24 19:36:53', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>budi</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(231, '::1', '', '2020-06-24 20:06:30', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>budi</b></li><li><b>status</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(232, '::1', '', '2020-06-24 20:07:42', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>budi</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(233, '::1', '', '2020-06-24 20:11:21', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(234, '::1', '', '2020-06-24 20:13:04', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(235, '::1', '', '2020-06-24 20:50:55', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>12</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(236, '::1', '', '2020-06-24 20:51:04', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>12</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(237, '::1', '', '2020-06-24 20:51:11', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>bapak</b></li><li><b>nama_barang</b> dengan value <b>12</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(238, '::1', '', '2020-06-24 20:51:47', 'Menghapus laporan dengan id 5', 'rafandi'),
(239, '::1', '', '2020-06-24 21:06:08', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(240, '::1', '', '2020-06-24 21:06:12', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(241, '::1', '', '2020-06-24 21:07:38', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(242, '::1', '', '2020-06-24 21:08:16', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(243, '::1', '', '2020-06-24 21:08:23', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>uhaud</b></li><li><b>nama</b> dengan value <b>sdiyh</b></li><li><b>nama_barang</b> dengan value <b>kosong</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(244, '::1', '', '2020-06-24 21:16:24', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(245, '::1', '', '2020-06-24 21:16:32', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>uhaud</b></li><li><b>nama</b> dengan value <b>sdiyh</b></li><li><b>nama_barang</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(246, '::1', '', '2020-06-24 21:21:34', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(247, '::1', '', '2020-06-24 21:39:31', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>uhaud</b></li><li><b>nama</b> dengan value <b>sdiyh</b></li><li><b>nama_barang</b> dengan value <b>1</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(248, '127.0.0.1', '', '2020-06-25 07:30:05', 'Login  by RAFANDI', 'rafandi'),
(249, '::1', '', '2020-06-25 08:38:19', 'Menghapus laporan dengan id 2', 'rafandi'),
(250, '::1', '', '2020-06-25 08:59:53', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_lab</b> dengan value <b>jahdwo</b></li><li><b>alamat_lab</b> dengan value <b>iad</b></li><li><b>korlab</b> dengan value <b>ihawiue</b></li><li><b>laboran</b> dengan value <b>ihewar</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(251, '::1', '', '2020-06-25 12:28:36', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>ccc</b></li><li><b>merk</b> dengan value <b>ccc</b></li><li><b>seri</b> dengan value <b>ccc</b></li><li><b>stok_min</b> dengan value <b>32</b></li><li><b>stok_ini</b> dengan value <b>23</b></li></ul>', 'rafandi'),
(252, '::1', '', '2020-06-25 14:31:22', 'Login  by RAFANDI', 'rafandi'),
(253, '::1', '', '2020-06-25 15:07:47', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>mmm</b></li><li><b>merk</b> dengan value <b>nnn</b></li><li><b>seri</b> dengan value <b>bbb</b></li><li><b>stok_min</b> dengan value <b>10</b></li><li><b>stok_ini</b> dengan value <b>9</b></li></ul>', 'rafandi'),
(254, '::1', '', '2020-06-25 15:34:22', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>nama_alat</b> dengan value <b>phone</b></li><li><b>merk</b> dengan value <b>advan</b></li><li><b>seri</b> dengan value <b>G5</b></li><li><b>stok_min</b> dengan value <b>50</b></li><li><b>stok_ini</b> dengan value <b>50</b></li></ul>', 'rafandi'),
(255, '::1', '', '2020-06-25 15:40:19', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama</b> dengan value <b>sacd</b></li><li><b>keterangan</b> dengan value <b>sdc</b></li></ul>', 'rafandi'),
(256, '::1', '', '2020-06-25 15:41:08', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama</b> dengan value <b>sacd</b></li><li><b>keterangan</b> dengan value <b>mmmm</b></li></ul>', 'rafandi'),
(257, '::1', '', '2020-06-25 15:43:08', 'Menambah Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>koordinator</b> dengan value <b>jdjd</b></li><li><b>laboran</b> dengan value <b>jxhx</b></li><li><b>alamat</b> dengan value <b>xnx</b></li><li><b>email</b> dengan value <b>sunankarebet@gmail.com</b></li><li><b>anggota</b> dengan value <b>xxsjd</b></li></ul>', 'rafandi'),
(258, '::1', '', '2020-06-25 15:52:36', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>sacx</b></li><li><b>nama_peminjam</b> dengan value <b>asdji</b></li><li><b>nomor_induk</b> dengan value <b>kdjci</b></li><li><b>status_user</b> dengan value <b>kjew</b></li><li><b>kategori_peminjaman</b> dengan value <b>kjfd</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-24</b></li><li><b>cetak</b> dengan value <b>hwjhwduh</b></li><li><b>status</b> dengan value <b>uweuf</b></li></ul>', 'rafandi'),
(259, '::1', '', '2020-06-25 16:00:11', 'Menambah Jatuh Tempo dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>WQ</b></li><li><b>nama_peminjam</b> dengan value <b>ERG</b></li><li><b>nomor_induk</b> dengan value <b>VTTR</b></li><li><b>status_user</b> dengan value <b>RVT</b></li><li><b>kategori_peminjaman</b> dengan value <b>OIUFEK</b></li><li><b>tanggal_pinjam</b> dengan value <b>2020-06-26</b></li><li><b>cetak</b> dengan value <b>POKJ</b></li><li><b>status</b> dengan value <b>UEN</b></li></ul>', 'rafandi'),
(260, '::1', '', '2020-06-25 16:03:58', 'Menambah Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>koordinator</b> dengan value <b>ajjsjs</b></li><li><b>laboran</b> dengan value <b>hshhwh</b></li><li><b>alamat</b> dengan value <b>hdshhshs</b></li><li><b>email</b> dengan value <b>hjshhsw</b></li><li><b>anggota</b> dengan value <b>jshs</b></li></ul>', 'rafandi'),
(261, '::1', '', '2020-06-25 18:58:14', 'Login  by RAFANDI', 'rafandi'),
(262, '::1', '', '2020-06-25 19:30:19', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>odwodw</b></li><li><b>jenis_bahan</b> dengan value <b>kds</b></li><li><b>nama_bahan</b> dengan value <b>dwok</b></li><li><b>tahun</b> dengan value <b>okdwodw</b></li><li><b>pengarang</b> dengan value <b>ldwok</b></li></ul>', 'rafandi'),
(263, '::1', '', '2020-06-25 19:31:01', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>iuewiuewiu</b></li><li><b>jenis_bahan</b> dengan value <b>iewiuew</b></li><li><b>nama_bahan</b> dengan value <b>ewiew</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>pengarang</b> dengan value <b>ijeiew</b></li></ul>', 'rafandi'),
(264, '::1', '', '2020-06-25 19:34:09', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>iuew</b></li><li><b>jenis_bahan</b> dengan value <b>iewiuew</b></li><li><b>nama_bahan</b> dengan value <b>ewiew</b></li><li><b>tahun</b> dengan value <b>2398</b></li><li><b>pengarang</b> dengan value <b>ijeiew</b></li></ul>', 'rafandi'),
(265, '::1', '', '2020-06-25 19:34:42', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>iuew</b></li><li><b>jenis_bahan</b> dengan value <b>iewiuew</b></li><li><b>nama_bahan</b> dengan value <b>ewiew</b></li><li><b>tahun</b> dengan value <b>2098</b></li><li><b>pengarang</b> dengan value <b>ijeiew</b></li></ul>', 'rafandi'),
(266, '::1', '', '2020-06-25 19:34:53', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>iuew</b></li><li><b>jenis_bahan</b> dengan value <b>iewiuew</b></li><li><b>nama_bahan</b> dengan value <b>ewiew</b></li><li><b>tahun</b> dengan value <b>2012</b></li><li><b>pengarang</b> dengan value <b>ijeiew</b></li></ul>', 'rafandi'),
(267, '::1', '', '2020-06-25 19:34:59', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>iuew</b></li><li><b>jenis_bahan</b> dengan value <b>iewiuew</b></li><li><b>nama_bahan</b> dengan value <b>ewiew</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>pengarang</b> dengan value <b>hhhh</b></li></ul>', 'rafandi'),
(268, '::1', '', '2020-06-25 19:35:50', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>iuew</b></li><li><b>jenis_bahan</b> dengan value <b>iewiuew</b></li><li><b>nama_bahan</b> dengan value <b>ewiew</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>pengarang</b> dengan value <b>jgyt</b></li></ul>', 'rafandi'),
(269, '::1', '', '2020-06-25 19:41:26', 'Menghapus laporan dengan id 16', 'rafandi'),
(270, '::1', '', '2020-06-25 19:42:18', 'Login  by RAFANDI', 'rafandi'),
(271, '::1', '', '2020-06-25 19:46:01', 'Menghapus laporan dengan id 1', 'rafandi'),
(272, '::1', '', '2020-06-25 19:46:06', 'Menghapus laporan dengan id 3', 'rafandi'),
(273, '::1', '', '2020-06-25 19:49:15', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ewas</b></li><li><b>jenis_bahan</b> dengan value <b>r4tsdf</b></li><li><b>nama_bahan</b> dengan value <b>ewarf</b></li><li><b>tahun</b> dengan value <b>2323</b></li><li><b>pengarang</b> dengan value <b>wefsa</b></li></ul>', 'rafandi'),
(274, '::1', '', '2020-06-25 19:49:24', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>ewas</b></li><li><b>jenis_bahan</b> dengan value <b>r4tsdf</b></li><li><b>nama_bahan</b> dengan value <b>ewarf</b></li><li><b>tahun</b> dengan value <b>2323</b></li><li><b>pengarang</b> dengan value <b>hhhh</b></li></ul>', 'rafandi'),
(275, '::1', '', '2020-06-25 19:49:51', 'Menghapus laporan dengan id 5', 'rafandi'),
(276, '::1', '', '2020-06-25 19:52:36', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>okjds</b></li><li><b>jenis_bahan</b> dengan value <b>idwkm</b></li><li><b>nama_bahan</b> dengan value <b>oswkm</b></li><li><b>tahun</b> dengan value <b>8743</b></li><li><b>pengarang</b> dengan value <b>kjsanj</b></li></ul>', 'rafandi'),
(277, '::1', '', '2020-06-25 19:52:43', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>okjd</b></li><li><b>jenis_bahan</b> dengan value <b>idwkm</b></li><li><b>nama_bahan</b> dengan value <b>oswkm</b></li><li><b>tahun</b> dengan value <b>8743</b></li><li><b>pengarang</b> dengan value <b>hhhh</b></li></ul>', 'rafandi'),
(278, '::1', '', '2020-06-25 19:52:46', 'Menghapus laporan dengan id 6', 'rafandi'),
(279, '::1', '', '2020-06-25 19:52:51', 'Menghapus laporan dengan id 6', 'rafandi'),
(280, '::1', '', '2020-06-25 19:54:23', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>hfdsa</b></li><li><b>jenis_bahan</b> dengan value <b>ojdsa</b></li><li><b>nama_bahan</b> dengan value <b>ksad</b></li><li><b>tahun</b> dengan value <b>7322</b></li><li><b>pengarang</b> dengan value <b>kjhg</b></li></ul>', 'rafandi'),
(281, '::1', '', '2020-06-25 19:54:28', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>hfds</b></li><li><b>jenis_bahan</b> dengan value <b>ojdsa</b></li><li><b>nama_bahan</b> dengan value <b>ksad</b></li><li><b>tahun</b> dengan value <b>7322</b></li><li><b>pengarang</b> dengan value <b>jh</b></li></ul>', 'rafandi'),
(282, '::1', '', '2020-06-25 19:54:31', 'Menghapus laporan dengan id 7', 'rafandi'),
(283, '::1', '', '2020-06-25 19:55:26', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>hjuas</b></li><li><b>jenis_bahan</b> dengan value <b>ksjiq</b></li><li><b>nama_bahan</b> dengan value <b>kqjsiq</b></li><li><b>tahun</b> dengan value <b>3232</b></li><li><b>pengarang</b> dengan value <b>jndsiq</b></li></ul>', 'rafandi'),
(284, '::1', '', '2020-06-25 19:57:05', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>asd</b></li><li><b>jenis_bahan</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>kosong</b></li><li><b>tahun</b> dengan value <b>232</b></li><li><b>pengarang</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(285, '::1', '', '2020-06-25 19:57:11', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>asd</b></li><li><b>jenis_bahan</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>kosong</b></li><li><b>tahun</b> dengan value <b>232</b></li><li><b>pengarang</b> dengan value <b>lkkh</b></li></ul>', 'rafandi'),
(286, '::1', '', '2020-06-25 19:57:15', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>asd</b></li><li><b>jenis_bahan</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>kosong</b></li><li><b>tahun</b> dengan value <b>232</b></li><li><b>pengarang</b> dengan value <b>mnbjs</b></li></ul>', 'rafandi'),
(287, '::1', '', '2020-06-25 19:57:43', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>asd</b></li><li><b>jenis_bahan</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>kosong</b></li><li><b>tahun</b> dengan value <b>232</b></li><li><b>pengarang</b> dengan value <b>hhhh</b></li></ul>', 'rafandi'),
(288, '::1', '', '2020-06-25 19:59:21', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>asd</b></li><li><b>jenis_bahan</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>kosong</b></li><li><b>tahun</b> dengan value <b>232</b></li><li><b>pengarang</b> dengan value <b>lll</b></li></ul>', 'rafandi'),
(289, '::1', '', '2020-06-25 19:59:26', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>asd</b></li><li><b>jenis_bahan</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>kosong</b></li><li><b>tahun</b> dengan value <b>232</b></li><li><b>pengarang</b> dengan value <b>kkkk</b></li></ul>', 'rafandi');
INSERT INTO `cms_log` (`id_log`, `ip`, `mac_address`, `time`, `kegiatan`, `user`) VALUES
(290, '::1', '', '2020-06-25 20:11:31', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>asd</b></li><li><b>jenis_bahan</b> dengan value <b>kosong</b></li><li><b>nama_bahan</b> dengan value <b>kosong</b></li><li><b>tahun</b> dengan value <b>232</b></li><li><b>pengarang</b> dengan value <b>jt</b></li></ul>', 'rafandi'),
(291, '::1', '', '2020-06-25 20:20:47', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>qwhu</b></li><li><b>jenis_bahan</b> dengan value <b>hyewyg</b></li><li><b>nama_bahan</b> dengan value <b>uhwud</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>pengarang</b> dengan value <b>hauseh</b></li></ul>', 'rafandi'),
(292, '::1', '', '2020-06-25 20:21:43', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_lab</b> dengan value <b>jahdwo</b></li><li><b>alamat_lab</b> dengan value <b>iad</b></li><li><b>korlab</b> dengan value <b>ihawiue</b></li><li><b>laboran</b> dengan value <b>ihewar</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(293, '::1', '', '2020-06-25 20:21:54', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>10</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(294, '::1', '', '2020-06-25 22:20:58', 'Menambah Peminjaman peminjaman_alat dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>ugy</b></li><li><b>nama_alat</b> dengan value <b>yt6</b></li><li><b>merk</b> dengan value <b>fyt</b></li><li><b>seri</b> dengan value <b>yft</b></li><li><b>kondisi</b> dengan value <b>Rusak</b></li></ul>', 'rafandi'),
(295, '::1', '', '2020-06-25 22:21:02', 'Menghapus laporan dengan id 1', 'rafandi'),
(296, '::1', '', '2020-06-25 23:12:37', 'Login  by RAFANDI', 'rafandi'),
(297, '::1', '', '2020-06-26 09:07:39', 'Login  by RAFANDI', 'rafandi'),
(298, '::1', '', '2020-06-26 10:12:02', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>koordinator</b> dengan value <b>IAudj</b></li><li><b>laboran</b> dengan value <b>asijdoi</b></li><li><b>alamat</b> dengan value <b>asiew</b></li><li><b>email</b> dengan value <b>satekirik@okdalang.com</b></li><li><b>anggota</b> dengan value <b>kajdspi</b></li></ul>', 'rafandi'),
(299, '::1', '', '2020-06-26 10:12:48', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>koordinator</b> dengan value <b>IAudj</b></li><li><b>laboran</b> dengan value <b>asijdoi</b></li><li><b>alamat</b> dengan value <b>asiew</b></li><li><b>email</b> dengan value <b>satekirik@okdalang.com</b></li><li><b>anggota</b> dengan value <b>kajdspi</b></li></ul>', 'rafandi'),
(300, '::1', '', '2020-06-26 10:15:13', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(301, '::1', '', '2020-06-26 10:55:04', 'Login  by RAFANDI', 'rafandi'),
(302, '::1', '', '2020-06-26 13:06:54', 'Login  by RAFANDI', 'rafandi'),
(303, '::1', '', '2020-06-26 14:05:48', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(304, '::1', '', '2020-06-26 14:06:03', 'Login  by RAFANDI', 'rafandi'),
(305, '::1', '', '2020-06-26 19:15:39', 'Login  by RAFANDI', 'rafandi'),
(306, '::1', '', '2020-06-27 07:53:40', 'Login  by RAFANDI', 'rafandi'),
(307, '::1', '', '2020-06-27 07:54:00', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>10</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(308, '::1', '', '2020-06-27 07:54:05', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>10</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(309, '::1', '', '2020-06-27 07:55:32', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_lab</b> dengan value <b>jahdwo</b></li><li><b>alamat_lab</b> dengan value <b>iad</b></li><li><b>korlab</b> dengan value <b>ihawiue</b></li><li><b>laboran</b> dengan value <b>ihewar</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(310, '::1', '', '2020-06-27 09:55:45', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RIZKI aFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(311, '::1', '', '2020-06-27 09:55:49', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(312, '::1', '', '2020-06-27 09:56:00', 'Login  by RIZKI aFANDI', 'rafandi'),
(313, '::1', '', '2020-06-27 09:56:26', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RIZKI AFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(314, '::1', '', '2020-06-27 10:12:46', 'Login  by RIZKI AFANDI', 'rafandi'),
(315, '::1', '', '2020-06-27 10:17:58', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>kjihwude</b></li><li><b>alamat_lab</b> dengan value <b>ihewuyhwueh</b></li><li><b>korlab</b> dengan value <b>huweu</b></li><li><b>laboran</b> dengan value <b>hwue</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(316, '::1', '', '2020-06-27 10:28:19', 'Logout SILABKOM by RIZKI AFANDI', 'rafandi'),
(317, '::1', '', '2020-06-27 10:57:24', 'Login  by RIZKI AFANDI', 'rafandi'),
(318, '::1', '', '2020-06-27 12:37:23', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>10</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(319, '::1', '', '2020-06-27 12:46:31', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>10</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(320, '::1', '', '2020-06-27 12:46:37', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>uhaud</b></li><li><b>nama</b> dengan value <b>sdiyh</b></li><li><b>nama_barang</b> dengan value <b>10</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(321, '::1', '', '2020-06-27 12:47:28', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>id_peminjaman</b> dengan value <b>ini</b></li><li><b>nama</b> dengan value <b>ibu</b></li><li><b>nama_barang</b> dengan value <b>10</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(322, '::1', '', '2020-06-27 12:47:33', 'Menghapus laporan dengan id 4', 'rafandi'),
(323, '::1', '', '2020-06-27 12:47:35', 'Menghapus laporan dengan id 3', 'rafandi'),
(324, '::1', '', '2020-06-27 12:49:57', 'Menambah Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>Sw</b></li><li><b>nama</b> dengan value <b>asfdea</b></li><li><b>nama_barang</b> dengan value <b>asdew</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(325, '::1', '', '2020-06-27 12:51:11', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>Sw</b></li><li><b>nama</b> dengan value <b>asfdea</b></li><li><b>nama_barang</b> dengan value <b>10</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(326, '::1', '', '2020-06-27 12:54:50', 'Mengedit Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>5</b></li><li><b>id_peminjaman</b> dengan value <b>Sw</b></li><li><b>nama</b> dengan value <b>asfdea</b></li><li><b>nama_barang</b> dengan value <b>ini</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(327, '::1', '', '2020-06-27 12:55:17', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>hhl</b></li><li><b>jenis_bahan</b> dengan value <b>hiyg</b></li><li><b>nama_bahan</b> dengan value <b>kalau</b></li><li><b>tahun</b> dengan value <b>1324</b></li><li><b>pengarang</b> dengan value <b>uhiuhoi</b></li></ul>', 'rafandi'),
(328, '::1', '', '2020-06-27 12:55:32', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>jikh</b></li><li><b>jenis_bahan</b> dengan value <b>uhgyg</b></li><li><b>nama_bahan</b> dengan value <b>mimi</b></li><li><b>tahun</b> dengan value <b>4242</b></li><li><b>pengarang</b> dengan value <b>hyyg</b></li></ul>', 'rafandi'),
(329, '::1', '', '2020-06-27 13:00:15', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>2</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>kJQS</b></li><li><b>stok</b> dengan value <b>JAWD</b></li><li><b>kondisi</b> dengan value <b>JAIDW</b></li></ul>', 'rafandi'),
(330, '::1', '', '2020-06-27 13:37:40', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>nama_satuan</b> dengan value <b>2</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>kwsnw</b></li><li><b>stok</b> dengan value <b>nsjdwq</b></li><li><b>kondisi</b> dengan value <b>nwq</b></li></ul>', 'rafandi'),
(331, '::1', '', '2020-06-27 13:51:39', 'Mengedit jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>asasasas</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(332, '::1', '', '2020-06-27 14:03:52', 'Mengedit jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>asasasas</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(333, '::1', '', '2020-06-27 14:05:06', 'Menambah jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>aweqe</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(334, '::1', '', '2020-06-27 14:05:13', 'Mengedit jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>aweqe</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(335, '::1', '', '2020-06-27 14:06:02', 'Mengedit jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>aweqe</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(336, '::1', '', '2020-06-27 14:06:08', 'Mengedit jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>nsakj</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(337, '::1', '', '2020-06-27 14:07:53', 'Mengedit jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>aweqe</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(338, '::1', '', '2020-06-27 14:08:00', 'Mengedit jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>asasasas</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(339, '::1', '', '2020-06-27 14:08:16', 'Mengedit jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>hhhh</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(340, '::1', '', '2020-06-27 14:11:08', 'Mengedit jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>aweqe</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(341, '::1', '', '2020-06-27 14:27:59', 'Mengedit kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>nama_satuan</b> dengan value <b>1</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>kwsnw</b></li><li><b>stok</b> dengan value <b>nsjdwq</b></li><li><b>kondisi</b> dengan value <b>nwq</b></li></ul>', 'rafandi'),
(342, '::1', '', '2020-06-27 14:40:50', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>koordinator</b> dengan value <b>IAudj</b></li><li><b>laboran</b> dengan value <b>asijdoi</b></li><li><b>alamat</b> dengan value <b>asiew</b></li><li><b>email</b> dengan value <b>satekirik@okdalang.com</b></li><li><b>anggota</b> dengan value <b>kajdspi</b></li></ul>', 'rafandi'),
(343, '::1', '', '2020-06-27 14:41:26', 'Menambah Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>koordinator</b> dengan value <b>dimana</b></li><li><b>laboran</b> dengan value <b>tempat</b></li><li><b>alamat</b> dengan value <b>kawun</b></li><li><b>email</b> dengan value <b>kita</b></li><li><b>anggota</b> dengan value <b>dikua</b></li></ul>', 'rafandi'),
(344, '::1', '', '2020-06-27 14:47:07', 'Menambah Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>koordinator</b> dengan value <b>dimana</b></li><li><b>laboran</b> dengan value <b>tempay</b></li><li><b>alamat</b> dengan value <b>kawin</b></li><li><b>email</b> dengan value <b>kita</b></li><li><b>anggota</b> dengan value <b>jancuk</b></li></ul>', 'rafandi'),
(345, '::1', '', '2020-06-27 14:48:30', 'Menambah Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>koordinator</b> dengan value <b>ad</b></li><li><b>laboran</b> dengan value <b>kadw</b></li><li><b>alamat</b> dengan value <b>jhbvq</b></li><li><b>email</b> dengan value <b>hhdsq</b></li><li><b>anggota</b> dengan value <b>hbhygaes</b></li></ul>', 'rafandi'),
(346, '::1', '', '2020-06-27 14:52:01', 'Menambah Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>jenis_laboratorium</b> dengan value <b>mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm</b></li><li><b>koordinator</b> dengan value <b>nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn</b></li><li><b>laboran</b> dengan value <b>bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb</b></li><li><b>alamat</b> dengan value <b>vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv</b></li><li><b>email</b> dengan value <b>cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc</b></li><li><b>anggota</b> dengan value <b>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</b></li></ul>', 'rafandi'),
(347, '::1', '', '2020-06-27 14:56:17', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>jenis_laboratorium</b> dengan value <b>esdhg</b></li><li><b>koordinator</b> dengan value <b>IAudj</b></li><li><b>laboran</b> dengan value <b>asijdoi</b></li><li><b>alamat</b> dengan value <b>asiew</b></li><li><b>email</b> dengan value <b>satekirik@okdalang.com</b></li><li><b>anggota</b> dengan value <b>kajdspi</b></li></ul>', 'rafandi'),
(348, '::1', '', '2020-06-27 14:56:26', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>jenis_laboratorium</b> dengan value <b>endhog</b></li><li><b>koordinator</b> dengan value <b>IAudj</b></li><li><b>laboran</b> dengan value <b>asijdoi</b></li><li><b>alamat</b> dengan value <b>asiew</b></li><li><b>email</b> dengan value <b>satekirik@okdalang.com</b></li><li><b>anggota</b> dengan value <b>kajdspi</b></li></ul>', 'rafandi'),
(349, '::1', '', '2020-06-27 15:04:24', 'Menambah jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>uhweo</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(350, '::1', '', '2020-06-27 15:05:10', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>manwdjwq</b></li><li><b>alamat_lab</b> dengan value <b>jnjsnjw</b></li><li><b>korlab</b> dengan value <b>jnjsad</b></li><li><b>laboran</b> dengan value <b>jnwdsj</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(351, '::1', '', '2020-06-27 15:05:28', 'Menambah Kelola kelola_penggantian dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>jnsnd</b></li><li><b>nama</b> dengan value <b>jbajsd</b></li><li><b>nama_barang</b> dengan value <b>jnJAS</b></li><li><b>status</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(352, '::1', '', '2020-06-27 15:05:37', 'Menghapus laporan dengan id 6', 'rafandi'),
(353, '::1', '', '2020-06-27 15:07:46', 'Menambah jadwal_lab dengan data sbb:<br />\r\n                    <ul><li><b>nama_jadwal</b> dengan value <b>jane</b></li><li><b>status</b> dengan value <b>Tidak Ada</b></li></ul>', 'rafandi'),
(354, '::1', '', '2020-06-27 15:09:04', 'Menambah Peminjaman peminjaman_alat dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>nuh</b></li><li><b>nama_alat</b> dengan value <b>4</b></li><li><b>merk</b> dengan value <b>jniji</b></li><li><b>seri</b> dengan value <b>huuqd</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'rafandi'),
(355, '::1', '', '2020-06-27 15:09:07', 'Menghapus laporan dengan id 3', 'rafandi'),
(356, '::1', '', '2020-06-27 17:22:35', 'Menambah Kelola kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>3</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>WHAE</b></li><li><b>stok</b> dengan value <b>UAHEOUW</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'rafandi'),
(357, '::1', '', '2020-06-27 19:30:44', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_lab</b> dengan value <b>kjihwude</b></li><li><b>alamat_lab</b> dengan value <b>ihewuyhwueh</b></li><li><b>korlab</b> dengan value <b>huweu</b></li><li><b>laboran</b> dengan value <b>hwue</b></li><li><b>status</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(358, '::1', '', '2020-06-27 19:39:00', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_lab</b> dengan value <b>kjihwude</b></li><li><b>alamat_lab</b> dengan value <b>ihewuyhwueh</b></li><li><b>korlab</b> dengan value <b>huweu</b></li><li><b>laboran</b> dengan value <b>hwue</b></li><li><b>status</b> dengan value <b>Ada</b></li></ul>', 'rafandi'),
(359, '::1', '', '2020-06-27 20:38:22', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(360, '::1', '', '2020-06-27 21:49:19', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>mmm</b></li><li><b>mata_kuliah</b> dengan value <b>nnn</b></li><li><b>sks</b> dengan value <b>5</b></li></ul>', 'rafandi'),
(361, '::1', '', '2020-06-27 22:08:46', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>jenis_laboratorium</b> dengan value <b>endhog</b></li><li><b>koordinator</b> dengan value <b>IAudj</b></li><li><b>laboran</b> dengan value <b>asijdoi</b></li><li><b>alamat</b> dengan value <b>asiew</b></li><li><b>email</b> dengan value <b>satekirik@okdalang.com</b></li><li><b>anggota</b> dengan value <b>kajdspi</b></li></ul>', 'rafandi'),
(362, '::1', '', '2020-06-27 22:58:43', 'Mengedit kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>nama_satuan</b> dengan value <b>1</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>kwsnw</b></li><li><b>stok</b> dengan value <b>nsjdwq</b></li><li><b>kondisi</b> dengan value <b>3</b></li></ul>', 'rafandi'),
(363, '::1', '', '2020-06-27 22:58:52', 'Mengedit kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_alat</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>3</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>WHAE</b></li><li><b>stok</b> dengan value <b>UAHEOUW</b></li><li><b>kondisi</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(364, '::1', '', '2020-06-27 22:59:42', 'Mengedit kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>nama_satuan</b> dengan value <b>1</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>kwsnw</b></li><li><b>stok</b> dengan value <b>nsjdwq</b></li><li><b>kondisi</b> dengan value <b>3</b></li></ul>', 'rafandi'),
(365, '::1', '', '2020-06-27 22:59:57', 'Mengedit kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>nama_satuan</b> dengan value <b>1</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>kwsnw</b></li><li><b>stok</b> dengan value <b>nsjdwq</b></li><li><b>kondisi</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(366, '::1', '', '2020-06-27 23:00:06', 'Mengedit kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>4</b></li><li><b>nama_alat</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>3</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>WHAE</b></li><li><b>stok</b> dengan value <b>UAHEOUW</b></li><li><b>kondisi</b> dengan value <b>3</b></li></ul>', 'rafandi'),
(367, '::1', '', '2020-06-27 23:01:08', 'Mengedit kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>1</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>kwsnw</b></li><li><b>stok</b> dengan value <b>nsjdwq</b></li><li><b>kondisi</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(368, '::1', '', '2020-06-27 23:01:15', 'Mengedit kelola_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama_alat</b> dengan value <b>4</b></li><li><b>nama_satuan</b> dengan value <b>1</b></li><li><b>jenis</b> dengan value <b>1</b></li><li><b>merk</b> dengan value <b>kwsnw</b></li><li><b>stok</b> dengan value <b>nsjdwq</b></li><li><b>kondisi</b> dengan value <b>3</b></li></ul>', 'rafandi'),
(369, '::1', '', '2020-06-28 07:25:23', 'Login  by RAFANDI', 'rafandi'),
(370, '::1', '', '2020-06-28 07:54:44', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>jenis_laboratorium</b> dengan value <b>pitu</b></li><li><b>koordinator</b> dengan value <b>IAudj</b></li><li><b>laboran</b> dengan value <b>asijdoi</b></li><li><b>alamat</b> dengan value <b>asiew</b></li><li><b>email</b> dengan value <b>satekirik@okdalang.com</b></li><li><b>anggota</b> dengan value <b>kajdspi</b></li></ul>', 'rafandi'),
(371, '::1', '', '2020-06-28 07:54:55', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>jenis_laboratorium</b> dengan value <b>pitu</b></li><li><b>koordinator</b> dengan value <b>IAudj</b></li><li><b>laboran</b> dengan value <b>asijdoi</b></li><li><b>alamat</b> dengan value <b>asiew</b></li><li><b>email</b> dengan value <b>satekirik@okdalang.com</b></li><li><b>anggota</b> dengan value <b>kajdspi</b></li></ul>', 'rafandi'),
(372, '::1', '', '2020-06-28 07:55:15', 'Menambah Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>jenis_laboratorium</b> dengan value <b>uhoised</b></li><li><b>koordinator</b> dengan value <b>jhwqj</b></li><li><b>laboran</b> dengan value <b>jnhquwej</b></li><li><b>alamat</b> dengan value <b>ijqwie</b></li><li><b>email</b> dengan value <b>ujqwie</b></li><li><b>anggota</b> dengan value <b>jqwiejpoiw</b></li></ul>', 'rafandi'),
(373, '::1', '', '2020-06-28 08:17:21', 'Menambah Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>jenis_laboratorium</b> dengan value <b>iwak</b></li><li><b>koordinator</b> dengan value <b>enem</b></li><li><b>laboran</b> dengan value <b>endhok</b></li><li><b>alamat</b> dengan value <b>piti</b></li><li><b>email</b> dengan value <b>mendem</b></li><li><b>anggota</b> dengan value <b>tenan</b></li></ul>', 'rafandi'),
(374, '::1', '', '2020-06-28 08:17:31', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>jenis_laboratorium</b> dengan value <b>iwak</b></li><li><b>koordinator</b> dengan value <b>enem</b></li><li><b>laboran</b> dengan value <b>endhok</b></li><li><b>alamat</b> dengan value <b>piti</b></li><li><b>email</b> dengan value <b>mendem</b></li><li><b>anggota</b> dengan value <b>tenan</b></li></ul>', 'rafandi'),
(375, '::1', '', '2020-06-28 11:42:53', 'Menambah Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>hQ</b></li><li><b>jenis_bahan</b> dengan value <b>UHWAEU</b></li><li><b>nama_bahan</b> dengan value <b>UAHWUE</b></li><li><b>tahun</b> dengan value <b>UHAWUEQH</b></li><li><b>pengarang</b> dengan value <b>UHAWUE</b></li></ul>', 'rafandi'),
(376, '::1', '', '2020-06-28 11:42:59', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>hQ</b></li><li><b>jenis_bahan</b> dengan value <b>UHWAEU</b></li><li><b>nama_bahan</b> dengan value <b>UAHWUE</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>pengarang</b> dengan value <b>UHAWUE</b></li></ul>', 'rafandi'),
(377, '::1', '', '2020-06-28 11:43:05', 'Mengedit Master master_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>hQ</b></li><li><b>jenis_bahan</b> dengan value <b>UHWAEU</b></li><li><b>nama_bahan</b> dengan value <b>UAHWUE</b></li><li><b>tahun</b> dengan value <b>2020</b></li><li><b>pengarang</b> dengan value <b>UHAWUE</b></li></ul>', 'rafandi'),
(378, '::1', '', '2020-06-28 11:43:47', 'Menambah Peminjaman peminjaman_alat dengan data sbb:<br />\r\n                    <ul><li><b>id_peminjaman</b> dengan value <b>AWHID</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>merk</b> dengan value <b>JNJN</b></li><li><b>seri</b> dengan value <b>nijni</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'rafandi'),
(379, '::1', '', '2020-06-28 11:43:54', 'Mengedit Peminjaman peminjaman_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>AWHID</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>merk</b> dengan value <b>JNJN</b></li><li><b>seri</b> dengan value <b>nijni</b></li><li><b>kondisi</b> dengan value <b>Rusak</b></li></ul>', 'rafandi'),
(380, '::1', '', '2020-06-28 11:44:01', 'Mengedit Peminjaman peminjaman_alat dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>id_peminjaman</b> dengan value <b>AWHID</b></li><li><b>nama_alat</b> dengan value <b>2</b></li><li><b>merk</b> dengan value <b>JNJN</b></li><li><b>seri</b> dengan value <b>nijni</b></li><li><b>kondisi</b> dengan value <b>Baik</b></li></ul>', 'rafandi'),
(381, '::1', '', '2020-06-28 13:44:44', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>jenis</b> dengan value <b>iwak 5</b></li><li><b>koordinator</b> dengan value <b>enem</b></li><li><b>laboran</b> dengan value <b>endhok</b></li><li><b>alamat</b> dengan value <b>piti</b></li><li><b>email</b> dengan value <b>mendem</b></li><li><b>anggota</b> dengan value <b>tenan</b></li></ul>', 'rafandi'),
(382, '::1', '', '2020-06-28 15:50:59', 'Mengedit Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>jenis</b> dengan value <b>iwak 5</b></li><li><b>koordinator</b> dengan value <b>enem</b></li><li><b>laboran</b> dengan value <b>endhok</b></li><li><b>alamat</b> dengan value <b>piti</b></li><li><b>email</b> dengan value <b>mendem</b></li><li><b>anggota</b> dengan value <b>tenan</b></li></ul>', 'rafandi'),
(383, '::1', '', '2020-06-28 16:00:28', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>gambar</b> dengan value <b>files/2020/06/9faeba0c5e0ce12291b9a02cf8cff26b.jpg</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(384, '::1', '', '2020-06-28 16:00:32', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>gambar</b> dengan value <b>files/2020/06/67f6bc39cca6371a3d36b0f6d77b0a57.jpg</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(385, '::1', '', '2020-06-28 16:00:34', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>gambar</b> dengan value <b>files/2020/06/cebca74d74ba85bcc24863f76bfa7a43.jpg</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(386, '::1', '', '2020-06-28 16:01:11', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>kosong</b></li></ul>', 'rafandi'),
(387, '::1', '', '2020-06-28 16:01:18', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(388, '::1', '', '2020-06-28 16:01:31', 'Login  by RAFANDI', 'rafandi'),
(389, '::1', '', '2020-06-28 16:03:29', 'Mengedit Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>nama</b> dengan value <b>sacd</b></li><li><b>keterangan</b> dengan value <b>nnn</b></li></ul>', 'rafandi'),
(390, '::1', '', '2020-06-28 16:04:19', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>gambar</b> dengan value <b>files/2020/06/bc7da4201bae2e69bd65db16dd4a718a.jpg</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>ngkethak</b></li></ul>', 'rafandi'),
(391, '::1', '', '2020-06-28 16:04:53', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>gambar</b> dengan value <b>files/2020/06/751e915b8290e9720299dd4dd3e73a69.jpg</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>ngkethak</b></li></ul>', 'rafandi'),
(392, '::1', '', '2020-06-28 16:05:04', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(393, '::1', '', '2020-06-28 16:05:15', 'Login  by RAFANDI', 'rafandi'),
(394, '::1', '', '2020-06-28 16:06:02', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>mbuh</b></li></ul>', 'rafandi'),
(395, '::1', '', '2020-06-28 16:51:38', 'Menambah Master tipe_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>koordinator</b> dengan value <b>fd</b></li><li><b>laboran</b> dengan value <b>sd</b></li><li><b>alamat</b> dengan value <b>wadas</b></li><li><b>email</b> dengan value <b>r.afandi.21.@srudents.unnes.ac.id</b></li><li><b>anggota</b> dengan value <b>zc</b></li></ul>', 'rafandi'),
(396, '::1', '', '2020-06-28 17:18:06', 'Mengubah user dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>14</b></li><li><b>nama</b> dengan value <b>RAFANDI</b></li><li><b>username</b> dengan value <b>rafandi</b></li><li><b>password</b> dengan value <b>*66005FBF8E725C011243BD39EC5BBF6FFF812C97</b></li><li><b>gambar</b> dengan value <b>files/2020/06/56503c024d8697ae15fe8ac17b2f88f2.jpg</b></li><li><b>no_hp</b> dengan value <b>085150021000</b></li><li><b>alamat</b> dengan value <b>mbuh</b></li></ul>', 'rafandi'),
(397, '::1', '', '2020-06-28 17:18:09', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(398, '::1', '', '2020-06-28 17:18:18', 'Login  by RAFANDI', 'rafandi'),
(399, '127.0.0.1', '', '2020-06-28 18:04:03', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(400, '127.0.0.1', '', '2020-06-28 18:04:16', 'Login  by RAFANDI', 'rafandi'),
(401, '127.0.0.1', '', '2020-06-28 18:06:14', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(402, '127.0.0.1', '', '2020-06-28 19:22:00', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(403, '127.0.0.1', '', '2020-06-28 19:22:22', 'Login  by Kepala Laboratorium', 'kepala'),
(404, '127.0.0.1', '', '2020-06-28 19:36:08', 'Menambah pengajuan_alat dengan data sbb:<br />\r\n                    <ul><li><b>id_pengajuan_alat</b> dengan value <b>jwhd</b></li><li><b>nama_alat</b> dengan value <b>uodou</b></li><li><b>seri</b> dengan value <b>wqd</b></li><li><b>merk</b> dengan value <b>uhwqie</b></li><li><b>harga</b> dengan value <b>wewe</b></li><li><b>jumlah</b> dengan value <b>424</b></li></ul>', 'kepala'),
(405, '127.0.0.1', '', '2020-06-28 20:32:31', 'Logout SILABKOM by Kepala Laboratorium', 'kepala'),
(406, '127.0.0.1', '', '2020-06-28 20:32:55', 'Login  by Laboran', 'laboran'),
(407, '127.0.0.1', '', '2020-06-28 20:58:58', 'Logout SILABKOM by Laboran', 'laboran'),
(408, '127.0.0.1', '', '2020-06-28 20:59:11', 'Login  by RAFANDI', 'rafandi'),
(409, '127.0.0.1', '', '2020-06-28 21:03:03', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(410, '127.0.0.1', '', '2020-06-28 21:03:14', 'Login  by RAFANDI', 'rafandi'),
(411, '::1', '', '2020-06-29 08:43:05', 'Login  by RAFANDI', 'rafandi'),
(412, '::1', '', '2020-06-29 08:43:59', 'Mengubah data instansi sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama</b> dengan value <b>Universitas Negeri Semarang</b></li><li><b>alamat</b> dengan value <b>Kampus Sekaran, Gunungpati, Semarang</b></li><li><b>kode</b> dengan value <b>kosong</b></li><li><b>provinsi</b> dengan value <b>kosong</b></li><li><b>email</b> dengan value <b>kosong</b></li><li><b>website</b> dengan value <b>kosong</b></li><li><b>logo</b> dengan value <b>files/2020/06/f94c68c3446488ac2f0b4971ee3fdd44.jpg</b></li><li><b>telepon</b> dengan value <b>kosong</b></li><li><b>kementerian</b> dengan value <b>kosong</b></li><li><b>tahun_ajaran</b> dengan value <b>kosong</b></li><li><b>nama_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_dekan</b> dengan value <b>kosong</b></li><li><b>alamat_fakultas</b> dengan value <b>kosong</b></li><li><b>telepon_fakultas</b> dengan value <b>kosong</b></li><li><b>nama_jurusan</b> dengan value <b>kosong</b></li><li><b>nama_kajur</b> dengan value <b>kosong</b></li><li><b>nama_kalab</b> dengan value <b>kosong</b></li><li><b>telepon_jurusan</b> dengan value <b>kosong</b></li><li><b>alamat_jurusan</b> dengan value <b>kosong</b></li><li><b>deskripsi_jurusan</b> dengan value <b>kosong</b></li><li><b>zona_waktu</b> dengan value <b>kosong</b></li></ul>', 'rafandi');

-- --------------------------------------------------------

--
-- Table structure for table `cms_lupa`
--

CREATE TABLE `cms_lupa` (
  `id` int(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu`
--

CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `allowed_level` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT '1',
  `urutan` int(11) NOT NULL,
  `grup` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_menu`
--

INSERT INTO `cms_menu` (`id`, `alias`, `nama`, `deskripsi`, `allowed_level`, `url`, `aktif`, `urutan`, `grup`) VALUES
(3, 'menu', 'Menu', 'Untuk memanajemen menu administrasi (back-end)', '+1+', 'cms/manage/menu', 1, 7, 1),
(89, 'reset_pass', 'Reset Password User', 'Reset Password User', '+1+', 'apl/reset', 1, 1, 3),
(35, 'semua', 'semua', 'untuk login semua', '+1+2+3+4+5+6+8+7+', 'cms/login/admin_page', 1, 1, 3),
(88, 'tambah_user', 'Tambah User', '', '+1+2+3+4+', 'cms/manage/form_add_user', 1, 1, 3),
(102, 'log', 'Log System', 'Log System', '+1+2+', 'cms/catatan/catat', 1, 2, 1),
(136, 'satuan', 'Satuan', '-', '+1+3+', 'master/satuan', 1, 9, 2),
(101, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+', 'pak/dashboard/status_pak', 1, 1, 101),
(135, 'master_bahan', 'Nama Bahan', '-', '+1+2+', 'master/master_bahan', 1, 8, 2),
(134, 'nama_alat', 'Nama Alat', '-', '+1+2+', 'master/nama_alat', 1, 7, 2),
(133, 'mata_kuliah', 'Mata Kuliah', '-', '+1+2+', 'master/mata_kuliah', 1, 6, 2),
(132, 'tipe_laboratorium', 'Tipe Laboratorium', '-', '+1+2+', 'master/tipe_laboratorium', 1, 5, 2),
(131, 'kategori_alat_bahan', 'Kategori Alat dan Bahan', '-', '+1+2+', 'master/kategori_alat_bahan', 1, 4, 2),
(130, 'kategori_no_induk', 'Kategori Nomer Induk', '-', '+1+2+', 'master/kategori_no_induk', 1, 3, 2),
(129, 'gambar_depan', 'Gambar Depan', '-', '+1+2+', 'master/gambar_depan', 1, 2, 2),
(128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2),
(173, 'periode_pengajuan', 'Pengajuan', '', '+1+2+3+4+5+6+8+7+', 'pengajuan/periode_pengajuan', 1, 1, 4),
(174, 'pengajuan_bahan', 'Pengajuan Bahan', 'Pengajuan Bahan', '+1+2+3+4+5+6+', 'pengajuan/pengajuan_bahan', 1, 2, 4),
(175, 'pengajuan_alat', 'Pengajuan Alat', 'Pengajuan Alat', '+1+2+3+', 'pengajuan/pengajuan_alat', 1, 3, 4),
(176, 'jatuh_tempo', 'Jatuh Tempo', '', '+1+2+3+4+5+6+8+7+', 'peminjaman/jatuh_tempo', 1, 1, 5),
(177, 'user', 'User', '', '+1+', 'cms/user', 1, 1, 6),
(178, 'modul', 'Modul', 'modal modul', '+1+2+3+4+5+6+7+8', 'master/modul', 1, 10, 2),
(179, 'kelola_penggantian', 'Penggantian', '', '+1+2+3+', 'kelola/kelola_penggantian', 1, 3, 6),
(180, 'peminjaman_alat', 'Alat', '', '+1+2+3+4+5=6+7+8', 'peminjaman/peminjaman_alat', 1, 2, 5),
(181, 'laboratorium', 'Laboratorium', '', '+1+2+3+4+5+6+7+8+', 'kelola/laboratorium', 1, 2, 6),
(182, 'cek_status', 'Cek Status', '', '+1+2+3+4+5+6+7+8+', 'peminjaman/cek_status', 1, 3, 5),
(183, 'jadwal', 'Jadwal', '', '+1+2+3+4+5+6+7+8', 'kelola/jadwal', 1, 5, 6),
(184, 'kelola_alat', 'Kelola Alat', '', '+1+2+3+4+5+6+7+8+', 'kelola/kelola_alat', 1, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menu_grup`
--

CREATE TABLE `cms_menu_grup` (
  `id_grup_menu` int(11) NOT NULL,
  `nama_grup` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_menu_grup`
--

INSERT INTO `cms_menu_grup` (`id_grup_menu`, `nama_grup`, `icon`) VALUES
(3, 'Hidden Menu', NULL),
(1, 'Setting', 'fa fa-fw fa-gear'),
(2, 'Master', 'fa fa-fw fa-database'),
(101, 'Dashboard', 'fa fa-fw fa-home'),
(4, 'Pengajuan', 'fa fa-fw fa-book'),
(5, 'Peminjaman', 'fa fa-fw fa-book'),
(6, 'Kelola', 'fa fa-fw fa-desktop');

-- --------------------------------------------------------

--
-- Table structure for table `cms_online`
--

CREATE TABLE `cms_online` (
  `user_id` int(5) NOT NULL,
  `last_activity` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_online`
--

INSERT INTO `cms_online` (`user_id`, `last_activity`) VALUES
(2, ''),
(3, '');

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
(3, 'Kepala Laboratorium', NULL, 'kepala', '*C9CDB06D7C010B721A4DBF4EAE1E3B5F3E86E69E', 2, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2020-06-28 19:22:22'),
(4, 'Laboran', NULL, 'laboran', '*5F9D604D1358B35776BD7ECEFE96829E6F3A2F3B', 3, 1, '0291595628', 'Jl. Citrosoma RT.017/006, Senenan, Jepara', '2020-06-28 20:32:55'),
(5, 'Koordinator Laboratorium', NULL, 'koordinator', '*047D32D531F24D8B9B6FABDDB1E14D3052956CAE', 4, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 14:28:19'),
(6, 'Asisten', NULL, 'asisten', '*51117F55AF7589B9DD630C762EDDE8C3183873EF', 5, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 11:12:52'),
(7, 'Dosen', NULL, 'dosen', '*2E00CBB4EA2AD213A8D40B19680B8D0D81B284DA', 6, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-02-24 11:47:36'),
(8, 'Mahasiswa', NULL, 'mahasiswa', '*3D98533F5EC0664D86B1F8E1CCC2F7C91B5C856D', 7, 1, '', '', '2017-03-01 10:11:37'),
(14, 'RAFANDI', 'files/2020/06/56503c024d8697ae15fe8ac17b2f88f2.jpg', 'rafandi', '*66005FBF8E725C011243BD39EC5BBF6FFF812C97', 1, 1, '085150021000', 'mbuh', '2020-06-29 08:43:05'),
(15, 'Akhmad', NULL, 'mamad', '*4FD7304813C297DFDE166F713CB77F4EF2EEE9F6', 1, 1, NULL, NULL, '2020-06-15 10:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(100) NOT NULL,
  `nama_jadwal` varchar(100) NOT NULL,
  `file_jadwal` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `nama_jadwal`, `file_jadwal`, `status`) VALUES
(4, 'asasasas', '', 'Ada'),
(5, 'aweqe', '', 'Ada');

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
(1, 'uhyruewo', 'iaodq', 'u3842u', 'hsdouy', 'uyq2e8h', '2020-06-22', '', 'i', 'u'),
(2, 'sacx', 'asdji', 'kdjci', 'kjew', 'kjfd', '2020-06-24', '', 'hwjhwduh', 'uweuf');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_alat`
--

CREATE TABLE `kelola_alat` (
  `id` int(100) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `nama_satuan` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `stok` varchar(100) NOT NULL,
  `kondisi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_alat`
--

INSERT INTO `kelola_alat` (`id`, `nama_alat`, `nama_satuan`, `jenis`, `merk`, `stok`, `kondisi`) VALUES
(1, '7', '0', '2', 'acer', '5', 'baik'),
(3, '4', '1', '1', 'kwsnw', 'nsjdwq', '3'),
(4, '4', '3', '1', 'WHAE', 'UAHEOUW', '3');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_laboratorium`
--

CREATE TABLE `kelola_laboratorium` (
  `id` int(255) NOT NULL,
  `nama_lab` varchar(255) NOT NULL,
  `alamat_lab` varchar(255) NOT NULL,
  `korlab` varchar(255) NOT NULL,
  `laboran` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_laboratorium`
--

INSERT INTO `kelola_laboratorium` (`id`, `nama_lab`, `alamat_lab`, `korlab`, `laboran`, `status`) VALUES
(3, 'jahdwo', 'iad', 'ihawiue', 'ihewar', 'Ada'),
(4, 'kjihwude', 'ihewuyhwueh', 'huweu', 'hwue', 'Ada');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_penggantian`
--

CREATE TABLE `kelola_penggantian` (
  `id` int(2) NOT NULL,
  `id_peminjaman` varchar(5) NOT NULL,
  `nama` text NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `status_penggantian` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_penggantian`
--

INSERT INTO `kelola_penggantian` (`id`, `id_peminjaman`, `nama`, `nama_barang`, `status_penggantian`, `status`) VALUES
(5, 'Sw', 'asfdea', 'ini', '', 'Ada');

-- --------------------------------------------------------

--
-- Table structure for table `kelola_user`
--

CREATE TABLE `kelola_user` (
  `id` int(255) NOT NULL,
  `no_induk` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telpon` int(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelola_user`
--

INSERT INTO `kelola_user` (`id`, `no_induk`, `username`, `nama`, `email`, `no_telpon`, `level`) VALUES
(0, '4612418016', 'alda', 'alda bernika ifada', 'aldabernika25@gmail.com', 2147483647, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(1) NOT NULL,
  `kondisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`) VALUES
(1, 'Baik'),
(2, 'Perlu Perbaikan'),
(3, 'Rusak');

-- --------------------------------------------------------

--
-- Table structure for table `master_bagian`
--

CREATE TABLE `master_bagian` (
  `id` int(1) NOT NULL,
  `bagian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_bagian`
--

INSERT INTO `master_bagian` (`id`, `bagian`) VALUES
(1, 'aktif'),
(2, 'tidak aktif');

-- --------------------------------------------------------

--
-- Table structure for table `master_bahan`
--

CREATE TABLE `master_bahan` (
  `id` varchar(30) NOT NULL,
  `kode` varchar(4) DEFAULT NULL,
  `jenis_bahan` varchar(10) DEFAULT NULL,
  `nama_bahan` varchar(100) NOT NULL,
  `tahun` int(4) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_bahan`
--

INSERT INTO `master_bahan` (`id`, `kode`, `jenis_bahan`, `nama_bahan`, `tahun`, `pengarang`) VALUES
('', 'hQ', 'UHWAEU', 'UAHWUE', 0, 'UHAWUE');

-- --------------------------------------------------------

--
-- Table structure for table `master_gambar_depan`
--

CREATE TABLE `master_gambar_depan` (
  `id` int(1) NOT NULL,
  `foto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_gambar_depan`
--

INSERT INTO `master_gambar_depan` (`id`, `foto`) VALUES
(2, 'assets/css/bg-login.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `master_instansi`
--

CREATE TABLE `master_instansi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `kementerian` varchar(255) DEFAULT NULL,
  `tahun_ajaran` varchar(255) DEFAULT NULL,
  `nama_fakultas` varchar(255) DEFAULT NULL,
  `nama_dekan` varchar(255) DEFAULT NULL,
  `alamat_fakultas` varchar(255) DEFAULT NULL,
  `telepon_fakultas` varchar(255) DEFAULT NULL,
  `nama_jurusan` varchar(255) DEFAULT NULL,
  `nama_kajur` varchar(255) DEFAULT NULL,
  `nama_kalab` varchar(255) DEFAULT NULL,
  `telepon_jurusan` varchar(255) DEFAULT NULL,
  `alamat_jurusan` varchar(255) DEFAULT NULL,
  `deskripsi_jurusan` varchar(255) DEFAULT NULL,
  `peta_jurusan` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `zona_waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_instansi`
--

INSERT INTO `master_instansi` (`id`, `nama`, `alamat`, `kode`, `provinsi`, `email`, `website`, `logo`, `telepon`, `kementerian`, `tahun_ajaran`, `nama_fakultas`, `nama_dekan`, `alamat_fakultas`, `telepon_fakultas`, `nama_jurusan`, `nama_kajur`, `nama_kalab`, `telepon_jurusan`, `alamat_jurusan`, `deskripsi_jurusan`, `peta_jurusan`, `favicon`, `zona_waktu`) VALUES
(1, 'Universitas Negeri Semarang', 'Kampus Sekaran, Gunungpati, Semarang', '', '', '', '', 'files/2020/06/f94c68c3446488ac2f0b4971ee3fdd44.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `master_karegori_nomer_induk`
--

CREATE TABLE `master_karegori_nomer_induk` (
  `id` int(2) NOT NULL,
  `kategori` varchar(30) DEFAULT NULL,
  `no_induk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_karegori_nomer_induk`
--

INSERT INTO `master_karegori_nomer_induk` (`id`, `kategori`, `no_induk`) VALUES
(1, 'perjaka', '4646');

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

-- --------------------------------------------------------

--
-- Table structure for table `master_kategori_no_induk`
--

CREATE TABLE `master_kategori_no_induk` (
  `id` int(225) NOT NULL,
  `kategori` varchar(30) DEFAULT NULL,
  `no_induk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kategori_no_induk`
--

INSERT INTO `master_kategori_no_induk` (`id`, `kategori`, `no_induk`) VALUES
(1, 'KTP', '87363838295');

-- --------------------------------------------------------

--
-- Table structure for table `master_kotak`
--

CREATE TABLE `master_kotak` (
  `id` int(1) NOT NULL,
  `lab` int(10) NOT NULL,
  `alat` int(10) NOT NULL,
  `bahan` int(10) NOT NULL,
  `modul` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kotak`
--

INSERT INTO `master_kotak` (`id`, `lab`, `alat`, `bahan`, `modul`) VALUES
(1, 5, 3, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `master_level`
--

CREATE TABLE `master_level` (
  `id` int(11) NOT NULL,
  `level` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_level`
--

INSERT INTO `master_level` (`id`, `level`) VALUES
(1, 'Admin'),
(2, 'Kepala Laboratorium  '),
(3, 'Laboran    '),
(4, 'Koordinator Laboratorium '),
(5, 'Asisten'),
(6, 'Dosen'),
(7, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `master_mata_kuliah`
--

CREATE TABLE `master_mata_kuliah` (
  `id` int(2) NOT NULL,
  `kode` varchar(8) NOT NULL,
  `mata_kuliah` varchar(20) NOT NULL,
  `sks` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_mata_kuliah`
--

INSERT INTO `master_mata_kuliah` (`id`, `kode`, `mata_kuliah`, `sks`) VALUES
(1, 'H5N1', 'corona', 2),
(2, 'COVID-19', 'Lali', 4),
(3, 'mmm', 'nnn', 5);

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
(1, 'insyaf', 'bercanda', 'files/upload-file/mimiperi.pdf', '.pdf', 0),
(2, 'saiydhgw', 'uqywe', 'files/upload-file/mcd.docx', '.docx', 98);

-- --------------------------------------------------------

--
-- Table structure for table `master_nama_alat`
--

CREATE TABLE `master_nama_alat` (
  `id` int(11) NOT NULL,
  `nama_alat` varchar(30) NOT NULL,
  `merk` varchar(30) DEFAULT NULL,
  `seri` varchar(10) NOT NULL,
  `stok_min` int(3) NOT NULL,
  `stok_ini` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_nama_alat`
--

INSERT INTO `master_nama_alat` (`id`, `nama_alat`, `merk`, `seri`, `stok_min`, `stok_ini`) VALUES
(2, 'phone', 'advan', 'G5', 50, 50),
(4, 'mmm', 'nnn', 'bbb', 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `master_satuan`
--

CREATE TABLE `master_satuan` (
  `id` int(2) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_satuan`
--

INSERT INTO `master_satuan` (`id`, `nama`, `keterangan`) VALUES
(1, 'jxsokj', 'iewkmx'),
(2, 'okml', 'odwlm'),
(3, 'sacd', 'nnn');

-- --------------------------------------------------------

--
-- Table structure for table `master_status`
--

CREATE TABLE `master_status` (
  `id` varchar(19) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_status`
--

INSERT INTO `master_status` (`id`, `status`) VALUES
('Ada', 'Ada'),
('Tidak Ada', 'Tidak Ada');

-- --------------------------------------------------------

--
-- Table structure for table `master_tipe_laboratorium`
--

CREATE TABLE `master_tipe_laboratorium` (
  `id` int(2) NOT NULL,
  `jenis` varchar(30) NOT NULL,
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

INSERT INTO `master_tipe_laboratorium` (`id`, `jenis`, `foto`, `koordinator`, `laboran`, `alamat`, `email`, `anggota`) VALUES
(3, 'iwak 5', 'files/2020/05/esport2.jpg', 'enem', 'endhok', 'piti', 'mendem', 'tenan');

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`id`, `nip`, `level`) VALUES
(2, 'jihan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_alat`
--

CREATE TABLE `peminjaman_alat` (
  `id` int(2) NOT NULL,
  `id_peminjaman` varchar(5) NOT NULL,
  `nama_alat` varchar(30) NOT NULL,
  `merk` text NOT NULL,
  `seri` varchar(10) NOT NULL,
  `kondisi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman_alat`
--

INSERT INTO `peminjaman_alat` (`id`, `id_peminjaman`, `nama_alat`, `merk`, `seri`, `kondisi`) VALUES
(2, 'ugy', 'yt6', 'fyt', 'yft', 'Rusak'),
(3, 'AWHID', '2', 'JNJN', 'nijni', 'Baik');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_alat`
--

CREATE TABLE `pengajuan_alat` (
  `id` int(11) NOT NULL,
  `id_pengajuan_alat` int(11) NOT NULL,
  `nama_alat` varchar(32) NOT NULL,
  `seri` varchar(16) NOT NULL,
  `merk` varchar(16) NOT NULL,
  `harga` int(16) NOT NULL,
  `jumlah` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_alat`
--

INSERT INTO `pengajuan_alat` (`id`, `id_pengajuan_alat`, `nama_alat`, `seri`, `merk`, `harga`, `jumlah`) VALUES
(0, 1, 'uodou', 'wqd', 'uhwqie', 0, 424);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_bahan`
--

CREATE TABLE `pengajuan_bahan` (
  `id` int(32) NOT NULL,
  `id_pengajuan_bahan` int(8) NOT NULL,
  `nama_bahan` varchar(32) NOT NULL,
  `seri` varchar(32) NOT NULL,
  `merk` varchar(32) NOT NULL,
  `satuan_grosir` int(32) NOT NULL,
  `jumlah_grosir` int(32) NOT NULL,
  `harga_grosir` int(32) NOT NULL,
  `estimasi_jumlah` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan_bahan`
--

INSERT INTO `pengajuan_bahan` (`id`, `id_pengajuan_bahan`, `nama_bahan`, `seri`, `merk`, `satuan_grosir`, `jumlah_grosir`, `harga_grosir`, `estimasi_jumlah`) VALUES
(0, 2, 'PC', 'AMD', 'Intel', 1200000, 10, 12000000, 10),
(2, 920202, 'laptop', '2000', 'ROG', 1, 1, 20000000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `periode_pengajuan`
--

CREATE TABLE `periode_pengajuan` (
  `id` int(11) NOT NULL,
  `periode_pengajuan` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `tahun` int(10) NOT NULL,
  `sumber_pendanaan` varchar(20) NOT NULL,
  `pajak` int(10) NOT NULL,
  `status_pengajuan` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `periode_pengajuan`
--

INSERT INTO `periode_pengajuan` (`id`, `periode_pengajuan`, `semester`, `bulan`, `tahun`, `sumber_pendanaan`, `pajak`, `status_pengajuan`, `status`) VALUES
(2, 'Pb1435', 'Genap', 'Maret', 2020, 'Fakultas', 3, 'Sudah Didistribusika', 'Ada'),
(4, 'pa1234676', 'Antara', 'Desember', 2020, 'Jurusan', 2, 'Disetujui', 'Ada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cek_status`
--
ALTER TABLE `cek_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  ADD PRIMARY KEY (`captcha_id`) USING BTREE,
  ADD KEY `word` (`word`) USING BTREE;

--
-- Indexes for table `cms_file`
--
ALTER TABLE `cms_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

--
-- Indexes for table `cms_lupa`
--
ALTER TABLE `cms_lupa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menu`
--
ALTER TABLE `cms_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  ADD PRIMARY KEY (`id_grup_menu`) USING BTREE;

--
-- Indexes for table `cms_online`
--
ALTER TABLE `cms_online`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jatuh_tempo`
--
ALTER TABLE `jatuh_tempo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelola_alat`
--
ALTER TABLE `kelola_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelola_laboratorium`
--
ALTER TABLE `kelola_laboratorium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelola_penggantian`
--
ALTER TABLE `kelola_penggantian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bagian`
--
ALTER TABLE `master_bagian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bahan`
--
ALTER TABLE `master_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_gambar_depan`
--
ALTER TABLE `master_gambar_depan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_instansi`
--
ALTER TABLE `master_instansi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_karegori_nomer_induk`
--
ALTER TABLE `master_karegori_nomer_induk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_kotak`
--
ALTER TABLE `master_kotak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_level`
--
ALTER TABLE `master_level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_mata_kuliah`
--
ALTER TABLE `master_mata_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_modul`
--
ALTER TABLE `master_modul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_status`
--
ALTER TABLE `master_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_tipe_laboratorium`
--
ALTER TABLE `master_tipe_laboratorium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `peminjaman_alat`
--
ALTER TABLE `peminjaman_alat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  ADD PRIMARY KEY (`id_pengajuan_alat`);

--
-- Indexes for table `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  ADD PRIMARY KEY (`id_pengajuan_bahan`);

--
-- Indexes for table `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cek_status`
--
ALTER TABLE `cek_status`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  MODIFY `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3443;

--
-- AUTO_INCREMENT for table `cms_file`
--
ALTER TABLE `cms_file`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id_log` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `cms_lupa`
--
ALTER TABLE `cms_lupa`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  MODIFY `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jatuh_tempo`
--
ALTER TABLE `jatuh_tempo`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelola_alat`
--
ALTER TABLE `kelola_alat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelola_laboratorium`
--
ALTER TABLE `kelola_laboratorium`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelola_penggantian`
--
ALTER TABLE `kelola_penggantian`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_bagian`
--
ALTER TABLE `master_bagian`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_gambar_depan`
--
ALTER TABLE `master_gambar_depan`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_instansi`
--
ALTER TABLE `master_instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_kotak`
--
ALTER TABLE `master_kotak`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_level`
--
ALTER TABLE `master_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `master_modul`
--
ALTER TABLE `master_modul`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_satuan`
--
ALTER TABLE `master_satuan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_tipe_laboratorium`
--
ALTER TABLE `master_tipe_laboratorium`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `peminjaman_alat`
--
ALTER TABLE `peminjaman_alat`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengajuan_alat`
--
ALTER TABLE `pengajuan_alat`
  MODIFY `id_pengajuan_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengajuan_bahan`
--
ALTER TABLE `pengajuan_bahan`
  MODIFY `id_pengajuan_bahan` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=920203;

--
-- AUTO_INCREMENT for table `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
