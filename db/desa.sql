-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 02:59 PM
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
  `foto` varchar(256) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `penulis`, `berita`, `kategori`, `foto`, `tanggal`) VALUES
(2, 'BUMDes Bakal Percepat Ekonomi Desa', 'Admin', '<b>Kebumen </b>- Menteri Desa, Pembangunan Daerah Tertinggal dan Transmigrasi (Mendes PDTT) Abdul Halim Iskandar mengatakan upaya peningkatan ekonomi masyarakat desa saat ini bisa dilakukan dengan berbagai cara. Salah satunya dengan mengoptimalkan Badan Usaha Milik Desa (BUMDes) yang telah diakui sebagai lembaga berbadan hukum.\r\n\r\nBerbagai upaya pun sudah bisa dilakukan BUMDes dalam rangka percepatan perekonomian masyarakat desa.&nbsp;<div><br></div><div>Bahkan BUMDes bisa mendirikan Perseroan Terbatas (PT) yang menjalankan bisnis apapun.\r\n\r\n\"Misalnya BUMDes sebagai badan hukum sekaligus badan usaha itu bisa mendirikan PT untuk usaha apapun,\" kata Abdul Halim dalam acara Karya Kreatif Indonesia, Jakarta, Jumat (20/11)\r\n\r\nBUMDes bisa mengelola berbagai bentuk pelayanan masyarakat. Dia mencontohkan pengelola air bersih, peningkatan upaya ketahanan pangan. Bahkan di daerah tertentu, BUMDes bisa membuat pengadaan listrik. Selain itu, BumDes juga bisa mendirikan lembaga keuangan mikro (LKM) untuk memberikan stimulasi permodalan masyarakat desa.\r\n\r\n\"Apapun bisa dilakukan Bumdes dalam upaya meningkatkan ekonomi warga masyarakat,\" kata dia.\r\n\r\nHanya saja, kata Abdul Halim, BUMDes di desa membutuhkan beberapa pendampingan. Sebab ketentuan BUMDes sebagai badan hukum masih terbilang baru lantaran ketentuan tersebut baru disahkan lewat Undang-Undang Nomor 11 Tahun 2020 tentang Cipta Kerja.&nbsp;</div><div><br></div><div>Berbagai usaha masyarakat yang dilakukan pendekatan badan hukum baru atau dalam bentuk konsolidasi berbagai usaha bisa dilakukan juga oleh BUMDes . Hanya saja, BUMDes harus melakukan berbagai usaha ekonomi yang sedang tidak dikerjakan warga.\r\n\r\n\"Artinya BUMDes hanya boleh melakukan berbagai usaha yang belum dilakukan masyarakat karena inti kehadiran Bumdes untuk peningkatan ekonomi warga masyarakat,\" kata dia mengakhiri.\r\n\r\nAnisyah Al Faqir\r\n\r\nMerdeka.com<br></div>', 'Umum', 'Bumdes.jpg', '2020-12-11'),
(4, 'Ragam Inovasi Kemendes PDTT Pacu Perekonomian & Pembangunan Desa', 'Admin', '<p><b>Kebumen </b>- Kementerian Desa, Pembangunan Daerah Tertinggal dan Transmigrasi terus berupaya untuk menggenjot inovasi desa. Hal ini dilakukan guna mempercepat proses pembangunan desa.<br>\"Desa membutuhkan pendampingan dari berbagai pihak, perguruan tinggi dan Pemerintah agar terus lakukan percepatan dan inovasi tepat sasaran hingga terjadi percepatan proses pembangunan,\" ujar Mendes PDTT, Abdul Halim Iskandar mengatakan dalam keterangan tertulis, Kamis (10/12/2020).<br><br>Hal tersebut ia sampaikan dalam International Conference On Innovation in Science Health and Technology bertema \'Peran Strategis Desa dalam Mewujudkan Indonesia Unggul dan Berdaya Saing\', yang digelar Universitas Negeri Gorontalo.<br><br>Pria yang akrab dipanggil Gus Menteri ini menjelaskan Kemendes PDTT telah melakukan berbagai inovasi. Salah satunya melalui pengedaran Kartu Komitmen yaitu kartu yang berisi minat inovasi yang ingin diaplikasikan ke desa tersebut. Adapun kartu tersebut diisi oleh perwakilan desa dalam Bursa Inovasi Desa (BID).<br><br>Selain itu, di tahun 2017, Kemendes PDTT melakukan inovasi di bidang kewirausahaan ke 3.837 desa. Selanjutnya, inovasi bidang SDM di 3.011 desa, dan bidang infrastruktur di 2.663 desa. Gus Menteri mengatakan seluruh inovasi tersebut digelar dua tahun setelah dana desa digulirkan.<br><br>Lebih lanjut ia menyampaikan pada tahun 2018, bidang infrastruktur meroket menjadi 13.647 desa, sementara kedua bidang lainnya masih berada dibawahnya. Kemudian di tahun 2019, inovasi bidang kewirausahaan melonjak hingga 14.781 desa, dan dua bidang lainnya hampir memiliki pertumbuhan yang sama.<br><br>\"Ini artinya, inovasi di desa sangat erat kaitannya dengan kebutuhan inovasi bidang pengembangan SDM dan upaya peningkatan ekonomi. Ini sesuai arah kebijakan dana desa,\" katanya.<br><br>Terkait Anggaran Pendapatan dan Belanja Desa, ia menjelaskan replikasi inovasi APBDesa tahun 2019 menunjukkan jika bidang sumber daya manusia dan kewirausahaan menempati posisi yang lebih tinggi.<br><br>Adapun APBDes 2019 yang digunakan untuk mendanai replikasi kartu komitmen, yakni sebesar Rp 1.820.015.715.439. Sementara itu, desa yang melakukan replikasi inovasi sebanyak 24.890 desa yang setara 41?ri desa penyusun kartu komitmen.<br><br>Menurutnya, inovasi desa juga berkaitan dengan perencanaan dan arah pembangunan desa. Oleh karena itu, Kemendes PDTT menetapkan arah pembangunan dalam 18 SDGs Desa.<br><br>\"Aksi SDGs Desa berkontribusi sebesar 74 persen terhadap pencapaian tujuan pembangunan nasional Berkelanjutan yang diatur dalam Peraturan Presiden Nomor 59 Tahun 2017,\" katanya.<br><br>Sementara pada aspek kewargaan, data BPS mencatat 43 persen penduduk Indonesia berada di desa. Gus Menteri mengatakan 6 SDGs sangat erat kaitannya dengan warga desa. Dengan demikian, jika 6 SDGs tersebut tercapai maka SDGs berkontribusi sebanyak 43 persen pada pencapaian tujuan pembangunan nasional berkelanjutan.<br><br>\"Inovasi desa masuk dalam arah pembangunan desa yang dinamakan SDGs Desa pada tujuan ke sembilan yaitu infrastruktur dan inovasi desa sesuai kebutuhan,\" pungkasnya.<br><br>Sebagai informasi, dalam SDGs Desa terdapat 18 tujuan sebagai berikut.<br><br>1. Desa tanpa kemiskinan<br>2. Desa tanpa kelaparan<br>3. Desa sehat dan sejahtera<br>4. Pendidikan desa berkualitas<br>5. Keterlibatan perempuan desa<br>6. Desa layak air bersih dan sanitasi<br>7. Desa berenergi bersih dan terbarukan<br>8. Pertumbuhan ekonomi desa merata<br>9. Infrastruktur dan inovasi desa sesuai kebutuhan<br>10. Desa tanpa kesenjangan<br>11. Kawasan pemukiman desa aman dan nyaman<br>12. Konsumsi dan produksi desa sadar lingkungan<br>13. Desa tangkap perubahan iklim<br>14. Desa peduli lingkungan laut<br>15. Desa peduli lingkungan darat<br>16. Desa damai berkeadilan<br>17. Kemitraan untuk pembangunan desa<br>18. Kelembagaan desa dinamis dan budaya desa adaftif<br></p>', 'Umum', 'mendes-abdul-halim.jpeg', '2020-12-11'),
(17, 'Serukan Perwujudan Desa Ramah Perempuan, Gus Menteri Susun Sejumlah Indikator', 'Admin', '<p><b>Kebumen</b> – Menteri Desa, Pembangunan Daerah Tertinggal, dan Transmigrasi (Mendes PDTT) Abdul Halim Iskandar mengaku telah menyusun sejumlah indikator untuk perwujudan Desa Ramah Perempuan. Beberapa indikator yang dicanangkan diantaranya adalah peraturan desa (Perdes) atau surat keputusan (SK) Kepala Desa (Kades). “Perdes itu untuk mendukung pemberdayaan perempuan minimal 30 persen dan menjamin perempuan memperoleh hak-haknya,” kata Gus Menteri, dalam keterangan tertulis yang diterima Kompas.com, Jumat (11/12/2020).&nbsp;</p><p>Hak-hak perempuan yang dimaksud Gus Menteri meliputi akses pelayanan, informasi, pendidikan terkait keluarga berencana (KB), dan kesehatan reproduksi. Baca juga: Beri Kuliah Umum, Kemendes PDTT Paparkan agar BUMDes Tidak Ganggu Ekonomi Warga “Kemudian persentase jumlah perempuan di Badan Permusyawaratan Desa (BPD) dan perangkat desa minimal harus 30 persen,” lanjutnya. Angka tersebut disamakan dengan persentase jumlah perempuan yang menghadiri musyawarah desa (musdes) dan berpartisipasi dalam pembangunan desa. Gus Menteri juga menyoroti prevalensi kasus kekerasan terhadap anak perempuan yang harus mencapai target 0 persen. Pelayanan komprehensif juga harus diberikan kepada para perempuan korban kekerasan. Indikator penting lain yang diserukan Gus Menteri adalah perihal median usia kawin perempuan (pendewasaan usia kawin pertama).&nbsp;</p><p>Begini Respon Gus Menteri “Angka prevalensinya harus di atas 18. Sedangkan angka kelahiran pada remaja usia 15-19 tahun age specific fertility rate (ASFR) harus dapat 0 persen,” jelasnya. Sedangkan unmet need (wanita sudah menikah yang tidak ingin punya anak lagi) KB dipatok mencapai 0 persen. Pasangan Usia Subur (PUS) memahami metode kontrasepsi modern minimal ada 4 jenis. Peran Penting Perempuan dalam Pembangunan Desa Seruan pembangunan Desa Ramah Perempuan ini penting kaitannya untuk mengurangi ketimpangan gender dalam masyarakat. Gus Menteri mengatakan, kebijakan ini untuk meningkatkan arah partisipasi perempuan, melindungi perempuan, dan meningkatkan akses perempuan dalam ranah publik.</p><p>Begini Respon Gus Menteri “Di sini peran perempuan sangat penting untuk menentukan arah pembangunan desa,” celetuknya. Sebagai informasi, Desa Ramah Perempuan adalah salah satu segmen dari Sustainable Development Goals (SDGs) Desa yang telah ditetapkan Kementerian Desa, Pembangunan Daerah Tertinggal, dan Transmigrasi (Kemendes PDTT) untuk jangka waktu hingga 2030. SDGs adalah pembangunan komprehensif desa. Pembangunan ini harus bisa dirasakan oleh seluruh masyarakat desa tanpa terkecuali. Pembangunan desa yang dicanangkan Kemendes PDTT ini pun didasarkan pada Peraturan Presiden (Perpres) Nomor 59 Tahun 2017 tentang pelaksanaan pencapaian tujuan pembangunan berkelanjutan. Kasus Ketimpangan Gender Masih Tinggi di Indonesia Lebih lanjut, Gus Menteri menyatakan kasus ketimpangan gender masih tinggi dan holistik di berbagai bidang. “Dalam kesempatan bekerja misalnya, proporsi jabatan manajer untuk perempuan cenderung lebih sedikit ketimbang laki-laki,” ungkap Gus Menteri, memberi contoh. Hal ini bisa diartikan ada peningkatan posisi pekerjaan di kelas menengah bagi perempuan, namun jumlahnya masih tertinggal jauh daripada laki-laki. “Tidak adanya kesetaraan gender di ruang publik bisa dilihat dari sedikitnya perempuan duduk di kursi parlemen. Jabatan mereka pun biasanya lebih rendah,” lanjut Gus Menteri.&nbsp;</p><p>Gus Menteri mengartikan, proporsi kursi parlemen yang rendah bagi perempuan sangat menyulitkan mereka untuk ikut aktif berkontribusi dalam penentuan arah pembangunan di ruang publik. Selanjutnya adalah masalah kekerasan seksual. Gus Menteri memberikan gambaran tipe kekerasan yang dialami perempuan di desa dan perempuan di kota. “Kekerasan di desa cenderung pada pemerkosaan (kontak seksual), sedangkan di kota cenderung [ada pelecehan (tanpa kontak seksual). Untuk itu, Gus Menteri menyerukan adanya kebijakan represif bagi para pelaku kekerasan seksual dan kebijakan rehabilitatif untuk menolong para korban.&nbsp;</p><p>Gus Menteri Usulkan Pembangunan Homestay Masalah ketimpangan gender lainnya yang dipaparkan Gus Menteri adalah proporsi perempuan dalam menggunakan telepon genggam. “Presentase perempuan yang menggunakan telepon genggam cenderung lebih rendah dari laki-laki,” sebutnya. Hal ini bisa diartikan, perempuan kesulitan menerima komunikasi dan peluang untuk mencapai taraf hidup dan kesempatan hidup yang lebih baik. Program pemberdayaan perempuan Tidak hanya memaparkan data dan fakta mengenai ketimpangan gender yang terjadi di Indonesia, Gus Menteri mengungkapkan pula beberapa program pemberdayaan perempuan yang bisa dilaksanakan.&nbsp;</p><p>Gus Menteri Beberkan Konsepnya “Pemberdayaan ekonomi perempuan berbasis rumah tangga, bantuan permodalan dan pelatihan kewirausahaan mandiri, dan pembentukan serta pelatihan bagi kader desa tentang gender,” ungkapnya. Gus Menteri menyebut, desa bisa mewujudkan ekosistem gender dengan menyusun Perdes atau SK Kades tentang pemberdayaan perempuan. Dalam hal keterwakilan perempuan, Gus Menteri mengusulkan adanya ruang partisipasi perempuan dalam pemerintahan desa dan BPD. “Perempuan harus terlibat dalam segala persoalan desa, mulai dari musdes, penguatan lembaga perempuan, dan pelatihan kepemimpinan perempuan,” terangnya.&nbsp;</p><p>Gus Menteri Persilakan BUMDes Punya Unit Usaha Banyak Lebih lanjut, ia meminta masyarakat untuk bisa aktif dalam mendirikan pos pengaduan kekerasan terhadap perempuan dan anak. Hal ini penting kaitannya untuk memberikan perlindungan kepada para korban.</p>', 'Umum', '5e7dcb4608428.jpg', '2020-12-11'),
(18, 'Peraturan Desa dalam Penanganan Corona', 'Admin', '<p><b>Kebumen </b>- Belum lama ini pemerintah desa Kandibata mengeluarkan Peraturan Desa (perdes) tentang penanganan penyebaran virus Corona. Lahirnya Perdes ini sebenarnya bermula dari kedatangan pekerja dari Singapura ke desa yang terletak di Kabupaten Karo, Sumatera Utara tersebut. Kekhawatiran warga setempat tentang bahaya virus Corona membuat pekerja asing dilarang bermukim di sana.<br>Berdasarkan pemberitaan detikcom, salah satu poin penting yang ditetapkan dalam Perdes yang dimaksud yaitu penerapan isolasi selama 14 hari bagi orang-orang luar yang datang ke Kandibata. Isolasi ini dilakukan di suatu tempat khusus yang telah disiapkan oleh pemerintah desa setempat. Langkah ini ditempuh demi menekan laju perkembangan kasus-kasus Corona yang semakin mengkhawatirkan.<br><br>Terbitnya Perdes di atas menggambarkan respons pemerintah desa dalam menyambut sekaligus mendukung imbauan pemerintah pusat. Kegelisahan masyarakat tentang bahaya virus Corona ditanggapi secara bijak oleh pemerintah desa dengan menerbitkan Perdes. Komitmen pemerintah desa dalam mensukseskan visi dan misi pemerintah pusat diwujudkan dengan menindaklanjuti keluarnya beragam peraturan perundang-undangan tentang penanggulangan Covid-19. Adanya komitmen ini penting untuk membantu tercapainya target pemerintah pusat.<br><br><b>Peran Strategis</b><br><br>Dalam konteks inilah, kedudukan Perdes sebagai salah satu produk hukum di level lokal menemukan relevansinya. Bilai ditinjau secara seksama, Perdes memainkan peran strategis dalam upaya mewujudkan tata kelola pemerintahan yang bagus (good governance). Tak bisa dipungkiri bahwa terciptanya pemerintahan desa yang bersih (clean village government) antara lain dikarenakan lahirnya Perdes yang berkualitas dan demokratis.<br><br>Terbentuknya Perdes tentang penanggulangan Covid-19 menunjukkan sinergi antara kebijakan pemerintah pusat dengan pemerintah di bawahnya, termasuk pemerintah desa. Bagaimanapun, berjalannya pemerintahan di semua tingkatan membutuhkan kesepahaman yang sinergis antara pengambil kebijakan di tingkat lokal dan tingkat pusat. Itulah mengapa, pandangan sekaligus persepsi yang sama tentang mewabahnya virus Corona harus dibangun bersama.<br><br>Sebagaimana diketahui, banyak kebijakan pemerintah pusat yang kurang direspons secara baik dan serius oleh pemerintah di bawahnya. Terdapat sejumlah kebijakan pemerintah daerah maupun pemerintah desa yang ternyata justru kontraproduktif dengan apa yang digaungkan oleh pemerintah pusat. Alhasil, muncul beragam kebijakan yang saling bertentangan, bahkan tumpang tindih.<br><br>Dalam kondisi seperti ini, masyarakat desa tentu merasa bingung perihal peraturan mana yang selayaknya dijadikan pedoman. Kecuali dalam hal-hal tertentu, gambaran ini menunjukkan bahwa kebijakan pemerintah desa semestinya tidak boleh bertolak belakang dengan kebijakan pemerintah di atasnya. Dengan demikian, ketentuan-ketentuan yang termuat dalam produk hukum di desa mesti bersesuaian dengan peraturan perundang-undangan dengan level yang lebih tinggi.<br><br>Pada dasarnya apa yang digariskan melalui bermacam peraturan perundang-undangan sebisa mungkin menghindari adanya konflik norma. Munculnya konflik norma sebenarnya bisa dicegah antara lain dengan melakukan harmonisasi dan sinkronisasi bermacam produk hukum yang diterbitkan oleh pemerintah desa, pemerintah daerah, serta pemerintah pusat. Harapannya, terdapat kesesuaian sekaligus keselarasan antara norma satu dengan norma lainnya dalam bermacam peraturan perundang-undangan.<br><br><b>Melibatkan Masyarakat</b><br><br>Apa yang dilakukan oleh pemerintah desa Kandibata semestinya ditiru oleh pemerintah desa lainnya. Pembentukan Perdes secara tidak langsung turut mengukuhkan Negara Kesatuan Republik Indonesia (NKRI) sebagai negara hukum dengan asas legalitasnya. Sebagaimana diketahui, legalitas merupakan asas pokok negara hukum, di samping asas perlindungan kebebasan dan hak asasi manusia. Tidak hanya dalam hukum pidana, asas ini juga dikenal dalam Hukum Administrasi Negara.<br><br>Menurut asas legalitas, setiap perbuatan harus mengacu pada peraturan perundang-undangan yang berlaku. Jimly Asshiddiqie (2008) berpandangan bahwa berlakunya asas legalitas dalam segala bentuknya (due process of law) merupakan keniscayaan bagi setiap negara hukum. Ini berarti, berpijak pada pernyataan pakar hukum tata negara tersebut, segala tindakan pemerintahan harus didasarkan atas peraturan perundang-undangan yang sah dan tertulis.<br><br>Namun demikian, penyusunan Perdes tentang penanggulangan Covid-19 meniscayakan keterlibatan masyarakat. Bermacam isu yang berkaitan dengan upaya meminimalisasi bertambahnya kasus-kasus Covid-19 digali dengan menampung aspirasi sejumlah kalangan. Adapun proses uji publik dilakukan dengan mengundang para pemangku kepentingan agar mereka bersedia menyumbang masukan-masukan untuk diatur dalam Perdes.<br><br>Di sinilah urgensi partisipasi masyarakat dalam penyusunan peraturan perundang-undangan, termasuk Perdes. Peraturan perundang-undangan yang baik adalah yang bersifat partisipatif serta menampung hajat hidup orang banyak. Bagaimanapun, pembentukan Perdes tanpa melibatkan masyarakat cenderung bercorak elitis. Perdes tersebut dianggap mengingkari nilai-nilai demokratis karena dibuat berlandaskan hasrat dan kemauan orang-orang tertentu. Meskipun berjumlah terbatas, tetapi mereka inilah pemegang \"suara dan kuasa\". Mereka dinilai sebagai orang-orang paling berpengaruh di desa.<br><br>Selain partisipasi masyarakat, yang tidak kalah penting juga yaitu tingkat kepatuhan masyarakat terhadap norma-norma yang telah digariskan dalam Perdes. Implementasi peraturan perundang-undangan, termasuk Perdes, mensyaratkan adanya kehendak dan kesediaan masyarakat untuk mematuhi berbagai ketentuan di dalamnya. Dalam upaya menanggulangi penyebaran virus Corona hingga level desa, kepatuhan yang dimaksud menjadi hal yang niscaya.<br></p>', 'Umum', 'coronavirus.jpeg', '2020-12-11');

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
(1, 'Gapura_Desa_Benerkulon.png', '<p><strong>JAKARTA, beritalima.com | </strong>Pada tanggal 15 Januari 2020, pemerintah secara resmi telah merilis tema dan logo HUT RI ke 75. Ada pun tema yang diangkat pada HUT kemerdekaan tahun ini adalah Indonesia Maju. Pratikno (Menteri Sekretaris Negara) sudah mengeluarkan surat edaran terkait tema dan logo hari ulang tahun (HUT) kemerdekaan Republik Indonesia (RI). Beliau meminta para pimpinan lembaga negara, menteri, gubernur Bank lndonesia, jaksa agung, panglima TNI, kapolri, dan pimpinan lembaga pemerintah nonkementerian untuk mensosialisasikan tema dan logo tersebut.</p><p><br>Perancangan logo HUT RI ke 75 ini mempunyai keterkaitan dengan tujuan di pemerintahan Jokowi dan Ma’ruf Amin yaitu pembangunan infrastruktur, pembangunan SDM, penciptaan lapangan kerja, serta pemberdayaan UMKM. Indonesia Maju merupakan sebuah representasi dari Pancasila sebagai pedoman dalam kehidupan berbangsa dan bernegara.</p><p><br>Logo memiliki inspirasi simbol perisai pada lambang Garuda Pancasila. Logo HUT RI ke 75 png ini menafsirkan Indonesia merupakan negara yang mampu memperkokoh kedaulatan, menjaga persatuan dan kesatuan Indonesia. Logo HUT RI ke 75 cdr tahun ini menyimbolkan arti dari kesetaraan dan pertumbuhan ekonomi untuk rakyat Indonesia dan progres nyata dalam bekerja untuk mempersembahkan hasil yang terbaik kepada rakyat Indonesia.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `name`, `password`) VALUES
(1, 'admin', 'Admin', '$2y$10$BkQyxH7HVgkrv1OP2a8ox.sVfYZUlJqFrOXEWo6dT39PADMgSQOhy');

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

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
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visimisi`
--
ALTER TABLE `visimisi`
  MODIFY `id_visimisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
