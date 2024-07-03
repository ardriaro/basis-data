-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 12:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `basispengetahuan`
--

CREATE TABLE `basispengetahuan` (
  `namapenyakit` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gejala` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basispengetahuan`
--

INSERT INTO `basispengetahuan` (`namapenyakit`, `gejala`) VALUES
('Fusarium atau verticillium wilt', 'Layu pada siang hari'),
('Fusarium atau verticillium wilt', 'Daun menguning'),
('Anthracnose', 'Bintik-bintik kecil pada buah yang matang'),
('Anthracnose', 'Berbentuk cekung pada buah yang matang'),
('Anthracnose', 'Basah kuyup pada buah yang matang'),
('Septoria leaf spot', 'Bintik-bintik bulat berwarna coklat pada daun'),
('Botrytis', 'Jamur berwarna abu-abu kecokelatan pada batang'),
('Botrytis', 'Jamur berwarna abu-abu kecokelatan pada daun'),
('Botrytis', 'Jamur berwarna abu-abu kecokelatan pada buah'),
('Bacterial speck', 'Bintik coklat atau hitam tidak beraturan pada bata'),
('Bacterial speck', 'Bintik coklat atau hitam tidak beraturan di dekat '),
('Bacterial speck', 'Bintik coklat atau hitam tidak beraturan di dekat '),
('Southern blight', 'Adanya jamur pada batang bagian bawah tanaman'),
('Gray leaf spot', 'Bintik-bintik gelap kecil dengan lingkaran cahaya '),
('Gray leaf spot', 'Bintik-bintik gelap kecil dengan lingkaran cahaya '),
('Late blight', 'Tepi daun bewarna hijau abu-abu dengan lingkaran j'),
('Blossom end rot', 'Tomat mengalami perubahan coklat tua atau hitam di'),
('Blossom end rot', 'Mengalami pembusukan pada ujung buah yang mekar da'),
('Buckeye rot', 'Warna coklat membentuk lingkaran seperti cincin pa'),
('Buckeye rot', 'Warna hitam membentuk lingkaran seperti cincin pad'),
('Gray wall', 'Buah memiliki bercak bewarna abu-abu pipih.'),
('Gray wall', 'Tomat memiliki bercak bewarna hijau di bagian dala'),
('Gray wall', 'Tomat memiliki bercak bewarna coklat di bagian dal'),
('Leaf mold', 'Jamur di daun muncul berupa bercak hijau pucat pad'),
('Leaf mold', 'Jamur di daun muncul berupa bercak kekuningan pada'),
('Tomato pith necrosis', 'Bagian dalam batang hancur dan berlubang serta bew'),
('Tomato pith necrosis', 'Daun menghitam'),
('Damping off', 'Bibit gagal tumbuh subur di luar ruangan '),
('Mosaic virus', 'Daun keriting dan berbintik-bintik '),
('Early blight', 'Bintik gelap dengan cincin di daun bagian bawah'),
('Powdery mildew', 'bercak putih berbentuk tepung yang muncul pada bat'),
('Powdery mildew', 'bercak kuning pada daun berubah menjadi bercak put'),
('Powdery mildew', 'bercak putih berbentuk tepung yang melapisi seluru');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `idgejala` varchar(10) NOT NULL,
  `gejala` varchar(1000) NOT NULL,
  `daerah` varchar(10) NOT NULL,
  `jenistanaman` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`idgejala`, `gejala`, `daerah`, `jenistanaman`) VALUES
('G001', 'Bintik gelap dengan cincin di daun bagian bawah', 'Daun', 'Tomat'),
('G002', 'Layu pada siang hari', 'Batang', 'Tomat'),
('G003', 'Daun menguning', 'Daun', 'Tomat'),
('G004', 'bercak kuning pada daun berubah menjadi putih', 'Daun', 'Tomat'),
('G005', 'bercak putih seperti tepung yang melapisi daun ', 'Daun', 'Tomat'),
('G006', 'bercak putih berbentuk tepung pada batang', 'Batang', 'Tomat'),
('G007', 'Bintik-bintik kecil pada buah yang matang', 'Buah', 'Tomat'),
('G008', 'Berbentuk cekung pada buah yang batang', 'Buah', 'Tomat'),
('G009', 'Basah kuyup pada buah yang matang', 'Buah', 'Tomat'),
('G010', 'Bintik-bintik bulat berwarna coklat pada daun', 'Daun', 'Tomat'),
('G011', 'Jamur berwarna abu-abu kecokelatan pada daun', 'Daun', 'Tomat'),
('G012', 'Jamur berwarna abu-abu kecokelatan pada batang', 'Batang', 'Tomat'),
('G013', 'Jamur berwarna abu-abu kecokelatan pada buah', 'Buah', 'Tomat'),
('G014', 'Bintik coklat atau hitam tidak beraturan di dekat tepi daun', 'Daun', 'Tomat'),
('G015', 'Bintik coklat atau hitam tidak beraturan pada batang', 'Batang', 'Tomat'),
('G016', 'Bintik coklat atau hitam tidak beraturan di dekat tepi buah', 'Buah', 'Tomat'),
('G017', 'Adanya jamur pada batang bagian bawah tanaman', 'Batang', 'Tomat'),
('G018', 'Bintik-bintik gelap kecil dengan lingkaran cahaya kuning di permukaan atas daun.', 'Daun', 'Tomat'),
('G019', 'Bintik-bintik gelap kecil dengan lingkaran cahaya kuning di permukaan bawah daun.', 'Daun', 'Tomat'),
('G020', 'Bercak coklat dan tampak berminyak pada tepi daun', 'Buah', 'Tomat'),
('G021', 'Tepi daun bewarna hijau abu-abu dengan lingkaran jamur putih', 'Daun', 'Tomat'),
('G022', 'Tomat mengalami perubahan coklat tua atau hitam di ujung buah', 'Buah', 'Tomat'),
('G023', 'Mengalami pembusukan pada ujung buah yang mekar dan membesar ', 'Buah', 'Tomat'),
('G024', 'Warna coklat membentuk lingkaran seperti cincin pada buah', 'Buah', 'Tomat'),
('G025', 'Warna hitam membentuk lingkaran seperti cincin pada buah', 'Buah', 'Tomat'),
('G026', 'Buah memiliki bercak bewarna abu-abu pipih.', 'Daun', 'Tomat'),
('G027', 'Tomat memiliki bercak bewarna hijau di bagian dalam buah', 'Daun', 'Tomat'),
('G028', 'Tomat memiliki bercak bewarna coklat di bagian dalam buah', 'Bunga', 'Tomat'),
('G029', 'Jamur di daun muncul berupa bercak hijau pucat pada daun bagian atas', 'Daun', 'Tomat'),
('G030', 'Jamur di daun muncul berupa bercak kekuningan pada daun bagian atas', 'Daun', 'Tomat'),
('G031', 'Bagian dalam batang hancur dan berlubang serta bewarna menghitam', 'Daun', 'Tomat'),
('G032', 'Bibit gagal tumbuh subur di luar ruangan ', 'Daun', 'Tomat'),
('G033', 'Daun keriting dan berbintik-bintik ', 'Daun', 'Tomat'),
('G034', 'Daun menghitam', 'Batang', 'Tomat');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `idpenyakit` varchar(20) NOT NULL,
  `namapenyakit` varchar(1000) NOT NULL,
  `jenistanaman` varchar(20) NOT NULL,
  `kulturteknis` varchar(1000) NOT NULL,
  `fisikmekanis` varchar(1000) NOT NULL,
  `kimiawi` varchar(1000) NOT NULL,
  `hayati` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`idpenyakit`, `namapenyakit`, `jenistanaman`, `kulturteknis`, `fisikmekanis`, `kimiawi`, `hayati`) VALUES
('P001', 'Early blight', 'Tomat', 'Pemangkasan pada bagian daun yang rendah', '', 'Memberikan fungisida', ''),
('P002', 'Fusarium atau verticillium wilt', 'Tomat', 'Menanam lebih dari satu varietas atau menanam bibit yang sehat.', 'membuang tanaman dan akar yang terinfeksi.', '', ''),
('P003', 'Powdery mildew', 'Tomat', 'Buang daun dan tunas yang terinfeksi.', '', 'dengan mengolah seluruh tanaman dengan debu belerang, fungisida, biofungisida, dan minyak hortikultura', ''),
('P004', 'Anthracnose', 'Tomat', '', '', 'Oleskan fungisida tomat ke seluruh tanaman Anda saat tanda pertama infeksi muncul atau ketika kondisi cuaca memungkinkan timbulnya penyakit.', ''),
('P005', 'Septoria leaf spot', 'Tomat', 'Buang daun yang terinfeksi untuk mencegah penyebaran spora ke daun lain', '', 'Memberi fungisida pada tanaman secara berulang.', ''),
('P006', 'Botrytis', 'Tomat', 'Berikan jarak yang cukup antara tanaman dan barisan untuk sirkulasi udara yang baik', 'memangkas tanaman di sore hari agar potongan cepat kering.', 'Beri obati infeksi yang meluas atau terus-menerus dengan fungisida tomat', ''),
('P007', 'Bacterial speck', 'Tomat', '', '', 'Gunakan fungisida pada tomat selama musim dingin', ''),
('P008', 'Southern blight', 'Tomat', 'menjaga tingkat pH tanah untuk tomat, Hindari menanam pada cuaca basah dengan perkiraan suhu tinggi.', '', 'Fungisida dan biofungisida dapat membantu mengatasi Southern blight. Untuk mencgah terjadinya sothern blight', ''),
('P009', 'Gray leaf spot', 'Tomat', 'Jangan beri pupuk kompos pada tanaman yang sudah terkena.', 'Buang semua tanaman yang terkena dampak dan jangan gunakan sisa sisa tanaman.', '', ''),
('P010', 'Late blight', 'Tomat', 'Buang semua kotoran', '', '', 'Semprotkan Fungisida Serenade sebagai pencegah.'),
('P011', 'Blossom end rot', 'Tomat', '', 'Buang buah yang terkena dampak dan berikan penyiraman secara teratur', '', ''),
('P012', 'Buckeye rot', 'Tomat', '', 'Buang buah yang terserang. Hindari air permukaan bersentuhan dengan tomat. Jaga agar buah-buahan di tidak bersentuhan dengan tanah.', '', ''),
('P013', 'Gray wall', 'Tomat', 'Siram secara merata dan pupuk tanaman secara teratur. Jaga agar tanah di sekitar akar tidak memadat.', 'Pastikan tanaman mendapatkan cahaya matahari, tidak sampai ternaungi.', '', ''),
('P014', 'Leaf mold', 'Tomat', 'Tingkatkan sirkulasi udara dengan memangkas, memberi jarak antar tanaman.', '', '', ''),
('P015', 'Tomato pith necrosis', 'Tomat', 'menjaga tanah tetap lembab dan merotasi tanaman.', 'jangan menyiram air dari atas, dan membuang tanaman dan akar yang mati dan sakit.', '', ''),
('P016', 'Damping off', 'Tomat', 'Saat menanam tomat, tanam benih di dalam ruangan dan jangan menaruhnya di tanah dengan kadar nitrogen tinggi. Tambahkan pupuk nitrogen setelah bibit mulai tumbuh, yaitu saat bibit sudah memiliki daun pertamanya', '', '', ''),
('P017', 'Mosaic virus', 'Tomat', '', 'Pengendalian virus mosaik sulit dilakukan, tetapi bisa dicegah dengan Perlakukan benih dengan panas (2-4 hari pada suhu 70°C)larutan trinatrium atau fosfat 10% selama 15 menit. ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `nama`) VALUES
('U001', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`idgejala`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`idpenyakit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
