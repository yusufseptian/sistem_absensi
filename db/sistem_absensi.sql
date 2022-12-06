-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2022 pada 15.33
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

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
-- Struktur dari tabel `tb_absensi`
--

CREATE TABLE `tb_absensi` (
  `absensi_id` int(11) NOT NULL,
  `ab_id_kelas` int(11) NOT NULL,
  `ab_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ab_created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_absensi`
--

INSERT INTO `tb_absensi` (`absensi_id`, `ab_id_kelas`, `ab_created_at`, `ab_created_by`) VALUES
(7, 10, '2022-12-06 14:28:43', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_absensi`
--

CREATE TABLE `tb_detail_absensi` (
  `dta_id` int(11) NOT NULL,
  `dta_ab_id` int(11) NOT NULL,
  `dta_id_siswa` int(11) NOT NULL,
  `dta_keterangan` enum('H','I','S','A') NOT NULL,
  `dta_deskripsi` text NOT NULL,
  `dta_edited_at` datetime DEFAULT NULL,
  `dta_edited_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_detail_absensi`
--

INSERT INTO `tb_detail_absensi` (`dta_id`, `dta_ab_id`, `dta_id_siswa`, `dta_keterangan`, `dta_deskripsi`, `dta_edited_at`, `dta_edited_by`) VALUES
(1, 7, 162, 'H', '', '0000-00-00 00:00:00', 0),
(2, 7, 163, 'I', '', '0000-00-00 00:00:00', 0),
(3, 7, 164, 'S', 'Sakit diare', '0000-00-00 00:00:00', 0),
(4, 7, 165, 'A', '', '0000-00-00 00:00:00', 0),
(5, 7, 166, 'A', '', '0000-00-00 00:00:00', 0),
(6, 7, 167, 'A', '', '0000-00-00 00:00:00', 0),
(7, 7, 168, 'A', '', '0000-00-00 00:00:00', 0),
(8, 7, 169, 'A', '', '0000-00-00 00:00:00', 0),
(9, 7, 170, 'A', '', '0000-00-00 00:00:00', 0),
(10, 7, 171, 'A', '', '0000-00-00 00:00:00', 0),
(11, 7, 172, 'A', '', '0000-00-00 00:00:00', 0),
(12, 7, 173, 'A', '', '0000-00-00 00:00:00', 0),
(13, 7, 174, 'A', '', '0000-00-00 00:00:00', 0),
(14, 7, 175, 'A', '', '0000-00-00 00:00:00', 0),
(15, 7, 176, 'A', '', '0000-00-00 00:00:00', 0),
(16, 7, 177, 'A', '', '0000-00-00 00:00:00', 0),
(17, 7, 178, 'A', '', '0000-00-00 00:00:00', 0),
(18, 7, 179, 'A', '', '0000-00-00 00:00:00', 0),
(19, 7, 180, 'A', '', '0000-00-00 00:00:00', 0),
(20, 7, 181, 'A', '', '0000-00-00 00:00:00', 0),
(21, 7, 182, 'A', '', '0000-00-00 00:00:00', 0),
(22, 7, 183, 'A', '', '0000-00-00 00:00:00', 0),
(23, 7, 184, 'A', '', '0000-00-00 00:00:00', 0),
(24, 7, 185, 'A', '', '0000-00-00 00:00:00', 0),
(25, 7, 186, 'A', '', '0000-00-00 00:00:00', 0),
(26, 7, 187, 'A', '', '0000-00-00 00:00:00', 0),
(27, 7, 188, 'A', '', '0000-00-00 00:00:00', 0),
(28, 7, 189, 'A', '', '0000-00-00 00:00:00', 0),
(29, 7, 190, 'A', '', '0000-00-00 00:00:00', 0),
(30, 7, 191, 'A', '', '0000-00-00 00:00:00', 0),
(31, 7, 192, 'A', '', '0000-00-00 00:00:00', 0),
(32, 7, 193, 'A', '', '0000-00-00 00:00:00', 0);

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
(2, '123526', 'hares', 'berrypop@gmail.com', '529ca8050a00180790cf88b63468826a', '1669654524_73c77dc75c8eecb27285.png', 1, '1', '0000-00-00 00:00:00', 0),
(3, '12345673', 'Mustok', 'hehe@gmail.com', 'd1a6f896a111b237d8ff8dc4ac623809', '1669654319_b3b34130e360f6c2ba48.png', 3, '1', '0000-00-00 00:00:00', 0),
(4, '1238932', 'Sutikno', 'haiyoiki@gmail.com', 'd1a6f896a111b237d8ff8dc4ac623809', '1669654510_4c77023c7f4368825e5d.png', 2, '1', '0000-00-00 00:00:00', 0),
(5, '1341873', 'Muhammad Bledek', 'opoyo@gmail.com', 'bingung', '1669654616_8dd31be9193efb7c5047.png', 3, '1', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_kode` varchar(50) NOT NULL,
  `kelas_nama` varchar(100) NOT NULL,
  `kelas_grade` int(11) NOT NULL,
  `wali_kelas` int(11) NOT NULL,
  `tahun_ajaran` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`kelas_id`, `kelas_kode`, `kelas_nama`, `kelas_grade`, `wali_kelas`, `tahun_ajaran`, `created_by`) VALUES
(3, 'A114', '11IPA4', 11, 4, 1, 0),
(4, 'A124', '12IPA4', 12, 3, 1, 0),
(7, 'A121', '12IPA1', 12, 2, 1, 0),
(8, 'A122', '12IPA2', 12, 2, 1, 0),
(9, 'A123', '12IPA3', 12, 2, 1, 0),
(10, 'A101', '10IPA1', 10, 3, 1, 0),
(11, 'A102', '10IPA2', 10, 4, 1, 0),
(12, 'A103', '10IPA3', 10, 5, 1, 0),
(13, 'A104', '10IPA4', 10, 3, 1, 0),
(14, 'S101', '10IPS1', 10, 4, 1, 0),
(15, 'S102', '10IPS2', 10, 4, 1, 0),
(16, 'S103', '10IPS3', 10, 3, 1, 0),
(17, 'S104', '10IPS4', 10, 5, 1, 0),
(18, 'A111', '11IPA1', 11, 3, 1, 0),
(19, 'A112', '11IPA2', 11, 4, 1, 0),
(20, 'A113', '11IPA3', 11, 3, 1, 0),
(22, 'S111', '11IPS1', 11, 3, 1, 0),
(23, 'S112', '11IPS2', 11, 4, 1, 0),
(24, 'S113', '11IPS3', 11, 5, 1, 0),
(25, 'S114', '11IPS4', 11, 2, 1, 0),
(26, 'S121', '12IPS1', 12, 4, 1, 0),
(27, 'S122', '12IPS2', 12, 3, 1, 0),
(28, 'S123', '12IPS3', 12, 4, 1, 0),
(29, 'S124', '12IPS4', 12, 2, 1, 0);

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
(2, 'Guru'),
(3, 'Guru Piket');

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
  `siswa_th_angkatan` int(11) NOT NULL,
  `siswa_id_kelas` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_tempat_lahir`, `siswa_tgl_lahir`, `siswa_jk`, `siswa_alamat`, `siswa_th_angkatan`, `siswa_id_kelas`, `created_by`) VALUES
(10, '20292', 'Waluyo Mustofa', 'Palu', '1997-05-15', '', 'Gg. Kebangkitan Nasional No. 464', 2019, 3, 0),
(11, '81711', 'Edi Jarwa Kuswoyo', 'Tidore Kepulauan', '1983-04-05', '', 'Psr. Abdul No. 839', 2019, 3, 0),
(12, '94710', 'Tugiman Widodo', 'Semarang', '1983-09-04', '', 'Dk. Dipatiukur No. 811', 2019, 3, 0),
(14, '31159', 'Slamet Wacana', 'Surakarta', '2003-06-04', '', 'Ki. Hasanuddin No. 885', 2019, 3, 0),
(15, '80050', 'Salsabila Padma Laksita S.T.', 'Surakarta', '1984-04-01', '', 'Kpg. Sutarjo No. 662', 2019, 3, 0),
(16, '15538', 'Vanya Pertiwi', 'Sawahlunto', '1994-06-20', '', 'Psr. Bara Tambar No. 126', 2019, 3, 0),
(17, '59364', 'Carub Anggriawan S.Farm', 'Binjai', '1995-09-26', '', 'Jr. Jagakarsa No. 831', 2019, 3, 0),
(18, '14673', 'Karsa Damanik', 'Cimahi', '2013-05-05', '', 'Psr. Jend. A. Yani No. 30', 2019, 3, 0),
(19, '71848', 'Harsanto Darmana Mahendra M.Farm', 'Malang', '2011-11-10', '', 'Gg. M.T. Haryono No. 357', 2019, 3, 0),
(20, '42050', 'Qori Winarsih S.IP', 'Sorong', '1997-02-27', '', 'Psr. Bass No. 835', 2019, 3, 0),
(21, '22789', 'Clara Purnawati', 'Administrasi Jakarta Utara', '1982-09-10', '', 'Kpg. Bak Air No. 904', 2019, 3, 0),
(22, '82823', 'Dadi Hutagalung', 'Bengkulu', '1975-03-04', '', 'Kpg. Ujung No. 484', 2019, 3, 0),
(23, '66749', 'Fitriani Maida Purnawati', 'Blitar', '2020-10-31', '', 'Gg. Sentot Alibasa No. 942', 2019, 3, 0),
(24, '13490', 'Vanesa Paramita Prastuti M.Farm', 'Gorontalo', '1998-01-30', '', 'Jr. Otto No. 671', 2019, 3, 0),
(25, '17646', 'Septi Sudiati', 'Malang', '2018-09-17', '', 'Jr. Siliwangi No. 253', 2019, 3, 0),
(26, '64345', 'Lili Zulaika', 'Bengkulu', '2013-10-24', '', 'Ds. Jayawijaya No. 105', 2019, 3, 0),
(27, '41970', 'Radit Waluyo', 'Salatiga', '2004-08-31', '', 'Kpg. Suprapto No. 816', 2019, 3, 0),
(28, '57757', 'Darmana Prabowo Natsir', 'Ambon', '1972-09-06', '', 'Psr. Monginsidi No. 27', 2019, 3, 0),
(29, '43064', 'Jabal Napitupulu S.Psi', 'Cimahi', '2000-11-18', '', 'Kpg. Fajar No. 114', 2019, 3, 0),
(30, '78869', 'Rachel Melani S.Sos', 'Bekasi', '1980-02-18', '', 'Jr. Daan No. 82', 2019, 3, 0),
(31, '62891', 'Yance Bella Haryanti', 'Administrasi Jakarta Selatan', '2003-02-12', '', 'Psr. Mahakam No. 364', 2019, 3, 0),
(32, '33007', 'Salsabila Rahmawati', 'Bontang', '1971-03-23', '', 'Jr. Yoga No. 764', 2019, 3, 0),
(33, '75040', 'Siti Nuraini', 'Sibolga', '2021-01-12', '', 'Gg. Kusmanto No. 122', 2019, 3, 0),
(34, '19267', 'Hartana Kurniawan', 'Bukittinggi', '1991-07-27', '', 'Dk. Gotong Royong No. 767', 2019, 4, 0),
(35, '96949', 'Galih Rajasa', 'Bima', '1981-10-29', '', 'Kpg. Baabur Royan No. 319', 2019, 4, 0),
(36, '64884', 'Ciaobella Usada', 'Surabaya', '1998-07-17', '', 'Ds. Madiun No. 768', 2019, 4, 0),
(37, '26100', 'Nadine Wulandari', 'Pekanbaru', '1989-06-22', '', 'Kpg. PHH. Mustofa No. 762', 2019, 4, 0),
(38, '60878', 'Ifa Najwa Rahimah', 'Salatiga', '1986-01-28', '', 'Jln. Ujung No. 827', 2019, 4, 0),
(39, '96093', 'Hilda Shakila Agustina', 'Tanjung Pinang', '2016-01-24', '', 'Ds. Baranang Siang No. 162', 2019, 4, 0),
(40, '44442', 'Rafid Gading Wibowo M.TI.', 'Tangerang Selatan', '2011-06-27', '', 'Gg. Krakatau No. 127', 2019, 4, 0),
(41, '28931', 'Umi Belinda Rahmawati S.Pd', 'Langsa', '2001-06-25', '', 'Jln. Jambu No. 508', 2019, 4, 0),
(42, '98376', 'Amelia Pertiwi', 'Yogyakarta', '2018-02-11', '', 'Kpg. Ahmad Dahlan No. 870', 2019, 4, 0),
(43, '26625', 'Latif Hidayat', 'Jambi', '2014-06-04', '', 'Jr. Siliwangi No. 580', 2019, 4, 0),
(44, '93574', 'Farhunnisa Puput Haryanti S.E.I', 'Kotamobagu', '1983-11-30', '', 'Psr. Raden No. 515', 2019, 4, 0),
(45, '92906', 'Umay Baktiadi Kurniawan M.Ak', 'Bandar Lampung', '2020-04-23', '', 'Jln. Bacang No. 879', 2019, 4, 0),
(46, '45912', 'Ellis Melani', 'Salatiga', '2017-07-30', '', 'Ds. Ters. Buah Batu No. 114', 2019, 4, 0),
(47, '17082', 'Dasa Prasetyo Mahendra S.Pt', 'Jayapura', '1977-07-30', '', 'Ki. Rajawali No. 621', 2019, 4, 0),
(48, '37624', 'Mila Usamah S.E.', 'Sukabumi', '1988-06-27', '', 'Gg. Bakin No. 691', 2019, 4, 0),
(49, '70869', 'Gaiman Pradana M.M.', 'Makassar', '2013-01-19', '', 'Dk. Badak No. 623', 2019, 4, 0),
(50, '34267', 'Aurora Tira Lestari', 'Tangerang', '2010-10-29', '', 'Dk. Bara No. 420', 2019, 4, 0),
(51, '47202', 'Rizki Rajasa', 'Pasuruan', '2010-04-02', '', 'Psr. Ketandan No. 897', 2019, 4, 0),
(52, '96001', 'Winda Zahra Astuti S.Sos', 'Lubuklinggau', '2022-05-13', '', 'Jr. Qrisdoren No. 615', 2019, 4, 0),
(53, '51934', 'Prasetyo Wasita', 'Tegal', '2002-11-06', '', 'Dk. Banceng Pondok No. 435', 2019, 4, 0),
(54, '31514', 'Fathonah Kuswandari', 'Manado', '1986-08-28', '', 'Jr. Abang No. 278', 2019, 4, 0),
(55, '21801', 'Ika Puspita S.T.', 'Payakumbuh', '1997-09-05', '', 'Psr. Baranang Siang Indah No. 444', 2019, 4, 0),
(56, '74251', 'Gasti Permata', 'Bontang', '2008-12-12', '', 'Jr. Pasteur No. 449', 2019, 4, 0),
(57, '26884', 'Vivi Puspita', 'Pontianak', '1987-05-12', '', 'Dk. Cokroaminoto No. 801', 2019, 4, 0),
(58, '12954', 'Suci Shania Aryani', 'Samarinda', '2013-11-16', '', 'Kpg. Adisumarmo No. 280', 2019, 4, 0),
(59, '87518', 'Kadir Firmansyah', 'Semarang', '2013-07-24', '', 'Ki. Lumban Tobing No. 615', 2019, 4, 0),
(60, '46845', 'Restu Mardhiyah', 'Bogor', '1977-06-04', '', 'Ds. Baranang No. 458', 2019, 4, 0),
(61, '62903', 'Ajeng Gasti Wulandari', 'Dumai', '1996-10-09', '', 'Ki. Ikan No. 137', 2019, 4, 0),
(62, '52685', 'Tami Mayasari', 'Administrasi Jakarta Utara', '2012-02-15', '', 'Ds. Ekonomi No. 759', 2019, 4, 0),
(63, '15783', 'Utama Budiyanto', 'Kediri', '1981-02-24', '', 'Ki. Jamika No. 946', 2019, 4, 0),
(64, '56754', 'Gawati Kamaria Utami S.H.', 'Kendari', '1977-07-04', '', 'Psr. Baiduri No. 484', 2019, 4, 0),
(65, '75304', 'Ami Yulianti S.Kom', 'Payakumbuh', '1975-02-17', '', 'Ki. Tentara Pelajar No. 216', 2019, 4, 0),
(66, '15146', 'Usyi Wastuti', 'Banjar', '1991-10-25', '', 'Ki. Nangka No. 455', 2019, 7, 0),
(67, '52079', 'Rama Sihombing S.H.', 'Tual', '1984-08-19', '', 'Gg. Sutami No. 832', 2019, 7, 0),
(68, '79162', 'Keisha Suartini', 'Pontianak', '1973-08-18', '', 'Psr. Siliwangi No. 506', 2019, 7, 0),
(69, '23585', 'Cindy Tami Farida', 'Bandung', '2010-07-06', '', 'Jr. Dipenogoro No. 631', 2019, 7, 0),
(70, '50306', 'Dirja Kuswoyo', 'Tarakan', '2010-07-02', '', 'Kpg. Bakau Griya Utama No. 849', 2019, 7, 0),
(71, '38274', 'Lukman Indra Wijaya', 'Payakumbuh', '1982-07-19', '', 'Ds. Radio No. 762', 2019, 7, 0),
(72, '69828', 'Wadi Paiman Wasita S.Psi', 'Metro', '1996-03-23', '', 'Jr. Abdul. Muis No. 777', 2019, 7, 0),
(73, '95943', 'Cahyadi Kawaya Wahyudin S.IP', 'Padangsidempuan', '1990-07-24', '', 'Jr. Lumban Tobing No. 807', 2019, 7, 0),
(74, '37789', 'Carla Palastri S.E.', 'Bukittinggi', '2017-04-13', '', 'Kpg. Gotong Royong No. 100', 2019, 7, 0),
(75, '13546', 'Aswani Rama Lazuardi', 'Bau-Bau', '1999-02-04', '', 'Jln. Wahid No. 820', 2019, 7, 0),
(76, '64622', 'Emin Tamba S.Farm', 'Sorong', '1998-04-14', '', 'Jr. Cihampelas No. 30', 2019, 7, 0),
(77, '51114', 'Rizki Permadi', 'Sabang', '1981-06-07', '', 'Ki. Sutoyo No. 175', 2019, 7, 0),
(78, '39549', 'Ghaliyati Mayasari', 'Palangka Raya', '1974-07-13', '', 'Kpg. Dr. Junjunan No. 361', 2019, 7, 0),
(79, '78849', 'Oliva Rahimah', 'Metro', '1985-03-22', '', 'Jr. Sukabumi No. 983', 2019, 7, 0),
(80, '20834', 'Iriana Mandasari S.H.', 'Magelang', '1980-11-05', '', 'Kpg. Suniaraja No. 1', 2019, 7, 0),
(81, '70688', 'Cinthia Wastuti', 'Pagar Alam', '2016-03-13', '', 'Kpg. Bara Tambar No. 616', 2019, 7, 0),
(82, '92310', 'Ajeng Eli Rahayu', 'Serang', '1987-08-04', '', 'Gg. Ters. Pasir Koja No. 936', 2019, 7, 0),
(83, '52592', 'Caturangga Prabu Napitupulu S.Sos', 'Blitar', '1992-07-30', '', 'Jln. Baranang No. 997', 2019, 7, 0),
(84, '53341', 'Nabila Rahayu', 'Tasikmalaya', '1989-10-15', '', 'Ki. Uluwatu No. 933', 2019, 7, 0),
(85, '16506', 'Maman Cawuk Nababan', 'Palembang', '1999-06-14', '', 'Gg. Banda No. 266', 2019, 7, 0),
(86, '11948', 'Kawaya Najmudin', 'Blitar', '2019-12-26', '', 'Psr. Pahlawan No. 369', 2019, 7, 0),
(87, '87345', 'Victoria Zulaika M.M.', 'Salatiga', '1986-07-11', '', 'Ki. Banceng Pondok No. 794', 2019, 7, 0),
(88, '61801', 'Dodo Prasasta', 'Sukabumi', '2008-05-19', '', 'Psr. Bah Jaya No. 359', 2019, 7, 0),
(89, '39418', 'Lanjar Winarno', 'Bandar Lampung', '2000-12-06', '', 'Ds. Bah Jaya No. 623', 2019, 7, 0),
(90, '77434', 'Rahman Garang Sinaga', 'Malang', '1970-09-02', '', 'Ki. Basoka Raya No. 822', 2019, 7, 0),
(91, '72941', 'Wani Usada', 'Medan', '1977-04-27', '', 'Jr. Banda No. 656', 2019, 7, 0),
(92, '93875', 'Galang Ardianto S.E.', 'Bandung', '1985-04-12', '', 'Jln. Setia Budi No. 318', 2019, 7, 0),
(93, '25459', 'Irma Suartini M.Kom.', 'Padangpanjang', '1985-11-25', '', 'Psr. Setia Budi No. 3', 2019, 7, 0),
(94, '67045', 'Prabu Utama', 'Tomohon', '2008-08-30', '', 'Gg. Yap Tjwan Bing No. 977', 2019, 7, 0),
(95, '70365', 'Artanto Ramadan', 'Pekalongan', '1999-06-30', '', 'Kpg. Umalas No. 566', 2019, 7, 0),
(96, '17860', 'Tedi Pranowo M.Farm', 'Sungai Penuh', '1972-05-05', '', 'Dk. Wahidin Sudirohusodo No. 622', 2019, 7, 0),
(97, '56861', 'Cakrabuana Radit Napitupulu', 'Pangkal Pinang', '2005-09-21', '', 'Ki. Panjaitan No. 57', 2019, 7, 0),
(98, '89488', 'Parman Ibun Latupono', 'Tasikmalaya', '1971-03-24', '', 'Ki. Sutarjo No. 760', 2019, 8, 0),
(99, '11492', 'Bakti Vega Rajasa S.Gz', 'Pagar Alam', '2007-01-02', '', 'Ki. Bakin No. 56', 2019, 8, 0),
(100, '20850', 'Opan Waluyo Gunawan', 'Bandar Lampung', '1976-04-05', '', 'Kpg. Ekonomi No. 118', 2019, 8, 0),
(101, '40550', 'Kania Kani Mulyani', 'Administrasi Jakarta Utara', '2016-09-13', '', 'Jr. Kali No. 551', 2019, 8, 0),
(102, '18990', 'Samiah Susanti S.Sos', 'Ternate', '1994-08-24', '', 'Kpg. Bakaru No. 471', 2019, 8, 0),
(103, '89908', 'Karman Nababan', 'Sabang', '2013-09-06', '', 'Ki. Babakan No. 405', 2019, 8, 0),
(104, '92000', 'Usyi Nasyidah S.E.I', 'Payakumbuh', '1982-03-09', '', 'Dk. Bayam No. 146', 2019, 8, 0),
(105, '51726', 'Capa Jayadi Gunawan', 'Jayapura', '2008-11-09', '', 'Ki. Sudiarto No. 645', 2019, 8, 0),
(106, '32636', 'Farhunnisa Pudjiastuti', 'Balikpapan', '2010-02-12', '', 'Jr. Ketandan No. 279', 2019, 8, 0),
(107, '37964', 'Gantar Saragih', 'Bandar Lampung', '1994-04-03', '', 'Gg. Sutoyo No. 861', 2019, 8, 0),
(108, '49001', 'Muni Pradana', 'Salatiga', '1991-10-08', '', 'Dk. Rajawali Barat No. 320', 2019, 8, 0),
(109, '96446', 'Kamaria Diana Namaga M.TI.', 'Jambi', '1992-06-02', '', 'Ds. Rumah Sakit No. 732', 2019, 8, 0),
(110, '63550', 'Chelsea Widiastuti M.Ak', 'Tanjung Pinang', '2011-01-05', '', 'Ds. Elang No. 573', 2019, 8, 0),
(111, '11481', 'Waluyo Prakosa Budiyanto S.Pt', 'Langsa', '1974-07-03', '', 'Ki. Moch. Yamin No. 150', 2019, 8, 0),
(112, '76966', 'Tiara Hassanah', 'Kupang', '1980-09-15', '', 'Kpg. Pasirkoja No. 418', 2019, 8, 0),
(113, '67548', 'Ratna Padmasari S.E.I', 'Padang', '1973-02-16', '', 'Jln. Bawal No. 339', 2019, 8, 0),
(114, '14892', 'Kiandra Lili Lailasari', 'Probolinggo', '1997-07-22', '', 'Jln. BKR No. 715', 2019, 8, 0),
(115, '66385', 'Amalia Gasti Kusmawati', 'Semarang', '2002-11-08', '', 'Kpg. Baabur Royan No. 488', 2019, 8, 0),
(116, '73532', 'Darsirah Uwais S.IP', 'Tanjungbalai', '2012-11-19', '', 'Jr. Pahlawan No. 259', 2019, 8, 0),
(117, '42954', 'Johan Iswahyudi', 'Magelang', '2007-11-13', '', 'Jln. Sadang Serang No. 532', 2019, 8, 0),
(118, '16671', 'Dinda Wulandari', 'Palopo', '1980-12-28', '', 'Jln. Sugiono No. 253', 2019, 8, 0),
(119, '18579', 'Darman Pangestu Siregar S.E.', 'Jayapura', '1973-03-07', '', 'Gg. Krakatau No. 961', 2019, 8, 0),
(120, '55627', 'Hana Wastuti', 'Metro', '1994-07-05', '', 'Jln. Abdul Muis No. 450', 2019, 8, 0),
(121, '49133', 'Darman Damanik', 'Bitung', '1989-07-28', '', 'Jr. Imam No. 491', 2019, 8, 0),
(122, '79841', 'Bakianto Bahuwirya Hutapea S.E.', 'Pasuruan', '2004-09-16', '', 'Jr. Samanhudi No. 940', 2019, 8, 0),
(123, '41865', 'Dimaz Asirwanda Sirait', 'Madiun', '2003-04-07', '', 'Jln. Tentara Pelajar No. 589', 2019, 8, 0),
(124, '21015', 'Aisyah Agustina S.E.', 'Padang', '1983-01-22', '', 'Kpg. Babakan No. 922', 2019, 8, 0),
(125, '93586', 'Ghani Adriansyah', 'Sibolga', '1999-06-17', '', 'Gg. Suharso No. 805', 2019, 8, 0),
(126, '67238', 'Vino Suwarno', 'Pagar Alam', '2003-08-25', '', 'Jln. Gatot Subroto No. 300', 2019, 8, 0),
(127, '35629', 'Umaya Sihombing', 'Bima', '2006-09-28', '', 'Gg. Soekarno Hatta No. 315', 2019, 8, 0),
(128, '28388', 'Olivia Latika Palastri', 'Pematangsiantar', '2010-12-28', '', 'Psr. Kusmanto No. 922', 2019, 8, 0),
(129, '91361', 'Lukita Lasmanto Santoso', 'Payakumbuh', '1971-06-06', '', 'Kpg. Reksoninten No. 296', 2019, 8, 0),
(130, '74173', 'Sabrina Palastri', 'Salatiga', '1995-09-29', '', 'Kpg. Ir. H. Juanda No. 176', 2019, 9, 0),
(131, '94420', 'Juli Lestari', 'Kotamobagu', '2006-07-16', '', 'Gg. Sunaryo No. 755', 2019, 9, 0),
(132, '59525', 'Cahyono Zulkarnain M.TI.', 'Probolinggo', '2021-04-01', '', 'Dk. Wahid No. 397', 2019, 9, 0),
(133, '44356', 'Irwan Jaeman Maryadi S.H.', 'Medan', '1990-01-08', '', 'Dk. Baabur Royan No. 262', 2019, 9, 0),
(134, '16740', 'Balijan Hidayanto', 'Cimahi', '1984-10-01', '', 'Gg. Asia Afrika No. 777', 2019, 9, 0),
(135, '41536', 'Cinta Hariyah', 'Padangpanjang', '2016-04-22', '', 'Gg. Cikapayang No. 387', 2019, 9, 0),
(136, '37141', 'Lutfan Simbolon', 'Cirebon', '2008-11-15', '', 'Jln. Perintis Kemerdekaan No. 78', 2019, 9, 0),
(137, '74148', 'Wasis Dartono Saptono', 'Tangerang Selatan', '2010-11-30', '', 'Kpg. Industri No. 805', 2019, 9, 0),
(138, '95952', 'Latika Pratiwi', 'Probolinggo', '1984-10-09', '', 'Kpg. Baha No. 712', 2019, 9, 0),
(139, '84167', 'Kasiyah Diana Padmasari S.Farm', 'Sungai Penuh', '2016-07-18', '', 'Jr. Baladewa No. 534', 2019, 9, 0),
(140, '23757', 'Tantri Yolanda S.Kom', 'Padang', '1987-07-20', '', 'Psr. Casablanca No. 705', 2019, 9, 0),
(141, '31574', 'Eli Handayani', 'Bitung', '1988-02-27', '', 'Jln. Sutoyo No. 123', 2019, 9, 0),
(142, '98339', 'Praba Sitorus', 'Palangka Raya', '1985-10-19', '', 'Psr. Untung Suropati No. 959', 2019, 9, 0),
(143, '52355', 'Bahuraksa Samosir', 'Cimahi', '1992-10-17', '', 'Jln. Adisucipto No. 808', 2019, 9, 0),
(144, '67235', 'Eko Dongoran S.Psi', 'Pekanbaru', '1974-06-26', '', 'Kpg. Jend. A. Yani No. 630', 2019, 9, 0),
(145, '60823', 'Luwar Mangunsong', 'Solok', '1981-09-03', '', 'Psr. Industri No. 109', 2019, 9, 0),
(146, '83437', 'Ana Usada S.Psi', 'Bengkulu', '2005-03-22', '', 'Gg. Achmad No. 608', 2019, 9, 0),
(147, '87725', 'Cawuk Prasetya', 'Banjar', '2009-09-04', '', 'Gg. Jamika No. 438', 2019, 9, 0),
(148, '65792', 'Nurul Lala Usamah', 'Pekalongan', '1994-09-12', '', 'Dk. Karel S. Tubun No. 456', 2019, 9, 0),
(149, '62773', 'Melinda Pratiwi', 'Tomohon', '1987-11-29', '', 'Jr. Yos Sudarso No. 384', 2019, 9, 0),
(150, '67200', 'Atma Respati Prakasa S.I.Kom', 'Tangerang Selatan', '2022-03-18', '', 'Gg. Achmad Yani No. 760', 2019, 9, 0),
(151, '75365', 'Yunita Uyainah', 'Langsa', '1985-07-22', '', 'Jln. Jambu No. 189', 2019, 9, 0),
(152, '92139', 'Endah Umi Anggraini S.Sos', 'Depok', '2001-05-10', '', 'Jr. Jamika No. 530', 2019, 9, 0),
(153, '72306', 'Karen Vanya Hariyah', 'Banjarmasin', '2020-12-17', '', 'Gg. Bak Mandi No. 254', 2019, 9, 0),
(154, '84673', 'Kadir Pratama', 'Makassar', '2001-03-01', '', 'Psr. Raden No. 424', 2019, 9, 0),
(155, '91962', 'Vinsen Kuswoyo', 'Sukabumi', '2005-09-23', '', 'Dk. Sugiono No. 518', 2019, 9, 0),
(156, '32424', 'Diah Yulia Pertiwi', 'Kediri', '1988-09-07', '', 'Psr. Jakarta No. 581', 2019, 9, 0),
(157, '75237', 'Zulaikha Andriani', 'Bau-Bau', '1990-05-18', '', 'Psr. Gajah Mada No. 737', 2019, 9, 0),
(158, '66088', 'Ana Prastuti S.H.', 'Tarakan', '1989-07-08', '', 'Dk. Baabur Royan No. 794', 2019, 9, 0),
(159, '78337', 'Betania Haryanti', 'Palangka Raya', '1990-08-17', '', 'Jr. Flores No. 148', 2019, 9, 0),
(160, '61492', 'Wadi Hutasoit', 'Tanjungbalai', '1976-06-20', '', 'Ds. Lumban Tobing No. 787', 2019, 9, 0),
(161, '18302', 'Diana Hassanah', 'Administrasi Jakarta Pusat', '2004-07-15', '', 'Psr. Honggowongso No. 743', 2019, 9, 0),
(162, '24850', 'Eli Mayasari', 'Bima', '2015-08-10', '', 'Psr. Sutarjo No. 591', 2019, 10, 0),
(163, '80065', 'Ega Baktiono Sihotang', 'Sawahlunto', '1972-03-05', '', 'Kpg. Cihampelas No. 340', 2019, 10, 0),
(164, '77328', 'Umay Hidayanto', 'Kendari', '1976-01-13', '', 'Ds. Bak Air No. 681', 2019, 10, 0),
(165, '32742', 'Yono Anggriawan', 'Kupang', '1990-01-14', '', 'Jr. Banda No. 281', 2019, 10, 0),
(166, '80857', 'Gabriella Fujiati M.Farm', 'Sukabumi', '1988-09-13', '', 'Ki. Adisumarmo No. 18', 2019, 10, 0),
(167, '61070', 'Puji Hassanah S.I.Kom', 'Administrasi Jakarta Barat', '1974-10-29', '', 'Dk. Sutarjo No. 185', 2019, 10, 0),
(168, '97867', 'Reza Saputra', 'Madiun', '1978-11-26', '', 'Jr. Taman No. 162', 2019, 10, 0),
(169, '31900', 'Sabar Siregar', 'Gorontalo', '1980-09-10', '', 'Psr. Camar No. 234', 2019, 10, 0),
(170, '16119', 'Lurhur Jailani M.Ak', 'Pontianak', '2017-10-04', '', 'Ds. Sugiyopranoto No. 615', 2019, 10, 0),
(171, '13258', 'Kemal Januar S.Pt', 'Yogyakarta', '1990-02-15', '', 'Kpg. Ciumbuleuit No. 788', 2019, 10, 0),
(172, '37901', 'Galang Tampubolon', 'Pasuruan', '2013-12-12', '', 'Ki. Basoka Raya No. 21', 2019, 10, 0),
(173, '28451', 'Endah Hastuti S.IP', 'Pariaman', '1986-12-09', '', 'Psr. Sugiono No. 257', 2019, 10, 0),
(174, '83108', 'Padma Purwanti', 'Payakumbuh', '1980-07-12', '', 'Gg. Ekonomi No. 957', 2019, 10, 0),
(175, '85695', 'Devi Yolanda M.M.', 'Administrasi Jakarta Timur', '2003-09-09', '', 'Jln. Bhayangkara No. 757', 2019, 10, 0),
(176, '50647', 'Widya Lestari M.Kom.', 'Sungai Penuh', '1993-10-26', '', 'Kpg. Bagonwoto  No. 107', 2019, 10, 0),
(177, '98836', 'Warta Nugraha Samosir', 'Administrasi Jakarta Pusat', '1984-12-26', '', 'Dk. Fajar No. 158', 2019, 10, 0),
(178, '75643', 'Caket Saragih', 'Palu', '2013-03-06', '', 'Gg. Bak Mandi No. 736', 2019, 10, 0),
(179, '80605', 'Tantri Zulaika S.Pd', 'Mojokerto', '2000-02-25', '', 'Jln. Muwardi No. 606', 2019, 10, 0),
(180, '28840', 'Cakrajiya Firgantoro S.Ked', 'Jambi', '1997-03-04', '', 'Gg. Pacuan Kuda No. 70', 2019, 10, 0),
(181, '92477', 'Prabowo Lukman Nainggolan S.Pt', 'Jambi', '2000-01-30', '', 'Jln. Labu No. 722', 2019, 10, 0),
(182, '90679', 'Umaya Lazuardi S.E.I', 'Padangsidempuan', '1999-03-04', '', 'Kpg. Sam Ratulangi No. 504', 2019, 10, 0),
(183, '13952', 'Rahman Adhiarja Tamba', 'Banjarmasin', '1988-09-01', '', 'Jr. Gotong Royong No. 717', 2019, 10, 0),
(184, '72955', 'Rahmi Haryanti M.TI.', 'Cilegon', '1987-03-22', '', 'Ds. Sumpah Pemuda No. 934', 2019, 10, 0),
(185, '78001', 'Vanya Pertiwi S.Farm', 'Mojokerto', '1975-04-01', '', 'Kpg. Baranang Siang No. 482', 2019, 10, 0),
(186, '58521', 'Ian Virman Winarno S.I.Kom', 'Sawahlunto', '1988-11-09', '', 'Jr. Sugiono No. 838', 2019, 10, 0),
(187, '99901', 'Hafshah Agustina', 'Cirebon', '1978-02-21', '', 'Gg. Cikutra Timur No. 757', 2019, 10, 0),
(188, '25009', 'Syahrini Lestari S.IP', 'Bandar Lampung', '2013-08-17', '', 'Jr. Flores No. 526', 2019, 10, 0),
(189, '98684', 'Embuh Utama', 'Palembang', '2014-06-06', '', 'Gg. Mahakam No. 50', 2019, 10, 0),
(190, '48299', 'Lintang Rahimah', 'Bitung', '2015-01-22', '', 'Gg. Bacang No. 481', 2019, 10, 0),
(191, '60376', 'Lukman Prasasta', 'Ternate', '1987-06-08', '', 'Gg. Nangka No. 677', 2019, 10, 0),
(192, '63746', 'Ilsa Zaenab Novitasari S.IP', 'Parepare', '2016-09-16', '', 'Gg. Ciwastra No. 237', 2019, 10, 0),
(193, '15381', 'Kartika Safitri', 'Tidore Kepulauan', '2004-01-27', '', 'Kpg. Wora Wari No. 874', 2019, 10, 0),
(194, '35988', 'Kasiran Cahya Mangunsong S.I.Kom', 'Sukabumi', '2009-05-07', '', 'Kpg. Bakaru No. 746', 2019, 11, 0),
(195, '65906', 'Julia Unjani Usada S.Farm', 'Pasuruan', '1971-09-26', '', 'Kpg. Cut Nyak Dien No. 688', 2019, 11, 0),
(196, '95946', 'Prasetya Jailani', 'Tomohon', '1995-08-30', '', 'Dk. Ujung No. 143', 2019, 11, 0),
(197, '85854', 'Ade Kuswoyo S.H.', 'Solok', '2006-06-07', '', 'Psr. Baung No. 813', 2019, 11, 0),
(198, '80533', 'Cinthia Palastri', 'Sawahlunto', '1999-06-01', '', 'Ds. Suryo Pranoto No. 843', 2019, 11, 0),
(199, '12394', 'Gasti Betania Lailasari', 'Bukittinggi', '1976-03-15', '', 'Ki. Gegerkalong Hilir No. 822', 2019, 11, 0),
(200, '79684', 'Ami Prastuti', 'Jambi', '2017-07-22', '', 'Ki. Bakau No. 422', 2019, 11, 0),
(201, '33215', 'Gambira Gamanto Latupono', 'Sorong', '1987-10-21', '', 'Psr. Astana Anyar No. 376', 2019, 11, 0),
(202, '17093', 'Salimah Gasti Mandasari', 'Solok', '2015-07-23', '', 'Psr. Pasirkoja No. 123', 2019, 11, 0),
(203, '49400', 'Nilam Oliva Nasyiah', 'Tual', '1984-01-22', '', 'Kpg. Badak No. 579', 2019, 11, 0),
(204, '99657', 'Darsirah Nainggolan', 'Padangsidempuan', '2022-10-04', '', 'Gg. Kebangkitan Nasional No. 66', 2019, 11, 0),
(205, '94877', 'Safina Azalea Usada', 'Banjarbaru', '1999-03-13', '', 'Psr. K.H. Wahid Hasyim (Kopo) No. 358', 2019, 11, 0),
(206, '53662', 'Dalimin Wibisono', 'Padangpanjang', '2008-07-14', '', 'Psr. Bappenas No. 884', 2019, 11, 0),
(207, '30925', 'Warji Kusumo', 'Pematangsiantar', '1995-05-26', '', 'Ki. Rajawali Barat No. 508', 2019, 11, 0),
(208, '48945', 'Rama Ardianto M.Pd', 'Ambon', '2010-03-07', '', 'Gg. Bambon No. 899', 2019, 11, 0),
(209, '92085', 'Zizi Nasyiah', 'Ambon', '2020-08-29', '', 'Dk. Hang No. 171', 2019, 11, 0),
(210, '37177', 'Aris Pratama', 'Kotamobagu', '2002-02-11', '', 'Gg. Gedebage Selatan No. 658', 2019, 11, 0),
(211, '84666', 'Daniswara Firmansyah S.Gz', 'Tanjung Pinang', '2015-12-11', '', 'Ds. Raden No. 736', 2019, 11, 0),
(212, '23190', 'Harjaya Cahyono Simbolon S.H.', 'Surakarta', '1995-04-16', '', 'Jln. Gardujati No. 322', 2019, 11, 0),
(213, '52797', 'Kemba Dabukke', 'Payakumbuh', '2017-10-24', '', 'Ki. Bata Putih No. 240', 2019, 11, 0),
(214, '74231', 'Among Ramadan', 'Madiun', '1982-12-16', '', 'Jr. Dahlia No. 136', 2019, 11, 0),
(215, '97147', 'Endah Susanti', 'Bitung', '1984-09-07', '', 'Dk. Kusmanto No. 53', 2019, 11, 0),
(216, '30730', 'Keisha Kuswandari M.Farm', 'Kediri', '1993-11-19', '', 'Kpg. Bakau Griya Utama No. 670', 2019, 11, 0),
(217, '92313', 'Jessica Pratiwi', 'Gorontalo', '2005-04-23', '', 'Dk. Kebangkitan Nasional No. 157', 2019, 11, 0),
(218, '86624', 'Lasmanto Estiono Maulana', 'Sungai Penuh', '2006-08-18', '', 'Jr. Honggowongso No. 386', 2019, 11, 0),
(219, '83895', 'Enteng Maulana', 'Malang', '2009-05-20', '', 'Gg. Bagas Pati No. 6', 2019, 11, 0),
(220, '43141', 'Pangestu Siregar', 'Bontang', '1997-03-18', '', 'Ki. Haji No. 210', 2019, 11, 0),
(221, '93134', 'Galih Wasita', 'Pangkal Pinang', '2007-09-23', '', 'Kpg. Ciwastra No. 202', 2019, 11, 0),
(222, '45489', 'Galak Simbolon', 'Sibolga', '1994-01-07', '', 'Dk. Rumah Sakit No. 207', 2019, 11, 0),
(223, '53333', 'Dadi Winarno', 'Administrasi Jakarta Barat', '1996-10-04', '', 'Ds. Padma No. 204', 2019, 11, 0),
(224, '55622', 'Janet Nuraini', 'Tangerang Selatan', '2021-03-11', '', 'Ki. Baung No. 594', 2019, 11, 0),
(225, '74230', 'Hardana Gunarto S.Farm', 'Semarang', '1987-01-10', '', 'Jln. Basoka No. 160', 2019, 11, 0),
(226, '40082', 'Wahyu Pangestu S.E.I', 'Mataram', '2011-04-10', '', 'Dk. Sunaryo No. 217', 2019, 12, 0),
(227, '82906', 'Prasetya Wijaya', 'Langsa', '1995-02-25', '', 'Dk. Basuki Rahmat  No. 122', 2019, 12, 0),
(228, '33345', 'Azalea Lailasari', 'Tangerang', '2011-08-21', '', 'Dk. Arifin No. 644', 2019, 12, 0),
(229, '84772', 'Vicky Kuswandari', 'Langsa', '1994-10-29', '', 'Gg. Tambak No. 932', 2019, 12, 0),
(230, '93042', 'Kiandra Calista Maryati', 'Salatiga', '2015-06-22', '', 'Ds. Dewi Sartika No. 385', 2019, 12, 0),
(231, '76643', 'Hartana Januar', 'Manado', '2014-01-02', '', 'Ds. Peta No. 116', 2019, 12, 0),
(232, '89002', 'Gading Jumadi Gunarto M.Farm', 'Tomohon', '1974-09-12', '', 'Jr. B.Agam Dlm No. 183', 2019, 12, 0),
(233, '39328', 'Ilyas Tarihoran S.Psi', 'Lhokseumawe', '1972-04-17', '', 'Kpg. Sadang Serang No. 899', 2019, 12, 0),
(234, '29125', 'Malika Salwa Mayasari', 'Medan', '1995-06-23', '', 'Jln. Bawal No. 847', 2019, 12, 0),
(235, '16054', 'Asmadi Putu Iswahyudi S.Kom', 'Tangerang Selatan', '1970-09-04', '', 'Dk. Thamrin No. 320', 2019, 12, 0),
(236, '21172', 'Yessi Nasyiah', 'Padangpanjang', '2009-12-18', '', 'Ds. Ters. Jakarta No. 571', 2019, 12, 0),
(237, '45504', 'Queen Riyanti', 'Kupang', '2020-04-25', '', 'Ds. Rumah Sakit No. 425', 2019, 12, 0),
(238, '80019', 'Ridwan Megantara', 'Banjarmasin', '1970-03-08', '', 'Gg. Ciumbuleuit No. 560', 2019, 12, 0),
(239, '69593', 'Eka Wani Oktaviani M.M.', 'Depok', '2002-01-14', '', 'Jr. Kyai Mojo No. 408', 2019, 12, 0),
(240, '12865', 'Caket Damanik M.Kom.', 'Tasikmalaya', '1994-01-27', '', 'Dk. Setiabudhi No. 965', 2019, 12, 0),
(241, '93274', 'Gamblang Pradipta', 'Ambon', '2004-07-25', '', 'Jr. Jagakarsa No. 780', 2019, 12, 0),
(242, '87125', 'Sadina Paramita Laksita S.Ked', 'Administrasi Jakarta Pusat', '2002-12-28', '', 'Jln. Baranang Siang No. 883', 2019, 12, 0),
(243, '61760', 'Balijan Drajat Utama S.E.I', 'Surakarta', '1993-03-15', '', 'Ki. Sugiyopranoto No. 654', 2019, 12, 0),
(244, '73966', 'Oman Kuswoyo', 'Pangkal Pinang', '2022-06-13', '', 'Ki. Suprapto No. 489', 2019, 12, 0),
(245, '64765', 'Adikara Respati Prasetya', 'Kediri', '2000-09-24', '', 'Ds. Bahagia No. 115', 2019, 12, 0),
(246, '91533', 'Setya Hutasoit', 'Padangsidempuan', '1992-07-10', '', 'Psr. Bayan No. 158', 2019, 12, 0),
(247, '69239', 'Irma Laila Hariyah S.Pt', 'Padangpanjang', '1987-11-30', '', 'Kpg. Diponegoro No. 599', 2019, 12, 0),
(248, '16671', 'Jais Nababan', 'Metro', '2014-08-04', '', 'Ki. Jamika No. 933', 2019, 12, 0),
(249, '23437', 'Karya Marsudi Latupono', 'Bukittinggi', '2011-06-02', '', 'Dk. Laswi No. 232', 2019, 12, 0),
(250, '30347', 'Adinata Jayadi Wahyudin', 'Pekalongan', '1999-11-01', '', 'Ds. Bakau Griya Utama No. 777', 2019, 12, 0),
(251, '94677', 'Natalia Safitri', 'Ambon', '2021-12-25', '', 'Kpg. Agus Salim No. 804', 2019, 12, 0),
(252, '73655', 'Jelita Mardhiyah', 'Mataram', '2017-10-13', '', 'Jln. Batako No. 60', 2019, 12, 0),
(253, '46854', 'Edward Sirait', 'Salatiga', '2000-10-06', '', 'Psr. Salam No. 907', 2019, 12, 0),
(254, '68131', 'Makuta Nugroho', 'Padangsidempuan', '1971-09-24', '', 'Ki. Bakhita No. 408', 2019, 12, 0),
(255, '16683', 'Hardi Najib Simanjuntak', 'Tangerang', '1979-06-02', '', 'Gg. Ciwastra No. 414', 2019, 12, 0),
(256, '36477', 'Puti Novitasari', 'Sibolga', '1989-12-11', '', 'Ds. Bakit  No. 448', 2019, 12, 0),
(257, '26479', 'Hesti Hani Hariyah S.H.', 'Tanjungbalai', '1971-11-06', '', 'Dk. Bakau Griya Utama No. 676', 2019, 12, 0),
(258, '10437', 'Warta Imam Hidayanto S.T.', 'Pekanbaru', '1980-07-12', '', 'Jr. Bara No. 112', 2019, 13, 0),
(259, '35423', 'Karman Wahyudin M.Ak', 'Sukabumi', '2009-03-22', '', 'Dk. Elang No. 306', 2019, 13, 0),
(260, '47070', 'Lala Alika Namaga', 'Kendari', '2016-09-03', '', 'Psr. Madiun No. 919', 2019, 13, 0),
(261, '30900', 'Atmaja Budiman', 'Surakarta', '2018-05-22', '', 'Kpg. Cihampelas No. 477', 2019, 13, 0),
(262, '25115', 'Intan Icha Maryati', 'Sungai Penuh', '1981-06-26', '', 'Ds. Supomo No. 253', 2019, 13, 0),
(263, '66688', 'Mulya Dabukke', 'Medan', '2006-02-27', '', 'Kpg. Haji No. 785', 2019, 13, 0),
(264, '55485', 'Bajragin Dabukke S.T.', 'Sabang', '2006-08-27', '', 'Ki. Orang No. 268', 2019, 13, 0),
(265, '25910', 'Warji Mariadi Natsir M.TI.', 'Kotamobagu', '1978-11-25', '', 'Psr. Suryo Pranoto No. 92', 2019, 13, 0),
(266, '83021', 'Hana Prastuti S.Kom', 'Ternate', '1982-12-18', '', 'Ki. Karel S. Tubun No. 810', 2019, 13, 0),
(267, '95569', 'Cemani Nrima Hutagalung S.Pt', 'Tarakan', '2019-10-22', '', 'Psr. Industri No. 477', 2019, 13, 0),
(268, '24429', 'Mursita Habibi', 'Gunungsitoli', '1997-09-24', '', 'Jr. Bappenas No. 925', 2019, 13, 0),
(269, '14807', 'Kamal Sihotang', 'Bontang', '1997-11-05', '', 'Ds. Bagonwoto  No. 753', 2019, 13, 0),
(270, '25950', 'Mala Nurdiyanti M.TI.', 'Padangsidempuan', '1981-04-28', '', 'Jln. Honggowongso No. 246', 2019, 13, 0),
(271, '45793', 'Raina Aryani', 'Tangerang Selatan', '1992-09-22', '', 'Jln. Jayawijaya No. 646', 2019, 13, 0),
(272, '17825', 'Pardi Ghani Permadi S.Ked', 'Bandung', '2020-08-16', '', 'Psr. Jagakarsa No. 342', 2019, 13, 0),
(273, '27681', 'Tari Yolanda', 'Balikpapan', '1973-03-20', '', 'Jr. Baranang Siang Indah No. 731', 2019, 13, 0),
(274, '12297', 'Heryanto Vega Kuswoyo S.Sos', 'Lhokseumawe', '2020-09-14', '', 'Jr. Radio No. 270', 2019, 13, 0),
(275, '13129', 'Uli Suartini', 'Prabumulih', '1998-03-22', '', 'Jr. Mulyadi No. 404', 2019, 13, 0),
(276, '88643', 'Galuh Hutapea', 'Bekasi', '2008-06-08', '', 'Dk. Suryo No. 541', 2019, 13, 0),
(277, '69430', 'Pia Riyanti', 'Manado', '2009-08-01', '', 'Ki. Basmol Raya No. 952', 2019, 13, 0),
(278, '56315', 'Fathonah Zulaikha Hariyah', 'Balikpapan', '1976-03-06', '', 'Kpg. Aceh No. 346', 2019, 13, 0),
(279, '69099', 'Dono Hutapea', 'Parepare', '1980-03-19', '', 'Gg. Camar No. 256', 2019, 13, 0),
(280, '33842', 'Syahrini Tari Melani', 'Batam', '2015-07-18', '', 'Jr. Sentot Alibasa No. 575', 2019, 13, 0),
(281, '14023', 'Rahmi Haryanti', 'Cimahi', '2021-09-16', '', 'Dk. Perintis Kemerdekaan No. 910', 2019, 13, 0),
(282, '59160', 'Banawi Maryadi', 'Administrasi Jakarta Barat', '1985-02-06', '', 'Jln. Adisucipto No. 848', 2019, 13, 0),
(283, '50294', 'Putri Mala Kuswandari S.Pd', 'Tanjungbalai', '1989-06-02', '', 'Gg. Baladewa No. 350', 2019, 13, 0),
(284, '73679', 'Rendy Ardianto', 'Singkawang', '1972-02-22', '', 'Kpg. Bakaru No. 786', 2019, 13, 0),
(285, '98252', 'Lintang Pudjiastuti', 'Tanjungbalai', '2018-12-10', '', 'Jr. Barat No. 535', 2019, 13, 0),
(286, '83106', 'Usman Latupono', 'Bandar Lampung', '1976-03-28', '', 'Kpg. Bazuka Raya No. 48', 2019, 13, 0),
(287, '82768', 'Dewi Sari Mandasari', 'Tidore Kepulauan', '1990-09-20', '', 'Jln. Sampangan No. 734', 2019, 13, 0),
(288, '37853', 'Paramita Tantri Mandasari', 'Lhokseumawe', '2004-03-13', '', 'Ds. Abdul. Muis No. 831', 2019, 13, 0),
(289, '96968', 'Satya Luwar Haryanto S.Pt', 'Jambi', '2008-08-12', '', 'Kpg. Ikan No. 108', 2019, 13, 0),
(290, '84692', 'Novi Rahayu Wulandari', 'Bima', '1982-03-31', '', 'Kpg. Orang No. 818', 2019, 14, 0),
(291, '40755', 'Putu Mansur', 'Salatiga', '2006-04-05', '', 'Gg. Peta No. 926', 2019, 14, 0),
(292, '21075', 'Kania Tami Fujiati M.Ak', 'Administrasi Jakarta Utara', '2017-04-11', '', 'Psr. Halim No. 298', 2019, 14, 0),
(293, '36582', 'Ridwan Leo Kusumo', 'Tegal', '1977-10-15', '', 'Jln. B.Agam 1 No. 886', 2019, 14, 0),
(294, '40112', 'Ina Laksita', 'Singkawang', '2003-06-20', '', 'Psr. Gotong Royong No. 814', 2019, 14, 0),
(295, '32277', 'Juli Nasyiah M.Farm', 'Semarang', '2017-05-23', '', 'Gg. Warga No. 857', 2019, 14, 0),
(296, '53263', 'Salsabila Anggraini S.I.Kom', 'Administrasi Jakarta Selatan', '1998-09-27', '', 'Dk. Rajiman No. 153', 2019, 14, 0),
(297, '21919', 'Gilda Kusmawati', 'Denpasar', '1998-06-01', '', 'Ki. Teuku Umar No. 134', 2019, 14, 0),
(298, '36541', 'Syahrini Tantri Halimah S.Psi', 'Bukittinggi', '2004-11-21', '', 'Dk. Bhayangkara No. 903', 2019, 14, 0),
(299, '58045', 'Edward Tampubolon', 'Sungai Penuh', '1988-08-13', '', 'Jr. Rajawali Barat No. 376', 2019, 14, 0),
(300, '64054', 'Anastasia Andriani', 'Bontang', '1980-04-15', '', 'Psr. Rajiman No. 775', 2019, 14, 0),
(301, '74025', 'Karen Yuliana Suartini', 'Banjar', '2009-03-17', '', 'Ds. Peta No. 395', 2019, 14, 0),
(302, '23606', 'Hani Hasanah M.Farm', 'Ambon', '2007-10-21', '', 'Jr. Bahagia No. 494', 2019, 14, 0),
(303, '81329', 'Emil Wisnu Gunawan S.T.', 'Batam', '2005-09-02', '', 'Gg. Surapati No. 469', 2019, 14, 0),
(304, '50746', 'Ega Samosir', 'Salatiga', '1996-01-15', '', 'Psr. Samanhudi No. 126', 2019, 14, 0),
(305, '26056', 'Shakila Rahimah', 'Pekanbaru', '1977-10-07', '', 'Ki. Dipatiukur No. 585', 2019, 14, 0),
(306, '86850', 'Nadia Dalima Yulianti M.M.', 'Banjar', '2010-05-13', '', 'Psr. Sutarto No. 217', 2019, 14, 0),
(307, '35960', 'Sarah Sabrina Halimah', 'Ambon', '1985-03-30', '', 'Jr. Bagonwoto  No. 180', 2019, 14, 0),
(308, '56268', 'Sarah Rahmi Nasyiah', 'Pasuruan', '2015-02-08', '', 'Psr. Moch. Yamin No. 939', 2019, 14, 0),
(309, '45888', 'Ganjaran Prasasta', 'Banjarmasin', '1984-02-20', '', 'Jr. Aceh No. 75', 2019, 14, 0),
(310, '25356', 'Yunita Rahmawati', 'Palembang', '1975-07-18', '', 'Ds. Bank Dagang Negara No. 958', 2019, 14, 0),
(311, '78740', 'Prima Jumadi Budiman S.Gz', 'Denpasar', '1970-07-22', '', 'Jln. Bhayangkara No. 168', 2019, 14, 0),
(312, '11164', 'Eka Cinta Nurdiyanti M.Ak', 'Padangpanjang', '2009-02-22', '', 'Jr. Flores No. 808', 2019, 14, 0),
(313, '36002', 'Rahmi Yuliarti M.Ak', 'Sungai Penuh', '1985-10-26', '', 'Jr. Astana Anyar No. 287', 2019, 14, 0),
(314, '80147', 'Marsito Sitorus', 'Banjarmasin', '1978-12-27', '', 'Kpg. Wahidin Sudirohusodo No. 5', 2019, 14, 0),
(315, '19700', 'Aslijan Kajen Hardiansyah', 'Sorong', '1995-11-09', '', 'Jln. Ciumbuleuit No. 935', 2019, 14, 0),
(316, '15093', 'Aditya Marwata Ardianto S.Gz', 'Ternate', '1973-12-20', '', 'Psr. Jayawijaya No. 280', 2019, 14, 0),
(317, '54086', 'Bagya Gunawan', 'Makassar', '2010-07-28', '', 'Psr. Basket No. 516', 2019, 14, 0),
(318, '86085', 'Najwa Ratih Nurdiyanti', 'Sibolga', '1992-05-06', '', 'Dk. Gajah No. 782', 2019, 14, 0),
(319, '24179', 'Wirda Kartika Yuliarti S.Kom', 'Sukabumi', '1996-04-08', '', 'Ki. Merdeka No. 580', 2019, 14, 0),
(320, '43233', 'Gina Farhunnisa Wastuti', 'Palembang', '2000-06-13', '', 'Psr. Jaksa No. 695', 2019, 14, 0),
(321, '67679', 'Hana Nuraini S.Sos', 'Tual', '1982-11-29', '', 'Jr. Lumban Tobing No. 360', 2019, 14, 0),
(322, '62287', 'Eva Pertiwi', 'Banjarbaru', '2016-09-30', '', 'Kpg. Kiaracondong No. 747', 2019, 15, 0),
(323, '30982', 'Lala Maria Widiastuti', 'Magelang', '1974-03-19', '', 'Ds. Madiun No. 661', 2019, 15, 0),
(324, '90169', 'Bagya Pradipta', 'Ternate', '1985-07-09', '', 'Ki. Mahakam No. 347', 2019, 15, 0),
(325, '41523', 'Hani Uyainah', 'Yogyakarta', '2022-08-14', '', 'Kpg. Zamrud No. 725', 2019, 15, 0),
(326, '84118', 'Hamzah Ismail Budiyanto', 'Administrasi Jakarta Timur', '1980-02-22', '', 'Jr. Kiaracondong No. 698', 2019, 15, 0),
(327, '51547', 'Uchita Wijayanti', 'Jayapura', '2016-02-23', '', 'Dk. Barat No. 136', 2019, 15, 0),
(328, '77133', 'Radit Sirait', 'Ambon', '2020-05-15', '', 'Gg. Bappenas No. 578', 2019, 15, 0),
(329, '61928', 'Gangsa Kadir Hutasoit', 'Samarinda', '2004-04-16', '', 'Kpg. Yosodipuro No. 705', 2019, 15, 0),
(330, '62704', 'Hamzah Sihotang', 'Makassar', '1978-08-29', '', 'Jr. Dr. Junjunan No. 486', 2019, 15, 0),
(331, '47068', 'Opan Natsir', 'Pontianak', '2018-08-04', '', 'Gg. Bhayangkara No. 110', 2019, 15, 0),
(332, '25067', 'Wulan Ayu Wijayanti S.T.', 'Medan', '2013-06-17', '', 'Jln. Sadang Serang No. 564', 2019, 15, 0),
(333, '80530', 'Banawi Wira Prakasa S.E.I', 'Binjai', '2017-04-05', '', 'Ki. Sudirman No. 754', 2019, 15, 0),
(334, '12905', 'Zelaya Wijayanti', 'Payakumbuh', '1983-12-30', '', 'Gg. Dewi Sartika No. 452', 2019, 15, 0),
(335, '48001', 'Mulya Sihombing', 'Cimahi', '1994-10-10', '', 'Dk. Pasteur No. 433', 2019, 15, 0),
(336, '12991', 'Almira Oktaviani', 'Parepare', '1983-08-23', '', 'Gg. Moch. Toha No. 115', 2019, 15, 0),
(337, '81460', 'Ida Rahimah', 'Manado', '1976-12-03', '', 'Psr. Baranangsiang No. 564', 2019, 15, 0),
(338, '15696', 'Pandu Suryono', 'Metro', '1970-05-24', '', 'Kpg. Badak No. 476', 2019, 15, 0),
(339, '14232', 'Candrakanta Prasetyo', 'Pekanbaru', '2015-03-27', '', 'Jln. Casablanca No. 307', 2019, 15, 0),
(340, '61984', 'Martani Panji Megantara', 'Pekalongan', '2020-04-16', '', 'Jr. Adisucipto No. 437', 2019, 15, 0),
(341, '10757', 'Xanana Simanjuntak', 'Kupang', '1992-11-04', '', 'Ds. Dahlia No. 380', 2019, 15, 0),
(342, '91205', 'Shania Lailasari', 'Serang', '2009-06-19', '', 'Kpg. Yosodipuro No. 520', 2019, 15, 0),
(343, '61037', 'Warsa Siregar', 'Batu', '2021-11-14', '', 'Ds. Uluwatu No. 495', 2019, 15, 0),
(344, '95046', 'Kiandra Puspasari', 'Bukittinggi', '2015-11-23', '', 'Gg. Banal No. 643', 2019, 15, 0),
(345, '72408', 'Laras Zulaika', 'Pariaman', '1994-12-23', '', 'Dk. Bayam No. 596', 2019, 15, 0),
(346, '83889', 'Shakila Suryatmi', 'Makassar', '2011-09-29', '', 'Dk. Teuku Umar No. 950', 2019, 15, 0),
(347, '61097', 'Rusman Irawan S.I.Kom', 'Sawahlunto', '2019-12-06', '', 'Jln. Sukabumi No. 787', 2019, 15, 0),
(348, '35359', 'Catur Sirait M.Kom.', 'Depok', '1975-03-05', '', 'Gg. Thamrin No. 318', 2019, 15, 0),
(349, '44031', 'Vicky Padmasari', 'Denpasar', '1977-11-09', '', 'Ds. Honggowongso No. 780', 2019, 15, 0),
(350, '60385', 'Raditya Firmansyah', 'Bogor', '1970-08-03', '', 'Jln. Gardujati No. 778', 2019, 15, 0),
(351, '68392', 'Restu Farhunnisa Uyainah M.Kom.', 'Pekalongan', '2005-09-18', '', 'Dk. R.E. Martadinata No. 119', 2019, 15, 0),
(352, '24697', 'Hasta Hidayanto S.Psi', 'Kediri', '1997-11-30', '', 'Ds. B.Agam Dlm No. 81', 2019, 15, 0),
(353, '28058', 'Luluh Salahudin', 'Manado', '2001-11-24', '', 'Kpg. Raden No. 481', 2019, 15, 0),
(354, '66049', 'Rahayu Hassanah S.T.', 'Lhokseumawe', '2015-08-12', '', 'Ki. Abdul No. 844', 2019, 16, 0),
(355, '62249', 'Maman Prabowo', 'Tidore Kepulauan', '2022-06-17', '', 'Kpg. W.R. Supratman No. 793', 2019, 16, 0),
(356, '81520', 'Cornelia Handayani', 'Prabumulih', '1977-03-23', '', 'Gg. Bak Air No. 298', 2019, 16, 0),
(357, '67040', 'Raina Mandasari S.Ked', 'Cilegon', '2008-07-09', '', 'Ds. Jakarta No. 935', 2019, 16, 0),
(358, '57047', 'Siti Titin Yolanda S.Psi', 'Tanjung Pinang', '1996-07-26', '', 'Kpg. Agus Salim No. 40', 2019, 16, 0),
(359, '61594', 'Luis Damanik', 'Banjarbaru', '1970-02-16', '', 'Ds. Gajah No. 676', 2019, 16, 0),
(360, '92126', 'Umay Kusumo', 'Palopo', '1974-02-15', '', 'Jln. Ketandan No. 72', 2019, 16, 0),
(361, '42462', 'Bakda Adika Pradipta M.M.', 'Tangerang Selatan', '2011-10-04', '', 'Jln. Camar No. 78', 2019, 16, 0),
(362, '46868', 'Nurul Zelaya Oktaviani M.Farm', 'Pasuruan', '1985-11-01', '', 'Psr. Batako No. 168', 2019, 16, 0),
(363, '46607', 'Kartika Yolanda', 'Surabaya', '2020-04-14', '', 'Ki. Ekonomi No. 643', 2019, 16, 0),
(364, '28116', 'Hana Namaga', 'Pematangsiantar', '2004-03-16', '', 'Jln. Badak No. 436', 2019, 16, 0),
(365, '70895', 'Dimaz Laksana Damanik S.Pd', 'Banjarbaru', '2008-12-14', '', 'Ds. Abdullah No. 977', 2019, 16, 0),
(366, '75857', 'Widya Purwanti M.Farm', 'Tebing Tinggi', '2015-05-17', '', 'Jln. Salam No. 414', 2019, 16, 0),
(367, '19940', 'Kenes Siregar', 'Bengkulu', '1972-10-04', '', 'Jr. Bhayangkara No. 134', 2019, 16, 0),
(368, '89796', 'Kunthara Tomi Hidayat', 'Lhokseumawe', '1994-09-18', '', 'Ki. Sukabumi No. 406', 2019, 16, 0),
(369, '67166', 'Maria Lala Pratiwi', 'Pagar Alam', '2013-12-20', '', 'Gg. Bacang No. 885', 2019, 16, 0),
(370, '19863', 'Marsudi Kusuma Wacana M.Ak', 'Balikpapan', '2019-07-19', '', 'Jr. Yoga No. 590', 2019, 16, 0),
(371, '24028', 'Budi Wibowo', 'Jayapura', '1976-04-16', '', 'Ki. Merdeka No. 479', 2019, 16, 0),
(372, '47534', 'Daru Uwais S.Pt', 'Palu', '1984-07-02', '', 'Kpg. Radio No. 453', 2019, 16, 0),
(373, '82912', 'Koko Latupono', 'Tasikmalaya', '1997-01-02', '', 'Jr. Sam Ratulangi No. 755', 2019, 16, 0),
(374, '99309', 'Taswir Irawan', 'Bitung', '1970-04-02', '', 'Jln. Bambu No. 190', 2019, 16, 0),
(375, '70340', 'Zulfa Zaenab Sudiati', 'Batam', '1983-02-09', '', 'Dk. Suprapto No. 854', 2019, 16, 0),
(376, '49768', 'Harja Sinaga', 'Bekasi', '2003-05-01', '', 'Ki. Bara Tambar No. 368', 2019, 16, 0),
(377, '70205', 'Kasusra Marbun', 'Sabang', '1994-06-23', '', 'Jr. Jakarta No. 350', 2019, 16, 0),
(378, '72763', 'Balangga Viktor Santoso', 'Tangerang Selatan', '2001-09-28', '', 'Psr. Diponegoro No. 706', 2019, 16, 0),
(379, '40173', 'Ghaliyati Agustina M.Ak', 'Probolinggo', '2008-01-06', '', 'Jln. Rajawali Timur No. 216', 2019, 16, 0),
(380, '47027', 'Harimurti Wacana', 'Bima', '2012-03-01', '', 'Ki. Jend. Sudirman No. 938', 2019, 16, 0),
(381, '49008', 'Yuni Haryanti S.IP', 'Surakarta', '2011-04-29', '', 'Jr. Sukajadi No. 655', 2019, 16, 0),
(382, '60298', 'Cindy Yuniar S.Gz', 'Tegal', '1971-04-09', '', 'Jr. Katamso No. 879', 2019, 16, 0),
(383, '30820', 'Ghani Ramadan', 'Bontang', '2010-06-27', '', 'Dk. Suryo No. 376', 2019, 16, 0),
(384, '81802', 'Luthfi Saputra', 'Banjarbaru', '2016-01-02', '', 'Jr. Yogyakarta No. 607', 2019, 16, 0),
(385, '38657', 'Ratna Haryanti', 'Banda Aceh', '2019-12-16', '', 'Ki. Jend. Sudirman No. 427', 2019, 16, 0),
(386, '76834', 'Vero Gaduh Samosir', 'Payakumbuh', '1986-08-11', '', 'Jr. Gajah No. 199', 2019, 16, 0),
(387, '96913', 'Restu Wahyuni S.Kom', 'Palu', '2013-06-12', '', 'Jln. Hasanuddin No. 119', 2019, 16, 0),
(388, '70879', 'Jasmin Halimah M.Kom.', 'Bontang', '1975-10-17', '', 'Gg. Ters. Jakarta No. 810', 2019, 16, 0),
(389, '80374', 'Johan Teddy Adriansyah M.TI.', 'Pekanbaru', '1983-07-02', '', 'Psr. Adisumarmo No. 554', 2019, 16, 0),
(390, '67272', 'Tomi Rajasa M.Ak', 'Probolinggo', '2008-11-29', '', 'Jln. Suprapto No. 351', 2019, 16, 0),
(391, '87474', 'Yulia Laksmiwati S.Ked', 'Tasikmalaya', '1987-02-14', '', 'Jr. Radio No. 775', 2019, 16, 0),
(392, '55741', 'Putri Agnes Yolanda S.Gz', 'Ternate', '1976-01-22', '', 'Jr. Bata Putih No. 653', 2019, 16, 0),
(393, '50452', 'Sadina Widiastuti', 'Probolinggo', '1971-01-05', '', 'Ds. Gedebage Selatan No. 73', 2019, 16, 0),
(394, '58637', 'Gabriella Fujiati M.Ak', 'Bekasi', '1985-03-01', '', 'Kpg. Baladewa No. 424', 2019, 16, 0),
(395, '60599', 'Baktiadi Taufik Napitupulu M.Farm', 'Padang', '1977-07-04', '', 'Ki. Gardujati No. 476', 2019, 16, 0),
(396, '30608', 'Vicky Anggraini', 'Bengkulu', '1995-08-28', '', 'Jln. Cikapayang No. 162', 2019, 16, 0),
(397, '35823', 'Aswani Tampubolon', 'Langsa', '1992-08-07', '', 'Psr. Gading No. 145', 2019, 16, 0),
(398, '55970', 'Raihan Uwais S.Sos', 'Makassar', '2004-06-30', '', 'Gg. Perintis Kemerdekaan No. 598', 2019, 16, 0),
(399, '83838', 'Jamalia Agustina', 'Madiun', '1975-12-02', '', 'Psr. Ir. H. Juanda No. 945', 2019, 16, 0),
(400, '52292', 'Ana Nurdiyanti', 'Singkawang', '1987-05-08', '', 'Gg. Basudewo No. 908', 2019, 16, 0),
(401, '88684', 'Cahyo Sihotang', 'Banjarmasin', '2012-08-27', '', 'Ds. Salam No. 783', 2019, 16, 0),
(402, '52657', 'Ozy Suryono', 'Blitar', '2013-10-21', '', 'Ds. Setia Budi No. 740', 2019, 16, 0),
(403, '53922', 'Bakijan Kacung Thamrin M.Farm', 'Kediri', '1974-02-14', '', 'Ki. Baik No. 677', 2019, 16, 0),
(404, '79969', 'Paulin Mardhiyah', 'Batam', '1997-05-30', '', 'Psr. Bakau No. 483', 2019, 16, 0),
(405, '34650', 'Chelsea Hassanah', 'Jayapura', '2019-06-08', '', 'Gg. Sampangan No. 480', 2019, 16, 0),
(406, '13650', 'Yunita Pratiwi', 'Administrasi Jakarta Pusat', '1993-03-02', '', 'Gg. Baranang No. 361', 2019, 16, 0),
(407, '72040', 'Candra Wacana M.Kom.', 'Payakumbuh', '1996-07-17', '', 'Gg. Salatiga No. 590', 2019, 16, 0),
(408, '13576', 'Candrakanta Tampubolon', 'Tasikmalaya', '2007-08-07', '', 'Kpg. Bayam No. 7', 2019, 16, 0),
(409, '83927', 'Winda Aryani S.Pt', 'Pontianak', '1985-04-14', '', 'Kpg. Bayam No. 358', 2019, 16, 0),
(410, '68782', 'Septi Indah Widiastuti S.E.', 'Metro', '2008-05-02', '', 'Jln. Banda No. 903', 2019, 16, 0),
(411, '60000', 'Rini Haryanti M.Kom.', 'Sabang', '2004-07-22', '', 'Ki. Ciwastra No. 747', 2019, 16, 0),
(412, '96860', 'Digdaya Catur Situmorang M.M.', 'Medan', '2007-05-04', '', 'Jr. Sutarjo No. 586', 2019, 16, 0),
(413, '33751', 'Ratih Hastuti', 'Palopo', '1971-02-10', '', 'Dk. Salam No. 167', 2019, 16, 0),
(414, '62455', 'Juli Hastuti', 'Bukittinggi', '2003-07-24', '', 'Jln. Adisucipto No. 92', 2019, 16, 0),
(415, '11669', 'Ulva Yulianti', 'Sibolga', '1990-01-26', '', 'Kpg. Bahagia  No. 31', 2019, 16, 0),
(416, '30217', 'Maman Hutasoit', 'Administrasi Jakarta Barat', '1979-05-11', '', 'Ds. Adisucipto No. 220', 2019, 16, 0),
(417, '51995', 'Novi Mila Nuraini M.TI.', 'Tomohon', '2007-04-24', '', 'Dk. Baik No. 913', 2019, 16, 0),
(418, '68312', 'Devi Rahimah M.M.', 'Madiun', '1971-08-05', '', 'Ki. Baiduri No. 78', 2019, 17, 0),
(419, '61273', 'Kadir Mitra Salahudin M.Kom.', 'Bontang', '1981-10-07', '', 'Jln. Kebangkitan Nasional No. 232', 2019, 17, 0),
(420, '62983', 'Maimunah Zulaika', 'Palangka Raya', '1997-02-13', '', 'Jr. Wahidin Sudirohusodo No. 945', 2019, 17, 0),
(421, '57349', 'Unjani Wulandari', 'Malang', '2000-09-30', '', 'Ds. Pattimura No. 345', 2019, 17, 0),
(422, '66092', 'Gabriella Palastri', 'Administrasi Jakarta Utara', '1985-11-13', '', 'Gg. Moch. Yamin No. 103', 2019, 17, 0),
(423, '26631', 'Nrima Sihombing S.Sos', 'Manado', '2006-03-01', '', 'Dk. Suharso No. 128', 2019, 17, 0),
(424, '45747', 'Pangeran Hidayat S.E.I', 'Salatiga', '2016-12-15', '', 'Gg. Pattimura No. 642', 2019, 17, 0),
(425, '48832', 'Gantar Nashiruddin', 'Salatiga', '1972-05-20', '', 'Gg. Banceng Pondok No. 494', 2019, 17, 0),
(426, '77080', 'Puspa Yulianti', 'Tegal', '1983-11-17', '', 'Psr. Abdul Rahmat No. 611', 2019, 17, 0),
(427, '58429', 'Juli Nurdiyanti', 'Langsa', '1974-08-17', '', 'Ds. Suryo No. 904', 2019, 17, 0),
(428, '48497', 'Betania Dalima Laksita', 'Samarinda', '1975-04-17', '', 'Ki. Bak Mandi No. 37', 2019, 17, 0),
(429, '42013', 'Unjani Hasna Nuraini', 'Probolinggo', '1987-06-18', '', 'Jr. Otto No. 744', 2019, 17, 0),
(430, '19228', 'Dimaz Nashiruddin S.Sos', 'Lubuklinggau', '2005-09-03', '', 'Kpg. Ters. Jakarta No. 346', 2019, 17, 0),
(431, '10448', 'Cengkal Damu Zulkarnain S.Gz', 'Magelang', '2003-02-11', '', 'Jln. Bata Putih No. 168', 2019, 17, 0),
(432, '26273', 'Cengkal Waluyo', 'Pontianak', '1998-12-20', '', 'Jln. Basoka Raya No. 619', 2019, 17, 0),
(433, '12531', 'Ozy Narpati', 'Probolinggo', '2000-09-30', '', 'Ki. Basmol Raya No. 780', 2019, 17, 0),
(434, '31302', 'Hafshah Puspita', 'Banjarmasin', '1974-11-03', '', 'Psr. Thamrin No. 275', 2019, 17, 0),
(435, '92297', 'Pangeran Cakrajiya Hutagalung S.Sos', 'Blitar', '2018-09-10', '', 'Jln. Agus Salim No. 837', 2019, 17, 0),
(436, '23046', 'Dadap Kurniawan S.Pd', 'Batu', '1971-12-08', '', 'Ki. Laswi No. 290', 2019, 17, 0),
(437, '13330', 'Uda Sihombing S.Ked', 'Ambon', '1993-08-24', '', 'Gg. Gajah Mada No. 76', 2019, 17, 0),
(438, '55079', 'Cawisadi Bala Saptono S.Farm', 'Pematangsiantar', '2016-11-21', '', 'Ki. Bahagia No. 717', 2019, 17, 0),
(439, '84870', 'Mila Ophelia Yuniar', 'Pontianak', '1990-04-24', '', 'Jr. Dipatiukur No. 15', 2019, 17, 0),
(440, '24762', 'Ajimat Hartana Hakim S.Pd', 'Tomohon', '2006-07-12', '', 'Jr. Tubagus Ismail No. 207', 2019, 17, 0),
(441, '47605', 'Gamblang Wasita', 'Banda Aceh', '1994-01-29', '', 'Jln. Pattimura No. 781', 2019, 17, 0),
(442, '31904', 'Darmanto Estiawan Sihombing S.E.I', 'Gunungsitoli', '2021-10-01', '', 'Kpg. Badak No. 445', 2019, 17, 0),
(443, '68296', 'Luwes Nasim Irawan M.Pd', 'Cimahi', '2021-03-30', '', 'Ds. Suryo Pranoto No. 334', 2019, 17, 0),
(444, '34717', 'Gangsar Siregar S.T.', 'Bengkulu', '1979-12-04', '', 'Psr. Diponegoro No. 521', 2019, 17, 0),
(445, '18337', 'Dewi Uyainah', 'Kotamobagu', '2002-02-24', '', 'Psr. Urip Sumoharjo No. 784', 2019, 17, 0),
(446, '70041', 'Nadine Puspasari', 'Banjar', '1977-11-16', '', 'Kpg. Sukajadi No. 483', 2019, 17, 0),
(447, '19646', 'Keisha Palastri', 'Kediri', '2003-12-11', '', 'Dk. Baabur Royan No. 759', 2019, 17, 0),
(448, '48195', 'Bahuwirya Bakidin Suryono', 'Samarinda', '1979-06-30', '', 'Ds. Tubagus Ismail No. 881', 2019, 17, 0),
(449, '15427', 'Iriana Wulandari', 'Serang', '2005-04-22', '', 'Ki. Bambu No. 670', 2019, 17, 0),
(450, '43221', 'Zaenab Tira Uyainah', 'Pariaman', '1991-03-26', '', 'Psr. Flores No. 93', 2019, 17, 0),
(451, '54814', 'Ganep Pratama M.Kom.', 'Mojokerto', '1983-09-06', '', 'Gg. Jaksa No. 116', 2019, 17, 0),
(452, '68522', 'Jasmin Wahyuni', 'Bau-Bau', '1977-10-28', '', 'Jln. Moch. Yamin No. 314', 2019, 17, 0),
(453, '57992', 'Erik Mahendra', 'Tanjung Pinang', '1974-08-12', '', 'Kpg. Kebangkitan Nasional No. 978', 2019, 17, 0),
(454, '85501', 'Najwa Patricia Lailasari S.Gz', 'Tarakan', '1983-01-16', '', 'Jr. Imam No. 39', 2019, 17, 0),
(455, '38019', 'Cici Kuswandari', 'Depok', '1981-02-15', '', 'Ds. Zamrud No. 211', 2019, 17, 0),
(456, '98845', 'Fitria Yuniar', 'Tidore Kepulauan', '1992-02-02', '', 'Ds. Otto No. 176', 2019, 17, 0),
(457, '63738', 'Digdaya Waskita M.Ak', 'Bogor', '2006-09-14', '', 'Ki. Nangka No. 312', 2019, 17, 0),
(458, '17671', 'Nova Usada', 'Banda Aceh', '1991-02-20', '', 'Psr. Ters. Jakarta No. 444', 2019, 17, 0),
(459, '66700', 'Cengkir Salahudin', 'Madiun', '2017-04-09', '', 'Dk. Rajiman No. 396', 2019, 17, 0),
(460, '25590', 'Pandu Estiawan Pradana M.M.', 'Padangpanjang', '1991-09-03', '', 'Gg. Teuku Umar No. 515', 2019, 17, 0),
(461, '65581', 'Ulya Olivia Usada', 'Gunungsitoli', '2006-08-07', '', 'Ds. Tambak No. 779', 2019, 17, 0),
(462, '61547', 'Gamanto Saputra M.Pd', 'Padang', '2012-09-18', '', 'Dk. Baing No. 98', 2019, 17, 0),
(463, '79136', 'Radika Lamar Hidayat', 'Kupang', '1981-08-27', '', 'Gg. Hang No. 914', 2019, 17, 0),
(464, '54461', 'Laras Lestari', 'Tarakan', '2002-01-30', '', 'Ds. Ahmad Dahlan No. 925', 2019, 17, 0),
(465, '51889', 'Adiarja Jailani', 'Semarang', '1977-05-22', '', 'Ki. Gotong Royong No. 950', 2019, 17, 0),
(466, '55352', 'Salsabila Agustina', 'Subulussalam', '2016-11-11', '', 'Jr. Babakan No. 450', 2019, 17, 0),
(467, '95307', 'Taufan Muni Uwais', 'Samarinda', '2002-08-30', '', 'Ki. Gardujati No. 132', 2019, 17, 0),
(468, '29114', 'Yance Kusmawati S.Pd', 'Pematangsiantar', '1977-03-01', '', 'Kpg. Bara No. 542', 2019, 17, 0),
(469, '41901', 'Aurora Wulandari', 'Jambi', '2019-03-29', '', 'Ki. Labu No. 71', 2019, 17, 0),
(470, '93764', 'Dono Najmudin', 'Singkawang', '1980-03-30', '', 'Ds. Fajar No. 377', 2019, 17, 0),
(471, '41936', 'Ibun Kusumo', 'Administrasi Jakarta Utara', '1983-04-04', '', 'Gg. Kyai Gede No. 824', 2019, 17, 0),
(472, '18552', 'Luwes Saefullah', 'Administrasi Jakarta Utara', '1989-06-02', '', 'Jln. Yos Sudarso No. 150', 2019, 17, 0),
(473, '82145', 'Cinthia Lalita Yuliarti', 'Gunungsitoli', '2019-08-01', '', 'Dk. Dr. Junjunan No. 395', 2019, 17, 0),
(474, '19363', 'Eka Mayasari', 'Gorontalo', '1988-11-09', '', 'Dk. Bazuka Raya No. 820', 2019, 17, 0),
(475, '36616', 'Icha Dewi Oktaviani S.E.', 'Parepare', '2002-09-14', '', 'Psr. Abdul. Muis No. 480', 2019, 17, 0),
(476, '69463', 'Raden Utama S.Farm', 'Denpasar', '1993-02-04', '', 'Jr. Bakit  No. 452', 2019, 17, 0),
(477, '25631', 'Zizi Pertiwi', 'Lubuklinggau', '1994-09-05', '', 'Psr. Muwardi No. 243', 2019, 17, 0),
(478, '13114', 'Galang Sihotang', 'Padangpanjang', '1995-03-16', '', 'Jr. Diponegoro No. 243', 2019, 17, 0),
(479, '50117', 'Anita Yuliarti', 'Prabumulih', '1979-11-01', '', 'Gg. Ketandan No. 375', 2019, 17, 0),
(480, '62690', 'Kemba Samosir', 'Pangkal Pinang', '1988-12-30', '', 'Ds. Flores No. 965', 2019, 17, 0),
(481, '46237', 'Paris Kuswandari', 'Blitar', '1999-04-16', '', 'Gg. Achmad No. 338', 2019, 17, 0),
(482, '58767', 'Galar Natsir', 'Bontang', '2005-11-30', '', 'Gg. Agus Salim No. 964', 2019, 19, 0),
(483, '86803', 'Yani Wahyuni', 'Bandung', '1972-08-04', '', 'Psr. Yogyakarta No. 361', 2019, 19, 0);
INSERT INTO `tb_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_tempat_lahir`, `siswa_tgl_lahir`, `siswa_jk`, `siswa_alamat`, `siswa_th_angkatan`, `siswa_id_kelas`, `created_by`) VALUES
(484, '35230', 'Kamidin Hadi Maheswara S.T.', 'Palangka Raya', '1997-08-07', '', 'Kpg. Wahid Hasyim No. 329', 2019, 19, 0),
(485, '76249', 'Tugiman Wibisono', 'Binjai', '2022-10-12', '', 'Kpg. Flora No. 433', 2019, 19, 0),
(486, '94392', 'Titi Utami S.I.Kom', 'Pasuruan', '1972-10-31', '', 'Ki. Diponegoro No. 268', 2019, 19, 0),
(487, '50700', 'Dariati Marbun', 'Balikpapan', '1988-11-08', '', 'Gg. Cikutra Timur No. 183', 2019, 19, 0),
(488, '34470', 'Bagas Waskita', 'Sorong', '2018-06-04', '', 'Jr. Madrasah No. 422', 2019, 19, 0),
(489, '77213', 'Winda Nasyiah', 'Madiun', '2021-10-20', '', 'Ki. Tambak No. 852', 2019, 19, 0),
(490, '84273', 'Ega Ibun Zulkarnain', 'Banjar', '2018-03-23', '', 'Jln. Perintis Kemerdekaan No. 840', 2019, 19, 0),
(491, '97163', 'Paulin Nabila Permata S.Ked', 'Surakarta', '2014-08-01', '', 'Ds. Bagas Pati No. 914', 2019, 19, 0),
(492, '89328', 'Winda Oktaviani S.Farm', 'Pontianak', '1972-12-03', '', 'Psr. Ir. H. Juanda No. 493', 2019, 19, 0),
(493, '79196', 'Hani Raina Suryatmi', 'Tegal', '2006-01-30', '', 'Jln. Tangkuban Perahu No. 158', 2019, 19, 0),
(494, '77890', 'Nadia Namaga', 'Denpasar', '1984-05-05', '', 'Jr. Bayam No. 998', 2019, 19, 0),
(495, '47431', 'Jono Firmansyah', 'Bogor', '1982-10-22', '', 'Jln. Kebangkitan Nasional No. 874', 2019, 19, 0),
(496, '95563', 'Karman Asirwada Anggriawan', 'Singkawang', '1976-07-18', '', 'Ds. Gading No. 722', 2019, 19, 0),
(497, '45035', 'Kemba Hutagalung', 'Tasikmalaya', '1990-02-23', '', 'Dk. Ahmad Dahlan No. 608', 2019, 19, 0),
(498, '18954', 'Diah Humaira Susanti S.H.', 'Salatiga', '2021-07-15', '', 'Dk. Pattimura No. 421', 2019, 19, 0),
(499, '24259', 'Suci Widiastuti', 'Administrasi Jakarta Selatan', '2015-02-28', '', 'Dk. Ters. Buah Batu No. 223', 2019, 19, 0),
(500, '44634', 'Padmi Titi Maryati S.Gz', 'Administrasi Jakarta Timur', '1996-12-09', '', 'Jln. Baya Kali Bungur No. 211', 2019, 19, 0),
(501, '25847', 'Emil Gunarto', 'Mataram', '1982-08-25', '', 'Jr. Katamso No. 727', 2019, 19, 0),
(502, '44307', 'Yosef Mustofa', 'Batam', '1994-01-08', '', 'Ki. Cokroaminoto No. 862', 2019, 19, 0),
(503, '42716', 'Gawati Ghaliyati Lailasari', 'Kotamobagu', '2012-11-01', '', 'Ds. Umalas No. 120', 2019, 19, 0),
(504, '91518', 'Amalia Carla Novitasari', 'Denpasar', '2009-09-29', '', 'Jr. Gajah No. 714', 2019, 19, 0),
(505, '75317', 'Yunita Haryanti S.IP', 'Dumai', '1976-07-01', '', 'Psr. Villa No. 428', 2019, 19, 0),
(506, '24608', 'Tari Yuniar', 'Sabang', '1987-01-10', '', 'Ki. Kiaracondong No. 587', 2019, 19, 0),
(507, '65191', 'Tari Mayasari', 'Manado', '1977-05-05', '', 'Jr. Samanhudi No. 963', 2019, 19, 0),
(508, '22328', 'Nasrullah Luis Zulkarnain S.Pd', 'Medan', '1977-02-15', '', 'Kpg. Moch. Toha No. 942', 2019, 19, 0),
(509, '60948', 'Paramita Pudjiastuti', 'Tegal', '2010-03-05', '', 'Dk. Ujung No. 164', 2019, 19, 0),
(510, '57901', 'Marsito Ozy Mandala M.Pd', 'Mojokerto', '2009-07-24', '', 'Ki. Arifin No. 582', 2019, 19, 0),
(511, '73172', 'Usyi Pudjiastuti', 'Sorong', '2008-01-27', '', 'Kpg. Gremet No. 507', 2019, 19, 0),
(512, '91328', 'Betania Pratiwi', 'Salatiga', '1992-12-19', '', 'Dk. Mahakam No. 780', 2019, 19, 0),
(513, '51757', 'Hamzah Sinaga M.M.', 'Tangerang', '1995-06-08', '', 'Kpg. Yoga No. 59', 2019, 19, 0),
(514, '16280', 'Nasab Dalimin Putra', 'Manado', '2003-01-19', '', 'Dk. Hasanuddin No. 887', 2019, 20, 0),
(515, '84090', 'Maman Lazuardi S.E.', 'Banjarbaru', '2008-11-14', '', 'Jln. Jakarta No. 410', 2019, 20, 0),
(516, '90007', 'Hasim Gunarto', 'Bitung', '2005-01-31', '', 'Kpg. Nakula No. 789', 2019, 20, 0),
(517, '34173', 'Amelia Hasanah', 'Administrasi Jakarta Barat', '2015-10-16', '', 'Jln. Baik No. 694', 2019, 20, 0),
(518, '57246', 'Lala Zaenab Puspita', 'Samarinda', '2017-10-23', '', 'Gg. Gremet No. 376', 2019, 20, 0),
(519, '55579', 'Ellis Carla Widiastuti', 'Mataram', '1990-06-29', '', 'Psr. Ters. Jakarta No. 653', 2019, 20, 0),
(520, '89681', 'Ulva Juli Riyanti', 'Padangsidempuan', '2013-06-16', '', 'Jln. Wahid No. 447', 2019, 20, 0),
(521, '15793', 'Hafshah Safitri', 'Cilegon', '1990-04-03', '', 'Ki. Imam No. 700', 2019, 20, 0),
(522, '17517', 'Vera Pratiwi S.Sos', 'Kotamobagu', '1975-09-07', '', 'Jln. Jend. Sudirman No. 38', 2019, 20, 0),
(523, '99134', 'Bella Talia Permata S.Sos', 'Tangerang', '2022-09-09', '', 'Dk. Zamrud No. 193', 2019, 20, 0),
(524, '14072', 'Jumari Garda Utama M.Farm', 'Palu', '1976-07-21', '', 'Dk. Baya Kali Bungur No. 776', 2019, 20, 0),
(525, '64788', 'Icha Mandasari', 'Bukittinggi', '1996-07-01', '', 'Psr. Suprapto No. 841', 2019, 20, 0),
(526, '10009', 'Wage Sabar Prasetya', 'Sungai Penuh', '1974-10-06', '', 'Ki. Cemara No. 660', 2019, 20, 0),
(527, '79587', 'Patricia Ajeng Usada', 'Mojokerto', '2020-04-13', '', 'Psr. Adisucipto No. 88', 2019, 20, 0),
(528, '56910', 'Kuncara Narpati', 'Madiun', '1988-02-25', '', 'Ds. Gegerkalong Hilir No. 814', 2019, 20, 0),
(529, '31026', 'Ella Unjani Handayani', 'Batam', '1985-12-28', '', 'Dk. Surapati No. 217', 2019, 20, 0),
(530, '48343', 'Rini Widiastuti', 'Bau-Bau', '1978-07-13', '', 'Ki. Gading No. 179', 2019, 20, 0),
(531, '74672', 'Mustika Latupono', 'Tanjungbalai', '1994-11-28', '', 'Ds. Daan No. 144', 2019, 20, 0),
(532, '11405', 'Ika Siska Melani', 'Singkawang', '2018-11-16', '', 'Ki. Aceh No. 239', 2019, 20, 0),
(533, '99186', 'Gasti Mandasari', 'Bau-Bau', '1988-03-28', '', 'Jr. Banal No. 223', 2019, 20, 0),
(534, '94128', 'Utama Karta Kurniawan S.Psi', 'Palu', '2014-08-19', '', 'Kpg. PHH. Mustofa No. 687', 2019, 20, 0),
(535, '60761', 'Padmi Riyanti', 'Bekasi', '1996-09-11', '', 'Ki. Bhayangkara No. 499', 2019, 20, 0),
(536, '93934', 'Hilda Almira Widiastuti', 'Metro', '1996-08-20', '', 'Kpg. Acordion No. 679', 2019, 20, 0),
(537, '62046', 'Eli Puspasari S.H.', 'Tidore Kepulauan', '1998-08-05', '', 'Gg. Banda No. 936', 2019, 20, 0),
(538, '76000', 'Unjani Yulianti', 'Tasikmalaya', '2016-03-30', '', 'Ds. Salatiga No. 528', 2019, 20, 0),
(539, '57103', 'Gina Yuniar', 'Yogyakarta', '1981-07-28', '', 'Ds. Bakaru No. 416', 2019, 20, 0),
(540, '95651', 'Legawa Jail Halim', 'Subulussalam', '1993-05-14', '', 'Ds. Abdul No. 58', 2019, 20, 0),
(541, '57975', 'Silvia Melani', 'Tarakan', '2016-04-23', '', 'Ds. Baja No. 279', 2019, 20, 0),
(542, '23247', 'Lasmono Nugroho', 'Madiun', '1979-12-01', '', 'Gg. Madiun No. 294', 2019, 20, 0),
(543, '52187', 'Prabowo Dimaz Hidayat', 'Gunungsitoli', '1979-09-22', '', 'Ds. K.H. Maskur No. 605', 2019, 20, 0),
(544, '82664', 'Ajiono Hidayat', 'Surakarta', '1992-10-15', '', 'Jr. Orang No. 382', 2019, 20, 0),
(545, '52234', 'Lanang Megantara', 'Administrasi Jakarta Barat', '2016-09-19', '', 'Psr. Sam Ratulangi No. 264', 2019, 20, 0),
(547, '88936', 'Martana Adriansyah', 'Tarakan', '1999-11-07', '', 'Ki. Bagonwoto  No. 760', 2019, 22, 0),
(548, '26186', 'Putri Hariyah', 'Administrasi Jakarta Barat', '2004-01-26', '', 'Jr. Gegerkalong Hilir No. 94', 2019, 22, 0),
(549, '20235', 'Yuliana Laksita', 'Banjarmasin', '2018-06-29', '', 'Jr. Raden Saleh No. 769', 2019, 22, 0),
(550, '51577', 'Lintang Rahimah M.Ak', 'Sawahlunto', '1996-11-24', '', 'Jr. Dewi Sartika No. 851', 2019, 22, 0),
(551, '86338', 'Taufik Latupono', 'Tual', '1995-11-03', '', 'Jln. Otto No. 730', 2019, 22, 0),
(552, '54255', 'Bagas Prasetyo', 'Tebing Tinggi', '2011-05-05', '', 'Jr. Uluwatu No. 632', 2019, 22, 0),
(553, '81489', 'Lala Haryanti S.E.', 'Tarakan', '1999-07-25', '', 'Kpg. Yos Sudarso No. 551', 2019, 22, 0),
(554, '54164', 'Talia Puput Puspita', 'Balikpapan', '2017-09-29', '', 'Gg. Ketandan No. 477', 2019, 22, 0),
(555, '95981', 'Hamima Suci Rahimah', 'Samarinda', '1972-12-19', '', 'Ki. Baing No. 934', 2019, 22, 0),
(556, '36114', 'Rafi Warji Marbun S.Sos', 'Makassar', '1973-12-13', '', 'Ds. Gajah Mada No. 298', 2019, 22, 0),
(557, '39398', 'Pandu Jailani', 'Tarakan', '2012-03-11', '', 'Ki. Sampangan No. 754', 2019, 22, 0),
(558, '78267', 'Prima Tampubolon', 'Bogor', '1979-08-21', '', 'Psr. Haji No. 912', 2019, 22, 0),
(559, '44868', 'Titi Rahmawati', 'Palembang', '1976-06-01', '', 'Dk. Ujung No. 285', 2019, 22, 0),
(560, '48722', 'Vicky Elma Hasanah', 'Padangpanjang', '1990-08-08', '', 'Ds. Sentot Alibasa No. 524', 2019, 22, 0),
(561, '67462', 'Lalita Wahyuni', 'Sorong', '1997-01-29', '', 'Gg. Rajawali Barat No. 282', 2019, 22, 0),
(562, '79533', 'Liman Budiman', 'Medan', '1979-04-24', '', 'Psr. Baja No. 736', 2019, 22, 0),
(563, '60986', 'Amelia Pudjiastuti', 'Administrasi Jakarta Timur', '2013-12-29', '', 'Jr. Veteran No. 871', 2019, 22, 0),
(564, '50378', 'Endra Hutagalung M.Farm', 'Administrasi Jakarta Pusat', '2019-04-29', '', 'Gg. Labu No. 545', 2019, 22, 0),
(565, '94111', 'Elma Puspasari', 'Pariaman', '2019-01-19', '', 'Dk. Cikutra Barat No. 940', 2019, 22, 0),
(566, '19739', 'Banawa Pradipta', 'Makassar', '2012-10-18', '', 'Kpg. Cokroaminoto No. 961', 2019, 22, 0),
(567, '93685', 'Dimas Putra', 'Mataram', '2015-09-22', '', 'Psr. Bakti No. 363', 2019, 22, 0),
(568, '32220', 'Laras Fitria Laksmiwati S.Pd', 'Bau-Bau', '2019-01-26', '', 'Jln. Bakit  No. 967', 2019, 22, 0),
(569, '82055', 'Jayadi Iswahyudi', 'Sukabumi', '1996-10-08', '', 'Kpg. Panjaitan No. 550', 2019, 22, 0),
(570, '40412', 'Cakrawangsa Sihotang', 'Makassar', '2014-09-01', '', 'Ki. Basuki Rahmat  No. 12', 2019, 22, 0),
(571, '79065', 'Dwi Narpati', 'Bima', '1974-08-06', '', 'Ki. Gardujati No. 631', 2019, 22, 0),
(572, '51691', 'Viman Jailani S.I.Kom', 'Tasikmalaya', '1972-05-20', '', 'Kpg. Salam No. 548', 2019, 22, 0),
(573, '65077', 'Cinta Hastuti', 'Banda Aceh', '1982-02-04', '', 'Jr. Flores No. 118', 2019, 22, 0),
(574, '69481', 'Kajen Ardianto', 'Solok', '2002-07-17', '', 'Ki. Cokroaminoto No. 227', 2019, 22, 0),
(575, '29773', 'Kania Gilda Widiastuti', 'Balikpapan', '2010-01-26', '', 'Jr. Haji No. 413', 2019, 22, 0),
(576, '55775', 'Timbul Maulana', 'Bandung', '2022-02-13', '', 'Gg. Sutarto No. 737', 2019, 22, 0),
(577, '88537', 'Jindra Purwa Ramadan', 'Madiun', '1977-12-28', '', 'Kpg. Antapani Lama No. 359', 2019, 22, 0),
(578, '53732', 'Hari Warji Prabowo', 'Madiun', '1971-10-13', '', 'Gg. Dipatiukur No. 304', 2019, 22, 0),
(579, '12870', 'Bakianto Nainggolan', 'Singkawang', '1988-02-22', '', 'Kpg. Wahid No. 642', 2019, 23, 0),
(580, '28411', 'Betania Elvina Nasyidah S.Gz', 'Padangpanjang', '1980-10-10', '', 'Ki. Sudiarto No. 686', 2019, 23, 0),
(581, '84327', 'Chandra Gambira Prasetya', 'Padangpanjang', '2009-06-16', '', 'Ki. Kusmanto No. 975', 2019, 23, 0),
(582, '21752', 'Oman Wibowo', 'Jambi', '2013-07-22', '', 'Ds. Thamrin No. 806', 2019, 23, 0),
(583, '98170', 'Gabriella Laksmiwati', 'Serang', '1974-04-20', '', 'Psr. Barat No. 769', 2019, 23, 0),
(584, '73855', 'Kasusra Nababan', 'Semarang', '1989-12-12', '', 'Jln. Dr. Junjunan No. 804', 2019, 23, 0),
(585, '67152', 'Karimah Azalea Kuswandari', 'Bau-Bau', '2000-01-25', '', 'Dk. Raya Ujungberung No. 160', 2019, 23, 0),
(586, '11316', 'Vera Laksmiwati S.Sos', 'Bukittinggi', '1983-02-10', '', 'Psr. Hang No. 126', 2019, 23, 0),
(587, '50671', 'Laras Rahimah', 'Subulussalam', '1977-06-14', '', 'Jln. Ters. Pasir Koja No. 299', 2019, 23, 0),
(588, '63552', 'Vera Karimah Prastuti S.Pd', 'Semarang', '1974-11-19', '', 'Ki. Casablanca No. 612', 2019, 23, 0),
(589, '74839', 'Mutia Vivi Suryatmi M.Ak', 'Kotamobagu', '1970-11-11', '', 'Psr. Arifin No. 313', 2019, 23, 0),
(590, '98880', 'Lasmanto Pradana S.Sos', 'Administrasi Jakarta Utara', '2003-04-03', '', 'Kpg. Sukabumi No. 734', 2019, 23, 0),
(591, '60031', 'Safina Usamah', 'Padang', '1973-11-12', '', 'Ds. Panjaitan No. 951', 2019, 23, 0),
(592, '20074', 'Bajragin Lazuardi', 'Lubuklinggau', '1991-08-23', '', 'Jr. Bahagia  No. 621', 2019, 23, 0),
(593, '27378', 'Septi Pertiwi', 'Bima', '2019-04-21', '', 'Dk. Cemara No. 828', 2019, 23, 0),
(594, '34475', 'Chandra Waskita S.Pt', 'Pariaman', '1979-07-20', '', 'Ds. Sudiarto No. 655', 2019, 23, 0),
(595, '71107', 'Devi Halima Hartati M.Ak', 'Cimahi', '1995-01-29', '', 'Jr. Imam No. 115', 2019, 23, 0),
(596, '90403', 'Harjaya Artawan Prayoga', 'Medan', '2019-10-14', '', 'Dk. Bappenas No. 875', 2019, 23, 0),
(597, '37092', 'Septi Cinta Winarsih', 'Batam', '1985-05-01', '', 'Jln. Baranang Siang Indah No. 346', 2019, 23, 0),
(598, '66724', 'Pardi Caraka Nashiruddin', 'Kediri', '1977-12-09', '', 'Jln. Tentara Pelajar No. 488', 2019, 23, 0),
(599, '41708', 'Titi Lintang Namaga', 'Pontianak', '2018-10-10', '', 'Dk. Sudiarto No. 245', 2019, 23, 0),
(600, '16716', 'Kacung Wijaya', 'Gorontalo', '1970-03-01', '', 'Gg. Jakarta No. 554', 2019, 23, 0),
(601, '35631', 'Safina Permata', 'Bekasi', '2017-04-13', '', 'Jln. Sugiono No. 289', 2019, 23, 0),
(602, '36724', 'Padma Zaenab Farida', 'Subulussalam', '2020-02-04', '', 'Psr. Supono No. 52', 2019, 23, 0),
(603, '85598', 'Legawa Widodo S.Pt', 'Banjarmasin', '2019-01-25', '', 'Psr. Bakin No. 198', 2019, 23, 0),
(604, '16930', 'Syahrini Rahimah', 'Sibolga', '2018-01-23', '', 'Ds. Dewi Sartika No. 71', 2019, 23, 0),
(605, '11585', 'Elvina Rahmawati', 'Palu', '1997-06-20', '', 'Gg. Bakau No. 805', 2019, 23, 0),
(606, '67177', 'Asmianto Dabukke', 'Bima', '2022-05-31', '', 'Dk. Jend. A. Yani No. 495', 2019, 23, 0),
(607, '10144', 'Estiono Anggriawan', 'Cirebon', '1975-09-02', '', 'Ki. Baung No. 825', 2019, 23, 0),
(608, '12305', 'Titi Handayani', 'Lhokseumawe', '2010-09-16', '', 'Gg. Kiaracondong No. 151', 2019, 23, 0),
(609, '68062', 'Patricia Namaga', 'Palu', '1971-06-22', '', 'Dk. Bahagia No. 368', 2019, 23, 0),
(610, '33578', 'Bagas Setiawan S.E.I', 'Sabang', '1992-09-15', '', 'Ki. Labu No. 645', 2019, 23, 0),
(611, '96278', 'Syahrini Kania Utami S.Pt', 'Gunungsitoli', '1976-07-10', '', 'Kpg. Tentara Pelajar No. 697', 2019, 24, 0),
(612, '28863', 'Radika Bakianto Prasetyo M.Ak', 'Bau-Bau', '2014-08-09', '', 'Dk. Abdul No. 573', 2019, 24, 0),
(613, '96748', 'Kalim Dongoran', 'Madiun', '2022-01-11', '', 'Jln. Soekarno Hatta No. 613', 2019, 24, 0),
(614, '96430', 'Mahfud Tampubolon', 'Sungai Penuh', '2006-11-28', '', 'Kpg. Dr. Junjunan No. 463', 2019, 24, 0),
(615, '97633', 'Panca Megantara', 'Tidore Kepulauan', '2021-06-26', '', 'Jr. Mahakam No. 746', 2019, 24, 0),
(616, '65532', 'Prayitna Setiawan', 'Pasuruan', '2005-08-10', '', 'Psr. Sumpah Pemuda No. 386', 2019, 24, 0),
(617, '98043', 'Belinda Pudjiastuti', 'Denpasar', '2001-07-08', '', 'Dk. Abdul Rahmat No. 720', 2019, 24, 0),
(618, '46987', 'Nova Samiah Rahmawati', 'Tanjungbalai', '1987-05-29', '', 'Ki. Baja Raya No. 274', 2019, 24, 0),
(619, '51515', 'Laswi Marpaung', 'Bitung', '2004-12-05', '', 'Jr. Pelajar Pejuang 45 No. 373', 2019, 24, 0),
(620, '99699', 'Belinda Wijayanti', 'Surakarta', '2006-11-05', '', 'Gg. Pasir Koja No. 659', 2019, 24, 0),
(621, '94136', 'Cindy Eka Lailasari S.Sos', 'Medan', '1972-05-27', '', 'Jln. Baung No. 495', 2019, 24, 0),
(622, '22490', 'Kalim Rajasa', 'Madiun', '1989-01-21', '', 'Gg. Gotong Royong No. 176', 2019, 24, 0),
(623, '43231', 'Amalia Wahyuni', 'Tangerang Selatan', '1998-02-27', '', 'Psr. Ujung No. 318', 2019, 24, 0),
(624, '89348', 'Lili Yolanda', 'Langsa', '2016-03-01', '', 'Dk. Baranangsiang No. 686', 2019, 24, 0),
(625, '24964', 'Dodo Muni Hutapea', 'Administrasi Jakarta Selatan', '2014-05-27', '', 'Jr. Babadan No. 861', 2019, 24, 0),
(626, '14354', 'Dimas Permadi', 'Lubuklinggau', '1984-10-26', '', 'Jr. Salak No. 629', 2019, 24, 0),
(627, '77415', 'Bala Saputra', 'Tual', '2001-02-15', '', 'Dk. Kusmanto No. 106', 2019, 24, 0),
(628, '53710', 'Agnes Lailasari', 'Tomohon', '2021-04-08', '', 'Jr. Baing No. 910', 2019, 24, 0),
(629, '36586', 'Mariadi Hutagalung', 'Pariaman', '1996-04-03', '', 'Jr. Gremet No. 607', 2019, 24, 0),
(630, '66808', 'Adhiarja Mursinin Widodo S.Pd', 'Cirebon', '2003-03-04', '', 'Ds. Gambang No. 51', 2019, 24, 0),
(631, '56037', 'Mahesa Wahyudin', 'Kupang', '2012-05-14', '', 'Kpg. Dago No. 989', 2019, 24, 0),
(632, '79372', 'Panca Saka Damanik S.IP', 'Padangsidempuan', '2002-10-28', '', 'Gg. Warga No. 922', 2019, 24, 0),
(633, '89884', 'Mahmud Saefullah', 'Tarakan', '2005-11-17', '', 'Dk. Adisumarmo No. 645', 2019, 24, 0),
(634, '82975', 'Dina Eka Pratiwi M.Ak', 'Pagar Alam', '1976-05-30', '', 'Jr. Zamrud No. 335', 2019, 24, 0),
(635, '17271', 'Sakura Sudiati', 'Tual', '2019-10-13', '', 'Dk. Moch. Ramdan No. 10', 2019, 24, 0),
(636, '65478', 'Rahmi Anggraini', 'Sorong', '1973-12-17', '', 'Gg. Setia Budi No. 788', 2019, 24, 0),
(637, '76899', 'Elvina Yuniar', 'Sabang', '1983-04-27', '', 'Psr. Nangka No. 385', 2019, 24, 0),
(638, '74826', 'Asmianto Zulkarnain', 'Blitar', '1980-12-23', '', 'Kpg. Daan No. 507', 2019, 24, 0),
(639, '26923', 'Jasmin Namaga', 'Salatiga', '1990-04-24', '', 'Dk. Baha No. 558', 2019, 24, 0),
(640, '24131', 'Ian Sihombing S.Ked', 'Makassar', '2010-09-22', '', 'Psr. Barat No. 370', 2019, 24, 0),
(641, '36723', 'Zulaikha Yuni Andriani S.IP', 'Lhokseumawe', '2009-05-16', '', 'Jln. Merdeka No. 902', 2019, 24, 0),
(642, '92602', 'Anita Vanesa Usamah', 'Lhokseumawe', '2007-04-30', '', 'Ds. K.H. Wahid Hasyim (Kopo) No. 334', 2019, 24, 0),
(643, '84948', 'Gara Putra', 'Palangka Raya', '1985-05-25', '', 'Dk. Rajawali Timur No. 945', 2019, 25, 0),
(644, '93188', 'Nalar Raihan Saptono S.T.', 'Palangka Raya', '1991-05-23', '', 'Psr. Jend. Sudirman No. 810', 2019, 25, 0),
(645, '38455', 'Galur Dabukke', 'Sungai Penuh', '1973-07-01', '', 'Dk. Sam Ratulangi No. 192', 2019, 25, 0),
(646, '85038', 'Salwa Laksita', 'Padangsidempuan', '1974-07-09', '', 'Jln. Baing No. 833', 2019, 25, 0),
(647, '34260', 'Paramita Rahimah', 'Mataram', '1993-06-01', '', 'Ds. Orang No. 737', 2019, 25, 0),
(648, '73560', 'Puji Fujiati', 'Singkawang', '1976-05-24', '', 'Psr. Kalimantan No. 518', 2019, 25, 0),
(649, '49738', 'Putri Ophelia Riyanti', 'Tual', '2013-12-25', '', 'Dk. Yoga No. 417', 2019, 25, 0),
(650, '45906', 'Dacin Megantara', 'Malang', '2012-11-12', '', 'Ds. PHH. Mustofa No. 198', 2019, 25, 0),
(651, '32054', 'Harsanto Martaka Pradana', 'Kendari', '1980-11-27', '', 'Kpg. Ters. Buah Batu No. 337', 2019, 25, 0),
(652, '80865', 'Jelita Astuti', 'Banjar', '2019-11-30', '', 'Gg. Siliwangi No. 422', 2019, 25, 0),
(653, '46941', 'Daliman Prakasa', 'Denpasar', '1976-12-19', '', 'Kpg. Bara No. 961', 2019, 25, 0),
(654, '81443', 'Cornelia Yessi Lestari S.Psi', 'Ambon', '1972-07-03', '', 'Ki. Barat No. 24', 2019, 25, 0),
(655, '36721', 'Uchita Hasanah S.Gz', 'Sawahlunto', '1970-02-07', '', 'Jln. Fajar No. 391', 2019, 25, 0),
(656, '91060', 'Jamalia Haryanti', 'Malang', '1991-01-28', '', 'Psr. K.H. Wahid Hasyim (Kopo) No. 328', 2019, 25, 0),
(657, '46800', 'Teddy Widodo', 'Parepare', '2013-09-05', '', 'Ki. Sugiyopranoto No. 892', 2019, 25, 0),
(658, '32521', 'Kamaria Najwa Hassanah', 'Sibolga', '1990-12-10', '', 'Gg. Dr. Junjunan No. 95', 2019, 25, 0),
(659, '57263', 'Aslijan Pangestu', 'Medan', '1997-03-17', '', 'Psr. Dr. Junjunan No. 624', 2019, 25, 0),
(660, '16874', 'Dasa Edison Natsir S.Pd', 'Tual', '2010-10-14', '', 'Dk. Haji No. 422', 2019, 25, 0),
(661, '88163', 'Cakrabuana Kusumo', 'Tangerang', '2016-10-09', '', 'Kpg. Baja Raya No. 226', 2019, 25, 0),
(662, '73658', 'Okta Gara Tamba', 'Banjarbaru', '2003-06-06', '', 'Dk. Nangka No. 146', 2019, 25, 0),
(663, '83667', 'Amelia Pratiwi', 'Manado', '1998-06-16', '', 'Jr. Otista No. 222', 2019, 25, 0),
(664, '16387', 'Ihsan Firgantoro', 'Bukittinggi', '1998-05-09', '', 'Gg. Ketandan No. 129', 2019, 25, 0),
(665, '39038', 'Daru Sakti Setiawan M.Ak', 'Administrasi Jakarta Selatan', '1994-05-09', '', 'Gg. W.R. Supratman No. 537', 2019, 25, 0),
(666, '30460', 'Sarah Mayasari', 'Ambon', '1982-02-19', '', 'Gg. Sukabumi No. 880', 2019, 25, 0),
(667, '31301', 'Eja Jail Prasetya M.Pd', 'Metro', '1999-05-20', '', 'Dk. Pattimura No. 809', 2019, 25, 0),
(668, '87942', 'Pranawa Nyoman Sihombing', 'Pontianak', '1975-01-09', '', 'Ds. Warga No. 701', 2019, 25, 0),
(669, '56371', 'Ana Maryati', 'Cimahi', '2009-07-28', '', 'Kpg. Babakan No. 437', 2019, 25, 0),
(670, '55446', 'Kunthara Banara Prasetya', 'Banjarbaru', '1978-03-17', '', 'Ki. Moch. Toha No. 420', 2019, 25, 0),
(671, '29351', 'Putri Usada S.Pt', 'Metro', '2002-09-27', '', 'Jln. Kalimalang No. 409', 2019, 25, 0),
(672, '46000', 'Putri Maryati', 'Lubuklinggau', '1994-07-25', '', 'Jr. Industri No. 505', 2019, 25, 0),
(673, '29365', 'Puput Suryatmi', 'Pekanbaru', '1984-07-18', '', 'Kpg. W.R. Supratman No. 190', 2019, 25, 0),
(674, '70028', 'Titin Kusmawati S.Sos', 'Tidore Kepulauan', '1997-09-27', '', 'Gg. Flores No. 275', 2019, 25, 0),
(675, '54367', 'Bagus Manullang', 'Jambi', '1992-09-10', '', 'Psr. Gotong Royong No. 783', 2019, 18, 0),
(676, '65056', 'Eli Suartini', 'Batu', '1996-06-06', '', 'Dk. Bahagia  No. 27', 2019, 18, 0),
(677, '27017', 'Gilang Vinsen Pratama S.T.', 'Pekalongan', '2014-04-06', '', 'Psr. Bambon No. 209', 2019, 18, 0),
(678, '32099', 'Marwata Mandala', 'Mataram', '2001-05-06', '', 'Ds. Bara No. 634', 2019, 18, 0),
(679, '98523', 'Kayun Sihombing', 'Administrasi Jakarta Barat', '2017-08-22', '', 'Jln. Lembong No. 928', 2019, 18, 0),
(680, '81418', 'Uda Ardianto', 'Administrasi Jakarta Utara', '1985-01-12', '', 'Gg. Nangka No. 385', 2019, 18, 0),
(681, '93258', 'Harja Rama Sirait S.Farm', 'Sukabumi', '1989-08-16', '', 'Dk. Bak Air No. 639', 2019, 18, 0),
(682, '45009', 'Bancar Marbun S.Ked', 'Tarakan', '2004-09-15', '', 'Psr. Supono No. 130', 2019, 18, 0),
(683, '74791', 'Baktiono Heryanto Nababan', 'Binjai', '2015-11-09', '', 'Psr. Sunaryo No. 133', 2019, 18, 0),
(684, '84697', 'Gasti Haryanti', 'Administrasi Jakarta Utara', '1985-04-09', '', 'Gg. Setia Budi No. 40', 2019, 18, 0),
(685, '26115', 'Winda Novitasari', 'Kotamobagu', '2002-03-19', '', 'Psr. Salam No. 850', 2019, 18, 0),
(686, '32091', 'Jais Dalimin Nugroho S.E.I', 'Magelang', '1985-08-26', '', 'Jln. Dago No. 223', 2019, 18, 0),
(687, '47625', 'Rachel Yolanda', 'Administrasi Jakarta Timur', '1989-04-19', '', 'Jr. Sutarjo No. 559', 2019, 18, 0),
(688, '44599', 'Karja Dasa Utama', 'Mojokerto', '1981-07-21', '', 'Ki. Urip Sumoharjo No. 985', 2019, 18, 0),
(689, '63519', 'Ihsan Firmansyah S.T.', 'Pekalongan', '2015-06-05', '', 'Ki. Kusmanto No. 133', 2019, 18, 0),
(690, '91357', 'Pia Permata', 'Administrasi Jakarta Barat', '1983-02-24', '', 'Kpg. Babadak No. 663', 2019, 18, 0),
(691, '16337', 'Silvia Puspasari M.Farm', 'Administrasi Jakarta Selatan', '2007-11-20', '', 'Jr. Rumah Sakit No. 610', 2019, 18, 0),
(692, '35459', 'Yunita Farida', 'Singkawang', '1972-10-12', '', 'Jr. Gardujati No. 125', 2019, 18, 0),
(693, '21073', 'Kartika Kusmawati', 'Pariaman', '2011-01-15', '', 'Gg. Imam Bonjol No. 969', 2019, 18, 0),
(694, '79273', 'Ira Sadina Yolanda M.M.', 'Tarakan', '1999-10-13', '', 'Jr. Untung Suropati No. 935', 2019, 18, 0),
(695, '43883', 'Balapati Dariati Ardianto S.Pd', 'Sungai Penuh', '2007-12-06', '', 'Ds. Baan No. 531', 2019, 18, 0),
(696, '74684', 'Lili Hassanah', 'Padang', '1987-07-09', '', 'Jr. Bappenas No. 691', 2019, 18, 0),
(697, '70033', 'Hani Yuniar', 'Tomohon', '2020-06-16', '', 'Psr. Bass No. 702', 2019, 18, 0),
(698, '62181', 'Mustika Gada Dongoran S.T.', 'Administrasi Jakarta Pusat', '1978-04-21', '', 'Ds. Raya Setiabudhi No. 574', 2019, 18, 0),
(699, '29926', 'Maryadi Maryanto Sihombing', 'Administrasi Jakarta Selatan', '1991-06-07', '', 'Gg. Bacang No. 713', 2019, 18, 0),
(700, '81028', 'Melinda Yulianti', 'Tasikmalaya', '2005-01-23', '', 'Psr. Kebonjati No. 757', 2019, 18, 0),
(701, '94810', 'Iriana Purwanti S.E.I', 'Lhokseumawe', '1994-10-06', '', 'Jln. Cikutra Timur No. 874', 2019, 18, 0),
(702, '15668', 'Dadap Prakasa S.T.', 'Lhokseumawe', '1994-04-12', '', 'Gg. Sukajadi No. 606', 2019, 18, 0),
(703, '90978', 'Winda Nuraini', 'Dumai', '2016-03-18', '', 'Dk. Salak No. 993', 2019, 18, 0),
(704, '70752', 'Mahmud Simbolon', 'Tegal', '1972-10-07', '', 'Kpg. Dr. Junjunan No. 20', 2019, 18, 0),
(705, '78139', 'Titi Nabila Wijayanti S.E.', 'Yogyakarta', '1980-08-19', '', 'Ds. Krakatau No. 538', 2019, 18, 0),
(706, '32038', 'Karta Jaka Sitompul M.Ak', 'Bukittinggi', '2011-12-18', '', 'Gg. Baja No. 525', 2019, 18, 0),
(707, '50136', 'Ellis Lailasari S.E.', 'Padangpanjang', '2000-11-21', '', 'Kpg. Orang No. 995', 2019, 26, 0),
(708, '68997', 'Hadi Ramadan', 'Probolinggo', '2013-04-21', '', 'Dk. Bara Tambar No. 405', 2019, 26, 0),
(709, '62522', 'Rahmat Napitupulu', 'Bau-Bau', '1986-04-25', '', 'Psr. Raden No. 434', 2019, 26, 0),
(710, '55886', 'Calista Mandasari', 'Padangpanjang', '1981-07-07', '', 'Dk. Abdul Rahmat No. 504', 2019, 26, 0),
(711, '44551', 'Agnes Nabila Rahmawati', 'Pontianak', '1988-08-11', '', 'Kpg. Bahagia No. 526', 2019, 26, 0),
(712, '41583', 'Liman Maulana M.Kom.', 'Tual', '1972-05-17', '', 'Jr. Jamika No. 160', 2019, 26, 0),
(713, '40829', 'Puspa Amalia Pratiwi S.Farm', 'Kupang', '2005-07-10', '', 'Jln. B.Agam 1 No. 749', 2019, 26, 0),
(714, '79378', 'Kasiran Situmorang', 'Lhokseumawe', '1994-11-05', '', 'Kpg. Arifin No. 795', 2019, 26, 0),
(715, '56628', 'Gasti Anastasia Yolanda', 'Pematangsiantar', '1994-12-30', '', 'Gg. Raden Saleh No. 187', 2019, 26, 0),
(716, '73726', 'Ella Rahmawati S.Pt', 'Balikpapan', '2003-07-16', '', 'Dk. Orang No. 893', 2019, 26, 0),
(717, '98256', 'Kayla Yani Lestari S.Farm', 'Kediri', '2018-04-16', '', 'Ki. Pattimura No. 235', 2019, 26, 0),
(718, '71616', 'Kezia Pratiwi', 'Bau-Bau', '1999-04-28', '', 'Psr. Bah Jaya No. 226', 2019, 26, 0),
(719, '25252', 'Karimah Winarsih M.Ak', 'Tanjungbalai', '2001-05-06', '', 'Ki. Orang No. 840', 2019, 26, 0),
(720, '48101', 'Bakda Sitompul', 'Sukabumi', '2013-04-28', '', 'Kpg. Baik No. 584', 2019, 26, 0),
(721, '33077', 'Ganep Kemba Prakasa', 'Padang', '2004-11-17', '', 'Gg. Abdul Muis No. 970', 2019, 26, 0),
(722, '41227', 'Joko Dongoran S.Psi', 'Bandar Lampung', '2009-11-02', '', 'Psr. Moch. Yamin No. 34', 2019, 26, 0),
(723, '52590', 'Lala Keisha Yolanda S.Farm', 'Denpasar', '1998-05-25', '', 'Ds. Baung No. 443', 2019, 26, 0),
(724, '52775', 'Vanya Ghaliyati Wahyuni', 'Lubuklinggau', '1971-09-08', '', 'Ds. Jend. Sudirman No. 662', 2019, 26, 0),
(725, '43749', 'Gangsar Prakasa', 'Subulussalam', '1972-10-26', '', 'Psr. Raya Ujungberung No. 927', 2019, 26, 0),
(726, '46131', 'Puput Palastri', 'Gunungsitoli', '1985-09-15', '', 'Dk. R.E. Martadinata No. 896', 2019, 26, 0),
(727, '32653', 'Carla Lestari', 'Tomohon', '1997-08-21', '', 'Jr. Arifin No. 398', 2019, 26, 0),
(728, '16606', 'Gaiman Saputra', 'Samarinda', '1976-03-28', '', 'Kpg. Bah Jaya No. 671', 2019, 26, 0),
(729, '34279', 'Emas Jinawi Samosir', 'Gunungsitoli', '2008-08-28', '', 'Jr. Sudiarto No. 968', 2019, 26, 0),
(730, '29365', 'Suci Hariyah S.I.Kom', 'Batu', '1995-05-16', '', 'Kpg. Gardujati No. 746', 2019, 26, 0),
(731, '58267', 'Sarah Zelda Haryanti', 'Bekasi', '2020-04-15', '', 'Gg. Jend. A. Yani No. 753', 2019, 26, 0),
(732, '43239', 'Uchita Widiastuti S.I.Kom', 'Yogyakarta', '2008-03-29', '', 'Jln. Villa No. 943', 2019, 26, 0),
(733, '60799', 'Virman Mursita Salahudin', 'Magelang', '2008-02-03', '', 'Kpg. Muwardi No. 561', 2019, 26, 0),
(734, '66167', 'Kacung Marpaung', 'Tangerang Selatan', '2013-05-24', '', 'Jr. Gardujati No. 272', 2019, 26, 0),
(735, '37170', 'Gamani Irawan', 'Banjarmasin', '2007-08-31', '', 'Psr. Ikan No. 845', 2019, 26, 0),
(736, '68805', 'Cakrabuana Nasab Hutapea', 'Pekanbaru', '2016-11-18', '', 'Dk. Babakan No. 65', 2019, 26, 0),
(737, '43114', 'Gadang Mustofa', 'Padangpanjang', '1999-08-23', '', 'Jr. Supono No. 958', 2019, 26, 0),
(738, '84552', 'Putri Pudjiastuti', 'Blitar', '1983-08-01', '', 'Kpg. Mulyadi No. 46', 2019, 26, 0),
(739, '30410', 'Asirwanda Wahyudin', 'Bogor', '1991-10-03', '', 'Dk. Barasak No. 224', 2019, 27, 0),
(740, '66584', 'Fathonah Rika Nasyiah', 'Kupang', '2018-04-11', '', 'Ki. Raden Saleh No. 553', 2019, 27, 0),
(741, '67570', 'Daruna Kusumo', 'Bandung', '2002-04-27', '', 'Psr. Agus Salim No. 992', 2019, 27, 0),
(742, '82071', 'Sakti Firgantoro', 'Subulussalam', '2005-09-07', '', 'Psr. Baik No. 175', 2019, 27, 0),
(743, '16276', 'Taufik Gatra Firgantoro', 'Cirebon', '1989-05-21', '', 'Kpg. Fajar No. 310', 2019, 27, 0),
(744, '83461', 'Margana Maulana', 'Bima', '1977-03-30', '', 'Jr. Haji No. 191', 2019, 27, 0),
(745, '76664', 'Keisha Nuraini', 'Jayapura', '2020-02-13', '', 'Jr. Basuki Rahmat  No. 311', 2019, 27, 0),
(746, '95189', 'Julia Yuniar', 'Pagar Alam', '1976-06-05', '', 'Ds. Dago No. 330', 2019, 27, 0),
(747, '11985', 'Jaswadi Irawan', 'Surabaya', '1996-05-09', '', 'Ds. Suniaraja No. 548', 2019, 27, 0),
(748, '44486', 'Widya Yuniar S.Kom', 'Singkawang', '1977-03-18', '', 'Dk. Abdul. Muis No. 492', 2019, 27, 0),
(749, '48427', 'Cemani Gunawan M.Pd', 'Bandung', '1976-06-02', '', 'Ds. Sudirman No. 300', 2019, 27, 0),
(750, '13066', 'Luluh Nainggolan S.H.', 'Pekalongan', '2014-08-28', '', 'Jr. Cut Nyak Dien No. 694', 2019, 27, 0),
(751, '66790', 'Kenzie Gunawan S.E.I', 'Sawahlunto', '2020-08-22', '', 'Gg. Pacuan Kuda No. 406', 2019, 27, 0),
(752, '39809', 'Cornelia Sarah Halimah S.Psi', 'Pagar Alam', '1992-01-11', '', 'Dk. Rajiman No. 351', 2019, 27, 0),
(753, '12355', 'Pia Purwanti M.Pd', 'Tegal', '1990-09-20', '', 'Ki. Pelajar Pejuang 45 No. 388', 2019, 27, 0),
(754, '30946', 'Febi Lintang Wijayanti', 'Prabumulih', '2018-10-01', '', 'Jln. Pahlawan No. 282', 2019, 27, 0),
(755, '79120', 'Karsa Maheswara', 'Solok', '1998-11-29', '', 'Dk. Tambak No. 448', 2019, 27, 0),
(756, '75726', 'Harimurti Jumari Salahudin S.Pt', 'Makassar', '1997-09-10', '', 'Kpg. Dago No. 343', 2019, 27, 0),
(757, '61689', 'Karja Maulana M.Pd', 'Pangkal Pinang', '2011-02-21', '', 'Jr. Bacang No. 229', 2019, 27, 0),
(758, '80975', 'Arsipatra Adinata Prasetyo', 'Cilegon', '2008-11-26', '', 'Jr. Bazuka Raya No. 723', 2019, 27, 0),
(759, '61078', 'Rahman Sinaga', 'Tegal', '1973-04-24', '', 'Ki. HOS. Cjokroaminoto (Pasirkaliki) No. 548', 2019, 27, 0),
(760, '86311', 'Martana Zulkarnain', 'Padang', '1997-09-01', '', 'Psr. Abang No. 436', 2019, 27, 0),
(761, '63204', 'Irma Yuniar', 'Medan', '1981-10-20', '', 'Dk. Basmol Raya No. 159', 2019, 27, 0),
(762, '20275', 'Paulin Widiastuti', 'Lhokseumawe', '1971-07-18', '', 'Ds. Sutarjo No. 981', 2019, 27, 0),
(763, '20948', 'Kiandra Namaga', 'Surakarta', '1982-05-17', '', 'Dk. Batako No. 928', 2019, 27, 0),
(764, '74532', 'Mahmud Sitompul', 'Pariaman', '1980-07-15', '', 'Kpg. Gegerkalong Hilir No. 261', 2019, 27, 0),
(765, '69096', 'Julia Anggraini', 'Tebing Tinggi', '2019-11-02', '', 'Dk. Moch. Ramdan No. 81', 2019, 27, 0),
(766, '17429', 'Tira Kuswandari', 'Mojokerto', '1972-04-15', '', 'Kpg. Bahagia  No. 626', 2019, 27, 0),
(767, '31612', 'Vanesa Hassanah S.Gz', 'Cilegon', '2018-08-09', '', 'Ds. Dipenogoro No. 67', 2019, 27, 0),
(768, '43951', 'Jane Laila Palastri', 'Tidore Kepulauan', '1981-07-21', '', 'Gg. Sutoyo No. 574', 2019, 27, 0),
(769, '98591', 'Asirwada Pratama', 'Tangerang', '1977-12-02', '', 'Dk. Dr. Junjunan No. 426', 2019, 27, 0),
(770, '20372', 'Ika Mulyani', 'Lhokseumawe', '1998-09-20', '', 'Kpg. Ki Hajar Dewantara No. 118', 2019, 27, 0),
(771, '51088', 'Kayla Mulyani', 'Cirebon', '2016-02-02', '', 'Ki. Katamso No. 766', 2019, 28, 0),
(772, '71252', 'Prabu Sirait', 'Batam', '2022-11-15', '', 'Ki. Baan No. 889', 2019, 28, 0),
(773, '17373', 'Lasmanto Iswahyudi', 'Bandar Lampung', '1985-03-21', '', 'Jr. Raya Setiabudhi No. 278', 2019, 28, 0),
(774, '71787', 'Gandi Maheswara', 'Tarakan', '1972-09-02', '', 'Psr. Krakatau No. 645', 2019, 28, 0),
(775, '99772', 'Najam Wijaya', 'Medan', '1972-03-14', '', 'Jln. Ters. Buah Batu No. 692', 2019, 28, 0),
(776, '24729', 'Unggul Irawan M.Ak', 'Tegal', '2005-07-21', '', 'Kpg. Bank Dagang Negara No. 754', 2019, 28, 0),
(777, '49369', 'Gawati Yuliarti S.Pt', 'Subulussalam', '1993-06-09', '', 'Ds. Dipatiukur No. 445', 2019, 28, 0),
(778, '16776', 'Halima Safitri', 'Sabang', '1991-11-30', '', 'Dk. Baya Kali Bungur No. 862', 2019, 28, 0),
(779, '29399', 'Jelita Tiara Agustina M.M.', 'Administrasi Jakarta Pusat', '2011-05-02', '', 'Ki. Yosodipuro No. 256', 2019, 28, 0),
(780, '82347', 'Syahrini Hasanah', 'Ambon', '1982-11-25', '', 'Dk. Bara Tambar No. 456', 2019, 28, 0),
(781, '45549', 'Putu Budiyanto S.Ked', 'Banjarbaru', '2020-11-10', '', 'Ki. Casablanca No. 295', 2019, 28, 0),
(782, '47412', 'Cindy Puspita', 'Tanjungbalai', '1972-12-27', '', 'Jln. Sutoyo No. 635', 2019, 28, 0),
(783, '63385', 'Talia Hariyah', 'Padangpanjang', '2000-11-08', '', 'Ds. Baranang Siang Indah No. 985', 2019, 28, 0),
(784, '64924', 'Harja Oskar Situmorang S.Pd', 'Palopo', '2005-09-12', '', 'Dk. Suprapto No. 861', 2019, 28, 0),
(785, '48367', 'Eva Puspasari', 'Cirebon', '2017-12-20', '', 'Ki. M.T. Haryono No. 917', 2019, 28, 0),
(786, '74490', 'Padma Widiastuti', 'Tasikmalaya', '1978-09-05', '', 'Ki. Imam No. 683', 2019, 28, 0),
(787, '19833', 'Caraka Mahendra S.Farm', 'Mataram', '1970-12-06', '', 'Ds. Basket No. 884', 2019, 28, 0),
(788, '41623', 'Najwa Nadia Lestari', 'Magelang', '2015-12-16', '', 'Kpg. Baranangsiang No. 379', 2019, 28, 0),
(789, '48750', 'Rahmat Galuh Hakim S.Pt', 'Bogor', '2012-09-29', '', 'Jr. Basoka No. 860', 2019, 28, 0),
(790, '11672', 'Danu Hasan Natsir S.Kom', 'Jambi', '1996-09-05', '', 'Psr. Bara Tambar No. 518', 2019, 28, 0),
(791, '67260', 'Endah Zulaikha Suartini', 'Pasuruan', '1989-12-08', '', 'Jln. Nanas No. 108', 2019, 28, 0),
(792, '18891', 'Karma Salahudin', 'Probolinggo', '1995-06-21', '', 'Gg. Achmad Yani No. 470', 2019, 28, 0),
(793, '26486', 'Mariadi Makuta Sitompul', 'Palu', '1987-05-21', '', 'Jln. Baik No. 93', 2019, 28, 0),
(794, '51201', 'Fitria Riyanti', 'Bitung', '2013-01-31', '', 'Dk. Mahakam No. 970', 2019, 28, 0),
(795, '51716', 'Zizi Oktaviani', 'Pekanbaru', '2006-11-16', '', 'Ds. Rumah Sakit No. 996', 2019, 28, 0),
(796, '77309', 'Rafid Purwadi Prabowo M.Farm', 'Administrasi Jakarta Pusat', '2002-08-20', '', 'Jr. Mahakam No. 543', 2019, 28, 0),
(797, '90250', 'Eja Jaya Prabowo', 'Pasuruan', '1975-01-20', '', 'Gg. Bakit  No. 244', 2019, 28, 0),
(798, '11243', 'Syahrini Ellis Wulandari', 'Cimahi', '2020-08-19', '', 'Jln. Daan No. 915', 2019, 28, 0),
(799, '68628', 'Iriana Susanti', 'Lhokseumawe', '1997-12-24', '', 'Psr. Ters. Buah Batu No. 466', 2019, 28, 0),
(800, '58292', 'Gandewa Pranata Prayoga M.TI.', 'Pekanbaru', '1975-09-24', '', 'Jr. Kebonjati No. 578', 2019, 28, 0),
(801, '40400', 'Betania Purwanti', 'Sawahlunto', '1992-03-02', '', 'Jr. Elang No. 543', 2019, 28, 0),
(802, '94661', 'Ophelia Lili Safitri', 'Administrasi Jakarta Pusat', '1977-11-01', '', 'Dk. Tubagus Ismail No. 559', 2019, 28, 0),
(803, '34265', 'Irma Rahayu', 'Balikpapan', '1983-06-07', '', 'Ds. Cikutra Timur No. 128', 2019, 29, 0),
(804, '95270', 'Tami Purwanti', 'Jambi', '2010-01-16', '', 'Ki. Dr. Junjunan No. 116', 2019, 29, 0),
(805, '48172', 'Dadi Kuswoyo', 'Padang', '2019-12-09', '', 'Kpg. Babadak No. 128', 2019, 29, 0),
(806, '66603', 'Salwa Faizah Maryati', 'Administrasi Jakarta Timur', '1977-10-08', '', 'Dk. R.E. Martadinata No. 622', 2019, 29, 0),
(807, '91642', 'Jaswadi Adriansyah', 'Kupang', '1973-04-24', '', 'Gg. Kebonjati No. 930', 2019, 29, 0),
(808, '16294', 'Uli Rahmawati', 'Tangerang', '1995-03-17', '', 'Dk. Gedebage Selatan No. 275', 2019, 29, 0),
(809, '46733', 'Ira Pratiwi S.Ked', 'Parepare', '2019-02-06', '', 'Dk. Supono No. 741', 2019, 29, 0),
(810, '55932', 'Farah Halimah', 'Administrasi Jakarta Pusat', '1994-09-22', '', 'Jr. Camar No. 34', 2019, 29, 0),
(811, '80265', 'Saadat Lazuardi', 'Samarinda', '2010-09-15', '', 'Ds. Kiaracondong No. 48', 2019, 29, 0),
(812, '76965', 'Yosef Darimin Firmansyah', 'Tual', '1994-09-17', '', 'Jr. Ahmad Dahlan No. 613', 2019, 29, 0),
(813, '98106', 'Shakila Dinda Yolanda', 'Surabaya', '1991-11-30', '', 'Gg. Untung Suropati No. 313', 2019, 29, 0),
(814, '99693', 'Bahuwarna Ihsan Winarno S.H.', 'Kotamobagu', '2006-06-28', '', 'Kpg. Jakarta No. 198', 2019, 29, 0),
(815, '46567', 'Dagel Gara Salahudin S.Pd', 'Ambon', '1991-02-13', '', 'Psr. Industri No. 600', 2019, 29, 0),
(816, '33719', 'Cawisadi Januar', 'Batu', '2019-01-30', '', 'Ki. Sentot Alibasa No. 147', 2019, 29, 0),
(817, '14400', 'Ratih Safina Hassanah S.Sos', 'Parepare', '2021-04-02', '', 'Ds. Katamso No. 943', 2019, 29, 0),
(818, '94850', 'Alika Suryatmi', 'Medan', '1985-05-28', '', 'Ds. Wahidin Sudirohusodo No. 590', 2019, 29, 0),
(819, '91528', 'Ganep Atma Widodo S.E.', 'Bandung', '1974-04-28', '', 'Jln. Ters. Pasir Koja No. 626', 2019, 29, 0),
(820, '66708', 'Lurhur Megantara', 'Kupang', '1989-03-18', '', 'Jln. Camar No. 914', 2019, 29, 0),
(821, '94972', 'Sari Nova Hariyah', 'Batu', '2022-03-13', '', 'Dk. R.E. Martadinata No. 496', 2019, 29, 0),
(822, '54639', 'Septi Pratiwi', 'Pariaman', '2000-06-21', '', 'Kpg. Baik No. 693', 2019, 29, 0),
(823, '30229', 'Gina Rahmawati', 'Binjai', '1995-03-09', '', 'Ki. Astana Anyar No. 181', 2019, 29, 0),
(824, '67223', 'Ade Jane Suryatmi', 'Bontang', '2019-12-10', '', 'Dk. Salak No. 540', 2019, 29, 0),
(825, '66137', 'Jagapati Purwadi Halim', 'Lhokseumawe', '2011-05-25', '', 'Dk. Gajah Mada No. 827', 2019, 29, 0),
(826, '98214', 'Martaka Lurhur Hidayanto', 'Tanjung Pinang', '1995-06-03', '', 'Ds. Haji No. 607', 2019, 29, 0),
(827, '51675', 'Tiara Prastuti', 'Makassar', '2011-09-10', '', 'Psr. Baya Kali Bungur No. 481', 2019, 29, 0),
(828, '11694', 'Gaduh Liman Januar S.Psi', 'Pasuruan', '2020-05-09', '', 'Kpg. Sentot Alibasa No. 400', 2019, 29, 0),
(829, '46331', 'Safina Lestari', 'Tanjung Pinang', '1976-09-11', '', 'Jr. Bara Tambar No. 301', 2019, 29, 0),
(830, '91293', 'Karen Wastuti M.Kom.', 'Bontang', '1986-02-02', '', 'Gg. Bara Tambar No. 774', 2019, 29, 0),
(831, '54922', 'Salimah Farida', 'Malang', '2010-08-19', '', 'Jr. Pasirkoja No. 601', 2019, 29, 0),
(832, '11204', 'Satya Mahendra', 'Kupang', '1977-07-13', '', 'Ki. Cokroaminoto No. 407', 2019, 29, 0),
(833, '56317', 'Hasna Haryanti S.Psi', 'Administrasi Jakarta Timur', '1977-01-22', '', 'Jr. Cemara No. 61', 2019, 29, 0),
(834, '87798', 'Najwa Aryani M.M.', 'Bontang', '1985-11-17', '', 'Gg. Tangkuban Perahu No. 200', 2019, 29, 0);

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
(1, '2022/2023', 0);

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
-- Indeks untuk tabel `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD PRIMARY KEY (`absensi_id`),
  ADD KEY `ab_id_kelas` (`ab_id_kelas`),
  ADD KEY `ab_created_by` (`ab_created_by`);

--
-- Indeks untuk tabel `tb_detail_absensi`
--
ALTER TABLE `tb_detail_absensi`
  ADD PRIMARY KEY (`dta_id`),
  ADD KEY `dta_ab_id` (`dta_ab_id`),
  ADD KEY `dta_id_siswa` (`dta_id_siswa`);

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
-- AUTO_INCREMENT untuk tabel `tb_absensi`
--
ALTER TABLE `tb_absensi`
  MODIFY `absensi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_detail_absensi`
--
ALTER TABLE `tb_detail_absensi`
  MODIFY `dta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=835;

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
-- Ketidakleluasaan untuk tabel `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD CONSTRAINT `tb_absensi_ibfk_1` FOREIGN KEY (`ab_id_kelas`) REFERENCES `tb_kelas` (`kelas_id`),
  ADD CONSTRAINT `tb_absensi_ibfk_2` FOREIGN KEY (`ab_created_by`) REFERENCES `tb_guru` (`guru_id`);

--
-- Ketidakleluasaan untuk tabel `tb_detail_absensi`
--
ALTER TABLE `tb_detail_absensi`
  ADD CONSTRAINT `tb_detail_absensi_ibfk_1` FOREIGN KEY (`dta_ab_id`) REFERENCES `tb_absensi` (`absensi_id`),
  ADD CONSTRAINT `tb_detail_absensi_ibfk_2` FOREIGN KEY (`dta_id_siswa`) REFERENCES `tb_siswa` (`siswa_id`);

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
