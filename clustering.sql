-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 02:58 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clustering`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'Admin Dinkes');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL,
  `nama_kecamatan` varchar(200) NOT NULL,
  `luas_wilayah` varchar(100) NOT NULL,
  `jumlah_penduduk` varchar(100) NOT NULL,
  `latitude_kecamatan` varchar(100) NOT NULL,
  `longtitude_kecamatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `nama_kecamatan`, `luas_wilayah`, `jumlah_penduduk`, `latitude_kecamatan`, `longtitude_kecamatan`) VALUES
(1, 'Kalidoni', '27.92', '109.412', '0.4343455', '0.6565655'),
(2, 'Gandus', '68.78', '63.740', '0.4343455', '0.6565655'),
(9, 'Sematang Borang', '75847548758', '75487467', '-2.970566405944326', '104.73691734375006'),
(10, 'Sako', '23.456', '221.433', '-2.9880522000000074', '104.76399692596442');

-- --------------------------------------------------------

--
-- Table structure for table `pelaporan`
--

CREATE TABLE `pelaporan` (
  `id_pelaporan` int(11) NOT NULL,
  `id_adminpuskes` int(11) NOT NULL,
  `nama_puskesmas` varchar(100) NOT NULL,
  `nama_korban` varchar(100) NOT NULL,
  `alamat_korban` varchar(200) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `umur` varchar(5) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `tgl_berkunjung` varchar(50) NOT NULL,
  `tgl_digigit` varchar(50) NOT NULL,
  `onset` varchar(200) NOT NULL,
  `gejala` varchar(100) NOT NULL,
  `lokasi_gigitan` varchar(50) NOT NULL,
  `kondisi_luka` varchar(50) NOT NULL,
  `hpr_penggigit` varchar(50) NOT NULL,
  `kondisi_hewan` varchar(50) NOT NULL,
  `spesimen_hewan` varchar(100) NOT NULL,
  `hasil` varchar(50) NOT NULL,
  `cuci_luka` varchar(50) NOT NULL,
  `var_1` varchar(50) NOT NULL,
  `var_2` varchar(50) NOT NULL,
  `var_3` varchar(50) NOT NULL,
  `tgl_meninggal` varchar(50) NOT NULL,
  `riwayat_kontak` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longtitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelaporan`
--

INSERT INTO `pelaporan` (`id_pelaporan`, `id_adminpuskes`, `nama_puskesmas`, `nama_korban`, `alamat_korban`, `pekerjaan`, `umur`, `gender`, `tgl_berkunjung`, `tgl_digigit`, `onset`, `gejala`, `lokasi_gigitan`, `kondisi_luka`, `hpr_penggigit`, `kondisi_hewan`, `spesimen_hewan`, `hasil`, `cuci_luka`, `var_1`, `var_2`, `var_3`, `tgl_meninggal`, `riwayat_kontak`, `keterangan`, `latitude`, `longtitude`) VALUES
(9, 3, 'Puskesmas Gandus', 'yantok', 'pintu besi', 'ngamen', '47', 'Pria', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 2, 'Puskesmas Sako', 'www', 'www', 'www', '12', 'www', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 3, 'Puskesmas Gandus', 'joko', 'plaju', 'kenek', '33', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 3, 'Puskesmas Gandus', 'asd', 'asd', 'asd', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 2, 'Puskesmas Sako', 'Susilo', 'Jalan Tembesu', 'Buruh', '56', 'Laki-laki', '06/02/2019', '06/01/2019', 'test', 'meriang', 'paha', 'parah', 'anjing neraka', 'setengah gila', 'anjing', 'posotif rabies', '1', '1', '1', '0', '06/10/2019', '082389765473', 'meninggal dunia', '0.253236823723', '0.38748343467'),
(20, 2, 'Puskesmas Sako', 'aaa', 'abc', 'sdsd', 'dsdf', 'Laki-Laki', '06/12/2019', '11/28/2019', 'asd', 'asd', 'asd', 'Lecet', 'Anjing', 'Lari', 'asd', 'Positif', '1', '1', '1', '1', '06/13/2019', 'asd', 'asd', '-2.987580772924331', '104.76155075134284'),
(22, 3, 'Puskesmas Gandus', 'Andi Pedo', 'Jalan Ki Gede Ing Suro', 'PNS', '56', 'Laki-Laki', '06/06/2019', '06/08/2019', 'asd', 'asd', 'dengkul', 'Lecet', 'Anjing', 'Lari', 'asd', 'Positif', '1', '1', '1', '2', '06/29/2019', '082389765473', 'Meninggal Dunia', '-2.98766648695315', '104.76245197357184'),
(23, 4, 'Puskesmas Kalidoni', 'Kadir', 'Celentang ujung', 'Buruh', '44', 'Laki-Laki', '06/20/2019', '06/22/2019', 'asd', 'asd', 'asd', 'Lecet', 'Anjing', 'Lari', 'asd', 'Positif', '0', '1', '2', '3', '06/27/2019', 'asd', 'Meninggal Dunia', '-2.9775521854071094', '104.75764545501715');

-- --------------------------------------------------------

--
-- Table structure for table `puskesmas`
--

CREATE TABLE `puskesmas` (
  `id_puskesmas` int(11) NOT NULL,
  `nama_puskesmas` varchar(200) NOT NULL,
  `alamat_puskesmas` varchar(200) NOT NULL,
  `nama_kecamatan` varchar(200) NOT NULL,
  `jumlah_penduduk` varchar(100) NOT NULL,
  `latitude_puskesmas` varchar(100) NOT NULL,
  `longtitude_puskesmas` varchar(100) NOT NULL,
  `foto_puskesmas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `puskesmas`
--

INSERT INTO `puskesmas` (`id_puskesmas`, `nama_puskesmas`, `alamat_puskesmas`, `nama_kecamatan`, `jumlah_penduduk`, `latitude_puskesmas`, `longtitude_puskesmas`, `foto_puskesmas`) VALUES
(8, 'Puskesmas Ayo Maju', 'Tanggo bontong city', 'Gandus', '221.433', '-2.9801664841262356', '104.75009235443122', ''),
(9, 'Puskesmas indonesia merdeka', 'Jalan Merdeka', 'Ilir Barat I', '221.433', '-2.988909339618844', '104.75554260314948', ''),
(10, 'Puskesmas kasih ibu', 'Jalan Perintis Kemerdekaan', 'Ilir Barat I', '63.740', '-2.989895049352804', '104.75863250793464', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `role`) VALUES
(2, 'Rudi', 'sako', 'sako', 'Puskesmas Sako'),
(3, 'Wesley', 'gandus', 'gandus', 'Puskesmas Gandus'),
(4, 'Ilham', 'kalidoni', 'kalidoni', 'Puskesmas Kalidoni'),
(5, 'Wijanarko', 'alanglebar', 'alanglebar', 'Alang Alang Lebar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `pelaporan`
--
ALTER TABLE `pelaporan`
  ADD PRIMARY KEY (`id_pelaporan`);

--
-- Indexes for table `puskesmas`
--
ALTER TABLE `puskesmas`
  ADD PRIMARY KEY (`id_puskesmas`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pelaporan`
--
ALTER TABLE `pelaporan`
  MODIFY `id_pelaporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `puskesmas`
--
ALTER TABLE `puskesmas`
  MODIFY `id_puskesmas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
