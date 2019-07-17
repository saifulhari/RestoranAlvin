-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 04:52 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alvin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID` int(4) NOT NULL,
  `NAMA` varchar(20) NOT NULL,
  `notlp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`ID`, `NAMA`, `notlp`) VALUES
(1, 'Al', '08389993710'),
(2, 'Anis', '08434565434'),
(3, 'Sasa', '08182889911'),
(4, 'Ali', '08910298737'),
(5, 'Diki', '0876545142'),
(6, 'Ahmad', '0891118298'),
(7, 'Reza', '0811234568'),
(8, 'Danar', '0834567811'),
(9, 'Vitoo', '0876543415');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Nota` int(10) NOT NULL,
  `ID` int(10) NOT NULL,
  `Jumlah` int(4) NOT NULL,
  `Uang_Bayar` int(10) NOT NULL,
  `Uang_Kembali` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Nota`, `ID`, `Jumlah`, `Uang_Bayar`, `Uang_Kembali`) VALUES
(1, 1, 45000, 50000, 5000),
(2, 2, 85000, 100000, 15000),
(3, 3, 65000, 100000, 35000),
(4, 4, 90000, 100000, 10000),
(5, 5, 90000, 100000, 10000),
(6, 6, 45000, 100000, 55000),
(7, 7, 130000, 150000, 20000),
(8, 8, 50000, 100000, 50000),
(9, 9, 75000, 100000, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `password` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `hs` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`password`, `username`, `hs`) VALUES
('admin', 'admin', 'User Operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Nota`),
  ADD KEY `transaksi_ibfk_1` (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
