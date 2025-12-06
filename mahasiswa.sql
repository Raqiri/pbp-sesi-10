-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Des 2025 pada 16.10
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
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` char(10) NOT NULL,
  `nama_dosen` varchar(40) DEFAULT NULL,
  `gender` enum('L','P') DEFAULT NULL,
  `prodi` enum('TI','TE','SI') DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_dosen`, `gender`, `prodi`, `email`) VALUES
('2001013', 'Dr. Lisa Mariana', 'P', 'SI', 'lisa.mariana@universitas.edu'),
('2001014', 'Prof. Martin S.', 'L', 'TI', 'martin.s@universitas.edu'),
('2001015', 'Ir. Nanda Putri', 'P', 'TE', 'nanda.p@universitas.edu'),
('2001016', 'Dr. Omar Bakri', 'L', 'SI', 'omar.bakri@universitas.edu'),
('2001017', 'Prof. Putri Kinanti', 'P', 'TI', 'putri.k@universitas.edu'),
('2001018', 'Dr. Qasim Alif', 'L', 'TE', 'qasim.alif@universitas.edu'),
('2001019', 'Ir. Rina Santi', 'P', 'SI', 'rina.santi@universitas.edu'),
('2001020', 'Prof. Surya Jaya', 'L', 'TI', 'surya.jaya@universitas.edu'),
('2001021', 'Dr. Tira Dewi', 'P', 'TE', 'tira.dewi@universitas.edu'),
('2001022', 'Ir. Umar Hadi', 'L', 'SI', 'umar.hadi@universitas.edu'),
('2001023', 'Prof. Vina Larasati', 'P', 'TI', 'vina.l@universitas.edu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `gender` enum('L','P') DEFAULT NULL,
  `prodi` enum('TI','TE','SI') DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `gender`, `prodi`, `alamat`) VALUES
('202401', 'Ronaldo', 'l', 'te', 'Jl. Cibolang Kaler'),
('202402', 'siti', 'p', 'si', 'sukabumi'),
('202403', 'bambang', 'l', 'te', 'cibadak'),
('202404', 'rina', 'p', 'ti', 'cicurug'),
('202405', 'dedi', 'l', 'si', 'lembursitu'),
('202406', 'maya', 'p', 'te', 'warudoyong'),
('202407', 'eko', 'l', 'ti', 'kadudampit'),
('202408', 'tina', 'p', 'si', 'cikole'),
('202409', 'agus', 'l', 'te', 'karang tengah'),
('202410', 'nisa', 'p', 'ti', 'bogor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
