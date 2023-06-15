-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 07:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formrequest`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_owner` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tlp` varchar(50) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `nama_aplikasi` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `copy_right` varchar(50) DEFAULT NULL,
  `versi` varchar(20) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `nama_owner`, `alamat`, `tlp`, `title`, `nama_aplikasi`, `logo`, `copy_right`, `versi`, `tahun`) VALUES
(1, 'SMART Research Institute', NULL, '', 'Hotline SMARTRI', 'hotlinesmartri', 'AdminLTELogo1.png', 'Copy Right &copy;', '1.0', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_user` int(15) NOT NULL,
  `id_lawan` int(15) NOT NULL,
  `isi` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `id_user`, `id_lawan`, `isi`, `waktu`) VALUES
(1, 1, 2, 'A', '2021-11-12 15:22:58'),
(2, 2, 1, 'S', '2021-11-12 15:23:50'),
(3, 1, 2, 'DDD', '2021-11-12 15:24:08'),
(4, 2, 1, 'DDDDDD', '2021-11-12 15:24:13'),
(5, 2, 1, 'sd', '2021-11-12 16:03:08'),
(6, 2, 1, 'w', '2021-11-12 16:18:39'),
(7, 2, 1, 'w', '2021-11-13 08:20:49'),
(8, 2, 1, 'ASD', '2021-11-13 08:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_biodata`
--

CREATE TABLE `tabel_biodata` (
  `id` int(12) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `section` varchar(100) NOT NULL,
  `department` varchar(20) NOT NULL,
  `a` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_biodata`
--

INSERT INTO `tabel_biodata` (`id`, `nama`, `nik`, `section`, `department`, `a`) VALUES
(259, 'J.P. Caliman', '07001064', 'Div. Head', 'Management', ''),
(260, 'Rus Eva M', '02000199', 'Secretary & Documentation', 'Management', ''),
(261, 'Hardianang Sapto Akbar', '20000483', 'Admin & Accounting Asst.', 'Management', ''),
(262, 'Putri Aulia Wahyuningsih', '13000522', 'Asst. Biometry & Database', 'Management', ''),
(263, 'Medi Darminto', '96000191', 'Task Force Sect. Head', 'Management', ''),
(264, 'Tauvik Risman', '99000463', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(265, 'Sudarno', '12002254', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(266, 'Abednego L. Simamora', '17000823', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(267, 'Fitriani', '06000767', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(268, 'Dias Kandias', '14001338', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(269, 'Egyfaldi Biamenta', '14001388', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(270, 'Deni Reflianto Manik', '15001623', 'Analitycal Laboratory Assistant-LIBZ', 'Laboratory', ''),
(271, 'Anisa Putri', '21000087', 'Analitycal Laboratory Assistant-LIBZ', 'Laboratory', ''),
(272, 'Wiro Naibaho', '19002199', 'Analytical Laboratory Assistant - Bogor', 'Laboratory', ''),
(273, 'Hermawani Girsang', '05000643', 'Analitycal Laboratory Assistant-PHLE', 'Laboratory', ''),
(274, 'Fajar', '10000875', 'Analitycal Laboratory Assistant-SMSE', 'Laboratory', ''),
(275, 'Syahrul Efendi S', '04000384', 'Analitycal Laboratory Assistant-BAME', 'Laboratory', ''),
(276, 'Yudi Yustira', '20001262', 'Analitycal Laboratory Assistant-Kalbar/PKWT', 'Laboratory', ''),
(277, 'M. Fajriansyah', '08000900', 'Analitycal Laboratory Assistant-SRGE', 'Laboratory', ''),
(278, 'Rita Marlina', '90000083', 'QC Control Lab.', 'Laboratory', ''),
(279, 'Divo Dharma Silalahi', '09000720', 'Dept. Head DIAD', 'DIAD', ''),
(280, 'Rusmita', '18000148', 'Biometry &  Database Asst.-SMSE', 'DIAD', ''),
(281, 'Dwivayani Sentosa', '17001171', 'Biometry &  Database Asst.', 'DIAD', ''),
(282, 'Adindha Surya Nugraha', '20000533', 'GIS Asst.', 'DIAD', ''),
(283, 'Andria Rezki', '20000748', 'BDB Asst', 'DIAD', ''),
(284, 'Didi Adisaputro', '21000503', 'Climatology Asst.', 'DIAD', ''),
(285, 'Yong Yit Yuan', '06000686', 'Plant Breeding Dept Head', 'Plant Breeding', ''),
(286, 'Arnolly S. Ardi', '10000291', 'Breeding & Selection Assistant', 'Plant Breeding', ''),
(287, 'Sri Imriani Pulungan', '19000950', 'Breeding & Selection Assistant', 'Plant Breeding', ''),
(288, 'Zikril Illahi', '17000126', 'Breeding & Selection Assistant-PHLE', 'Plant Breeding', ''),
(289, 'Adin Afiyata', '13001639', 'Molecular Assisted Breeding Asst.', 'Plant Breeding', ''),
(290, 'Rizki Anjal Puji Nugroho', '19001435', 'Breeding & Selection Assistant', 'Plant Breeding', ''),
(291, 'Mohd. Naim', '04000364', 'Crop Protection Dept. Head', 'Crop Protection', ''),
(293, 'Yendra Pratama Setiawan', '17002062', 'Asst. Pest & Entomology', 'Crop Protection', ''),
(294, 'Andreas Dwi A', '09000518', 'Asst. Pest & Entomology', 'Crop Protection', ''),
(295, 'Achmad Wahyu S.', '93000033', 'Phytopatology Sect. Head', 'Crop Protection', ''),
(296, 'Rizky Rajabillah Purwoko', '16001359', 'Asst. Phytopatology', 'Crop Protection', ''),
(297, 'Giono', '07000389', 'Asst. Phytopatology-PHLE', 'Crop Protection', ''),
(298, 'Tuani Dzulfikar S. R', '09000796', 'Weed Control Sect. Head', 'Crop Protection', ''),
(299, 'Pujianto', '98000214', 'Agronomy Dept Head ', 'Agronomy', ''),
(300, 'Hasbullah', '17000116', ' Mineral Nutrition Sect. Head', 'Agronomy', ''),
(301, 'Indra Permana', '20000826', ' Mineral Nutrition Asst.', 'Agronomy', ''),
(302, 'Maria Prasasti D', '08000406', ' Mineral Nutrition Asst.', 'Agronomy', ''),
(303, 'Sri Listyaningsih', '08001065', ' Mineral Nutrition Asst.', 'Agronomy', ''),
(304, 'Fahri Arif Siregar', '97000328', 'Agrophysiology Sect. Head', 'Agronomy', ''),
(305, 'Reni Subawati K', '03000285', 'Agrophysiology Assisstant', 'Agronomy', ''),
(306, 'Dede Yudo Kurniawan', '18003174', 'Agrophysiology Assisstant', 'Agronomy', ''),
(307, 'Doni Artanto R', '08000775', 'Asst. Research Agronomy', 'Agronomy', ''),
(308, 'Suhardi', '07001020', 'Soil Fertility Sect. Head', 'Agronomy', ''),
(309, 'Resti Wahyuningsih', '11001902', 'Soil Fertility Asst.', 'Agronomy', ''),
(310, 'Ikrar Nusantara Putra', '14001219', 'Soil Fertility Asst.', 'Agronomy', ''),
(311, 'Anak Agung K. A', '12000894', 'Asst. Ecological Services', 'Crop Protection', ''),
(312, 'Ribka Sionita T', '07001151', 'Asst. Pollution Risk Control', 'Agronomy', ''),
(313, 'Jassica Prajna Dewi', '17002519', 'Asst. PRC', 'Sustainable Oil Palm', ''),
(314, 'Bram Hadiwijaya', '10000107', 'Asst. Carbon & Water Accounting', 'Sustainable Oil Palm', ''),
(315, 'Bayu Septiwibowo', '10002115', 'Asst. Carbon & Water Accounting', 'Sustainable Oil Palm', ''),
(316, 'Dedi Purnomo', '09000054', 'Asst. Biodiversity', 'Sustainable Oil Palm', ''),
(317, 'Hartono', '97000047', 'Field Operational Dept. Head', 'FOES', ''),
(318, 'Sari\'a Maimuna', '12002292', 'Research Field Coordinator - BNGE', 'FOES', ''),
(319, 'Fahry Faqiha', '16001058', 'Research Field Coordinator-PHLE', 'FOES', ''),
(320, 'Fadli Fauzi', '11000120', 'Research Field Coordinator - SMSE', 'FOES', ''),
(321, 'Aldi Putra Guntara', '17000118', 'Research Field Coordinator-SBYE', 'FOES', ''),
(322, 'Ferdinan Manogi Silalahi', '17001175', 'Research Field Coordinator-SKME', 'FOES', ''),
(323, 'Samsu Alam', '07000071', 'Field Coordinator1 - BAME', 'FOES', ''),
(324, 'M Alpian', '96000443', 'Research Field Coordinator - BAME', 'FOES', ''),
(325, 'Anhar Jhony Murtono', '12001810', 'Research Field Coordinator-MWHE ', 'FOES', ''),
(326, 'Rudi Harto Widodo', '', 'Field Coordinator5 - LIBZ', 'FOES', ''),
(327, 'Fahron Nawawi', '11000135', 'Research Field Coordinator - BPME', 'FOES', ''),
(328, 'Ichsan Rezky Praptantyo', '17001136', 'Research Field Coordinator-SRGE', 'FOES', ''),
(329, 'Ahmad Rizal', '17000176', 'Research Field Coordinator -KHLE', 'FOES', ''),
(330, 'Alif Saifudin', '14000749', 'Research Field Coordinator-KYNE ', 'FOES', ''),
(331, 'Pramusita Yoga Daniswara', '15003651', 'Field Coordinator5 - LIBZ', 'FOES', ''),
(332, 'Guntur Permanaputra', '18000144', 'Research Field Coordinator-KYNE ', 'FOES', ''),
(333, 'Agus Dwi Prasetyo', '', 'Research Field Coordinator-SRIE', 'FOES', ''),
(334, 'Aditya Fajar Kurniawan', '', 'Research Field Coordinator-KRLE', 'FOES', ''),
(335, 'Fadil Wirawan', '19001559', 'Research Field Coordinator-NMAE', 'FOES', ''),
(336, 'Widura Bintang Samudra', '19001558', 'Research Field Coordinator-LIBZ', 'FOES', ''),
(337, 'Ambri Bakhtiar', '20000938', 'Research Field Coordinator-BPRE', 'FOES', ''),
(338, 'Edy Sulisianto', '20000023', 'Research Field Coordinator-Papua', 'FOES', ''),
(339, 'Imam Rifai', '21000397', 'Research Field Coordinator-', 'FOES', ''),
(340, 'Elfrin Nisa Azmi', '21000396', 'Research Field Coordinator-CSR', 'FOES', ''),
(341, 'Chyntia Novanti', '21000490', 'Research Field Coordinator-Nursery&Composting', 'FOES', ''),
(342, 'Ardiansyah', '', 'Research Field Coordinator-SPKE', 'FOES', '');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_chat`
--

CREATE TABLE `tabel_chat` (
  `id_chat` int(5) NOT NULL,
  `id_pengirim` varchar(50) NOT NULL,
  `id_penerima` varchar(50) NOT NULL,
  `isi` varchar(500) NOT NULL,
  `status` int(5) NOT NULL,
  `tanggal_kirim` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_chat`
--

INSERT INTO `tabel_chat` (`id_chat`, `id_pengirim`, `id_penerima`, `isi`, `status`, `tanggal_kirim`) VALUES
(1, 'Muhammad Rahmat', '1', 'ISI', 0, '2021-11-12 00:00:00'),
(2, 'R. Adhi Nugroho', '2', 'ISI 2', 1, '2021-11-11 00:00:00'),
(3, '1', '1', 'ISI', 0, '2021-11-12 00:00:00'),
(4, '2', '2', 'ISI 2', 1, '2021-11-11 00:00:00'),
(5, '1', '1', 'ISI', 0, '2021-11-12 00:00:00'),
(6, '2', '2', 'ISI 2', 1, '2021-11-11 00:00:00'),
(7, '1', '1', 'ISI', 0, '2021-11-12 00:00:00'),
(8, '2', '2', 'ISI 2', 1, '2021-11-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_data`
--

CREATE TABLE `tabel_data` (
  `id_order` int(5) NOT NULL,
  `tahun_layanan` varchar(5) NOT NULL,
  `nik_peminta` varchar(30) NOT NULL,
  `nama_peminta` text NOT NULL,
  `section_peminta` text NOT NULL,
  `department_peminta` text NOT NULL,
  `hp_peminta` varchar(20) NOT NULL,
  `kategori_perbaikan` text NOT NULL,
  `id_rumah` varchar(20) NOT NULL,
  `alokasi` text NOT NULL,
  `nik_pemilik` varchar(20) NOT NULL,
  `nama_pemilik` text NOT NULL,
  `section_pemilik` text NOT NULL,
  `department_pemilik` text NOT NULL,
  `tanggal_order` date DEFAULT NULL,
  `attachment` text NOT NULL,
  `jenis_perbaikan` text NOT NULL,
  `detail_order` text DEFAULT NULL,
  `prioritas` varchar(10) NOT NULL,
  `tanggal_order_diterima` date DEFAULT NULL,
  `tanggal_pemeriksaan` date DEFAULT NULL,
  `kategori_volume_kerja` text NOT NULL,
  `estimasi_kebutuhan_material` text NOT NULL,
  `jumlah_material` int(20) NOT NULL,
  `stok_gudang` varchar(20) NOT NULL,
  `dikerjakan_dengan` text NOT NULL,
  `petugas` text NOT NULL,
  `status_pemeriksaan` text NOT NULL,
  `estimasi_waktu_pengadaan_material` text NOT NULL,
  `tanggal_mulai_dikerjakan` date DEFAULT NULL,
  `estimasi_waktu_pengerjaan` text NOT NULL,
  `tanggal_estimasi_selesai_pengerjaan` date DEFAULT NULL,
  `alokasi_biaya` text NOT NULL,
  `tanggal_selesai_pengerjaan` date DEFAULT NULL,
  `keterangan` text NOT NULL,
  `status` int(1) DEFAULT 0,
  `status_layanan` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(20) NOT NULL,
  `bulan` int(3) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `os` varchar(20) NOT NULL,
  `browser` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_data`
--

INSERT INTO `tabel_data` (`id_order`, `tahun_layanan`, `nik_peminta`, `nama_peminta`, `section_peminta`, `department_peminta`, `hp_peminta`, `kategori_perbaikan`, `id_rumah`, `alokasi`, `nik_pemilik`, `nama_pemilik`, `section_pemilik`, `department_pemilik`, `tanggal_order`, `attachment`, `jenis_perbaikan`, `detail_order`, `prioritas`, `tanggal_order_diterima`, `tanggal_pemeriksaan`, `kategori_volume_kerja`, `estimasi_kebutuhan_material`, `jumlah_material`, `stok_gudang`, `dikerjakan_dengan`, `petugas`, `status_pemeriksaan`, `estimasi_waktu_pengadaan_material`, `tanggal_mulai_dikerjakan`, `estimasi_waktu_pengerjaan`, `tanggal_estimasi_selesai_pengerjaan`, `alokasi_biaya`, `tanggal_selesai_pengerjaan`, `keterangan`, `status`, `status_layanan`, `datetime`, `ip`, `bulan`, `tahun`, `os`, `browser`) VALUES
(37, '2023', '03000285', 'Reni Subawati K', 'Agrophysiology Assisstant', 'Agronomy', '23', 'Rumah', 'Rumah', 'Staff', '', '', '', 'Management', '2023-06-12', '', 'Rumah', 'Kerusakan pada gagang pintu', 'Urgent', NULL, '2023-06-15', 'Ringan', '<ol>\r\n <li>Papan 2 buah</li>\r\n <li>Besi 2 buah</li>\r\n</ol>\r\n', 0, '', 'Internal', 'Petugas A', '', '3', NULL, '4', NULL, '', NULL, '', 1, '', '2023-06-12 09:01:57', '::1', 6, '2023', 'Windows 10', 'Chrome'),
(38, '2023', '04000384', 'Syahrul Efendi S', 'Analitycal Laboratory Assistant-BAME', 'Laboratory', '0888888888', 'Rumah', 'Rumah', 'Staff', '', '', '', 'DIAD', '2023-06-14', '', 'Bangunan', '<p>1. Daun Jendela 2 buah</p>\n\n<p>2. Saringan westafel 2 buah</p>\n', 'Normal', NULL, NULL, '', '', 0, '', '', '', '', '', NULL, '', NULL, '', NULL, '', 0, '', '2023-06-14 10:24:05', '::1', 6, '2023', 'Windows 10', 'Chrome'),
(39, '2023', '04000384', 'Syahrul Efendi S', 'Analitycal Laboratory Assistant-BAME', 'Laboratory', '0888888888', 'Rumah', 'Rumah', 'Staff', '', '', '', 'DIAD', '2023-06-14', '', 'Bangunan', '<p>1. Rusak Bagian Atap yang menyebabkan sesuatu yang bruk</p>\r\n\r\n<p>2. Rusak pada pagar yang menyebabkan sesuatu yang bruk</p>\r\n\r\n<p>3. Kerusakan yang menyebabkan sesuatu yang bruk</p>\r\n', 'Normal', NULL, NULL, '', '', 0, '', '', '', '', '', NULL, '', NULL, '', NULL, '', 0, '', '2023-06-14 10:45:06', '::1', 6, '2023', 'Windows 10', 'Chrome'),
(40, '2023', '03000285', 'Reni Subawati K', 'Agrophysiology Assisstant', 'Agronomy', '0888888888', 'Rumah', 'Rumah', 'Staff', '', '', '', 'DIAD', '2023-06-14', '', 'Bangunan', '<ol>\r\n <li>Atap rusak yang menyebabkan sesuatu yang bruk</li>\r\n <li>Jendela rusak yang menyebabkan sesuatu yang bruk</li>\r\n <li>Dapur rusak yang menyebabkan sesuatu yang bruk</li>\r\n</ol>\r\n', 'Normal', NULL, NULL, '', '', 0, '', '', '', '', '', NULL, '', NULL, '', NULL, '', 0, '', '2023-06-14 10:46:33', '::1', 6, '2023', 'Windows 10', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_log`
--

CREATE TABLE `tabel_log` (
  `log_id` int(11) NOT NULL,
  `log_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `log_time` timestamp NULL DEFAULT current_timestamp(),
  `log_user` varchar(255) DEFAULT NULL,
  `log_tipe` int(11) DEFAULT NULL,
  `log_desc` varchar(255) DEFAULT NULL,
  `log_location` varchar(50) DEFAULT NULL,
  `ip` varchar(10) NOT NULL,
  `browser` varchar(30) NOT NULL,
  `os` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_log`
--

INSERT INTO `tabel_log` (`log_id`, `log_date`, `log_time`, `log_user`, `log_tipe`, `log_desc`, `log_location`, `ip`, `browser`, `os`) VALUES
(929, '2021-09-16 00:19:22', '2021-09-16 00:19:22', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(930, '2021-09-16 02:54:51', '2021-09-16 02:54:51', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(931, '2021-09-16 03:02:08', '2021-09-16 03:02:08', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(932, '2021-09-16 03:05:58', '2021-09-16 03:05:58', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(933, '2021-09-17 00:12:16', '2021-09-17 00:12:16', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(934, '2021-09-17 00:12:50', '2021-09-17 00:12:50', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(935, '2021-09-17 02:05:56', '2021-09-17 02:05:56', 'Programmer', 0, 'Login Aplikasi', 'Login', '10.5.19.65', 'Chrome', 'Windows 10'),
(936, '2021-09-17 02:17:53', '2021-09-17 02:17:53', 'Programmer', 5, 'Menghapus Data libur', 'libur', '', '', ''),
(937, '2021-09-17 04:21:19', '2021-09-17 04:21:19', 'Programmer', 2, 'Menambah Hari libur', 'Kalender Libur', '::1', 'Chrome', 'Windows 10'),
(938, '2021-09-17 07:05:41', '2021-09-17 07:05:41', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(939, '2021-09-17 07:28:22', '2021-09-17 07:28:22', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(940, '2021-09-17 07:28:37', '2021-09-17 07:28:37', 'Officer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(941, '2021-09-17 07:29:24', '2021-09-17 07:29:24', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(942, '2021-09-18 00:11:29', '2021-09-18 00:11:29', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(943, '2021-09-18 01:54:22', '2021-09-18 01:54:22', 'Programmer', 5, 'Menghapus Hari libur', 'Kalender Libur', '::1', 'Chrome', 'Windows 10'),
(944, '2021-09-18 01:54:28', '2021-09-18 01:54:28', 'Programmer', 5, 'Menghapus Hari libur', 'Kalender Libur', '::1', 'Chrome', 'Windows 10'),
(945, '2021-09-18 02:08:24', '2021-09-18 02:08:24', 'Programmer', 5, 'Menghapus Data Biodata', 'Biodata', '', '', ''),
(946, '2021-09-18 04:43:26', '2021-09-18 04:43:26', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(947, '2021-09-20 00:08:19', '2021-09-20 00:08:19', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(948, '2022-09-20 02:36:53', '2022-09-20 02:36:53', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(949, '2021-09-20 07:26:08', '2021-09-20 07:26:08', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(950, '2022-09-20 07:38:38', '2022-09-20 07:38:38', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(951, '2022-09-20 09:50:46', '2022-09-20 09:50:46', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(952, '2023-09-20 09:55:35', '2023-09-20 09:55:35', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(953, '2024-09-20 10:40:31', '2024-09-20 10:40:31', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(954, '2021-09-20 11:41:30', '2021-09-20 11:41:30', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(955, '2021-09-21 03:34:17', '2021-09-21 03:34:17', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(956, '2021-09-22 04:22:48', '2021-09-22 04:22:48', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(957, '2021-09-22 07:29:58', '2021-09-22 07:29:58', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(958, '2021-09-23 00:19:50', '2021-09-23 00:19:50', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(959, '2021-09-23 06:56:17', '2021-09-23 06:56:17', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(960, '2021-09-23 07:28:20', '2021-09-23 07:28:20', 'Programmer', 5, 'Menghapus Data Trial', 'All data', '', '', ''),
(961, '2021-09-23 07:54:00', '2021-09-23 07:54:00', 'Programmer', 5, 'Menghapus Data Trial', 'All data', '', '', ''),
(962, '2021-09-23 08:00:49', '2021-09-23 08:00:49', 'Programmer', 5, 'Menghapus Data Trial', 'All data', '', '', ''),
(963, '2021-09-23 08:15:46', '2021-09-23 08:15:46', 'Programmer', 5, 'Menghapus Data Trial', 'All data', '', '', ''),
(964, '2021-09-23 08:31:47', '2021-09-23 08:31:47', 'Programmer', 5, 'Menghapus Data Trial', 'All data', '', '', ''),
(965, '2021-09-24 00:20:27', '2021-09-24 00:20:27', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(966, '2021-09-24 00:35:55', '2021-09-24 00:35:55', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(967, '2021-09-24 01:23:19', '2021-09-24 01:23:19', 'Programmer', 5, 'Menghapus Data Trial', 'All data', '', '', ''),
(968, '2021-09-24 01:23:24', '2021-09-24 01:23:24', 'Programmer', 5, 'Menghapus Data Trial', 'All data', '', '', ''),
(969, '2021-09-24 03:12:11', '2021-09-24 03:12:11', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(970, '2021-09-24 06:53:25', '2021-09-24 06:53:25', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(971, '2021-09-24 06:55:00', '2021-09-24 06:55:00', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(972, '2021-09-25 00:26:49', '2021-09-25 00:26:49', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(973, '2021-09-25 01:36:18', '2021-09-25 01:36:18', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(974, '2021-09-25 02:05:25', '2021-09-25 02:05:25', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(975, '2021-09-25 15:00:20', '2021-09-25 15:00:20', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(976, '2021-09-25 23:32:10', '2021-09-25 23:32:10', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(977, '2021-09-27 00:23:43', '2021-09-27 00:23:43', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(978, '2021-09-27 02:19:16', '2021-09-27 02:19:16', 'Programmer', 5, 'Menghapus Data Trial', 'All data', '', '', ''),
(979, '2021-09-27 02:33:58', '2021-09-27 02:33:58', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(980, '2021-09-27 02:37:02', '2021-09-27 02:37:02', 'Officer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(981, '2021-09-27 02:40:00', '2021-09-27 02:40:00', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(982, '2021-09-27 02:41:59', '2021-09-27 02:41:59', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(983, '2021-09-27 02:42:17', '2021-09-27 02:42:17', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(984, '2021-09-27 04:21:22', '2021-09-27 04:21:22', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(985, '2021-09-27 06:57:27', '2021-09-27 06:57:27', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(986, '2021-09-27 07:39:15', '2021-09-27 07:39:15', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(987, '2021-09-28 00:04:15', '2021-09-28 00:04:15', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(988, '2021-09-28 04:17:19', '2021-09-28 04:17:19', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(989, '2021-09-29 00:15:43', '2021-09-29 00:15:43', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(990, '2021-09-29 02:16:05', '2021-09-29 02:16:05', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(991, '2021-09-29 06:52:49', '2021-09-29 06:52:49', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(992, '2021-09-30 00:33:23', '2021-09-30 00:33:23', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(993, '2021-09-30 07:46:00', '2021-09-30 07:46:00', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(994, '2021-10-17 08:46:29', '2021-10-17 08:46:29', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(995, '2021-10-17 16:16:51', '2021-10-17 16:16:51', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(996, '2021-10-18 04:57:28', '2021-10-18 04:57:28', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(997, '2021-10-18 15:09:41', '2021-10-18 15:09:41', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(998, '2021-10-18 15:36:04', '2021-10-18 15:36:04', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(999, '2021-10-18 22:41:39', '2021-10-18 22:41:39', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1000, '2021-10-19 04:57:21', '2021-10-19 04:57:21', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1001, '2021-10-19 06:32:40', '2021-10-19 06:32:40', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1002, '2021-10-19 06:37:22', '2021-10-19 06:37:22', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1003, '2021-10-19 10:07:43', '2021-10-19 10:07:43', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1004, '2021-10-19 10:58:16', '2021-10-19 10:58:16', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1005, '2021-10-19 11:00:10', '2021-10-19 11:00:10', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1006, '2021-10-19 12:36:03', '2021-10-19 12:36:03', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1007, '2021-10-19 13:23:16', '2021-10-19 13:23:16', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1008, '2021-10-19 17:12:56', '2021-10-19 17:12:56', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1009, '2021-10-19 17:20:21', '2021-10-19 17:20:21', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1010, '2021-10-19 17:23:16', '2021-10-19 17:23:16', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1011, '2021-10-19 17:29:20', '2021-10-19 17:29:20', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1012, '2021-10-19 17:29:46', '2021-10-19 17:29:46', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1013, '2021-10-19 17:32:46', '2021-10-19 17:32:46', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1014, '2021-10-19 17:33:51', '2021-10-19 17:33:51', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1015, '2021-10-20 02:36:49', '2021-10-20 02:36:49', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1016, '2021-10-20 06:40:47', '2021-10-20 06:40:47', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1017, '2021-10-20 08:15:38', '2021-10-20 08:15:38', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1018, '2021-10-20 08:16:58', '2021-10-20 08:16:58', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '192.168.43', 'Chrome', 'Android'),
(1019, '2021-10-20 10:56:55', '2021-10-20 10:56:55', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1020, '2021-10-20 11:00:32', '2021-10-20 11:00:32', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1021, '2021-10-20 11:04:37', '2021-10-20 11:04:37', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1022, '2021-10-20 11:10:43', '2021-10-20 11:10:43', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1023, '2021-10-20 11:19:39', '2021-10-20 11:19:39', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1024, '2021-10-20 12:41:45', '2021-10-20 12:41:45', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Linux'),
(1025, '2021-10-20 12:41:58', '2021-10-20 12:41:58', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1026, '2021-10-20 15:08:27', '2021-10-20 15:08:27', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1027, '2021-10-20 16:00:32', '2021-10-20 16:00:32', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1028, '2021-10-21 04:54:11', '2021-10-21 04:54:11', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1029, '2021-10-21 08:28:02', '2021-10-21 08:28:02', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1030, '2021-10-21 13:24:57', '2021-10-21 13:24:57', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1031, '2021-10-22 00:13:08', '2021-10-22 00:13:08', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1032, '2021-10-22 01:33:49', '2021-10-22 01:33:49', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1033, '2021-10-22 01:47:15', '2021-10-22 01:47:15', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1034, '2021-10-22 04:06:35', '2021-10-22 04:06:35', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1035, '2021-10-22 07:20:02', '2021-10-22 07:20:02', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1036, '2021-10-23 00:15:07', '2021-10-23 00:15:07', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1037, '2021-10-23 00:20:51', '2021-10-23 00:20:51', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1038, '2021-10-23 02:12:50', '2021-10-23 02:12:50', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1039, '2021-10-23 02:13:26', '2021-10-23 02:13:26', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Linux'),
(1040, '2021-10-23 02:23:05', '2021-10-23 02:23:05', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1041, '2021-10-23 02:47:00', '2021-10-23 02:47:00', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1042, '2021-10-23 13:17:20', '2021-10-23 13:17:20', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1043, '2021-10-23 13:45:39', '2021-10-23 13:45:39', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1044, '2021-10-23 23:49:58', '2021-10-23 23:49:58', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1045, '2021-10-24 03:32:24', '2021-10-24 03:32:24', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1046, '2021-10-24 06:29:06', '2021-10-24 06:29:06', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1047, '2021-10-24 06:41:32', '2021-10-24 06:41:32', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1048, '2021-10-24 06:43:27', '2021-10-24 06:43:27', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1049, '2021-10-24 06:45:37', '2021-10-24 06:45:37', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1050, '2021-10-24 09:55:13', '2021-10-24 09:55:13', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1051, '2021-10-24 11:20:58', '2021-10-24 11:20:58', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1052, '2021-10-24 11:24:16', '2021-10-24 11:24:16', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1053, '2021-10-24 11:25:08', '2021-10-24 11:25:08', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1054, '2021-10-24 11:30:14', '2021-10-24 11:30:14', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1055, '2021-10-24 13:50:11', '2021-10-24 13:50:11', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1056, '2021-10-25 00:08:14', '2021-10-25 00:08:14', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1057, '2021-10-25 01:27:02', '2021-10-25 01:27:02', 'Programmer', 5, 'Menghapus Data Biodata', 'Biodata', '', '', ''),
(1058, '2021-10-25 01:39:29', '2021-10-25 01:39:29', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1059, '2021-10-25 01:40:10', '2021-10-25 01:40:10', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1060, '2021-10-25 01:40:18', '2021-10-25 01:40:18', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1061, '2021-10-25 03:02:10', '2021-10-25 03:02:10', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1062, '2021-10-25 03:04:16', '2021-10-25 03:04:16', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1063, '2021-10-25 03:06:51', '2021-10-25 03:06:51', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1064, '2021-10-25 03:07:38', '2021-10-25 03:07:38', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1065, '2021-10-25 03:44:25', '2021-10-25 03:44:25', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1066, '2021-10-25 03:46:22', '2021-10-25 03:46:22', 'Administrator', 0, 'Login Aplikasi', 'Login', '10.5.19.65', 'Chrome', 'Windows 10'),
(1067, '2021-10-25 04:52:33', '2021-10-25 04:52:33', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1068, '2021-10-25 05:03:00', '2021-10-25 05:03:00', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1069, '2021-10-25 07:09:07', '2021-10-25 07:09:07', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1070, '2021-10-25 07:09:32', '2021-10-25 07:09:32', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1071, '2021-10-25 07:09:43', '2021-10-25 07:09:43', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1072, '2021-10-25 07:10:00', '2021-10-25 07:10:00', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1073, '2021-10-25 07:11:50', '2021-10-25 07:11:50', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1074, '2021-10-25 07:12:22', '2021-10-25 07:12:22', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1075, '2021-10-25 07:12:36', '2021-10-25 07:12:36', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1076, '2021-10-25 07:13:33', '2021-10-25 07:13:33', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1077, '2021-10-25 07:28:57', '2021-10-25 07:28:57', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1078, '2021-10-25 07:33:16', '2021-10-25 07:33:16', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1079, '2021-10-25 07:38:37', '2021-10-25 07:38:37', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1080, '2021-10-25 08:12:26', '2021-10-25 08:12:26', 'Administrator', 0, 'Login Aplikasi', 'Login', '10.5.19.22', 'Chrome', 'Windows 10'),
(1081, '2021-10-25 08:32:28', '2021-10-25 08:32:28', 'Administrator', 0, 'Login Aplikasi', 'Login', '10.5.19.20', 'Chrome', 'Windows 10'),
(1082, '2021-10-26 00:11:10', '2021-10-26 00:11:10', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1083, '2021-10-26 04:52:39', '2021-10-26 04:52:39', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1084, '2021-10-26 06:54:08', '2021-10-26 06:54:08', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1085, '2021-10-26 08:03:12', '2021-10-26 08:03:12', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1086, '2021-10-26 08:51:49', '2021-10-26 08:51:49', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1087, '2021-10-27 00:28:36', '2021-10-27 00:28:36', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1088, '2021-10-27 01:18:58', '2021-10-27 01:18:58', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1089, '2021-10-27 07:14:59', '2021-10-27 07:14:59', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1090, '2021-10-27 08:13:04', '2021-10-27 08:13:04', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1091, '2021-10-27 08:29:42', '2021-10-27 08:29:42', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1092, '2021-10-27 08:52:37', '2021-10-27 08:52:37', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1093, '2021-10-28 00:19:20', '2021-10-28 00:19:20', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1094, '2021-10-28 02:06:44', '2021-10-28 02:06:44', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1095, '2021-10-29 00:23:23', '2021-10-29 00:23:23', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1096, '2021-10-29 07:15:39', '2021-10-29 07:15:39', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1097, '2021-10-30 00:15:33', '2021-10-30 00:15:33', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1098, '2021-11-01 03:54:01', '2021-11-01 03:54:01', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1099, '2021-11-01 07:06:59', '2021-11-01 07:06:59', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1100, '2021-11-02 00:18:12', '2021-11-02 00:18:12', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1101, '2021-11-02 03:39:42', '2021-11-02 03:39:42', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1102, '2021-11-02 03:39:58', '2021-11-02 03:39:58', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1103, '2021-11-02 04:16:45', '2021-11-02 04:16:45', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1104, '2021-11-02 04:29:27', '2021-11-02 04:29:27', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1105, '2021-11-02 07:09:11', '2021-11-02 07:09:11', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1106, '2021-11-02 07:12:49', '2021-11-02 07:12:49', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1107, '2021-11-02 07:23:32', '2021-11-02 07:23:32', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1108, '2021-11-02 07:38:29', '2021-11-02 07:38:29', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1109, '2021-11-02 07:45:27', '2021-11-02 07:45:27', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1110, '2021-11-02 08:25:15', '2021-11-02 08:25:15', 'Officer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1111, '2021-11-02 08:53:15', '2021-11-02 08:53:15', 'Sect Head', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1112, '2021-11-02 08:53:26', '2021-11-02 08:53:26', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1113, '2021-11-02 08:55:33', '2021-11-02 08:55:33', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1114, '2021-11-03 00:32:56', '2021-11-03 00:32:56', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1115, '2021-11-03 01:36:03', '2021-11-03 01:36:03', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1116, '2021-11-03 01:36:28', '2021-11-03 01:36:28', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1117, '2021-11-03 01:39:59', '2021-11-03 01:39:59', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1118, '2021-11-03 07:06:15', '2021-11-03 07:06:15', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1119, '2021-11-04 00:13:35', '2021-11-04 00:13:35', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1120, '2021-11-04 07:09:01', '2021-11-04 07:09:01', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1121, '2021-11-05 00:18:12', '2021-11-05 00:18:12', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1122, '2021-11-05 00:27:53', '2021-11-05 00:27:53', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1123, '2021-11-05 00:51:42', '2021-11-05 00:51:42', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1124, '2021-11-05 01:17:45', '2021-11-05 01:17:45', 'Administrator', 2, 'Menambahkan Trial', 'Data', '', '', ''),
(1125, '2021-11-05 01:28:27', '2021-11-05 01:28:27', 'Administrator', 5, 'Menghapus Data Biodata', 'Biodata', '', '', ''),
(1126, '2021-11-05 02:27:27', '2021-11-05 02:27:27', 'Administrator', 2, 'Menambahkan Trial', 'Data', '', '', ''),
(1127, '2021-11-05 02:27:44', '2021-11-05 02:27:44', 'Administrator', 5, 'Menghapus Data Biodata', 'Biodata', '', '', ''),
(1128, '2021-11-05 02:42:22', '2021-11-05 02:42:22', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1129, '2021-11-05 02:47:23', '2021-11-05 02:47:23', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1130, '2021-11-06 01:00:56', '2021-11-06 01:00:56', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1131, '2021-11-06 01:09:15', '2021-11-06 01:09:15', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1132, '2021-11-06 04:26:44', '2021-11-06 04:26:44', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1133, '2021-11-08 00:33:55', '2021-11-08 00:33:55', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1134, '2021-11-08 03:24:47', '2021-11-08 03:24:47', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1135, '2021-11-08 04:23:41', '2021-11-08 04:23:41', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1136, '2021-11-08 04:46:23', '2021-11-08 04:46:23', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1137, '2021-11-08 04:46:48', '2021-11-08 04:46:48', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1138, '2021-11-08 04:51:16', '2021-11-08 04:51:16', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1139, '2021-11-08 07:24:37', '2021-11-08 07:24:37', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1140, '2021-11-09 00:01:54', '2021-11-09 00:01:54', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1141, '2021-11-09 00:40:52', '2021-11-09 00:40:52', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1142, '2021-11-09 00:43:49', '2021-11-09 00:43:49', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1143, '2021-11-09 00:47:55', '2021-11-09 00:47:55', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1144, '2021-11-09 01:05:06', '2021-11-09 01:05:06', 'Programmer', 0, 'Login Aplikasi', 'Login', '192.168.43', 'Chrome', 'Android'),
(1145, '2021-11-09 01:21:59', '2021-11-09 01:21:59', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1146, '2021-11-09 01:26:19', '2021-11-09 01:26:19', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1147, '2021-11-09 01:26:42', '2021-11-09 01:26:42', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1148, '2021-11-09 01:55:29', '2021-11-09 01:55:29', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1149, '2021-11-09 02:32:07', '2021-11-09 02:32:07', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1150, '2021-11-09 04:24:47', '2021-11-09 04:24:47', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1151, '2021-11-09 07:06:51', '2021-11-09 07:06:51', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1152, '2021-11-10 00:06:52', '2021-11-10 00:06:52', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1153, '2021-11-10 04:59:53', '2021-11-10 04:59:53', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1154, '2021-11-10 07:26:34', '2021-11-10 07:26:34', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1155, '2021-11-10 08:29:11', '2021-11-10 08:29:11', 'Administrator', 0, 'Login Aplikasi', 'Login', '10.5.19.22', 'Chrome', 'Windows 10'),
(1156, '2021-11-11 00:22:27', '2021-11-11 00:22:27', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1157, '2021-11-11 08:44:23', '2021-11-11 08:44:23', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1158, '2021-11-11 08:56:54', '2021-11-11 08:56:54', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1159, '2021-11-12 00:04:52', '2021-11-12 00:04:52', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1160, '2021-11-12 07:02:27', '2021-11-12 07:02:27', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1161, '2021-11-12 07:26:44', '2021-11-12 07:26:44', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1162, '2021-11-12 07:45:46', '2021-11-12 07:45:46', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1163, '2021-11-13 00:11:31', '2021-11-13 00:11:31', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1164, '2021-11-13 00:30:16', '2021-11-13 00:30:16', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1165, '2021-11-13 00:31:19', '2021-11-13 00:31:19', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1166, '2021-11-15 00:22:06', '2021-11-15 00:22:06', 'Programmer', 0, 'Login Aplikasi', 'Login', '10.5.19.22', 'Chrome', 'Windows 10'),
(1167, '2021-11-16 01:12:38', '2021-11-16 01:12:38', 'Administrator', 0, 'Login Aplikasi', 'Login', '10.5.19.44', 'Chrome', 'Windows 10'),
(1168, '2021-11-16 01:13:09', '2021-11-16 01:13:09', 'User', 0, 'Login Aplikasi', 'Login', '10.5.19.44', 'Chrome', 'Windows 10'),
(1169, '2021-11-16 02:17:24', '2021-11-16 02:17:24', 'Programmer', 0, 'Login Aplikasi', 'Login', '10.5.19.44', 'Chrome', 'Windows 10'),
(1170, '2021-11-16 08:18:29', '2021-11-16 08:18:29', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1171, '2021-11-17 08:23:42', '2021-11-17 08:23:42', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1172, '2021-11-18 07:47:26', '2021-11-18 07:47:26', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1173, '2021-11-18 07:48:02', '2021-11-18 07:48:02', 'Programmer', 5, 'Menghapus Data Biodata', 'Biodata', '', '', ''),
(1174, '2021-11-18 08:04:49', '2021-11-18 08:04:49', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1175, '2021-11-19 00:29:44', '2021-11-19 00:29:44', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1176, '2021-11-19 01:13:07', '2021-11-19 01:13:07', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1177, '2021-11-19 07:07:33', '2021-11-19 07:07:33', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1178, '2021-11-20 00:16:26', '2021-11-20 00:16:26', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1179, '2021-11-20 16:29:02', '2021-11-20 16:29:02', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1180, '2021-11-21 11:13:25', '2021-11-21 11:13:25', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1181, '2021-11-21 14:33:52', '2021-11-21 14:33:52', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1182, '2021-11-21 21:05:12', '2021-11-21 21:05:12', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1183, '2021-11-22 00:06:53', '2021-11-22 00:06:53', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1184, '2021-11-22 08:31:02', '2021-11-22 08:31:02', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1185, '2021-11-23 00:15:10', '2021-11-23 00:15:10', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1186, '2021-11-23 01:20:28', '2021-11-23 01:20:28', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1187, '2021-11-23 01:29:00', '2021-11-23 01:29:00', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1188, '2021-11-23 01:32:16', '2021-11-23 01:32:16', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1189, '2021-11-23 01:35:04', '2021-11-23 01:35:04', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1190, '2021-11-23 01:37:59', '2021-11-23 01:37:59', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1191, '2021-11-23 08:19:49', '2021-11-23 08:19:49', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1192, '2021-11-23 08:22:24', '2021-11-23 08:22:24', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1193, '2021-11-23 08:25:19', '2021-11-23 08:25:19', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1194, '2021-11-23 08:45:49', '2021-11-23 08:45:49', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1195, '2021-11-24 00:05:37', '2021-11-24 00:05:37', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1196, '2021-11-24 07:52:14', '2021-11-24 07:52:14', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1197, '2021-11-25 00:16:45', '2021-11-25 00:16:45', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1198, '2021-11-25 08:10:23', '2021-11-25 08:10:23', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1199, '2021-11-26 02:10:18', '2021-11-26 02:10:18', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1200, '2021-11-29 00:01:54', '2021-11-29 00:01:54', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1201, '2021-11-29 01:59:06', '2021-11-29 01:59:06', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1202, '2021-11-29 03:39:38', '2021-11-29 03:39:38', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1203, '2021-11-29 08:46:46', '2021-11-29 08:46:46', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1204, '2021-11-29 08:47:25', '2021-11-29 08:47:25', 'Programmer', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1205, '2021-11-29 14:21:23', '2021-11-29 14:21:23', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1206, '2021-11-30 00:04:41', '2021-11-30 00:04:41', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1207, '2021-11-30 02:37:07', '2021-11-30 02:37:07', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1208, '2021-11-30 04:50:16', '2021-11-30 04:50:16', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1209, '2021-11-30 06:58:04', '2021-11-30 06:58:04', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1210, '2021-12-02 01:15:18', '2021-12-02 01:15:18', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1211, '2021-12-02 01:26:13', '2021-12-02 01:26:13', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1212, '2021-12-02 07:18:57', '2021-12-02 07:18:57', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1213, '2021-12-02 08:47:47', '2021-12-02 08:47:47', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1214, '2021-12-03 00:19:00', '2021-12-03 00:19:00', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1215, '2021-12-03 01:11:38', '2021-12-03 01:11:38', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1216, '2021-12-03 01:37:00', '2021-12-03 01:37:00', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1217, '2021-12-03 01:51:41', '2021-12-03 01:51:41', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1218, '2021-12-03 01:59:32', '2021-12-03 01:59:32', 'Administrator', 0, 'Login Aplikasi', 'Login', '127.0.0.1', 'Firefox', 'Windows 10'),
(1219, '2021-12-03 02:01:11', '2021-12-03 02:01:11', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '127.0.0.1', 'Firefox', 'Windows 10'),
(1220, '2021-12-03 02:31:07', '2021-12-03 02:31:07', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1221, '2021-12-03 07:01:57', '2021-12-03 07:01:57', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1222, '2021-12-03 07:47:03', '2021-12-03 07:47:03', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1223, '2021-12-03 07:47:53', '2021-12-03 07:47:53', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1224, '2021-12-03 08:12:58', '2021-12-03 08:12:58', 'Administrator', 2, 'Menambahkan Trial', 'Data', '', '', ''),
(1225, '2021-12-03 08:13:12', '2021-12-03 08:13:12', 'Administrator', 5, 'Menghapus Data Biodata', 'Biodata', '', '', ''),
(1226, '2021-12-03 09:21:37', '2021-12-03 09:21:37', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1227, '2021-12-03 11:15:16', '2021-12-03 11:15:16', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1228, '2021-12-03 12:23:36', '2021-12-03 12:23:36', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1229, '2021-12-03 12:23:58', '2021-12-03 12:23:58', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1230, '2021-12-03 12:24:29', '2021-12-03 12:24:29', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1231, '2021-12-03 13:02:15', '2021-12-03 13:02:15', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1232, '2021-12-03 13:04:18', '2021-12-03 13:04:18', 'Administrator', 2, 'Melakukan Registrasi', 'Add', '::1', 'Chrome', 'Windows 10'),
(1233, '2022-02-22 03:22:59', '2022-02-22 03:22:59', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1234, '2022-02-22 03:23:04', '2022-02-22 03:23:04', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1235, '2022-02-22 03:24:03', '2022-02-22 03:24:03', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1236, '2022-02-22 03:24:13', '2022-02-22 03:24:13', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1237, '2022-02-23 01:37:09', '2022-02-23 01:37:09', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1238, '2022-02-24 04:21:24', '2022-02-24 04:21:24', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1239, '2022-02-24 04:42:09', '2022-02-24 04:42:09', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1240, '2022-02-24 04:42:13', '2022-02-24 04:42:13', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1241, '2022-02-24 04:43:00', '2022-02-24 04:43:00', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1242, '2022-02-24 04:43:16', '2022-02-24 04:43:16', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1243, '2022-02-24 04:43:22', '2022-02-24 04:43:22', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1244, '2022-02-24 04:43:58', '2022-02-24 04:43:58', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1245, '2022-02-24 04:47:37', '2022-02-24 04:47:37', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1246, '2022-02-24 04:48:16', '2022-02-24 04:48:16', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1247, '2022-02-24 07:21:26', '2022-02-24 07:21:26', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1248, '2022-02-24 07:21:30', '2022-02-24 07:21:30', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1249, '2022-02-24 07:31:37', '2022-02-24 07:31:37', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1250, '2022-02-24 07:32:32', '2022-02-24 07:32:32', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1251, '2022-02-24 07:32:34', '2022-02-24 07:32:34', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1252, '2022-02-24 07:33:16', '2022-02-24 07:33:16', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1253, '2022-02-24 07:34:09', '2022-02-24 07:34:09', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1254, '2022-02-24 08:08:48', '2022-02-24 08:08:48', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1255, '2022-02-24 08:21:41', '2022-02-24 08:21:41', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1256, '2022-02-24 08:25:53', '2022-02-24 08:25:53', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1257, '2022-02-24 08:26:30', '2022-02-24 08:26:30', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1258, '2022-02-24 08:46:02', '2022-02-24 08:46:02', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1259, '2022-02-25 01:19:32', '2022-02-25 01:19:32', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1260, '2022-03-02 00:13:50', '2022-03-02 00:13:50', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1261, '2022-03-02 00:15:45', '2022-03-02 00:15:45', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1262, '2022-03-02 03:10:15', '2022-03-02 03:10:15', 'Administrator', 0, 'Login Aplikasi', 'Login', '10.5.19.64', 'Chrome', 'Windows 10'),
(1263, '2022-03-02 03:11:17', '2022-03-02 03:11:17', 'User', 0, 'Login Aplikasi', 'Login', '10.5.19.64', 'Chrome', 'Windows 10'),
(1264, '2022-03-02 03:11:21', '2022-03-02 03:11:21', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1265, '2022-03-02 03:11:43', '2022-03-02 03:11:43', 'User', 0, 'Login Aplikasi', 'Login', '10.5.19.64', 'Chrome', 'Windows 10'),
(1266, '2022-03-02 07:00:24', '2022-03-02 07:00:24', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1267, '2022-03-02 07:02:44', '2022-03-02 07:02:44', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1268, '2022-03-02 07:25:00', '2022-03-02 07:25:00', 'User', 0, 'Login Aplikasi', 'Login', '10.5.19.64', 'Chrome', 'Windows 10'),
(1269, '2022-03-02 07:43:24', '2022-03-02 07:43:24', 'User', 0, 'Login Aplikasi', 'Login', '10.5.19.95', 'Chrome', 'Windows 10'),
(1270, '2022-03-08 00:36:44', '2022-03-08 00:36:44', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1271, '2022-03-08 01:35:37', '2022-03-08 01:35:37', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1272, '2022-03-08 01:35:44', '2022-03-08 01:35:44', 'Administrator', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1273, '2022-03-08 01:37:37', '2022-03-08 01:37:37', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1274, '2022-03-08 03:05:40', '2022-03-08 03:05:40', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1275, '2022-03-08 07:05:30', '2022-03-08 07:05:30', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1276, '2022-03-08 08:57:19', '2022-03-08 08:57:19', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1277, '2022-03-09 01:00:58', '2022-03-09 01:00:58', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1278, '2022-03-09 01:02:51', '2022-03-09 01:02:51', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1279, '2022-03-09 02:58:12', '2022-03-09 02:58:12', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1280, '2022-03-09 03:15:48', '2022-03-09 03:15:48', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1281, '2022-03-09 07:15:21', '2022-03-09 07:15:21', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1282, '2022-03-10 00:12:54', '2022-03-10 00:12:54', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1283, '2022-03-10 07:04:52', '2022-03-10 07:04:52', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1284, '2022-03-11 01:38:29', '2022-03-11 01:38:29', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1285, '2022-03-11 07:42:06', '2022-03-11 07:42:06', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1286, '2022-03-16 07:19:53', '2022-03-16 07:19:53', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1287, '2022-03-16 07:31:35', '2022-03-16 07:31:35', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1288, '2022-03-17 00:29:02', '2022-03-17 00:29:02', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1289, '2022-03-17 06:59:41', '2022-03-17 06:59:41', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1290, '2022-03-18 00:18:42', '2022-03-18 00:18:42', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1291, '2022-03-18 07:19:38', '2022-03-18 07:19:38', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1292, '2022-03-19 04:40:29', '2022-03-19 04:40:29', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1293, '2022-03-21 07:47:07', '2022-03-21 07:47:07', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1294, '2022-03-21 07:59:37', '2022-03-21 07:59:37', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1295, '2022-03-22 02:06:54', '2022-03-22 02:06:54', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1296, '2022-03-22 04:43:52', '2022-03-22 04:43:52', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1297, '2022-03-22 04:46:27', '2022-03-22 04:46:27', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1298, '2022-03-22 04:46:36', '2022-03-22 04:46:36', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1299, '2022-03-22 04:46:43', '2022-03-22 04:46:43', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1300, '2022-03-22 07:17:32', '2022-03-22 07:17:32', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1301, '2022-03-22 07:25:02', '2022-03-22 07:25:02', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1302, '2022-03-22 07:51:21', '2022-03-22 07:51:21', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1303, '2022-03-22 08:22:41', '2022-03-22 08:22:41', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1304, '2022-03-23 00:23:24', '2022-03-23 00:23:24', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1305, '2022-03-23 01:03:52', '2022-03-23 01:03:52', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1306, '2022-03-23 01:24:34', '2022-03-23 01:24:34', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1307, '2022-03-23 02:12:32', '2022-03-23 02:12:32', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1308, '2022-03-23 07:23:49', '2022-03-23 07:23:49', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1309, '2022-03-23 08:10:17', '2022-03-23 08:10:17', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1310, '2022-03-23 08:25:34', '2022-03-23 08:25:34', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1311, '2022-03-23 08:26:19', '2022-03-23 08:26:19', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1312, '2022-03-28 01:01:45', '2022-03-28 01:01:45', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1313, '2022-03-28 07:04:23', '2022-03-28 07:04:23', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1314, '2022-03-30 00:47:41', '2022-03-30 00:47:41', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1315, '2022-03-30 07:10:29', '2022-03-30 07:10:29', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1316, '2022-03-30 07:26:45', '2022-03-30 07:26:45', 'Programmer', 0, 'Login Aplikasi', 'Login', '10.5.19.64', 'Chrome', 'Windows 10'),
(1317, '2022-04-01 00:22:40', '2022-04-01 00:22:40', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1318, '2022-04-04 02:21:04', '2022-04-04 02:21:04', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1319, '2022-04-04 07:13:15', '2022-04-04 07:13:15', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10');
INSERT INTO `tabel_log` (`log_id`, `log_date`, `log_time`, `log_user`, `log_tipe`, `log_desc`, `log_location`, `ip`, `browser`, `os`) VALUES
(1320, '2022-04-05 00:14:16', '2022-04-05 00:14:16', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1321, '2022-04-05 03:44:43', '2022-04-05 03:44:43', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1322, '2022-04-06 04:53:12', '2022-04-06 04:53:12', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1323, '2022-04-06 08:08:03', '2022-04-06 08:08:03', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1324, '2022-04-06 08:46:38', '2022-04-06 08:46:38', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1325, '2022-04-07 00:42:45', '2022-04-07 00:42:45', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1326, '2022-04-07 02:58:11', '2022-04-07 02:58:11', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1327, '2022-04-07 03:09:33', '2022-04-07 03:09:33', 'Admin', 0, 'Login Aplikasi', 'Login', '10.5.19.14', 'Chrome', 'Windows 10'),
(1328, '2022-04-07 07:15:08', '2022-04-07 07:15:08', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1329, '2022-04-08 00:07:40', '2022-04-08 00:07:40', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1330, '2022-04-08 00:45:40', '2022-04-08 00:45:40', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1331, '2022-04-08 02:02:51', '2022-04-08 02:02:51', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1332, '2022-04-08 04:20:27', '2022-04-08 04:20:27', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1333, '2022-04-08 06:54:51', '2022-04-08 06:54:51', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1334, '2022-04-09 00:04:07', '2022-04-09 00:04:07', 'Programmer', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1335, '2022-04-11 00:04:31', '2022-04-11 00:04:31', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1336, '2022-04-11 06:57:14', '2022-04-11 06:57:14', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1337, '2022-04-11 08:19:11', '2022-04-11 08:19:11', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1338, '2022-04-16 01:57:27', '2022-04-16 01:57:27', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1339, '2022-04-16 01:57:54', '2022-04-16 01:57:54', 'User', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1340, '2022-04-16 02:00:17', '2022-04-16 02:00:17', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1341, '2022-04-16 04:15:49', '2022-04-16 04:15:49', 'Admin', 0, 'Login Aplikasi', 'Login', '10.5.19.10', 'Chrome', 'Windows 10'),
(1342, '2022-04-16 04:16:32', '2022-04-16 04:16:32', 'User', 0, 'Login Aplikasi', 'Login', '10.5.19.10', 'Chrome', 'Windows 10'),
(1343, '2022-04-18 00:05:24', '2022-04-18 00:05:24', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1344, '2022-04-18 00:36:39', '2022-04-18 00:36:39', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1345, '2022-04-18 04:03:12', '2022-04-18 04:03:12', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1346, '2022-04-19 00:03:59', '2022-04-19 00:03:59', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1347, '2022-04-20 00:44:37', '2022-04-20 00:44:37', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1348, '2022-04-20 07:02:41', '2022-04-20 07:02:41', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1349, '2022-04-21 00:21:29', '2022-04-21 00:21:29', 'Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1350, '2022-05-06 00:51:45', '2022-05-06 00:51:45', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1351, '2022-12-05 01:18:16', '2022-12-05 01:18:16', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1352, '2022-12-05 01:20:46', '2022-12-05 01:20:46', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1353, '2022-12-05 01:24:12', '2022-12-05 01:24:12', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1354, '2022-12-05 01:32:24', '2022-12-05 01:32:24', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1355, '2022-12-05 02:16:54', '2022-12-05 02:16:54', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1356, '2022-12-05 02:46:19', '2022-12-05 02:46:19', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1357, '2023-01-28 01:30:11', '2023-01-28 01:30:11', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10'),
(1358, '2023-03-14 04:01:49', '2023-03-14 04:01:49', 'Sistem Admin', 0, 'Login Aplikasi', 'Login', '::1', 'Chrome', 'Windows 10');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `is_main_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_menu`
--

INSERT INTO `tabel_menu` (`id`, `nama_menu`, `link`, `icon`, `is_main_menu`) VALUES
(1, 'Dashboard', 'home', 'fa fa-home', 0),
(7, 'Data Administrasi', '', 'fa fa-table', 90),
(10, 'Registrasi', 'registrasi', 'fa fa-envelope', 0),
(12, 'Registrasi Diterima', 'registrasiditerima', 'fa fa-check', 0),
(13, 'Surat Sample Masuk', 'daftarsample', 'fa fa-list', 78),
(14, 'Antrian Sample', 'daftarantrian', 'fa fa-list-ol', 0),
(15, 'Batch', 'daftarbatch', 'fa fa-table', 0),
(16, 'Konfirmasi Batch', 'Konfirmasibatchanalisa', 'fa fa-table', 90),
(17, 'Analisa', 'analisa', 'fa fa-circle', 5),
(18, 'Laporan', 'laporan', 'fa fa-file', 0),
(19, 'Download File', 'download', 'fa fa-download', 0),
(20, 'Transit File', 'transitfile', 'fa fa-file-excel-o', 0),
(21, 'Tentang Aplikasi', 'info', 'fa fa-info-circle', 0),
(22, 'Backup Database', 'backupdatabase', 'fa fa-database', 0),
(25, 'Supports', 'p', 'fa fa-gear', 0),
(70, 'Data Monitoring Admin', 'dataadmin', 'fa fa-id-card', 0),
(71, 'Biodata', 'biodata', 'fa fa-address-card', 25),
(72, 'User Management', 'user', 'fa fa-id-badge', 25),
(73, 'Menu', 'menu', 'fa fa-list', 25);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_rumah`
--

CREATE TABLE `tabel_rumah` (
  `no` int(4) NOT NULL,
  `id_rumah` varchar(30) NOT NULL,
  `user` text NOT NULL,
  `dept` text DEFAULT NULL,
  `alokasi` varchar(20) DEFAULT NULL,
  `tipe` varchar(4) DEFAULT NULL,
  `tahun_rumah` varchar(4) DEFAULT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_rumah`
--

INSERT INTO `tabel_rumah` (`no`, `id_rumah`, `user`, `dept`, `alokasi`, `tipe`, `tahun_rumah`, `status`) VALUES
(1, '89SLIBE001', 'JP. Caliman', 'Div. Head', 'Staff', 'Staf', '1989', 'Not Available'),
(2, '89SLIBE002', 'Hartono', 'FOES', 'Staff', 'Staf', '1989', 'Not Available'),
(3, '10SLIBE003', 'H. Acmad Wahyu S', 'CROP', 'Staff', 'Staf', '2010', 'Not Available'),
(4, '89SLIBE004', 'Nidia Mindiyarti', 'DIAD', 'Staff', 'Staf', '1989', 'Not Available'),
(5, '10SLIBE005', 'Moh. Naim', 'CROP', 'Staff', 'Staf', '2010', 'Not Available'),
(6, '89SLIBE006', 'Chyntia Novianti+Elfrin N.A+Eka L', 'FOES', 'Staff', 'Staf', '1989', 'Not Available'),
(7, '03SLIBE007', 'Yong Yit Yuan', 'BREED', 'Staff', 'Staf', '2003', 'Not Available'),
(8, '03SLIBE008', 'Fahri Arief Siregar', 'AGRO', 'Staff', 'Staf', '2003', 'Not Available'),
(9, '95SLIBE009', 'Suhardi', 'AGRO', 'Staff', 'Staf', '1995', 'Not Available'),
(10, '95SLIBE010', 'Sri Listianingsih', 'AGRO', 'Staff', 'Staf', '1995', 'Not Available'),
(11, '95SLIBE011', 'Guest House 2', 'ADMI', 'Staff', 'Staf', '1995', 'Not Available'),
(12, '10SLIBE012', 'Sudarno', 'LABO', 'Staff', 'Staf', '2010', 'Not Available'),
(13, '10SLIBE013', 'Medi Darminto ', 'TASK', 'Staff', 'Staf', '2010', 'Not Available'),
(14, '10SLIBE014', 'Guest House 1', 'ADMI', 'Staff', 'Staf', '2010', 'Not Available'),
(15, '10SLIBE015', 'Pujianto', 'AGRO', 'Staff', 'Staf', '2010', 'Not Available'),
(16, '06SLIBE016', 'Putri A.W', 'DIAD', 'Staff', 'Staf', '2006', 'Not Available'),
(17, '06SLIBE017', 'Jassica PD+Wilujeng+Felia', 'SUST', 'Staff', 'Staf', '2006', 'Not Available'),
(18, '95SLIBE018', 'Hardianang SA', 'ADMI', 'Staff', 'Staf', '1995', 'Not Available'),
(19, '06SLIBE019', 'Yendra Pratama S', 'CROP', 'Staff', 'Staf', '2006', 'Not Available'),
(20, '06SLIBE020', 'Arnolly S Ardi', 'BREED', 'Staff', 'Staf', '2006', 'Not Available'),
(21, '89SLIBE021', 'Rus Eva M', 'ADMI', 'Staff', 'Staf', '1989', 'Not Available'),
(22, '89SLIBE022', 'Samsul Muarif+Fauzi L', 'FOES', 'Staff', 'Staf', '1989', 'Not Available'),
(23, '89SLIBE023', 'Anisa Putri', 'LABO', 'Staff', 'Staf', '1989', 'Not Available'),
(24, '89SLIBE024', 'Maria Prasasti D', 'AGRO', 'Staff', 'Staf', '1989', 'Not Available'),
(25, '89SLIBE025', 'Rita Marlina', 'LABO', 'Staff', 'Staf', '1989', 'Not Available'),
(26, '14SLIBE026', 'Divo Dharma S ', 'DIAD', 'Staff', 'Staf', '2014', 'Not Available'),
(27, '14SLIBE027', 'Ribka Sionita T', 'SUST', 'Staff', 'Staf', '2014', 'Not Available'),
(28, '14SLIBE028', 'Sri Imriani', 'BREED', 'Staff', 'Staf', '2014', 'Not Available'),
(29, '11SSKTZ029', 'Ikrar Nusantara P+Bagas Adhi K', 'SUST', 'Staff', 'Staf', '2011', 'Not Available'),
(30, '11SSKTZ030', 'Pramusita Yoga Daniswara', 'FOES', 'Staff', 'Staf', '2011', 'Not Available'),
(31, '11SSKTZ031', 'Andreas Dwi A ', 'CROP', 'Staff', 'Staf', '2011', 'Not Available'),
(32, '11SSKTZ032', 'T. Dzulfikar S Rambe', 'CROP', 'Staff', 'Staf', '2011', 'Not Available'),
(33, '12SSKTZ033', 'Dedi Purnomo', 'SUST', 'Staff', 'Staf', '2012', 'Not Available'),
(34, '12SSKTZ034', 'Adin Afiyata', 'BREED', 'Staff', 'Staf', '2012', 'Not Available'),
(35, '12SSRKE035', 'Free Housing', '', 'Staff', 'Staf', '2012', 'Available'),
(36, '12SSRKE036', 'Syaiful Fahmi', 'CROP', 'Staff', 'Staf', '2012', 'Not Available'),
(37, '12SSRKE037', 'Hasbullah', 'AGRO', 'Staff', 'Staf', '2012', 'Not Available'),
(38, '12SSRKE038', 'Free Housing', '', 'Staff', 'Staf', '2012', 'Available'),
(39, '12SSRKE039', 'Dias Kandias', 'LABO', 'Staff', 'Staf', '2012', 'Not Available'),
(40, '12SSRKE040', 'Free Housing', '', 'Staff', 'Staf', '2012', 'Available'),
(41, '14SSRKE041', 'Anak Agung ', 'SUST', 'Staff', 'Staf', '2014', 'Not Available'),
(42, '14SSRKE042', 'Fendra', 'DIAD', 'Staff', 'Staf', '2014', 'Not Available'),
(43, '14SSRKE043', 'Egyfaldi ', 'LABO', 'Staff', 'Staf', '2014', 'Not Available'),
(44, '19SSRKE044', 'Bram Hadiwijaya', 'SUST', 'Staff', 'Staf', '2019', 'Not Available'),
(45, '19SSRKE045', 'Doni Artanto R', 'AGRO', 'Staff', 'Staf', '2019', 'Not Available'),
(46, '19SSRKE046', 'Abednego Simamora', 'LABO', 'Staff', 'Staf', '2019', 'Not Available'),
(47, '19SSRKE047', 'Tauvik Risman', 'LABO', 'Staff', 'Staf', '2019', 'Not Available'),
(48, '19SSRKE048', 'Deni Reflianto Manik', 'LABO', 'Staff', 'Staf', '2019', 'Not Available'),
(49, '19SSRKE049', 'Rizky Anjal', 'BREED', 'Staff', 'Staf', '2019', 'Not Available'),
(50, '19SSRKE050', 'Free Housing', '', 'Staff', 'Staf', '2019', 'Available'),
(51, '19SSRKE051', 'Andria Rezki', 'DIAD', 'Staff', 'Staf', '2019', 'Not Available'),
(52, '15SLIBE052', 'Reni SK', 'AGRO', 'Staff', 'Staf', '2015', 'Not Available'),
(53, '15SLIBE053', 'Fitriani', 'LABO', 'Staff', 'Staf', '2015', 'Not Available'),
(54, '15SLIBE054', 'Emmanuella Lamade', '', 'Staff', 'Staf', '2015', 'Not Available'),
(55, '15SLIBE055', 'Free Housing', '', 'Staff', 'Staf', '2015', 'Available'),
(56, '15SLIBE056', 'Rudy Lukman', 'BREED', 'Staff', 'Staf', '2015', 'Not Available'),
(57, '02NSLIBE001', 'Mulyadi Harahap', 'FOES', 'Non Staff', 'G1', '2002', 'Not Available'),
(58, '07NSLIBE002', 'Lusiana', 'ADMI', 'Non Staff', 'G2', '2007', 'Not Available'),
(59, '07NSLIBE003', 'Riko Saputra', 'BREED', 'Non Staff', 'G2', '2007', 'Not Available'),
(60, '02NSLIBE004', 'Ali Imron', 'CROP', 'Non Staff', 'G1', '2002', 'Not Available'),
(61, '06NSLIBE005', 'Nurhabibah Siregar ', 'AGRO', 'Non Staff', 'G1', '2006', 'Not Available'),
(62, '06NSLIBE006', 'Anggraini eka Sari P', 'AGRO', 'Non Staff', 'G1', '2006', 'Not Available'),
(63, '02NSLIBE007', 'Fery Adianta', 'ADMI', 'Non Staff', 'G2', '2002', 'Not Available'),
(64, '02NSLIBE008', 'Ilham Saputra', 'LABO', 'Non Staff', 'G1', '2002', 'Not Available'),
(65, '06NSLIBE009', 'Fransisca Dewi', 'DIAD', 'Non Staff', 'G2', '2006', 'Not Available'),
(66, '06NSLIBE010', 'Darius Nazara', 'ADMI', 'Non Staff', 'G2', '2006', 'Not Available'),
(67, '06NSLIBE011', 'Hendra Fatmi', 'BREED', 'Non Staff', 'G2', '2006', 'Not Available'),
(68, '06NSLIBE012', 'Ricky Saragih', 'LABO', 'Non Staff', 'G2', '2006', 'Not Available'),
(69, '02NSLIBE013', 'Misran', 'ADMI', 'Non Staff', 'G2', '2002', 'Not Available'),
(70, '02NSLIBE014', 'Urnawisman', 'LABO', 'Non Staff', 'G2', '2002', 'Not Available'),
(71, '02NSLIBE015', 'Bambang Sugiarto', 'CROP', 'Non Staff', 'G2', '2002', 'Not Available'),
(72, '02NSLIBE016', 'Choirul Ummah', 'AGRO', 'Non Staff', 'G2', '2002', 'Not Available'),
(73, '06NSLIBE017', 'Suriadi', 'CROP', 'Non Staff', 'G1', '2006', 'Not Available'),
(74, '06NSLIBE018', 'Free', '', 'Non Staff', 'G1', '2006', 'Available'),
(75, '02NSLIBE019', 'Edi Suryanto', 'LABO', 'Non Staff', 'G2', '2002', 'Not Available'),
(76, '02NSLIBE020', 'Tri Sunardi', 'FOES', 'Non Staff', 'G2', '2002', 'Not Available'),
(77, '02NSLIBE021', 'Zulkifli', 'CROP', 'Non Staff', 'G2', '2002', 'Not Available'),
(78, '02NSLIBE022', 'Syarifuddin', 'LABO', 'Non Staff', 'G2', '2002', 'Not Available'),
(79, '02NSLIBE023', 'Teddy Hardian', 'FOES', 'Non Staff', 'G2', '2002', 'Not Available'),
(80, '02NSLIBE024', 'Harun Yusuf Santoso', 'AGRO', 'Non Staff', 'G2', '2002', 'Not Available'),
(81, '02NSLIBE025', 'Hermita Naibaho ', 'ADMI', 'Non Staff', 'G2', '2002', 'Not Available'),
(82, '02NSLIBE026', 'Arbi Wahyu ', 'CROP', 'Non Staff', 'G2', '2002', 'Not Available'),
(83, '02NSLIBE027', 'Surya Darma', 'AGRO', 'Non Staff', 'G2', '2002', 'Not Available'),
(84, '02NSLIBE028', 'Bektya Setyawati', 'FOES', 'Non Staff', 'G2', '2002', 'Not Available'),
(85, '02NSLIBE029', 'Nurizal', 'DIAD', 'Non Staff', 'G2', '2002', 'Not Available'),
(86, '02NSLIBE030', 'M. Mulia Ilham', 'AGRO', 'Non Staff', 'G2', '2002', 'Not Available'),
(87, '02NSLIBE031', 'Agus Darmawanto', 'CROP', 'Non Staff', 'G2', '2002', 'Not Available'),
(88, '02NSLIBE032', 'Sutriono', 'DIAD', 'Non Staff', 'G2', '2002', 'Not Available'),
(89, '07NSLIBE033', 'Misyani', 'FOES', 'Non Staff', 'G1', '2007', 'Not Available'),
(90, '06NSLIBE034', 'Eka Syahputra', 'LABO', 'Non Staff', 'G2', '2006', 'Not Available'),
(91, '06NSLIBE035', 'M. Ihsan', 'FOES', 'Non Staff', 'G2', '2006', 'Not Available'),
(92, '06NSLIBE036', 'Rendi ', 'FOES', 'Non Staff', 'G2', '2006', 'Not Available'),
(93, '06NSLIBE037', 'Memo Krisman PW', 'CROP', 'Non Staff', 'G2', '2006', 'Not Available'),
(94, '07NSLIBE038', 'M. Ali Sofian', 'ADMI', 'Non Staff', 'G2', '2007', 'Not Available'),
(95, '07NSLIBE039', 'Misnawati Sidebang', 'DIAD', 'Non Staff', 'G2', '2007', 'Not Available'),
(96, '07NSLIBE040', 'Effendi', 'ADMI', 'Non Staff', 'G2', '2007', 'Not Available'),
(97, '07NSLIBE041', 'Adi Syahputra', 'AGRO', 'Non Staff', 'G2', '2007', 'Not Available'),
(98, '19NSLIBE042', 'Suratman', 'LABO', 'Non Staff', 'G2', '2019', 'Not Available'),
(99, '19NSLIBE043', 'Ramadan', 'CROP', 'Non Staff', 'G2', '2019', 'Not Available'),
(100, '19NSLIBE044', 'Jona Handoko', 'BREED', 'Non Staff', 'G1', '2019', 'Not Available'),
(101, '19NSLIBE045', 'Edi syahputra Lab', 'LABO', 'Non Staff', 'G1', '2019', 'Not Available'),
(102, '19NSLIBE046', 'Megawati', 'LABO', 'Non Staff', 'G1', '2019', 'Not Available'),
(103, '19NSLIBE047', 'Heriyanto', 'LABO', 'Non Staff', 'G1', '2019', 'Not Available'),
(104, '19NSLIBE048', 'Wira Pranata', 'CROP', 'Non Staff', 'G2', '2019', 'Not Available'),
(105, '19NSLIBE049', 'Tri A.Rivaldi', 'CROP', 'Non Staff', 'G2', '2019', 'Not Available'),
(106, '19NSLIBE050', 'Mulyadi', 'BREED', 'Non Staff', 'G2', '2019', 'Not Available'),
(107, '19NSLIBE051', 'M. Taufik Akbar', 'DIAD', 'Non Staff', 'G2', '2019', 'Not Available'),
(108, '19NSLIBE052', 'Santoso', 'LABO', 'Non Staff', 'G2', '2019', 'Not Available'),
(109, '19NSLIBE053', 'Rahmad S', 'CROP', 'Non Staff', 'G2', '2019', 'Not Available'),
(110, '19NSLIBE054', 'M. Arpin Saputra', 'AGRO', 'Non Staff', 'G2', '2019', 'Not Available'),
(111, '19NSLIBE055', 'K. Iksan', 'LABO', 'Non Staff', 'G2', '2019', 'Not Available'),
(112, '19NSLIBE056', 'Surya Wibowo', 'AGRO', 'Non Staff', 'G2', '2019', 'Not Available'),
(113, '19NSLIBE057', 'Samsul Bahri Lubis', 'CROP', 'Non Staff', 'G2', '2019', 'Not Available'),
(114, '19NSLIBE058', 'Ari Kurniawan', 'CROP', 'Non Staff', 'G2', '2019', 'Not Available'),
(115, '19NSLIBE059', 'Risky Hamdani S', 'LABO', 'Non Staff', 'G2', '2019', 'Not Available'),
(116, '19NSLIBE060', 'M. Asrofi', 'CROP', 'Non Staff', 'G2', '2019', 'Not Available'),
(117, '19NSLIBE061', 'Juli Saputra', 'DIAD', 'Non Staff', 'G2', '2019', 'Not Available'),
(118, '19NSLIBE062', 'Rio Hanafi', 'CROP', 'Non Staff', 'G2', '2019', 'Not Available'),
(119, '19NSLIBE063', 'Idris Sardi', 'CROP', 'Non Staff', 'G2', '2019', 'Not Available'),
(120, '19NSLIBE064', 'M. Rahmat', 'DIAD', 'Non Staff', 'G2', '2019', 'Not Available'),
(121, '19NSLIBE065', 'M. Deni', 'ADMI', 'Non Staff', 'G2', '2019', 'Not Available'),
(122, '18NSLIBE066', 'Adhi Nugroho', 'DIAD', 'Non Staff', 'G1', '2018', 'Not Available'),
(123, '18NSLIBE067', 'Sarima Ester', 'CROP', 'Non Staff', 'G1', '2018', 'Not Available'),
(124, '18NSLIBE068', 'Samsul Hadi', 'LABO', 'Non Staff', 'G1', '2018', 'Not Available'),
(125, '18NSLIBE069', 'Lalu Samsul Hakim', 'ADMI', 'Non Staff', 'G1', '2018', 'Not Available'),
(126, '18NSLIBE070', 'Erwin Nugraha S', 'AGRO', 'Non Staff', 'G2', '2018', 'Not Available'),
(127, '18NSLIBE071', 'Siswanto', 'ADMI', 'Non Staff', 'G2', '2018', 'Not Available'),
(128, '18NSLIBE072', 'Adam Syahri', 'LABO', 'Non Staff', 'G2', '2018', 'Not Available'),
(129, '18NSLIBE073', 'Susi Feronika Silitonga', 'ADMI', 'Non Staff', 'G2', '2018', 'Not Available'),
(130, '18NSLIBE074', 'Nimrot Sitohang', 'ADMI', 'Non Staff', 'G2', '2018', 'Not Available'),
(131, '18NSLIBE075', 'Istefanus', 'AGRO', 'Non Staff', 'G2', '2018', 'Not Available'),
(132, '18NSLIBE076', 'Agus Triono', 'CROP', 'Non Staff', 'G2', '2018', 'Not Available'),
(133, '18NSLIBE077', 'Priyanto', 'LABO', 'Non Staff', 'G2', '2018', 'Not Available'),
(134, '18NSLIBE078', 'Sijhon', 'ADMI', 'Non Staff', 'G2', '2018', 'Not Available'),
(135, '18NSLIBE079', 'Zul Supandi', 'ADMI', 'Non Staff', 'G2', '2018', 'Not Available'),
(136, '18NSLIBE080', 'Roby Yandani Rul', 'AGRO', 'Non Staff', 'G2', '2018', 'Not Available'),
(137, '18NSLIBE081', 'Teguh Harapan', 'DIAD', 'Non Staff', 'G2', '2018', 'Not Available'),
(138, '18NSLIBE082', 'Bengki Gustiawan', 'AGRO', 'Non Staff', 'G2', '2018', 'Not Available'),
(139, '18NSLIBE083', 'Lara Septiawan ', 'LABO', 'Non Staff', 'G2', '2018', 'Not Available'),
(140, '18NSLIBE084', 'Nurlela', 'DIAD', 'Non Staff', 'G2', '2018', 'Not Available'),
(141, '18NSLIBE085', 'Dedek Subhan', 'AGRO', 'Non Staff', 'G2', '2018', 'Not Available'),
(142, '18NSLIBE086', 'Ariadi', 'LABO', 'Non Staff', 'G2', '2018', 'Not Available'),
(143, '18NSLIBE087', 'Free', '', 'Non Staff', 'G2', '2018', 'Available'),
(144, '18NSLIBE088', 'Supriono', 'ADMI', 'Non Staff', 'G2', '2018', 'Not Available'),
(145, '18NSLIBE089', 'Fitria Putra', 'LABO', 'Non Staff', 'G2', '2018', 'Not Available'),
(146, '18NSLIBE090', 'Sriwahyudi', 'CROP', 'Non Staff', 'G2', '2018', 'Not Available'),
(147, '18NSLIBE091', 'Free', '', 'Non Staff', 'G2', '2018', 'Available'),
(148, '18NSLIBE092', 'Sunardi', 'FOES', 'Non Staff', 'G2', '2018', 'Not Available'),
(149, '18NSLIBE093', 'Safrizal', 'ADMI', 'Non Staff', 'G2', '2018', 'Not Available'),
(150, '14NSLIBE094', 'Suwandi', 'CROP', 'Non Staff', 'G2', '2014', 'Not Available'),
(151, '14NSLIBE095', 'Beni Ramadan', 'ADMI', 'Non Staff', 'G2', '2014', 'Not Available'),
(152, '14NSLIBE096', 'Slamet Budiman', 'FOES', 'Non Staff', 'G2', '2014', 'Not Available'),
(153, '14NSLIBE097', 'Samsul Arifin', 'FOES', 'Non Staff', 'G2', '2014', 'Not Available'),
(154, '14NSLIBE098', 'Dedek Airul', 'ADMI', 'Non Staff', 'G2', '2014', 'Not Available'),
(155, '14NSLIBE099', 'Suhandoko', 'CROP', 'Non Staff', 'G2', '2014', 'Not Available'),
(156, '14NSLIBE100', 'Dina Rosmaria', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(157, '14NSLIBE101', 'Nurazis ', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(158, '14NSLIBE102', 'Agus Hermanto', 'FOES', 'Non Staff', 'G2', '2014', 'Not Available'),
(159, '14NSLIBE103', 'Free', '', 'Non Staff', 'G2', '2014', 'Available'),
(160, '14NSLIBE104', 'Al Fajri', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(161, '14NSLIBE105', 'Ahmad Saiful Anwar', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(162, '14NSLIBE106', 'Erfika', 'BREED', 'Non Staff', 'G2', '2014', 'Not Available'),
(163, '14NSLIBE107', 'Sunarto', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(164, '14NSLIBE108', 'Sudirman', 'DIAD', 'Non Staff', 'G2', '2014', 'Not Available'),
(165, '14NSLIBE109', 'Pratiwi', 'DIAD', 'Non Staff', 'G2', '2014', 'Not Available'),
(166, '14NSLIBE110', 'Haris Suharyadi', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(167, '14NSLIBE111', 'Suhardi', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(168, '14NSLIBE112', 'Ega Rizki', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(169, '14NSLIBE113', 'Febrien Saukani', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(170, '14NSLIBE114', 'Solia', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(171, '14NSLIBE115', 'Juandi', 'FOES', 'Non Staff', 'G2', '2014', 'Not Available'),
(172, '14NSLIBE116', 'Ali Imron', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(173, '14NSLIBE117', 'Linus Sembiring', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(174, '14NSLIBE118', 'Dest Purwanto', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(175, '11NSLIBE119', 'Tri Mulyani', 'LABO', 'Non Staff', 'G2', '2011', 'Not Available'),
(176, '14NSLIBE120', 'Yabidi', 'CROP', 'Non Staff', 'G2', '2014', 'Not Available'),
(177, '14NSLIBE121', 'Ahmad Taufik', 'CROP', 'Non Staff', 'G2', '2014', 'Not Available'),
(178, '14NSLIBE122', 'Sarifatul Husna', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(179, '14NSLIBE123', 'Anugrah Ramadan', 'CROP', 'Non Staff', 'G2', '2014', 'Not Available'),
(180, '14NSLIBE124', 'Kurniadi', 'CROP', 'Non Staff', 'G2', '2014', 'Not Available'),
(181, '14NSLIBE125', 'Syahri mustofa', 'ADMI', 'Non Staff', 'G2', '2014', 'Not Available'),
(182, '14NSLIBE126', 'Yakiman', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(183, '14NSLIBE127', 'Dodiwan', 'ADMI', 'Non Staff', 'G2', '2014', 'Not Available'),
(184, '14NSLIBE128', 'Rio Muhajirin', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(185, '14NSLIBE129', 'Wawan Handika', 'CROP', 'Non Staff', 'G2', '2014', 'Not Available'),
(186, '14NSLIBE130', 'Tahrirul', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(187, '14NSLIBE131', 'Suryono', 'BREED', 'Non Staff', 'G2', '2014', 'Not Available'),
(188, '14NSLIBE132', 'M. Irsyad ', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(189, '14NSLIBE133', 'Erni', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(190, '14NSLIBE134', 'Nurhadi', 'AGRO', 'Non Staff', 'G2', '2014', 'Not Available'),
(191, '14NSLIBE135', 'Rosmaniar ', 'CROP', 'Non Staff', 'G2', '2014', 'Not Available'),
(192, '14NSLIBE136', 'Ade Kurniawan', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(193, '14NSLIBE137', 'Widia Lestari', 'LABO', 'Non Staff', 'G2', '2014', 'Not Available'),
(194, '14NSLIBE138', 'Free', '', 'Non Staff', 'G2', '2014', 'Available'),
(195, '14NSLIBE139', 'Surya Darma', 'CROP', 'Non Staff', 'G2', '2014', 'Not Available'),
(196, '18NSLIBE140', 'Tumirin', 'LABO', 'Non Staff', 'G2', '2018', 'Not Available'),
(197, '18NSLIBE141', 'Agung', 'DIAD', 'Non Staff', 'G2', '2018', 'Not Available'),
(198, '18NSLIBE142', 'Supriadi', 'AGRO', 'Non Staff', 'G2', '2018', 'Not Available'),
(199, '18NSLIBE143', 'Ikhwan Ansyari', 'DIAD', 'Non Staff', 'G2', '2018', 'Not Available'),
(200, '06NSLIBE144', 'Sulaiman ', 'FOES', 'Non Staff', 'G2', '2006', 'Not Available'),
(201, '06NSLIBE145', 'Didit Kurniawan', 'AGRO', 'Non Staff', 'G2', '2006', 'Not Available'),
(202, '02NSLIBE146', 'Hendri Budi', 'AGRO', 'Non Staff', 'G1', '2002', 'Not Available'),
(203, '02NSLIBE147', 'Yusriadi', 'FOES', 'Non Staff', 'G2', '2002', 'Not Available'),
(204, '02NSLIBE148', 'Kuswoyo', 'AGRO', 'Non Staff', 'G2', '2002', 'Not Available'),
(205, '02NSLIBE149', 'Trisman', 'DIAD', 'Non Staff', 'G1', '2002', 'Not Available'),
(206, '13NSLIBE150', 'Aditya ', 'AGRO', 'Non Staff', 'G2', '2013', 'Not Available'),
(207, '13NSLIBE151', 'EMA', 'AGRO', 'Non Staff', 'G2', '2013', 'Not Available'),
(208, '13NSLIBE152', 'RINI LESTARI', 'AGRO', 'Non Staff', 'G2', '2013', 'Not Available'),
(209, '13NSLIBE153', 'SAMSUDIN', 'CROP', 'Non Staff', 'G2', '2013', 'Not Available'),
(210, '13NSLIBE154', 'WIWIN', 'LABO', 'Non Staff', 'G2', '2013', 'Not Available'),
(211, '13NSLIBE155', 'EDI RIANA ', 'BREED', 'Non Staff', 'G2', '2013', 'Not Available'),
(212, '13NSLIBE156', 'SISPREDI', 'AGRO', 'Non Staff', 'G2', '2013', 'Not Available'),
(213, '13NSLIBE157', 'BAYU PUTRA', 'AGRO', 'Non Staff', 'G2', '2013', 'Not Available'),
(214, '13NSLIBE158', 'WAHYU ARI P', 'LABO', 'Non Staff', 'G2', '2013', 'Not Available'),
(215, '13NSLIBE159', 'RIKI ANDIKA', 'LABO', 'Non Staff', 'G2', '2013', 'Not Available'),
(216, '13NSLIBE160', 'ARMAN', 'AGRO', 'Non Staff', 'G2', '2013', 'Not Available'),
(217, '13NSLIBE161', 'M. LUTFI', 'CROP', 'Non Staff', 'G2', '2013', 'Not Available'),
(218, '13NSLIBE162', 'LOOK CAN P.', 'CROP', 'Non Staff', 'G2', '2013', 'Not Available'),
(219, '12NSLIBE163', 'RUGIOTO', 'BREED', 'Non Staff', 'G1', '2012', 'Not Available'),
(220, '12NSLIBE164', 'GUNTUR ', 'AGRO', 'Non Staff', 'G1', '2012', 'Not Available'),
(221, '12NSLIBE165', 'BUNGARAN', 'DIAD', 'Non Staff', 'G1', '2012', 'Not Available'),
(222, '12NSLIBE166', 'EMELIA', 'CROP', 'Non Staff', 'G1', '2012', 'Not Available'),
(223, '12NSLIBE167', 'SUPRIADI', 'AGRO', 'Non Staff', 'G1', '2012', 'Not Available'),
(224, '13NSLIBE168', 'M. ROHMAN', 'CROP', 'Non Staff', 'G2', '2013', 'Not Available'),
(225, '13NSLIBE169', 'SYAMSUL Habilah', 'CROP', 'Non Staff', 'G2', '2013', 'Not Available'),
(226, '13NSLIBE170', 'ERY ISWANTO', 'ADMI', 'Non Staff', 'G2', '2013', 'Not Available'),
(227, '13NSLIBE171', 'YUSUF ISKANDAR', 'LABO', 'Non Staff', 'G2', '2013', 'Not Available'),
(228, '13NSLIBE172', 'SUMANTO', 'FOES', 'Non Staff', 'G2', '2013', 'Not Available'),
(229, '13NSLIBE173', 'WILI SUHANDA', 'AGRO', 'Non Staff', 'G2', '2013', 'Not Available'),
(230, '13NSLIBE174', 'LUSI FEBRIKA', 'LABO', 'Non Staff', 'G2', '2013', 'Not Available'),
(231, '13NSLIBE175', 'DELI SETIAWAN', 'DIAD', 'Non Staff', 'G2', '2013', 'Not Available'),
(232, '13NSLIBE176', 'REZKY F ', 'DIAD', 'Non Staff', 'G2', '2013', 'Not Available'),
(233, '13NSLIBE177', 'AGUS PRIONO', 'AGRO', 'Non Staff', 'G2', '2013', 'Not Available');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biodata`
--

CREATE TABLE `tbl_biodata` (
  `id` int(12) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `section` varchar(100) NOT NULL,
  `department` varchar(20) NOT NULL,
  `a` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_biodata`
--

INSERT INTO `tbl_biodata` (`id`, `nama`, `nik`, `section`, `department`, `a`) VALUES
(259, 'J.P. Caliman', '07001064', 'Div. Head', 'Management', ''),
(260, 'Rus Eva M', '02000199', 'Secretary & Documentation', 'Management', ''),
(261, 'Hardianang Sapto Akbar', '20000483', 'Admin & Accounting Asst.', 'Management', ''),
(262, 'Putri Aulia Wahyuningsih', '13000522', 'Asst. Biometry & Database', 'Management', ''),
(263, 'Medi Darminto', '96000191', 'Task Force Sect. Head', 'Management', ''),
(264, 'Tauvik Risman', '99000463', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(265, 'Sudarno', '12002254', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(266, 'Abednego L. Simamora', '17000823', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(267, 'Fitriani', '06000767', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(268, 'Dias Kandias', '14001338', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(269, 'Egyfaldi Biamenta', '14001388', 'Analytical Laboratory Assistant - LIBZ', 'Laboratory', ''),
(270, 'Deni Reflianto Manik', '15001623', 'Analitycal Laboratory Assistant-LIBZ', 'Laboratory', ''),
(271, 'Anisa Putri', '21000087', 'Analitycal Laboratory Assistant-LIBZ', 'Laboratory', ''),
(272, 'Wiro Naibaho', '19002199', 'Analytical Laboratory Assistant - Bogor', 'Laboratory', ''),
(273, 'Hermawani Girsang', '05000643', 'Analitycal Laboratory Assistant-PHLE', 'Laboratory', ''),
(274, 'Fajar', '10000875', 'Analitycal Laboratory Assistant-SMSE', 'Laboratory', ''),
(275, 'Syahrul Efendi S', '04000384', 'Analitycal Laboratory Assistant-BAME', 'Laboratory', ''),
(276, 'Yudi Yustira', '20001262', 'Analitycal Laboratory Assistant-Kalbar/PKWT', 'Laboratory', ''),
(277, 'M. Fajriansyah', '08000900', 'Analitycal Laboratory Assistant-SRGE', 'Laboratory', ''),
(278, 'Rita Marlina', '90000083', 'QC Control Lab.', 'Laboratory', ''),
(279, 'Divo Dharma Silalahi', '09000720', 'Dept. Head DIAD', 'DIAD', ''),
(280, 'Rusmita', '18000148', 'Biometry &  Database Asst.-SMSE', 'DIAD', ''),
(281, 'Dwivayani Sentosa', '17001171', 'Biometry &  Database Asst.', 'DIAD', ''),
(282, 'Adindha Surya Nugraha', '20000533', 'GIS Asst.', 'DIAD', ''),
(283, 'Andria Rezki', '20000748', 'BDB Asst', 'DIAD', ''),
(284, 'Didi Adisaputro', '21000503', 'Climatology Asst.', 'DIAD', ''),
(285, 'Yong Yit Yuan', '06000686', 'Plant Breeding Dept Head', 'Plant Breeding', ''),
(286, 'Arnolly S. Ardi', '10000291', 'Breeding & Selection Assistant', 'Plant Breeding', ''),
(287, 'Sri Imriani Pulungan', '19000950', 'Breeding & Selection Assistant', 'Plant Breeding', ''),
(288, 'Zikril Illahi', '17000126', 'Breeding & Selection Assistant-PHLE', 'Plant Breeding', ''),
(289, 'Adin Afiyata', '13001639', 'Molecular Assisted Breeding Asst.', 'Plant Breeding', ''),
(290, 'Rizki Anjal Puji Nugroho', '19001435', 'Breeding & Selection Assistant', 'Plant Breeding', ''),
(291, 'Mohd. Naim', '04000364', 'Crop Protection Dept. Head', 'Crop Protection', ''),
(293, 'Yendra Pratama Setiawan', '17002062', 'Asst. Pest & Entomology', 'Crop Protection', ''),
(294, 'Andreas Dwi A', '09000518', 'Asst. Pest & Entomology', 'Crop Protection', ''),
(295, 'Achmad Wahyu S.', '93000033', 'Phytopatology Sect. Head', 'Crop Protection', ''),
(296, 'Rizky Rajabillah Purwoko', '16001359', 'Asst. Phytopatology', 'Crop Protection', ''),
(297, 'Giono', '07000389', 'Asst. Phytopatology-PHLE', 'Crop Protection', ''),
(298, 'Tuani Dzulfikar S. R', '09000796', 'Weed Control Sect. Head', 'Crop Protection', ''),
(299, 'Pujianto', '98000214', 'Agronomy Dept Head ', 'Agronomy', ''),
(300, 'Hasbullah', '17000116', ' Mineral Nutrition Sect. Head', 'Agronomy', ''),
(301, 'Indra Permana', '20000826', ' Mineral Nutrition Asst.', 'Agronomy', ''),
(302, 'Maria Prasasti D', '08000406', ' Mineral Nutrition Asst.', 'Agronomy', ''),
(303, 'Sri Listyaningsih', '08001065', ' Mineral Nutrition Asst.', 'Agronomy', ''),
(304, 'Fahri Arif Siregar', '97000328', 'Agrophysiology Sect. Head', 'Agronomy', ''),
(305, 'Reni Subawati K', '03000285', 'Agrophysiology Assisstant', 'Agronomy', ''),
(306, 'Dede Yudo Kurniawan', '18003174', 'Agrophysiology Assisstant', 'Agronomy', ''),
(307, 'Doni Artanto R', '08000775', 'Asst. Research Agronomy', 'Agronomy', ''),
(308, 'Suhardi', '07001020', 'Soil Fertility Sect. Head', 'Agronomy', ''),
(309, 'Resti Wahyuningsih', '11001902', 'Soil Fertility Asst.', 'Agronomy', ''),
(310, 'Ikrar Nusantara Putra', '14001219', 'Soil Fertility Asst.', 'Agronomy', ''),
(311, 'Anak Agung K. A', '12000894', 'Asst. Ecological Services', 'Crop Protection', ''),
(312, 'Ribka Sionita T', '07001151', 'Asst. Pollution Risk Control', 'Agronomy', ''),
(313, 'Jassica Prajna Dewi', '17002519', 'Asst. PRC', 'Sustainable Oil Palm', ''),
(314, 'Bram Hadiwijaya', '10000107', 'Asst. Carbon & Water Accounting', 'Sustainable Oil Palm', ''),
(315, 'Bayu Septiwibowo', '10002115', 'Asst. Carbon & Water Accounting', 'Sustainable Oil Palm', ''),
(316, 'Dedi Purnomo', '09000054', 'Asst. Biodiversity', 'Sustainable Oil Palm', ''),
(317, 'Hartono', '97000047', 'Field Operational Dept. Head', 'FOES', ''),
(318, 'Sari\'a Maimuna', '12002292', 'Research Field Coordinator - BNGE', 'FOES', ''),
(319, 'Fahry Faqiha', '16001058', 'Research Field Coordinator-PHLE', 'FOES', ''),
(320, 'Fadli Fauzi', '11000120', 'Research Field Coordinator - SMSE', 'FOES', ''),
(321, 'Aldi Putra Guntara', '17000118', 'Research Field Coordinator-SBYE', 'FOES', ''),
(322, 'Ferdinan Manogi Silalahi', '17001175', 'Research Field Coordinator-SKME', 'FOES', ''),
(323, 'Samsu Alam', '07000071', 'Field Coordinator1 - BAME', 'FOES', ''),
(324, 'M Alpian', '96000443', 'Research Field Coordinator - BAME', 'FOES', ''),
(325, 'Anhar Jhony Murtono', '12001810', 'Research Field Coordinator-MWHE ', 'FOES', ''),
(326, 'Rudi Harto Widodo', '', 'Field Coordinator5 - LIBZ', 'FOES', ''),
(327, 'Fahron Nawawi', '11000135', 'Research Field Coordinator - BPME', 'FOES', ''),
(328, 'Ichsan Rezky Praptantyo', '17001136', 'Research Field Coordinator-SRGE', 'FOES', ''),
(329, 'Ahmad Rizal', '17000176', 'Research Field Coordinator -KHLE', 'FOES', ''),
(330, 'Alif Saifudin', '14000749', 'Research Field Coordinator-KYNE ', 'FOES', ''),
(331, 'Pramusita Yoga Daniswara', '15003651', 'Field Coordinator5 - LIBZ', 'FOES', ''),
(332, 'Guntur Permanaputra', '18000144', 'Research Field Coordinator-KYNE ', 'FOES', ''),
(333, 'Agus Dwi Prasetyo', '', 'Research Field Coordinator-SRIE', 'FOES', ''),
(334, 'Aditya Fajar Kurniawan', '', 'Research Field Coordinator-KRLE', 'FOES', ''),
(335, 'Fadil Wirawan', '19001559', 'Research Field Coordinator-NMAE', 'FOES', ''),
(336, 'Widura Bintang Samudra', '19001558', 'Research Field Coordinator-LIBZ', 'FOES', ''),
(337, 'Ambri Bakhtiar', '20000938', 'Research Field Coordinator-BPRE', 'FOES', ''),
(338, 'Edy Sulisianto', '20000023', 'Research Field Coordinator-Papua', 'FOES', ''),
(339, 'Imam Rifai', '21000397', 'Research Field Coordinator-', 'FOES', ''),
(340, 'Elfrin Nisa Azmi', '21000396', 'Research Field Coordinator-CSR', 'FOES', ''),
(341, 'Chyntia Novanti', '21000490', 'Research Field Coordinator-Nursery&Composting', 'FOES', ''),
(342, 'Ardiansyah', '', 'Research Field Coordinator-SPKE', 'FOES', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user`
--

CREATE TABLE `tbl_level_user` (
  `id_level_user` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_user`
--

INSERT INTO `tbl_level_user` (`id_level_user`, `nama_level`) VALUES
(0, 'User'),
(1, 'Admin'),
(2, 'Officer'),
(3, 'Sect Head'),
(4, 'Programmer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id_level_user` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_level_user`, `foto`) VALUES
(1, 'User', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 0, 'palm2.png'),
(5, 'Programmer', 'programmer', 'a425352a84b14c7acb601495bd156322', 1, ''),
(6, 'Sistem Admin', 'sistemadmin', 'c98c8267598a2109c70ccd8bf4514454', 1, ''),
(7, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rule`
--

CREATE TABLE `tbl_user_rule` (
  `id_rule` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_rule`
--

INSERT INTO `tbl_user_rule` (`id_rule`, `id_menu`, `id_level_user`) VALUES
(1, 16, 4),
(2, 1, 1),
(3, 2, 1),
(5, 4, 1),
(6, 5, 1),
(8, 8, 1),
(9, 11, 1),
(10, 6, 1),
(11, 14, 1),
(12, 15, 1),
(13, 13, 1),
(14, 12, 1),
(15, 10, 1),
(16, 9, 1),
(22, 1, 2),
(23, 2, 2),
(25, 4, 2),
(26, 17, 1),
(27, 18, 1),
(28, 36, 1),
(29, 31, 1),
(30, 32, 1),
(31, 33, 1),
(32, 34, 1),
(33, 35, 1),
(35, 10, 2),
(36, 5, 2),
(37, 6, 2),
(39, 9, 2),
(40, 11, 2),
(41, 12, 2),
(42, 15, 2),
(45, 31, 2),
(46, 32, 2),
(47, 33, 2),
(48, 34, 2),
(49, 35, 2),
(50, 36, 2),
(51, 1, 3),
(52, 2, 3),
(54, 5, 3),
(55, 6, 3),
(57, 9, 3),
(61, 8, 2),
(62, 20, 1),
(63, 21, 1),
(64, 71, 1),
(65, 13, 2),
(66, 14, 2),
(67, 71, 2),
(68, 16, 1),
(69, 22, 1),
(70, 10, 3),
(71, 20, 3),
(72, 1, 4),
(73, 10, 4),
(74, 12, 4),
(75, 13, 4),
(76, 14, 4),
(77, 15, 4),
(78, 17, 4),
(79, 18, 4),
(81, 20, 4),
(82, 21, 4),
(83, 22, 4),
(85, 71, 4),
(86, 72, 4),
(87, 73, 4),
(88, 25, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `tabel_biodata`
--
ALTER TABLE `tabel_biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_chat`
--
ALTER TABLE `tabel_chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indexes for table `tabel_data`
--
ALTER TABLE `tabel_data`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tabel_log`
--
ALTER TABLE `tabel_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_rumah`
--
ALTER TABLE `tabel_rumah`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_biodata`
--
ALTER TABLE `tbl_biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  ADD PRIMARY KEY (`id_level_user`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tabel_biodata`
--
ALTER TABLE `tabel_biodata`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT for table `tabel_data`
--
ALTER TABLE `tabel_data`
  MODIFY `id_order` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tabel_log`
--
ALTER TABLE `tabel_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1359;

--
-- AUTO_INCREMENT for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tabel_rumah`
--
ALTER TABLE `tabel_rumah`
  MODIFY `no` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `tbl_biodata`
--
ALTER TABLE `tbl_biodata`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  MODIFY `id_level_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
