-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 03:10 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kios`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jenis` text NOT NULL,
  `suplier` text NOT NULL,
  `modal` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `total_modal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `suplier`, `modal`, `harga`, `jumlah`, `sisa`, `total_modal`) VALUES
(14, 'Nike Airmax', 'Sepatu', 'PT. Nike Indonesia', 1000000, 1100000, 69, 20, ''),
(17, 'Nike Air Jordan', 'Sepatu', 'PT. Nike Indonesia', 2000000, 2200000, 1, 10, ''),
(19, 'Nike Mercurial', 'Sepatu', 'PT. Nike Indonesia', 900000, 1000000, 116, 24, ''),
(20, 'Nike Phantom', 'Sepatu', 'PT. Nike Indonesia', 950000, 1000000, 61, 1000, ''),
(21, 'Nike Air Force', 'Sepatu', 'PT. Nike Indonesia', 1200000, 1300000, 30, 900, ''),
(22, 'Adidas Ultraboost', 'Sepatu', 'PT. Adidas Indonesia', 2500000, 2600000, 45, 900, ''),
(23, 'Adidas StanSmith', 'Sepatu', 'PT. Adidas Indonesia', 800000, 1000000, 105, 1000, ''),
(24, 'Adidas Continential', 'Sepatu', 'PT. Adidas Indonesia', 900000, 970000, 80, 800, ''),
(25, 'Adidas Predator', 'Sepatu', 'PT. Adidas Indonesia', 800000, 900000, 21, 500, ''),
(27, 'Adidas X19', 'Sepatu', 'PT. Adidas Indonesia', 750000, 800000, 50, 600, ''),
(28, 'Specs Garuda Attack', 'Sepatu', 'PT. Specs Indonesia', 400000, 450000, 0, 200, ''),
(29, 'Specs Lightspeed', 'Sepatu', 'PT. Specs Indonesia', 400000, 440000, 22, 150, ''),
(30, 'Specs Metasala', 'Sepatu', 'PT. Specs Indonesia', 340000, 380000, 120, 150, ''),
(31, 'Ortuseight Jogosala', 'Sepatu', 'PT. Ortuseight Indonesia', 400000, 420000, 0, 150, ''),
(32, 'Ortuseight Oracle', 'Sepatu', 'PT. Ortuseight Indonesia', 4200000, 4800000, 2, 6, ''),
(33, 'Ortuseight Mavrick', 'Sepatu', 'PT. Ortuseight Indonesia', 330000, 370000, 20, 40, ''),
(34, 'Mizuno Basara', 'Sepatu', 'PT. Mizuno Indonesia', 500000, 550000, 5, 25, ''),
(35, 'Mizuno Blaze', 'Sepatu', 'PT. Mizuno Indonesia', 600000, 650000, 23, 50, ''),
(36, 'Mizuno Arlos', 'Sepatu', 'PT. Mizuno Indonesia', 400000, 450000, 30, 80, ''),
(37, 'Mizuno Army', 'Sepatu', 'PT. Mizuno Indonesia', 700000, 770000, 5, 15, '');

-- --------------------------------------------------------

--
-- Table structure for table `barang_laku`
--

CREATE TABLE `barang_laku` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `laba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_laku`
--

INSERT INTO `barang_laku` (`id`, `tanggal`, `nama`, `jumlah`, `harga`, `total_harga`, `laba`) VALUES
(65, '2019-12-16', 'Nike Airmax', 3, 1100000, 3300000, 300000),
(66, '2019-12-16', 'Nike Air Jordan', 3, 2200000, 6600000, 600000),
(67, '2019-12-16', 'Nike Mercurial', 80, 1000000, 80000000, 8000000),
(68, '2019-12-16', 'Nike Air Force', 25, 1300000, 32500000, 2500000),
(69, '2019-12-16', 'Nike Phantom', 70, 1000000, 70000000, 3500000),
(70, '2019-12-12', 'Adidas Ultraboost', 40, 2600000, 104000000, 4000000),
(71, '2019-12-12', 'Adidas StanSmith', 70, 1000000, 70000000, 14000000),
(72, '2019-12-12', 'Adidas Continential', 30, 970000, 29100000, 2100000),
(73, '2019-12-12', 'Adidas Predator', 120, 900000, 108000000, 12000000),
(74, '2019-12-12', 'Adidas X19', 30, 800000, 24000000, 1500000),
(75, '2019-12-13', 'Specs Garuda Attack', 30, 450000, 13500000, 1500000),
(76, '2019-12-13', 'Specs Lightspeed', 100, 440000, 44000000, 4000000),
(77, '2019-12-13', 'Specs Metasala', 20, 380000, 7600000, 800000),
(78, '2019-12-14', 'Ortuseight Jogosala', 20, 420000, 8400000, 400000),
(79, '2019-12-14', 'Ortuseight Oracle', 2, 4800000, 9600000, 1200000),
(80, '2019-12-14', 'Ortuseight Mavrick', 20, 370000, 7400000, 800000),
(81, '2019-12-15', 'Mizuno Basara', 20, 550000, 11000000, 1000000),
(82, '2019-12-15', 'Mizuno Blaze', 25, 650000, 16250000, 1250000),
(83, '2019-12-15', 'Mizuno Arlos', 40, 450000, 18000000, 2000000),
(84, '2019-12-15', 'Mizuno Army', 10, 700000, 7000000, 0),
(85, '2019-12-17', 'Nike Airmax', 25, 1100000, 27500000, 2500000),
(86, '2019-12-17', 'Adidas Ultraboost', 20, 2600000, 52000000, 2000000),
(87, '2019-12-17', 'Nike Phantom', 15, 1000000, 15000000, 750000),
(88, '2019-12-17', 'Specs Lightspeed', 20, 440000, 8800000, 800000),
(89, '2019-12-17', 'Nike Air Force', 22, 1300000, 28600000, 2200000),
(90, '2019-12-17', 'Adidas X19', 10, 800000, 8000000, 500000),
(91, '2019-12-17', 'Nike Air Jordan', 1, 2200000, 2200000, 200000),
(92, '2019-12-17', 'Adidas Continential', 20, 970000, 19400000, 1400000),
(93, '2019-12-18', 'Adidas StanSmith', 25, 1000000, 25000000, 5000000),
(94, '2019-12-18', 'Adidas Predator', 55, 900000, 49500000, 5500000),
(95, '2019-12-18', 'Adidas Ultraboost', 15, 2600000, 39000000, 1500000),
(97, '2019-12-18', 'Specs Lightspeed', 3, 440000, 1320000, 120000),
(98, '2019-12-18', 'Nike Air Force', 3, 1300000, 3900000, 300000),
(99, '2019-12-18', 'Nike Mercurial', 4, 1000000, 4000000, 400000),
(100, '2019-12-18', 'Mizuno Blaze', 2, 650000, 1300000, 100000),
(101, '2019-12-19', 'Mizuno Arlos', 10, 450000, 4500000, 500000),
(102, '2019-12-19', 'Nike Airmax', 3, 1100000, 3300000, 300000),
(103, '2019-12-19', 'Nike Phantom', 4, 1000000, 4000000, 200000),
(104, '2019-12-19', 'Adidas Predator', 4, 900000, 3600000, 400000),
(105, '2019-12-19', 'Specs Metasala', 4, 380000, 1520000, 160000);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keperluan` text NOT NULL,
  `nama` text NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `tanggal`, `keperluan`, `nama`, `jumlah`) VALUES
(1, '2015-02-06', 'de', 'diki', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `uname`, `pass`, `foto`) VALUES
(9, 'kuro', 'bakabaka', 'kuro.jpg'),
(11, 'admin', '123', 'admin.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang_laku`
--
ALTER TABLE `barang_laku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `barang_laku`
--
ALTER TABLE `barang_laku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
