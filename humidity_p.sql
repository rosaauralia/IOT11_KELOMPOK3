-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Nov 2021 pada 08.42
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suhu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `humidity_p`
--

CREATE TABLE `humidity_p` (
  `id` int(5) NOT NULL,
  `id_penyimpanan` varchar(3) NOT NULL,
  `Waktu` datetime NOT NULL,
  `Humidity` varchar(255) NOT NULL,
  `humid_before` varchar(5) NOT NULL,
  `Action` varchar(255) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `waktu_perbaikan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `humidity_p`
--

INSERT INTO `humidity_p` (`id`, `id_penyimpanan`, `Waktu`, `Humidity`, `humid_before`, `Action`, `nilai`, `waktu_perbaikan`) VALUES
(1, '1', '2019-06-05 00:00:00', '50', '2019', 'Kadar Kelembapan dinaikkan', '', '2019-06-29 15:25:46'),
(2, '1', '2019-06-10 03:41:05', '50', '2019', 'Kadar Kelembapan dinaikkan', '', '2019-06-29 14:50:17'),
(3, '1', '2021-11-17 14:21:22', '41', '', '', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `humidity_p`
--
ALTER TABLE `humidity_p`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `humidity_p`
--
ALTER TABLE `humidity_p`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
