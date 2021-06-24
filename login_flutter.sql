-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2021 pada 18.36
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_flutter`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `nama_buku` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `nama_buku`, `penerbit`, `deskripsi`) VALUES
(1, 'Corel Draw Untuk Pemula', 'Cipta Design Indonesia', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea quas veritatis magnam, quasi officiis unde iste porro facere eveniet praesentium!'),
(2, 'Html and Css', 'Web Design Nusantara', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea quas veritatis magnam, quasi officiis unde iste porro facere eveniet praesentium!'),
(3, 'Bootstraps beginner', 'Design Web Nusantara', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea quas veritatis magnam, quasi officiis unde iste porro facere eveniet praesentium!'),
(4, 'Bootstraps beginner', 'Design Web Nusantara', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea quas veritatis magnam, quasi officiis unde iste porro facere eveniet praesentium!'),
(5, 'Framework Laravel', 'Phpco Indonesia', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea quas veritatis magnam, quasi officiis unde iste porro facere eveniet praesentium!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', '12345'),
('admin1', '12345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
