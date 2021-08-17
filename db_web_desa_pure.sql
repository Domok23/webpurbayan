-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Agu 2021 pada 16.10
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_web_desa_pure`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `slug_berita`, `judul_berita`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `urutan`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(1, 3, 'wisata-perak-kotagede', 'Wisata Perak Kotagede', '<p data-adtags-visited=\"true\">Apakah Anda menyukai perhiasan? Bagaimana dengan perhiasan atau aksesoris yang terbuat dari perak? Di Yogyakarta sendiri, tempat terbaik untuk mendapatkan perak adalah di Kotagede.</p>\r\n<p data-adtags-visited=\"true\">Gapura besar menyambut setiap pengendara yang melewati pertigaan Gedong Kuning menuju Jalan Kemasan, Kotagede.&nbsp;<em>Selamat datang di Sentra Kerajinan Perak Kotagede</em>, begitu bunyi tulisan yang tertera di atasnya. Di hari-hari kerja biasa, jalanan ini memang tidak begitu ramai, namun jika sudah tiba akhir minggu atau masa liburan, biasanya mulai terlihat para pemburu perak yang bertandang ke toko-toko yang berjejer di sepanjang jalan.</p>\r\n<p data-adtags-visited=\"true\">Memang ada banyak sekali toko yang menjual kerajinan dan perhiasan perak di sepanjang Jalan Kemasan. Baik toko kecil maupun besar menjual beragam hasil kerajinan seperti kalung, cincin, gelang atau souvenir dengan bentuk-bentuk unik dan rumit. Wahyu (24), salah satu pembeli aksesoris perak mengaku Kotagede adalah tujuan utama jika ingin mencari aksesoris atau cinderamata dari perak.</p>\r\n<p data-adtags-visited=\"true\">&ldquo;Perak itu emang bagus ya buat aksesoris dan harganya juga lebih terjangkau dari emas..&rdquo;, ujar Wahyu, saat ditanyai mengapa ia memilih perak.</p>\r\n<p data-adtags-visited=\"true\">Toko-toko di sepanjang Jalan Kemasan biasanya hanya menjual kerajinan perak saja, sementara produksinya sendiri dilakukan di rumah para pengrajin yang berlokasi di Kampung Basen. Merasa penasaran dengan proses produksi kerajinan perak ini, Atmanews lantas bertandang ke Kampung Basen, yang letaknya tak jauh dari jalan utama Kotagede. Kampung Basen sendiri merupakan kampung yang sudah diresmikan sebagai kampung wisata kerajinan perak sejak 23 Agustus 2011. Kampung ini berhasil menjadi kampung wisata setelah menjalankan program pengembangan wirausaha penduduk dalam bidang kesenian dan kuliner.</p>\r\n<p data-adtags-visited=\"true\">Pengembangan ini sejalan dengan upaya pemerintah yang ingin mengangkat kerajinan perak Kotagede sebagai daya tarik wisatawan. Kampung Basen bahkan juga telah memiliki&nbsp;<em>website</em>&nbsp;mereka sendiri sebagai alat bantu promosi dan pengenalan pariwisata kepada khalayak luas</p>\r\n<p data-adtags-visited=\"true\">Sebagian besar penduduk masyarakat Basen mencari nafkah sebagai pengrajin logam, terutama perak, emas dan tembaga. Mereka juga memiliki asosiasi pengrajin sendiri, yakni Asosiasi Senopati. Salah satu pengrajin perak tersebut adalah Pak Tumijo yang sudah lebih dari 20 tahun menggeluti pekerjaannya. Pak Tumijo tinggal di rumah sederhana yang juga merupakan bengkel kerja dan&nbsp;<em>showroom</em>&nbsp;produksi peraknya sendiri.</p>\r\n<p data-adtags-visited=\"true\">Pak Tumijo mengklaim, hasil kerajinan perak buatannya beda dari yang lain, karena lebih rumit desain dan detailnya. Memang betul, kerajinan perak milik Pak Tumijo menonjolkan lebih banyak detail, seperti penggunaan ornamen lengkung dan spiral.</p>\r\n<p data-adtags-visited=\"true\">&ldquo;Di kampung Basen, memang jarang yang bikin seperti ini, biasanya hanya yang polos-polos saja, karena itu lumayan banyak juga yang pesan kesini..&rdquo;, ungkap Pak Tumijo dengan senyuman.</p>\r\n<p id=\"inline-ad-0\" class=\"inline-ad-slot\" data-adtags-width=\"661\" data-adtags-visited=\"true\">&nbsp;</p>\r\n<p data-adtags-visited=\"true\">Selain melihat-lihat cinderamata buatan Pak Tumijo, beliau juga mengizinkan Atmanews untuk melihat secara langsung proses produksi kerajinan ini. Sayangnya, karena Pak Tumijo masih dalam tahap awal pengerjaan, ia tidak bisa memperlihatkan tahap pembuatannya hingga akhir. Saat itu, Pak Tumijo sedang mengerjakan pesanan bros dalam jumlah besar yang akan diekspor ke China.</p>\r\n<p>Bahan utama pembuatannya adalah kawat tipis perak yang bisa dibentuk menjadi apa saja melalui berbagai teknik. Untuk membuat detail ornamen, Pak Tumijo menggunakan kait besi kecil dan tang. Sementara untuk membuat butir-butiran perak, harus dilakukan pembakaran. Pak Tumijo memperlihatkan bagaimana sebuah potongan kawat perak, apabila dibakar, dengan sendirinya akan membentuk butiran.</p>\r\n<p>Setelah dibentuk sesuai keinginan, perak-perak tersebut dibasahi dan ditaburi bubuk patri, dibakar, dan kemudian direbus dengan air tawas. Perebusan dan pembakaran ini disebut sebagai pemutihan, dan dilakukan sebanyak 3 hingga 4 kali. Hasilnya adalah perak dengan warna yang bersih dan berkilau.</p>', 'Publish', 'Berita', 'Integrasi Data dan Pengetahuan', 'img_0999.jpg', '', 11, 0, '2019-05-13 15:51:51', '2021-05-05 15:51:36', '2021-08-14 06:51:10'),
(2, 3, 'kampung-gedongan', 'Kampung Gedongan', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>', 'Publish', 'Kampung', 'Kampung yang memiliki ada Upacara Adat ( Nyadran)', 'gdd_1.png', 'fa fa-globe', 79, 0, '2019-05-17 04:15:33', '2021-07-02 04:06:15', '2021-08-14 07:49:58'),
(3, 3, 'kampung-purbayan', 'Kampung Purbayan', '<p style=\"text-align: justify;\">Kampung wisata Purbayan secara kewilayahan berada di Kelurahan Purbayan, Kecamatan Kota Gede dan berada di Kawasan Cagar Budaya Kota Gede, Kota Yogyakarta, Daerah Istimewa Yogyakarta.</p>\r\n<p style=\"text-align: justify;\">Kota Gede adalah sebuah daerah yang dahulu merupakan cikal bakal Kerajaan Mataram Islam pertama. Lokasi tersebut saat ini merupakan kawasan wisata budaya berbasis heritage. Melalui Kampung Wisata Purbayan inilah Anda bisa mengetahui awal mula sejarah Kasultanan Ngayogyakarta Hadiningrat.</p>', 'Publish', 'Kampung', 'Kampung Wisata Berbasis Religius', 'pbn.jpg', 'fa fa-globe', 9, 2, '2019-05-17 04:37:00', '2021-07-01 04:36:19', '2021-08-12 15:11:49'),
(4, 3, 'profil-desa-wisata-purbayan', 'PROFIL DESA WISATA PURBAYAN', '<p>Kelurahan Purbayan &nbsp;dibentuk pada tahun 1981, berdasar Peraturan Daerah Provinsi Daerah Istimewa Yogyakarta ( Perda DIY) Nomor 6 tahun 1981 Tentang Pembentukan, Pemecahan, Penyatuan dan Penghapusan Kelurahan di Provinsi Daerah Istimewa Yogyakarta. Kelurahan Purbayan terbentuk dari 4 eks Rukun Kampung (RK) yaitu : RK Gedongan, RK Basen, RK Purbayan, dan RK Alun &ndash; Alun. Dengan pembentukan Kelurahan, 4 RK digabung dan dibagi menjadi 14 Rukun Warga (RW) dan terdiri dari 58 Rukun Tetangga (RT) dengan jumlah Kepala Keluarga 3302 KK dan jumlah penduduk 10.176 jiwa.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Batas Administrasi<br /></strong>Luas wilayah Kelurahan Purbayan sebesar 83 Ha. Luas lahan yang ada terbagi dalam beberapa peruntukan, dapat dikelompokkan seperti untuk fasilitas umum, pemukiman,&nbsp; kegiatan ekonomi dan Iain-lain.<br />Kelurahan Purbayan berada dalam wilayah Kecamatan Kotagede Kota Yogyakarta dengan nomor Kode Wilayah 34.71.14.03 dan Kode Pos 55173.<br />Kelurahan Purbayan Kecamatan Kotagede Kota Yogyakarta mempunyai luas wilayah &nbsp;&nbsp;0,83 km2 dengan peta wilayah sebagaimana ditunjukkan pada Gambar 1 dan berbatasan langsung dengan :</p>\r\n<table class=\"tiny-table\" style=\"border-collapse: collapse; width: 99.7649%; height: 88px; border-style: none;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 20.7376%; height: 22px;\">Sebelah Utara&nbsp;</td>\r\n<td style=\"width: 0.595593%; height: 22px;\">:</td>\r\n<td style=\"width: 101.744%; height: 22px;\">Desa Banguntapan &nbsp;Kecamatan Banguntapan Kabupaten Bantul</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 20.7376%; height: 22px;\">Sebelah Selatan</td>\r\n<td style=\"width: 0.595593%; height: 22px;\">:</td>\r\n<td style=\"width: 101.744%; height: 22px;\">Desa Singosaren Kecamatan Banguntapan Kabupaten Bantul</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 20.7376%; height: 22px;\">Sebelah Barat&nbsp;</td>\r\n<td style=\"width: 0.595593%; height: 22px;\">:</td>\r\n<td style=\"width: 101.744%; height: 22px;\">Desa Jagalan Kecamatan Banguntapan Kabupaten Bantul dan Kelurahan Prenggan, Kelurahan Rejowinangun Kota Yogyakarta</td>\r\n</tr>\r\n<tr style=\"height: 22px;\">\r\n<td style=\"width: 20.7376%; height: 22px;\">Sebelah Timur</td>\r\n<td style=\"width: 0.595593%; height: 22px;\">:</td>\r\n<td style=\"width: 101.744%; height: 22px;\">Desa Banguntapan Kecamatan Banguntapan Kabupaten Bantul</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><strong>Kondisi dan Ciri Geografis Wilayah<br /></strong>Ketinggian Wilayah Kelurahan Purbayan secara umum terletak pada posisi 113 m di atas permukaan laut. Kelurahan Purbayan terletak di wilayah Kecamatan Kotagede Kota Yogyakarta yang merupakan kota tua bekas Ibu kota kerajaan, Kota Kotagede merupakan kota warisan (<em>heritage</em>) yang amat berpotensi bagi kemakmuran masyarakatnya dan merupakan daerah hunian padat. Walaupun di Kelurahan Purbayan relatif tidak ada industri besar, namun kegiatan ekonomi bergerak cukup tinggi terutama karena digerakkan oleh kerajinan industri perak (<em>silver</em>) yang berada di dan sekitar Kelurahan Purbayan. Jarak Purbayan dari pusat Pemerintahan Kecamatan 500 M, Pemerintahan Kota 4&nbsp; Km.</p>', 'Publish', 'Profil', '', '202010061524191.jpg', '', 125, 1, '2019-07-26 10:38:15', '2021-06-02 10:36:47', '2021-08-14 06:52:07'),
(6, 3, 'kampung-basen', 'Kampung Basen', '<p style=\"text-align: justify;\">Kampung Basen adalah sebuah tempat wisata yang ada di wilayah Kota Gede, Yogyakarta lebih tepatnya di Jalan Kemasan, Purbayan, Kotagede, Yogyakarta. Awal berdirinya kampung basen adalah adanya tokoh dari kerajaan mataram yang konon katanya pendiri agama islam yaitu Kyai Basah beliau dulunya tinggal di kampung tersebut dan mendirikan padepokan, jadi kampung ini disebut Basen. Lalu di pojok kampung ada &ldquo;Mbaluarti&rdquo; yaitu tempat istirahatnya wanita-wanita atau kerabat wanita dari keraton, biasanya untuk tempat bermain. Bentuknya bukan kerajaan tapi padepokan. Kondisi sosial budaya di Kampung Basen itu sangat unik, warga di Kampung Basen sangat ramah dan terbuka, mereka mau menerima pendatang baru. Ketika mendatangi Kampung Basen pasti anda akan kaget karena akan di hadapkan oleh kelompok assosiasi para pengrajin, seperti assosiasi sayur lodeh, assosiasi penjahit, assosiasi lotek, dan lainnya. Assosiasi adalah badan organisasi yang khusus diadakan oleh manusia untuk mencapai tingkat hidup yang lebih baik (dalam memenuhi kebutuhan ekonomi), orang membentuk assosiasi seperti firma, perseroan terbatas, serikat buruh dan sebagainya. Organisasi yang ada di kampung Basen yaitu PKK, posyandu untuk balita dan lansia, BKKBN (BKB itu Bina Keluarga Balita, BKR itu Bina Keluarga Remaja, dan BKL yaitu Bina Keluarga Lansia). Organisasi ini dilaksanakan dengan baik oleh warga yang ada di Kampung Basen. Selain itu ada kegiatan yang sering dilakukan oleh warga Kampung Basen seperti di RT 10 ibu-ibu biasanya melakukan kerja bakti di minggu terakhir, ada arisan di tingkat RT dan RW, dan Aisyah Muhammadyah yang&nbsp;&nbsp;kegiatannya macam-macam yaitu ada pertemuan rutin, pengajian, kegiatan santunan anak asuh, ada pemeriksaan kesehatan lansia secara gratis, ada kegiatan ekonomi. Perekonomian Kampung Basen sekarang sedang &ldquo;lesu&rdquo; atau sedang sepi. Alasannya karena teknologi sudah maju orang-orang sekarang kalau pesan tidak langsung datang ke rumah, tapi memakai online. Padahal yang memakai sistem online seperti itu belum tentu punya toko. Dulu sebelum adanya teknologi yang canggih masih ada pengunjung mancanegara ataupun domestik yang datang ke rumah untuk melihat proses pembuatan secara langsung kemudian mereka memesan, soalnya yang mancanegara itu biasanya lebih suka yang <em>handsmade&nbsp;</em>(buatan tangan/ bukan mesin) yang di hasilkan oleh&nbsp;<em>handsmade&nbsp;</em>ini banyak yang di pesan untuk sorum atau toko-toko di depan itu. Tetapi toko-toko yang berdiri di depan 50 % sudah bukan dari warga sini kebanyakan pendatang baru dari luar wilayah ini. Yang asli dari wilayah ini malah justru menjadi pekerja nya bukan pemilik toko, toko-toko tersebut belum tentu tau proses kerja dari pembuatan cincin dan lainnya. Sistem sosial di Kampung Basen yang pertama adalah norma dan peraturan, norma menurut Emil Durkheimbahwa norma-norma sosial adalah sesuatu yang berada di luar individu. Membatasi mereka dan mengendalikan tingkah laku mereka. Membicarakan tentang norma dan peraturan di Kampung Basen memiliki norma dan aturan yang cukup mengesankan yaitu contohnya jam belajar masyarakat, kemudian menjadi kawasan bebas rokok untuk seluruh kampung ini, di tunjuk sebagai <em>pilot project.</em>&nbsp;Aturan yang dibuat oleh warga ini dilaksanakan dengan baik, meskipun masih banyak juga yang melanggarnya.&nbsp;Yang kedua adalah masalah sosial yang ada di masyarakat Kampung Basen seperti balita kemarin kurang gizi, kemudian merokok masih remaja, kenakalan remaja. Masalahnya adalah seperti kenakalan remaja, lalu remaja yang merokok, kemudian karena di sini ada banyak kontrakan atau kos-kosan jadi rawan sekali adanya&nbsp;&nbsp;fitnah, pernah terjadi salah satu warga kepergok satu kontrakan tapi tidak menikah, akhirnya masalah di selesaikan ke tingkat RT, jika tidak bisa di selesaikan lewat RT naik banding ke RW.&nbsp;Ini membuktikan bahwa lembaga sosial yang ada di Kampung Basen menjalankan tugas nya dengan baik, kedudukan dan status sosial yang ada di Kampung Basenmembuktikan bahwaperan lembaga RW dan RT dalam menyelesaikan masalah dan menjalankan tugas nya sangat bertanggung jawab.&nbsp;Tradisi yang selalu di lakukan oleh warga Kampung Basen adalah setiap ada &ldquo;Gelar Budaya Kota Gede&rdquo;. Acarannya yaitu di setiap kampung mengirimkan salah satu perwakilan budaya nya, kalau di kampung Basen itu mereka merias warga persis penampilannya dengan Kyai Basah, dan nanti ada karnaval atau pawai acaranya itu Juni atau Juli, nah nanti dari Gedongan kampung sebelah juga ada, tetapi tradisi ini untuk lingkup Kota Gede, kalau lingkup kampung tidak ada. Hanya tradisi setiap tahun saja secara nasional memperingati HUT RI ada banyak lomba di sini.&nbsp;Ada banyak komunitas yang terbentuk di Kampung Basen, contohnya ada komunitas karawitan bapak-bapak, ada juga bapak-bapak muda, kalau hari rabu ada karawitan untuk anak-anak tempatnya di balai RW. Ini adalah upaya untuk mempertahankan tradisi dan budaya di kampung tersebut. kemudian kedepannya ketika ada pernikahan mereka berencana tidak pakai kaset tetapi tampil&nbsp;<em>live</em>&nbsp;atau secara langsung. Di kampung itu juga ada komunitas keroncong, kalau dari wanita ada karawitan juga kebetulan paud di Kampung Basen sudah cukup ternama karena mengikuti gebyar paud tingkat provinsi, tingkat kota. Biasanya mereka menampilkan anak-anak dengan iringan&nbsp;<em>live&nbsp;</em>yang di iringi oleh bapa/ibu nya melalui karawitan. Januari nanti ada gebyar paud dan anak-anak akan di keluarkan lagi untuk tampil.&nbsp;Di yogyakarta yang terbesar kampungnya adalah Kampung Basen, karena setiap kampung itu maksimal 4 RT, tetapi di Kampung Basen itu ada 7 RT, karena jika di buat dua RW, warganya yang tidak mau nanti tidak adil. Karena khawatir ada kecemburuan sosial antar warganya, kegiatan di kampung itu padat sekali contoh kalau hari selasa anak-anak paud, hari sabtu itu juga paud, hari jumat sore itu ibu-ibu belajar iqra lansia, karena untuk bekal ketika ingin naik haji mereka sudah punya bekal, kemudian malam selasa itu ada kegiatan untuk ibu-ibu muda membaca iqra dengan juz&rsquo;ama, malam kamisnya itu yang sudah hafal Al-Qur&rsquo;an, jadi memang ada tingkatan kalau yang hari selasa sudah bisa baca Qur&rsquo;an mereka bisa langsung datang hari kamis.&nbsp;Kemudian bapa-bapa, malam sabtu karawitan, kemudian bulan Desember kampung Basen di tunjuk sebagai kampung tangguh bencana, karena mereka sudah selesai pelatihan maka namanya tangguh bencana, kalau yang belum selesai pelatihan itu namanya tanggap bencana. Mereka sudah mendirikan KTB, kemudian mendapat bantuan berupa alat dari BPPD kota ketika ada gempa bumi, karena kampung ini terlewati garis merah bencana gempa bumi, ketika terjadi gempa bumi tahun 2006 kampung ini rusak parah.&nbsp;Program di kampung ini sudah tersusun rapi, seperti adanya sumbangan kematian itu panitia dari bapak-bapak langsung bergerak ke rumah warga, kemudian ketika ada pernikahan mereka langsung bergerak untuk membertahu warga, namun ada yang unik di Kampung Basen sistemnya bukan memakai undangan tetapi langsung mendatangi ke rumah-rumah warga dengan menggunakan bahasa jawa halus, tradisi kejawen di sini masih di terapkan, kemudian kampung basen memiliki aturan yang cukup ketat, di kampung ini tidak boleh ada yang nikah sirih hidup serumah di tanah Basen, dan setiap ada keluarga yang dari luar kota ingin tinggal di Kampung Basen mereka harus membayar uang kompensasi yang akan masuk uang kas RW.</p>', 'Publish', 'Kampung', 'Kampung Basen adalah sebuah tempat wisata yang ada di wilayah Kota Gede', 'desa_basen.jpeg', 'fa fa-globe', 15, 1, '2021-08-05 13:14:08', '2021-08-05 13:08:14', '2021-08-12 15:22:02'),
(8, 3, 'kampung-alun-alun', 'Kampung Alun-alun', '<p>Sejak dulu Kotagede sangat terkenal dengan berbagai sejarah budaya. Salah satu yang mencolok dari daerah ini adalah sentra peraknya. Selain itu, terdapat juga berbagai bangunan-bangunan peninggalan sejarah dari cikal bakal Keraton yang masih dilestarikan.</p>\r\n<p>Beberapa tahun belakangan, popularitas Kotagede meningkat dengan adanya kepopuleran pintu rumah tradisional Kotagede. Pintu ini seringkali dijadikan tempat berfoto bagi pengguna media sosial.</p>\r\n<p>Melihat fenomena ini Yunisa Asrianie melihat bahwa Kotagede kental akan nuansa tradisional. Nuansa ini berasal dari corak arsitekturnya yang tradisional dan bercampur gaya Belanda.</p>\r\n<p>&ldquo;Kotagede memiliki citra sebagai sentra perak dan kawasan kota tua. Sehingga dapat disimpulkan bahwa atmosfer yang terciptanya di Kotagede memberikan pengalaman suasana Kota Tua bagi wisatawan,&rdquo; tulis Yunisa dalam tesisnya yang berjudul P<em>otensi Pemukiman Rumah Tradisional Kotagede Sebagai Obyek Wisata</em>&nbsp;tahun 2016.</p>\r\n<p>Adanya corak bangunan tradisional ini membuat Kotagede mempunyai kemungkinan untuk menjadi atraksi wisata Kota Tua Kotagede.</p>\r\n<p>Ada pun Catur Gatra Tunggal yang merupakan peninggalan Keraton, kini berusaha dihidupkan kembali. Catur Gatra Tunggal terdiri dari Pasar Kotagede, Masjid Gedhe, dan Kampung Alun-alun.</p>', 'Publish', 'Kampung', 'Wisata Between Two Gates', 'desa_alun-alun.jpg', 'fa fa-globe', 10, 0, '2021-08-05 13:18:28', '2021-08-05 13:18:19', '2021-08-12 15:21:24'),
(11, 3, 'kampung-basena', 'Kampung Basena', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu ultrices vitae auctor eu. Rutrum quisque non tellus orci. Amet nisl purus in mollis nunc. Nec nam aliquam sem et tortor. Enim tortor at auctor urna nunc id. Mauris ultrices eros in cursus. Libero nunc consequat interdum varius sit amet mattis. Faucibus nisl tincidunt eget nullam. Posuere urna nec tincidunt praesent semper feugiat. Parturient montes nascetur ridiculus mus. Ultrices dui sapien eget mi proin sed libero. Ornare aenean euismod elementum nisi quis. Nec feugiat nisl pretium fusce. Eget est lorem ipsum dolor sit amet consectetur. Cursus euismod quis viverra nibh. Quam viverra orci sagittis eu volutpat odio facilisis. At tellus at urna condimentum mattis.</p>\r\n<p>Gravida cum sociis natoque penatibus. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Ut ornare lectus sit amet est. Orci dapibus ultrices in iaculis nunc sed. Arcu odio ut sem nulla pharetra diam sit. Nulla posuere sollicitudin aliquam ultrices sagittis. Volutpat commodo sed egestas egestas fringilla. Aliquam ut porttitor leo a diam. Tincidunt praesent semper feugiat nibh sed pulvinar proin gravida. Et leo duis ut diam quam nulla porttitor massa id. Vulputate odio ut enim blandit volutpat maecenas volutpat. In est ante in nibh mauris cursus mattis. Congue quisque egestas diam in arcu cursus euismod. Tristique risus nec feugiat in fermentum posuere urna. Nibh tortor id aliquet lectus proin nibh. Diam ut venenatis tellus in. Eu consequat ac felis donec.</p>', 'Publish', 'Berita', '', 'mj.jpg', 'fa fa-globe', 37, 0, '2021-08-05 19:21:46', '2021-08-05 19:20:58', '2021-08-14 06:58:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `popup_status` enum('Publish','Draft','','') NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `popup_status`, `urutan`, `tanggal`) VALUES
(5, 5, 3, 'Kampung Wisata', 'Homepage', '<p>Purbayan</p>', 'bggg.png', '', 1, 'Publish', NULL, '2021-08-12 14:21:39'),
(6, 4, 3, 'Dokumentasi1', 'Galeri', '<p>Lorem ipsum lorem ipsum</p>', 'ny.jpg', '', 1, 'Publish', 1, '2021-08-05 10:28:07'),
(7, 4, 3, 'Dokumentasi5', 'Galeri', '<p>isiDokumentasi2</p>', 'blog-image.jpg', '', 5, 'Publish', NULL, '2021-08-05 14:18:13'),
(11, 5, 3, 'Kelurahan Purbayan', 'Homepage', '<p>Kotagede, Yogyakarta</p>', 'pbn1.jpg', '', NULL, 'Publish', NULL, '2021-08-12 14:10:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`) VALUES
(4, 'kegiatan', 'Kegiatan', 4),
(5, 'banner-website', 'Banner Website', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` tinytext NOT NULL,
  `singkatan` tinytext DEFAULT NULL,
  `tagline` tinytext DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `website` tinytext DEFAULT NULL,
  `email` tinytext DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` tinytext DEFAULT NULL,
  `hp` tinytext DEFAULT NULL,
  `logo` tinytext DEFAULT NULL,
  `icon` tinytext DEFAULT NULL,
  `facebook` tinytext DEFAULT NULL,
  `twitter` tinytext DEFAULT NULL,
  `instagram` tinytext DEFAULT NULL,
  `google_plus` tinytext DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `protocol` tinytext NOT NULL,
  `smtp_host` tinytext NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` tinytext NOT NULL,
  `smtp_pass` tinytext NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `singkatan`, `tagline`, `tentang`, `website`, `email`, `alamat`, `telepon`, `hp`, `logo`, `icon`, `facebook`, `twitter`, `instagram`, `google_plus`, `google_map`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `id_user`, `tanggal`) VALUES
(1, 'KELURAHAN PURBAYAN', 'PRBYN', 'DESA WISATA PURBAYAN', '<p>Kelurahan Purbayan dibentuk pada tahun 1981, berdasar Peraturan Daerah Propinsi Daerah Istimewa Yogyakarta ( Perda DIY) Nomor 6 tahun 1981 Tentang Pembentukan, Pemecahan, Penyatuan dan Penghapusan Kelurahan di Propinsi Daerah Istimewa Yogyakarta. Kelurahan Purbayan terbentuk dari 4 eks Rukun Kampung (RK) yaitu : RK Gedongan, RK Basen, RK Purbayan, dan RK Alun &ndash; Alun. Dengan pembentukan Kelurahan, 4 RK digabung dan dibagi menjadi 14 Rukun Warga (RW) dan terdiri dari 58 Rukun Tetangga (RT) dengan jumlah Kepala Keluarga 3302 KK dan jumlah penduduk 10.176 jiwa.</p>', 'https://desawisatapurbayan.com', 'purbayanvillage2021@gmail.com', 'Jalan Kemasan No. 39 A, Kotagede, Yogyakarta', '(0274) 417010', '+6281393265996', 'pr_logo.png', 'pr.png', 'https://www.facebook.com/', 'http://twitter.com/', 'https://instagram.com/', 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7905.30861138941!2d110.39661162422358!3d-7.8263644774421905!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a57181514fb01%3A0xe72c51062c9d3bfa!2sPurbayan%2C%20Kec.%20Kotagede%2C%20Kota%20Yogyakarta%2C%20Daerah%20Istimewa%20Yogyakarta!5e0!3m2!1sid!2sid!4v1628100899032!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'admin', NULL, '2021-08-12 20:36:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kunjungan`
--

CREATE TABLE `kunjungan` (
  `id_kunjungan` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hari` date DEFAULT NULL,
  `waktu` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kunjungan`
--

INSERT INTO `kunjungan` (`id_kunjungan`, `alamat`, `ip_address`, `hari`, `waktu`, `tanggal`) VALUES
(1, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-05', '2021-08-05 20:20:50', '2021-08-05 13:20:50'),
(2, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-05', '2021-08-05 20:27:43', '2021-08-05 13:27:43'),
(3, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-05', '2021-08-05 21:23:26', '2021-08-05 14:23:26'),
(4, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-05', '2021-08-05 21:48:41', '2021-08-05 14:48:41'),
(5, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-05', '2021-08-05 21:48:45', '2021-08-05 14:48:45'),
(6, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-05', '2021-08-05 21:48:49', '2021-08-05 14:48:49'),
(7, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-05', '2021-08-05 21:50:45', '2021-08-05 14:50:45'),
(8, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-05', '2021-08-05 21:51:41', '2021-08-05 14:51:41'),
(9, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-05', '2021-08-05 21:53:56', '2021-08-05 14:53:56'),
(10, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-05', '2021-08-05 21:54:12', '2021-08-05 14:54:12'),
(11, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-06', '2021-08-06 20:08:44', '2021-08-06 13:08:44'),
(12, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-06', '2021-08-06 20:08:49', '2021-08-06 13:08:49'),
(13, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-06', '2021-08-06 20:09:22', '2021-08-06 13:09:22'),
(14, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-06', '2021-08-06 20:12:45', '2021-08-06 13:12:45'),
(15, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-06', '2021-08-06 20:13:02', '2021-08-06 13:13:02'),
(16, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-06', '2021-08-06 20:13:19', '2021-08-06 13:13:19'),
(17, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-06', '2021-08-06 20:13:26', '2021-08-06 13:13:26'),
(18, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-06', '2021-08-06 20:23:09', '2021-08-06 13:23:09'),
(19, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-07', '2021-08-07 15:41:51', '2021-08-07 08:41:51'),
(20, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-07', '2021-08-07 15:44:31', '2021-08-07 08:44:31'),
(21, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-07', '2021-08-07 16:36:41', '2021-08-07 09:36:41'),
(22, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-07', '2021-08-07 16:50:34', '2021-08-07 09:50:34'),
(23, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-08', '2021-08-08 23:48:22', '2021-08-08 16:48:22'),
(24, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-08', '2021-08-08 23:58:16', '2021-08-08 16:58:16'),
(25, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-08', '2021-08-08 23:59:28', '2021-08-08 16:59:28'),
(26, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-08', '2021-08-08 23:59:34', '2021-08-08 16:59:34'),
(27, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-08', '2021-08-08 23:59:39', '2021-08-08 16:59:39'),
(28, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-08', '2021-08-08 23:59:43', '2021-08-08 16:59:43'),
(29, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-09', '2021-08-09 00:00:16', '2021-08-08 17:00:16'),
(30, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:00:20', '2021-08-08 17:00:20'),
(31, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:00:48', '2021-08-08 17:00:48'),
(32, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:01:21', '2021-08-08 17:01:21'),
(33, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:01:58', '2021-08-08 17:01:58'),
(34, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:03:16', '2021-08-08 17:03:16'),
(35, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:03:18', '2021-08-08 17:03:18'),
(36, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:04:23', '2021-08-08 17:04:23'),
(37, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:04:58', '2021-08-08 17:04:58'),
(38, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-09', '2021-08-09 00:05:08', '2021-08-08 17:05:08'),
(39, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:06:58', '2021-08-08 17:06:58'),
(40, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:08:00', '2021-08-08 17:08:00'),
(41, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:08:05', '2021-08-08 17:08:05'),
(42, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:09:01', '2021-08-08 17:09:01'),
(43, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-09', '2021-08-09 00:16:20', '2021-08-08 17:16:20'),
(44, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 10:04:29', '2021-08-12 03:04:29'),
(45, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:04:33', '2021-08-12 03:04:33'),
(46, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:04:45', '2021-08-12 03:04:45'),
(47, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:05:21', '2021-08-12 03:05:21'),
(48, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:05:30', '2021-08-12 03:05:30'),
(49, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:06:01', '2021-08-12 03:06:01'),
(50, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:06:17', '2021-08-12 03:06:17'),
(51, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:07:21', '2021-08-12 03:07:21'),
(52, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:08:58', '2021-08-12 03:08:58'),
(53, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:09:22', '2021-08-12 03:09:22'),
(54, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:09:47', '2021-08-12 03:09:47'),
(55, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:12:27', '2021-08-12 03:12:27'),
(56, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:20:27', '2021-08-12 03:20:27'),
(57, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:20:38', '2021-08-12 03:20:38'),
(58, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:20:54', '2021-08-12 03:20:54'),
(59, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:21:21', '2021-08-12 03:21:21'),
(60, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:22:01', '2021-08-12 03:22:01'),
(61, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:22:49', '2021-08-12 03:22:49'),
(62, 'http://localhost/webpurbayan1/kontak', '127.0.0.1', '2021-08-12', '2021-08-12 10:23:32', '2021-08-12 03:23:32'),
(63, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 10:29:01', '2021-08-12 03:29:01'),
(64, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 10:29:04', '2021-08-12 03:29:04'),
(65, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 10:32:07', '2021-08-12 03:32:07'),
(66, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 10:35:27', '2021-08-12 03:35:27'),
(67, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:15:51', '2021-08-12 04:15:51'),
(68, 'http://localhost/webpurbayan1/PROFIL%20DESA%20WISATA%20PURBAYAN', '::1', '2021-08-12', '2021-08-12 11:15:55', '2021-08-12 04:15:55'),
(69, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:16:01', '2021-08-12 04:16:01'),
(70, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:18:09', '2021-08-12 04:18:09'),
(71, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 11:18:58', '2021-08-12 04:18:58'),
(72, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:20:23', '2021-08-12 04:20:23'),
(73, 'http://localhost/webpurbayan1/berita/profil/PROFIL%20DESA%20WISATA%20PURBAYAN', '::1', '2021-08-12', '2021-08-12 11:20:26', '2021-08-12 04:20:26'),
(74, 'http://localhost/webpurbayan1/berita/profil/PROFIL%20DESA%20WISATA%20PURBAYAN', '::1', '2021-08-12', '2021-08-12 11:20:52', '2021-08-12 04:20:52'),
(75, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:20:55', '2021-08-12 04:20:55'),
(76, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 11:21:21', '2021-08-12 04:21:21'),
(77, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 11:23:16', '2021-08-12 04:23:16'),
(78, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:23:47', '2021-08-12 04:23:47'),
(79, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:25:46', '2021-08-12 04:25:46'),
(80, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 11:29:39', '2021-08-12 04:29:39'),
(81, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:31:34', '2021-08-12 04:31:34'),
(82, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 11:31:38', '2021-08-12 04:31:38'),
(83, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:31:42', '2021-08-12 04:31:42'),
(84, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 11:31:50', '2021-08-12 04:31:50'),
(85, 'http://localhost/webpurbayan1/kontak', '127.0.0.1', '2021-08-12', '2021-08-12 11:31:51', '2021-08-12 04:31:51'),
(86, 'http://localhost/webpurbayan1/berita', '127.0.0.1', '2021-08-12', '2021-08-12 11:31:51', '2021-08-12 04:31:51'),
(87, 'http://localhost/webpurbayan1/galeri', '127.0.0.1', '2021-08-12', '2021-08-12 11:31:51', '2021-08-12 04:31:51'),
(88, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:31:52', '2021-08-12 04:31:52'),
(89, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 11:31:54', '2021-08-12 04:31:54'),
(90, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 11:32:13', '2021-08-12 04:32:13'),
(91, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:32:43', '2021-08-12 04:32:43'),
(92, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:33:11', '2021-08-12 04:33:11'),
(93, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:33:30', '2021-08-12 04:33:30'),
(94, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:33:58', '2021-08-12 04:33:58'),
(95, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:34:39', '2021-08-12 04:34:39'),
(96, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 11:34:43', '2021-08-12 04:34:43'),
(97, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:34:46', '2021-08-12 04:34:46'),
(98, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:35:36', '2021-08-12 04:35:36'),
(99, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:35:50', '2021-08-12 04:35:50'),
(100, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:36:47', '2021-08-12 04:36:47'),
(101, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:37:02', '2021-08-12 04:37:02'),
(102, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 11:37:38', '2021-08-12 04:37:38'),
(103, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '127.0.0.1', '2021-08-12', '2021-08-12 11:37:43', '2021-08-12 04:37:43'),
(104, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 11:37:47', '2021-08-12 04:37:47'),
(105, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:38:36', '2021-08-12 04:38:36'),
(106, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 11:38:40', '2021-08-12 04:38:40'),
(107, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:38:43', '2021-08-12 04:38:43'),
(108, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:39:13', '2021-08-12 04:39:13'),
(109, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:39:54', '2021-08-12 04:39:54'),
(110, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 11:40:49', '2021-08-12 04:40:49'),
(111, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:40:52', '2021-08-12 04:40:52'),
(112, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:41:53', '2021-08-12 04:41:53'),
(113, 'http://localhost/webpurbayan1/berita/profil/PROFIL%20DESA%20WISATA%20PURBAYAN', '::1', '2021-08-12', '2021-08-12 11:41:56', '2021-08-12 04:41:56'),
(114, 'http://localhost/webpurbayan1/berita/profil/PROFIL%20DESA%20WISATA%20PURBAYAN', '::1', '2021-08-12', '2021-08-12 11:44:52', '2021-08-12 04:44:52'),
(115, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:44:54', '2021-08-12 04:44:54'),
(116, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:45:17', '2021-08-12 04:45:17'),
(117, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:45:48', '2021-08-12 04:45:48'),
(118, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 11:45:52', '2021-08-12 04:45:52'),
(119, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 11:45:53', '2021-08-12 04:45:53'),
(120, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:46:01', '2021-08-12 04:46:01'),
(121, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:47:08', '2021-08-12 04:47:08'),
(122, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:47:48', '2021-08-12 04:47:48'),
(123, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:47:55', '2021-08-12 04:47:55'),
(124, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:47:59', '2021-08-12 04:47:59'),
(125, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:48:07', '2021-08-12 04:48:07'),
(126, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:48:30', '2021-08-12 04:48:30'),
(127, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 11:48:33', '2021-08-12 04:48:33'),
(128, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:48:39', '2021-08-12 04:48:39'),
(129, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:48:51', '2021-08-12 04:48:51'),
(130, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:49:23', '2021-08-12 04:49:23'),
(131, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:50:41', '2021-08-12 04:50:41'),
(132, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:51:28', '2021-08-12 04:51:28'),
(133, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:51:34', '2021-08-12 04:51:34'),
(134, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:51:46', '2021-08-12 04:51:46'),
(135, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:51:56', '2021-08-12 04:51:56'),
(136, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:52:14', '2021-08-12 04:52:14'),
(137, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:52:27', '2021-08-12 04:52:27'),
(138, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:52:39', '2021-08-12 04:52:39'),
(139, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:52:54', '2021-08-12 04:52:54'),
(140, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:53:25', '2021-08-12 04:53:25'),
(141, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:53:40', '2021-08-12 04:53:40'),
(142, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:54:28', '2021-08-12 04:54:28'),
(143, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:55:00', '2021-08-12 04:55:00'),
(144, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:55:07', '2021-08-12 04:55:07'),
(145, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:56:28', '2021-08-12 04:56:28'),
(146, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:57:59', '2021-08-12 04:57:59'),
(147, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 11:58:27', '2021-08-12 04:58:27'),
(148, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 11:58:41', '2021-08-12 04:58:41'),
(149, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 12:00:04', '2021-08-12 05:00:04'),
(150, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 12:04:11', '2021-08-12 05:04:11'),
(151, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:04:34', '2021-08-12 05:04:34'),
(152, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:05:15', '2021-08-12 05:05:15'),
(153, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:06:50', '2021-08-12 05:06:50'),
(154, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:08:48', '2021-08-12 05:08:48'),
(155, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:09:01', '2021-08-12 05:09:01'),
(156, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:09:22', '2021-08-12 05:09:22'),
(157, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:10:06', '2021-08-12 05:10:06'),
(158, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:12:18', '2021-08-12 05:12:18'),
(159, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:15:22', '2021-08-12 05:15:22'),
(160, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:16:22', '2021-08-12 05:16:22'),
(161, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:16:31', '2021-08-12 05:16:31'),
(162, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:16:34', '2021-08-12 05:16:34'),
(163, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:16:52', '2021-08-12 05:16:52'),
(164, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 12:17:03', '2021-08-12 05:17:03'),
(165, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 12:17:30', '2021-08-12 05:17:30'),
(166, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 12:18:10', '2021-08-12 05:18:10'),
(167, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:18:17', '2021-08-12 05:18:17'),
(168, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 12:18:59', '2021-08-12 05:18:59'),
(169, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:20:47', '2021-08-12 05:20:47'),
(170, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 12:22:01', '2021-08-12 05:22:01'),
(171, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:23:10', '2021-08-12 05:23:10'),
(172, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:24:37', '2021-08-12 05:24:37'),
(173, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:24:53', '2021-08-12 05:24:53'),
(174, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 12:25:06', '2021-08-12 05:25:06'),
(175, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:25:09', '2021-08-12 05:25:09'),
(176, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:25:28', '2021-08-12 05:25:28'),
(177, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:26:11', '2021-08-12 05:26:11'),
(178, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:27:09', '2021-08-12 05:27:09'),
(179, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:27:45', '2021-08-12 05:27:45'),
(180, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:28:29', '2021-08-12 05:28:29'),
(181, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:28:52', '2021-08-12 05:28:52'),
(182, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:29:01', '2021-08-12 05:29:01'),
(183, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 12:29:11', '2021-08-12 05:29:11'),
(184, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:29:13', '2021-08-12 05:29:13'),
(185, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:29:26', '2021-08-12 05:29:26'),
(186, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 12:29:32', '2021-08-12 05:29:32'),
(187, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:29:35', '2021-08-12 05:29:35'),
(188, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:30:15', '2021-08-12 05:30:15'),
(189, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 12:30:34', '2021-08-12 05:30:34'),
(190, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:31:55', '2021-08-12 05:31:55'),
(191, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:32:29', '2021-08-12 05:32:29'),
(192, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:33:31', '2021-08-12 05:33:31'),
(193, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:33:45', '2021-08-12 05:33:45'),
(194, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:34:27', '2021-08-12 05:34:27'),
(195, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:34:46', '2021-08-12 05:34:46'),
(196, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:34:59', '2021-08-12 05:34:59'),
(197, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:36:15', '2021-08-12 05:36:15'),
(198, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:37:59', '2021-08-12 05:37:59'),
(199, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:42:54', '2021-08-12 05:42:54'),
(200, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:48:09', '2021-08-12 05:48:09'),
(201, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:49:27', '2021-08-12 05:49:27'),
(202, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:49:35', '2021-08-12 05:49:35'),
(203, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:49:44', '2021-08-12 05:49:44'),
(204, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:53:32', '2021-08-12 05:53:32'),
(205, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:54:00', '2021-08-12 05:54:00'),
(206, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 12:54:03', '2021-08-12 05:54:03'),
(207, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:54:07', '2021-08-12 05:54:07'),
(208, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:55:43', '2021-08-12 05:55:43'),
(209, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:56:26', '2021-08-12 05:56:26'),
(210, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:57:19', '2021-08-12 05:57:19'),
(211, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 12:57:30', '2021-08-12 05:57:30'),
(212, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 13:01:11', '2021-08-12 06:01:11'),
(213, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 13:05:07', '2021-08-12 06:05:07'),
(214, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 13:13:33', '2021-08-12 06:13:33'),
(215, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 13:13:38', '2021-08-12 06:13:38'),
(216, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 13:13:42', '2021-08-12 06:13:42'),
(217, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 13:14:15', '2021-08-12 06:14:15'),
(218, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 13:14:18', '2021-08-12 06:14:18'),
(219, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 13:15:27', '2021-08-12 06:15:27'),
(220, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 13:41:49', '2021-08-12 06:41:49'),
(221, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 13:46:48', '2021-08-12 06:46:48'),
(222, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:17:39', '2021-08-12 07:17:39'),
(223, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:29:06', '2021-08-12 07:29:06'),
(224, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:30:09', '2021-08-12 07:30:09'),
(225, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:30:23', '2021-08-12 07:30:23'),
(226, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:30:42', '2021-08-12 07:30:42'),
(227, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 14:31:00', '2021-08-12 07:31:00'),
(228, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 14:33:31', '2021-08-12 07:33:31'),
(229, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:34:01', '2021-08-12 07:34:01'),
(230, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 14:34:36', '2021-08-12 07:34:36'),
(231, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:34:49', '2021-08-12 07:34:49'),
(232, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 14:35:21', '2021-08-12 07:35:21'),
(233, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:36:10', '2021-08-12 07:36:10'),
(234, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:41:51', '2021-08-12 07:41:51'),
(235, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 14:42:10', '2021-08-12 07:42:10'),
(236, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:48:50', '2021-08-12 07:48:50'),
(237, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:49:03', '2021-08-12 07:49:03'),
(238, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 14:50:54', '2021-08-12 07:50:54'),
(239, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:55:16', '2021-08-12 07:55:16'),
(240, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:56:06', '2021-08-12 07:56:06'),
(241, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:56:24', '2021-08-12 07:56:24'),
(242, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 14:58:51', '2021-08-12 07:58:51'),
(243, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:07:42', '2021-08-12 08:07:42'),
(244, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:21:29', '2021-08-12 08:21:29'),
(245, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:22:33', '2021-08-12 08:22:33'),
(246, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:23:12', '2021-08-12 08:23:12'),
(247, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:25:57', '2021-08-12 08:25:57'),
(248, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:26:09', '2021-08-12 08:26:09'),
(249, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:26:21', '2021-08-12 08:26:21'),
(250, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:26:38', '2021-08-12 08:26:38'),
(251, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:27:29', '2021-08-12 08:27:29'),
(252, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:29:07', '2021-08-12 08:29:07'),
(253, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:31:03', '2021-08-12 08:31:03'),
(254, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:31:12', '2021-08-12 08:31:12'),
(255, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:35:01', '2021-08-12 08:35:01'),
(256, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:35:24', '2021-08-12 08:35:24'),
(257, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 15:51:09', '2021-08-12 08:51:09'),
(258, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:55:54', '2021-08-12 08:55:54'),
(259, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 15:56:47', '2021-08-12 08:56:47'),
(260, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:01:58', '2021-08-12 09:01:58'),
(261, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 16:09:21', '2021-08-12 09:09:21'),
(262, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:10:06', '2021-08-12 09:10:06'),
(263, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:15:35', '2021-08-12 09:15:35'),
(264, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:20:41', '2021-08-12 09:20:41'),
(265, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:21:26', '2021-08-12 09:21:26'),
(266, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:21:30', '2021-08-12 09:21:30'),
(267, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 16:21:34', '2021-08-12 09:21:34'),
(268, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 16:21:37', '2021-08-12 09:21:37'),
(269, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:21:43', '2021-08-12 09:21:43'),
(270, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:24:24', '2021-08-12 09:24:24'),
(271, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:28:57', '2021-08-12 09:28:57'),
(272, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:29:26', '2021-08-12 09:29:26'),
(273, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 16:29:50', '2021-08-12 09:29:50'),
(274, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 16:30:14', '2021-08-12 09:30:14'),
(275, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-12', '2021-08-12 16:30:41', '2021-08-12 09:30:41'),
(276, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:30:46', '2021-08-12 09:30:46'),
(277, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-12', '2021-08-12 16:30:53', '2021-08-12 09:30:53'),
(278, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-12', '2021-08-12 16:31:10', '2021-08-12 09:31:10'),
(279, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:31:14', '2021-08-12 09:31:14'),
(280, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:41:44', '2021-08-12 09:41:44'),
(281, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:42:09', '2021-08-12 09:42:09'),
(282, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:42:42', '2021-08-12 09:42:42'),
(283, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:43:16', '2021-08-12 09:43:16'),
(284, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 16:44:18', '2021-08-12 09:44:18'),
(285, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 16:48:52', '2021-08-12 09:48:52'),
(286, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 19:00:37', '2021-08-12 12:00:37'),
(287, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 19:08:24', '2021-08-12 12:08:24'),
(288, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 19:08:51', '2021-08-12 12:08:51'),
(289, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 19:09:45', '2021-08-12 12:09:45'),
(290, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 19:09:56', '2021-08-12 12:09:56'),
(291, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 19:10:00', '2021-08-12 12:10:00'),
(292, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 19:10:04', '2021-08-12 12:10:04'),
(293, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 19:10:11', '2021-08-12 12:10:11'),
(294, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-12', '2021-08-12 19:10:14', '2021-08-12 12:10:14'),
(295, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '127.0.0.1', '2021-08-12', '2021-08-12 19:11:13', '2021-08-12 12:11:13'),
(296, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 19:12:02', '2021-08-12 12:12:02'),
(297, 'http://localhost/webpurbayan1/galeri', '127.0.0.1', '2021-08-12', '2021-08-12 19:14:00', '2021-08-12 12:14:00'),
(298, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 19:14:05', '2021-08-12 12:14:05'),
(299, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 19:14:32', '2021-08-12 12:14:32'),
(300, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 19:19:02', '2021-08-12 12:19:02'),
(301, 'http://localhost/webpurbayan1/kontak', '127.0.0.1', '2021-08-12', '2021-08-12 19:19:13', '2021-08-12 12:19:13'),
(302, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 19:20:11', '2021-08-12 12:20:11'),
(303, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 19:20:39', '2021-08-12 12:20:39'),
(304, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 19:21:50', '2021-08-12 12:21:50'),
(305, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 19:21:52', '2021-08-12 12:21:52'),
(306, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 19:22:29', '2021-08-12 12:22:29'),
(307, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 19:22:58', '2021-08-12 12:22:58'),
(308, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 19:44:36', '2021-08-12 12:44:36'),
(309, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-12', '2021-08-12 20:20:44', '2021-08-12 13:20:44'),
(310, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 20:53:11', '2021-08-12 13:53:11'),
(311, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 20:56:14', '2021-08-12 13:56:14'),
(312, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:05:15', '2021-08-12 14:05:15'),
(313, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:06:24', '2021-08-12 14:06:24'),
(314, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:08:44', '2021-08-12 14:08:44'),
(315, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:09:14', '2021-08-12 14:09:14'),
(316, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:10:45', '2021-08-12 14:10:45'),
(317, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:17:05', '2021-08-12 14:17:05'),
(318, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:18:09', '2021-08-12 14:18:09'),
(319, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:18:53', '2021-08-12 14:18:53'),
(320, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:19:42', '2021-08-12 14:19:42'),
(321, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 21:21:04', '2021-08-12 14:21:04'),
(322, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:21:44', '2021-08-12 14:21:44'),
(323, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:23:48', '2021-08-12 14:23:48'),
(324, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:24:20', '2021-08-12 14:24:20'),
(325, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:24:59', '2021-08-12 14:24:59'),
(326, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:25:35', '2021-08-12 14:25:35'),
(327, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:26:03', '2021-08-12 14:26:03'),
(328, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:27:00', '2021-08-12 14:27:00'),
(329, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:28:31', '2021-08-12 14:28:31'),
(330, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:28:57', '2021-08-12 14:28:57'),
(331, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:29:14', '2021-08-12 14:29:14'),
(332, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:29:34', '2021-08-12 14:29:34'),
(333, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:29:46', '2021-08-12 14:29:46'),
(334, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:32:53', '2021-08-12 14:32:53'),
(335, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:33:16', '2021-08-12 14:33:16'),
(336, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:34:33', '2021-08-12 14:34:33'),
(337, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:34:58', '2021-08-12 14:34:58'),
(338, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:35:17', '2021-08-12 14:35:17'),
(339, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:35:41', '2021-08-12 14:35:41'),
(340, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:35:50', '2021-08-12 14:35:50'),
(341, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-12', '2021-08-12 21:35:59', '2021-08-12 14:35:59'),
(342, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:36:09', '2021-08-12 14:36:09'),
(343, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:38:44', '2021-08-12 14:38:44'),
(344, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:38:48', '2021-08-12 14:38:48'),
(345, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:38:52', '2021-08-12 14:38:52'),
(346, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:39:42', '2021-08-12 14:39:42'),
(347, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:42:26', '2021-08-12 14:42:26'),
(348, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:43:10', '2021-08-12 14:43:10'),
(349, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:43:26', '2021-08-12 14:43:26'),
(350, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:43:41', '2021-08-12 14:43:41'),
(351, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:45:12', '2021-08-12 14:45:12'),
(352, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '127.0.0.1', '2021-08-12', '2021-08-12 21:45:56', '2021-08-12 14:45:56'),
(353, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '127.0.0.1', '2021-08-12', '2021-08-12 21:46:18', '2021-08-12 14:46:18'),
(354, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:46:49', '2021-08-12 14:46:49'),
(355, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:47:27', '2021-08-12 14:47:27'),
(356, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '127.0.0.1', '2021-08-12', '2021-08-12 21:48:10', '2021-08-12 14:48:10'),
(357, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 21:48:23', '2021-08-12 14:48:23'),
(358, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:48:42', '2021-08-12 14:48:42'),
(359, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:50:05', '2021-08-12 14:50:05'),
(360, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:50:24', '2021-08-12 14:50:24'),
(361, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:50:34', '2021-08-12 14:50:34'),
(362, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:50:47', '2021-08-12 14:50:47'),
(363, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:53:00', '2021-08-12 14:53:00'),
(364, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 21:54:24', '2021-08-12 14:54:24'),
(365, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '127.0.0.1', '2021-08-12', '2021-08-12 21:54:46', '2021-08-12 14:54:46'),
(366, 'http://localhost/webpurbayan1/berita/kampung/kampung-alun-alun', '::1', '2021-08-12', '2021-08-12 21:55:06', '2021-08-12 14:55:06'),
(367, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 21:55:15', '2021-08-12 14:55:15'),
(368, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 21:55:34', '2021-08-12 14:55:34'),
(369, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '::1', '2021-08-12', '2021-08-12 21:55:38', '2021-08-12 14:55:38'),
(370, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '::1', '2021-08-12', '2021-08-12 22:00:09', '2021-08-12 15:00:09'),
(371, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '::1', '2021-08-12', '2021-08-12 22:00:40', '2021-08-12 15:00:40'),
(372, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '::1', '2021-08-12', '2021-08-12 22:04:27', '2021-08-12 15:04:27'),
(373, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '::1', '2021-08-12', '2021-08-12 22:04:43', '2021-08-12 15:04:43'),
(374, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '::1', '2021-08-12', '2021-08-12 22:08:11', '2021-08-12 15:08:11'),
(375, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '::1', '2021-08-12', '2021-08-12 22:09:12', '2021-08-12 15:09:12'),
(376, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '::1', '2021-08-12', '2021-08-12 22:10:33', '2021-08-12 15:10:33'),
(377, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 22:10:49', '2021-08-12 15:10:49'),
(378, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 22:11:02', '2021-08-12 15:11:02'),
(379, 'http://localhost/webpurbayan1/berita/kampung/kampung-alun-alun', '::1', '2021-08-12', '2021-08-12 22:11:31', '2021-08-12 15:11:31'),
(380, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '127.0.0.1', '2021-08-12', '2021-08-12 22:11:44', '2021-08-12 15:11:44'),
(381, 'http://localhost/webpurbayan1/berita/kampung/kampung-purbayan', '127.0.0.1', '2021-08-12', '2021-08-12 22:11:49', '2021-08-12 15:11:49'),
(382, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:11:56', '2021-08-12 15:11:56'),
(383, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-12', '2021-08-12 22:12:02', '2021-08-12 15:12:02'),
(384, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:12:14', '2021-08-12 15:12:14'),
(385, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 22:12:41', '2021-08-12 15:12:41'),
(386, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 22:14:33', '2021-08-12 15:14:33'),
(387, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 22:21:01', '2021-08-12 15:21:01'),
(388, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 22:21:06', '2021-08-12 15:21:06'),
(389, 'http://localhost/webpurbayan1/berita/kampung/kampung-alun-alun', '127.0.0.1', '2021-08-12', '2021-08-12 22:21:24', '2021-08-12 15:21:24'),
(390, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '::1', '2021-08-12', '2021-08-12 22:21:37', '2021-08-12 15:21:37'),
(391, 'http://localhost/webpurbayan1/berita/kampung/kampung-basen', '::1', '2021-08-12', '2021-08-12 22:22:02', '2021-08-12 15:22:02'),
(392, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 22:29:23', '2021-08-12 15:29:23'),
(393, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 22:29:50', '2021-08-12 15:29:50'),
(394, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 22:29:59', '2021-08-12 15:29:59'),
(395, 'http://localhost/webpurbayan1/berita', '127.0.0.1', '2021-08-12', '2021-08-12 22:30:05', '2021-08-12 15:30:05'),
(396, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:32:29', '2021-08-12 15:32:29'),
(397, 'http://localhost/webpurbayan1/berita/read/wisata-perak-kotagede', '::1', '2021-08-12', '2021-08-12 22:32:46', '2021-08-12 15:32:46'),
(398, 'http://localhost/webpurbayan1/berita/read/wisata-perak-kotagede', '::1', '2021-08-12', '2021-08-12 22:33:25', '2021-08-12 15:33:25'),
(399, 'http://localhost/webpurbayan1/berita/read/wisata-perak-kotagede', '::1', '2021-08-12', '2021-08-12 22:34:28', '2021-08-12 15:34:28'),
(400, 'http://localhost/webpurbayan1/berita/read/wisata-perak-kotagede', '::1', '2021-08-12', '2021-08-12 22:34:59', '2021-08-12 15:34:59'),
(401, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 22:37:03', '2021-08-12 15:37:03'),
(402, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:37:21', '2021-08-12 15:37:21'),
(403, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:39:16', '2021-08-12 15:39:16'),
(404, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 22:40:54', '2021-08-12 15:40:54'),
(405, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '127.0.0.1', '2021-08-12', '2021-08-12 22:41:16', '2021-08-12 15:41:16'),
(406, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 22:41:31', '2021-08-12 15:41:31'),
(407, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:43:19', '2021-08-12 15:43:19'),
(408, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:45:03', '2021-08-12 15:45:03'),
(409, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:46:51', '2021-08-12 15:46:51'),
(410, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 22:47:21', '2021-08-12 15:47:21'),
(411, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:47:46', '2021-08-12 15:47:46'),
(412, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:52:31', '2021-08-12 15:52:31'),
(413, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:53:53', '2021-08-12 15:53:53'),
(414, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:54:32', '2021-08-12 15:54:32'),
(415, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:54:44', '2021-08-12 15:54:44');
INSERT INTO `kunjungan` (`id_kunjungan`, `alamat`, `ip_address`, `hari`, `waktu`, `tanggal`) VALUES
(416, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:57:57', '2021-08-12 15:57:57'),
(417, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-12', '2021-08-12 22:58:05', '2021-08-12 15:58:05'),
(418, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 22:58:13', '2021-08-12 15:58:13'),
(419, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 23:01:25', '2021-08-12 16:01:25'),
(420, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:01:40', '2021-08-12 16:01:40'),
(421, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:04:42', '2021-08-12 16:04:42'),
(422, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:05:07', '2021-08-12 16:05:07'),
(423, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:05:36', '2021-08-12 16:05:36'),
(424, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '127.0.0.1', '2021-08-12', '2021-08-12 23:05:41', '2021-08-12 16:05:41'),
(425, 'http://localhost/webpurbayan1/berita', '127.0.0.1', '2021-08-12', '2021-08-12 23:05:45', '2021-08-12 16:05:45'),
(426, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:06:45', '2021-08-12 16:06:45'),
(427, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:07:09', '2021-08-12 16:07:09'),
(428, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:07:23', '2021-08-12 16:07:23'),
(429, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-12', '2021-08-12 23:08:31', '2021-08-12 16:08:31'),
(430, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:20:58', '2021-08-12 16:20:58'),
(431, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-12', '2021-08-12 23:21:18', '2021-08-12 16:21:18'),
(432, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '127.0.0.1', '2021-08-12', '2021-08-12 23:22:41', '2021-08-12 16:22:41'),
(433, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-12', '2021-08-12 23:23:27', '2021-08-12 16:23:27'),
(434, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-12', '2021-08-12 23:23:57', '2021-08-12 16:23:57'),
(435, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-12', '2021-08-12 23:24:38', '2021-08-12 16:24:38'),
(436, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-12', '2021-08-12 23:24:58', '2021-08-12 16:24:58'),
(437, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:25:02', '2021-08-12 16:25:02'),
(438, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:29:32', '2021-08-12 16:29:32'),
(439, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:31:11', '2021-08-12 16:31:11'),
(440, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:32:55', '2021-08-12 16:32:55'),
(441, 'http://localhost/webpurbayan1/berita', '127.0.0.1', '2021-08-12', '2021-08-12 23:33:30', '2021-08-12 16:33:30'),
(442, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:36:47', '2021-08-12 16:36:47'),
(443, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:37:05', '2021-08-12 16:37:05'),
(444, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:37:44', '2021-08-12 16:37:44'),
(445, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:38:09', '2021-08-12 16:38:09'),
(446, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-12', '2021-08-12 23:38:14', '2021-08-12 16:38:14'),
(447, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:39:05', '2021-08-12 16:39:05'),
(448, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-12', '2021-08-12 23:42:50', '2021-08-12 16:42:50'),
(449, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '127.0.0.1', '2021-08-12', '2021-08-12 23:43:03', '2021-08-12 16:43:03'),
(450, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:43:26', '2021-08-12 16:43:26'),
(451, 'http://localhost/webpurbayan1/berita', '127.0.0.1', '2021-08-12', '2021-08-12 23:45:24', '2021-08-12 16:45:24'),
(452, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:45:54', '2021-08-12 16:45:54'),
(453, 'http://localhost/webpurbayan1/berita', '127.0.0.1', '2021-08-12', '2021-08-12 23:46:21', '2021-08-12 16:46:21'),
(454, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '127.0.0.1', '2021-08-12', '2021-08-12 23:46:26', '2021-08-12 16:46:26'),
(455, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:46:44', '2021-08-12 16:46:44'),
(456, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:47:54', '2021-08-12 16:47:54'),
(457, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:48:37', '2021-08-12 16:48:37'),
(458, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:48:53', '2021-08-12 16:48:53'),
(459, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:49:43', '2021-08-12 16:49:43'),
(460, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:50:07', '2021-08-12 16:50:07'),
(461, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 23:53:09', '2021-08-12 16:53:09'),
(462, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:54:18', '2021-08-12 16:54:18'),
(463, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:55:15', '2021-08-12 16:55:15'),
(464, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:55:30', '2021-08-12 16:55:30'),
(465, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:56:22', '2021-08-12 16:56:22'),
(466, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:56:56', '2021-08-12 16:56:56'),
(467, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:57:11', '2021-08-12 16:57:11'),
(468, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-12', '2021-08-12 23:57:29', '2021-08-12 16:57:29'),
(469, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-12', '2021-08-12 23:57:35', '2021-08-12 16:57:35'),
(470, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-12', '2021-08-12 23:57:39', '2021-08-12 16:57:39'),
(471, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-12', '2021-08-12 23:57:44', '2021-08-12 16:57:44'),
(472, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:57:48', '2021-08-12 16:57:48'),
(473, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '127.0.0.1', '2021-08-12', '2021-08-12 23:58:29', '2021-08-12 16:58:29'),
(474, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:58:50', '2021-08-12 16:58:50'),
(475, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:59:41', '2021-08-12 16:59:41'),
(476, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-12', '2021-08-12 23:59:49', '2021-08-12 16:59:49'),
(477, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:00:25', '2021-08-12 17:00:25'),
(478, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '127.0.0.1', '2021-08-13', '2021-08-13 00:01:18', '2021-08-12 17:01:18'),
(479, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:01:31', '2021-08-12 17:01:31'),
(480, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:02:54', '2021-08-12 17:02:54'),
(481, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:03:18', '2021-08-12 17:03:18'),
(482, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:03:42', '2021-08-12 17:03:42'),
(483, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:03:59', '2021-08-12 17:03:59'),
(484, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:04:14', '2021-08-12 17:04:14'),
(485, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:04:36', '2021-08-12 17:04:36'),
(486, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:05:09', '2021-08-12 17:05:09'),
(487, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:05:32', '2021-08-12 17:05:32'),
(488, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:06:25', '2021-08-12 17:06:25'),
(489, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-13', '2021-08-13 00:07:10', '2021-08-12 17:07:10'),
(490, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:07:17', '2021-08-12 17:07:17'),
(491, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:09:20', '2021-08-12 17:09:20'),
(492, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:11:25', '2021-08-12 17:11:25'),
(493, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:12:18', '2021-08-12 17:12:18'),
(494, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 00:12:52', '2021-08-12 17:12:52'),
(495, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:13:54', '2021-08-12 17:13:54'),
(496, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:16:05', '2021-08-12 17:16:05'),
(497, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '127.0.0.1', '2021-08-13', '2021-08-13 00:18:34', '2021-08-12 17:18:34'),
(498, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '127.0.0.1', '2021-08-13', '2021-08-13 00:22:42', '2021-08-12 17:22:42'),
(499, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:23:20', '2021-08-12 17:23:20'),
(500, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:23:38', '2021-08-12 17:23:38'),
(501, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:23:48', '2021-08-12 17:23:48'),
(502, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:24:11', '2021-08-12 17:24:11'),
(503, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:24:21', '2021-08-12 17:24:21'),
(504, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:25:06', '2021-08-12 17:25:06'),
(505, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:25:22', '2021-08-12 17:25:22'),
(506, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:36:20', '2021-08-12 17:36:20'),
(507, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:38:01', '2021-08-12 17:38:01'),
(508, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 00:38:52', '2021-08-12 17:38:52'),
(509, 'http://localhost/webpurbayan1/berita', '127.0.0.1', '2021-08-13', '2021-08-13 00:38:57', '2021-08-12 17:38:57'),
(510, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '127.0.0.1', '2021-08-13', '2021-08-13 00:39:00', '2021-08-12 17:39:00'),
(511, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 00:39:40', '2021-08-12 17:39:40'),
(512, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 00:44:05', '2021-08-12 17:44:05'),
(513, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-13', '2021-08-13 00:44:09', '2021-08-12 17:44:09'),
(514, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '127.0.0.1', '2021-08-13', '2021-08-13 00:47:26', '2021-08-12 17:47:26'),
(515, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 00:47:38', '2021-08-12 17:47:38'),
(516, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 00:59:01', '2021-08-12 17:59:01'),
(517, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 01:02:26', '2021-08-12 18:02:26'),
(518, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-13', '2021-08-13 01:04:28', '2021-08-12 18:04:28'),
(519, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 01:05:51', '2021-08-12 18:05:51'),
(520, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-13', '2021-08-13 01:07:22', '2021-08-12 18:07:22'),
(521, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 01:08:07', '2021-08-12 18:08:07'),
(522, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 01:10:28', '2021-08-12 18:10:28'),
(523, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 01:15:50', '2021-08-12 18:15:50'),
(524, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 01:15:54', '2021-08-12 18:15:54'),
(525, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 01:17:08', '2021-08-12 18:17:08'),
(526, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 01:17:21', '2021-08-12 18:17:21'),
(527, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:19:40', '2021-08-12 18:19:40'),
(528, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:21:30', '2021-08-12 18:21:30'),
(529, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:22:01', '2021-08-12 18:22:01'),
(530, 'http://localhost/webpurbayan1/galeri', '127.0.0.1', '2021-08-13', '2021-08-13 01:23:07', '2021-08-12 18:23:07'),
(531, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:23:53', '2021-08-12 18:23:53'),
(532, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:26:09', '2021-08-12 18:26:09'),
(533, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:26:43', '2021-08-12 18:26:43'),
(534, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:28:54', '2021-08-12 18:28:54'),
(535, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:29:15', '2021-08-12 18:29:15'),
(536, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:29:45', '2021-08-12 18:29:45'),
(537, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:30:46', '2021-08-12 18:30:46'),
(538, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:31:24', '2021-08-12 18:31:24'),
(539, 'http://localhost/webpurbayan1/galeri', '127.0.0.1', '2021-08-13', '2021-08-13 01:31:54', '2021-08-12 18:31:54'),
(540, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:33:29', '2021-08-12 18:33:29'),
(541, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:34:23', '2021-08-12 18:34:23'),
(542, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:35:41', '2021-08-12 18:35:41'),
(543, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:38:10', '2021-08-12 18:38:10'),
(544, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:38:21', '2021-08-12 18:38:21'),
(545, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:39:13', '2021-08-12 18:39:13'),
(546, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:39:23', '2021-08-12 18:39:23'),
(547, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:39:37', '2021-08-12 18:39:37'),
(548, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:39:58', '2021-08-12 18:39:58'),
(549, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 01:40:13', '2021-08-12 18:40:13'),
(550, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 01:40:20', '2021-08-12 18:40:20'),
(551, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 01:40:25', '2021-08-12 18:40:25'),
(552, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-13', '2021-08-13 01:40:31', '2021-08-12 18:40:31'),
(553, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 01:40:37', '2021-08-12 18:40:37'),
(554, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:40:44', '2021-08-12 18:40:44'),
(555, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:41:09', '2021-08-12 18:41:09'),
(556, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:42:26', '2021-08-12 18:42:26'),
(557, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:42:44', '2021-08-12 18:42:44'),
(558, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:42:54', '2021-08-12 18:42:54'),
(559, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:43:43', '2021-08-12 18:43:43'),
(560, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:44:24', '2021-08-12 18:44:24'),
(561, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:45:02', '2021-08-12 18:45:02'),
(562, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:46:13', '2021-08-12 18:46:13'),
(563, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:46:23', '2021-08-12 18:46:23'),
(564, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:46:31', '2021-08-12 18:46:31'),
(565, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:47:24', '2021-08-12 18:47:24'),
(566, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:52:37', '2021-08-12 18:52:37'),
(567, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:55:13', '2021-08-12 18:55:13'),
(568, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:55:41', '2021-08-12 18:55:41'),
(569, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:56:18', '2021-08-12 18:56:18'),
(570, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:56:51', '2021-08-12 18:56:51'),
(571, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:58:15', '2021-08-12 18:58:15'),
(572, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:58:30', '2021-08-12 18:58:30'),
(573, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 01:58:47', '2021-08-12 18:58:47'),
(574, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 01:58:51', '2021-08-12 18:58:51'),
(575, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 01:58:56', '2021-08-12 18:58:56'),
(576, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 01:59:03', '2021-08-12 18:59:03'),
(577, 'http://localhost/webpurbayan1/galeri', '127.0.0.1', '2021-08-13', '2021-08-13 01:59:22', '2021-08-12 18:59:22'),
(578, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 02:01:16', '2021-08-12 19:01:16'),
(579, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 02:01:55', '2021-08-12 19:01:55'),
(580, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-13', '2021-08-13 02:02:03', '2021-08-12 19:02:03'),
(581, 'http://localhost/webpurbayan1/kontak', '127.0.0.1', '2021-08-13', '2021-08-13 02:02:11', '2021-08-12 19:02:11'),
(582, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 02:02:32', '2021-08-12 19:02:32'),
(583, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 02:03:39', '2021-08-12 19:03:39'),
(584, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 02:03:54', '2021-08-12 19:03:54'),
(585, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 02:03:59', '2021-08-12 19:03:59'),
(586, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 02:04:06', '2021-08-12 19:04:06'),
(587, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-13', '2021-08-13 02:05:22', '2021-08-12 19:05:22'),
(588, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '127.0.0.1', '2021-08-13', '2021-08-13 02:05:57', '2021-08-12 19:05:57'),
(589, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '127.0.0.1', '2021-08-13', '2021-08-13 02:07:37', '2021-08-12 19:07:37'),
(590, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-13', '2021-08-13 02:07:44', '2021-08-12 19:07:44'),
(591, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 02:07:50', '2021-08-12 19:07:50'),
(592, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-13', '2021-08-13 02:07:58', '2021-08-12 19:07:58'),
(593, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-13', '2021-08-13 02:08:05', '2021-08-12 19:08:05'),
(594, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 02:43:53', '2021-08-12 19:43:53'),
(595, 'http://localhost/webpurbayan1/galeri', '127.0.0.1', '2021-08-13', '2021-08-13 02:46:01', '2021-08-12 19:46:01'),
(596, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 02:47:52', '2021-08-12 19:47:52'),
(597, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 02:48:04', '2021-08-12 19:48:04'),
(598, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 02:48:16', '2021-08-12 19:48:16'),
(599, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 02:48:49', '2021-08-12 19:48:49'),
(600, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-13', '2021-08-13 02:50:14', '2021-08-12 19:50:14'),
(601, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 02:50:57', '2021-08-12 19:50:57'),
(602, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 02:53:41', '2021-08-12 19:53:41'),
(603, 'http://localhost/webpurbayan1/galeri', '127.0.0.1', '2021-08-13', '2021-08-13 02:56:26', '2021-08-12 19:56:26'),
(604, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 02:58:22', '2021-08-12 19:58:22'),
(605, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:00:17', '2021-08-12 20:00:17'),
(606, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:00:35', '2021-08-12 20:00:35'),
(607, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:00:48', '2021-08-12 20:00:48'),
(608, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:02:06', '2021-08-12 20:02:06'),
(609, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-13', '2021-08-13 03:02:54', '2021-08-12 20:02:54'),
(610, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 03:02:58', '2021-08-12 20:02:58'),
(611, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:03:31', '2021-08-12 20:03:31'),
(612, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:04:15', '2021-08-12 20:04:15'),
(613, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:05:11', '2021-08-12 20:05:11'),
(614, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:05:35', '2021-08-12 20:05:35'),
(615, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:09:01', '2021-08-12 20:09:01'),
(616, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:10:05', '2021-08-12 20:10:05'),
(617, 'http://localhost/webpurbayan1/galeri', '127.0.0.1', '2021-08-13', '2021-08-13 03:10:18', '2021-08-12 20:10:18'),
(618, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:10:28', '2021-08-12 20:10:28'),
(619, 'http://localhost/webpurbayan1/galeri', '127.0.0.1', '2021-08-13', '2021-08-13 03:10:48', '2021-08-12 20:10:48'),
(620, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:11:01', '2021-08-12 20:11:01'),
(621, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:11:45', '2021-08-12 20:11:45'),
(622, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:13:01', '2021-08-12 20:13:01'),
(623, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:13:18', '2021-08-12 20:13:18'),
(624, 'http://localhost/webpurbayan1/galeri', '::1', '2021-08-13', '2021-08-13 03:13:42', '2021-08-12 20:13:42'),
(625, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:18:33', '2021-08-12 20:18:33'),
(626, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:19:35', '2021-08-12 20:19:35'),
(627, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:24:15', '2021-08-12 20:24:15'),
(628, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:25:14', '2021-08-12 20:25:14'),
(629, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:25:58', '2021-08-12 20:25:58'),
(630, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:28:26', '2021-08-12 20:28:26'),
(631, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:28:35', '2021-08-12 20:28:35'),
(632, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-13', '2021-08-13 03:29:12', '2021-08-12 20:29:12'),
(633, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-13', '2021-08-13 03:30:43', '2021-08-12 20:30:43'),
(634, 'http://localhost/webpurbayan1/kontak', '127.0.0.1', '2021-08-13', '2021-08-13 03:36:19', '2021-08-12 20:36:19'),
(635, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-13', '2021-08-13 03:41:50', '2021-08-12 20:41:50'),
(636, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-13', '2021-08-13 03:43:44', '2021-08-12 20:43:44'),
(637, 'http://localhost/webpurbayan1/kontak', '::1', '2021-08-13', '2021-08-13 03:44:58', '2021-08-12 20:44:58'),
(638, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:45:08', '2021-08-12 20:45:08'),
(639, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-13', '2021-08-13 03:45:27', '2021-08-12 20:45:27'),
(640, 'http://localhost/webpurbayan1/berita/read/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 03:47:14', '2021-08-12 20:47:14'),
(641, 'http://localhost/webpurbayan1/index.php', '127.0.0.1', '2021-08-13', '2021-08-13 03:51:20', '2021-08-12 20:51:20'),
(642, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:56:55', '2021-08-12 20:56:55'),
(643, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 03:57:42', '2021-08-12 20:57:42'),
(644, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 04:00:59', '2021-08-12 21:00:59'),
(645, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-13', '2021-08-13 04:01:34', '2021-08-12 21:01:34'),
(646, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:05:44', '2021-08-12 21:05:44'),
(647, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:05:50', '2021-08-12 21:05:50'),
(648, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:08:08', '2021-08-12 21:08:08'),
(649, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:08:14', '2021-08-12 21:08:14'),
(650, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 04:08:21', '2021-08-12 21:08:21'),
(651, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:08:28', '2021-08-12 21:08:28'),
(652, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 04:08:35', '2021-08-12 21:08:35'),
(653, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:08:41', '2021-08-12 21:08:41'),
(654, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:09:16', '2021-08-12 21:09:16'),
(655, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:09:43', '2021-08-12 21:09:43'),
(656, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:09:52', '2021-08-12 21:09:52'),
(657, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:10:24', '2021-08-12 21:10:24'),
(658, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:15:01', '2021-08-12 21:15:01'),
(659, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:16:17', '2021-08-12 21:16:17'),
(660, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:16:35', '2021-08-12 21:16:35'),
(661, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 04:18:53', '2021-08-12 21:18:53'),
(662, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 04:19:31', '2021-08-12 21:19:31'),
(663, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:19:34', '2021-08-12 21:19:34'),
(664, 'http://localhost/webpurbayan1/berita/profil/berita/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 04:19:38', '2021-08-12 21:19:38'),
(665, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:20:20', '2021-08-12 21:20:20'),
(666, 'http://localhost/webpurbayan1/berita/read/profil-desa-wisata-purbayan', '::1', '2021-08-13', '2021-08-13 04:21:01', '2021-08-12 21:21:01'),
(667, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:22:08', '2021-08-12 21:22:08'),
(668, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-13', '2021-08-13 04:22:35', '2021-08-12 21:22:35'),
(669, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 12:37:38', '2021-08-14 05:37:38'),
(670, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-14', '2021-08-14 12:58:51', '2021-08-14 05:58:51'),
(671, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 12:59:14', '2021-08-14 05:59:14'),
(672, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 13:06:54', '2021-08-14 06:06:54'),
(673, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-14', '2021-08-14 13:43:33', '2021-08-14 06:43:33'),
(674, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-14', '2021-08-14 13:43:50', '2021-08-14 06:43:50'),
(675, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-14', '2021-08-14 13:44:00', '2021-08-14 06:44:00'),
(676, 'http://localhost/webpurbayan1/berita/read/wisata-perak-kotagede', '::1', '2021-08-14', '2021-08-14 13:51:10', '2021-08-14 06:51:10'),
(677, 'http://localhost/webpurbayan1/berita/profil/profil-desa-wisata-purbayan', '::1', '2021-08-14', '2021-08-14 13:52:07', '2021-08-14 06:52:07'),
(678, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-14', '2021-08-14 13:52:25', '2021-08-14 06:52:25'),
(679, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-14', '2021-08-14 13:52:30', '2021-08-14 06:52:30'),
(680, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-14', '2021-08-14 13:54:02', '2021-08-14 06:54:02'),
(681, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-14', '2021-08-14 13:54:24', '2021-08-14 06:54:24'),
(682, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 13:55:01', '2021-08-14 06:55:01'),
(683, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-14', '2021-08-14 13:55:05', '2021-08-14 06:55:05'),
(684, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-14', '2021-08-14 13:55:09', '2021-08-14 06:55:09'),
(685, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-14', '2021-08-14 13:56:36', '2021-08-14 06:56:36'),
(686, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-14', '2021-08-14 13:57:53', '2021-08-14 06:57:53'),
(687, 'http://localhost/webpurbayan1/berita/read/kampung-basena', '::1', '2021-08-14', '2021-08-14 13:58:06', '2021-08-14 06:58:06'),
(688, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 13:58:11', '2021-08-14 06:58:11'),
(689, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-14', '2021-08-14 14:49:44', '2021-08-14 07:49:44'),
(690, 'http://localhost/webpurbayan1/berita', '::1', '2021-08-14', '2021-08-14 14:49:51', '2021-08-14 07:49:51'),
(691, 'http://localhost/webpurbayan1/berita/kampung/kampung-gedongan', '::1', '2021-08-14', '2021-08-14 14:49:58', '2021-08-14 07:49:58'),
(692, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 15:09:38', '2021-08-14 08:09:38'),
(693, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 15:10:48', '2021-08-14 08:10:48'),
(694, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 15:12:13', '2021-08-14 08:12:13'),
(695, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 15:12:43', '2021-08-14 08:12:43'),
(696, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 15:13:27', '2021-08-14 08:13:27'),
(697, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 15:15:10', '2021-08-14 08:15:10'),
(698, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 15:15:20', '2021-08-14 08:15:20'),
(699, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 15:16:00', '2021-08-14 08:16:00'),
(700, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-14', '2021-08-14 15:59:36', '2021-08-14 08:59:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id_sub_menu` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nama_sub_menu` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` varchar(20) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_menu`
--

INSERT INTO `sub_menu` (`id_sub_menu`, `id_menu`, `nama_sub_menu`, `link`, `target`, `urutan`) VALUES
(1, 1, 'Menu 1', 'http://localhost', '', 1),
(3, 1, 'Menu 2', 'http://localhost/1', '', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `password_hint` varchar(64) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `password_hint`, `gambar`, `keterangan`, `tanggal_post`, `tanggal`) VALUES
(3, 'admin1', 'admin@gmail.com', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', 'pngaaa_com-4775609.png', '<p>ADMIN</p>', '2021-03-13 04:45:16', '2021-08-05 10:40:02'),
(7, 'admin2', 'admin2@gmail.com', 'admin2', '315f166c5aca63a157f7d41007675cb44a948b33', '', NULL, NULL, '2021-08-05 15:41:36', '2021-08-05 08:41:36'),
(9, 'admin3', 'admin3@gmail.com', 'admin3', '33aab3c7f01620cade108f488cfd285c0e62c1ec', '', NULL, NULL, '2021-08-05 16:46:16', '2021-08-05 09:46:16'),
(14, 'admin6', 'admin5@gmail.com', 'admin5', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, NULL, '2021-08-05 19:36:52', '2021-08-05 12:36:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_log`
--

CREATE TABLE `user_log` (
  `id_user_log` int(11) DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `jenis` varchar(24) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_log`
--

INSERT INTO `user_log` (`id_user_log`, `ip_address`, `id_user`, `username`, `url`, `jenis`, `tanggal`) VALUES
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 13:20:58'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 13:21:00'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 13:21:02'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 13:21:03'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/akun', '', '2021-08-05 13:21:09'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 13:27:39'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Berita', '', '2021-08-05 13:27:48'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/author/3', '', '2021-08-05 13:27:49'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', '', '2021-08-05 13:28:04'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 13:28:04'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', '', '2021-08-05 13:28:21'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 13:28:22'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', '', '2021-08-05 13:28:24'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 13:28:24'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', '', '2021-08-05 13:31:44'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 13:31:44'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:15:44'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/tambah', '', '2021-08-05 14:15:46'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:15:52'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:16:30'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/tambah', '', '2021-08-05 14:16:32'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:16:37'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:16:38'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:16:43'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:17:05'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:17:23'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:18:13'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:18:13'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:18:16'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:18:18'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:18:18'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:46:57'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 14:47:00'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 14:47:07'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Layanan', '', '2021-08-05 14:47:09'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Layanan', '', '2021-08-05 14:47:11'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Layanan', '', '2021-08-05 14:48:36'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 14:48:58'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Layanan', '', '2021-08-05 14:49:03'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 14:49:41'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 14:49:52'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Kampung', '', '2021-08-05 14:50:06'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-07 09:40:15'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-07 09:40:29'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-07 09:40:37'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-07 09:42:50'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/akun', '', '2021-08-07 09:42:52'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-07 09:42:56'),
(0, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-07 09:49:46'),
(0, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-07 09:49:50'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/akun', '', '2021-08-07 09:50:28'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/akun', '', '2021-08-07 09:50:45'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-07 09:50:48'),
(0, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-07 09:52:47'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-07 10:16:22'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-07 10:31:39'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 05:07:09'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Profil', NULL, '2021-08-12 05:07:18'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/tambah', NULL, '2021-08-12 05:07:25'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Profil', NULL, '2021-08-12 05:07:27'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 07:51:52'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 07:51:57'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/5', NULL, '2021-08-12 07:52:03'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/5', NULL, '2021-08-12 08:05:16'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 08:05:17'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/tambah', NULL, '2021-08-12 08:05:19'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/tambah', NULL, '2021-08-12 08:07:38'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 08:07:39'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 08:20:38'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 08:20:44'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 08:20:44'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 08:20:56'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 08:21:20'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 08:21:21'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 08:22:06'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 08:22:30'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 08:22:30'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 08:22:56'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 08:23:04'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 08:23:04'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 08:50:19'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', NULL, '2021-08-12 08:50:21'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 08:50:21'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 08:50:35'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 08:50:37'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 08:50:51'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 08:50:55'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 08:51:01'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 08:51:01'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 09:23:55'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 09:24:11'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 09:30:02'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 09:30:05'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 09:30:10'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 09:30:11'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/5', NULL, '2021-08-12 09:30:31'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/5', NULL, '2021-08-12 09:30:35'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 09:30:35'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/5', NULL, '2021-08-12 09:30:59'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/5', NULL, '2021-08-12 09:31:04'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 09:31:04'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 09:41:27'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 09:42:25'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 09:42:25'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/5', NULL, '2021-08-12 09:42:29'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/5', NULL, '2021-08-12 09:42:35'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 09:42:35'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 09:42:57'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 09:43:08'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 09:43:08'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 09:43:58'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 09:44:14'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 09:44:14'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 09:48:35'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 09:48:47'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 09:48:47'),
(NULL, '::1', 0, '-', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 12:00:34'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 12:01:49'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 12:02:15'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/tambah', NULL, '2021-08-12 12:11:05'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 12:11:10'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/11', NULL, '2021-08-12 12:11:18'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 12:11:28'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 12:11:39'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 12:12:52'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 12:12:59'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 12:12:59'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/8', NULL, '2021-08-12 12:13:08'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 12:13:11'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/9', NULL, '2021-08-12 12:13:20'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 12:13:24'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/delete/9', NULL, '2021-08-12 12:13:36'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 12:13:37'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/delete/8', NULL, '2021-08-12 12:13:41'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 12:13:41'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 12:13:57'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 12:14:15'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 12:14:16'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 14:06:03'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 14:06:10'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 14:06:21'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 14:06:21'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 14:09:39'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-12 14:10:39'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 14:10:40'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 14:21:27'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/5', NULL, '2021-08-12 14:21:31'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/5', NULL, '2021-08-12 14:21:39'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-12 14:21:39'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 17:13:12'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-12 17:13:17'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-12 17:13:29'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Profil', NULL, '2021-08-12 17:13:29'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-12 17:13:44'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-12 17:13:47'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Profil', NULL, '2021-08-12 17:13:47'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-12 20:47:07'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-12 20:47:26'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-12 20:51:16'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Profil', NULL, '2021-08-12 20:51:16'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-12 20:51:38'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-12 20:56:51'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Profil', NULL, '2021-08-12 20:56:51'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-12 20:57:10'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-12 20:57:38'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Profil', NULL, '2021-08-12 20:57:38'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:47:35'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', NULL, '2021-08-14 05:47:37'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:47:37'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:52:35'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', NULL, '2021-08-14 05:52:38'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:52:38'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', NULL, '2021-08-14 05:52:42'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:52:42'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', NULL, '2021-08-14 05:52:45'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:52:45'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', NULL, '2021-08-14 05:52:49'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:52:49'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', NULL, '2021-08-14 05:52:56'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:52:56'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:56:30'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', NULL, '2021-08-14 05:56:32'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:56:32'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', NULL, '2021-08-14 05:56:35'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:56:35'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/proses', NULL, '2021-08-14 05:56:38'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:56:38'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/11', NULL, '2021-08-14 05:56:42'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:56:43'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:58:06'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-14 05:58:12'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/proses', NULL, '2021-08-14 05:58:13'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-14 05:58:14'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/kategori_galeri', NULL, '2021-08-14 05:58:17'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-14 05:58:29'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/tambah', NULL, '2021-08-14 05:58:32'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-14 05:58:37'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-14 05:58:39'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri/edit/11', NULL, '2021-08-14 05:58:41'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-14 05:58:41'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 05:58:48'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-14 06:05:17'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 06:10:24'),
(NULL, '127.0.0.1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/4', NULL, '2021-08-14 06:10:27'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:04:17'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:06:01'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:07:54'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:08:10'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:08:22'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:08:38'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:08:51'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:13:29'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:13:41'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:13:59'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:14:11'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 08:14:26'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/galeri', NULL, '2021-08-14 09:31:09'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 09:47:55'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita', NULL, '2021-08-14 09:48:32'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/11', NULL, '2021-08-14 09:48:39'),
(NULL, '::1', 3, 'admin', 'http://localhost/webpurbayan1/admin/berita/edit/11', NULL, '2021-08-14 09:48:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`id_kunjungan`);

--
-- Indeks untuk tabel `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id_sub_menu`),
  ADD UNIQUE KEY `link` (`link`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kunjungan`
--
ALTER TABLE `kunjungan`
  MODIFY `id_kunjungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT untuk tabel `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
