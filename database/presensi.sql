-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2023 pada 03.47
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `IdAbsen` int(11) NOT NULL,
  `Nip` varchar(30) DEFAULT NULL,
  `TglAbsen` date DEFAULT NULL,
  `JamDatang` time DEFAULT NULL,
  `JamPulang` time DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`IdAbsen`, `Nip`, `TglAbsen`, `JamDatang`, `JamPulang`, `Keterangan`) VALUES
(62, '2001122003', '2017-11-29', '08:39:46', '00:00:00', 'Hadir'),
(63, '2001122003', '2017-11-30', '08:54:56', '00:00:00', 'Hadir'),
(64, '2001122003', '2017-12-04', '08:55:15', '00:00:00', 'Hadir'),
(65, '2001122003', '2017-12-05', '08:27:22', '00:00:00', 'Hadir'),
(66, '2001122003', '2017-12-06', '08:10:31', '00:00:00', 'Hadir'),
(67, '2001122003', '2017-12-07', '08:22:43', '00:00:00', 'Hadir'),
(68, '2001122003', '2017-12-08', '08:23:50', '00:00:00', 'Hadir'),
(69, '2001122003', '2017-12-11', '08:34:02', '00:00:00', 'Hadir'),
(70, '2001122003', '2017-12-12', '08:43:08', '00:00:00', 'Hadir'),
(71, '2001122003', '2017-12-13', '08:33:15', '00:00:00', 'Hadir'),
(72, '2001122003', '2017-12-14', '08:45:21', '00:00:00', 'Hadir'),
(73, '2001122003', '2017-12-15', '08:06:35', '00:00:00', 'Hadir'),
(74, '2001122003', '2018-01-02', '08:08:51', '00:00:00', 'Hadir'),
(75, '2001122003', '2018-01-03', '08:20:57', '00:00:00', 'Hadir'),
(76, '2001122003', '2018-01-04', '08:32:03', '00:00:00', 'Hadir'),
(77, '2001122003', '2018-01-05', '08:38:09', '00:00:00', 'Hadir'),
(78, '2001122003', '2018-01-08', '08:26:15', '00:00:00', 'Hadir'),
(79, '2001122003', '2018-01-09', '08:54:25', '00:00:00', 'Hadir'),
(80, '2001122003', '2018-01-10', '08:58:32', '00:00:00', 'Hadir'),
(81, '2001122003', '2018-01-11', '08:54:52', '00:00:00', 'Hadir'),
(82, '2001122003', '2018-01-12', '08:04:00', '00:00:00', 'Hadir'),
(83, '2001122003', '2018-01-15', '08:31:08', '00:00:00', 'Hadir'),
(84, '2001122003', '2018-01-16', '08:33:16', '00:00:00', 'Hadir'),
(85, '2001122003', '2018-01-17', '08:06:22', '00:00:00', 'Hadir'),
(86, '2001122003', '2018-01-18', '08:15:31', '00:00:00', 'Hadir'),
(87, '2001122003', '2018-01-19', '08:18:38', '00:00:00', 'Hadir'),
(88, '2001122003', '2018-01-22', '08:20:48', '00:00:00', 'Hadir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang`
--

CREATE TABLE `bidang` (
  `IdBidang` int(11) NOT NULL,
  `NamaBidang` varchar(30) DEFAULT NULL,
  `KepalaBagian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `bidang`
--

INSERT INTO `bidang` (`IdBidang`, `NamaBidang`, `KepalaBagian`) VALUES
(8, 'MATEMATIKA', 'Didiary Shandy Setiyaan'),
(14, 'ILMU PENGETAHUAN ALAM', 'Crisna Rio Pakusadewa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harilibur`
--

CREATE TABLE `harilibur` (
  `IdHari` int(11) NOT NULL,
  `DariTgl` date DEFAULT NULL,
  `SampaiTgl` date DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `harilibur`
--

INSERT INTO `harilibur` (`IdHari`, `DariTgl`, `SampaiTgl`, `Keterangan`) VALUES
(31, '2023-01-07', '2023-01-08', 'Sabtu - Minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keteranganabsen`
--

CREATE TABLE `keteranganabsen` (
  `Id` int(11) NOT NULL,
  `Nip` varchar(30) DEFAULT NULL,
  `Jenis` enum('Izin','Cuti','Sakit','DL') DEFAULT NULL,
  `TglPengajuan` date DEFAULT NULL,
  `TglMulai` date DEFAULT NULL,
  `TglSelesai` date DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `keteranganabsen`
--

INSERT INTO `keteranganabsen` (`Id`, `Nip`, `Jenis`, `TglPengajuan`, `TglMulai`, `TglSelesai`, `Keterangan`) VALUES
(1, '200602027', 'Izin', '2023-01-01', '2023-01-05', '2023-01-05', 'Kepentingan Keluarga'),
(4, '200602027', 'Cuti', '2023-01-01', '2023-01-03', '2023-01-16', 'Dinas Luar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `Nip` varchar(30) NOT NULL DEFAULT '',
  `Nama` varchar(50) NOT NULL DEFAULT '',
  `Alamat` varchar(255) DEFAULT NULL,
  `Kontak` varchar(14) NOT NULL DEFAULT '',
  `Sex` enum('L','P') NOT NULL DEFAULT 'L',
  `IdBidang` int(11) DEFAULT NULL,
  `Jabatan` varchar(255) DEFAULT NULL,
  `Pangkat` varchar(5) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`Nip`, `Nama`, `Alamat`, `Kontak`, `Sex`, `IdBidang`, `Jabatan`, `Pangkat`, `Email`, `Password`) VALUES
('200602027', 'Didiary Shandy Setiyawan', 'Kabupaten Gresik', '082244520170', 'L', 8, 'Admin', 'III/a', 'Didiary123@gmail.com', '094badcd34ad5a7e4899e67277fde785'),
('200602045', 'Crisna Rio Pakusadewa', 'Kabupaten Gresik', '082244660022', 'L', 14, 'Kepala Bagian', 'III/a', 'Crsina007@gmail.com', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perangkat`
--

CREATE TABLE `perangkat` (
  `IdPerangkat` int(11) NOT NULL,
  `Nip` varchar(30) NOT NULL DEFAULT '',
  `MacAddress` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `perangkat`
--

INSERT INTO `perangkat` (`IdPerangkat`, `Nip`, `MacAddress`) VALUES
(4, '121347384738', '3c-b6-b7-1d-6f-ed'),
(5, '1988100110', '30-cb-f8-e3-c9-af'),
(6, '19822102003', '70-78-8b-c6-6d-37'),
(7, '1997031004', '20-72-0d-39-09-cc'),
(8, '2001122003', '30-c7-AE-76-2E-ED'),
(10, '200602027', 'Didiary456@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`IdAbsen`);

--
-- Indeks untuk tabel `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`IdBidang`);

--
-- Indeks untuk tabel `harilibur`
--
ALTER TABLE `harilibur`
  ADD PRIMARY KEY (`IdHari`);

--
-- Indeks untuk tabel `keteranganabsen`
--
ALTER TABLE `keteranganabsen`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`Nip`);

--
-- Indeks untuk tabel `perangkat`
--
ALTER TABLE `perangkat`
  ADD PRIMARY KEY (`IdPerangkat`,`Nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `IdAbsen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `bidang`
--
ALTER TABLE `bidang`
  MODIFY `IdBidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `harilibur`
--
ALTER TABLE `harilibur`
  MODIFY `IdHari` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `keteranganabsen`
--
ALTER TABLE `keteranganabsen`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `perangkat`
--
ALTER TABLE `perangkat`
  MODIFY `IdPerangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
