-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 02:03 PM
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
-- Database: `db_learn_pl2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa_pl2`
--

CREATE TABLE `tb_mahasiswa_pl2` (
  `id` int(20) NOT NULL,
  `NPM` int(50) NOT NULL,
  `NAMA` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mahasiswa_pl2`
--

INSERT INTO `tb_mahasiswa_pl2` (`id`, `NPM`, `NAMA`) VALUES
(3, 67676767, 'TUTURU'),
(4, 60606060, 'MAMAN SUPRIATNA'),
(5, 70707070, 'ROY SUHERMAN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_mahasiswa_pl2`
--
ALTER TABLE `tb_mahasiswa_pl2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_mahasiswa_pl2`
--
ALTER TABLE `tb_mahasiswa_pl2`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
