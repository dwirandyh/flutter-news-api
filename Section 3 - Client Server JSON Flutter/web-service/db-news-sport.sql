-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 21 Bulan Mei 2019 pada 16.48
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_news_sport`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_news_olahraga`
--

CREATE TABLE `tb_news_olahraga` (
  `id_berita` int(11) NOT NULL,
  `tgl_berita` varchar(125) NOT NULL,
  `judul_berita` varchar(125) NOT NULL,
  `isi_berita` text NOT NULL,
  `gbr_berita` varchar(215) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_news_olahraga`
--

INSERT INTO `tb_news_olahraga` (`id_berita`, `tgl_berita`, `judul_berita`, `isi_berita`, `gbr_berita`) VALUES
(1, 'Senin, 11 Mar 2019 10:40 WIB', 'Hasil All England 2019: Hendra/Ahsan Sabet Gelar, China Juara Umum', 'Jakarta - Gelaran All England 2019 sudah tuntas. Ganda putra Indonesia Hendra Setiawan/Mohammad Ahsan menyabet gelar, sementara China keluar sebagai juara umum.\r\n\r\nDigelar sejak Senin Rabu (6/3/2019) dan tuntas Minggu (10/3), Indonesia berhasil meneruskan tradisi gelar di kejuaraan bulutangkis tertua ini. Gelar didapat dari nomor ganda putra.\r\n\r\nSetelah Kevin Sanjaya/Marcus Gideon gagal mempertahankan gelar, trofi tetap jatuh ke tangan sesama wakil Indonesia. Adalah Hendra/Ahsan yang meraihnya di Arena Birmingham, Inggris.\r\nHendra/Ahsan memenangkan final melawan ganda Malaysia Aaron Chia/Soh Wooi Yoik 11-21,21-14, 21-12. Ini menjadi gelar kedua pasangan tersebut, setelah pada 2014 keduanya juga mampu menyabet gelar.\r\n\r\nDi nomor ganda putri, duet China Chen Qingchen/Jia Yifan memenangkan medali juara. Keduanya mengalahkan ganda Jepang Mayua Matsumoto/Wakana Nagaraha 18-21, 22-20, 21-11.\r\n\r\nDi ganda campuran, China yang kembali menang. Zheng Siwei/Huang Yaqiong mengalahkan ganda campuran tuan rumah yakni Chris Adcock/Gabrielle Adcock straight game 21-16, 21-12.\r\n\r\n', 'beritra1.jpeg'),
(2, 'Senin 11 Maret 2019, 10:45 WIB', 'Sarri: Hazard Harus Lebih Banyak Berlari', 'London - Eden Hazard memang menjadi penyelamat Chelsea saat melawan Wolverhampton Wanderers. Meski demikian, dia mendapat sedikit kritik dari Maurizio Sarri.\r\n\r\nThe Blues bermain imbang 1-1 saat menjamu Wolverhampton pada lanjutan Liga Inggris di Stamford Bridge, Minggu (10/3/2019) malam WIB. Chelsea ketinggalan lebih dulu dalam laga itu akibat gol Raul Jimenez.\r\n\r\nChelsea baru bisa membukukan gol pada masa injury time. Hazard yang mencatatkan namanya di papan skor.\r\nWhoscored mencatat bahwa gol itu merupakan satu-satunya tembakan Hazard dalam pertandingan. Tapi, pemain Belgia itu memberi kontribusi lain berupa 2 key passes, 5 kali dribble sukses, dan lima kali dilanggar.\r\n\r\nHazard memang mengancam saat menguasai bola dengan paparan statistik di atas. Tapi, Sarri menuntut lebih dari pemain 28 tahun itu. Eks pemain Lille itu diminta lebih banyak melakukan pergerakan tanpa bola.\r\n\r\n\"Hazard merupakan pemain hebat, dia menjadi menyelesaikan situasi pada momen ini. Tapi selama pertandingan, seperti permain lainnya. Dia harus melakukan pergerakan tanpa bola lebih banyak,\" kata Sarri di situs Chelsea.\r\n', 'berita2.jpeg'),
(3, 'Senin 11 Maret 2019, 10:20 WIB', 'Oh De Gea, Tendangan Xhaka Belum Seperti Milik Roberto Carlos Lho\r\n', 'Jakarta - David de Gea disorot tajam usai dibobol tendangan Granit Xhaka. Kiper Manchester United itu dinilai melakukan kesalahan fatal dalam gol tersebut.\r\n\r\nMU kalah 0-2 saat bertandang ke Emirates Stadium, Minggu (10/3/2019) malam WIB. Gol The Gunners dicetak oleh Xhaka pada menit ke-12 dan Pierre-Emerick Aubameyang melalui titik penalti pada menit ke-69.\r\n\r\nDe Gea mendapatkan kritik pedas pada gol Xhaka. Dia gagal mengantisipasi tembakan gelandang 26 tahun itu meski punya pandangan jelas ke arah sumber tendangan.\r\n\r\nKiper internasional Spanyol ini mati langkah setelah lebih dulu bergerak ke kiri, sementara bola sedikit melintir dan meluncur ke sisi kanannya. Sky Sports yang meninjau ulang terjadinya gol menunjukkan bagaimana De Gea salah antisipasi terhadap tendangan Xhaka.\r\n\r\n\"Inilah yang dilihat David de Gea. Dia melihat lurus ke jalurnya dan punya sudut pandangan jelas, tidak ada yang menghalanginya, dan dia bergerak saja ke kiri dan bolanya melintir ke kanan,\" ungkap Jamie Redknapp.', 'berita3.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_news_olahraga`
--
ALTER TABLE `tb_news_olahraga`
  ADD PRIMARY KEY (`id_berita`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_news_olahraga`
--
ALTER TABLE `tb_news_olahraga`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
