-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 Mar 2016 pada 13.09
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` varchar(50) NOT NULL,
  `kategori_barang` varchar(50) NOT NULL,
  `tipe_barang` varchar(50) NOT NULL,
  `harga_barang` int(50) NOT NULL,
  `operator` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `spesifikasi` varchar(300) NOT NULL,
  `stock` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `kategori_barang`, `tipe_barang`, `harga_barang`, `operator`, `gambar`, `spesifikasi`, `stock`) VALUES
('b10', '003', 'zultra', 2200000, 'A12', 'pic/zultra.jpg', 'Jaringan 4G LTE, Layar IPS LCD capacitive touchscreen 4.25 inches, Internal 16GB/RAM 1.5GB, Slot Up to 32GB, O.S.Android OS v5.0 (Lollipop), CPU Exynos 7420, Quad-core 1.3 GHz Cortex-A53', 52),
('b11', '002', 'mi4i', 2750000, 'A10', 'pic/mi4i.jpg', 'Jaringan 4G LTE, Layar 5.5 inches, Internal 16GB/RAM 2GB, Slot Up to 32GB, O.S.Android OS v5.0 (Lollipop), CPU Exynos 7420, Octa-core 1.3 GHz Cortex-A53', 52),
('b2', '001', 'j5', 3450000, 'A10', 'pic/j5.jpg', 'Jaringan 4G LTE, Layar 5.0 inches, Internal 32GB/RAM 3GB, Slot Up to 128GB, O.S.Android OS v5.0 (Lollipop), CPU Exynos 7420, Octa-core 1.3 GHz Cortex-A53', 46),
('b3', '001', 's4', 3600000, 'A10', 'pic/s4.jpg', 'Jaringan 4G LTE, Layar 4.5 inches, Internal 16GB/RAM 2GB, Slot Up to 32GB, O.S.Android OS v5.0 (Lollipop), CPU Exynos 7420, Quad-core 1.3 GHz Cortex-A53', 54),
('b4', '001', 'note5', 5200000, 'A10', 'pic/galaxynote5.jpg', 'Jaringan 4G LTE, Layar IPS LCD capacitive touchscreen, 6.0 inches, Internal 32GB/RAM 2GB Slot Up to 128GB, O.S.Android OS v5.0 (Lollipop), CPU Exynos 7420, Octa-core 1.3 GHz Cortex-A53', 48),
('b5', '002', 'note2', 1800000, 'A11', 'pic/note2.jpg', 'Jaringan 4G LTE, Layar 5.5 inches, Internal 16GB/RAM 2GB, Slot Up to 32GB, O.S.Android OS v5.0 (Lollipop), CPU Exynos 7420, Octa-core 1.3 GHz Cortex-A53', 49),
('b7', '002', 'note1', 1600000, 'A11', 'pic/minotepro.jpeg', 'Jaringan 4G LTE, Layar 5.5 inches, Internal 32GB/RAM 3GB, Slot Up to 128GB, O.S.Android OS v5.0 (Lollipop), CPU Exynos 7420, Octa-core 1.3 GHz Cortex-A53', 50),
('b8', '003', 'z5', 5200000, 'A12', 'pic/z5.png', 'Jaringan 4G LTE, Layar 5.0 inches, Internal 32GB/RAM 3GB, Slot Up to 128GB, O.S.Android OS v5.0 (Lollipop), CPU Exynos 7420, Octa-core 1.3 GHz Cortex-A53', 50),
('b9', '003', 'z1', 3250000, 'A12', 'pic/z1.jpg', 'Jaringan 4G LTE, Layar 4.5 inches, Internal 16GB/RAM 2GB, Slot Up to 32GB, O.S.Android OS v5.0 (Lollipop), CPU Exynos 7420, Quad-core 1.3 GHz Cortex-A53', 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_merk` varchar(50) NOT NULL,
  `nama_merk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_merk`, `nama_merk`) VALUES
('001', 'samsung'),
('002', 'xiaomi'),
('003', 'sony');

-- --------------------------------------------------------

--
-- Struktur dari tabel `operator`
--

CREATE TABLE IF NOT EXISTS `operator` (
  `id_operator` varchar(20) NOT NULL,
  `nama_operator` varchar(50) NOT NULL,
  `alamat_operator` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` tinyint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `operator`
--

INSERT INTO `operator` (`id_operator`, `nama_operator`, `alamat_operator`, `username`, `password`, `status`) VALUES
('A10', 'deddy', 'malang', 'deddy', 'deddy', 1),
('A11', 'dicky', 'bunder', 'dicky', 'dicky', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(50) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `alamat_pembeli` varchar(100) NOT NULL,
  `nama_barang_transaksi` varchar(100) NOT NULL,
  `harga_barang_transaksi` decimal(50,0) NOT NULL,
  `jumlah_barang_transaksi` varchar(100) NOT NULL,
  `total_harga_transaksi` decimal(50,0) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tgl_transaksi`, `nama_pembeli`, `alamat_pembeli`, `nama_barang_transaksi`, `harga_barang_transaksi`, `jumlah_barang_transaksi`, `total_harga_transaksi`) VALUES
(1, '2016-09-12', 'husen', 'malang', 'j5', '3450000', '2', '6900000'),
(2, '2016-09-12', 'dicky', 'arjosari', 'zultra', '2200000', '3', '6600000'),
(3, '2016-09-13', 'yuli', 'arjosari', 'note2', '1800000', '1', '1800000'),
(4, '2016-09-22', 'yulia', 'jodipan', 'note5', '5200000', '2', '10400000'),
(5, '2016-09-12', 'husen', 'malang', 'j5', '3450000', '2', '6900000'),
(6, '2016-09-13', 'marvin', 'malang', 's4', '3600000', '1', '3600000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id_operator`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
