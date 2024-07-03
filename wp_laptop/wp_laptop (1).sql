-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2024 pada 05.42
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
-- Database: `wp_laptop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` int(11) NOT NULL,
  `nama_laptop` varchar(55) NOT NULL,
  `harga` int(11) NOT NULL,
  `ram` int(11) NOT NULL,
  `penyimpanan` int(11) NOT NULL,
  `gpu` int(11) NOT NULL,
  `layar` int(11) NOT NULL,
  `baterai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama_laptop`, `harga`, `ram`, `penyimpanan`, `gpu`, `layar`, `baterai`) VALUES
(1, 'Asus TUF Gaming 15', 15, 16, 512, 8, 15, 48),
(2, 'MSI GF63 Thin 11SC', 12, 8, 256, 4, 15, 41),
(3, 'Lenovo Ideapad Gaming 3', 14, 16, 512, 6, 15, 45),
(4, 'HP Pavilion Gaming 15', 13, 8, 1024, 4, 15, 47),
(5, 'Acer Nitro 5', 11, 16, 1024, 8, 17, 50),
(6, 'MSI Bravo 15 B5DD', 13, 8, 512, 4, 15, 44);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id` int(11) NOT NULL,
  `nama_laptop` varchar(55) NOT NULL,
  `preferensi` double(11,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id`, `nama_laptop`, `preferensi`) VALUES
(1, 'Asus TUF Gaming 15', 0.170),
(2, 'MSI GF63 Thin 11SC', 0.138),
(3, 'Lenovo Ideapad Gaming 3', 0.168),
(4, 'HP Pavilion Gaming 15', 0.175),
(5, 'Acer Nitro 5', 0.194),
(6, 'MSI Bravo 15 B5DD', 0.155);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `kode` varchar(55) NOT NULL,
  `nama_kriteria` varchar(55) NOT NULL,
  `bobot` int(11) NOT NULL,
  `label` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `kode`, `nama_kriteria`, `bobot`, `label`) VALUES
(1, 'C1', 'Harga', 5, 'Cost'),
(2, 'C2', 'RAM', 4, 'Benefit'),
(3, 'C3', 'Penyimpanan', 3, 'Benefit'),
(4, 'C4', 'GPU', 4, 'Benefit'),
(5, 'C5', 'Layar', 2, 'Benefit'),
(6, 'C6', 'Baterai', 4, 'Benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `normalisasi`
--

CREATE TABLE `normalisasi` (
  `id` int(11) NOT NULL,
  `kode_kriteria` varchar(11) NOT NULL,
  `bobot` double(11,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `normalisasi`
--

INSERT INTO `normalisasi` (`id`, `kode_kriteria`, `bobot`) VALUES
(1, 'C1', -0.192),
(2, 'C2', 0.154),
(3, 'C3', 0.115),
(4, 'C4', 0.154),
(5, 'C5', 0.077),
(6, 'C6', 0.154),
(8, 'C1', -0.192),
(9, 'C2', 0.154),
(10, 'C3', 0.115),
(11, 'C4', 0.154),
(12, 'C5', 0.077),
(13, 'C6', 0.154),
(15, 'C1', -0.192),
(16, 'C2', 0.154),
(17, 'C3', 0.115),
(18, 'C4', 0.154),
(19, 'C5', 0.077),
(20, 'C6', 0.154),
(22, 'C1', -0.192),
(23, 'C2', 0.154),
(24, 'C3', 0.115),
(25, 'C4', 0.154),
(26, 'C5', 0.077),
(27, 'C6', 0.154),
(28, 'C7', 0.154),
(29, 'C1', -0.227),
(30, 'C2', 0.182),
(31, 'C3', 0.136),
(32, 'C4', 0.182),
(33, 'C5', 0.091),
(34, 'C6', 0.182),
(35, 'C1', -0.227),
(36, 'C2', 0.182),
(37, 'C3', 0.136),
(38, 'C4', 0.182),
(39, 'C5', 0.091),
(40, 'C6', 0.182),
(41, 'C1', -0.227),
(42, 'C2', 0.182),
(43, 'C3', 0.136),
(44, 'C4', 0.182),
(45, 'C5', 0.091),
(46, 'C6', 0.182),
(47, 'C1', -0.227),
(48, 'C2', 0.182),
(49, 'C3', 0.136),
(50, 'C4', 0.182),
(51, 'C5', 0.091),
(52, 'C6', 0.182),
(53, 'C1', -0.227),
(54, 'C2', 0.182),
(55, 'C3', 0.136),
(56, 'C4', 0.182),
(57, 'C5', 0.091),
(58, 'C6', 0.182),
(59, 'C1', -0.227),
(60, 'C2', 0.182),
(61, 'C3', 0.136),
(62, 'C4', 0.182),
(63, 'C5', 0.091),
(64, 'C6', 0.182),
(65, 'C1', -0.227),
(66, 'C2', 0.182),
(67, 'C3', 0.136),
(68, 'C4', 0.182),
(69, 'C5', 0.091),
(70, 'C6', 0.182),
(71, 'C1', -0.227),
(72, 'C2', 0.182),
(73, 'C3', 0.136),
(74, 'C4', 0.182),
(75, 'C5', 0.091),
(76, 'C6', 0.182),
(77, 'C1', -0.227),
(78, 'C2', 0.182),
(79, 'C3', 0.136),
(80, 'C4', 0.182),
(81, 'C5', 0.091),
(82, 'C6', 0.182),
(83, 'C1', -0.227),
(84, 'C2', 0.182),
(85, 'C3', 0.136),
(86, 'C4', 0.182),
(87, 'C5', 0.091),
(88, 'C6', 0.182),
(89, 'C1', -0.227),
(90, 'C2', 0.182),
(91, 'C3', 0.136),
(92, 'C4', 0.182),
(93, 'C5', 0.091),
(94, 'C6', 0.182),
(95, 'C1', -0.227),
(96, 'C2', 0.182),
(97, 'C3', 0.136),
(98, 'C4', 0.182),
(99, 'C5', 0.091),
(100, 'C6', 0.182),
(101, 'C1', -0.227),
(102, 'C2', 0.182),
(103, 'C3', 0.136),
(104, 'C4', 0.182),
(105, 'C5', 0.091),
(106, 'C6', 0.182),
(107, 'C1', -0.227),
(108, 'C2', 0.182),
(109, 'C3', 0.136),
(110, 'C4', 0.182),
(111, 'C5', 0.091),
(112, 'C6', 0.182),
(113, 'C1', -0.227),
(114, 'C2', 0.182),
(115, 'C3', 0.136),
(116, 'C4', 0.182),
(117, 'C5', 0.091),
(118, 'C6', 0.182),
(119, 'C1', -0.227),
(120, 'C2', 0.182),
(121, 'C3', 0.136),
(122, 'C4', 0.182),
(123, 'C5', 0.091),
(124, 'C6', 0.182),
(125, 'C1', -0.227),
(126, 'C2', 0.182),
(127, 'C3', 0.136),
(128, 'C4', 0.182),
(129, 'C5', 0.091),
(130, 'C6', 0.182),
(131, 'C1', -0.227),
(132, 'C2', 0.182),
(133, 'C3', 0.136),
(134, 'C4', 0.182),
(135, 'C5', 0.091),
(136, 'C6', 0.182),
(137, 'C1', -0.227),
(138, 'C2', 0.182),
(139, 'C3', 0.136),
(140, 'C4', 0.182),
(141, 'C5', 0.091),
(142, 'C6', 0.182),
(143, 'C1', -0.227),
(144, 'C2', 0.182),
(145, 'C3', 0.136),
(146, 'C4', 0.182),
(147, 'C5', 0.091),
(148, 'C6', 0.182),
(149, 'C1', -0.227),
(150, 'C2', 0.182),
(151, 'C3', 0.136),
(152, 'C4', 0.182),
(153, 'C5', 0.091),
(154, 'C6', 0.182),
(155, 'C1', -0.227),
(156, 'C2', 0.182),
(157, 'C3', 0.136),
(158, 'C4', 0.182),
(159, 'C5', 0.091),
(160, 'C6', 0.182),
(161, 'C1', -0.227),
(162, 'C2', 0.182),
(163, 'C3', 0.136),
(164, 'C4', 0.182),
(165, 'C5', 0.091),
(166, 'C6', 0.182),
(167, 'C1', -0.227),
(168, 'C2', 0.182),
(169, 'C3', 0.136),
(170, 'C4', 0.182),
(171, 'C5', 0.091),
(172, 'C6', 0.182),
(173, 'C1', -0.227),
(174, 'C2', 0.182),
(175, 'C3', 0.136),
(176, 'C4', 0.182),
(177, 'C5', 0.091),
(178, 'C6', 0.182),
(179, 'C1', -0.227),
(180, 'C2', 0.182),
(181, 'C3', 0.136),
(182, 'C4', 0.182),
(183, 'C5', 0.091),
(184, 'C6', 0.182),
(185, 'C1', -0.227),
(186, 'C2', 0.182),
(187, 'C3', 0.136),
(188, 'C4', 0.182),
(189, 'C5', 0.091),
(190, 'C6', 0.182),
(191, 'C1', -0.227),
(192, 'C2', 0.182),
(193, 'C3', 0.136),
(194, 'C4', 0.182),
(195, 'C5', 0.091),
(196, 'C6', 0.182),
(197, 'C1', -0.227),
(198, 'C2', 0.182),
(199, 'C3', 0.136),
(200, 'C4', 0.182),
(201, 'C5', 0.091),
(202, 'C6', 0.182),
(203, 'C1', -0.208),
(204, 'C2', 0.167),
(205, 'C3', 0.125),
(206, 'C4', 0.167),
(207, 'C5', 0.083),
(208, 'C6', 0.167),
(209, 'C7', 0.083),
(210, 'C1', -0.208),
(211, 'C2', 0.167),
(212, 'C3', 0.125),
(213, 'C4', 0.167),
(214, 'C5', 0.083),
(215, 'C6', 0.167),
(216, 'C7', 0.083),
(217, 'C1', -0.208),
(218, 'C2', 0.167),
(219, 'C3', 0.125),
(220, 'C4', 0.167),
(221, 'C5', 0.083),
(222, 'C6', 0.167),
(223, 'C7', 0.083),
(224, 'C1', -0.227),
(225, 'C2', 0.182),
(226, 'C3', 0.136),
(227, 'C4', 0.182),
(228, 'C5', 0.091),
(229, 'C6', 0.182),
(230, 'C1', -0.227),
(231, 'C2', 0.182),
(232, 'C3', 0.136),
(233, 'C4', 0.182),
(234, 'C5', 0.091),
(235, 'C6', 0.182),
(236, 'C1', -0.227),
(237, 'C2', 0.182),
(238, 'C3', 0.136),
(239, 'C4', 0.182),
(240, 'C5', 0.091),
(241, 'C6', 0.182);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vektor`
--

CREATE TABLE `vektor` (
  `id` int(11) NOT NULL,
  `nama_laptop` varchar(55) NOT NULL,
  `score` double(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `vektor`
--

INSERT INTO `vektor` (`id`, `nama_laptop`, `score`) VALUES
(1, 'Asus TUF Gaming 15', 7.252),
(2, 'MSI GF63 Thin 11SC', 5.924),
(3, 'Lenovo Ideapad Gaming 3', 7.199),
(4, 'HP Pavilion Gaming 15', 7.467),
(5, 'Acer Nitro 5', 8.296),
(6, 'MSI Bravo 15 B5DD', 6.644);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `normalisasi`
--
ALTER TABLE `normalisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vektor`
--
ALTER TABLE `vektor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `normalisasi`
--
ALTER TABLE `normalisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
