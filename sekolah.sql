-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 31 Jan 2022 pada 23.02
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(10) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `artikel` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `pengupload` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `artikel`, `gambar`, `pengupload`, `status`) VALUES
(14, 'SELAMAT DAN SUKSES', 'Drs.Malik,M.Pd telah dilantik sebagai kepala sekolah SMKN 1 Bondowoso', 'Selamat Dan Sukses.jpg', 'adminsmk', '1'),
(17, 'DIRGAHAYU REPUBLIK INDONESIA', '76 Tahun kemerdekaan Indonesia,\r\n17 Agustus 2021', 'DIRGAHAYU REPUBLIK INDONESIA.jpg', 'adminsmk', '1'),
(18, 'VAKSIN 1 SMAKENSA', 'Vaksinasi di Smkn 1 Bondowoso di lakukan pada tanggal 4 Agustus 2021', 'VAKSIN I SMAKENSA.jpg', 'adminsmk', '1'),
(19, 'ADAPTASI KEBIASAAN BARU', 'Dengan menerapkan 5M yaitu memakai masker,mencuci tangan,menjaga jarak,menjauhi kerumunan,membatasi mobilitas', 'ADAPTASI KEBIASAAN BARU.jpg', 'adminsmk', '1'),
(20, 'AYO KITA CEGAH COVID', 'Jangan lupa protokol 3M Mencuci tangan,Memakai masker dan Menjaga jarak', 'AYO KITA CEGAH COVID.jpg', 'IqbalRoni', '1'),
(22, 'POTENSI ANAK SMK DALAM INDUSTRI KREATIF  PADA PLATFORM DIGITAL YOUTUBE', 'Penulis: Rocky Febrin Satya Rindhy, S.T.', 'POTENSI ANAK SMK DALAM INDUSTRI KREATIF  PADA PLATFORM DIGITAL YOUTUBE.jpg', 'IqbalRoni', '1'),
(23, 'HARI ANTI KORUPSI SEDUNIA 2021', 'Hari anti korupsi sedunia 2021 satu padu bangun budaya antikorupsi', 'HARI ANTI KORUPSI SEDUNIA 2021.jpg', 'IqbalRoni', '1'),
(24, 'Apresiasi dan Ucapan Selamat dan Sukses', 'Apresiasi dan Ucapan Selamat dan Sukses di berikan kepada wali murid kelas X,XI dan XII SMKN 1 Bondowoso atas upayanya meluangkan waktu untuk mendampingi putra dan putrinya menjadi GURU HEBAT selama proses pelajaran semester gasal tahun pelajaran 2021/2022 dirumah dan disekolah selama pandemi.', 'Apresiasi dan Ucapan Selamat dan Sukses.jpg', 'IqbalRoni', '1'),
(25, 'DIRGAHAYU SMK NEGERI 1 BONDOWOSO', 'Selamat Ulang Tahun Smkn 1 Bondowoso yang ke 55', 'DIRGAHAYU SMK NEGERI 1 BONDOWOSO.jpg', 'IqbalRoni', '1'),
(26, 'SELAMAT', 'PARA JUARA LKS SMK WILKER 2 PROVINSI JAWATIMUR', 'SELAMAT.jpg', 'IqbalRoni', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL,
  `judul_berita` varchar(100) NOT NULL,
  `pengupload` varchar(100) NOT NULL,
  `tanggal_upload` date NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `judul_berita`, `pengupload`, `tanggal_upload`, `isi`, `gambar`) VALUES
(11, 'vaksin 1 Smkn 1 Bondowoso', 'adminsmk', '2021-09-17', '<p>Vaksin di Smkn 1 Bondowoso di laksanakan pada tanggal 4 Agustus 2021.Vaksinasi atau imunisasi bertujuan untuk membuat sistem kekebalan tubuh seseorang mampu mengenali dan dengan cepat melawan bakteri atau virus penyebab infeksi. Tujuan yang ingin dicapai dengan pemberian vaksin COVID-19 adalah menurunnya angka kesakitan dan angka kematian akibat virus ini,Meskipun tidak 100% bisa melindungi seseorang dari infeksi virus Corona, vaksin ini dapat memperkecil kemungkinan terjadinya gejala yang berat dan komplikasi akibat COVID-19.</p>\r\n\r\n<p>Selain itu, vaksinasi COVID-19 bertujuan untuk mendorong terbentuknya herd immunity atau kekebalan kelompok. Hal ini penting karena ada sebagian orang yang tidak bisa divaksin karena alasan tertentu.</p>', 'vaksin 1 Smkn 1 Bondowoso.jpg'),
(13, 'POTENSI ANAK SMK DALAM INDUSTRI KREATIF  PADA PLATFORM YOUTUBE', 'Abdi Rahman A', '2021-02-01', '<p>Pesatnya perkembangan dunia industri kreatif hiburan berbasis platform digital youtube saat ini sedang marak terjadi. Ratusan hingga jutaan konten hiburan telah tersedia dalam platform digital tersebut. Dan faktanya peran platform digital ini perlahan seakan menggantikan media hiburan digital yang kita kenal sebelumnya yakni media televisi. Untuk terjun kedalam industri berbasis platform digital youtube saat ini terbilang mudah dan tidak banyak membutuhkan persyaratan tertentu, hanya dengan modal alat sederhana, kemauan serta kreatifitas siapapun dapat melakukannya.</p>\r\n\r\n<p>Sejumlah pelajar SMK jurusan Multimedia di salah satu sekolah SMK Negeri di Jawa Timur tepatnya SMK Negeri 1 Bondowoso telah cukup lama menekuni industri tersebut dan juga telah menjalin kerja sama dengan salah satu studio animasi asal Jogjakarta. Selain untuk kegiatan pendidikan bentuk kerja sama tersebut juga sebagai wadah berkreasi siswa-siswi SMK agar dapat tersalurkan, sehingga anak SMK dapat terus termotivasi untuk belajar mengasah kemampuannya. Hal ini tentunya sejalan dengan pernyataan Undang-Undang Sistem Pendidikan Nasional No. 20 Tahun 2003 pasal 15 yang menyebutkan bahwa Sekolah Menengah Kejuruan (SMK) sebagai bagian penting dari sistem pendidikan kejuruan memiliki tujuan yaitu &ldquo;..... mempersiapkan peserta didik terutama untuk bekerja dalam bidang tertentu&rdquo;.</p>\r\n\r\n<p>Najwa dan Kawan-Kawan merupakan salah satu konten animasi sarat dengan muatan lokal serta pendidikan untuk anak usia dini yang berhasil ditelurkan oleh siswa-siswi Jurusan Multimedia SMK Negeri 1 Bondowoso dan hingga saat ini terus secara berkelanjutan diproduksi. Puluhan episode telah tayang pada platform digital youtube dengan jumlah ratusan ribu pelanggan serta telah ditonton jutaan kali oleh penonton youtube dan yang sangat mengejutkan channel yang dibangun oleh pelajar ini telah terverified secara resmi oleh youtube. Hal ini menjadi pertanda bahwa konten yang telah mereka buat dapat menghasilkan pundi-pundi rupiah.</p>\r\n\r\n<p>Seluruh komponen dalam konten animasi yang mereka produksi merupakan 100% karya siswa-siswi SMK Negeri 1 Bondowoso, baik dari ide cerita, penulisan naskah, produksi animasi, pengisi suara, editing dan hingga pengelolaan tayangan tersebut dilakukan secara mandiri. Pendampingan yang dilakukan oleh guru terbilang sangat minim, artinya siswa-siswi SMK sebenarnya sudah cukup mampu dalam industri ini. Yang diperlukan hanyalah pendampingan serta penyediaan media yang cukup untuk menyalurkan kreatifitas mereka.</p>\r\n\r\n<p>Hingga artikel ini ditulis saat ini terdapat beberapa sub channel youtube yang telah dibuat, salah satunya serial atau konten dengan muatan hiburan berjudul Hai Nana dan Horror Purba yang juga masih mempertahankan karakter animasi khas siswa-siswi buat sebelumnya. Melihat respon yang sangat baik dari penonton youtube pihak perusahaan yang menjalin kerja sama dengan SMK Negeri 1 Bondowoso kini memberi kesempatan untuk mengembangkan konten-konten yang siswa buat dengan memfasilitasi dan menyediakan bangunan kantor sendiri. Dimana seluruh pekerja yang terlibat dalam rumah produksi tersebut merupakan alumni siswa-siswi SMK Negeri 1 Bondowoso dan atau siswa-siswi yang masih aktif belajar di SMK Negeri 1 Bondowoso.</p>\r\n\r\n<p>Bentuk kerja sama tersebut saat ini tertuang menjadi program unggulan kelas industri di Jurusan Multimedia SMK Negeri 1 Bondowoso, dimana salah satu program praktik kerja industri SMK yang mengharuskan siswa-siswi SMK untuk melakukan praktik kerja industri sebagai salah satu syarat untuk melanjutkan studi di tingkat selanjutnya. Harapannya dengan terwujudnya program tersebut dapat menjadi main project atau contoh bagi sekolah kejuruan lain yang memiliki fasilitas dan segala aspek tersebut dapat mengambil langkah yang sama. Sehingga potensi anak SMK secara umum di Indonesia dapat dimaksimalkan dengan baik sejalan dengan perkembangan teknologi terbarukan</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Penulis: Rocky Febrin Satya Rindhy, S.T.</strong></p>\r\n\r\n<p><strong><em>Penyunting artikel: Aning Retno Susanti, S.E, M.M, M.Pd (Wakil Kepala Sekolah bidang Humas SMK Negeri 1 Bondowoso)</em></strong></p>', 'POTENSI ANAK SMK DALAM INDUSTRI KREATIF  PADA PLATFORM YOUTUBE.jpg'),
(14, 'vaksin 1 Smkn 1 Bondowoso', 'adminsmk', '2022-02-01', '<p>Vaksin di Smkn 1 Bondowoso di laksanakan pada tanggal 4 Agustus 2021.Vaksinasi atau imunisasi bertujuan untuk membuat sistem kekebalan tubuh seseorang mampu mengenali dan dengan cepat melawan bakteri atau virus penyebab infeksi. Tujuan yang ingin dicapai dengan pemberian vaksin COVID-19 adalah menurunnya angka kesakitan dan angka kematian akibat virus ini,Meskipun tidak 100% bisa melindungi seseorang dari infeksi virus Corona, vaksin ini dapat memperkecil kemungkinan terjadinya gejala yang berat dan komplikasi akibat COVID-19.</p>\r\n\r\n<p>Selain itu, vaksinasi COVID-19 bertujuan untuk mendorong terbentuknya herd immunity atau kekebalan kelompok. Hal ini penting karena ada sebagian orang yang tidak bisa divaksin karena alasan tertentu.</p>', 'vaksin 1 Smkn 1 Bondowoso.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `brand`
--

INSERT INTO `brand` (`id_brand`, `nama`, `foto`) VALUES
(2, 'Prima', 'Prima.png'),
(7, 'BankJatim', 'BankJatim.png'),
(8, 'alfamart', 'alfamart.png'),
(9, 'LimaDigital', 'LimaDigital.png'),
(10, 'JVPI', 'JVPI.png'),
(11, 'Estoh', 'Estoh.png'),
(12, 'Kominfo', 'Kominfo.png'),
(13, 'MuncarTV', 'MuncarTV.png'),
(14, 'DolantCreative', 'DolantCreative.png'),
(15, 'GameLab', 'GameLab.png'),
(18, 'BRI', 'BRI.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `pesan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `domain`
--

CREATE TABLE `domain` (
  `id_domain` int(100) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `domain`
--

INSERT INTO `domain` (`id_domain`, `judul`, `link`, `foto`) VALUES
(6, 'Osis Smakensa', 'http://www.osis.smkn1bws.sch.id/', 'Osis Smakensa.jpg'),
(7, 'Esport Smakensa', 'http://esportsmakensa.smkn1bws.sch.id/', 'Esport Smakensa.jpg'),
(8, 'E-Raport', 'https://erapor.smkn1bws.sch.id:8154/login', 'E-Raport.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `rumpun` enum('ti','bm','seni') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama`, `deskripsi`, `foto`, `rumpun`) VALUES
(1, 'Akutansi', 'Suatu proses mencatat, mengklarifikasi, meringkas, mengolah dan menyajikan data, transaksi serta kejadian yang berhubungan keuangan.', 'ak.png', 'bm'),
(2, 'Perbankan', 'Bidang Studi yang fokus pada dunia keuangan, seperti bank, asuransi, lembaga simpan pinjam, pasar modal serta transaksi di dalamnya.', 'pb.png', 'bm'),
(3, 'Administrasi Perkantoran', 'Serangkaian kegiatan sehari-hari yang berkaitan dengan perencanaan keuangan, penagihan dan pencatatan, personalia dan distribusi barang.', 'ap.png', 'bm'),
(4, 'Bisnis daring pemasaran', 'Keahlian yang mempelajari dasar-dasar kemampuan dan keilmuan marketing baik marketing secara konvosional maupun melalui media daring.', 'bdp.png', 'bm'),
(5, 'Teknik Komputer Jaringan\r\n', 'Teknik mempelajari tentang cara instalasi PC, instalasi LAN memperbaiki PC dan mempelajari program-progam PC dan Networking.', 'tkj.png', 'ti'),
(6, 'Rekayasa Perangkat Lunak', 'Satu Bidang profesi yang mendalami cara-cara pengembangan perangkat lunak termasuk pembuatan aplikasi, pemeliharaan, dan manajement.', 'rpl.png', 'ti'),
(7, 'Multimedia', 'Teknik mempelajari tentang cara membuat sebuah animasi dan menggambar, sehingga pengguna bisa navigasi, berinteraksi dan berkarya.', 'mm.png', 'ti'),
(8, 'Teknik Pertelevisian\r\n', 'Mengerjakan proyek multimedia, sebagai asisten riset, markerting,periklanan, industri online dan jurnalistik.\r\n', 'tp3.png', 'seni'),
(9, 'Perfilman', 'Mengerjakan proyek multimedia, sebagai asisten riset, markerting,periklanan, industri online dan jurnalistik.', 'pf.png', 'seni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `profesi` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `nama`, `profesi`, `foto`, `pesan`, `status`) VALUES
(8, 'sdsdsdsdsd', 'sdsdssd', 'sdsdsdsdsd.png', 'sdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsddd', 2),
(9, 'awd', 'awd', 'awd.jpg', 'awdawd', 2),
(10, 'BARANG 2', 'mni Masukan Motivasi Dan Komentarqwd', 'BARANG 2.jpg', 'as', 2),
(11, 'hh', 'h', 'hh.jpg', 'b', 2),
(12, 'Uus', 'Hiling', 'Uus.png', 'Aku suka hiling kalo kamu???', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'IqbalRoni', 'Roniesaputra92@gmail.com', NULL, '$2y$10$ywo7bt0KyXUXEShOo4sAgu49FCUSS3pN8FSyMEW8plGJHFrJHXE1S', NULL, NULL, NULL),
(6, 'adminsmk', 'admin@gmail.com', NULL, '$2y$10$S34k1xboDfG2kfu38BARcu8YUx7tCPEiAcljt/mVzQPpakZpkUZZ.', NULL, NULL, NULL),
(7, 'alifrmdn14', 'ramadhanalif430@gmail.com', NULL, '$2y$10$oYYcZydsRXFshgaZZVAB/.FVF1M1TcN.IztFb67VMDzR6nPyMN.dy', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `judul`, `link`) VALUES
(1, '\"NEMOR\" Film Pendek Fiksi Festival Film WBTB 2021', 'https://www.youtube.com/embed/aOr7TN7ccXg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indeks untuk tabel `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id_domain`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `domain`
--
ALTER TABLE `domain`
  MODIFY `id_domain` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
