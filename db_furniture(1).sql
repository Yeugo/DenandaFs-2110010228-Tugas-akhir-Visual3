-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 07:19 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `kode_barang` int(5) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga_satuan` int(20) NOT NULL,
  `total_harga` int(20) NOT NULL,
  `kode_supplyer` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`kode_barang`, `nama_barang`, `tanggal_masuk`, `jumlah`, `harga_satuan`, `total_harga`, `kode_supplyer`) VALUES
(1, 'Meja Belajar', '2023-11-02', 10, 250000, 2500000, 1239),
(2, 'Meja Makan', '2023-11-02', 5, 450000, 2250000, 1239),
(3, 'Kursi', '2023-12-01', 12, 75000, 900000, 3344),
(4, 'Sofa', '2023-12-01', 7, 375000, 2625000, 3344),
(5, 'Lemari', '2023-12-01', 5, 850000, 4250000, 3344);

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE `kustomer` (
  `kustomer_id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `status` enum('Regular','Member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`kustomer_id`, `nama`, `telepon`, `status`) VALUES
(1, 'Gilang', '085566789876', 'Regular'),
(2, 'Santi', '085566780097', 'Member'),
(3, 'Riski', '085566780000', 'Member'),
(4, 'Herlambang', '085566780091', 'Regular'),
(5, 'Nata', '085566780022', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(10) NOT NULL,
  `id_penjualan` int(5) NOT NULL,
  `no_struk` int(5) NOT NULL,
  `bayar` int(20) NOT NULL,
  `kembali` int(20) NOT NULL,
  `mtd_bayar` enum('Cash','Cashless') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `id_penjualan`, `no_struk`, `bayar`, `kembali`, `mtd_bayar`) VALUES
(1, 1, 1245, 350000, 25000, 'Cash'),
(2, 2, 1256, 700000, 50000, 'Cashless'),
(3, 3, 2345, 550000, 0, 'Cash'),
(4, 4, 2829, 450000, 0, 'Cashless'),
(5, 5, 3432, 2000000, 100000, 'Cashless');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(5) NOT NULL,
  `kode_barang` int(5) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `nama_kustomer` varchar(50) NOT NULL,
  `tgl_penjulan` date NOT NULL,
  `jumlah_barang` int(10) NOT NULL,
  `harga_satuan` int(20) NOT NULL,
  `total_harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `kode_barang`, `nama_barang`, `nama_kustomer`, `tgl_penjulan`, `jumlah_barang`, `harga_satuan`, `total_harga`) VALUES
(1, 1, 'Meja Belajar', 'Gilang', '2023-11-28', 1, 325000, 325000),
(2, 1, 'Meja Belajar', 'Santi', '2023-11-29', 2, 325000, 650000),
(3, 2, 'Meja Makan', 'Santi', '2023-11-30', 1, 550000, 550000),
(4, 4, 'Sofa', 'Nata', '2023-11-30', 1, 450000, 450000),
(5, 5, 'Lemari', 'Herlambang', '2023-11-30', 2, 950000, 1900000);

-- --------------------------------------------------------

--
-- Table structure for table `stock_barang`
--

CREATE TABLE `stock_barang` (
  `kode_barang` int(5) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga_beli` int(10) NOT NULL,
  `harga_jual` int(10) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_barang`
--

INSERT INTO `stock_barang` (`kode_barang`, `nama_barang`, `harga_beli`, `harga_jual`, `stok`) VALUES
(1, 'Meja Belajar', 250000, 325000, 10),
(2, 'Meja Makan', 450000, 550000, 5),
(3, 'Kursi', 75000, 120000, 12),
(4, 'Sofa', 375000, 450000, 7),
(5, 'Lemari', 800000, 950000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `supplyer`
--

CREATE TABLE `supplyer` (
  `kode_supplyer` int(5) NOT NULL,
  `nama_supplyer` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplyer`
--

INSERT INTO `supplyer` (`kode_supplyer`, `nama_supplyer`, `alamat`, `telepon`) VALUES
(1239, 'Anto', 'Jln. Manggis', '08673562763542'),
(1240, 'Lutfi', 'Jln. Pangeran', '08673562767789'),
(1241, 'Tono', 'Jln. Manga', '08673562763590'),
(1242, 'Mahmud', 'Jln. Manga 2', '08673562767754'),
(1243, 'Putri', 'Jln. Manga 3', '08673562767787');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `level` enum('Karyawan','Staff') NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `level`, `status`) VALUES
(1, 'staff', 'staff', 'staff1@gmail.com', 'Staff', 1),
(2, 'karyawan', 'karyawan', 'karyawan1@gmail.com', 'Karyawan', 1),
(3, 'karyawan2', 'karyawan2', 'karyawan2@gmail.com', 'Karyawan', 1),
(4, 'karyawan3', 'karyawan3', 'karyawan3@gmail.com', 'Karyawan', 1),
(5, 'karyawan4', 'karyawan4', 'kar4@gmail.com', 'Karyawan', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `kustomer`
--
ALTER TABLE `kustomer`
  ADD PRIMARY KEY (`kustomer_id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `FK_id_penjualan` (`id_penjualan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `stock_barang`
--
ALTER TABLE `stock_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `FK_id_penjualan` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id_penjualan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
