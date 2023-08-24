-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2023 at 08:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_persediaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Idbarang` int(11) NOT NULL,
  `namabarang` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`Idbarang`, `namabarang`, `deskripsi`, `stock`) VALUES
(11, 'blanko', 'Bantuan dari Pusat', 150),
(12, 'buku', 'Bantuan dari Pusat', 400),
(13, 'Kertas Sidu', 'Bantuan dari Pusat', 900),
(14, 'mouse', 'Bantuan dari Pusat', 500),
(15, 'Gunting', 'Bantuan', 600),
(16, 'Penggaris', 'Bantuan', 200),
(17, 'Map', 'beli di toko', 160),
(19, 'Lampu', 'Beli', 95);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `Idjenis` int(11) NOT NULL,
  `namajenis` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`Idjenis`, `namajenis`) VALUES
(3, 'Alat Tulis Kantor');

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `Idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL DEFAULT 0,
  `tanggalk` timestamp NULL DEFAULT current_timestamp(),
  `penerima` varchar(50) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `satuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keluar`
--

INSERT INTO `keluar` (`Idkeluar`, `idbarang`, `tanggalk`, `penerima`, `qty`, `satuan`) VALUES
(17, 11, '2023-08-22 01:25:30', 'Staff', 500, 'Biji'),
(18, 12, '2023-08-18 04:15:53', 'Gembeng', 100, 'Buah'),
(19, 11, '2023-08-22 05:20:04', 'cust', 200, 'Biji'),
(20, 17, '2023-08-23 11:45:50', 'Karyawan', 100, 'Biji'),
(21, 11, '2023-08-24 01:22:46', 'cust', 50, 'Biji');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Iduser` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Iduser`, `email`, `password`) VALUES
(4, 'user@yahoo.com', '12344'),
(5, 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `Idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL DEFAULT 0,
  `tanggalm` timestamp NOT NULL DEFAULT current_timestamp(),
  `keterangan` varchar(25) NOT NULL DEFAULT '',
  `harga` varchar(255) NOT NULL DEFAULT '',
  `qty` int(11) NOT NULL,
  `satuan` varchar(255) NOT NULL DEFAULT '',
  `total` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masuk`
--

INSERT INTO `masuk` (`Idmasuk`, `idbarang`, `tanggalm`, `keterangan`, `harga`, `qty`, `satuan`, `total`) VALUES
(34, 11, '2023-08-22 01:24:44', 'Karyawan', '9000', 900, 'Biji', '8100000'),
(35, 13, '2023-08-20 03:50:15', 'Staff', '15000', 500, 'Rim', '7500000'),
(36, 15, '2023-08-15 03:50:26', 'Gembeng', '7000', 400, 'Buah', '2800000'),
(37, 12, '2023-08-22 09:26:03', 'wibian', '5000', 400, 'Buah', '2000000'),
(39, 17, '2023-08-23 10:51:16', 'Karyawan', '3000', 255, 'Biji', '765000'),
(40, 19, '2023-08-24 01:43:45', 'cust', '12000', 50, 'Buah', '600000');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `idsatuan` int(11) NOT NULL,
  `namasatuan` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`idsatuan`, `namasatuan`) VALUES
(3, 'Biji'),
(4, 'Buah'),
(5, 'Rim'),
(6, 'Dus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Idbarang`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`Idjenis`);

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`Idkeluar`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Iduser`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`Idmasuk`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`idsatuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `Idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `Idjenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `Idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `Idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `idsatuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
