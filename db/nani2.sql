-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 30 Agu 2022 pada 03.59
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nani2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `crips`
--

CREATE TABLE `crips` (
  `id_crips` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `crips` varchar(100) NOT NULL,
  `nilai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `crips`
--

INSERT INTO `crips` (`id_crips`, `id_kriteria`, `crips`, `nilai`) VALUES
(1, 1, 'A', '4.1 - 5.0'),
(3, 1, 'B', '3.1-4.0'),
(4, 1, 'C', '2.1-3.0'),
(5, 1, 'D', '1.0-2.0'),
(6, 1, 'E', '< 1,0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jabatan` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `nip`, `jabatan`) VALUES
(15, 'ANDRIANI, S.Pd', '4035768669230230', 'a'),
(16, 'BASNES', '2450589504004940', 'b'),
(17, 'DARLIA, S.Pd', '2747770671130090', 'c'),
(18, 'DAUD, S.Pd', '4927347283044480', 'd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kd_kriteria` varchar(50) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `attribut` varchar(50) NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kd_kriteria`, `nama_kriteria`, `attribut`, `bobot`) VALUES
(1, 'C1', 'nilai keterampilan mengajar', 'benefit', 30),
(2, 'C2', 'nilai kepribadian', 'benefit', 20),
(4, 'C3', 'nilai profesional', 'benefit', 25),
(5, 'C4', 'nilai sosial', 'benefit', 10),
(6, 'C5', 'nilai kedisiplinan', 'benefit', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_guru`, `id_kriteria`, `nilai`) VALUES
(3, 15, 1, '5.0'),
(4, 15, 2, '4.5'),
(5, 15, 4, '4.0'),
(6, 15, 5, '4.0'),
(7, 15, 6, '4.0'),
(8, 16, 1, '3.5'),
(9, 16, 2, '4.0'),
(10, 16, 4, '2.0'),
(11, 16, 5, '4.0'),
(12, 16, 6, '3.0'),
(13, 17, 1, '4.0'),
(14, 17, 2, '5.0'),
(15, 17, 4, '3.0'),
(16, 17, 5, '4.0'),
(17, 17, 6, '4.0'),
(18, 18, 1, '5.0'),
(19, 18, 2, '4.0'),
(20, 18, 4, '4.5'),
(21, 18, 5, '3.5'),
(22, 18, 6, '5.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `normalisasi`
--

CREATE TABLE `normalisasi` (
  `id_normalisasi` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai_normalisasi` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `normalisasi`
--

INSERT INTO `normalisasi` (`id_normalisasi`, `id_guru`, `id_kriteria`, `nilai_normalisasi`) VALUES
(46, 15, 1, '1.00'),
(47, 15, 2, '0.90'),
(48, 15, 4, '0.89'),
(49, 15, 5, '1.00'),
(50, 15, 6, '0.80'),
(51, 16, 1, '0.70'),
(52, 16, 2, '0.80'),
(53, 16, 4, '0.44'),
(54, 16, 5, '1.00'),
(55, 16, 6, '0.60'),
(56, 17, 1, '0.80'),
(57, 17, 2, '1.00'),
(58, 17, 4, '0.67'),
(59, 17, 5, '1.00'),
(60, 17, 6, '0.80'),
(61, 18, 1, '1.00'),
(62, 18, 2, '0.80'),
(63, 18, 4, '1.00'),
(64, 18, 5, '0.88'),
(65, 18, 6, '1.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perhitungan`
--

CREATE TABLE `perhitungan` (
  `id_perhitungan` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai_perhitungan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perhitungan`
--

INSERT INTO `perhitungan` (`id_perhitungan`, `id_guru`, `id_kriteria`, `nilai_perhitungan`) VALUES
(61, 15, 1, 0.3),
(62, 16, 1, 0.21),
(63, 17, 1, 0.24),
(64, 18, 1, 0.3),
(65, 15, 2, 0.18),
(66, 16, 2, 0.16),
(67, 17, 2, 0.2),
(68, 18, 2, 0.16),
(69, 15, 4, 0.2225),
(70, 16, 4, 0.11),
(71, 17, 4, 0.1675),
(72, 18, 4, 0.25),
(73, 15, 5, 0.1),
(74, 16, 5, 0.1),
(75, 17, 5, 0.1),
(76, 18, 5, 0.088),
(77, 15, 6, 0.12),
(78, 16, 6, 0.09),
(79, 17, 6, 0.12),
(80, 18, 6, 0.15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rangking`
--

CREATE TABLE `rangking` (
  `id_rangking` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `nilai_rangking` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rangking`
--

INSERT INTO `rangking` (`id_rangking`, `id_guru`, `nilai_rangking`) VALUES
(98, 10, '52.5'),
(99, 11, '37.5'),
(100, 12, '37.5'),
(101, 13, '55'),
(102, 14, '58.25'),
(103, 15, '98'),
(104, 16, '70.75'),
(105, 17, '87.75');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `crips`
--
ALTER TABLE `crips`
  ADD PRIMARY KEY (`id_crips`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `normalisasi`
--
ALTER TABLE `normalisasi`
  ADD PRIMARY KEY (`id_normalisasi`);

--
-- Indeks untuk tabel `perhitungan`
--
ALTER TABLE `perhitungan`
  ADD PRIMARY KEY (`id_perhitungan`);

--
-- Indeks untuk tabel `rangking`
--
ALTER TABLE `rangking`
  ADD PRIMARY KEY (`id_rangking`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `crips`
--
ALTER TABLE `crips`
  MODIFY `id_crips` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `normalisasi`
--
ALTER TABLE `normalisasi`
  MODIFY `id_normalisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `perhitungan`
--
ALTER TABLE `perhitungan`
  MODIFY `id_perhitungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `rangking`
--
ALTER TABLE `rangking`
  MODIFY `id_rangking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
