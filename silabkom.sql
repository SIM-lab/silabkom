-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 05:55 AM
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
(3288, 1591684885, '::1', '869917'),
(3287, 1591684867, '::1', '391773');

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
(76, '::1', '', '2020-05-19 07:26:32', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(77, '::1', '', '2020-05-19 07:26:41', 'Login  by RAFANDI', 'rafandi'),
(74, '::1', '', '2020-05-19 07:23:19', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(75, '::1', '', '2020-05-19 07:23:33', 'Login  by RAFANDI', 'rafandi'),
(73, '::1', '', '2020-05-19 07:03:55', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>COVID-19</b></li><li><b>mata_kuliah</b> dengan value <b>Lali</b></li><li><b>sks</b> dengan value <b>4</b></li></ul>', 'rafandi'),
(72, '::1', '', '2020-05-19 07:02:51', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>H5N1</b></li><li><b>mata_kuliah</b> dengan value <b>corona</b></li><li><b>sks</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(71, '::1', '', '2020-05-19 07:02:08', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>COVID-19</b></li><li><b>mata_kuliah</b> dengan value <b>Lali</b></li><li><b>sks</b> dengan value <b>2</b></li></ul>', 'rafandi'),
(70, '::1', '', '2020-05-19 07:01:49', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>ini</b></li><li><b>merk</b> dengan value <b>ibu</b></li><li><b>seri</b> dengan value <b>budi</b></li><li><b>stok_min</b> dengan value <b>22</b></li><li><b>stok_ini</b> dengan value <b>21</b></li></ul>', 'rafandi'),
(69, '::1', '', '2020-05-19 07:01:40', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>ini</b></li><li><b>merk</b> dengan value <b>ibu</b></li><li><b>seri</b> dengan value <b>budi</b></li><li><b>stok_min</b> dengan value <b>22</b></li><li><b>stok_ini</b> dengan value <b>21</b></li></ul>', 'rafandi'),
(68, '::1', '', '2020-05-19 06:28:46', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>ini</b></li><li><b>merk</b> dengan value <b>ibu</b></li><li><b>seri</b> dengan value <b>budi</b></li><li><b>stok_min</b> dengan value <b>21</b></li><li><b>stok_ini</b> dengan value <b>21</b></li></ul>', 'rafandi'),
(67, '::1', '', '2020-05-19 06:28:39', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>ini</b></li><li><b>merk</b> dengan value <b>ibu</b></li><li><b>seri</b> dengan value <b>budi</b></li><li><b>stok_min</b> dengan value <b>21</b></li><li><b>stok_ini</b> dengan value <b>21</b></li></ul>', 'rafandi'),
(66, '127.0.0.1', '', '2020-05-19 06:24:52', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>ini</b></li><li><b>merk</b> dengan value <b>ibu</b></li><li><b>seri</b> dengan value <b>budi</b></li><li><b>stok_min</b> dengan value <b>21</b></li><li><b>stok_ini</b> dengan value <b>21</b></li></ul>', 'rafandi'),
(65, '127.0.0.1', '', '2020-05-19 06:23:10', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>ini</b></li><li><b>merk</b> dengan value <b>ibu</b></li><li><b>seri</b> dengan value <b>budi</b></li><li><b>stok_min</b> dengan value <b>21</b></li><li><b>stok_ini</b> dengan value <b>21</b></li></ul>', 'rafandi'),
(63, '127.0.0.1', '', '2020-05-19 06:18:15', 'Login  by RAFANDI', 'rafandi'),
(64, '127.0.0.1', '', '2020-05-19 06:23:00', 'Menambah Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>ini</b></li><li><b>merk</b> dengan value <b>ibu</b></li><li><b>seri</b> dengan value <b>budi</b></li><li><b>stok_min</b> dengan value <b>20</b></li><li><b>stok_ini</b> dengan value <b>21</b></li></ul>', 'rafandi'),
(61, '::1', '', '2020-05-18 20:09:59', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(62, '::1', '', '2020-05-18 20:10:14', 'Login  by RAFANDI', 'rafandi'),
(60, '::1', '', '2020-05-18 20:06:46', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>mmm</b></li><li><b>mata_kuliah</b> dengan value <b>nnn</b></li><li><b>sks</b> dengan value <b>3</b></li></ul>', 'rafandi'),
(58, '::1', '', '2020-05-18 19:16:03', 'Login  by RAFANDI', 'rafandi'),
(59, '::1', '', '2020-05-18 19:46:30', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>mmm</b></li><li><b>mata_kuliah</b> dengan value <b>nnn</b></li><li><b>sks</b> dengan value <b>4</b></li></ul>', 'rafandi'),
(57, '::1', '', '2020-05-18 08:13:20', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>mmm</b></li><li><b>mata_kuliah</b> dengan value <b>nnn</b></li><li><b>sks</b> dengan value <b>4</b></li></ul>', 'rafandi'),
(56, '::1', '', '2020-05-18 08:11:11', 'Mengedit Master nama_alat dengan data sbb:<br />\r\n                    <ul><li><b>nama_alat</b> dengan value <b>adsa</b></li><li><b>merk</b> dengan value <b>sadwqe</b></li><li><b>seri</b> dengan value <b>sdqwed</b></li><li><b>stok_min</b> dengan value <b>23</b></li><li><b>stok_ini</b> dengan value <b>11</b></li></ul>', 'rafandi'),
(54, '::1', '', '2020-05-18 07:35:04', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(55, '::1', '', '2020-05-18 07:35:20', 'Login  by RAFANDI', 'rafandi'),
(53, '::1', '', '2020-05-18 07:33:40', 'Menambah Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>mmm</b></li><li><b>mata_kuliah</b> dengan value <b>nnn</b></li><li><b>sks</b> dengan value <b>5</b></li></ul>', 'rafandi'),
(52, '::1', '', '2020-05-18 07:08:19', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>H5N1</b></li><li><b>mata_kuliah</b> dengan value <b>corona</b></li><li><b>sks</b> dengan value <b>1</b></li></ul>', 'rafandi'),
(51, '::1', '', '2020-05-18 06:55:41', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>COVID-19</b></li><li><b>mata_kuliah</b> dengan value <b>Lali</b></li><li><b>sks</b> dengan value <b>4</b></li></ul>', 'rafandi'),
(50, '::1', '', '2020-05-18 06:35:23', 'Menambah Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>COVID-19</b></li><li><b>mata_kuliah</b> dengan value <b>Lali</b></li><li><b>sks</b> dengan value <b>4</b></li></ul>', 'rafandi'),
(48, '::1', '', '2020-05-18 06:34:16', 'Menghapus Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>2</b></li><li><b>kode</b> dengan value <b>dsaf23</b></li><li><b>mata_kuliah</b> dengan value <b>sdfasef</b></li><li><b>sks</b> dengan value <b>4</b></li></ul>', 'rafandi'),
(49, '::1', '', '2020-05-18 06:34:45', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>H5N1</b></li><li><b>mata_kuliah</b> dengan value <b>corona</b></li><li><b>sks</b> dengan value <b>5</b></li></ul>', 'rafandi'),
(78, '::1', '', '2020-06-04 09:29:32', 'Login  by RAFANDI', 'rafandi'),
(79, '::1', '', '2020-06-04 11:38:59', 'Login  by RAFANDI', 'rafandi'),
(80, '127.0.0.1', '', '2020-06-04 16:19:19', 'Login  by RAFANDI', 'rafandi'),
(81, '::1', '', '2020-06-04 18:58:43', 'Login  by RAFANDI', 'rafandi'),
(82, '::1', '', '2020-06-04 20:37:08', 'Logout SILABKOM by RAFANDI', 'rafandi'),
(83, '::1', '', '2020-06-05 07:43:25', 'Login  by Kholiq', 'kholiq'),
(84, '::1', '', '2020-06-05 09:12:22', 'Menambah Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>123</b></li><li><b>mata_kuliah</b> dengan value <b>sistem operasi</b></li><li><b>sks</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(85, '::1', '', '2020-06-05 14:57:04', 'Login  by Kholiq', 'kholiq'),
(86, '::1', '', '2020-06-08 13:09:32', 'Login  by Kholiq', 'kholiq'),
(87, '::1', '', '2020-06-08 14:53:33', 'Menambah Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>kode</b> dengan value <b>A001</b></li><li><b>nama_alat_bahan</b> dengan value <b>Kabel LAN</b></li><li><b>jenis</b> dengan value <b>Kabel</b></li></ul>', 'kholiq'),
(88, '::1', '', '2020-06-08 15:55:34', 'Menambah Master satuan dengan data sbb:<br />\r\n                    <ul><li><b>nama_satuan</b> dengan value <b>laptop</b></li><li><b>keterangan</b> dengan value <b>baru</b></li></ul>', 'kholiq'),
(89, '::1', '', '2020-06-08 19:25:11', 'Login  by Kholiq', 'kholiq'),
(90, '::1', '', '2020-06-08 19:36:30', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>130</b></li><li><b>nama</b> dengan value <b>Kategori Nomer Induk</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/kategori_no_induk</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(91, '::1', '', '2020-06-08 19:36:38', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(92, '::1', '', '2020-06-08 19:36:57', 'Mengedit menu dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>130</b></li><li><b>nama</b> dengan value <b>Kategori Nomer Induk</b></li><li><b>deskripsi</b> dengan value <b>-</b></li><li><b>allowed_level</b> dengan value <b>1,2</b></li><li><b>url</b> dengan value <b>master/kategori_nomer_induk</b></li><li><b>aktif</b> dengan value <b>1</b></li><li><b>urutan</b> dengan value <b>3</b></li><li><b>grup</b> dengan value <b>2</b></li></ul>', 'kholiq'),
(93, '::1', '', '2020-06-08 19:37:04', 'Mengubah manajemen menu, dengan data:<br />\r\n                    <ul><li><b>allowed_level</b> dengan value <b>1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1</b></li><li><b>cur_level</b> dengan value <b>1</b></li></ul>', 'kholiq'),
(94, '::1', '', '2020-06-08 19:53:19', 'Menambah Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>kategori</b> dengan value <b>KTP</b></li><li><b>no_induk</b> dengan value <b>87363838292</b></li></ul>', 'kholiq'),
(95, '::1', '', '2020-06-08 21:21:38', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>Laboratorium Digital</b></li><li><b>alamat_lab</b> dengan value <b>D2-110</b></li><li><b>korlab</b> dengan value <b>Alda</b></li><li><b>laboran</b> dengan value <b>Bernika</b></li></ul>', 'kholiq'),
(96, '::1', '', '2020-06-09 13:41:26', 'Login  by Kholiq', 'kholiq'),
(97, '::1', '', '2020-06-09 14:02:52', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>asee</b></li><li><b>alamat_lab</b> dengan value <b>ddd</b></li><li><b>korlab</b> dengan value <b>fff</b></li><li><b>laboran</b> dengan value <b>bbb</b></li></ul>', 'kholiq'),
(98, '::1', '', '2020-06-09 14:04:55', 'Menambah kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>nama_lab</b> dengan value <b>Laboratorium Digital</b></li><li><b>alamat_lab</b> dengan value <b>D2-110</b></li><li><b>korlab</b> dengan value <b>Bernika</b></li><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq'),
(99, '::1', '', '2020-06-09 14:07:09', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>mmm</b></li><li><b>mata_kuliah</b> dengan value <b>nn</b></li><li><b>sks</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(100, '::1', '', '2020-06-09 14:09:55', 'Mengedit Master mata_kuliah dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>3</b></li><li><b>kode</b> dengan value <b>mmm</b></li><li><b>mata_kuliah</b> dengan value <b>nnn</b></li><li><b>sks</b> dengan value <b>3</b></li></ul>', 'kholiq'),
(101, '::1', '', '2020-06-09 14:29:48', 'Mengedit kelola_laboratorium dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>nama_lab</b> dengan value <b>Laboratorium Digital</b></li><li><b>alamat_lab</b> dengan value <b>D2-110</b></li><li><b>korlab</b> dengan value <b>Alda</b></li><li><b>laboran</b> dengan value <b>Bernika</b></li><li><b>status</b> dengan value <b>ada</b></li></ul>', 'kholiq'),
(102, '::1', '', '2020-06-09 14:53:24', 'Menambah kelola_user dengan data sbb:<br />\r\n                    <ul><li><b>no_induk</b> dengan value <b>4612418016</b></li><li><b>username</b> dengan value <b>alda</b></li><li><b>nama</b> dengan value <b>alda bernika ifada</b></li><li><b>email</b> dengan value <b>aldabernika25@gmail.com</b></li><li><b>no_telpon</b> dengan value <b>089501187957</b></li><li><b>level</b> dengan value <b>Admin</b></li></ul>', 'kholiq'),
(103, '::1', '', '2020-06-09 14:56:15', 'Mengedit Master kategori_no_induk dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kategori</b> dengan value <b>KTP</b></li><li><b>no_induk</b> dengan value <b>87363838295</b></li></ul>', 'kholiq'),
(104, '::1', '', '2020-06-09 14:56:29', 'Mengedit Master kategori_alat_bahan dengan data sbb:<br />\r\n                    <ul><li><b>id</b> dengan value <b>1</b></li><li><b>kode</b> dengan value <b>B001</b></li><li><b>nama_alat_bahan</b> dengan value <b>Kabel LAN</b></li><li><b>jenis</b> dengan value <b>Kabel</b></li></ul>', 'kholiq');

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
(88, 'crud_user', 'Tambah,edit,delete user', 'tambah_edit_delete', '+1+2+3+4+', 'apl/crud', 1, 1, 1),
(102, 'log', 'Log System', 'Log System', '+1+2+', 'cms/catatan/catat', 1, 2, 1),
(136, 'satuan', 'Satuan', '-', '+1+2+', 'master/satuan', 1, 9, 2),
(101, 'status_pak', 'Home', 'Status Pengajuan PAK', '+1+2+3+4+5+6+', 'pak/dashboard/status_pak', 1, 1, 101),
(135, 'nama_bahan', 'Nama Bahan', '-', '+1+2+', 'master/master_bahan', 1, 8, 2),
(134, 'nama_alat', 'Nama Alat', '-', '+1+2+', 'master/nama_alat', 1, 7, 2),
(133, 'mata_kuliah', 'Mata Kuliah', '-', '+1+2+', 'master/mata_kuliah', 1, 6, 2),
(132, 'tipe_laboratorium', 'Tipe Laboratorium', '-', '+1+2+', 'master/tipe_laboratorium', 1, 5, 2),
(131, 'kategori_alat_bahan', 'Kategori Alat dan Bahan', '-', '+1+2+', 'master/kategori_alat_bahan', 1, 4, 2),
(130, 'kategori_no_induk', 'Kategori No Induk', '-', '+1+2+', 'master/kategori_no_induk', 1, 3, 2),
(129, 'gambar_depan', 'Gambar Depan', '-', '+1+2+', 'master/gambar_depan', 1, 2, 2),
(128, 'instansi', 'Instansi', '-', '+1+2+', 'master/instansi', 1, 1, 2),
(173, 'periode_pengajuan', 'Pengajuan', '', '+1+2+3+4+5+6+8+7+', 'pengajuan/periode_pengajuan', 1, 1, 4),
(180, 'laboratorium', 'Laboratorium', '-', '+1+2+', 'kelola/laboratorium', 1, 1, 5),
(181, 'user', 'User', '-', '+1+2+', 'kelola/user', 1, 1, 5);

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
(1, 'Manajemen', 'fa fa-fw fa-gear'),
(2, 'Master', 'fa fa-fw fa-database'),
(101, 'Dashboard', 'fa fa-fw fa-home'),
(4, 'Peminjaman', 'fa fa-fw fa-book'),
(5, 'Kelola', 'fa fa-fw fa-desktop');

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
(1, 'Kholiq', NULL, 'kholiq', '*F1378C253EEBE31F135CC41EF4A98D077EB98F5D', 1, 1, NULL, NULL, '2020-06-09 13:41:25'),
(2, 'RENSI EKA PRATTISTIA', 'files/2016/10/197f1fe92d49367824b4ec55d06af614.jpg', 'rensi', '*711CD8D9847EE80DEDC2B331ADB185CD0100EA86', 2, 1, '-', '-', '2017-03-01 18:05:17'),
(3, 'Damas Fahmi Assena', 'files/2016/09/062918947f59511ed8824be8462b2669.jpg', 'damas', '*A8244C6E6B51D4D7C6F89A1D145CE244EF9A12A5', 2, 1, '089 884 189 22', 'Jl. Shima No.6 Pengkol, Jepara', '2017-03-02 11:27:31'),
(7, 'Suparno', 'files/2016/09/15322f731347f50f18ceee0b7e5d346a.jpg', 'parno', '*BDEE3A29CD9E06BC8896561176692DD675D75D45', 6, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-01-20 13:28:02'),
(8, 'Anto', 'files/2016/10/a9a1c61937e5c422841f2f95360dfda7.jpg', 'anto', '*BDEE3A29CD9E06BC8896561176692DD675D75D45', 6, 1, '0291595628', 'Jl. Citrosoma RT.017/006, Senenan, Jepara', '2017-03-01 08:26:51'),
(9, 'Admin Supplier', 'files/2016/10/5d1a93bc69ca0cbc6777f940955285ba.png', 'admin', '*E3CCE608FE4C2B066CB6AE607CB6A53C309EC0E6', 3, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 14:28:19'),
(10, 'Staff Kalingga', 'files/2016/10/6f8c1070cf71eaca2fa5c544f6fb2bfa.png', 'kalinggajati', '*63B6331B1B9E1A7D8BA3B2B5666EDD5EE2C460CC', 5, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-03-02 11:12:52'),
(11, 'Admin Outstanding', 'files/2016/10/e511c2db7c393226effc9f303cf2a674.png', 'admin2', '*E3CCE608FE4C2B066CB6AE607CB6A53C309EC0E6', 4, 1, '0291-595628', 'Jl. Citrosoma RT. 17/06', '2017-02-24 11:47:36'),
(12, 'Bittaqwa', 'files/2017/01/850a0830a9fb703e55f1ef318d2195df.jpg', 'bittaqwa', '*2900EA52D759AACA10038BA767FDDA68A9F7853A', 6, 1, '', '', '2017-03-01 10:11:37'),
(13, 'coba', 'files/2017/04/f6b70ba5e4de413f8832472bef538c0d.JPG', 'coba', '*FD64E348EC9DCCE6525B358693A9CFDC733F5184', 3, 1, 'qq', 'qq', '2017-04-25 09:27:29'),
(14, 'RAFANDI', 'files/2020/05/foto.jpg', 'rafandi', '*66005FBF8E725C011243BD39EC5BBF6FFF812C97', 1, 1, NULL, NULL, '2020-06-04 18:58:43');

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
(1, 'Laboratorium Digital', 'D2-110', 'Alda', 'Bernika', 'ada');

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
-- Table structure for table `master_bahan`
--

CREATE TABLE `master_bahan` (
  `id` int(11) NOT NULL,
  `kode` varchar(4) DEFAULT NULL,
  `jenis_bahan` varchar(10) DEFAULT NULL,
  `nama_bahan` varchar(100) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `master_bahan`
--

INSERT INTO `master_bahan` (`id`, `kode`, `jenis_bahan`, `nama_bahan`, `tahun`, `pengarang`) VALUES
(1, 'BK01', 'Buku', 'Lean UX', 2010, 'Josh gothel'),
(2, 'MK02', 'Mikroskop ', 'Mikroskop Besar', NULL, NULL);

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
(1, 'Universitas Negeri Semarang', 'Kampus Sekaran, Gunungpati, Semarang', '', '', '', '', 'files/2020/03/ebcff3bcfaf285d80bf3e5144993191d.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '');

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
  `lab` int(10) NOT NULL,
  `alat` int(10) NOT NULL,
  `bahan` int(10) NOT NULL,
  `modul` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kotak`
--

INSERT INTO `master_kotak` (`lab`, `alat`, `bahan`, `modul`) VALUES
(5, 3, 7, 2),
(5, 3, 7, 2);

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
(2, 'Kepala Laboratorium'),
(3, 'Laboran'),
(4, 'Koordinator Laboratorium'),
(5, 'Dosen'),
(6, 'Mahasiswa');

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
(0, '123', 'sistem operasi', 3),
(1, 'H5N1', 'corona', 2),
(2, 'COVID-19', 'Lali', 4),
(3, 'mmm', 'nnn', 3);

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
(5, 'adsa', 'sadwqe', 'sdqwed', 23, 12);

-- --------------------------------------------------------

--
-- Table structure for table `master_satuan`
--

CREATE TABLE `master_satuan` (
  `id` int(2) NOT NULL,
  `nama_satuan` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_satuan`
--

INSERT INTO `master_satuan` (`id`, `nama_satuan`, `keterangan`) VALUES
(0, 'laptop', 'baru');

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
(1, 'laboratorium RSJ', 'files/2020/05/foto.jpg', 'diki', 'lek pandi', 'H5N1', 'satekirik@okdalang.com', 'keluarga, berencana'),
(1, 'laboratorium RSJ', 'files/2020/05/foto.jpg', 'diki', 'lek pandi', 'H5N1', 'satekirik@okdalang.com', 'keluarga, berencana');

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
(1, 'Pa13241', 'Ganjil', 'Februari', 2020, 'Universitas', 1, 'Sudah Disetujui', 'Ada'),
(2, 'Pb1435', 'Genap', 'Maret', 2020, 'Fakultas', 3, 'Sudah Didistribusika', 'Ada'),
(4, 'pa1234676', 'Antara', 'Desember', 2020, 'Jurusan', 2, 'Tidak Disetujui', 'Ada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  ADD PRIMARY KEY (`captcha_id`) USING BTREE,
  ADD KEY `word` (`word`) USING BTREE;

--
-- Indexes for table `cms_log`
--
ALTER TABLE `cms_log`
  ADD PRIMARY KEY (`id_log`) USING BTREE;

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
-- Indexes for table `kelola_laboratorium`
--
ALTER TABLE `kelola_laboratorium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bahan`
--
ALTER TABLE `master_bahan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_instansi`
--
ALTER TABLE `master_instansi`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_kategori_alat_bahan`
--
ALTER TABLE `master_kategori_alat_bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_kategori_no_induk`
--
ALTER TABLE `master_kategori_no_induk`
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
-- Indexes for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_captcha`
--
ALTER TABLE `cms_captcha`
  MODIFY `captcha_id` bigint(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3289;

--
-- AUTO_INCREMENT for table `cms_log`
--
ALTER TABLE `cms_log`
  MODIFY `id_log` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `cms_menu`
--
ALTER TABLE `cms_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `cms_menu_grup`
--
ALTER TABLE `cms_menu_grup`
  MODIFY `id_grup_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kelola_laboratorium`
--
ALTER TABLE `kelola_laboratorium`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_bahan`
--
ALTER TABLE `master_bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_instansi`
--
ALTER TABLE `master_instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_kategori_alat_bahan`
--
ALTER TABLE `master_kategori_alat_bahan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_kategori_no_induk`
--
ALTER TABLE `master_kategori_no_induk`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_level`
--
ALTER TABLE `master_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_nama_alat`
--
ALTER TABLE `master_nama_alat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `periode_pengajuan`
--
ALTER TABLE `periode_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
