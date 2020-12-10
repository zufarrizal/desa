-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 01:17 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `berita` text NOT NULL,
  `kategori` varchar(128) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `penulis`, `berita`, `kategori`, `tanggal`) VALUES
(1, 'Lorem ipsum dolor sit amet', 'Admin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque magna arcu, dapibus et faucibus at, mattis id libero. Quisque elementum non massa vel porta. Pellentesque neque metus, tincidunt porttitor malesuada sit amet, auctor sed est. Vivamus facilisis, orci eget faucibus aliquet, justo ex aliquam massa, at interdum turpis est a urna. Vestibulum malesuada, turpis quis tincidunt hendrerit, lectus quam interdum ex, sit amet porta arcu lorem eu magna. Nam nec pretium mi. Curabitur finibus leo nec nisi varius malesuada. Cras a nibh diam. Ut placerat arcu at augue aliquam consequat. Praesent et lorem ac enim porta congue. Duis lacinia magna in tortor placerat ultricies. In hac habitasse platea dictumst. Aliquam ut congue velit, faucibus tristique sem. Pellentesque consequat condimentum arcu, ac finibus libero fringilla eget. In dictum sed magna vitae tempus. Quisque lacinia augue a volutpat convallis.', 'Umum', '2020-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(128) NOT NULL,
  `keterangan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `keterangan`) VALUES
(1, 'Umum', 'Berita Umum Desa Benerkulon'),
(2, 'Bantuan', 'Berita Terkait Bantuan Masyarakat');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id_program` int(11) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `program` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id_program`, `foto`, `program`) VALUES
(1, 'HUT-RI-ke-751.jpg', '<b>Program Desa Benerkulon</b><div><ol><li>Program pembangkit listrik tenaga mikro hidro</li><li>Program pipanisasi air bersih kepada masyarakat</li><li>\r\n\r\nProgram&nbsp;Konservasi hutan untuk menjaga debit sumber air</li><li>Program BPJS desa mandiri</li><li>Program pusat pembelajaran masyarakat</li><li>Program pembangunan sekolah untuk pemenuhan pendidikan</li><li>Program pengembangan usaha desa melalui tenaga ahli</li></ol><b></b></div>');

-- --------------------------------------------------------

--
-- Table structure for table `struktur`
--

CREATE TABLE `struktur` (
  `id_struktur` int(11) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `struktur`
--

INSERT INTO `struktur` (`id_struktur`, `foto`, `keterangan`) VALUES
(1, 'struktur_desa.jpg', '<p><strong>TUGAS DAN FUNGSI</strong></p><p><strong>A. KEPALA DESA</strong></p><ol><li><blockquote><strong>Perbekel Berkedudukan sebagai kepala Pemerintah Desa yang memimpin penyelenggaraan Pemerintahan Desa.</strong></blockquote></li><li><blockquote><strong>Pebekel bertugas menyelenggarakan Pemerintahan Desa, Melaksanakan Pembangunan, Pembinaan Kemasyarakatan, Pemberdayaan Masyarakat, dan tugas lainnya yang diberikan oleh Pemerintah dan/atau Pemerintah Daerah.</strong></blockquote></li></ol><p><em>Untuk melaksanakan tugas sebagaimana dimaksud pada ayat (2) Perbekel memiliki fungsi-fungsi sebagai berikut :</em></p><p><strong>a). Menyelenggarakan Pemerintahan Desa, seperti :</strong></p><ol><li>tata praja Pemerintahan;</li><li>penetapan peraturan di desa;</li><li>pembinaan masalah pertanahan;</li><li>pembinaan ketentraman dan ketertiban;</li><li>melakukan upaya perlindungan masyarakat;</li><li>administrasi kependudukan;</li><li>penataan dan pengelolaan wilayah;</li><li>penyusunan profil desa; dan</li><li>pencegahan dan penanggulangan bencana.</li></ol><p><strong>b). Melaksanakan pembangunan di desa, seperti :</strong></p><ol><li>pembangunan sarana prasarana perdesaan;</li><li>pembangunan bidang pendidikan; dan</li><li>pembangunan bidang kesehatan.</li></ol><p>&nbsp;</p><p><strong>c). Pembinaan kemasyarakatan, seperti :</strong></p><ol><li>pelaksanaan hak dan kewajiban masyarakat;</li><li>peningkatan partisipasi masyarakat;</li><li>pelaksanaan gotong royong dan swadaya murni &nbsp; masyarakat;</li><li>pelaksanaan nilai-nilai sosial budaya masyarakat;</li><li>pembinaan dan pelaksanaan aktivitas keagamaan masyarakat; dan</li><li>pembinan dan pengembangan ketenagakerjaan.</li></ol><p><strong>d). Pemberdayaan masyarakat, seperti :</strong></p><ol><li>pelaksanaan tugas-tugas sosialisasi dan motivasi masyarakat di bidang kebudayaan dan kesenian;</li><li>usaha peningkatan ekonomi masyarakat;</li><li>peningkatan partisipasi masyarakat dibidang politik;</li><li>peningkatan kesadaran dan peran serta masyarakat dibidang kebersihan dan lingkungan hidup;</li><li>kegiatan pemberdayaan dan kesejahteraan keluarga; dan</li><li>mengembangkan peran serta organisasi dibidangn kepemudaan, olahraga, dan karang taruna.</li></ol><p><strong>e). Menjaga hubungan kemitraan dengan lembaga masyarakat dan lembaga lainnya.</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `id_tentang` int(11) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `tentang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tentang`
--

INSERT INTO `tentang` (`id_tentang`, `foto`, `tentang`) VALUES
(1, 'HUT-RI-ke-75.jpg', '<p><strong>JAKARTA, beritalima.com | </strong>Pada tanggal 15 Januari 2020, pemerintah secara resmi telah merilis tema dan logo HUT RI ke 75. Ada pun tema yang diangkat pada HUT kemerdekaan tahun ini adalah Indonesia Maju. Pratikno (Menteri Sekretaris Negara) sudah mengeluarkan surat edaran terkait tema dan logo hari ulang tahun (HUT) kemerdekaan Republik Indonesia (RI). Beliau meminta para pimpinan lembaga negara, menteri, gubernur Bank lndonesia, jaksa agung, panglima TNI, kapolri, dan pimpinan lembaga pemerintah nonkementerian untuk mensosialisasikan tema dan logo tersebut.</p><p><br>Perancangan logo HUT RI ke 75 ini mempunyai keterkaitan dengan tujuan di pemerintahan Jokowi dan Ma’ruf Amin yaitu pembangunan infrastruktur, pembangunan SDM, penciptaan lapangan kerja, serta pemberdayaan UMKM. Indonesia Maju merupakan sebuah representasi dari Pancasila sebagai pedoman dalam kehidupan berbangsa dan bernegara.</p><p><br>Logo memiliki inspirasi simbol perisai pada lambang Garuda Pancasila. Logo HUT RI ke 75 png ini menafsirkan Indonesia merupakan negara yang mampu memperkokoh kedaulatan, menjaga persatuan dan kesatuan Indonesia. Logo HUT RI ke 75 cdr tahun ini menyimbolkan arti dari kesetaraan dan pertumbuhan ekonomi untuk rakyat Indonesia dan progres nyata dalam bekerja untuk mempersembahkan hasil yang terbaik kepada rakyat Indonesia.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `visimisi`
--

CREATE TABLE `visimisi` (
  `id_visimisi` int(11) NOT NULL,
  `foto` varchar(256) NOT NULL,
  `visimisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visimisi`
--

INSERT INTO `visimisi` (`id_visimisi`, `foto`, `visimisi`) VALUES
(1, 'Untitled_design-Max-Quality.jpg', '<b>Visi dan Misi Desa Benerkulon :</b><br><b>A. Visi</b><br><ol><li>Visi Pertama</li><li>Visi Kedua</li><li>Visi Ketiga</li></ol><b>B. Misi</b><br><ol><li>Misi Pertama</li><li>Misi Kedua</li><li>Misi Ketiga</li></ol><br>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id_struktur`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id_tentang`);

--
-- Indexes for table `visimisi`
--
ALTER TABLE `visimisi`
  ADD PRIMARY KEY (`id_visimisi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `struktur`
--
ALTER TABLE `struktur`
  MODIFY `id_struktur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id_tentang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id_visimisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
