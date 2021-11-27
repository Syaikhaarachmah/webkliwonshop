-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Okt 2021 pada 09.51
-- Versi server: 5.7.36-log
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahmadadh_vilo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_nama` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_sandi` text NOT NULL,
  `admin_foto` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_username`, `admin_nama`, `admin_email`, `admin_sandi`, `admin_foto`) VALUES
(60, 'admin', 'Admin', 'info@admin.com', '$2y$10$i.q9fviZUwPWQnjdODeN2eLjHGUjZxInJZFUptgQaKASab1N2jRVO', 'admin.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_blog`
--

CREATE TABLE `tb_blog` (
  `blog_id` int(11) NOT NULL,
  `blog_judul` varchar(90) NOT NULL,
  `blog_url` text NOT NULL,
  `blog_tgl` datetime NOT NULL,
  `blog_isi` text NOT NULL,
  `blog_gambar` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_blog`
--

INSERT INTO `tb_blog` (`blog_id`, `blog_judul`, `blog_url`, `blog_tgl`, `blog_isi`, `blog_gambar`) VALUES
(18517, 'Vivamus Velit Est Iaculis Id Tempus', 'vivamus-velit-est-iaculis-id-tempus-1580784609.html', '2020-02-04 09:06:52', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt facere maxime harum in optio enim. Voluptatibus modi tempora, saepe neque. Delectus repudiandae, sed dolor. Ut ipsam corporis velit, quis quae repellendus odit omnis exercitationem aliquid iure totam assumenda, temporibus in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore similique temporibus, quibusdam repellendus dolore eos cumque, voluptate saepe, quo neque perferendis nihil odit porro libero soluta ut eaque, architecto inventore error nesciunt voluptas officiis sed maiores. Doloribus vitae commodi quae, earum repellat, illum fugit explicabo repudiandae facilis beatae quos nihil officia harum quibusdam et quisquam perferendis in qui, magni eaque totam sit! Error eum, iure illo non!', '3.jpg'),
(28258, 'Video Tutorial Belanja', 'video-tutorial-belanja-1582621282.html', '2020-02-25 16:01:22', 'berikut ini video tentang cara belanja di toko ini', 'd59e53a2cdf2a601d724dbb9bedd22e8.mp4'),
(56509, 'Integer Tempor Urna A Condimentum', 'integer-tempor-urna-a-condimentum-1580784574.html', '2020-02-04 07:41:11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt facere maxime harum in optio enim. Voluptatibus modi tempora, saepe neque. Delectus repudiandae, sed dolor. Ut ipsam corporis velit, quis quae repellendus odit omnis exercitationem aliquid iure totam assumenda, temporibus in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore similique temporibus, quibusdam repellendus dolore eos cumque, voluptate saepe, quo neque perferendis nihil odit porro libero soluta ut eaque, architecto inventore error nesciunt voluptas officiis sed maiores. Doloribus vitae commodi quae, earum repellat, illum fugit explicabo repudiandae facilis beatae quos nihil officia harum quibusdam et quisquam perferendis in qui, magni eaque totam sit! Error eum, iure illo non!', '2.jpg'),
(66990, 'Integer Euismod Dui Non Auctor', 'integer-euismod-dui-non-auctor-1580784517.html', '2020-02-04 06:14:41', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt facere maxime harum in optio enim. Voluptatibus modi tempora, saepe neque. Delectus repudiandae, sed dolor. Ut ipsam corporis velit, quis quae repellendus odit omnis exercitationem aliquid iure totam assumenda, temporibus in.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore similique temporibus, quibusdam repellendus dolore eos cumque, voluptate saepe, quo neque perferendis nihil odit porro libero soluta ut eaque, architecto inventore error nesciunt voluptas officiis sed maiores. Doloribus vitae commodi quae, earum repellat, illum fugit explicabo repudiandae facilis beatae quos nihil officia harum quibusdam et quisquam perferendis in qui, magni eaque totam sit! Error eum, iure illo non!', '1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_cart`
--

CREATE TABLE `tb_cart` (
  `cart_id` int(11) NOT NULL,
  `cart_rowid` varchar(80) NOT NULL,
  `cart_name` text NOT NULL,
  `cart_price` varchar(8) NOT NULL,
  `cart_image` varchar(80) NOT NULL,
  `cart_qty` int(11) NOT NULL,
  `cart_weight` varchar(7) NOT NULL,
  `cart_stok` int(11) NOT NULL,
  `cart_userid` int(11) NOT NULL,
  `cart_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_cart`
--

INSERT INTO `tb_cart` (`cart_id`, `cart_rowid`, `cart_name`, `cart_price`, `cart_image`, `cart_qty`, `cart_weight`, `cart_stok`, `cart_userid`, `cart_total`) VALUES
(2056, '61fa8a5ce6425bf77c6f61ed0e3a5094', 'Star Guardian', '50000', '8.jpg', 4, '1', 10, 11454, 200000),
(2977, '31b94e43c0bd5ab1eee514065920a389', 'T-shirt Black', '60000', '1.jpg', 3, '1', 20, 11454, 180000),
(12742, '3ce3f94b9ab20ef4a2e56ca9dc015e5a', 'Black Hodie', '200000', '3.jpg', 1, '1', 6, 11454, 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_transaksi`
--

CREATE TABLE `tb_detail_transaksi` (
  `d_transaksi_id` varchar(10) NOT NULL,
  `d_transaksi_item` int(7) NOT NULL,
  `d_transaksi_qty` smallint(4) NOT NULL,
  `d_transaksi_biaya` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_detail_transaksi`
--

INSERT INTO `tb_detail_transaksi` (`d_transaksi_id`, `d_transaksi_item`, `d_transaksi_qty`, `d_transaksi_biaya`) VALUES
('1581233088', 1506529438, 1, 340000),
('1581233088', 1804248788, 2, 120000),
('1581237331', 685126615, 3, 300000),
('1581239971', 584067184, 1, 160000),
('1599256068', 2137020298, 1, 200000),
('1599258825', 119766114, 2, 100000),
('1599461711', 119766114, 1, 50000),
('1600138164', 119766114, 1, 50000),
('1600228860', 2137020298, 1, 200000),
('1605495868', 1760903437, 1, 65000),
('1605495868', 584067184, 1, 160000),
('1614470899', 1506529438, 1, 340000),
('1616136264', 1760903437, 1, 65000),
('1616136264', 119766114, 1, 50000),
('1616136312', 1760903437, 1, 65000),
('1616136312', 584067184, 1, 160000),
('1616136389', 119766114, 1, 50000),
('1616136466', 685126615, 1, 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` smallint(6) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `url` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `kategori`, `url`) VALUES
(1, 'T-Shirt', 'tshirt'),
(2, 'Hodie', 'hodie'),
(3, 'Jeans', 'jeans');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `komentar_id` varchar(50) NOT NULL,
  `komentar_proid` int(11) NOT NULL,
  `komentar_userid` int(11) NOT NULL,
  `komentar_tgl` datetime NOT NULL,
  `komentar_isi` text NOT NULL,
  `komentar_option` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_komentar`
--

INSERT INTO `tb_komentar` (`komentar_id`, `komentar_proid`, `komentar_userid`, `komentar_tgl`, `komentar_isi`, `komentar_option`) VALUES
('657bdu9sd6s90wn', 584067184, 23094, '2020-02-10 04:29:09', 'Bagus banget', 0),
('d78af13919853cba6122559c02155605', 685126615, 23094, '2020-02-10 10:15:04', 'Like', 1),
('e401ea14f335496fbd5f3b499c5e94c0', 2137020298, 23094, '2020-02-10 10:11:14', 'Bagus', 0),
('hfb479854n765489', 2137020298, 11454, '2020-02-10 07:46:10', 'Keren euy', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_lock`
--

CREATE TABLE `tb_lock` (
  `lock_id` int(11) NOT NULL,
  `lock_status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_lock`
--

INSERT INTO `tb_lock` (`lock_id`, `lock_status`) VALUES
(1, 'YES');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_notifikasi`
--

CREATE TABLE `tb_notifikasi` (
  `notif_id` varchar(90) NOT NULL,
  `notif_perihal` varchar(50) NOT NULL,
  `notif_dari` varchar(70) NOT NULL,
  `notif_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notif_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_notifikasi`
--

INSERT INTO `tb_notifikasi` (`notif_id`, `notif_perihal`, `notif_dari`, `notif_time`, `notif_status`) VALUES
('03909453b1fcb0681ddde3441a0840c9', 'Transaksi baru', 'Miftahul Jannah', '2021-02-28 00:09:06', 0),
('2e17aded417049ad1957fd612a2840ed', 'Transaksi baru', 'Miftahul Jannah', '2020-09-15 02:49:43', 0),
('54f553c819a1bc400a01a14a6e853236', 'Transaksi baru', 'Miftahul Jannah', '2020-09-16 04:01:17', 0),
('951fcb9d1b9f9ebc3182b5700e014b6d', 'Transaksi baru', 'Ahmad Adha', '2020-02-11 12:13:28', 0),
('baf8fc40884877f4e2aef5e041d29ac3', 'Transaksi baru', 'Miftahul Jannah', '2021-03-19 06:45:02', 0),
('c19b100c6815d3546c3ed1188ad6c444', 'Transaksi baru', 'Miftahul Jannah', '2021-03-19 06:48:40', 0),
('cad0e1367cb57c60917ea39a5fc35130', 'Transaksi baru', 'Miftahul Jannah', '2021-03-19 06:46:53', 0),
('cc88837023dc2705cc7823372ffe56af', 'Transaksi baru', 'Miftahul Jannah', '2020-11-16 03:06:25', 1),
('e657b981c3ed316411d8914adce4ed6c', 'Transaksi baru', 'Miftahul Jannah', '2020-09-04 22:34:55', 0),
('ede0cc8ead907c7f5e12f2b157e84e87', 'Transaksi baru', 'Miftahul Jannah', '2021-03-19 06:46:10', 0),
('ee55113c4f31257603ece3a1b598e2c0', 'Transaksi baru', 'Miftahul Jannah', '2020-02-11 12:14:50', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `pesan_id` varchar(100) NOT NULL,
  `pesan_nama` varchar(50) NOT NULL,
  `pesan_email` varchar(50) NOT NULL,
  `pesan_tgl` datetime NOT NULL,
  `pesan_subjek` varchar(50) NOT NULL,
  `pesan_isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `produk_id` int(11) NOT NULL,
  `produk_url` text NOT NULL,
  `produk_name` varchar(50) NOT NULL,
  `produk_weight` int(11) NOT NULL,
  `produk_tgl` datetime NOT NULL,
  `produk_stok` int(11) NOT NULL,
  `produk_status` varchar(50) NOT NULL,
  `produk_price` varchar(8) NOT NULL,
  `produk_description` text NOT NULL,
  `produk_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`produk_id`, `produk_url`, `produk_name`, `produk_weight`, `produk_tgl`, `produk_stok`, `produk_status`, `produk_price`, `produk_description`, `produk_image`) VALUES
(119766114, 'star-guardian-1580699314.html', 'Star Guardian', 1000, '2020-02-03 09:18:36', 10, 'New', '50000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis tenetur explicabo sequi pariatur, perferendis voluptates suscipit odit ipsa dicta perspiciatis, totam quasi autem dolorem. Sed earum dolore quasi quisquam sit.', '8.jpg'),
(584067184, 'daphne-coat-1580699461.html', 'Daphne Coat', 1000, '2020-02-03 09:16:44', 8, 'New', '160000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis tenetur explicabo sequi pariatur, perferendis voluptates suscipit odit ipsa dicta perspiciatis, totam quasi autem dolorem. Sed earum dolore quasi quisquam sit.', '6.jpg'),
(685126615, 'chambray-shirt-1580699492.html', 'Chambray Shirt', 1000, '2020-02-03 09:12:13', 12, 'New', '100000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis tenetur explicabo sequi pariatur, perferendis voluptates suscipit odit ipsa dicta perspiciatis, totam quasi autem dolorem. Sed earum dolore quasi quisquam sit.', '4.jpg'),
(1107070371, 'salomon-kids-1580699532.html', 'Salomon Kids', 1000, '2020-02-03 09:15:50', 3, 'New', '60000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis tenetur explicabo sequi pariatur, perferendis voluptates suscipit odit ipsa dicta perspiciatis, totam quasi autem dolorem. Sed earum dolore quasi quisquam sit.', '5.jpg'),
(1506529438, 'blazer-man-1580699590.html', 'Blazer Man', 1000, '2020-02-03 09:08:35', 25, 'New', '340000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis tenetur explicabo sequi pariatur, perferendis voluptates suscipit odit ipsa dicta perspiciatis, totam quasi autem dolorem. Sed earum dolore quasi quisquam sit.', '2.jpg'),
(1760903437, 'boston-lcs-1580699630.html', 'Boston LCS', 1000, '2020-02-03 09:17:07', 20, 'New', '65000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis tenetur explicabo sequi pariatur, perferendis voluptates suscipit odit ipsa dicta perspiciatis, totam quasi autem dolorem. Sed earum dolore quasi quisquam sit.', '7.jpg'),
(1804248788, 'tshirt-black-1580699688.html', 'T-shirt Black', 1000, '2020-02-03 09:05:42', 20, 'New', '60000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis tenetur explicabo sequi pariatur, perferendis voluptates suscipit odit ipsa dicta perspiciatis, totam quasi autem dolorem. Sed earum dolore quasi quisquam sit.', '1.jpg'),
(2137020298, 'black-hodie-1580699794.html', 'Black Hodie', 1000, '2020-02-03 09:02:15', 6, 'New', '200000', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis tenetur explicabo sequi pariatur, perferendis voluptates suscipit odit ipsa dicta perspiciatis, totam quasi autem dolorem. Sed earum dolore quasi quisquam sit.', '3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profil`
--

CREATE TABLE `tb_profil` (
  `profil_id` int(11) NOT NULL,
  `profil_nama` varchar(50) NOT NULL,
  `profil_email` varchar(80) NOT NULL,
  `profil_telp` varchar(14) NOT NULL,
  `profil_alamat` text NOT NULL,
  `profil_fb` varchar(50) NOT NULL,
  `profil_wa` varchar(14) NOT NULL,
  `profil_ig` varchar(50) NOT NULL,
  `profil_tw` varchar(50) NOT NULL,
  `profil_logo` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_profil`
--

INSERT INTO `tb_profil` (`profil_id`, `profil_nama`, `profil_email`, `profil_telp`, `profil_alamat`, `profil_fb`, `profil_wa`, `profil_ig`, `profil_tw`, `profil_logo`) VALUES
(1, 'ViloShop', 'info@viloshop.com', '08568759749', '4060 Reppert Coal Road Jackson, MS 39201 USA', 'ViloShop', '08568759749', 'ViloShop', 'ViloShop', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rkategori`
--

CREATE TABLE `tb_rkategori` (
  `id_item` int(11) NOT NULL,
  `id_kategori_r` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_rkategori`
--

INSERT INTO `tb_rkategori` (`id_item`, `id_kategori_r`) VALUES
(119766114, 1),
(584067184, 3),
(685126615, 2),
(1107070371, 3),
(1506529438, 3),
(1760903437, 1),
(1804248788, 1),
(2137020298, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slider`
--

CREATE TABLE `tb_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_text_1` varchar(30) NOT NULL,
  `slider_text_2` varchar(30) NOT NULL,
  `slider_text_3` varchar(30) NOT NULL,
  `slider_urutan` int(11) NOT NULL,
  `slider_gambar` varchar(80) NOT NULL,
  `slider_gaya_text` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_slider`
--

INSERT INTO `tb_slider` (`slider_id`, `slider_text_1`, `slider_text_2`, `slider_text_3`, `slider_urutan`, `slider_gambar`, `slider_gaya_text`) VALUES
(1, 'New Year 2020', 'best shopping', 'Big Sale of This Week 50% off', 1, '1.jpg', 'text-left'),
(2, 'Women fashion', 'popular style', 'Big Sale of This Week 50% off', 2, '2.jpg', 'text-center'),
(3, 'Men Collection', 'popular style', 'Big Sale of This Week 50% off', 3, '3.jpg', 'text-right');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_token`
--

CREATE TABLE `tb_token` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` text NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_token`
--

INSERT INTO `tb_token` (`id`, `email`, `token`, `created`) VALUES
(1, 'zaai3647@gmail.com', 'BpHlhsGfTvWCpP5ajUomydxsVtSnUnmv7UrGp/Y8wFg=', 1598949844),
(2, 'test@gmail.com', 'W+13gxBD8+MMNf0zcGSwami6m9yBhtrjeCoReAPKnR8=', 1599190122),
(3, 'tes@gmail.com', 'nKkvTwIz8WFPKLk4WA/l8ScyLxlLaMjytGlrirXe1RE=', 1599190380),
(4, 'tes123@gmail.com', 'hjyofecbWFlmCWb+39ObjbAUbR0n5ZougypK9PoebKM=', 1599205388),
(5, 'beringas4545@gmail.com', 'pHd2r8zsx4DoYoQtgRDKYwKsExuiRDokhTCDHvMTAs8=', 1599205438),
(6, 'hahaapud@gmail.com', 'aDb0h670AGuAyLLvAyRsa/w3aMHHP0Gw3YQeenMgFe8=', 1600216829),
(7, 'mahpudinnur@gmail.com', 'tYd9GS+zXS1tRvPsy0T+tZcNAaQ7AY20jxZj2pGITTg=', 1600217153),
(8, 'sri.setiyono20@gmail.com', 'PjkOIue+uhxZW2URNqwpsrSrX2AYW15V/NvDQZI/LBo=', 1614465285);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `transaksi_id` varchar(10) NOT NULL,
  `transaksi_userid` int(7) NOT NULL,
  `transaksi_total` double NOT NULL,
  `transaksi_tujuan` varchar(255) NOT NULL,
  `transaksi_pos` int(5) NOT NULL,
  `transaksi_prov` varchar(80) NOT NULL,
  `transaksi_kota` varchar(25) NOT NULL,
  `transaksi_kurir` varchar(5) NOT NULL,
  `transaksi_service` varchar(50) NOT NULL,
  `transaksi_tgl_pesan` date NOT NULL,
  `transaksi_bts_bayar` date NOT NULL,
  `transaksi_status` enum('belum','diproses') NOT NULL,
  `transaksi_note` text NOT NULL,
  `transaksi_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`transaksi_id`, `transaksi_userid`, `transaksi_total`, `transaksi_tujuan`, `transaksi_pos`, `transaksi_prov`, `transaksi_kota`, `transaksi_kurir`, `transaksi_service`, `transaksi_tgl_pesan`, `transaksi_bts_bayar`, `transaksi_status`, `transaksi_note`, `transaksi_time`) VALUES
('1581233088', 11454, 480000, 'Jl. panda', 97654, 'Jawa Timur', 'Jember', 'tiki', 'REG(Regular Service)', '2020-02-09', '2020-02-12', 'diproses', 'Sesuai pesanan', '2020-02-11 09:10:51'),
('1581237331', 11454, 327500, 'jl. merpati merah', 45873, 'Jawa Barat', 'Depok', 'pos', 'Express Next Day Barang(Express Next Day Barang)', '2020-02-09', '2020-02-12', 'diproses', '', '2020-02-11 09:10:51'),
('1581239971', 23094, 235000, 'tikep', 56673, 'Sulawesi Tenggara', 'Muna', 'pos', 'Paket Kilat Khusus(Paket Kilat Khusus)', '2020-02-09', '2020-02-12', 'diproses', '', '2020-02-11 09:10:51'),
('1599256068', 23094, 241000, 'ok', 66666, 'Bali', 'Denpasar', 'jne', 'REG(Layanan Reguler)', '2020-09-05', '2020-09-08', 'diproses', 'note', '2020-09-04 21:47:48'),
('1599258825', 23094, 128000, 'Jl. Anu', 40125, 'Jawa Barat', 'Bandung', 'jne', 'OKE(Ongkos Kirim Ekonomis)', '2020-09-05', '2020-09-08', 'belum', 'Anu', '2020-09-04 22:33:45'),
('1599461711', 23094, 63000, 'jalan abc', 12345, 'Jawa Barat', 'Bekasi', 'pos', 'Paket Kilat Khusus(Paket Kilat Khusus)', '2020-09-07', '2020-09-10', 'belum', '', '2020-09-07 06:55:11'),
('1600138164', 23094, 92000, 'klkklk', 40588, 'Bengkulu', 'Bengkulu', 'jne', 'OKE(Ongkos Kirim Ekonomis)', '2020-09-15', '2020-09-18', 'diproses', '', '2020-09-15 02:49:24'),
('1600228860', 23094, 253000, 'lkklk', 40588, 'Bengkulu', 'Bengkulu Tengah', 'jne', 'REG(Layanan Reguler)', '2020-09-16', '2020-09-19', 'diproses', '', '2020-09-16 04:01:00'),
('1605495868', 23094, 255000, 'Jl. HH', 15116, 'Banten', 'Tangerang', 'jne', 'REG(Layanan Reguler)', '2020-11-16', '2020-11-19', 'diproses', '', '2020-11-16 03:04:28'),
('1614470899', 23094, 353000, 'fgdghfg', 56413, 'Jawa Tengah', 'Magelang', 'jne', 'REG(Layanan Reguler)', '2021-02-28', '2021-03-03', 'diproses', 'gdgfd', '2021-02-28 00:08:19'),
('1616136264', 23094, 145000, 'TEST', 16918, 'Jawa Barat', 'Bogor', 'jne', 'REG(Layanan Reguler)', '2021-03-19', '2021-03-22', 'belum', 'TEST', '2021-03-19 06:44:24'),
('1616136312', 23094, 255000, 'Jl. Permata Blok F1 Permata CImanggu, Tanah Sareal, Bogor', 16164, 'Jawa Barat', 'Bogor', 'jne', 'REG(Layanan Reguler)', '2021-03-19', '2021-03-22', 'belum', 'Mohon segera diproses ya gan', '2021-03-19 06:45:12'),
('1616136389', 23094, 64000, '22222', 16918, 'DKI Jakarta', 'Jakarta Pusat', 'jne', 'REG(Layanan Reguler)', '2021-03-19', '2021-03-22', 'belum', '222', '2021-03-19 06:46:29'),
('1616136466', 23094, 118000, 'TTTT', 16918, 'DI Yogyakarta', 'Gunung Kidul', 'jne', 'REG(Layanan Reguler)', '2021-03-19', '2021-03-22', 'diproses', 'TTTT', '2021-03-19 06:47:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_sandi` text NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `user_nama`, `user_email`, `user_sandi`, `user_status`, `user_created`) VALUES
(11454, 'Ahmad Adha', 'ahmadadha19@gmail.com', '$2y$10$lWCfq2DWtDuNIsgpIceSD.jXZwm1ALsRoBQ5h.4G/I1gqHB2EqsFC', 2, '2020-02-06 02:12:02'),
(23094, 'Miftahul Jannah', 'miftah@gmail.com', '$2y$10$8h8Po8eaZTEOZG2.8d2OHOaQkU8.UkhutFOudrfOzy6Ge9NHNOJoq', 1, '2020-02-09 08:37:56'),
(120009836, 'Tes', 'tes@gmail.com', '$2y$10$HZypIkMDLeYfByKMjCDsR.tb.D0MwgDPA3wZ7DteOMy4KT9IM8mmu', 0, '2020-09-04 03:33:00'),
(658549356, 'Andi', 'beringas4545@gmail.com', '$2y$10$X0eRM3LF9POTUnbCZlG7duSKGLPimscLitMlj4zPsrZZoY8vqjxSO', 0, '2020-09-04 07:43:58'),
(724209683, 'Tes', 'tes123@gmail.com', '$2y$10$Jm1UQn8IwXyImOEJrzu0cuOTaTVqyTQa2iMWizuhiIarKGsLLLD/G', 0, '2020-09-04 07:43:08'),
(919133631, 'Haha Apud', 'hahaapud@gmail.com', '$2y$10$0XS2NSLSHMfeSd1QpAtV2.MHV3vocEZRumA76yE5AR6.kQiuQXMuC', 0, '2020-09-16 00:40:29'),
(1394783382, 'Sri Setiyono', 'sri.setiyono20@gmail.com', '$2y$10$UrFMLoN1WJOcau5H3e8jhOXg5fUEz.PCLKHLgF80Mq9uqodE6E9ba', 0, '2021-02-27 22:34:45'),
(1771638450, 'Mahpudin', 'mahpudinnur@gmail.com', '$2y$10$u2kEOxxfFCyzTjg.N7JJM.kSxDp3y8fIORlwV9eCbyBJESqQDo306', 0, '2020-09-16 00:45:53'),
(1920993424, 'Test', 'test@gmail.com', '$2y$10$19DdKI9lFkqr35An7/iNw.6RhUwy1zCG5hV4VpzovOH6GiHmRIqe6', 0, '2020-09-04 03:28:42'),
(2088865803, 'Aa', 'zaai3647@gmail.com', '$2y$10$Q6FlGfd7qFxugdOYi3dV.eNvzpVOB40qNtHq5XNMtuSCQFs6tcVpW', 0, '2020-09-01 08:44:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_wishlist`
--

CREATE TABLE `tb_wishlist` (
  `list_id` varchar(100) NOT NULL,
  `list_proid` int(11) NOT NULL,
  `list_userid` int(11) NOT NULL,
  `list_tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_wishlist`
--

INSERT INTO `tb_wishlist` (`list_id`, `list_proid`, `list_userid`, `list_tgl`) VALUES
('66c656a7768dcaec6f68a22a1446e72b', 119766114, 11454, '2020-02-10 12:45:35'),
('ff2f3aa7583304639231c2658720f37e', 2137020298, 11454, '2020-02-10 13:12:24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_blog`
--
ALTER TABLE `tb_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indeks untuk tabel `tb_cart`
--
ALTER TABLE `tb_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`komentar_id`);

--
-- Indeks untuk tabel `tb_lock`
--
ALTER TABLE `tb_lock`
  ADD PRIMARY KEY (`lock_id`);

--
-- Indeks untuk tabel `tb_notifikasi`
--
ALTER TABLE `tb_notifikasi`
  ADD PRIMARY KEY (`notif_id`);

--
-- Indeks untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`pesan_id`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indeks untuk tabel `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`profil_id`);

--
-- Indeks untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indeks untuk tabel `tb_token`
--
ALTER TABLE `tb_token`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `tb_wishlist`
--
ALTER TABLE `tb_wishlist`
  ADD PRIMARY KEY (`list_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_token`
--
ALTER TABLE `tb_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
