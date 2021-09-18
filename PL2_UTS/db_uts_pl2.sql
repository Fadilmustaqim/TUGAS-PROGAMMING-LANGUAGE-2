-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 07:38 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uts_pl2`
--

-- --------------------------------------------------------

--
-- Table structure for table `latihan_kelas`
--

CREATE TABLE `latihan_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `latihan_kelas`
--

INSERT INTO `latihan_kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
(1, 'C', 'SISTEM INFORMASI');

-- --------------------------------------------------------

--
-- Table structure for table `latihan_pembayaran`
--

CREATE TABLE `latihan_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `tgl_bayar` int(2) NOT NULL,
  `bulan_bayar` varchar(10) NOT NULL,
  `tahun_bayar` int(4) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `latihan_pembayaran`
--

INSERT INTO `latihan_pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_bayar`, `tahun_bayar`, `id_spp`, `jumlah_bayar`) VALUES
(1, 1, 14197005, 9, '09', 2021, 1, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `latihan_petugas`
--

CREATE TABLE `latihan_petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama_petugas` varchar(20) NOT NULL,
  `level` enum('Administrator','Petugas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `latihan_petugas`
--

INSERT INTO `latihan_petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'admin', 'admin', 'atong', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `latihan_siswa`
--

CREATE TABLE `latihan_siswa` (
  `nisn` int(10) NOT NULL,
  `nis` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `latihan_siswa`
--

INSERT INTO `latihan_siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
(14197005, 6969, 'Athallah', 1, 'LOREM IPSUM DOLOR SIT AMET', '08788888', 1),
(14197050, 6060, 'nisa', 1, 'lorem ipsum', '09999', 1);

-- --------------------------------------------------------

--
-- Table structure for table `latihan_spp`
--

CREATE TABLE `latihan_spp` (
  `id_spp` int(11) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `latihan_spp`
--

INSERT INTO `latihan_spp` (`id_spp`, `tahun`, `nominal`) VALUES
(1, 2021, 500000),
(2, 2021, 550000),
(3, 2021, 600000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `latihan_kelas`
--
ALTER TABLE `latihan_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `latihan_pembayaran`
--
ALTER TABLE `latihan_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_spp` (`id_spp`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indexes for table `latihan_petugas`
--
ALTER TABLE `latihan_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `latihan_siswa`
--
ALTER TABLE `latihan_siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `latihan_spp`
--
ALTER TABLE `latihan_spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `latihan_kelas`
--
ALTER TABLE `latihan_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `latihan_pembayaran`
--
ALTER TABLE `latihan_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `latihan_petugas`
--
ALTER TABLE `latihan_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `latihan_siswa`
--
ALTER TABLE `latihan_siswa`
  MODIFY `nisn` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14197051;

--
-- AUTO_INCREMENT for table `latihan_spp`
--
ALTER TABLE `latihan_spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `latihan_pembayaran`
--
ALTER TABLE `latihan_pembayaran`
  ADD CONSTRAINT `latihan_pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `latihan_siswa` (`nisn`),
  ADD CONSTRAINT `latihan_pembayaran_ibfk_3` FOREIGN KEY (`id_spp`) REFERENCES `latihan_siswa` (`id_spp`),
  ADD CONSTRAINT `latihan_pembayaran_ibfk_4` FOREIGN KEY (`id_petugas`) REFERENCES `latihan_petugas` (`id_petugas`);

--
-- Constraints for table `latihan_siswa`
--
ALTER TABLE `latihan_siswa`
  ADD CONSTRAINT `latihan_siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `latihan_kelas` (`id_kelas`),
  ADD CONSTRAINT `latihan_siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `latihan_spp` (`id_spp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
