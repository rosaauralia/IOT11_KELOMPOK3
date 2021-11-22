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
-- Struktur dari tabel `temperature_p`
--

CREATE TABLE `temperature_p` (
  `id` int(5) NOT NULL,
  `id_penyimpanan` varchar(3) NOT NULL,
  `Waktu` datetime NOT NULL,
  `Temperature` varchar(255) NOT NULL,
  `temp_before` varchar(3) NOT NULL,
  `Action` varchar(255) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `waktu_perbaikan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `temperature_p`
--

INSERT INTO `temperature_p` (`id`, `id_penyimpanan`, `Waktu`, `Temperature`, `temp_before`, `Action`, `nilai`, `waktu_perbaikan`) VALUES
(1, '1', '2019-06-05 00:00:00', '27', '22', 'Suhu dinaikkan', '', '2019-06-29 15:30:36'),
(2, '1', '2019-06-10 03:41:05', '27', '30', 'suhu diturunkan', '10', '2019-08-22 16:03:32'),
(3, '1', '2021-11-17 14:37:29', '30', '', '', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `temperature_p`
--
ALTER TABLE `temperature_p`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `temperature_p`
--
ALTER TABLE `temperature_p`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
