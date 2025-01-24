-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2025 at 01:28 PM
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
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `stok` int(15) NOT NULL,
  `harga_satuan` decimal(50,0) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_kadaluarsa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `kategori`, `stok`, `harga_satuan`, `tanggal_masuk`, `tanggal_kadaluarsa`) VALUES
(4, 'npk 16 16 16', 'Pupuk', 100, 20000, '2024-12-01', '2027-11-18'),
(5, 'semprotan', 'Alat Pertanian', 299, 50000, '2024-12-20', '2025-03-21'),
(33, 'insektisida', 'Obat Pertanian', 354, 35000, '2024-12-18', '2025-02-12'),
(34, 'sprayer 2 liter', 'Alat Pertanian', 67, 35000, '2024-12-29', '2024-12-29'),
(35, 'pupuk poc', 'Pupuk', 76, 17500, '2024-12-29', '2028-08-24'),
(37, 'traktor', 'Alat Pertanian', 5, 2500000, '2025-01-03', '2025-01-03'),
(38, 'pot tanaman', 'Alat Pertanian', 54, 20000, '2025-01-10', '2025-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `harga_satuan` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id`, `nama_barang`, `kategori`, `jumlah`, `tanggal_keluar`, `harga_satuan`) VALUES
(1, 'npk 16 16 16', 'Pupuk', 23, '2024-12-19', NULL),
(2, 'npk 16 16 16', 'Pupuk', 23, '2025-01-16', NULL),
(3, 'npk 16 16 16', 'Pupuk', 23, '2025-01-16', NULL),
(4, 'npk 16 16 16', 'Pupuk', 23, '2024-12-20', NULL),
(5, 'npk 16 16 16', 'pupuk kimia', 2, '0000-00-00', 20000.00),
(6, 'npk 16 16 16', 'pupuk kimia', 2, '0000-00-00', 20000.00),
(7, '6', 'Pupuk', 1, '0000-00-00', 25000.00),
(8, '6', 'Pupuk', 1, '0000-00-00', 25000.00),
(9, '6', 'Pupuk', 1, '0000-00-00', 25000.00),
(10, '7', 'Obat Pertanian', 1, '0000-00-00', 35000.00),
(11, '6', 'Pupuk', 1, '0000-00-00', 25000.00),
(12, '8', 'Obat Pertanian', 1, '0000-00-00', 25000.00),
(13, '32', 'Obat Pertanian', 1, '0000-00-00', 40000.00),
(14, '5', 'Alat Pertanian', 1, '0000-00-00', 50000.00),
(15, '32', 'Obat Pertanian', 1, '0000-00-00', 40000.00),
(16, '5', 'Alat Pertanian', 1, '0000-00-00', 50000.00),
(17, '33', 'Obat Pertanian', 1, '0000-00-00', 35000.00),
(18, '33', 'Obat Pertanian', 1, '0000-00-00', 35000.00),
(19, '34', 'Alat Pertanian', 24, '0000-00-00', 35000.00),
(20, '33', 'Obat Pertanian', 21, '0000-00-00', 35000.00),
(21, 'semprotan', 'Alat Pertanian', 45, '0000-00-00', 50000.00),
(22, 'pupuk poc', 'Pupuk', 5, '0000-00-00', 17500.00),
(23, 'fungisida', 'Obat Pertanian', 34, '0000-00-00', 40000.00),
(24, 'insektisida', 'Obat Pertanian', 3, '0000-00-00', 35000.00),
(25, 'sarung tangan', 'Alat Pertanian', 2, '0000-00-00', 23000.00),
(26, 'pupuk poc', 'Pupuk', 5, '0000-00-00', 17500.00),
(27, 'pot tanaman', 'Alat Pertanian', 2, '0000-00-00', 20000.00),
(28, 'pot tanaman', 'Alat Pertanian', 3, '0000-00-00', 20000.00),
(29, 'pot tanaman', 'Alat Pertanian', 3, '0000-00-00', 20000.00),
(30, 'pot tanaman', 'Alat Pertanian', 2, '0000-00-00', 20000.00),
(31, 'semprotan', 'Alat Pertanian', 5, '0000-00-00', 50000.00);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` enum('admin','supervisor','staff','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `harga_satuan` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `nama_barang`, `kategori`, `jumlah`, `tanggal_transaksi`, `harga_satuan`) VALUES
(19, 'semprotan', 'Alat Pertanian', 45, '0000-00-00', 50000.00),
(20, 'pupuk poc', 'Pupuk', 5, '0000-00-00', 17500.00),
(21, 'fungisida', 'Obat Pertanian', 34, '0000-00-00', 40000.00),
(22, 'insektisida', 'Obat Pertanian', 3, '0000-00-00', 35000.00),
(24, 'pupuk poc', 'Pupuk', 5, '0000-00-00', 17500.00),
(25, 'pot tanaman', 'Alat Pertanian', 2, '0000-00-00', 20000.00),
(26, 'pot tanaman', 'Alat Pertanian', 3, '0000-00-00', 20000.00),
(28, 'pot tanaman', 'Alat Pertanian', 2, '0000-00-00', 20000.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
