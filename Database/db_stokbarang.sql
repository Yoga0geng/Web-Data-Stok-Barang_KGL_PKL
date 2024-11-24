-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Sep 2024 pada 16.29
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stokbarang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `keterangan` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `stok`, `satuan`, `keterangan`) VALUES
(1, '15566194', 'Roll Ukuran 37 mm', 0, 'pcs', 'Habis'),
(73, '84857507', 'Roll Ukuran 40 mm', 3, 'pcs', '2 Roll daru, 1 Roll buatan (Jito)'),
(74, '27858478', 'Roll Ukuran 60 mm', 1, 'pcs', 'Bubutan'),
(75, '18736930', 'Roll Ukuran 62 mm', 3, 'pcs', '2 Roll baru, 1 Roll buatan (Jito)'),
(76, '87918442', 'Roll Besi Ukuran 28 mm', 4, 'pcs', 'Baru'),
(77, '50538781', 'Best Roll', 2, 'pcs', 'Bubutan'),
(78, '53919913', 'Roll Anilox', 1, 'pcs', 'Baru'),
(79, '23872928', 'Roll Laminasi', 2, 'pcs', '1 Roll baru, 1 Roll bubut'),
(82, '89973385', 'Lampu UV Type H60/320B', 3, 'pcs', 'Baru'),
(83, '39845892', 'Lampu UV Type M60/320B', 2, 'pcs', 'Baru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `kode`, `nama`, `email`, `telepon`, `alamat`) VALUES
(14, 'BRG956', 'Roll Dim 37 mm', 'Bergaris Tidak Rata (ST 5)', '1', '20/08/22'),
(15, 'BRG513', 'Roll Dim 37 mm', 'Rusak Bergaris (ST 4)', '1', '10/09/22'),
(16, 'BRG791', 'Roll Dim 60 mm', 'Rusak Bergaris (ST 5)', '1', '18/12/22'),
(17, 'BRG950', 'Roll Dim 40 mm', 'Rusak Retak-retak (ST 6)', '1', '28/12/22'),
(18, 'BRG927', 'Roll Dim 60 mm', 'Rusak Bergaris (ST 3)', '1', '17/01/23	'),
(19, 'BRG347', 'Roll Dim 62 mm', 'Rusak Bergaris (ST 4)', '1', '19/01/23'),
(20, 'BRG625', 'Roll Dim 40 mm', '- (ST 3)', '1', '12/06/23	'),
(21, 'BRG503', 'Roll Dim 37 mm', '- (ST 4)', '1', '18/09/23'),
(22, 'BRG512', 'Roll Dim 62 mm', 'Rusak Bergaris (ST 3)', '1', '18/09/23'),
(23, 'BRG772', 'Roll Dim 40 mm', 'Rusak Retak-retak (ST 3)', '1', '05/10/23'),
(24, 'BRG496', 'Roll besi (28 mm)', 'As Dudukan Bearing Longgar (ST 3)', '1', '13/10/23'),
(25, 'BRG629', 'Roll Dim 37 mm', '- (ST 2)', '1', '19/10/23'),
(26, 'BRG335', 'Roll Dim 37 mm', 'Kegulung Lap (Diganti Dua Roll) (ST 2)', '1', '06/12/23'),
(27, 'BRG926', 'Roll Dim 37 mm', '- (ST 6)', '1', '12/12/23'),
(29, 'BRG639', 'Roll Dim 62 mm', 'Rusak Bergaris Akibat Jarak Plate Terlalu Rapat (ST 4)', '1', '08/02/24'),
(30, 'BRG449', 'Roll Dim 60 mm', 'Rusak Bergaris Akibat Jarak Plate Terlalu Rapat (ST 4)', '1', '08/02/24'),
(31, 'BRG844', 'Roll Dim 62 mm', 'Rusak Bergaris (ST 5)', '1', '16/02/24'),
(32, 'BRG795', 'Roll Dim 40 mm', 'Rusak (ST 7)', '1', '05/03/24'),
(33, 'BRG163', 'Roll Dim 60 mm', 'Rusak Bergaris (ST 3)', '1', '12/03/24'),
(34, 'BRG319', 'Roll Dim 62 mm', 'Rusak Bergaris (ST 3)', '1', '21/03/24'),
(35, 'BRG627', 'Roll Dim 62 mm', 'Rusak (ST 6)', '1', '02/04/24'),
(36, 'BRG159', 'Roll Dim 60 mm', 'Rusak (ST 6)', '1', '02/04/24'),
(37, 'BRG620', 'Roll Dim 37 mm', 'Rusak (ST 4)', '1', '02/04/24'),
(38, 'BRG102', 'Roll Dim 37 mm', 'Rusak (ST 7)', '1', '02/04/24'),
(39, 'BRG734', 'Roll Dim 40 mm', 'Rusak Bergaris (Rontok) (ST 4)', '1', '20/05/24'),
(40, 'BRG265', 'Roll Dim 60 mm', 'Rusak (Tapi masih bisa pakai) (ST 3)', '1', '22/05/24'),
(41, 'BRG143', 'Roll Dim 62 mm (jito)', 'Rusak (ST 2)', '1', '24/05/24'),
(42, 'BRG900', 'Roll Dim 40 mm', 'Rusak (ST 2)', '1', '27/05/24'),
(43, 'BRG537', 'Roll Dim 62 mm', 'Rusak Bergaris (ST 7)', '1', '07/06/24'),
(44, 'BRG690', 'Roll Dim 37 mm', 'Rusak Retak-retak (ST 3)', '1', '18/06/21'),
(45, 'BRG960', 'Roll Dim 40 mm', 'Rusak Bergaris (ST 4)', '1', '21/06/24'),
(46, 'BRG712', '	Roll Dim 37 mm', 'Rusak Bergaris (Rontok) (ST 3)', '1', '09/07/24'),
(47, 'BRG366', '	Roll Dim 40 mm', 'Rusak Bergaris (Rontok) (ST 6)', '1', '29/07/24'),
(48, 'BRG781', 'Best Roll', 'Bergaris (Sudah di bubut) (ST 3)', '1', '05/08/24'),
(49, 'BRG856', '	Roll Dim 40 mm', 'Rusak Bergaris (Rontok) (ST 1)', '1', '30/07/24'),
(50, 'BRG435', '	Roll Dim 62 mm', 'Bergaris (Sudah di bubut) (ST 3)', '1', '05/08/24'),
(51, 'BRG556', '	Roll Dim 37 mm', 'Rusak (ST 7)', '1', '09/08/24'),
(52, 'BRG330', 'Lampu UV Type H60/320B', 'Sudah Mencapai 8000 Jam (Hour)', '5', '18/09/23'),
(53, 'BRG612', 'Lampu UV Type M60/320B', 'Sudah Mencapai 9000 Jam (Hour)', '3', '10/01/23, 27/08/24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_toko`
--

CREATE TABLE `data_toko` (
  `id` int(11) NOT NULL,
  `nama_toko` varchar(80) DEFAULT NULL,
  `nama_pemilik` varchar(80) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_toko`
--

INSERT INTO `data_toko` (`id`, `nama_toko`, `nama_pemilik`, `no_telepon`, `alamat`) VALUES
(1, 'PT. Karya Gemilang Labelindo', 'Andi Halim', '0878111000000', 'Mutiara Taman Palem Blok B1 no. 35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_keluar`
--

CREATE TABLE `detail_keluar` (
  `no_keluar` varchar(25) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `keterangan` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_keluar`
--

INSERT INTO `detail_keluar` (`no_keluar`, `nama_barang`, `jumlah`, `satuan`, `keterangan`) VALUES
('TR1680493850', 'Pitingan Lampu Bolam', 1, 'pcs', 'Gedung F'),
('TR1680661543', 'Lampu TL 18 Watt Putih', 4, 'pcs', 'LP2RP'),
('TR1680661597', 'Gembok besar', 1, 'pcs', 'Ex Bookstore');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_terima`
--

CREATE TABLE `detail_terima` (
  `no_terima` varchar(25) DEFAULT NULL,
  `nama_barang` varchar(80) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `keterangan` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_terima`
--

INSERT INTO `detail_terima` (`no_terima`, `nama_barang`, `jumlah`, `satuan`, `keterangan`) VALUES
('TR1680749518', 'Gembok besar', 2, 'pcs', 'Barang dilantai 5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerimaan`
--

CREATE TABLE `penerimaan` (
  `id` int(11) NOT NULL,
  `no_terima` varchar(25) DEFAULT NULL,
  `tgl_terima` varchar(25) DEFAULT NULL,
  `jam_terima` varchar(10) DEFAULT NULL,
  `nama_supplier` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `no_keluar` varchar(25) DEFAULT NULL,
  `tgl_keluar` varchar(25) DEFAULT NULL,
  `jam_keluar` varchar(10) DEFAULT NULL,
  `nama_customer` varchar(80) DEFAULT NULL,
  `nama_petugas` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `kode`, `nama`, `username`, `password`) VALUES
(1, 'PGN1', 'Yoga Agustirahayu M.F', 'admin', 'admin'),
(2, 'PENGGUNA - 2', 'Yoga Agustirahayu M.F', 'yoga', 'yoga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id`, `kode`, `nama`, `username`, `password`) VALUES
(1, 'PETUGAS - 35', 'Yoga Agustirahayu', 'yoga', 'yoga'),
(2, 'PETUGAS - 2', 'Aandi Halim', 'andi', 'andi'),
(3, 'PETUGAS - 3', 'Lohannes', 'Spv', 'Spv');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) DEFAULT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `kode`, `nama`, `email`, `telepon`, `alamat`) VALUES
(2, 'SPL01', 'PT. Angelindo', 'angelindo.48jkt@gmail.com', '085000000000', 'Tanggerang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_toko`
--
ALTER TABLE `data_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerimaan`
--
ALTER TABLE `penerimaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_terima` (`no_terima`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_keluar` (`no_keluar`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `data_toko`
--
ALTER TABLE `data_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penerimaan`
--
ALTER TABLE `penerimaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
