-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 05:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kos_pria`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `kode_kamar` varchar(10) NOT NULL,
  `jenis_kamar` varchar(30) NOT NULL,
  `harga` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`kode_kamar`, `jenis_kamar`, `harga`) VALUES
('K001', 'KAMAR DALAM + AC', 2000000),
('K002', 'KAMAR DALAM + NON AC', 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `id_penyewa` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `usia` varchar(10) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `profesi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`id_penyewa`, `nama`, `alamat`, `usia`, `no_hp`, `profesi`) VALUES
('P001', 'MUNDHI', 'WONOGIRI', '26', '082265006929', 'MAHASISWA');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(10) NOT NULL,
  `id_penyewa` varchar(20) NOT NULL,
  `nama_penyewa` varchar(30) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `jenis_kamar` varchar(30) NOT NULL,
  `harga_kamar` varchar(30) NOT NULL,
  `nomor_kamar` varchar(10) NOT NULL,
  `jml_tahun` varchar(10) NOT NULL,
  `total` varchar(30) NOT NULL,
  `bayar` varchar(30) NOT NULL,
  `kekurangan` varchar(30) NOT NULL,
  `kembalian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_penyewa`, `nama_penyewa`, `no_hp`, `jenis_kamar`, `harga_kamar`, `nomor_kamar`, `jml_tahun`, `total`, `bayar`, `kekurangan`, `kembalian`) VALUES
('TR001', 'P001', 'MUNDHI', '08978676', 'KAMAR DALAM + AC', '2000000', '2', '3', '6000000', '5000000', '1000000', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`kode_kamar`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
