-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2025 pada 16.40
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustakaloka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `jenis` char(1) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `id_kota` int(11) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `id_organisasi` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `jenis`, `alamat`, `id_kota`, `telepon`, `email`, `tanggal_daftar`, `jenis_kelamin`, `id_organisasi`) VALUES
(6, 'Arip', '', 'Jepang', 3, '083862731178', 'arip@gmail.com', '2025-03-24', 'M', 14),
(8, 'arif', '', 'korea', 1, '21424524', 'dad@gamil.com', '2025-03-24', 'L', 18),
(9, 'dawdawdawd', '', 'wdawdad', 1, '123123', '3123waee', '2025-03-24', 'L', 17),
(10, 'Aripfff', '', 'Jepang', 2, '083862731178', 'arip@gmail.com', '2025-03-24', 'L', 14),
(11, 'hervan ganteng', '', 'sumedang ', 1, '0833231', 'jajdjasd', '2025-03-24', 'P', 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id`, `nama`) VALUES
(1, 'KOTA BANDUNG'),
(2, 'KAB. BANDUNG'),
(3, 'KAB. BANDUNG BARAT'),
(4, 'KAB. BANDUNG TIMUR'),
(7, 'awdawdwdadwad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `organisasi`
--

CREATE TABLE `organisasi` (
  `id` tinyint(4) NOT NULL,
  `nama` varchar(75) DEFAULT NULL,
  `jenis` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `organisasi`
--

INSERT INTO `organisasi` (`id`, `nama`, `jenis`) VALUES
(12, 'UTB', 'Fakultas'),
(14, 'ITB', 'Fakultas'),
(17, 'Pt.SinarMas', 'Unit'),
(18, 'Vocaloid', 'Unit'),
(19, 'Arise', 'Unit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `fullname`) VALUES
('Arip', '0df01ae7dd51cec48fed56952f40842b', 'Arip Ikbal Fadilah'),
('user1', '81dc9bdb52d04dc20036dbd8313ed055', 'User 1'),
('user2', '81dc9bdb52d04dc20036dbd8313ed055', 'User 2'),
('user3', '81dc9bdb52d04dc20036dbd8313ed055', 'User 3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kota` (`id_kota`),
  ADD KEY `id_organisasi` (`id_organisasi`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`id_kota`) REFERENCES `kota` (`id`),
  ADD CONSTRAINT `anggota_ibfk_2` FOREIGN KEY (`id_organisasi`) REFERENCES `organisasi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
