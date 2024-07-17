-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2024 pada 09.22
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keterlambatan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `nama` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `level`, `nama`) VALUES
(5, 'operator', '4b583376b2767b923c3e1da60d10de59', 'operator', 'Operator'),
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `kode_kelas` int(3) NOT NULL,
  `nama_kelas` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`kode_kelas`, `nama_kelas`) VALUES
(1, 'X IPA 1'),
(2, 'X IPA 2'),
(3, 'X IPA 3'),
(4, 'X IPA 4'),
(5, 'X IPA 5'),
(6, 'X IPS 1'),
(7, 'X IPS 2'),
(8, 'X IPS 3'),
(9, 'X IPS 4'),
(10, 'X IPS 5'),
(11, 'XI IPA 1'),
(12, 'XI IPA 2'),
(13, 'XI IPA 3'),
(14, 'XI IPA 4'),
(15, 'XI IPS 1'),
(16, 'XI IPS 2'),
(17, 'XI IPS 3'),
(18, 'XII IPA 1'),
(19, 'XII IPA 2'),
(20, 'XII IPA 3'),
(21, 'XII IPA 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `no` int(5) NOT NULL,
  `nis` int(6) NOT NULL,
  `nama` varchar(64) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `kelas` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`no`, `nis`, `nama`, `jk`, `kelas`) VALUES
(1, 1, 'Jhone', 'L', 'X IPA 1'),
(2, 2, 'Audia', 'P', 'X IPA 1'),
(3, 3, 'Muhlisin', 'L', 'X IPA 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksitelat`
--

CREATE TABLE `transaksitelat` (
  `no` int(11) NOT NULL,
  `nis` int(6) NOT NULL,
  `tanggal` date NOT NULL,
  `alasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksitelat`
--

INSERT INTO `transaksitelat` (`no`, `nis`, `tanggal`, `alasan`) VALUES
(1, 3, '2024-01-07', 'Kehujanan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `transaksitelat`
--
ALTER TABLE `transaksitelat`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `kode_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `transaksitelat`
--
ALTER TABLE `transaksitelat`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
