-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Agu 2021 pada 18.21
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latlogin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('fiqry', '123'),
('fiqry2', '1234'),
('qwerty', 'saya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tescovid`
--

CREATE TABLE `tescovid` (
  `nama` varchar(30) NOT NULL,
  `nik` int(20) NOT NULL,
  `tanggal lahir` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `no telpn` int(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl tes` varchar(20) NOT NULL,
  `jenis tes` varchar(50) NOT NULL,
  `hasil tes` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tescovid`
--

INSERT INTO `tescovid` (`nama`, `nik`, `tanggal lahir`, `gender`, `no telpn`, `alamat`, `tgl tes`, `jenis tes`, `hasil tes`) VALUES
('fiqry fahmy', 19102199, '1 november 2001', 'laki-laki', 82472627, 'purwokerto', '21 agustus 2001', 'PCR', 'negatif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vaksinasi`
--

CREATE TABLE `vaksinasi` (
  `nama` varchar(30) NOT NULL,
  `nik` int(20) NOT NULL,
  `tanggal lahir` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `no telpn` int(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl vaksin` varchar(20) NOT NULL,
  `jenis vaksin` varchar(20) NOT NULL,
  `catatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `vaksinasi`
--

INSERT INTO `vaksinasi` (`nama`, `nik`, `tanggal lahir`, `gender`, `no telpn`, `alamat`, `tgl vaksin`, `jenis vaksin`, `catatan`) VALUES
('fiqry fahmy', 19102199, '20 mei 2001', 'laki-laki', 82626252, 'purwokerto', '21 mei 2021', 'Pfizer', '-');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tescovid`
--
ALTER TABLE `tescovid`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `vaksinasi`
--
ALTER TABLE `vaksinasi`
  ADD PRIMARY KEY (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
