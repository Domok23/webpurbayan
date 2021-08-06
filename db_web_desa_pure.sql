-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Agu 2021 pada 16.56
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

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
  `id_user` int(11) NOT NULL,
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
(1, 3, 'wisata-perak-kotagede', 'Wisata Perak Kotagede', '<p data-adtags-visited=\"true\">Apakah Anda menyukai perhiasan? Bagaimana dengan perhiasan atau aksesoris yang terbuat dari perak? Di Yogyakarta sendiri, tempat terbaik untuk mendapatkan perak adalah di Kotagede.</p>\r\n<p data-adtags-visited=\"true\">Gapura besar menyambut setiap pengendara yang melewati pertigaan Gedong Kuning menuju Jalan Kemasan, Kotagede.&nbsp;<em>Selamat datang di Sentra Kerajinan Perak Kotagede</em>, begitu bunyi tulisan yang tertera di atasnya. Di hari-hari kerja biasa, jalanan ini memang tidak begitu ramai, namun jika sudah tiba akhir minggu atau masa liburan, biasanya mulai terlihat para pemburu perak yang bertandang ke toko-toko yang berjejer di sepanjang jalan.</p>\r\n<p data-adtags-visited=\"true\">Memang ada banyak sekali toko yang menjual kerajinan dan perhiasan perak di sepanjang Jalan Kemasan. Baik toko kecil maupun besar menjual beragam hasil kerajinan seperti kalung, cincin, gelang atau souvenir dengan bentuk-bentuk unik dan rumit. Wahyu (24), salah satu pembeli aksesoris perak mengaku Kotagede adalah tujuan utama jika ingin mencari aksesoris atau cinderamata dari perak.</p>\r\n<p data-adtags-visited=\"true\">&ldquo;Perak itu emang bagus ya buat aksesoris dan harganya juga lebih terjangkau dari emas..&rdquo;, ujar Wahyu, saat ditanyai mengapa ia memilih perak.</p>\r\n<p data-adtags-visited=\"true\">Toko-toko di sepanjang Jalan Kemasan biasanya hanya menjual kerajinan perak saja, sementara produksinya sendiri dilakukan di rumah para pengrajin yang berlokasi di Kampung Basen. Merasa penasaran dengan proses produksi kerajinan perak ini, Atmanews lantas bertandang ke Kampung Basen, yang letaknya tak jauh dari jalan utama Kotagede. Kampung Basen sendiri merupakan kampung yang sudah diresmikan sebagai kampung wisata kerajinan perak sejak 23 Agustus 2011. Kampung ini berhasil menjadi kampung wisata setelah menjalankan program pengembangan wirausaha penduduk dalam bidang kesenian dan kuliner.</p>\r\n<p data-adtags-visited=\"true\">Pengembangan ini sejalan dengan upaya pemerintah yang ingin mengangkat kerajinan perak Kotagede sebagai daya tarik wisatawan. Kampung Basen bahkan juga telah memiliki&nbsp;<em>website</em>&nbsp;mereka sendiri sebagai alat bantu promosi dan pengenalan pariwisata kepada khalayak luas</p>\r\n<p data-adtags-visited=\"true\">Sebagian besar penduduk masyarakat Basen mencari nafkah sebagai pengrajin logam, terutama perak, emas dan tembaga. Mereka juga memiliki asosiasi pengrajin sendiri, yakni Asosiasi Senopati. Salah satu pengrajin perak tersebut adalah Pak Tumijo yang sudah lebih dari 20 tahun menggeluti pekerjaannya. Pak Tumijo tinggal di rumah sederhana yang juga merupakan bengkel kerja dan&nbsp;<em>showroom</em>&nbsp;produksi peraknya sendiri.</p>\r\n<p data-adtags-visited=\"true\">Pak Tumijo mengklaim, hasil kerajinan perak buatannya beda dari yang lain, karena lebih rumit desain dan detailnya. Memang betul, kerajinan perak milik Pak Tumijo menonjolkan lebih banyak detail, seperti penggunaan ornamen lengkung dan spiral.</p>\r\n<p data-adtags-visited=\"true\">&ldquo;Di kampung Basen, memang jarang yang bikin seperti ini, biasanya hanya yang polos-polos saja, karena itu lumayan banyak juga yang pesan kesini..&rdquo;, ungkap Pak Tumijo dengan senyuman.</p>\r\n<p id=\"inline-ad-0\" class=\"inline-ad-slot\" data-adtags-width=\"661\" data-adtags-visited=\"true\">&nbsp;</p>\r\n<p data-adtags-visited=\"true\">Selain melihat-lihat cinderamata buatan Pak Tumijo, beliau juga mengizinkan Atmanews untuk melihat secara langsung proses produksi kerajinan ini. Sayangnya, karena Pak Tumijo masih dalam tahap awal pengerjaan, ia tidak bisa memperlihatkan tahap pembuatannya hingga akhir. Saat itu, Pak Tumijo sedang mengerjakan pesanan bros dalam jumlah besar yang akan diekspor ke China.</p>\r\n<p>Bahan utama pembuatannya adalah kawat tipis perak yang bisa dibentuk menjadi apa saja melalui berbagai teknik. Untuk membuat detail ornamen, Pak Tumijo menggunakan kait besi kecil dan tang. Sementara untuk membuat butir-butiran perak, harus dilakukan pembakaran. Pak Tumijo memperlihatkan bagaimana sebuah potongan kawat perak, apabila dibakar, dengan sendirinya akan membentuk butiran.</p>\r\n<p>Setelah dibentuk sesuai keinginan, perak-perak tersebut dibasahi dan ditaburi bubuk patri, dibakar, dan kemudian direbus dengan air tawas. Perebusan dan pembakaran ini disebut sebagai pemutihan, dan dilakukan sebanyak 3 hingga 4 kali. Hasilnya adalah perak dengan warna yang bersih dan berkilau.</p>', 'Publish', 'Berita', 'Integrasi Data dan Pengetahuan', 'img_0999.jpg', '', 6, 0, '2019-05-13 15:51:51', '2021-05-05 15:51:36', '2021-08-05 12:19:40'),
(2, 3, 'kampung-gedongan', 'Kampung Gedongan', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>', 'Publish', 'Kampung', 'Kampung yang memiliki ada Upacara Adat ( Nyadran)', 'gdd_1.png', 'fa fa-globe', 34, 0, '2019-05-17 04:15:33', '2021-07-02 04:06:15', '2021-08-05 14:48:49'),
(3, 3, 'kampung-purbayan', 'Kampung Purbayan', '<p style=\"text-align: justify;\">Kampung wisata Purbayan secara kewilayahan berada di Kelurahan Purbayan, Kecamatan Kota Gede dan berada di Kawasan Cagar Budaya Kota Gede, Kota Yogyakarta, Daerah Istimewa Yogyakarta.</p>\r\n<p style=\"text-align: justify;\">Kota Gede adalah sebuah daerah yang dahulu merupakan cikal bakal Kerajaan Mataram Islam pertama. Lokasi tersebut saat ini merupakan kawasan wisata budaya berbasis heritage. Melalui Kampung Wisata Purbayan inilah Anda bisa mengetahui awal mula sejarah Kasultanan Ngayogyakarta Hadiningrat.</p>', 'Publish', 'Kampung', 'Kampung Wisata Berbasis Religius', 'pbn.jpg', 'fa fa-globe', 8, 2, '2019-05-17 04:37:00', '2021-07-01 04:36:19', '2021-08-05 14:48:03'),
(4, 3, 'profil-desa-wisata-purbayan', 'PROFIL DESA WISATA PURBAYAN', '<p>Kelurahan Purbayan &nbsp;dibentuk pada tahun 1981, berdasar Peraturan Daerah Propinsi Daerah Istimewa Yogyakarta ( Perda DIY) Nomor 6 tahun 1981 Tentang Pembentukan, Pemecahan, Penyatuan dan Penghapusan Kelurahan di Propinsi Daerah Istimewa Yogyakarta. Kelurahan Purbayan terbentuk dari 4 eks Rukun Kampung (RK) yaitu : RK Gedongan, RK Basen, RK Purbayan, dan RK Alun &ndash; Alun. Dengan pembentukan Kelurahan, 4 RK digabung dan dibagi menjadi 14 Rukun Warga (RW) dan terdiri dari 58 Rukun Tetangga (RT) dengan jumlah Kepala Keluarga 3302 KK dan jumlah penduduk 10.176 jiwa.</p>\r\n<p><strong>Batas Administrasi</strong></p>\r\n<p>Luas wilayah Kelurahan Purbayan sebesar 83 Ha. Luas lahan yang ada terbagi dalam beberapa peruntukan, dapat dikelompokkan seperti untuk fasilitas umum, pemukiman,&nbsp; kegiatan ekonomi dan Iain-lain.</p>\r\n<p>Kelurahan Purbayan berada dalam wilayah Kecamatan Kotagede Kota Yogyakarta dengan nomor Kode Wilayah 34.71.14.03 dan Kode Pos 55173.</p>\r\n<p>Kelurahan Purbayan Kecamatan Kotagede Kota Yogyakarta mempunyai luas wilayah &nbsp;&nbsp;0,83 km2 dengan peta wilayah sebagaimana ditunjukkan pada Gambar 1 dan berbatasan langsung dengan :</p>\r\n<ul>\r\n<li>Sebelah Utara&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Desa Banguntapan &nbsp;Kecamatan Banguntapan Kabupaten Bantul</li>\r\n<li>Sebelah Selatan&nbsp;&nbsp;&nbsp; : Desa Singosaren Kecamatan Banguntapan Kabupaten Bantul</li>\r\n<li>Sebelah Barat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Desa Jagalan Kecamatan Banguntapan Kabupaten Bantul dan Kelurahan Prenggan, Kelurahan Rejowinangun Kota Yogyakarta</li>\r\n<li>Sebelah Timur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Desa Banguntapan Kecamatan Banguntapan Kabupaten Bantul</li>\r\n</ul>\r\n<p><strong>Kondisi dan Ciri Geografis Wilayah</strong></p>\r\n<p>Ketinggian Wilayah Kelurahan Purbayan secara umum terletak pada posisi 113 m di atas permukaan laut. Kelurahan Purbayan terletak di wilayah Kecamatan Kotagede Kota Yogyakarta yang merupakan kota tua bekas Ibu kota kerajaan, Kota Kotagede merupakan kota warisan (<em>heritage</em>) yang amat berpotensi bagi kemakmuran masyarakatnya dan merupakan daerah hunian padat. Walaupun di Kelurahan Purbayan relatif tidak ada industri besar, namun kegiatan ekonomi bergerak cukup tinggi terutama karena digerakkan oleh kerajinan industri perak (<em>silver</em>) yang berada di dan sekitar Kelurahan Purbayan.</p>\r\n<p>Jarak Purbayan dari pusat Pemerintahan Kecamatan 500 M, Pemerintahan Kota 4&nbsp; Km.</p>', 'Publish', 'Profil', '', '20201006152419.jpg', '', 43, 1, '2019-07-26 10:38:15', '2021-06-02 10:36:47', '2021-08-05 14:48:45'),
(6, 3, 'kampung-basen', 'Kampung Basen', '<p style=\"text-align: justify;\">Kampung Basen adalah sebuah tempat wisata yang ada di wilayah Kota Gede, Yogyakarta lebih tepatnya di Jalan Kemasan, Purbayan, Kotagede, Yogyakarta. Awal berdirinya kampung basen adalah adanya tokoh dari kerajaan mataram yang konon katanya pendiri agama islam yaitu Kyai Basah beliau dulunya tinggal di kampung tersebut dan mendirikan padepokan, jadi kampung ini disebut Basen. Lalu di pojok kampung ada &ldquo;Mbaluarti&rdquo; yaitu tempat istirahatnya wanita-wanita atau kerabat wanita dari keraton, biasanya untuk tempat bermain. Bentuknya bukan kerajaan tapi padepokan. Kondisi sosial budaya di Kampung Basen itu sangat unik, warga di Kampung Basen sangat ramah dan terbuka, mereka mau menerima pendatang baru. Ketika mendatangi Kampung Basen pasti anda akan kaget karena akan di hadapkan oleh kelompok assosiasi para pengrajin, seperti assosiasi sayur lodeh, assosiasi penjahit, assosiasi lotek, dan lainnya. Assosiasi adalah badan organisasi yang khusus diadakan oleh manusia untuk mencapai tingkat hidup yang lebih baik (dalam memenuhi kebutuhan ekonomi), orang membentuk assosiasi seperti firma, perseroan terbatas, serikat buruh dan sebagainya. Organisasi yang ada di kampung Basen yaitu PKK, posyandu untuk balita dan lansia, BKKBN (BKB itu Bina Keluarga Balita, BKR itu Bina Keluarga Remaja, dan BKL yaitu Bina Keluarga Lansia). Organisasi ini dilaksanakan dengan baik oleh warga yang ada di Kampung Basen. Selain itu ada kegiatan yang sering dilakukan oleh warga Kampung Basen seperti di RT 10 ibu-ibu biasanya melakukan kerja bakti di minggu terakhir, ada arisan di tingkat RT dan RW, dan Aisyah Muhammadyah yang&nbsp;&nbsp;kegiatannya macam-macam yaitu ada pertemuan rutin, pengajian, kegiatan santunan anak asuh, ada pemeriksaan kesehatan lansia secara gratis, ada kegiatan ekonomi. Perekonomian Kampung Basen sekarang sedang &ldquo;lesu&rdquo; atau sedang sepi. Alasannya karena teknologi sudah maju orang-orang sekarang kalau pesan tidak langsung datang ke rumah, tapi memakai online. Padahal yang memakai sistem online seperti itu belum tentu punya toko. Dulu sebelum adanya teknologi yang canggih masih ada pengunjung mancanegara ataupun domestik yang datang ke rumah untuk melihat proses pembuatan secara langsung kemudian mereka memesan, soalnya yang mancanegara itu biasanya lebih suka yang <em>handsmade&nbsp;</em>(buatan tangan/ bukan mesin) yang di hasilkan oleh&nbsp;<em>handsmade&nbsp;</em>ini banyak yang di pesan untuk sorum atau toko-toko di depan itu. Tetapi toko-toko yang berdiri di depan 50 % sudah bukan dari warga sini kebanyakan pendatang baru dari luar wilayah ini. Yang asli dari wilayah ini malah justru menjadi pekerja nya bukan pemilik toko, toko-toko tersebut belum tentu tau proses kerja dari pembuatan cincin dan lainnya. Sistem sosial di Kampung Basen yang pertama adalah norma dan peraturan, norma menurut Emil Durkheimbahwa norma-norma sosial adalah sesuatu yang berada di luar individu. Membatasi mereka dan mengendalikan tingkah laku mereka. Membicarakan tentang norma dan peraturan di Kampung Basen memiliki norma dan aturan yang cukup mengesankan yaitu contohnya jam belajar masyarakat, kemudian menjadi kawasan bebas rokok untuk seluruh kampung ini, di tunjuk sebagai <em>pilot project.</em>&nbsp;Aturan yang dibuat oleh warga ini dilaksanakan dengan baik, meskipun masih banyak juga yang melanggarnya.&nbsp;Yang kedua adalah masalah sosial yang ada di masyarakat Kampung Basen seperti balita kemarin kurang gizi, kemudian merokok masih remaja, kenakalan remaja. Masalahnya adalah seperti kenakalan remaja, lalu remaja yang merokok, kemudian karena di sini ada banyak kontrakan atau kos-kosan jadi rawan sekali adanya&nbsp;&nbsp;fitnah, pernah terjadi salah satu warga kepergok satu kontrakan tapi tidak menikah, akhirnya masalah di selesaikan ke tingkat RT, jika tidak bisa di selesaikan lewat RT naik banding ke RW.&nbsp;Ini membuktikan bahwa lembaga sosial yang ada di Kampung Basen menjalankan tugas nya dengan baik, kedudukan dan status sosial yang ada di Kampung Basenmembuktikan bahwaperan lembaga RW dan RT dalam menyelesaikan masalah dan menjalankan tugas nya sangat bertanggung jawab.&nbsp;Tradisi yang selalu di lakukan oleh warga Kampung Basen adalah setiap ada &ldquo;Gelar Budaya Kota Gede&rdquo;. Acarannya yaitu di setiap kampung mengirimkan salah satu perwakilan budaya nya, kalau di kampung Basen itu mereka merias warga persis penampilannya dengan Kyai Basah, dan nanti ada karnaval atau pawai acaranya itu Juni atau Juli, nah nanti dari Gedongan kampung sebelah juga ada, tetapi tradisi ini untuk lingkup Kota Gede, kalau lingkup kampung tidak ada. Hanya tradisi setiap tahun saja secara nasional memperingati HUT RI ada banyak lomba di sini.&nbsp;Ada banyak komunitas yang terbentuk di Kampung Basen, contohnya ada komunitas karawitan bapak-bapak, ada juga bapak-bapak muda, kalau hari rabu ada karawitan untuk anak-anak tempatnya di balai RW. Ini adalah upaya untuk mempertahankan tradisi dan budaya di kampung tersebut. kemudian kedepannya ketika ada pernikahan mereka berencana tidak pakai kaset tetapi tampil&nbsp;<em>live</em>&nbsp;atau secara langsung. Di kampung itu juga ada komunitas keroncong, kalau dari wanita ada karawitan juga kebetulan paud di Kampung Basen sudah cukup ternama karena mengikuti gebyar paud tingkat provinsi, tingkat kota. Biasanya mereka menampilkan anak-anak dengan iringan&nbsp;<em>live&nbsp;</em>yang di iringi oleh bapa/ibu nya melalui karawitan. Januari nanti ada gebyar paud dan anak-anak akan di keluarkan lagi untuk tampil.&nbsp;Di yogyakarta yang terbesar kampungnya adalah Kampung Basen, karena setiap kampung itu maksimal 4 RT, tetapi di Kampung Basen itu ada 7 RT, karena jika di buat dua RW, warganya yang tidak mau nanti tidak adil. Karena khawatir ada kecemburuan sosial antar warganya, kegiatan di kampung itu padat sekali contoh kalau hari selasa anak-anak paud, hari sabtu itu juga paud, hari jumat sore itu ibu-ibu belajar iqra lansia, karena untuk bekal ketika ingin naik haji mereka sudah punya bekal, kemudian malam selasa itu ada kegiatan untuk ibu-ibu muda membaca iqra dengan juz&rsquo;ama, malam kamisnya itu yang sudah hafal Al-Qur&rsquo;an, jadi memang ada tingkatan kalau yang hari selasa sudah bisa baca Qur&rsquo;an mereka bisa langsung datang hari kamis.&nbsp;Kemudian bapa-bapa, malam sabtu karawitan, kemudian bulan Desember kampung Basen di tunjuk sebagai kampung tangguh bencana, karena mereka sudah selesai pelatihan maka namanya tangguh bencana, kalau yang belum selesai pelatihan itu namanya tanggap bencana. Mereka sudah mendirikan KTB, kemudian mendapat bantuan berupa alat dari BPPD kota ketika ada gempa bumi, karena kampung ini terlewati garis merah bencana gempa bumi, ketika terjadi gempa bumi tahun 2006 kampung ini rusak parah.&nbsp;Program di kampung ini sudah tersusun rapi, seperti adanya sumbangan kematian itu panitia dari bapak-bapak langsung bergerak ke rumah warga, kemudian ketika ada pernikahan mereka langsung bergerak untuk membertahu warga, namun ada yang unik di Kampung Basen sistemnya bukan memakai undangan tetapi langsung mendatangi ke rumah-rumah warga dengan menggunakan bahasa jawa halus, tradisi kejawen di sini masih di terapkan, kemudian kampung basen memiliki aturan yang cukup ketat, di kampung ini tidak boleh ada yang nikah sirih hidup serumah di tanah Basen, dan setiap ada keluarga yang dari luar kota ingin tinggal di Kampung Basen mereka harus membayar uang kompensasi yang akan masuk uang kas RW.</p>', 'Publish', 'Kampung', 'Kampung Basen adalah sebuah tempat wisata yang ada di wilayah Kota Gede', 'desa_basen.jpeg', 'fa fa-globe', 4, 1, '2021-08-05 13:14:08', '2021-08-05 13:08:14', '2021-08-05 14:48:15'),
(8, 3, 'kampung-alun-alun', 'Kampung Alun-alun', '<p>Sejak dulu Kotagede sangat terkenal dengan berbagai sejarah budaya. Salah satu yang mencolok dari daerah ini adalah sentra peraknya. Selain itu, terdapat juga berbagai bangunan-bangunan peninggalan sejarah dari cikal bakal Keraton yang masih dilestarikan.</p>\r\n<p>Beberapa tahun belakangan, popularitas Kotagede meningkat dengan adanya kepopuleran pintu rumah tradisional Kotagede. Pintu ini seringkali dijadikan tempat berfoto bagi pengguna media sosial.</p>\r\n<p>Melihat fenomena ini Yunisa Asrianie melihat bahwa Kotagede kental akan nuansa tradisional. Nuansa ini berasal dari corak arsitekturnya yang tradisional dan bercampur gaya Belanda.</p>\r\n<p>&ldquo;Kotagede memiliki citra sebagai sentra perak dan kawasan kota tua. Sehingga dapat disimpulkan bahwa atmosfer yang terciptanya di Kotagede memberikan pengalaman suasana Kota Tua bagi wisatawan,&rdquo; tulis Yunisa dalam tesisnya yang berjudul P<em>otensi Pemukiman Rumah Tradisional Kotagede Sebagai Obyek Wisata</em>&nbsp;tahun 2016.</p>\r\n<p>Adanya corak bangunan tradisional ini membuat Kotagede mempunyai kemungkinan untuk menjadi atraksi wisata Kota Tua Kotagede.</p>\r\n<p>Ada pun Catur Gatra Tunggal yang merupakan peninggalan Keraton, kini berusaha dihidupkan kembali. Catur Gatra Tunggal terdiri dari Pasar Kotagede, Masjid Gedhe, dan Kampung Alun-alun.</p>', 'Publish', 'Kampung', 'Wisata Between Two Gates', 'desa_alun-alun.jpg', 'fa fa-globe', 7, 0, '2021-08-05 13:18:28', '2021-08-05 13:18:19', '2021-08-05 14:48:33'),
(11, 3, 'kampung-basena', 'Kampung Basena', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu ultrices vitae auctor eu. Rutrum quisque non tellus orci. Amet nisl purus in mollis nunc. Nec nam aliquam sem et tortor. Enim tortor at auctor urna nunc id. Mauris ultrices eros in cursus. Libero nunc consequat interdum varius sit amet mattis. Faucibus nisl tincidunt eget nullam. Posuere urna nec tincidunt praesent semper feugiat. Parturient montes nascetur ridiculus mus. Ultrices dui sapien eget mi proin sed libero. Ornare aenean euismod elementum nisi quis. Nec feugiat nisl pretium fusce. Eget est lorem ipsum dolor sit amet consectetur. Cursus euismod quis viverra nibh. Quam viverra orci sagittis eu volutpat odio facilisis. At tellus at urna condimentum mattis.</p>\r\n<p>Gravida cum sociis natoque penatibus. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Ut ornare lectus sit amet est. Orci dapibus ultrices in iaculis nunc sed. Arcu odio ut sem nulla pharetra diam sit. Nulla posuere sollicitudin aliquam ultrices sagittis. Volutpat commodo sed egestas egestas fringilla. Aliquam ut porttitor leo a diam. Tincidunt praesent semper feugiat nibh sed pulvinar proin gravida. Et leo duis ut diam quam nulla porttitor massa id. Vulputate odio ut enim blandit volutpat maecenas volutpat. In est ante in nibh mauris cursus mattis. Congue quisque egestas diam in arcu cursus euismod. Tristique risus nec feugiat in fermentum posuere urna. Nibh tortor id aliquet lectus proin nibh. Diam ut venenatis tellus in. Eu consequat ac felis donec.</p>', 'Publish', 'Berita', '', 'mj.jpg', 'fa fa-globe', 11, 0, '2021-08-05 19:21:46', '2021-08-05 19:20:58', '2021-08-05 13:27:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
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
(5, 5, 3, 'Desa Wisata', 'Homepage', '<p>Purbayan</p>', 'bggg.png', '', 1, 'Publish', NULL, '2021-08-05 07:45:22'),
(6, 4, 3, 'Dokumentasi1', 'Galeri', '<p>Lorem ipsum lorem ipsum</p>', 'ny.jpg', '', 1, 'Publish', 1, '2021-08-05 10:28:07'),
(7, 4, 3, 'Dokumentasi5', 'Galeri', '<p>isiDokumentasi2</p>', 'blog-image.jpg', '', 5, 'Publish', NULL, '2021-08-05 14:18:13'),
(8, 4, 3, 'popup1', 'Pop up', '<p>popap</p>', 'bgni.png', '', NULL, 'Publish', 0, '2021-08-04 16:48:15'),
(9, 4, 3, 'popup1', 'Pop up', '<p>popup1</p>', 'bgni1.png', '', NULL, 'Publish', 1, '2021-08-04 16:49:16');

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
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `singkatan`, `tagline`, `tentang`, `website`, `email`, `alamat`, `telepon`, `hp`, `logo`, `icon`, `facebook`, `twitter`, `instagram`, `google_plus`, `google_map`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `id_user`, `tanggal`) VALUES
(1, 'KELURAHAN PURBAYAN', 'PRBYN', 'DESA WISATA PURBAYAN', '<p>Kelurahan Purbayan dibentuk pada tahun 1981, berdasar Peraturan Daerah Propinsi Daerah Istimewa Yogyakarta ( Perda DIY) Nomor 6 tahun 1981 Tentang Pembentukan, Pemecahan, Penyatuan dan Penghapusan Kelurahan di Propinsi Daerah Istimewa Yogyakarta. Kelurahan Purbayan terbentuk dari 4 eks Rukun Kampung (RK) yaitu : RK Gedongan, RK Basen, RK Purbayan, dan RK Alun &ndash; Alun. Dengan pembentukan Kelurahan, 4 RK digabung dan dibagi menjadi 14 Rukun Warga (RW) dan terdiri dari 58 Rukun Tetangga (RT) dengan jumlah Kepala Keluarga 3302 KK dan jumlah penduduk 10.176 jiwa.</p>', 'https://desawisatapurbayan.com', 'purbayanvillage2021@gmail.com', '<p>Jalan Kemasan No 39 A, Kotagede, Yogyakarta&nbsp;</p>', '(0274) 417010', ' 0812345678', 'pr_logo.png', 'pr.png', 'https://www.facebook.com/', 'http://twitter.com/', 'https://instagram.com/', 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7905.30861138941!2d110.39661162422358!3d-7.8263644774421905!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a57181514fb01%3A0xe72c51062c9d3bfa!2sPurbayan%2C%20Kec.%20Kotagede%2C%20Kota%20Yogyakarta%2C%20Daerah%20Istimewa%20Yogyakarta!5e0!3m2!1sid!2sid!4v1628100899032!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'admin', 0, '2021-08-05 13:01:32');

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
(10, 'http://localhost/webpurbayan1/index.php', '::1', '2021-08-05', '2021-08-05 21:54:12', '2021-08-05 14:54:12');

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
  `id_user_log` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `akses_level` varchar(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `jenis` varchar(24) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_log`
--

INSERT INTO `user_log` (`id_user_log`, `ip_address`, `id_user`, `username`, `akses_level`, `url`, `jenis`, `tanggal`) VALUES
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 13:20:58'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 13:21:00'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 13:21:02'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 13:21:03'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/akun', '', '2021-08-05 13:21:09'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 13:27:39'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Berita', '', '2021-08-05 13:27:48'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/author/3', '', '2021-08-05 13:27:49'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/proses', '', '2021-08-05 13:28:04'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 13:28:04'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/proses', '', '2021-08-05 13:28:21'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 13:28:22'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/proses', '', '2021-08-05 13:28:24'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 13:28:24'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/proses', '', '2021-08-05 13:31:44'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 13:31:44'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:15:44'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/tambah', '', '2021-08-05 14:15:46'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:15:52'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:16:30'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/tambah', '', '2021-08-05 14:16:32'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:16:37'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:16:38'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:16:43'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:17:05'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:17:23'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:18:13'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:18:13'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:18:16'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri/edit/7', '', '2021-08-05 14:18:18'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:18:18'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/galeri', '', '2021-08-05 14:46:57'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 14:47:00'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 14:47:07'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Layanan', '', '2021-08-05 14:47:09'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Layanan', '', '2021-08-05 14:47:11'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Layanan', '', '2021-08-05 14:48:36'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 14:48:58'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Layanan', '', '2021-08-05 14:49:03'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 14:49:41'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita', '', '2021-08-05 14:49:52'),
(0, '::1', 3, 'admin', '', 'http://localhost/webpurbayan1/admin/berita/jenis_berita/Kampung', '', '2021-08-05 14:50:06');

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
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id_kunjungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
