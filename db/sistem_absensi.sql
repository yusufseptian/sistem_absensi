-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2022 pada 19.54
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(50) NOT NULL,
  `guru_nama` varchar(100) NOT NULL,
  `guru_email` varchar(50) NOT NULL,
  `guru_password` varchar(225) NOT NULL,
  `guru_foto` varchar(100) NOT NULL,
  `guru_role` int(11) NOT NULL,
  `guru_status` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_email`, `guru_password`, `guru_foto`, `guru_role`, `guru_status`, `created_at`, `created_by`) VALUES
(2, '123526', 'hares', 'berrypop@gmail.com', 'hehe', '1668351509_33cf324547c3e58ee48a.png', 2, '1', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_kode` varchar(50) NOT NULL,
  `kelas_nama` varchar(100) NOT NULL,
  `wali_kelas` int(11) NOT NULL,
  `tahun_ajaran` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`kelas_id`, `kelas_kode`, `kelas_nama`, `wali_kelas`, `tahun_ajaran`, `created_by`) VALUES
(3, 'a123', '11Mipa5', 2, 0, 0),
(4, 'a124', '12Mipa5', 2, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `mapel_id` int(11) NOT NULL,
  `mapel_kode` varchar(100) NOT NULL,
  `mapel_nama` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mapel`
--

INSERT INTO `tb_mapel` (`mapel_id`, `mapel_kode`, `mapel_nama`, `created_by`) VALUES
(2, '113', 'matematika diskrit', 0),
(3, '112', 'nganu', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `jam_mengajar` varchar(50) NOT NULL,
  `jamke` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_role`
--

CREATE TABLE `tb_role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_role`
--

INSERT INTO `tb_role` (`role_id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Guru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_semester`
--

CREATE TABLE `tb_semester` (
  `semester_id` int(11) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(50) NOT NULL,
  `siswa_nama` varchar(100) NOT NULL,
  `siswa_tempat_lahir` varchar(100) NOT NULL,
  `siswa_tgl_lahir` date NOT NULL,
  `siswa_jk` varchar(30) NOT NULL,
  `siswa_alamat` varchar(225) NOT NULL,
  `siswa_foto` varchar(225) NOT NULL,
  `siswa_th_angkatan` int(11) NOT NULL,
  `siswa_id_kelas` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_tempat_lahir`, `siswa_tgl_lahir`, `siswa_jk`, `siswa_alamat`, `siswa_foto`, `siswa_th_angkatan`, `siswa_id_kelas`, `created_by`) VALUES
(7, '5190411039', 'Yusuf Septian', 'semarang', '2022-11-20', 'Laki-Laki', 'mtl', '1668882955_0bce8c1f6402bac9cc1e.jpg', 2019, 3, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tahun_ajaran`
--

CREATE TABLE `tb_tahun_ajaran` (
  `th_id` int(11) NOT NULL,
  `th_ajaran` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_tahun_ajaran`
--

INSERT INTO `tb_tahun_ajaran` (`th_id`, `th_ajaran`, `created_by`) VALUES
(1, '2022/2023', 0),
(2, '2020/2021', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_wali_kelas`
--

CREATE TABLE `tb_wali_kelas` (
  `wk_id` int(11) NOT NULL,
  `wk_id_guru` int(11) NOT NULL,
  `wk_id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`guru_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`kelas_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `wali_kelas` (`wali_kelas`);

--
-- Indeks untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`mapel_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indeks untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_semester` (`id_semester`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indeks untuk tabel `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indeks untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`semester_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`siswa_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `siswa_id_kelas` (`siswa_id_kelas`);

--
-- Indeks untuk tabel `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  ADD PRIMARY KEY (`th_id`);

--
-- Indeks untuk tabel `tb_wali_kelas`
--
ALTER TABLE `tb_wali_kelas`
  ADD PRIMARY KEY (`wk_id`),
  ADD KEY `wk_id_guru` (`wk_id_guru`),
  ADD KEY `wk_id_kelas` (`wk_id_kelas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `mapel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  MODIFY `th_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_wali_kelas`
--
ALTER TABLE `tb_wali_kelas`
  MODIFY `wk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD CONSTRAINT `tb_kelas_ibfk_1` FOREIGN KEY (`wali_kelas`) REFERENCES `tb_guru` (`guru_id`);

--
-- Ketidakleluasaan untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD CONSTRAINT `tb_mengajar_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `tb_guru` (`guru_id`),
  ADD CONSTRAINT `tb_mengajar_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`kelas_id`),
  ADD CONSTRAINT `tb_mengajar_ibfk_4` FOREIGN KEY (`id_mapel`) REFERENCES `tb_mapel` (`mapel_id`),
  ADD CONSTRAINT `tb_mengajar_ibfk_5` FOREIGN KEY (`id_semester`) REFERENCES `tb_semester` (`semester_id`),
  ADD CONSTRAINT `tb_mengajar_ibfk_6` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`th_id`);

--
-- Ketidakleluasaan untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `tb_siswa_ibfk_2` FOREIGN KEY (`siswa_id_kelas`) REFERENCES `tb_kelas` (`kelas_id`);

--
-- Ketidakleluasaan untuk tabel `tb_wali_kelas`
--
ALTER TABLE `tb_wali_kelas`
  ADD CONSTRAINT `tb_wali_kelas_ibfk_1` FOREIGN KEY (`wk_id_guru`) REFERENCES `tb_guru` (`guru_id`),
  ADD CONSTRAINT `tb_wali_kelas_ibfk_2` FOREIGN KEY (`wk_id_kelas`) REFERENCES `tb_kelas` (`kelas_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
