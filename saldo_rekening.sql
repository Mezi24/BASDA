-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 02:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nasabah_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `saldo_rekening`
--

CREATE TABLE `saldo_rekening` (
  `nomor_rekening` int(30) NOT NULL,
  `id_cs` int(25) DEFAULT NULL,
  `id_direktur` int(25) DEFAULT NULL,
  `jenis_rekening` varchar(35) DEFAULT NULL,
  `nama_nasabah` varchar(20) DEFAULT NULL,
  `saldo` varchar(40) DEFAULT NULL,
  `tanggal_dibuka` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `saldo_rekening`
--
ALTER TABLE `saldo_rekening`
  ADD PRIMARY KEY (`nomor_rekening`),
  ADD KEY `id_cs` (`id_cs`),
  ADD KEY `id_direktur` (`id_direktur`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `saldo_rekening`
--
ALTER TABLE `saldo_rekening`
  ADD CONSTRAINT `saldo_rekening_ibfk_1` FOREIGN KEY (`id_cs`) REFERENCES `customer_service` (`id_cs`),
  ADD CONSTRAINT `saldo_rekening_ibfk_2` FOREIGN KEY (`id_direktur`) REFERENCES `direktur` (`id_direktur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
