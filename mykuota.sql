-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2023 pada 15.01
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypulsa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_kuota`
--

CREATE TABLE `pembelian_kuota` (
  `kuota_id` int(11) NOT NULL,
  `nohp` varchar(12) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `kuota_name` varchar(255) NOT NULL,
  `kuota_size` varchar(100) NOT NULL,
  `kuota_price` varchar(100) NOT NULL,
  `jenis_pembayaran` varchar(100) NOT NULL,
  `metode_pembayaran` varchar(100) NOT NULL,
  `total_bayar` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian_kuota`
--

INSERT INTO `pembelian_kuota` (`kuota_id`, `nohp`, `provider`, `kuota_name`, `kuota_size`, `kuota_price`, `jenis_pembayaran`, `metode_pembayaran`, `total_bayar`, `created_at`) VALUES
(25, '087745610943', 'Telkomsel', 'PAKET INTERNET 30 HARI', '10 GB', '50.000', 'Bayar langsung', 'Gopay', 'Rp 50.000', '2022-12-14 18:11:35'),
(26, '082672819384', 'XL', 'PAKET INTERNET 1 HARI', '2.5 GB', '10.000', 'Hutang', 'ShopePay', 'Rp 10.000', '2022-12-14 18:28:00'),
(27, '085623827212', 'Telkomsel', 'PAKET INTERNET 7 HARI', '5 GB', '20.000', 'Bayar langsung', 'Gopay', 'Rp 20.000', '2022-12-14 18:29:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pembelian_kuota`
--
ALTER TABLE `pembelian_kuota`
  ADD PRIMARY KEY (`kuota_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembelian_kuota`
--
ALTER TABLE `pembelian_kuota`
  MODIFY `kuota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
