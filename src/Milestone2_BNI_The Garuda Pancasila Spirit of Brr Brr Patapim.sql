-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Halobot
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `Halobot`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Halobot` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `Halobot`;

--
-- Table structure for table `alamat_pasien`
--

DROP TABLE IF EXISTS `alamat_pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alamat_pasien` (
  `email` varchar(255) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `jalan` varchar(100) NOT NULL,
  PRIMARY KEY (`email`,`provinsi`,`kota`,`jalan`),
  CONSTRAINT `alamat_pasien_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pasien` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alamat_pasien`
--

LOCK TABLES `alamat_pasien` WRITE;
/*!40000 ALTER TABLE `alamat_pasien` DISABLE KEYS */;
INSERT INTO `alamat_pasien` VALUES
('bagus17@example.org','Sumatera Utara','Dumai','Gg. Gedebage Selatan No. 14'),
('baktionopalastri@example.net','Banten','Bau-Bau','Gg. Pacuan Kuda No. 9'),
('baktionopalastri@example.net','Jawa Tengah','Magelang','Jalan S. Parman No. 62'),
('baktionopalastri@example.net','Kepulauan Bangka Belitung','Bandar Lampung','Jl. Dipenogoro No. 4'),
('budiyantoraharja@example.org','Aceh','Denpasar','Jalan Kiaracondong No. 82'),
('budiyantoraharja@example.org','Jawa Tengah','Pekalongan','Jl. Pasir Koja No. 563'),
('budiyantoraharja@example.org','Sulawesi Barat','Pariaman','Jalan Surapati No. 7'),
('budiyantoraharja@example.org','Sumatera Barat','Malang','Jl. Rajawali Timur No. 927'),
('cager91@example.org','DKI Jakarta','Pekanbaru','Jalan Jayawijaya No. 0'),
('cager91@example.org','Kalimantan Utara','Bukittinggi','Gang Pasir Koja No. 7'),
('cager91@example.org','Nusa Tenggara Timur','Pagaralam','Gg. Jakarta No. 7'),
('cager91@example.org','Papua','Denpasar','Jl. Lembong No. 0'),
('cager91@example.org','Sumatera Barat','Tidore Kepulauan','Jl. Pasteur No. 3'),
('capanurdiyanti@example.net','Sulawesi Tenggara','Kota Administrasi Jakarta Utara','Gang KH Amin Jasuta No. 780'),
('digdaya32@example.net','Bali','Jayapura','Jalan Ahmad Yani No. 099'),
('digdaya32@example.net','Maluku','Bukittinggi','Jalan Rajawali Barat No. 0'),
('dimazpradipta@example.net','Kalimantan Tengah','Cirebon','Gg. Rungkut Industri No. 642'),
('dimazpradipta@example.net','Sulawesi Tenggara','Purwokerto','Gang Merdeka No. 97'),
('dsaragih@example.com','Kepulauan Bangka Belitung','Tidore Kepulauan','Gg. Kebonjati No. 3'),
('dsaragih@example.com','Maluku Utara','Metro','Jalan KH Amin Jasuta No. 60'),
('dsaragih@example.com','Sulawesi Tenggara','Blitar','Gg. Cikutra Barat No. 59'),
('dsinaga@example.org','Papua Barat','Bukittinggi','Jl. Indragiri No. 3'),
('fitriani02@example.net','Kalimantan Timur','Serang','Gang Setiabudhi No. 59'),
('fitriani02@example.net','Sumatera Selatan','Pariaman','Jl. Lembong No. 98'),
('ganda49@example.org','Riau','Tomohon','Gg. Ahmad Yani No. 42'),
('ganda49@example.org','Sulawesi Tenggara','Kendari','Gang Rajawali Timur No. 466'),
('ganjaranhasanah@example.com','DI Yogyakarta','Sabang','Gg. R.E Martadinata No. 275'),
('ganjaranhasanah@example.com','Jawa Timur','Sungai Penuh','Gg. Cempaka No. 721'),
('gunawanrama@example.com','Kalimantan Barat','Tomohon','Jalan Soekarno Hatta No. 7'),
('gunawanrama@example.com','Papua Barat','Pariaman','Jl. Peta No. 11'),
('hadiyolanda@example.com','Maluku Utara','Kupang','Jl. Asia Afrika No. 53'),
('hmayasari@example.net','Jawa Barat','Prabumulih','Jl. Jend. Sudirman No. 3'),
('hmayasari@example.net','Kalimantan Selatan','Tangerang Selatan','Gang Monginsidi No. 86'),
('jagaraga55@example.com','Aceh','Magelang','Jalan Kapten Muslihat No. 646'),
('jagaraga55@example.com','Sulawesi Selatan','Yogyakarta','Gang R.E Martadinata No. 56'),
('jailanicinthia@example.org','Banten','Kediri','Jalan Pasir Koja No. 68'),
('jmustofa@example.org','DI Yogyakarta','Palembang','Jalan K.H. Wahid Hasyim No. 644'),
('kpurwanti@example.org','Maluku','Padang','Gang Sadang Serang No. 5'),
('kpurwanti@example.org','Riau','Solok','Gang Veteran No. 18'),
('kpurwanti@example.org','Sumatera Selatan','Batam','Jl. Rajiman No. 092'),
('lantarwaluyo@example.org','Bengkulu','Sukabumi','Jl. Pasirkoja No. 66'),
('lantarwaluyo@example.org','Sulawesi Utara','Bengkulu','Gg. Pelajar Pejuang No. 99'),
('limar53@example.net','Kepulauan Riau','Bima','Jalan Gegerkalong Hilir No. 90'),
('limar53@example.net','Sumatera Utara','Sibolga','Jl. Erlangga No. 29'),
('limar98@example.org','Jambi','Banjarbaru','Gang Pacuan Kuda No. 5'),
('limar98@example.org','Jawa Barat','Bandar Lampung','Gg. Waringin No. 72'),
('maheswarabaktianto@example.net','Maluku Utara','Tomohon','Gang Lembong No. 3'),
('maida92@example.com','Bengkulu','Pematangsiantar','Gg. K.H. Wahid Hasyim No. 636'),
('maida92@example.com','Sulawesi Barat','Subulussalam','Gang Jamika No. 991'),
('natsirjono@example.net','Gorontalo','Tarakan','Jl. Medokan Ayu No. 772'),
('nnasyiah@example.com','Jawa Timur','Serang','Jl. Sadang Serang No. 73'),
('nnasyiah@example.com','Riau','Serang','Jl. Kiaracondong No. 54'),
('nwidiastuti@example.net','Gorontalo','Kota Administrasi Jakarta Barat','Jl. Suniaraja No. 8'),
('nwidiastuti@example.net','Nusa Tenggara Timur','Pagaralam','Jl. Dipenogoro No. 63'),
('omahendra@example.com','Jawa Barat','Tanjungpinang','Jalan Wonoayu No. 11'),
('omahendra@example.com','Kepulauan Riau','Tanjungbalai','Jalan Dipenogoro No. 66'),
('opudjiastuti@example.com','Bengkulu','Blitar','Gang Moch. Ramdan No. 73'),
('osudiati@example.net','Jawa Timur','Parepare','Jl. Gedebage Selatan No. 42'),
('pradanayessi@example.net','Bengkulu','Magelang','Gg. Bangka Raya No. 844'),
('prakasapurwa@example.com','Kalimantan Barat','Palembang','Jl. Gegerkalong Hilir No. 4'),
('prakasapurwa@example.com','Papua Barat','Meulaboh','Gg. Ahmad Dahlan No. 793'),
('prasetyabella@example.net','Kalimantan Tengah','Purwokerto','Jl. W.R. Supratman No. 52'),
('prasetyabella@example.net','Maluku Utara','Salatiga','Jalan Rajawali Timur No. 286'),
('prasetyabella@example.net','Sulawesi Utara','Kota Administrasi Jakarta Utara','Jl. Pasteur No. 9'),
('rahayu87@example.org','Jambi','Jayapura','Gang Monginsidi No. 075'),
('rahayu87@example.org','Sulawesi Barat','Kotamobagu','Gang Jamika No. 68'),
('rahayu87@example.org','Sulawesi Barat','Tangerang Selatan','Gang W.R. Supratman No. 15'),
('rahmanlaksita@example.net','DKI Jakarta','Kota Administrasi Jakarta Timur','Jl. Ciumbuleuit No. 550'),
('rahmanlaksita@example.net','Maluku Utara','Sukabumi','Jl. Raya Ujungberung No. 9'),
('rahmanlaksita@example.net','Nusa Tenggara Barat','Purwokerto','Gang H.J Maemunah No. 5'),
('samosirrosman@example.com','Bengkulu','Semarang','Gang Pacuan Kuda No. 283'),
('samosirrosman@example.com','Sulawesi Barat','Jayapura','Gg. Rajawali Barat No. 5'),
('sarah91@example.org','Sulawesi Tenggara','Semarang','Jalan Gedebage Selatan No. 125'),
('sihombingqueen@example.org','Jawa Barat','Tegal','Gang Ronggowarsito No. 87'),
('silviariyanti@example.org','Jawa Timur','Cimahi','Gang Rajawali Timur No. 60'),
('silviariyanti@example.org','Maluku','Cilegon','Jl. Rumah Sakit No. 24'),
('silviariyanti@example.org','Sumatera Selatan','Palangkaraya','Gang Bangka Raya No. 827'),
('tania31@example.net','Gorontalo','Tidore Kepulauan','Jalan Moch. Ramdan No. 705'),
('tania31@example.net','Nusa Tenggara Timur','Kediri','Jl. Rumah Sakit No. 441'),
('uaryani@example.com','Sulawesi Utara','Gorontalo','Gg. Laswi No. 863'),
('vanesapermata@example.net','Jambi','Tebingtinggi','Gg. Merdeka No. 3'),
('vanesapermata@example.net','Papua','Kota Administrasi Jakarta Pusat','Gg. Indragiri No. 478'),
('vanesapermata@example.net','Sumatera Utara','Malang','Gg. Pasteur No. 57'),
('vanyafujiati@example.org','DI Yogyakarta','Semarang','Jalan Soekarno Hatta No. 379'),
('vanyafujiati@example.org','Jawa Timur','Parepare','Gang M.H Thamrin No. 84'),
('vinopuspita@example.com','Aceh','Padang Sidempuan','Jalan Abdul Muis No. 379'),
('vinopuspita@example.com','Jambi','Salatiga','Jalan Cihampelas No. 4'),
('vinopuspita@example.com','Jawa Tengah','Meulaboh','Gg. Moch. Ramdan No. 559'),
('vinopuspita@example.com','Kalimantan Timur','Prabumulih','Gg. Raya Setiabudhi No. 693'),
('wartaprasetya@example.org','Banten','Banjarbaru','Jl. Cempaka No. 957'),
('wastutikemal@example.net','Jawa Timur','Meulaboh','Jl. Ir. H. Djuanda No. 42'),
('wastutikemal@example.net','Nusa Tenggara Timur','Pontianak','Gang Pasir Koja No. 515'),
('wastutikemal@example.net','Riau','Semarang','Jl. Yos Sudarso No. 58'),
('wgunarto@example.com','DKI Jakarta','Binjai','Jl. KH Amin Jasuta No. 241'),
('xananauwais@example.org','DI Yogyakarta','Tanjungbalai','Jl. Indragiri No. 601'),
('ynainggolan@example.net','Kalimantan Timur','Purwokerto','Gg. Gegerkalong Hilir No. 44'),
('ynainggolan@example.net','Lampung','Banda Aceh','Gang Suniaraja No. 177'),
('ynainggolan@example.net','Riau','Tarakan','Gg. Cihampelas No. 69'),
('yolandakani@example.net','DKI Jakarta','Manado','Jl. Rajiman No. 04'),
('yolandakani@example.net','Kepulauan Riau','Bau-Bau','Gg. Kapten Muslihat No. 8');
/*!40000 ALTER TABLE `alamat_pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departemen`
--

DROP TABLE IF EXISTS `departemen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departemen` (
  `nama_departemen` varchar(255) NOT NULL,
  `id_rumah_sakit` int(11) NOT NULL,
  `gedung` varchar(255) NOT NULL,
  PRIMARY KEY (`nama_departemen`,`id_rumah_sakit`),
  KEY `id_rumah_sakit` (`id_rumah_sakit`),
  CONSTRAINT `departemen_ibfk_1` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakit` (`id_rumah_sakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departemen`
--

LOCK TABLES `departemen` WRITE;
/*!40000 ALTER TABLE `departemen` DISABLE KEYS */;
INSERT INTO `departemen` VALUES
('Anak',60,'Gedung B'),
('Anak',267,'Gedung Timur'),
('Anak',345,'Gedung B'),
('Anak',428,'Gedung Utama'),
('Anak',576,'Gedung A'),
('Anak',766,'Gedung A'),
('Anak',791,'Gedung Utama'),
('Anak',879,'Gedung C'),
('Anak',949,'Gedung Utama'),
('Bedah',432,'Gedung Timur'),
('Gigi',198,'Gedung Utama'),
('Gigi',247,'Gedung Utama'),
('Gigi',267,'Gedung C'),
('Gigi',345,'Gedung Utama'),
('Gigi',432,'Gedung C'),
('Gigi',514,'Gedung B'),
('Gigi',532,'Gedung C'),
('Gigi',576,'Gedung Timur'),
('Gigi',766,'Gedung Timur'),
('Gigi',879,'Gedung B'),
('Kardiologi',60,'Gedung Timur'),
('Kardiologi',247,'Gedung A'),
('Kardiologi',345,'Gedung B'),
('Kardiologi',428,'Gedung Timur'),
('Kardiologi',532,'Gedung Utama'),
('Kardiologi',574,'Gedung A'),
('Kardiologi',757,'Gedung Utama'),
('Kardiologi',791,'Gedung Utama'),
('Kardiologi',887,'Gedung A'),
('Kulit',60,'Gedung Timur'),
('Kulit',267,'Gedung Timur'),
('Kulit',306,'Gedung B'),
('Kulit',514,'Gedung Timur'),
('Kulit',532,'Gedung A'),
('Kulit',574,'Gedung A'),
('Kulit',718,'Gedung C'),
('Kulit',766,'Gedung Timur'),
('Kulit',887,'Gedung C'),
('Neurologi',60,'Gedung Timur'),
('Neurologi',198,'Gedung B'),
('Neurologi',306,'Gedung Timur'),
('Neurologi',514,'Gedung Timur'),
('Neurologi',532,'Gedung B'),
('Neurologi',698,'Gedung A'),
('Neurologi',718,'Gedung Utama'),
('Umum',247,'Gedung C'),
('Umum',532,'Gedung A'),
('Umum',698,'Gedung B'),
('Umum',757,'Gedung Timur'),
('Umum',949,'Gedung A');
/*!40000 ALTER TABLE `departemen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `janji_temu`
--

DROP TABLE IF EXISTS `janji_temu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `janji_temu` (
  `id_janji_temu` int(11) NOT NULL AUTO_INCREMENT,
  `id_rumah_sakit` int(11) NOT NULL,
  `waktu_pelaksanaan` datetime NOT NULL,
  `alasan` varchar(255) NOT NULL,
  PRIMARY KEY (`id_janji_temu`,`id_rumah_sakit`),
  KEY `janji_temu_ibfk_1` (`id_rumah_sakit`),
  CONSTRAINT `janji_temu_ibfk_1` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakit` (`id_rumah_sakit`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `janji_temu`
--

LOCK TABLES `janji_temu` WRITE;
/*!40000 ALTER TABLE `janji_temu` DISABLE KEYS */;
INSERT INTO `janji_temu` VALUES
(1,698,'2025-06-12 23:16:24','Vero facilis minus voluptatum blanditiis reiciendis necessitatibus optio.'),
(2,791,'2025-04-30 05:14:58','Dolore consequatur itaque tempore provident soluta nobis at alias quidem minus sequi optio.'),
(3,432,'2025-05-25 19:25:24','Voluptates necessitatibus deleniti est debitis praesentium autem accusantium culpa ad.'),
(4,757,'2025-05-08 00:58:56','Laborum ex nobis sequi neque hic ab quidem voluptatum optio nihil necessitatibus.'),
(5,428,'2025-04-21 16:16:02','Voluptatum earum deleniti doloribus incidunt laboriosam cumque architecto enim.'),
(6,532,'2025-06-01 00:58:37','Explicabo expedita similique ea dolore ex eos praesentium dolore voluptatum expedita fugit quibusdam.'),
(7,267,'2025-05-15 03:39:23','Autem nihil quos in fuga suscipit cumque quod.'),
(8,267,'2025-06-15 08:11:34','Mollitia nihil occaecati delectus porro esse cupiditate omnis nemo illum.'),
(9,887,'2025-04-25 14:52:12','Tempore asperiores repellat corporis accusantium cum nulla dolor.'),
(10,345,'2025-06-12 07:42:28','Nostrum saepe ratione eaque quia nemo.'),
(11,879,'2025-04-17 04:02:33','Sequi hic ducimus quod quis consequuntur.'),
(12,198,'2025-05-13 01:13:23','Doloremque necessitatibus quam corporis nobis deleniti a.'),
(13,879,'2025-05-16 13:32:30','Eveniet debitis at nulla amet molestiae iste vitae odio ad incidunt.'),
(14,247,'2025-05-09 23:30:33','Culpa ut blanditiis labore non deleniti tenetur occaecati recusandae accusamus.'),
(15,198,'2025-05-25 21:57:41','Perspiciatis veniam at molestiae delectus iste incidunt quibusdam.'),
(16,949,'2025-05-30 05:07:57','Quidem vitae quod officiis dignissimos occaecati nostrum accusantium minima totam neque.'),
(17,757,'2025-04-20 03:03:34','Laborum eaque numquam accusamus possimus tempore tempore harum architecto iure quibusdam veritatis.'),
(18,267,'2025-06-05 12:51:52','Quasi optio enim mollitia recusandae eius pariatur voluptate quod ipsam.'),
(19,576,'2025-05-27 17:21:05','Non ea nihil quibusdam ipsam laudantium in ratione occaecati voluptatibus magnam laboriosam.'),
(20,514,'2025-05-18 05:36:52','Quos ipsum necessitatibus reprehenderit incidunt inventore illum atque perspiciatis possimus.'),
(21,267,'2025-05-13 06:32:08','Temporibus eligendi dolore porro placeat animi quibusdam cum dolor pariatur itaque eligendi perferendis.'),
(22,887,'2025-05-09 08:22:53','Quo vero voluptatibus itaque doloribus recusandae itaque quisquam corrupti.'),
(23,574,'2025-05-17 11:37:04','Repellendus beatae nesciunt reprehenderit nostrum dicta dolore consequatur cum dolorem.'),
(24,514,'2025-05-24 09:28:26','Suscipit a corporis officiis enim minus quia atque dolorem quam rerum.'),
(25,345,'2025-05-03 21:51:58','Quam ratione libero commodi aspernatur adipisci impedit voluptatibus nesciunt ipsum sint facere.'),
(26,698,'2025-06-04 11:14:06','At suscipit libero dicta libero eaque harum ipsum magni temporibus cumque.'),
(27,428,'2025-05-26 14:41:25','Quasi fugit possimus ullam sequi distinctio odio totam hic.'),
(28,345,'2025-05-21 23:57:36','Aliquid minus architecto placeat aspernatur totam quidem ad.'),
(29,267,'2025-04-21 00:10:44','Perferendis esse fugiat odit repellat reiciendis.'),
(30,267,'2025-04-29 06:18:19','Dignissimos corporis quaerat ducimus rem quis at hic ratione iusto quo ipsam nostrum.'),
(31,576,'2025-05-27 20:07:00','Iusto occaecati commodi impedit nihil commodi optio officia sed.'),
(32,791,'2025-04-30 18:26:56','Aperiam assumenda ipsam pariatur recusandae voluptatibus rem fugit quod sunt at.'),
(33,576,'2025-05-26 16:30:02','Fugiat quia quas aliquam eius officia dignissimos assumenda quos dolorem accusamus culpa.'),
(34,60,'2025-06-09 11:25:55','Magni qui sequi placeat asperiores sit sapiente quisquam laboriosam autem.'),
(35,576,'2025-04-28 08:09:49','Veniam temporibus nemo aperiam itaque rerum quia voluptas atque facere.'),
(36,247,'2025-05-04 04:24:22','Magni omnis necessitatibus nisi nobis dolor aperiam facere recusandae dicta quidem.'),
(37,879,'2025-06-09 04:05:01','Vero accusamus quaerat qui hic molestiae at corrupti ipsam laborum id similique asperiores.'),
(38,198,'2025-05-19 00:53:32','Accusamus dolorum soluta quis dolore provident aliquid recusandae.'),
(39,887,'2025-04-27 20:48:38','Eius consequatur explicabo expedita saepe sequi corrupti.'),
(40,949,'2025-05-23 22:55:51','Beatae ducimus autem recusandae fugit nobis saepe placeat quod perferendis eligendi.'),
(41,60,'2025-04-26 23:13:11','Id ipsum laboriosam velit dolorum tenetur maxime alias corporis cumque itaque.'),
(42,887,'2025-05-09 05:58:44','Molestias hic excepturi suscipit natus quidem quae.'),
(43,698,'2025-06-02 13:23:40','Quas at velit ullam optio perferendis commodi.'),
(44,576,'2025-06-01 18:41:37','Nemo accusantium neque odit corrupti vel nobis nam nam id quisquam in corrupti.'),
(45,532,'2025-05-04 00:00:38','Dicta recusandae consequatur aliquid debitis vitae tempore perferendis molestiae natus.'),
(46,698,'2025-04-29 05:29:13','Recusandae earum explicabo voluptatum modi facilis suscipit eum adipisci soluta quaerat.'),
(47,576,'2025-05-29 06:17:37','Vitae officia dolor aliquid nobis quo asperiores quaerat ab vero.'),
(48,791,'2025-04-25 16:53:18','Aut itaque magnam possimus praesentium distinctio incidunt natus est magni beatae dolor.'),
(49,514,'2025-05-14 11:14:23','Veniam libero ea harum necessitatibus praesentium nihil dignissimos.'),
(50,306,'2025-05-27 22:41:09','Libero ullam quaerat cupiditate dolore tempore.');
/*!40000 ALTER TABLE `janji_temu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_medis`
--

DROP TABLE IF EXISTS `layanan_medis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layanan_medis` (
  `id_rumah_sakit` int(11) NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `nama_layanan` enum('vaksinasi','fisioterapi') NOT NULL,
  PRIMARY KEY (`id_rumah_sakit`,`id_layanan`),
  CONSTRAINT `layanan_medis_ibfk_1` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakit` (`id_rumah_sakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_medis`
--

LOCK TABLES `layanan_medis` WRITE;
/*!40000 ALTER TABLE `layanan_medis` DISABLE KEYS */;
INSERT INTO `layanan_medis` VALUES
(60,37,'vaksinasi'),
(60,38,'fisioterapi'),
(198,11,'fisioterapi'),
(198,12,'vaksinasi'),
(247,13,'fisioterapi'),
(247,14,'vaksinasi'),
(267,25,'fisioterapi'),
(267,26,'vaksinasi'),
(306,7,'vaksinasi'),
(306,8,'fisioterapi'),
(345,39,'fisioterapi'),
(345,40,'vaksinasi'),
(428,17,'vaksinasi'),
(428,18,'fisioterapi'),
(428,42,'vaksinasi'),
(432,1,'vaksinasi'),
(432,2,'fisioterapi'),
(432,50,'fisioterapi'),
(514,35,'fisioterapi'),
(514,36,'vaksinasi'),
(514,41,'vaksinasi'),
(532,33,'fisioterapi'),
(532,34,'vaksinasi'),
(532,46,'fisioterapi'),
(574,3,'vaksinasi'),
(574,4,'fisioterapi'),
(576,31,'vaksinasi'),
(576,32,'fisioterapi'),
(698,9,'fisioterapi'),
(698,10,'vaksinasi'),
(698,43,'vaksinasi'),
(718,29,'fisioterapi'),
(718,30,'vaksinasi'),
(718,45,'vaksinasi'),
(757,19,'vaksinasi'),
(757,20,'fisioterapi'),
(757,47,'fisioterapi'),
(757,48,'fisioterapi'),
(766,27,'fisioterapi'),
(766,28,'vaksinasi'),
(791,5,'vaksinasi'),
(791,6,'fisioterapi'),
(879,21,'vaksinasi'),
(879,22,'fisioterapi'),
(887,23,'vaksinasi'),
(887,24,'fisioterapi'),
(887,49,'fisioterapi'),
(949,15,'fisioterapi'),
(949,16,'vaksinasi'),
(949,44,'vaksinasi');
/*!40000 ALTER TABLE `layanan_medis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_layanan`
--

DROP TABLE IF EXISTS `log_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_layanan` (
  `firmware_baymin` int(11) NOT NULL,
  `waktu_pengguna` datetime NOT NULL,
  `jenis_tindakan` varchar(255) NOT NULL,
  PRIMARY KEY (`firmware_baymin`,`waktu_pengguna`),
  CONSTRAINT `log_layanan_ibfk_1` FOREIGN KEY (`firmware_baymin`) REFERENCES `pasien` (`firmware_baymin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_layanan`
--

LOCK TABLES `log_layanan` WRITE;
/*!40000 ALTER TABLE `log_layanan` DISABLE KEYS */;
INSERT INTO `log_layanan` VALUES
(11796,'2025-03-22 01:20:59','revolutionize 24/7 relationships'),
(11796,'2025-04-12 04:06:59','syndicate magnetic e-services'),
(11796,'2025-04-12 22:52:01','engage scalable communities'),
(11796,'2025-04-22 12:18:34','enhance granular functionalities'),
(11796,'2025-05-13 14:12:05','deliver plug-and-play initiatives'),
(12185,'2025-05-03 06:15:16','incentivize extensible convergence'),
(12660,'2025-02-01 13:39:08','engineer interactive schemas'),
(12660,'2025-03-04 11:55:41','redefine intuitive supply-chains'),
(12660,'2025-05-13 22:14:35','redefine distributed action-items'),
(15056,'2025-01-09 18:33:34','enable strategic experiences'),
(15056,'2025-04-19 05:25:29','innovate leading-edge convergence'),
(16388,'2025-01-24 07:53:52','reinvent ubiquitous e-commerce'),
(16388,'2025-02-22 02:15:59','disintermediate cross-media partnerships'),
(16388,'2025-05-03 10:57:32','envisioneer leading-edge applications'),
(18177,'2025-05-16 12:07:32','harness open-source architectures'),
(18829,'2025-03-03 03:00:41','re-contextualize mission-critical content'),
(21078,'2025-03-12 15:23:16','leverage impactful mindshare'),
(21078,'2025-04-27 11:35:48','morph B2C solutions'),
(24369,'2025-01-21 06:13:13','streamline synergistic info-mediaries'),
(24369,'2025-02-21 02:37:37','monetize sticky e-business'),
(24369,'2025-03-07 14:01:02','facilitate dot-com info-mediaries'),
(25445,'2025-01-14 11:38:06','revolutionize dot-com ROI'),
(25445,'2025-01-21 15:22:48','innovate front-end ROI'),
(25445,'2025-02-05 10:50:06','deliver dynamic systems'),
(25445,'2025-04-05 12:28:37','matrix transparent vortals'),
(25445,'2025-04-09 15:11:48','redefine value-added web services'),
(26088,'2025-01-13 00:55:05','unleash innovative metrics'),
(26088,'2025-02-18 15:02:34','implement visionary partnerships'),
(26088,'2025-05-11 08:49:04','whiteboard out-of-the-box channels'),
(26732,'2025-02-11 19:25:25','transform vertical users'),
(26732,'2025-05-05 13:15:36','repurpose enterprise methodologies'),
(30805,'2025-01-05 19:06:25','innovate virtual schemas'),
(30805,'2025-04-29 07:53:09','cultivate bricks-and-clicks e-tailers'),
(39319,'2025-01-09 21:12:03','unleash leading-edge methodologies'),
(39319,'2025-04-09 02:50:58','empower turn-key channels'),
(39595,'2025-02-21 15:14:44','visualize visionary e-tailers'),
(57475,'2025-01-11 11:33:58','drive 24/7 e-tailers'),
(57475,'2025-05-11 05:24:58','morph turn-key niches'),
(58394,'2025-02-24 01:27:58','mesh killer models'),
(58394,'2025-04-27 14:03:44','streamline user-centric communities'),
(58394,'2025-04-29 23:36:27','scale rich experiences'),
(61351,'2025-04-12 17:38:05','optimize out-of-the-box web services'),
(61840,'2025-01-25 04:31:36','grow user-centric metrics'),
(61840,'2025-02-23 09:17:23','architect granular deliverables'),
(61840,'2025-03-12 14:05:37','iterate sticky relationships'),
(61840,'2025-03-16 20:10:04','benchmark virtual functionalities'),
(61840,'2025-04-02 09:43:41','engage front-end communities'),
(61840,'2025-04-12 18:53:08','enable bleeding-edge communities'),
(61840,'2025-04-30 07:14:55','re-contextualize interactive models'),
(63871,'2025-04-10 12:45:32','enable compelling info-mediaries'),
(65609,'2025-02-04 02:17:56','extend rich systems'),
(65609,'2025-03-31 19:12:43','reinvent cross-platform platforms'),
(65609,'2025-04-07 16:44:57','incentivize collaborative e-services'),
(65659,'2025-01-27 16:01:36','cultivate turn-key infrastructures'),
(65659,'2025-04-20 00:09:52','synergize proactive deliverables'),
(66079,'2025-01-04 05:26:19','morph killer methodologies'),
(66153,'2025-02-06 22:35:31','iterate user-centric markets'),
(68278,'2025-04-21 18:47:28','expedite enterprise web-readiness'),
(68278,'2025-04-22 09:36:38','utilize bricks-and-clicks initiatives'),
(70837,'2025-01-20 06:30:57','mesh world-class e-markets'),
(70837,'2025-03-06 04:54:04','cultivate collaborative methodologies'),
(70837,'2025-04-28 15:51:13','monetize B2C infrastructures'),
(73302,'2025-02-15 21:17:37','expedite synergistic channels'),
(73302,'2025-02-20 07:51:56','transition distributed solutions'),
(73302,'2025-03-12 11:08:23','synthesize leading-edge networks'),
(73302,'2025-03-17 14:32:28','visualize cross-platform experiences'),
(73302,'2025-03-22 23:10:45','brand back-end platforms'),
(73302,'2025-05-05 02:59:47','leverage integrated e-services'),
(74594,'2025-01-16 23:31:34','grow efficient paradigms'),
(74594,'2025-02-21 19:02:01','unleash distributed eyeballs'),
(78377,'2025-01-28 00:38:38','generate rich systems'),
(78377,'2025-01-31 12:49:23','harness compelling paradigms'),
(78377,'2025-02-15 12:58:18','architect customized e-services'),
(78377,'2025-04-17 03:41:13','integrate out-of-the-box bandwidth'),
(80472,'2025-04-12 22:02:14','maximize leading-edge infrastructures'),
(80472,'2025-04-24 08:35:35','matrix robust communities'),
(83820,'2025-01-05 12:20:05','enable back-end users'),
(83820,'2025-02-21 11:43:33','synthesize intuitive communities'),
(84521,'2025-04-04 06:57:38','innovate compelling experiences'),
(85141,'2025-01-04 15:09:15','disintermediate integrated bandwidth'),
(85141,'2025-01-13 08:17:07','re-contextualize viral e-services'),
(85141,'2025-02-08 10:43:36','matrix visionary e-commerce'),
(85141,'2025-03-21 19:35:20','exploit revolutionary infrastructures'),
(85141,'2025-05-02 17:56:08','unleash efficient applications'),
(90743,'2025-04-16 01:39:55','integrate real-time models'),
(90743,'2025-04-21 09:07:03','deploy turn-key e-markets'),
(95237,'2025-05-15 04:13:46','integrate out-of-the-box content'),
(96714,'2025-02-22 12:54:21','engage granular methodologies'),
(96714,'2025-04-11 05:20:39','reinvent bricks-and-clicks solutions'),
(97638,'2025-03-01 17:45:23','engage out-of-the-box portals'),
(97638,'2025-03-23 01:33:23','scale intuitive schemas'),
(97638,'2025-04-19 04:30:32','benchmark cutting-edge info-mediaries'),
(97638,'2025-05-02 09:34:16','synergize virtual paradigms'),
(98031,'2025-01-20 15:05:22','engage impactful e-commerce'),
(98031,'2025-04-01 11:47:20','exploit plug-and-play web services'),
(98740,'2025-02-11 13:16:02','iterate impactful methodologies'),
(98740,'2025-03-29 14:04:43','generate virtual systems'),
(98740,'2025-05-13 16:53:56','cultivate transparent infrastructures'),
(99716,'2025-01-13 22:54:05','revolutionize virtual portals'),
(99716,'2025-04-28 09:57:32','brand next-generation applications');
/*!40000 ALTER TABLE `log_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `melakukan_janji`
--

DROP TABLE IF EXISTS `melakukan_janji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `melakukan_janji` (
  `email_pasien` varchar(255) NOT NULL,
  `id_janji_temu` int(11) NOT NULL,
  `email_tenaga_medis` varchar(255) NOT NULL,
  `id_rumah_sakit` int(11) NOT NULL,
  PRIMARY KEY (`email_pasien`,`id_janji_temu`,`email_tenaga_medis`,`id_rumah_sakit`),
  KEY `id_janji_temu` (`id_janji_temu`,`id_rumah_sakit`),
  KEY `melakukan_janji_ibfk_2` (`email_tenaga_medis`),
  CONSTRAINT `melakukan_janji_ibfk_1` FOREIGN KEY (`id_janji_temu`, `id_rumah_sakit`) REFERENCES `janji_temu` (`id_janji_temu`, `id_rumah_sakit`),
  CONSTRAINT `melakukan_janji_ibfk_2` FOREIGN KEY (`email_tenaga_medis`) REFERENCES `tenaga_medis` (`email`),
  CONSTRAINT `melakukan_janji_ibfk_3` FOREIGN KEY (`email_pasien`) REFERENCES `pasien` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `melakukan_janji`
--

LOCK TABLES `melakukan_janji` WRITE;
/*!40000 ALTER TABLE `melakukan_janji` DISABLE KEYS */;
INSERT INTO `melakukan_janji` VALUES
('bagus17@example.org',21,'putraibrani@example.com',267),
('bagus17@example.org',28,'irfanpuspita@example.org',345),
('bagus17@example.org',32,'jonogunawan@example.net',791),
('bagus17@example.org',49,'suciyulianti@example.org',514),
('baktionopalastri@example.net',32,'hestiutami@example.org',791),
('baktionopalastri@example.net',45,'nasab15@example.net',532),
('budiyantoraharja@example.org',14,'padmatamba@example.net',247),
('budiyantoraharja@example.org',20,'sbudiman@example.org',514),
('budiyantoraharja@example.org',28,'muyainah@example.com',345),
('budiyantoraharja@example.org',29,'kgunarto@example.net',267),
('budiyantoraharja@example.org',44,'asmuni43@example.net',576),
('cager91@example.org',2,'sihombingutama@example.org',791),
('cager91@example.org',12,'saptonojayeng@example.com',198),
('capanurdiyanti@example.net',27,'sihombingutama@example.org',428),
('capanurdiyanti@example.net',28,'maulanapatricia@example.com',345),
('digdaya32@example.net',9,'hassanahasmadi@example.com',887),
('dimazpradipta@example.net',12,'keisha01@example.net',198),
('dimazpradipta@example.net',40,'gamanto56@example.com',949),
('dimazpradipta@example.net',46,'najib59@example.com',698),
('dsaragih@example.com',34,'safitrigalak@example.com',60),
('dsaragih@example.com',49,'kusumokezia@example.org',514),
('dsinaga@example.org',36,'kamilasudiati@example.net',247),
('dsinaga@example.org',41,'mursita01@example.net',60),
('fitriani02@example.net',15,'cemplunkadriansyah@example.org',198),
('fitriani02@example.net',24,'jabal43@example.com',514),
('fitriani02@example.net',26,'kasiran02@example.com',698),
('fitriani02@example.net',44,'lidyapangestu@example.com',576),
('ganda49@example.org',44,'harsanto52@example.com',576),
('ganda49@example.org',44,'jwijaya@example.net',576),
('ganda49@example.org',45,'kayunputra@example.net',532),
('ganjaranhasanah@example.com',1,'muyainah@example.com',698),
('ganjaranhasanah@example.com',12,'jnasyidah@example.net',198),
('gunawanrama@example.com',12,'harsanto38@example.net',198),
('gunawanrama@example.com',16,'uuwais@example.org',949),
('gunawanrama@example.com',23,'jonogunawan@example.net',574),
('hadiyolanda@example.com',42,'hafshahpermata@example.org',887),
('hadiyolanda@example.com',48,'utamahardiansyah@example.net',791),
('hadiyolanda@example.com',48,'winarnowage@example.org',791),
('hmayasari@example.net',4,'waluyoeja@example.org',757),
('hmayasari@example.net',6,'elma89@example.net',532),
('hmayasari@example.net',33,'crajata@example.org',576),
('hmayasari@example.net',35,'emangunsong@example.com',576),
('hmayasari@example.net',44,'putraibrani@example.com',576),
('jagaraga55@example.com',31,'prasetyarajasa@example.com',576),
('jagaraga55@example.com',49,'fujiatititi@example.org',514),
('jailanicinthia@example.org',11,'sihombinglantar@example.com',879),
('jmustofa@example.org',4,'ganda51@example.net',757),
('jmustofa@example.org',15,'mrahimah@example.com',198),
('jmustofa@example.org',35,'hafshahpermata@example.org',576),
('jmustofa@example.org',40,'waluyoilyas@example.com',949),
('lantarwaluyo@example.org',21,'palastrigara@example.com',267),
('lantarwaluyo@example.org',23,'kayunputra@example.net',574),
('limar53@example.net',22,'putraibrani@example.com',887),
('limar53@example.net',30,'ida60@example.net',267),
('maheswarabaktianto@example.net',11,'utamahardiansyah@example.net',879),
('maheswarabaktianto@example.net',31,'crajata@example.org',576),
('maheswarabaktianto@example.net',42,'kayunputra@example.net',887),
('maida92@example.com',32,'kamila99@example.net',791),
('natsirjono@example.net',11,'humairagunarto@example.net',879),
('natsirjono@example.net',36,'hestiutami@example.org',247),
('nnasyiah@example.com',4,'cawisonozulaika@example.net',757),
('nnasyiah@example.com',4,'uuwais@example.org',757),
('nnasyiah@example.com',28,'fujiatititi@example.org',345),
('nnasyiah@example.com',29,'hasanbudiman@example.org',267),
('nwidiastuti@example.net',22,'baktiadizulaika@example.org',887),
('nwidiastuti@example.net',26,'cemplunkadriansyah@example.org',698),
('nwidiastuti@example.net',35,'adiarja64@example.org',576),
('nwidiastuti@example.net',37,'maras14@example.net',879),
('omahendra@example.com',21,'crajata@example.org',267),
('omahendra@example.com',37,'cawisonozulaika@example.net',879),
('opudjiastuti@example.com',10,'lyulianti@example.org',345),
('opudjiastuti@example.com',47,'suciyulianti@example.org',576),
('pradanayessi@example.net',30,'emaniswahyudi@example.com',267),
('pradanayessi@example.net',31,'cemplunkadriansyah@example.org',576),
('pradanayessi@example.net',33,'mumpuniutama@example.org',576),
('pradanayessi@example.net',45,'kusumokezia@example.org',532),
('prakasapurwa@example.com',34,'lukitamayasari@example.net',60),
('prasetyabella@example.net',8,'prasetyarajasa@example.com',267),
('prasetyabella@example.net',22,'cawisonozulaika@example.net',887),
('prasetyabella@example.net',28,'harsanto38@example.net',345),
('prasetyabella@example.net',31,'elma89@example.net',576),
('prasetyabella@example.net',40,'karjahalim@example.net',949),
('prasetyabella@example.net',47,'utamahardiansyah@example.net',576),
('rahayu87@example.org',9,'padmatamba@example.net',887),
('rahayu87@example.org',11,'asirwanda75@example.com',879),
('rahayu87@example.org',26,'cemplunkadriansyah@example.org',698),
('rahayu87@example.org',32,'kamila99@example.net',791),
('rahayu87@example.org',46,'elma89@example.net',698),
('rahmanlaksita@example.net',2,'jwijaya@example.net',791),
('rahmanlaksita@example.net',6,'irfanpuspita@example.org',532),
('rahmanlaksita@example.net',10,'zalindra02@example.com',345),
('rahmanlaksita@example.net',19,'ida60@example.net',576),
('rahmanlaksita@example.net',20,'pramadan@example.com',514),
('rahmanlaksita@example.net',30,'padmatamba@example.net',267),
('rahmanlaksita@example.net',33,'permatafitriani@example.com',576),
('rahmanlaksita@example.net',41,'emaniswahyudi@example.com',60),
('samosirrosman@example.com',5,'lidyapangestu@example.com',428),
('samosirrosman@example.com',6,'garamarbun@example.com',532),
('samosirrosman@example.com',23,'prasetyarajasa@example.com',574),
('samosirrosman@example.com',26,'waluyoganjaran@example.com',698),
('samosirrosman@example.com',47,'malikanababan@example.net',576),
('sarah91@example.org',3,'chutapea@example.org',432),
('sarah91@example.org',13,'ganda51@example.net',879),
('sarah91@example.org',18,'hartakanugroho@example.org',267),
('sarah91@example.org',24,'widiastutinadine@example.org',514),
('sarah91@example.org',32,'knasyidah@example.org',791),
('sarah91@example.org',37,'jwijaya@example.net',879),
('sarah91@example.org',40,'palastrigara@example.com',949),
('sarah91@example.org',41,'keisha01@example.net',60),
('sarah91@example.org',45,'maras14@example.net',532),
('sihombingqueen@example.org',15,'kayunputra@example.net',198),
('sihombingqueen@example.org',22,'kamilasudiati@example.net',887),
('sihombingqueen@example.org',29,'nasab15@example.net',267),
('sihombingqueen@example.org',34,'dalima15@example.net',60),
('silviariyanti@example.org',5,'utamahardiansyah@example.net',428),
('silviariyanti@example.org',11,'keisha01@example.net',879),
('silviariyanti@example.org',11,'najib59@example.com',879),
('silviariyanti@example.org',25,'hafshahpermata@example.org',345),
('silviariyanti@example.org',27,'cemplunk36@example.com',428),
('tania31@example.net',22,'jnasyidah@example.net',887),
('tania31@example.net',40,'mrahimah@example.com',949),
('tania31@example.net',45,'kayunputra@example.net',532),
('uaryani@example.com',20,'vanesa24@example.com',514),
('uaryani@example.com',31,'halimahandayani@example.org',576),
('vinopuspita@example.com',5,'twaluyo@example.org',428),
('vinopuspita@example.com',26,'twaluyo@example.org',698),
('vinopuspita@example.com',37,'karen51@example.org',879),
('vinopuspita@example.com',40,'sbudiman@example.org',949),
('vinopuspita@example.com',43,'kayunputra@example.net',698),
('vinopuspita@example.com',44,'baktiadizulaika@example.org',576),
('vinopuspita@example.com',44,'palastrigara@example.com',576),
('wartaprasetya@example.org',6,'dalima15@example.net',532),
('wartaprasetya@example.org',21,'asirwanda75@example.com',267),
('wartaprasetya@example.org',28,'najamdabukke@example.org',345),
('wartaprasetya@example.org',39,'waluyoilyas@example.com',887),
('wastutikemal@example.net',10,'waluyoilyas@example.com',345),
('wastutikemal@example.net',23,'jwijaya@example.net',574),
('wgunarto@example.com',3,'knasyidah@example.org',432),
('wgunarto@example.com',33,'karjahalim@example.net',576),
('xananauwais@example.org',27,'hestiutami@example.org',428),
('xananauwais@example.org',34,'lukitamayasari@example.net',60),
('xananauwais@example.org',35,'kamila99@example.net',576),
('xananauwais@example.org',47,'hestiutami@example.org',576),
('ynainggolan@example.net',25,'waluyoilyas@example.com',345),
('ynainggolan@example.net',28,'prayitna27@example.org',345),
('ynainggolan@example.net',31,'hestiutami@example.org',576),
('ynainggolan@example.net',44,'jabal43@example.com',576),
('yolandakani@example.net',17,'jwijaya@example.net',757),
('yolandakani@example.net',34,'jwijaya@example.net',60),
('yolandakani@example.net',36,'wakiman29@example.org',247);
/*!40000 ALTER TABLE `melakukan_janji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obat`
--

DROP TABLE IF EXISTS `obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `label` enum('analgesik','antibiotik','obat herbal') NOT NULL,
  PRIMARY KEY (`id_obat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obat`
--

LOCK TABLES `obat` WRITE;
/*!40000 ALTER TABLE `obat` DISABLE KEYS */;
INSERT INTO `obat` VALUES
(165,'obat herbal'),
(225,'antibiotik'),
(711,'analgesik'),
(1563,'antibiotik'),
(1955,'analgesik'),
(2266,'analgesik'),
(3447,'antibiotik'),
(3940,'obat herbal'),
(4704,'antibiotik'),
(4920,'antibiotik'),
(4947,'obat herbal'),
(5030,'obat herbal'),
(5342,'antibiotik'),
(5459,'obat herbal'),
(5648,'antibiotik'),
(5893,'antibiotik'),
(6992,'analgesik'),
(8925,'antibiotik'),
(9482,'analgesik'),
(9948,'antibiotik');
/*!40000 ALTER TABLE `obat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasien`
--

DROP TABLE IF EXISTS `pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasien` (
  `email` varchar(255) NOT NULL,
  `firmware_baymin` int(11) NOT NULL,
  UNIQUE KEY `firmware_baymin` (`firmware_baymin`),
  KEY `email` (`email`),
  CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pengguna` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasien`
--

LOCK TABLES `pasien` WRITE;
/*!40000 ALTER TABLE `pasien` DISABLE KEYS */;
INSERT INTO `pasien` VALUES
('bagus17@example.org',21078),
('baktionopalastri@example.net',25445),
('budiyantoraharja@example.org',98740),
('cager91@example.org',18829),
('capanurdiyanti@example.net',98031),
('digdaya32@example.net',26088),
('dimazpradipta@example.net',98647),
('dsaragih@example.com',26732),
('dsinaga@example.org',80472),
('fitriani02@example.net',39595),
('ganda49@example.org',84521),
('ganjaranhasanah@example.com',18177),
('gunawanrama@example.com',12185),
('hadiyolanda@example.com',30805),
('hmayasari@example.net',12660),
('jagaraga55@example.com',18417),
('jailanicinthia@example.org',24369),
('jmustofa@example.org',57475),
('kpurwanti@example.org',61351),
('lantarwaluyo@example.org',18080),
('limar53@example.net',66079),
('limar98@example.org',15056),
('maheswarabaktianto@example.net',30953),
('maida92@example.com',83556),
('natsirjono@example.net',61840),
('nnasyiah@example.com',83820),
('nwidiastuti@example.net',13502),
('omahendra@example.com',70837),
('opudjiastuti@example.com',74113),
('osudiati@example.net',35279),
('pradanayessi@example.net',66153),
('prakasapurwa@example.com',22049),
('prasetyabella@example.net',73302),
('rahayu87@example.org',65659),
('rahmanlaksita@example.net',68278),
('samosirrosman@example.com',65609),
('sarah91@example.org',90743),
('sihombingqueen@example.org',96714),
('silviariyanti@example.org',97638),
('tania31@example.net',99716),
('uaryani@example.com',95237),
('vanesapermata@example.net',16388),
('vanyafujiati@example.org',39319),
('vinopuspita@example.com',11796),
('wartaprasetya@example.org',63871),
('wastutikemal@example.net',74594),
('wgunarto@example.com',58394),
('xananauwais@example.org',29113),
('ynainggolan@example.net',85141),
('yolandakani@example.net',78377);
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemesanan_layanan`
--

DROP TABLE IF EXISTS `pemesanan_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pemesanan_layanan` (
  `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT,
  `id_rumah_sakit` int(11) NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jenis_layanan` varchar(255) NOT NULL,
  `jadwal_pelaksanaan` date NOT NULL,
  `status_pemesanan` enum('belum dibayar','dijadwalkan','sedang berlangsung','selesai','dibatalkan') NOT NULL,
  `total_biaya` int(11) NOT NULL CHECK (`total_biaya` >= 0),
  PRIMARY KEY (`id_pemesanan`,`id_rumah_sakit`,`id_layanan`,`email`),
  KEY `id_rumah_sakit` (`id_rumah_sakit`,`id_layanan`),
  KEY `pemesanan_layanan_ibfk_2` (`email`),
  CONSTRAINT `pemesanan_layanan_ibfk_1` FOREIGN KEY (`id_rumah_sakit`, `id_layanan`) REFERENCES `layanan_medis` (`id_rumah_sakit`, `id_layanan`),
  CONSTRAINT `pemesanan_layanan_ibfk_2` FOREIGN KEY (`email`) REFERENCES `pasien` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan_layanan`
--

LOCK TABLES `pemesanan_layanan` WRITE;
/*!40000 ALTER TABLE `pemesanan_layanan` DISABLE KEYS */;
INSERT INTO `pemesanan_layanan` VALUES
(1,432,1,'sihombingqueen@example.org','konsultasi dokter','2025-06-02','selesai',694767),
(2,576,32,'kpurwanti@example.org','tes radiologi','2025-05-17','selesai',597302),
(3,757,20,'baktionopalastri@example.net','tes laboratorium','2025-06-20','dijadwalkan',729995),
(4,766,27,'lantarwaluyo@example.org','home care','2025-07-12','dijadwalkan',858089),
(5,576,32,'nnasyiah@example.com','home care','2025-06-07','belum dibayar',437508),
(6,532,34,'cager91@example.org','tes laboratorium','2025-05-21','selesai',609015),
(7,60,37,'hadiyolanda@example.com','konsultasi dokter','2025-05-29','sedang berlangsung',430123),
(8,247,13,'silviariyanti@example.org','tes laboratorium','2025-06-21','dibatalkan',331728),
(9,60,37,'wastutikemal@example.net','tes radiologi','2025-06-06','belum dibayar',303369),
(10,247,13,'prasetyabella@example.net','tes radiologi','2025-06-13','dijadwalkan',663548),
(11,306,7,'jagaraga55@example.com','konsultasi dokter','2025-05-23','sedang berlangsung',966428),
(12,887,23,'xananauwais@example.org','konsultasi dokter','2025-07-14','selesai',326404),
(13,198,11,'silviariyanti@example.org','home care','2025-06-15','dibatalkan',970772),
(14,574,3,'xananauwais@example.org','konsultasi dokter','2025-07-03','dijadwalkan',761374),
(15,306,8,'ganjaranhasanah@example.com','tes radiologi','2025-05-25','selesai',460192),
(16,576,32,'samosirrosman@example.com','home care','2025-06-02','belum dibayar',114106),
(17,791,6,'maida92@example.com','tes radiologi','2025-05-26','selesai',74203),
(18,198,12,'vanyafujiati@example.org','konsultasi dokter','2025-05-17','sedang berlangsung',85950),
(19,576,32,'ganda49@example.org','tes laboratorium','2025-06-24','belum dibayar',608229),
(20,949,16,'rahmanlaksita@example.net','home care','2025-06-18','selesai',333290),
(21,532,34,'ganjaranhasanah@example.com','tes radiologi','2025-06-25','belum dibayar',645016),
(22,887,23,'osudiati@example.net','konsultasi dokter','2025-05-22','dibatalkan',359187),
(23,887,49,'vanesapermata@example.net','tes laboratorium','2025-06-21','sedang berlangsung',185540),
(24,576,31,'gunawanrama@example.com','konsultasi dokter','2025-06-08','sedang berlangsung',178286),
(25,718,30,'vanesapermata@example.net','tes laboratorium','2025-05-21','dibatalkan',786821),
(26,60,38,'silviariyanti@example.org','tes laboratorium','2025-06-05','selesai',650282),
(27,514,36,'maida92@example.com','tes laboratorium','2025-07-01','dijadwalkan',754569),
(28,60,37,'rahayu87@example.org','tes laboratorium','2025-05-16','selesai',528076),
(29,718,29,'wartaprasetya@example.org','home care','2025-06-02','sedang berlangsung',863168),
(30,514,35,'omahendra@example.com','tes radiologi','2025-06-13','sedang berlangsung',605701),
(31,757,19,'maheswarabaktianto@example.net','tes laboratorium','2025-05-31','selesai',76802),
(32,432,1,'ganjaranhasanah@example.com','konsultasi dokter','2025-05-16','belum dibayar',813574),
(33,514,35,'yolandakani@example.net','home care','2025-05-31','belum dibayar',633724),
(34,791,5,'limar53@example.net','home care','2025-07-09','selesai',364554),
(35,428,18,'cager91@example.org','home care','2025-06-26','selesai',776163),
(36,698,43,'uaryani@example.com','konsultasi dokter','2025-06-28','dibatalkan',457874),
(37,306,8,'hmayasari@example.net','tes radiologi','2025-05-20','selesai',756810),
(38,791,5,'silviariyanti@example.org','tes radiologi','2025-06-29','dijadwalkan',314034),
(39,532,46,'omahendra@example.com','home care','2025-06-23','belum dibayar',151195),
(40,432,50,'bagus17@example.org','tes radiologi','2025-06-25','belum dibayar',573678),
(41,574,4,'rahayu87@example.org','tes radiologi','2025-06-18','belum dibayar',106844),
(42,791,5,'vinopuspita@example.com','home care','2025-06-21','selesai',813862),
(43,267,25,'digdaya32@example.net','home care','2025-05-28','belum dibayar',839275),
(44,267,25,'tania31@example.net','home care','2025-06-05','belum dibayar',682602),
(45,428,42,'maida92@example.com','tes laboratorium','2025-05-17','dibatalkan',230527),
(46,198,12,'rahayu87@example.org','tes laboratorium','2025-07-14','dibatalkan',302788),
(47,267,26,'baktionopalastri@example.net','tes laboratorium','2025-05-18','dibatalkan',445288),
(48,757,20,'ynainggolan@example.net','konsultasi dokter','2025-05-31','sedang berlangsung',926025),
(49,576,31,'wartaprasetya@example.org','tes laboratorium','2025-07-07','belum dibayar',616726),
(50,574,3,'wartaprasetya@example.org','konsultasi dokter','2025-07-11','belum dibayar',835822),
(51,306,8,'rahmanlaksita@example.net','konsultasi dokter','2025-06-09','sedang berlangsung',670419),
(52,887,23,'limar53@example.net','tes laboratorium','2025-06-26','selesai',657229),
(53,887,24,'limar53@example.net','tes radiologi','2025-06-16','selesai',278412),
(54,514,41,'digdaya32@example.net','tes radiologi','2025-07-13','dijadwalkan',736087),
(55,718,29,'yolandakani@example.net','home care','2025-06-30','dibatalkan',295521),
(56,757,19,'capanurdiyanti@example.net','home care','2025-07-02','sedang berlangsung',687649),
(57,60,38,'jmustofa@example.org','tes laboratorium','2025-05-16','selesai',902651),
(58,949,16,'gunawanrama@example.com','konsultasi dokter','2025-06-20','dibatalkan',548154),
(59,432,2,'maheswarabaktianto@example.net','tes laboratorium','2025-06-26','dijadwalkan',229447),
(60,267,26,'maida92@example.com','tes laboratorium','2025-07-11','sedang berlangsung',909692),
(61,574,4,'dsaragih@example.com','tes laboratorium','2025-06-06','sedang berlangsung',536034),
(62,887,23,'wgunarto@example.com','home care','2025-07-08','dijadwalkan',449173),
(63,766,28,'rahayu87@example.org','tes laboratorium','2025-07-01','sedang berlangsung',214809),
(64,247,13,'uaryani@example.com','tes laboratorium','2025-06-08','belum dibayar',269044),
(65,791,5,'budiyantoraharja@example.org','tes laboratorium','2025-06-14','sedang berlangsung',147285),
(66,428,18,'pradanayessi@example.net','home care','2025-06-21','sedang berlangsung',511137),
(67,718,29,'wastutikemal@example.net','tes radiologi','2025-05-30','sedang berlangsung',591267),
(68,267,25,'prakasapurwa@example.com','konsultasi dokter','2025-07-14','selesai',459858),
(69,791,6,'dsinaga@example.org','konsultasi dokter','2025-05-17','selesai',116879),
(70,718,30,'natsirjono@example.net','tes radiologi','2025-07-14','dibatalkan',197284),
(71,432,50,'cager91@example.org','konsultasi dokter','2025-06-01','selesai',195290),
(72,887,49,'jmustofa@example.org','konsultasi dokter','2025-05-16','sedang berlangsung',568872),
(73,345,40,'silviariyanti@example.org','tes laboratorium','2025-06-09','sedang berlangsung',326152),
(74,718,45,'rahayu87@example.org','home care','2025-06-07','selesai',503621),
(75,791,5,'jailanicinthia@example.org','konsultasi dokter','2025-07-11','dibatalkan',439404),
(76,879,21,'limar98@example.org','home care','2025-05-31','selesai',963486),
(77,432,2,'uaryani@example.com','home care','2025-05-17','sedang berlangsung',474203),
(78,949,15,'capanurdiyanti@example.net','tes radiologi','2025-06-28','dibatalkan',536074),
(79,791,6,'wartaprasetya@example.org','tes radiologi','2025-07-08','belum dibayar',327733),
(80,718,29,'wartaprasetya@example.org','konsultasi dokter','2025-06-14','dibatalkan',194570),
(81,887,23,'prakasapurwa@example.com','tes radiologi','2025-06-05','belum dibayar',383222),
(82,757,20,'jagaraga55@example.com','konsultasi dokter','2025-07-08','dibatalkan',165975),
(83,879,22,'sihombingqueen@example.org','tes laboratorium','2025-07-03','sedang berlangsung',902386),
(84,514,41,'fitriani02@example.net','home care','2025-05-24','dibatalkan',923780),
(85,698,9,'sarah91@example.org','home care','2025-06-02','dibatalkan',719602),
(86,766,27,'jagaraga55@example.com','home care','2025-06-05','sedang berlangsung',816744),
(87,698,9,'hmayasari@example.net','tes laboratorium','2025-05-18','dibatalkan',852415),
(88,698,9,'sarah91@example.org','tes radiologi','2025-05-25','dijadwalkan',310994),
(89,574,4,'lantarwaluyo@example.org','tes laboratorium','2025-07-12','dijadwalkan',263236),
(90,879,22,'gunawanrama@example.com','konsultasi dokter','2025-06-27','dijadwalkan',808761),
(91,887,49,'ganjaranhasanah@example.com','tes radiologi','2025-07-14','selesai',413555),
(92,576,32,'sihombingqueen@example.org','tes radiologi','2025-07-08','dijadwalkan',388464),
(93,267,26,'samosirrosman@example.com','konsultasi dokter','2025-07-07','belum dibayar',799789),
(94,345,40,'rahmanlaksita@example.net','tes laboratorium','2025-07-14','dijadwalkan',160194),
(95,198,12,'hadiyolanda@example.com','tes radiologi','2025-06-10','dibatalkan',773042),
(96,949,15,'vinopuspita@example.com','tes radiologi','2025-06-05','belum dibayar',981177),
(97,949,44,'digdaya32@example.net','konsultasi dokter','2025-06-14','selesai',687509),
(98,791,5,'xananauwais@example.org','home care','2025-06-02','belum dibayar',995280),
(99,428,17,'hmayasari@example.net','home care','2025-06-23','sedang berlangsung',141158),
(100,267,25,'sarah91@example.org','tes laboratorium','2025-07-12','dijadwalkan',361915);
/*!40000 ALTER TABLE `pemesanan_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemesanan_obat`
--

DROP TABLE IF EXISTS `pemesanan_obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pemesanan_obat` (
  `email` varchar(255) NOT NULL,
  `waktu_pemesanan` datetime NOT NULL,
  `alamat_pengiriman` varchar(255) NOT NULL,
  `status_pemesanan` enum('belum dibayar','dijadwalkan','sedang berlangsung','selesai','dibatalkan') NOT NULL,
  `total_biaya` int(11) NOT NULL CHECK (`total_biaya` >= 0),
  PRIMARY KEY (`email`,`waktu_pemesanan`,`alamat_pengiriman`),
  CONSTRAINT `pemesanan_obat_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pasien` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan_obat`
--

LOCK TABLES `pemesanan_obat` WRITE;
/*!40000 ALTER TABLE `pemesanan_obat` DISABLE KEYS */;
INSERT INTO `pemesanan_obat` VALUES
('bagus17@example.org','2025-05-06 06:50:07','Gg. Dipatiukur No. 117, Pariaman, Jawa Timur 06545','dijadwalkan',371725),
('budiyantoraharja@example.org','2025-05-03 20:46:43','Jl. Sadang Serang No. 337, Tanjungpinang, SS 07538','selesai',296032),
('cager91@example.org','2025-05-10 18:40:04','Gang Rajawali Barat No. 943, Probolinggo, KT 70552','selesai',56579),
('capanurdiyanti@example.net','2025-05-09 04:32:56','Gang Pacuan Kuda No. 5, Purwokerto, JB 83652','dijadwalkan',72395),
('capanurdiyanti@example.net','2025-05-15 16:10:20','Jalan Ahmad Yani No. 093, Pasuruan, KU 81804','selesai',196453),
('dimazpradipta@example.net','2025-05-13 23:25:04','Jalan Ciwastra No. 630, Dumai, SB 75140','selesai',182730),
('fitriani02@example.net','2025-05-10 18:15:58','Gang Veteran No. 30, Kotamobagu, BT 17126','belum dibayar',485126),
('ganjaranhasanah@example.com','2025-05-06 03:02:02','Gg. Jend. Sudirman No. 767, Meulaboh, Sulawesi Tenggara 88595','sedang berlangsung',146358),
('hadiyolanda@example.com','2025-05-08 09:14:15','Gg. Antapani Lama No. 97, Mataram, DKI Jakarta 47872','selesai',427025),
('hadiyolanda@example.com','2025-05-12 12:45:00','Jalan Rungkut Industri No. 5, Palangkaraya, SB 94832','dibatalkan',225438),
('hmayasari@example.net','2025-05-13 13:20:37','Jl. Ronggowarsito No. 4, Jayapura, KT 13629','selesai',341998),
('hmayasari@example.net','2025-05-14 08:23:20','Gg. Yos Sudarso No. 301, Solok, Sulawesi Tengah 21368','dijadwalkan',86320),
('jagaraga55@example.com','2025-05-03 18:20:03','Jalan BKR No. 941, Langsa, Bali 15957','belum dibayar',62091),
('jagaraga55@example.com','2025-05-08 05:53:08','Gang Jakarta No. 28, Pangkalpinang, SB 39099','selesai',377058),
('jagaraga55@example.com','2025-05-12 22:19:28','Jalan Veteran No. 733, Semarang, Sumatera Selatan 30842','dijadwalkan',343400),
('jailanicinthia@example.org','2025-05-08 21:47:37','Jalan Pasirkoja No. 0, Tanjungpinang, AC 22722','dijadwalkan',210550),
('jailanicinthia@example.org','2025-05-11 06:15:39','Jl. Ciumbuleuit No. 698, Pagaralam, Papua Barat 61736','selesai',332983),
('jmustofa@example.org','2025-05-04 11:48:21','Jl. Peta No. 7, Tangerang, Papua Barat 47380','sedang berlangsung',372017),
('jmustofa@example.org','2025-05-05 18:19:29','Gg. Moch. Ramdan No. 07, Solok, JK 28339','belum dibayar',296891),
('lantarwaluyo@example.org','2025-05-03 12:57:04','Jalan Moch. Toha No. 1, Salatiga, DKI Jakarta 74954','dibatalkan',149633),
('limar53@example.net','2025-05-02 15:00:27','Gg. Moch. Ramdan No. 752, Bukittinggi, JK 75268','belum dibayar',276622),
('limar53@example.net','2025-05-10 07:21:58','Gang Monginsidi No. 7, Palembang, KI 27864','selesai',24848),
('maheswarabaktianto@example.net','2025-05-02 00:19:27','Jalan KH Amin Jasuta No. 55, Tasikmalaya, Jawa Barat 32819','sedang berlangsung',220281),
('maheswarabaktianto@example.net','2025-05-04 04:00:28','Gang Kendalsari No. 82, Dumai, JA 14488','dibatalkan',77189),
('maheswarabaktianto@example.net','2025-05-13 00:27:42','Jl. Otto Iskandardinata No. 0, Meulaboh, YO 97841','dibatalkan',267217),
('maida92@example.com','2025-05-12 14:50:16','Jl. Soekarno Hatta No. 739, Singkawang, SG 36555','sedang berlangsung',352672),
('natsirjono@example.net','2025-05-12 14:57:43','Gang Kutai No. 9, Kupang, DKI Jakarta 04284','selesai',497082),
('nnasyiah@example.com','2025-05-08 06:44:26','Jl. Ronggowarsito No. 11, Padang, Nusa Tenggara Timur 21975','dijadwalkan',431868),
('nwidiastuti@example.net','2025-05-11 02:56:13','Gg. Suniaraja No. 88, Kotamobagu, YO 81660','selesai',163882),
('omahendra@example.com','2025-05-05 21:20:07','Jalan Jend. A. Yani No. 79, Sorong, Banten 58846','dibatalkan',83397),
('opudjiastuti@example.com','2025-05-05 09:31:23','Jalan Rungkut Industri No. 686, Sorong, Papua 54699','dijadwalkan',61012),
('opudjiastuti@example.com','2025-05-12 20:13:33','Jl. Pasirkoja No. 730, Meulaboh, JT 82214','dijadwalkan',202351),
('pradanayessi@example.net','2025-05-05 17:48:10','Jalan Pasirkoja No. 55, Jayapura, BT 85185','belum dibayar',434108),
('prakasapurwa@example.com','2025-05-12 02:26:18','Jl. Kebonjati No. 75, Singkawang, Sumatera Selatan 48160','selesai',124696),
('rahmanlaksita@example.net','2025-05-06 15:47:07','Jl. Kapten Muslihat No. 947, Gorontalo, Kepulauan Riau 59357','dibatalkan',66799),
('uaryani@example.com','2025-05-12 14:20:34','Jalan Monginsidi No. 81, Kotamobagu, NB 57576','selesai',302042),
('vanesapermata@example.net','2025-05-05 02:52:34','Gang Rawamangun No. 925, Cilegon, MA 09538','sedang berlangsung',409134),
('vinopuspita@example.com','2025-05-03 00:19:10','Gg. Rungkut Industri No. 56, Tanjungbalai, SU 85649','belum dibayar',116576),
('vinopuspita@example.com','2025-05-06 20:04:22','Gg. H.J Maemunah No. 39, Binjai, Papua 71340','dijadwalkan',139016),
('vinopuspita@example.com','2025-05-14 20:45:21','Gang Otto Iskandardinata No. 683, Banda Aceh, KU 83404','dibatalkan',327399),
('vinopuspita@example.com','2025-05-15 17:14:08','Jl. Peta No. 5, Palangkaraya, SU 34554','dibatalkan',57812),
('wartaprasetya@example.org','2025-05-05 11:51:01','Jl. Cempaka No. 727, Metro, Sumatera Barat 55676','sedang berlangsung',447714),
('wastutikemal@example.net','2025-05-01 08:49:54','Jalan Kebonjati No. 82, Binjai, KB 13485','selesai',274144),
('wgunarto@example.com','2025-05-07 01:25:06','Jalan Suniaraja No. 9, Tarakan, DKI Jakarta 74205','dijadwalkan',118233),
('xananauwais@example.org','2025-05-08 02:00:27','Jl. Ahmad Yani No. 10, Ternate, Aceh 33050','selesai',350626),
('ynainggolan@example.net','2025-05-04 15:09:23','Gg. Ahmad Dahlan No. 286, Pariaman, Sumatera Utara 46138','sedang berlangsung',408497),
('ynainggolan@example.net','2025-05-10 14:53:52','Gg. Astana Anyar No. 2, Sukabumi, JK 28276','sedang berlangsung',160358),
('ynainggolan@example.net','2025-05-15 02:59:59','Gang Setiabudhi No. 47, Padangpanjang, Jawa Timur 32664','dijadwalkan',219870),
('ynainggolan@example.net','2025-05-15 11:59:02','Jalan Pasirkoja No. 4, Makassar, PA 93105','dibatalkan',429904),
('yolandakani@example.net','2025-05-10 08:48:22','Jl. Rungkut Industri No. 958, Singkawang, LA 21149','selesai',308459);
/*!40000 ALTER TABLE `pemesanan_obat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemesanan_obat_obat`
--

DROP TABLE IF EXISTS `pemesanan_obat_obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pemesanan_obat_obat` (
  `email` varchar(255) NOT NULL,
  `waktu_pemesanan` datetime NOT NULL,
  `alamat_pengiriman` varchar(255) NOT NULL,
  `id_obat` int(11) NOT NULL,
  PRIMARY KEY (`email`,`waktu_pemesanan`,`alamat_pengiriman`,`id_obat`),
  KEY `id_obat` (`id_obat`),
  CONSTRAINT `pemesanan_obat_obat_ibfk_1` FOREIGN KEY (`email`, `waktu_pemesanan`, `alamat_pengiriman`) REFERENCES `pemesanan_obat` (`email`, `waktu_pemesanan`, `alamat_pengiriman`),
  CONSTRAINT `pemesanan_obat_obat_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemesanan_obat_obat`
--

LOCK TABLES `pemesanan_obat_obat` WRITE;
/*!40000 ALTER TABLE `pemesanan_obat_obat` DISABLE KEYS */;
INSERT INTO `pemesanan_obat_obat` VALUES
('bagus17@example.org','2025-05-06 06:50:07','Gg. Dipatiukur No. 117, Pariaman, Jawa Timur 06545',3940),
('bagus17@example.org','2025-05-06 06:50:07','Gg. Dipatiukur No. 117, Pariaman, Jawa Timur 06545',9482),
('budiyantoraharja@example.org','2025-05-03 20:46:43','Jl. Sadang Serang No. 337, Tanjungpinang, SS 07538',5030),
('budiyantoraharja@example.org','2025-05-03 20:46:43','Jl. Sadang Serang No. 337, Tanjungpinang, SS 07538',5893),
('cager91@example.org','2025-05-10 18:40:04','Gang Rajawali Barat No. 943, Probolinggo, KT 70552',165),
('cager91@example.org','2025-05-10 18:40:04','Gang Rajawali Barat No. 943, Probolinggo, KT 70552',9948),
('capanurdiyanti@example.net','2025-05-09 04:32:56','Gang Pacuan Kuda No. 5, Purwokerto, JB 83652',4920),
('capanurdiyanti@example.net','2025-05-09 04:32:56','Gang Pacuan Kuda No. 5, Purwokerto, JB 83652',5893),
('capanurdiyanti@example.net','2025-05-15 16:10:20','Jalan Ahmad Yani No. 093, Pasuruan, KU 81804',5030),
('capanurdiyanti@example.net','2025-05-15 16:10:20','Jalan Ahmad Yani No. 093, Pasuruan, KU 81804',9482),
('dimazpradipta@example.net','2025-05-13 23:25:04','Jalan Ciwastra No. 630, Dumai, SB 75140',1563),
('dimazpradipta@example.net','2025-05-13 23:25:04','Jalan Ciwastra No. 630, Dumai, SB 75140',5893),
('fitriani02@example.net','2025-05-10 18:15:58','Gang Veteran No. 30, Kotamobagu, BT 17126',3447),
('fitriani02@example.net','2025-05-10 18:15:58','Gang Veteran No. 30, Kotamobagu, BT 17126',8925),
('ganjaranhasanah@example.com','2025-05-06 03:02:02','Gg. Jend. Sudirman No. 767, Meulaboh, Sulawesi Tenggara 88595',3447),
('ganjaranhasanah@example.com','2025-05-06 03:02:02','Gg. Jend. Sudirman No. 767, Meulaboh, Sulawesi Tenggara 88595',4947),
('hadiyolanda@example.com','2025-05-08 09:14:15','Gg. Antapani Lama No. 97, Mataram, DKI Jakarta 47872',5459),
('hadiyolanda@example.com','2025-05-08 09:14:15','Gg. Antapani Lama No. 97, Mataram, DKI Jakarta 47872',8925),
('hadiyolanda@example.com','2025-05-12 12:45:00','Jalan Rungkut Industri No. 5, Palangkaraya, SB 94832',3447),
('hadiyolanda@example.com','2025-05-12 12:45:00','Jalan Rungkut Industri No. 5, Palangkaraya, SB 94832',4920),
('hmayasari@example.net','2025-05-13 13:20:37','Jl. Ronggowarsito No. 4, Jayapura, KT 13629',5342),
('hmayasari@example.net','2025-05-13 13:20:37','Jl. Ronggowarsito No. 4, Jayapura, KT 13629',8925),
('hmayasari@example.net','2025-05-14 08:23:20','Gg. Yos Sudarso No. 301, Solok, Sulawesi Tengah 21368',5459),
('hmayasari@example.net','2025-05-14 08:23:20','Gg. Yos Sudarso No. 301, Solok, Sulawesi Tengah 21368',6992),
('jagaraga55@example.com','2025-05-03 18:20:03','Jalan BKR No. 941, Langsa, Bali 15957',3447),
('jagaraga55@example.com','2025-05-03 18:20:03','Jalan BKR No. 941, Langsa, Bali 15957',5342),
('jagaraga55@example.com','2025-05-08 05:53:08','Gang Jakarta No. 28, Pangkalpinang, SB 39099',5342),
('jagaraga55@example.com','2025-05-08 05:53:08','Gang Jakarta No. 28, Pangkalpinang, SB 39099',8925),
('jagaraga55@example.com','2025-05-12 22:19:28','Jalan Veteran No. 733, Semarang, Sumatera Selatan 30842',5030),
('jagaraga55@example.com','2025-05-12 22:19:28','Jalan Veteran No. 733, Semarang, Sumatera Selatan 30842',5648),
('jailanicinthia@example.org','2025-05-08 21:47:37','Jalan Pasirkoja No. 0, Tanjungpinang, AC 22722',4920),
('jailanicinthia@example.org','2025-05-08 21:47:37','Jalan Pasirkoja No. 0, Tanjungpinang, AC 22722',5893),
('jailanicinthia@example.org','2025-05-11 06:15:39','Jl. Ciumbuleuit No. 698, Pagaralam, Papua Barat 61736',1563),
('jailanicinthia@example.org','2025-05-11 06:15:39','Jl. Ciumbuleuit No. 698, Pagaralam, Papua Barat 61736',5459),
('jmustofa@example.org','2025-05-04 11:48:21','Jl. Peta No. 7, Tangerang, Papua Barat 47380',4704),
('jmustofa@example.org','2025-05-04 11:48:21','Jl. Peta No. 7, Tangerang, Papua Barat 47380',4947),
('jmustofa@example.org','2025-05-05 18:19:29','Gg. Moch. Ramdan No. 07, Solok, JK 28339',4704),
('jmustofa@example.org','2025-05-05 18:19:29','Gg. Moch. Ramdan No. 07, Solok, JK 28339',6992),
('lantarwaluyo@example.org','2025-05-03 12:57:04','Jalan Moch. Toha No. 1, Salatiga, DKI Jakarta 74954',3447),
('lantarwaluyo@example.org','2025-05-03 12:57:04','Jalan Moch. Toha No. 1, Salatiga, DKI Jakarta 74954',9482),
('limar53@example.net','2025-05-02 15:00:27','Gg. Moch. Ramdan No. 752, Bukittinggi, JK 75268',5030),
('limar53@example.net','2025-05-02 15:00:27','Gg. Moch. Ramdan No. 752, Bukittinggi, JK 75268',6992),
('limar53@example.net','2025-05-10 07:21:58','Gang Monginsidi No. 7, Palembang, KI 27864',4704),
('limar53@example.net','2025-05-10 07:21:58','Gang Monginsidi No. 7, Palembang, KI 27864',5648),
('maheswarabaktianto@example.net','2025-05-02 00:19:27','Jalan KH Amin Jasuta No. 55, Tasikmalaya, Jawa Barat 32819',4947),
('maheswarabaktianto@example.net','2025-05-02 00:19:27','Jalan KH Amin Jasuta No. 55, Tasikmalaya, Jawa Barat 32819',9482),
('maheswarabaktianto@example.net','2025-05-04 04:00:28','Gang Kendalsari No. 82, Dumai, JA 14488',165),
('maheswarabaktianto@example.net','2025-05-04 04:00:28','Gang Kendalsari No. 82, Dumai, JA 14488',3447),
('maheswarabaktianto@example.net','2025-05-13 00:27:42','Jl. Otto Iskandardinata No. 0, Meulaboh, YO 97841',3940),
('maheswarabaktianto@example.net','2025-05-13 00:27:42','Jl. Otto Iskandardinata No. 0, Meulaboh, YO 97841',8925),
('maida92@example.com','2025-05-12 14:50:16','Jl. Soekarno Hatta No. 739, Singkawang, SG 36555',6992),
('maida92@example.com','2025-05-12 14:50:16','Jl. Soekarno Hatta No. 739, Singkawang, SG 36555',9948),
('natsirjono@example.net','2025-05-12 14:57:43','Gang Kutai No. 9, Kupang, DKI Jakarta 04284',5648),
('natsirjono@example.net','2025-05-12 14:57:43','Gang Kutai No. 9, Kupang, DKI Jakarta 04284',9482),
('nnasyiah@example.com','2025-05-08 06:44:26','Jl. Ronggowarsito No. 11, Padang, Nusa Tenggara Timur 21975',2266),
('nnasyiah@example.com','2025-05-08 06:44:26','Jl. Ronggowarsito No. 11, Padang, Nusa Tenggara Timur 21975',5342),
('nwidiastuti@example.net','2025-05-11 02:56:13','Gg. Suniaraja No. 88, Kotamobagu, YO 81660',165),
('nwidiastuti@example.net','2025-05-11 02:56:13','Gg. Suniaraja No. 88, Kotamobagu, YO 81660',225),
('omahendra@example.com','2025-05-05 21:20:07','Jalan Jend. A. Yani No. 79, Sorong, Banten 58846',5030),
('omahendra@example.com','2025-05-05 21:20:07','Jalan Jend. A. Yani No. 79, Sorong, Banten 58846',5648),
('opudjiastuti@example.com','2025-05-05 09:31:23','Jalan Rungkut Industri No. 686, Sorong, Papua 54699',711),
('opudjiastuti@example.com','2025-05-05 09:31:23','Jalan Rungkut Industri No. 686, Sorong, Papua 54699',3940),
('opudjiastuti@example.com','2025-05-12 20:13:33','Jl. Pasirkoja No. 730, Meulaboh, JT 82214',711),
('opudjiastuti@example.com','2025-05-12 20:13:33','Jl. Pasirkoja No. 730, Meulaboh, JT 82214',3447),
('pradanayessi@example.net','2025-05-05 17:48:10','Jalan Pasirkoja No. 55, Jayapura, BT 85185',711),
('pradanayessi@example.net','2025-05-05 17:48:10','Jalan Pasirkoja No. 55, Jayapura, BT 85185',5030),
('prakasapurwa@example.com','2025-05-12 02:26:18','Jl. Kebonjati No. 75, Singkawang, Sumatera Selatan 48160',5030),
('prakasapurwa@example.com','2025-05-12 02:26:18','Jl. Kebonjati No. 75, Singkawang, Sumatera Selatan 48160',9948),
('rahmanlaksita@example.net','2025-05-06 15:47:07','Jl. Kapten Muslihat No. 947, Gorontalo, Kepulauan Riau 59357',225),
('rahmanlaksita@example.net','2025-05-06 15:47:07','Jl. Kapten Muslihat No. 947, Gorontalo, Kepulauan Riau 59357',2266),
('uaryani@example.com','2025-05-12 14:20:34','Jalan Monginsidi No. 81, Kotamobagu, NB 57576',4704),
('uaryani@example.com','2025-05-12 14:20:34','Jalan Monginsidi No. 81, Kotamobagu, NB 57576',6992),
('vanesapermata@example.net','2025-05-05 02:52:34','Gang Rawamangun No. 925, Cilegon, MA 09538',2266),
('vanesapermata@example.net','2025-05-05 02:52:34','Gang Rawamangun No. 925, Cilegon, MA 09538',5342),
('vinopuspita@example.com','2025-05-03 00:19:10','Gg. Rungkut Industri No. 56, Tanjungbalai, SU 85649',1955),
('vinopuspita@example.com','2025-05-03 00:19:10','Gg. Rungkut Industri No. 56, Tanjungbalai, SU 85649',5648),
('vinopuspita@example.com','2025-05-06 20:04:22','Gg. H.J Maemunah No. 39, Binjai, Papua 71340',4947),
('vinopuspita@example.com','2025-05-06 20:04:22','Gg. H.J Maemunah No. 39, Binjai, Papua 71340',9482),
('vinopuspita@example.com','2025-05-14 20:45:21','Gang Otto Iskandardinata No. 683, Banda Aceh, KU 83404',4704),
('vinopuspita@example.com','2025-05-14 20:45:21','Gang Otto Iskandardinata No. 683, Banda Aceh, KU 83404',4947),
('vinopuspita@example.com','2025-05-15 17:14:08','Jl. Peta No. 5, Palangkaraya, SU 34554',3447),
('vinopuspita@example.com','2025-05-15 17:14:08','Jl. Peta No. 5, Palangkaraya, SU 34554',8925),
('wartaprasetya@example.org','2025-05-05 11:51:01','Jl. Cempaka No. 727, Metro, Sumatera Barat 55676',5030),
('wartaprasetya@example.org','2025-05-05 11:51:01','Jl. Cempaka No. 727, Metro, Sumatera Barat 55676',9482),
('wastutikemal@example.net','2025-05-01 08:49:54','Jalan Kebonjati No. 82, Binjai, KB 13485',1563),
('wastutikemal@example.net','2025-05-01 08:49:54','Jalan Kebonjati No. 82, Binjai, KB 13485',3447),
('wgunarto@example.com','2025-05-07 01:25:06','Jalan Suniaraja No. 9, Tarakan, DKI Jakarta 74205',1955),
('wgunarto@example.com','2025-05-07 01:25:06','Jalan Suniaraja No. 9, Tarakan, DKI Jakarta 74205',5342),
('xananauwais@example.org','2025-05-08 02:00:27','Jl. Ahmad Yani No. 10, Ternate, Aceh 33050',1955),
('xananauwais@example.org','2025-05-08 02:00:27','Jl. Ahmad Yani No. 10, Ternate, Aceh 33050',4704),
('ynainggolan@example.net','2025-05-04 15:09:23','Gg. Ahmad Dahlan No. 286, Pariaman, Sumatera Utara 46138',3447),
('ynainggolan@example.net','2025-05-04 15:09:23','Gg. Ahmad Dahlan No. 286, Pariaman, Sumatera Utara 46138',5893),
('ynainggolan@example.net','2025-05-10 14:53:52','Gg. Astana Anyar No. 2, Sukabumi, JK 28276',1955),
('ynainggolan@example.net','2025-05-10 14:53:52','Gg. Astana Anyar No. 2, Sukabumi, JK 28276',5648),
('ynainggolan@example.net','2025-05-15 02:59:59','Gang Setiabudhi No. 47, Padangpanjang, Jawa Timur 32664',3447),
('ynainggolan@example.net','2025-05-15 02:59:59','Gang Setiabudhi No. 47, Padangpanjang, Jawa Timur 32664',5648),
('ynainggolan@example.net','2025-05-15 11:59:02','Jalan Pasirkoja No. 4, Makassar, PA 93105',1955),
('ynainggolan@example.net','2025-05-15 11:59:02','Jalan Pasirkoja No. 4, Makassar, PA 93105',4704),
('yolandakani@example.net','2025-05-10 08:48:22','Jl. Rungkut Industri No. 958, Singkawang, LA 21149',1563),
('yolandakani@example.net','2025-05-10 08:48:22','Jl. Rungkut Industri No. 958, Singkawang, LA 21149',9948);
/*!40000 ALTER TABLE `pemesanan_obat_obat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengeluaran_resep`
--

DROP TABLE IF EXISTS `pengeluaran_resep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengeluaran_resep` (
  `id_janji_temu` int(11) NOT NULL,
  `id_rumah_sakit` int(11) NOT NULL,
  `id_resep` int(11) NOT NULL,
  PRIMARY KEY (`id_janji_temu`,`id_rumah_sakit`,`id_resep`),
  UNIQUE KEY `id_resep` (`id_resep`),
  CONSTRAINT `pengeluaran_resep_ibfk_1` FOREIGN KEY (`id_janji_temu`, `id_rumah_sakit`) REFERENCES `janji_temu` (`id_janji_temu`, `id_rumah_sakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengeluaran_resep`
--

LOCK TABLES `pengeluaran_resep` WRITE;
/*!40000 ALTER TABLE `pengeluaran_resep` DISABLE KEYS */;
INSERT INTO `pengeluaran_resep` VALUES
(2,791,27201),
(3,432,19700),
(3,432,27563),
(3,432,45958),
(4,757,703),
(6,532,10972),
(6,532,15281),
(6,532,48482),
(7,267,3230),
(8,267,19313),
(8,267,21780),
(10,345,42398),
(11,879,8837),
(11,879,20553),
(13,879,30997),
(15,198,24825),
(15,198,33385),
(16,949,3042),
(16,949,46741),
(19,576,38491),
(20,514,41544),
(21,267,23058),
(22,887,16999),
(24,514,20725),
(26,698,23445),
(28,345,15489),
(28,345,18579),
(28,345,27906),
(30,267,33443),
(31,576,8914),
(31,576,15056),
(31,576,30025),
(36,247,13241),
(36,247,34072),
(38,198,6706),
(38,198,48117),
(39,887,15428),
(39,887,17297),
(40,949,42134),
(42,887,6346),
(42,887,32307),
(42,887,41182),
(44,576,46756),
(45,532,10582),
(45,532,28277),
(45,532,44589),
(47,576,30046),
(47,576,34507),
(49,514,16191),
(49,514,38414);
/*!40000 ALTER TABLE `pengeluaran_resep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengguna` (
  `email` varchar(255) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  PRIMARY KEY (`email`),
  CONSTRAINT `chk_email` CHECK (`email` like '%_@__%.__%')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengguna`
--

LOCK TABLES `pengguna` WRITE;
/*!40000 ALTER TABLE `pengguna` DISABLE KEYS */;
INSERT INTO `pengguna` VALUES
('adiarja64@example.org','ETcjzwiNI@0D','Dadap Mardhiyah','1998-04-13'),
('akarsanairawan@example.org','b6WFvuI1)eF5','Dr. Ani Mahendra, M.TI.','1969-06-23'),
('asirwanda75@example.com','p0Pfuv89@l_K','Cut Hamima Mangunsong','1979-03-02'),
('asmuni43@example.net','536LadJs)BDF','Ismail Prasetyo','1957-06-01'),
('bagus17@example.org','Y&3eTVO#KlB@','Yulia Haryanto','1964-09-03'),
('baktiadizulaika@example.org','NHv^Yw62+%K8','Yono Wijayanti','1964-11-15'),
('baktionopalastri@example.net','MPg_Wkws2F2S','Ir. Jarwi Haryanto, S.Gz','1965-01-03'),
('balapatimahendra@example.net','!2QSYGws(Ik3','Uchita Santoso','2001-06-01'),
('budiyantoraharja@example.org','TY&hyCCi0l2E','Safina Kuswandari','1992-08-10'),
('cager91@example.org','^!ONYmt#Y5SU','Ajeng Padmasari','1995-07-23'),
('capanurdiyanti@example.net','wK7_vZl$**AE','Hana Puspasari','1967-07-22'),
('cawisonozulaika@example.net','@^B7YrL2x!Yo','Hj. Widya Yuniar, S.Ked','1955-03-09'),
('cemplunk36@example.com','8aDc(fdG#A4T','Abyasa Andriani, S.Gz','2006-08-15'),
('cemplunkadriansyah@example.org','xC+COAMs&#3w','Tantri Ardianto','1975-12-27'),
('chutapea@example.org','w(2!posiDG4d','Tgk. Hafshah Dongoran, S.Gz','1987-04-02'),
('crajata@example.org','^6Cn^&UGuUK$','Dr. Endra Mahendra, S.I.Kom','1985-03-16'),
('dalima15@example.net','g8Q70fnr)wK5','Ir. Jinawi Haryanti','1956-04-24'),
('digdaya32@example.net','7sfHU1)p_x5Q','Dr. Hana Laksita, S.IP','1978-12-31'),
('dimazpradipta@example.net','pq+P2)Lz4+F0','Wardaya Puspasari','1973-09-18'),
('dsaragih@example.com','h&2t5LePefB$','Maras Sihotang','1979-12-19'),
('dsinaga@example.org','Z_LWs6ci2!X#','R.A. Ika Gunarto, S.Sos','1993-07-28'),
('elma89@example.net','q+98wx7w&QXC','Cut Sari Susanti, S.H.','1973-05-01'),
('emangunsong@example.com','dpI9p(su_eBD','Ir. Zulaikha Siregar, M.Farm','1984-04-28'),
('emaniswahyudi@example.com','$iHx6QEJ&35%','Paulin Prabowo','1974-06-01'),
('endra26@example.com','@3jGPsg@q^kn','Rachel Rahayu','1970-02-16'),
('fitriani02@example.net','C)E%W!6uI8Ru','Sutan Kardi Dabukke','1992-05-01'),
('fsiregar@example.org','O6y6Iux(M_I3','R. Padmi Yulianti','1986-07-19'),
('fujiatititi@example.org','RP4TPOsi*w)5','Melinda Latupono','1958-03-06'),
('gamanto56@example.com','lr+Nwe&2*96J','Pardi Irawan, S.Pd','2006-07-14'),
('ganda49@example.org','blJnSA61Nj3$','Ir. Damar Palastri','1992-01-21'),
('ganda51@example.net','wK_N%x&4Q@9K','KH. Pangeran Wasita, M.Ak','1956-07-18'),
('ganjaranhasanah@example.com','hbRLIcqc^9t4','Hj. Gawati Wibisono, S.T.','1974-04-04'),
('garamarbun@example.com','0YX8aEj7#p6C','Drs. Fathonah Uyainah, S.IP','1997-01-14'),
('gunawanrama@example.com','Se77C*iRu&9+','dr. Gandi Lailasari','1995-02-21'),
('hadiyolanda@example.com','^4tWO_zzRQ5X','Cawuk Siregar','1987-10-31'),
('hafshahpermata@example.org','@S!fvGqyB6SO','Kani Kuswandari','1997-08-11'),
('halimahandayani@example.org','%ZwTa)*J@B7i','Patricia Kusumo','1971-08-01'),
('handayanioskar@example.org','YrxPOf*O%0XL','Tina Megantara, M.TI.','2006-06-20'),
('harsanto38@example.net','n80)ZNuo%qyG','Nalar Sudiati, S.T.','1994-07-08'),
('harsanto52@example.com','3*1AisoF*%Ei','Asirwanda Salahudin, S.Kom','1982-10-02'),
('harsayapangestu@example.net','BS#fP3oZtR@7','Prasetyo Hutasoit','1958-03-08'),
('hartakanugroho@example.org','(kekohdh40Vz','KH. Cawisono Wibowo','2003-10-23'),
('hasanbudiman@example.org','#@)0EDipmQMA','Pangeran Mustofa','1969-03-30'),
('hassanahasmadi@example.com','5dlm7FTlC!Y_','Ida Wahyudin','1964-01-18'),
('hestiutami@example.org','5Oms_0Uz)6&M','Elvina Ardianto','1989-12-31'),
('hmayasari@example.net','7*Xfkam+&TY0','Nadia Nababan','1960-04-22'),
('humairagunarto@example.net','#N05BLsc+D6A','Tasdik Widodo, S.I.Kom','1995-08-04'),
('ida60@example.net','jI9ZHzon%v%t','Bajragin Utami','1967-09-19'),
('irfanpuspita@example.org','(5jb%LaqV92$','Dian Pranowo','1975-07-30'),
('jabal43@example.com',')EOpGEsN6Fio','Dr. Prayitna Prasasta, S.IP','1961-11-16'),
('jagaraga55@example.com','+V1RoOKraae(','Nasim Irawan','1964-07-23'),
('jailanicinthia@example.org','+zIk5)3yN22s','Hilda Gunawan','1998-06-30'),
('jmustofa@example.org','+ZEU9Vq617N#','Yessi Mangunsong','1998-10-20'),
('jnasyidah@example.net','ut07aDKxJ#18','drg. Panca Gunawan, M.M.','1963-01-14'),
('jonogunawan@example.net','iV_8DfR4d)_S','Gandi Adriansyah','2006-05-11'),
('jwijaya@example.net','d)oXRjxrs0#@','Puti Farah Mayasari','1974-11-01'),
('kamila99@example.net','_9*8Lqw6_eJ2','Dadap Nugroho','2001-01-18'),
('kamilasudiati@example.net','+x8w6g#SzfAU','Darman Hutagalung','1963-11-21'),
('karen51@example.org','%^TWTjlJGs8A','Puti Tantri Prabowo','1995-05-02'),
('karjahalim@example.net','k_jUfKhKnU6O','Asmianto Gunarto','1974-06-14'),
('kasiran02@example.com','#0LKb5ak*nZC','Ratih Wibowo','1990-08-28'),
('kayunputra@example.net','F)aCVeuYG1I7','Mulya Farida','1989-06-21'),
('keisha01@example.net','*%1CUcrWu9+Q','Zulfa Simanjuntak','1979-11-24'),
('kgunarto@example.net','HXd3(9Re4&&S','Tgk. Ifa Oktaviani, S.E.','1991-03-03'),
('kiandra54@example.org','#H(IH3my+&7O','Hendra Sihombing','1987-01-13'),
('knasyidah@example.org','F$#7n#gzb#6C','Tgk. Raisa Marbun','1981-02-20'),
('kpurwanti@example.org','$73XCwgjRBY+','Drs. Gatot Usamah','1990-08-18'),
('kusumokezia@example.org','1_FIUBiUdu95','Rahayu Waluyo','2003-12-01'),
('langgengnashiruddin@example.net',')v0EMipK!Inu','R. Mahmud Kuswandari','1990-10-30'),
('lantarwaluyo@example.org','!7TfcG4e+$q+','Vanya Widiastuti','1956-06-28'),
('latifpadmasari@example.org','gZ0Y8fMqp!du','drg. Dadap Laksita, M.M.','1979-07-28'),
('lega72@example.org','eiLPG8Gn@x^5','Sari Pradana','1968-04-19'),
('lidyapangestu@example.com','x$9jGNzr#DO^','Ifa Widiastuti','1994-04-08'),
('limar53@example.net','D$v&3%KufFai','Asmadi Hassanah','1966-08-27'),
('limar98@example.org','(3eB#ogq&lBU','Sutan Wahyu Purwanti','1969-10-17'),
('lukitamayasari@example.net','+c+G*Jlc*Oz0','Eman Prastuti','1971-12-23'),
('lyulianti@example.org','#M5UYAf_Q2d#','Zamira Budiman','2006-08-06'),
('maheswarabaktianto@example.net','+4c&x(C8r2Sj','dr. Wulan Halimah','1968-11-01'),
('maida92@example.com','#@BwUi7yqs7A','Jati Saefullah','1995-11-21'),
('malikanababan@example.net','P%Z1CdEf#8#s','Puti Jelita Suryono','1973-06-19'),
('manullangira@example.org','t+a0Lz)T6sRR','dr. Ikhsan Wulandari','1977-02-20'),
('maras14@example.net',')MMGKosVt*2R','Tari Yulianti','1957-06-26'),
('maulanapatricia@example.com','xG9y2VrvIm!2','R. Febi Irawan, M.Ak','1964-03-27'),
('mrahimah@example.com','QjIwrtxA&0SB','Nugraha Anggraini, S.Sos','1975-03-03'),
('mumpuniutama@example.org','5l@qgVdy)!&0','Ajiman Usamah','1991-10-05'),
('mursita01@example.net','j%x2T_BqPB2Y','Radika Prabowo','1993-11-27'),
('muyainah@example.com','#JwVTp^yH2@N','Abyasa Manullang','1959-12-25'),
('najamdabukke@example.org','S0FCGQVp$+yh','Dr. Putri Kuswandari, S.H.','1984-02-13'),
('najib59@example.com','2)0Zt+e0zqGG','Gatra Hakim','1960-07-30'),
('nasab15@example.net','FF57TzXh@2mU','Ilsa Pratama','1998-10-16'),
('natsirhilda@example.com','Nw(kPxaa#2Aw','Dr. Daruna Sitompul, S.T.','1974-10-08'),
('natsirjono@example.net','1hN4VSiF%m67','Bakti Saptono, M.Pd','1968-04-28'),
('niyagapradipta@example.net','X9mmLgRk&6%^','Michelle Lazuardi','1983-08-31'),
('nnasyiah@example.com','%sCUPjJt&b0+','Cut Olivia Dabukke','1994-01-02'),
('nwidiastuti@example.net','%O90CiFI9bLF','Hana Puspita, S.Pt','1964-08-19'),
('oktavianiedi@example.com','&s2%TuInTIeJ','Ghani Mangunsong','1979-03-22'),
('omahendra@example.com','+2XiwP3CR1dD','Ajimin Yulianti, S.Kom','1992-02-12'),
('opudjiastuti@example.com','m%LQWhlNAR0X','Hj. Nova Nugroho','1984-02-11'),
('osudiati@example.net','_7JHoawlj32z','Ega Uwais','1979-12-03'),
('padmatamba@example.net','WT7*RJiP__0M','Tgk. Kala Lestari, S.Psi','1991-03-14'),
('palastrigara@example.com','!MD7MIGcn5rB','dr. Ulya Zulkarnain','1963-12-22'),
('permatafitriani@example.com','#&*UEdDJ)6dP','Zalindra Budiyanto','1990-05-28'),
('pradanayessi@example.net','xL(stTorDe7p','Prabowo Utami','1984-05-30'),
('prakasapurwa@example.com','g579Hi2v#FuH','Mala Tamba','1987-04-21'),
('pramadan@example.com','_O09m_3LbwuS','Niyaga Prasasta','1961-03-19'),
('prasetyabella@example.net','ii_Xh5yu!3Z7','R. Kurnia Gunawan','1960-02-15'),
('prasetyarajasa@example.com','itd#+VBk_3OA','Ir. Vicky Maheswara','1962-11-09'),
('prayitna27@example.org','khO#A+4nF#80','Ir. Omar Dongoran','1959-04-21'),
('puji38@example.net','*lNWkMyNp7UE','Tgk. Puput Dabukke','1987-09-26'),
('putraibrani@example.com','I3BbApsd@y5l','R.M. Karman Hastuti, M.Pd','1995-10-30'),
('rahayu87@example.org','#vzpMCmejnc5','Samiah Nasyiah, S.I.Kom','1964-09-23'),
('rahmanlaksita@example.net','03kga1Bq(Q^@','Mila Waluyo, M.TI.','1981-04-13'),
('raisa80@example.org','_2hw(AhN5(1V','Ir. Tania Palastri, M.Ak','1967-05-04'),
('safitrigalak@example.com','*yNGOPeXG5e#','Victoria Wacana','1969-05-02'),
('samosirrosman@example.com','CV4NGQfa*BHx','R.M. Latif Lailasari','1966-06-16'),
('saptonojayeng@example.com','u+T%jo0i82yN','Tgk. Estiono Wasita','1991-04-29'),
('sarah91@example.org','vx9aQvRag*(T','Darsirah Hariyah','1982-06-27'),
('sbudiman@example.org','xOJgWAqc&3rp','Puti Nova Oktaviani, S.Sos','2002-01-14'),
('sihombinglantar@example.com','1(Nw7Wpc&R5(','Dirja Prakasa','1999-02-03'),
('sihombingqueen@example.org','O!H!f3YmfQC(','Chandra Damanik','1962-05-29'),
('sihombingutama@example.org','t)Z0&2oq#1mz','Zamira Maulana','1960-06-06'),
('silviariyanti@example.org','5_$5Aep5_3IY','Puti Talia Wastuti, S.Pd','1964-08-22'),
('suciyulianti@example.org','d5kFERtz(%VH','Opung Narpati','1998-05-24'),
('tania31@example.net','()a9p_UiK_#8','Ophelia Dongoran','1990-05-23'),
('taniasimbolon@example.org','@AL7lajoY7hi','Makara Nababan','1999-10-27'),
('twaluyo@example.org','2s72AkUu@n^b','Maimunah Melani','1958-10-22'),
('uaryani@example.com','%7Pwi)8@$Tai','Lutfan Tampubolon','1986-06-19'),
('usuryono@example.net','&7NFYFtg01oH','Edi Najmudin','2003-12-02'),
('utamahardiansyah@example.net','(i86dDEs%+AB','Pia Hutasoit','1955-12-12'),
('uuwais@example.org','762UBsar@4fK','Putri Ardianto','1992-11-22'),
('vanesa24@example.com','jMhU5D4$Z0Q$','Artawan Wibowo','1983-05-21'),
('vanesapermata@example.net','B9eKGavb#SNz','Ami Samosir, S.Psi','2006-11-05'),
('vanyafujiati@example.org','J#cAPQr((+P4','Syahrini Mandasari','1990-12-16'),
('vinopuspita@example.com','3LhuZ03r@vDw','Imam Nababan','1971-02-22'),
('wahyusaragih@example.net','&6XBm3jGl9Yb','Suci Saragih','1966-09-27'),
('wakiman29@example.org','z3zvxiG)+4xK','R. Marwata Saptono','1998-10-10'),
('waluyoeja@example.org','JMAFje9C_z3z','Bagiya Suryono','1995-03-02'),
('waluyoganjaran@example.com','!soRQ$mxJ76U','Warji Maulana, M.TI.','1960-09-24'),
('waluyoilyas@example.com','N^bP$I1r@0sC','Qori Wijaya','1961-11-13'),
('warjijailani@example.org','kU7Pot#Hn$jX','Novi Wasita','1977-10-24'),
('wartaprasetya@example.org','I$noRyc0!KUM','Ir. Mitra Nurdiyanti, S.T.','1954-11-14'),
('wastutikemal@example.net','yA0%4P5f)t9e','Ir. Puji Fujiati','1971-09-29'),
('wgunarto@example.com','6IRFV7l1cn3^','Mahesa Prasasta','1991-06-27'),
('widiastutinadine@example.org',')1X$KNDksfUB','Laras Hartati','1967-04-22'),
('winarnowage@example.org','@lMtXiUv13Yv','Ozy Rahmawati, S.I.Kom','2003-10-13'),
('winda56@example.com','w2x1w)sH)WWC','Kenari Setiawan, S.Psi','1955-07-26'),
('xananauwais@example.org','Vgg!Rt+I@%L1','Dalima Saputra, M.TI.','1963-08-22'),
('ynainggolan@example.net','*bkI7TacJFqy','Siska Sitorus','1964-09-03'),
('yolandakani@example.net','!b3UQgeh9!EW','Nadia Sirait','1995-05-21'),
('zalindra02@example.com','WPjdlI&I@9Zx','Keisha Farida','1973-03-11');
/*!40000 ALTER TABLE `pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resep_obat`
--

DROP TABLE IF EXISTS `resep_obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resep_obat` (
  `id_obat` int(11) NOT NULL,
  `id_resep` int(11) NOT NULL,
  `dosis` varchar(255) DEFAULT NULL,
  `cara_pakai` varchar(255) NOT NULL,
  PRIMARY KEY (`id_obat`,`id_resep`),
  KEY `id_resep` (`id_resep`),
  CONSTRAINT `resep_obat_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`),
  CONSTRAINT `resep_obat_ibfk_2` FOREIGN KEY (`id_resep`) REFERENCES `pengeluaran_resep` (`id_resep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resep_obat`
--

LOCK TABLES `resep_obat` WRITE;
/*!40000 ALTER TABLE `resep_obat` DISABLE KEYS */;
INSERT INTO `resep_obat` VALUES
(165,33443,'3x sehari 2 tablet','Saat makan'),
(165,45958,'1x sehari 2 tablet','Sebelum makan'),
(225,10582,'3x sehari 2 tablet','Sesudah makan'),
(225,10972,'2x sehari 1 tablet','Saat makan'),
(225,18579,'2x sehari 2 tablet','Saat makan'),
(225,23445,'1x sehari 1 tablet','Saat makan'),
(225,24825,'2x sehari 2 tablet','Saat makan'),
(225,27201,'3x sehari 2 tablet','Sebelum makan'),
(225,32307,'3x sehari 2 tablet','Saat makan'),
(711,6706,'1x sehari 2 tablet','Sebelum makan'),
(711,8914,'3x sehari 2 tablet','Saat makan'),
(711,15428,'3x sehari 2 tablet','Sebelum makan'),
(711,18579,'2x sehari 2 tablet','Sesudah makan'),
(711,19700,'2x sehari 2 tablet','Saat makan'),
(711,30025,'2x sehari 2 tablet','Saat makan'),
(711,38414,'2x sehari 1 tablet','Saat makan'),
(711,38491,'1x sehari 1 tablet','Saat makan'),
(711,48117,'2x sehari 1 tablet','Saat makan'),
(1563,13241,'1x sehari 2 tablet','Sebelum makan'),
(1563,15489,'1x sehari 2 tablet','Sebelum makan'),
(1563,17297,'1x sehari 2 tablet','Sebelum makan'),
(1563,27201,'1x sehari 1 tablet','Sebelum makan'),
(1563,27563,'1x sehari 1 tablet','Saat makan'),
(1563,33443,'1x sehari 2 tablet','Sesudah makan'),
(1955,6346,'3x sehari 1 tablet','Saat makan'),
(1955,34507,'2x sehari 1 tablet','Saat makan'),
(2266,703,'3x sehari 2 tablet','Sebelum makan'),
(2266,15489,'2x sehari 1 tablet','Saat makan'),
(2266,34072,'3x sehari 2 tablet','Sesudah makan'),
(2266,41544,'1x sehari 1 tablet','Sebelum makan'),
(2266,42398,'2x sehari 2 tablet','Sesudah makan'),
(3447,3042,'2x sehari 2 tablet','Saat makan'),
(3447,30046,'2x sehari 2 tablet','Sesudah makan'),
(3447,30997,'3x sehari 1 tablet','Sebelum makan'),
(3940,20725,'3x sehari 1 tablet','Sesudah makan'),
(3940,34072,'1x sehari 2 tablet','Sebelum makan'),
(3940,41182,'2x sehari 2 tablet','Saat makan'),
(4704,13241,'2x sehari 1 tablet','Sesudah makan'),
(4704,34507,'3x sehari 2 tablet','Sesudah makan'),
(4920,3230,'1x sehari 2 tablet','Sebelum makan'),
(4920,6706,'1x sehari 1 tablet','Saat makan'),
(4920,10972,'3x sehari 2 tablet','Sebelum makan'),
(4920,15056,'1x sehari 2 tablet','Saat makan'),
(4920,20725,'1x sehari 2 tablet','Sebelum makan'),
(4920,28277,'3x sehari 2 tablet','Sesudah makan'),
(4920,42134,'3x sehari 1 tablet','Sebelum makan'),
(4947,20553,'3x sehari 2 tablet','Saat makan'),
(4947,21780,'3x sehari 2 tablet','Saat makan'),
(4947,30025,'1x sehari 1 tablet','Sebelum makan'),
(4947,46741,'3x sehari 2 tablet','Saat makan'),
(4947,46756,'3x sehari 2 tablet','Sesudah makan'),
(5030,19313,'1x sehari 2 tablet','Saat makan'),
(5030,23058,'2x sehari 2 tablet','Sesudah makan'),
(5030,41544,'3x sehari 2 tablet','Sebelum makan'),
(5030,44589,'2x sehari 2 tablet','Sebelum makan'),
(5342,3230,'3x sehari 2 tablet','Sesudah makan'),
(5459,8837,'1x sehari 2 tablet','Sebelum makan'),
(5459,8914,'1x sehari 2 tablet','Saat makan'),
(5459,10582,'1x sehari 2 tablet','Saat makan'),
(5459,16191,'3x sehari 2 tablet','Saat makan'),
(5459,16999,'1x sehari 1 tablet','Sesudah makan'),
(5459,23445,'3x sehari 1 tablet','Sebelum makan'),
(5459,46741,'2x sehari 2 tablet','Sebelum makan'),
(5648,703,'1x sehari 1 tablet','Sesudah makan'),
(5648,8837,'3x sehari 1 tablet','Sesudah makan'),
(5648,27906,'2x sehari 1 tablet','Saat makan'),
(5648,30997,'1x sehari 2 tablet','Sesudah makan'),
(5648,38491,'2x sehari 2 tablet','Sesudah makan'),
(5893,3042,'2x sehari 2 tablet','Saat makan'),
(5893,6346,'1x sehari 1 tablet','Sesudah makan'),
(5893,15281,'3x sehari 2 tablet','Sesudah makan'),
(5893,19700,'3x sehari 2 tablet','Sebelum makan'),
(5893,24825,'1x sehari 2 tablet','Sebelum makan'),
(6992,15056,'1x sehari 1 tablet','Saat makan'),
(6992,15428,'1x sehari 2 tablet','Sebelum makan'),
(6992,16191,'1x sehari 2 tablet','Sesudah makan'),
(6992,19313,'2x sehari 1 tablet','Saat makan'),
(6992,30046,'1x sehari 1 tablet','Sebelum makan'),
(6992,42398,'3x sehari 2 tablet','Sebelum makan'),
(6992,44589,'1x sehari 1 tablet','Sebelum makan'),
(6992,48117,'1x sehari 1 tablet','Sesudah makan'),
(8925,16999,'1x sehari 2 tablet','Sebelum makan'),
(8925,27563,'3x sehari 2 tablet','Sesudah makan'),
(8925,28277,'1x sehari 2 tablet','Sebelum makan'),
(8925,32307,'3x sehari 2 tablet','Saat makan'),
(8925,41182,'1x sehari 1 tablet','Sesudah makan'),
(8925,46756,'3x sehari 1 tablet','Saat makan'),
(9482,15281,'2x sehari 2 tablet','Saat makan'),
(9482,17297,'1x sehari 1 tablet','Sesudah makan'),
(9482,20553,'3x sehari 1 tablet','Sesudah makan'),
(9482,23058,'3x sehari 2 tablet','Sebelum makan'),
(9482,33385,'2x sehari 1 tablet','Sebelum makan'),
(9482,38414,'1x sehari 1 tablet','Sebelum makan'),
(9482,42134,'3x sehari 2 tablet','Sebelum makan'),
(9482,45958,'1x sehari 2 tablet','Saat makan'),
(9482,48482,'3x sehari 1 tablet','Sesudah makan'),
(9948,21780,'3x sehari 2 tablet','Saat makan'),
(9948,27906,'3x sehari 1 tablet','Sebelum makan'),
(9948,33385,'3x sehari 1 tablet','Sebelum makan'),
(9948,48482,'1x sehari 2 tablet','Sebelum makan');
/*!40000 ALTER TABLE `resep_obat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rumah_sakit`
--

DROP TABLE IF EXISTS `rumah_sakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rumah_sakit` (
  `id_rumah_sakit` int(11) NOT NULL,
  `nama_rumah_sakit` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `jalan` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rumah_sakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rumah_sakit`
--

LOCK TABLES `rumah_sakit` WRITE;
/*!40000 ALTER TABLE `rumah_sakit` DISABLE KEYS */;
INSERT INTO `rumah_sakit` VALUES
(60,'RS Tbk Sibolga','Kepulauan Bangka Belitung','Lhokseumawe','Gg. Indragiri No. 6'),
(198,'RS (Persero) Tbk Pasuruan','Nusa Tenggara Barat','Surakarta','Gang Cihampelas No. 79'),
(247,'RS (Persero) Tbk Mojokerto','Nusa Tenggara Barat','Padang Sidempuan','Gg. Kebonjati No. 578'),
(267,'RS (Persero) Tbk Palembang','Kalimantan Timur','Cimahi','Gang Raya Ujungberung No. 56'),
(306,'RS Tbk Pekalongan','Riau','Subulussalam','Gg. Jend. Sudirman No. 34'),
(345,'RS (Persero) Tbk Kota Administrasi Jakarta Barat','Bali','Madiun','Gang H.J Maemunah No. 559'),
(428,'RS (Persero) Tbk Pagaralam','Bengkulu','Bima','Gang Surapati No. 436'),
(432,'RS (Persero) Tbk Langsa','Kalimantan Tengah','Tidore Kepulauan','Gang Rawamangun No. 577'),
(514,'RS Tbk Malang','Sulawesi Tenggara','Denpasar','Jalan KH Amin Jasuta No. 79'),
(532,'RS Tbk Subulussalam','DI Yogyakarta','Banjarbaru','Jalan Gegerkalong Hilir No. 53'),
(574,'RS Tbk Bandung','DI Yogyakarta','Surabaya','Jalan Cikutra Barat No. 730'),
(576,'RS (Persero) Tbk Medan','Kalimantan Barat','Langsa','Jl. S. Parman No. 65'),
(698,'RS (Persero) Tbk Padangpanjang','DKI Jakarta','Padangpanjang','Gg. Kiaracondong No. 6'),
(718,'RS (Persero) Tbk Sabang','Kalimantan Selatan','Cilegon','Gg. R.E Martadinata No. 6'),
(757,'RS Tbk Surabaya','Bengkulu','Pariaman','Jl. Soekarno Hatta No. 4'),
(766,'RS (Persero) Tbk Meulaboh','Papua Barat','Sungai Penuh','Gg. Rajawali Timur No. 06'),
(791,'RS Tbk Bandung','Papua Barat','Banjar','Gang Ciwastra No. 065'),
(879,'RS (Persero) Tbk Medan','Aceh','Tomohon','Gang R.E Martadinata No. 8'),
(887,'RS Tbk Pagaralam','DI Yogyakarta','Bima','Gg. Kendalsari No. 653'),
(949,'RS Tbk Surabaya','Kalimantan Timur','Banjar','Gg. Kebonjati No. 50');
/*!40000 ALTER TABLE `rumah_sakit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telepon_pengguna`
--

DROP TABLE IF EXISTS `telepon_pengguna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telepon_pengguna` (
  `email` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  PRIMARY KEY (`email`,`no_telepon`),
  UNIQUE KEY `no_telepon` (`no_telepon`),
  CONSTRAINT `telepon_pengguna_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pengguna` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telepon_pengguna`
--

LOCK TABLES `telepon_pengguna` WRITE;
/*!40000 ALTER TABLE `telepon_pengguna` DISABLE KEYS */;
INSERT INTO `telepon_pengguna` VALUES
('adiarja64@example.org','+62 (0488) 776-1185'),
('akarsanairawan@example.org','+62 (0126) 424 3856'),
('akarsanairawan@example.org','+62 (041) 757 7617'),
('akarsanairawan@example.org','+62 (39) 298 1085'),
('asirwanda75@example.com','(0799) 221 3952'),
('asirwanda75@example.com','+62 (0387) 123 4781'),
('asirwanda75@example.com','+62-818-866-0036'),
('asmuni43@example.net','+62 (02) 480-0220'),
('asmuni43@example.net','+62-0243-668-9646'),
('bagus17@example.org','+62 (011) 846 3089'),
('bagus17@example.org','+62 (520) 120-8494'),
('bagus17@example.org','089 933 1790'),
('baktiadizulaika@example.org','(0033) 930-2141'),
('baktiadizulaika@example.org','(0655) 764-1849'),
('baktiadizulaika@example.org','+62 (0125) 424-1428'),
('baktiadizulaika@example.org','+62 (063) 125-9143'),
('baktionopalastri@example.net','(0791) 476-4850'),
('baktionopalastri@example.net','+62 (0737) 104 3914'),
('baktionopalastri@example.net','0870419464'),
('balapatimahendra@example.net','+62 (294) 332-7470'),
('balapatimahendra@example.net','+62 (745) 670-8262'),
('budiyantoraharja@example.org','(059) 037-1073'),
('budiyantoraharja@example.org','+62 (0921) 960 8295'),
('cager91@example.org','+62 (78) 688 9262'),
('capanurdiyanti@example.net','0823915801'),
('cawisonozulaika@example.net','(003) 018-9770'),
('cemplunk36@example.com','(0137) 041 0876'),
('cemplunk36@example.com','+62 (047) 053-1605'),
('cemplunk36@example.com','+62-030-987-0105'),
('cemplunkadriansyah@example.org','(0890) 958 5065'),
('cemplunkadriansyah@example.org','+62 (98) 007 5669'),
('cemplunkadriansyah@example.org','+62 (99) 812 9479'),
('cemplunkadriansyah@example.org','+62-0387-141-6500'),
('chutapea@example.org','0815996896'),
('crajata@example.org','+62-026-515-6416'),
('dalima15@example.net','(0825) 928 3235'),
('dalima15@example.net','+62 (0067) 190-0867'),
('dalima15@example.net','+62 (075) 553-1286'),
('dalima15@example.net','+62-00-237-0658'),
('dalima15@example.net','+62-0312-902-9595'),
('digdaya32@example.net','+62 (0348) 530-3939'),
('digdaya32@example.net','+62 (21) 275 8307'),
('dimazpradipta@example.net','(0844) 982-1792'),
('dimazpradipta@example.net','+62 (939) 340 8899'),
('dimazpradipta@example.net','+62-16-744-9163'),
('dsaragih@example.com','(0499) 303 2421'),
('dsaragih@example.com','+62-021-552-7561'),
('dsaragih@example.com','+62-42-086-1529'),
('dsinaga@example.org','+62 (60) 518 9452'),
('elma89@example.net','+62-057-132-7639'),
('emangunsong@example.com','+62-0865-343-8618'),
('emangunsong@example.com','0807569966'),
('emaniswahyudi@example.com','(0772) 981 4018'),
('endra26@example.com','+62 (0754) 184-8704'),
('endra26@example.com','+62 (0923) 212 1494'),
('fitriani02@example.net','+62 (67) 056 4909'),
('fitriani02@example.net','+62 (91) 540-7852'),
('fitriani02@example.net','+62-0515-669-9021'),
('fitriani02@example.net','0848047349'),
('fsiregar@example.org','(0090) 665-6363'),
('fsiregar@example.org','(084) 584 7958'),
('fujiatititi@example.org','+62 (011) 508-6445'),
('fujiatititi@example.org','+62-341-032-0867'),
('gamanto56@example.com','+62 (384) 793 0426'),
('gamanto56@example.com','+62 (65) 731 5429'),
('ganda49@example.org','(061) 154 7813'),
('ganda51@example.net','(0130) 597-6359'),
('ganda51@example.net','(0134) 519 9850'),
('ganda51@example.net','+62 (0194) 516 3669'),
('ganda51@example.net','+62 (082) 705-5940'),
('ganda51@example.net','+62 (455) 849 7910'),
('ganjaranhasanah@example.com','(0272) 964-8047'),
('ganjaranhasanah@example.com','(041) 097 6037'),
('ganjaranhasanah@example.com','+62 (82) 456 0870'),
('garamarbun@example.com','+62-0425-741-1237'),
('garamarbun@example.com','+62-81-976-8350'),
('garamarbun@example.com','089 217 8207'),
('gunawanrama@example.com','(012) 615-4470'),
('hadiyolanda@example.com','+62 (0226) 645-7726'),
('hadiyolanda@example.com','+62 (18) 835 2550'),
('hadiyolanda@example.com','082 044 0363'),
('hafshahpermata@example.org','+62 (064) 511-2618'),
('halimahandayani@example.org','(0822) 806 5768'),
('halimahandayani@example.org','+62 (991) 089-1201'),
('halimahandayani@example.org','0879399602'),
('handayanioskar@example.org','(0590) 171 5642'),
('handayanioskar@example.org','+62-35-253-0892'),
('handayanioskar@example.org','+62-87-165-8264'),
('handayanioskar@example.org','0885466354'),
('harsanto38@example.net','(0900) 927-3068'),
('harsanto38@example.net','+62 (30) 784-7279'),
('harsanto52@example.com','+62 (88) 087-8294'),
('harsanto52@example.com','0838045022'),
('harsayapangestu@example.net','(0095) 967 6280'),
('harsayapangestu@example.net','+62 (379) 075 5518'),
('harsayapangestu@example.net','+62-057-992-3368'),
('hartakanugroho@example.org','+62-095-250-5567'),
('hasanbudiman@example.org','(038) 310 6479'),
('hasanbudiman@example.org','(0770) 183 0576'),
('hasanbudiman@example.org','+62 (043) 310 4145'),
('hasanbudiman@example.org','+62 (074) 948-3137'),
('hasanbudiman@example.org','+62-095-793-9916'),
('hassanahasmadi@example.com','+62 (019) 243-1084'),
('hassanahasmadi@example.com','+62 (0225) 479-8043'),
('hestiutami@example.org','+62 (017) 169-5591'),
('hmayasari@example.net','+62 (0316) 019 2170'),
('hmayasari@example.net','+62-21-912-4641'),
('hmayasari@example.net','+62-49-398-8593'),
('humairagunarto@example.net','(026) 153 9698'),
('humairagunarto@example.net','+62 (10) 013 2613'),
('ida60@example.net','+62 (070) 857-8000'),
('ida60@example.net','+62 (395) 413 7554'),
('irfanpuspita@example.org','+62-013-695-9825'),
('jabal43@example.com','+62-74-029-5759'),
('jagaraga55@example.com','(083) 687-3634'),
('jailanicinthia@example.org','+62 (0698) 921-7611'),
('jailanicinthia@example.org','+62 (0985) 281 9659'),
('jailanicinthia@example.org','+62 (553) 671-1905'),
('jailanicinthia@example.org','+62-0850-624-5056'),
('jmustofa@example.org','087 011 4338'),
('jnasyidah@example.net','+62 (08) 621 5688'),
('jnasyidah@example.net','+62 (928) 776 5011'),
('jonogunawan@example.net','+62 (0878) 265 9964'),
('jonogunawan@example.net','0864688264'),
('jwijaya@example.net','(0204) 577 8813'),
('jwijaya@example.net','0842631019'),
('kamila99@example.net','+62 (0541) 484-8214'),
('kamila99@example.net','+62-78-166-5848'),
('kamilasudiati@example.net','+62 (0695) 480-9002'),
('kamilasudiati@example.net','+62 (832) 200 8979'),
('kamilasudiati@example.net','+62-060-851-4589'),
('karen51@example.org','+62 (0433) 835-5963'),
('karjahalim@example.net','+62-150-266-8609'),
('kasiran02@example.com','+62 (068) 918-5883'),
('kasiran02@example.com','+62 (072) 492 4430'),
('kayunputra@example.net','+62 (030) 914 5596'),
('kayunputra@example.net','+62 (883) 610 5421'),
('keisha01@example.net','(0074) 340-1506'),
('keisha01@example.net','+62 (0100) 719 0395'),
('kgunarto@example.net','+62-00-467-6441'),
('kiandra54@example.org','+62 (091) 698 3379'),
('kiandra54@example.org','+62 (15) 504-1766'),
('knasyidah@example.org','+62 (24) 739-7996'),
('knasyidah@example.org','+62 (69) 597-4594'),
('kpurwanti@example.org','+62 (011) 326 9408'),
('kpurwanti@example.org','+62-075-927-7671'),
('kusumokezia@example.org','(0034) 410-7595'),
('kusumokezia@example.org','0876378067'),
('langgengnashiruddin@example.net','+62 (0077) 888 0469'),
('lantarwaluyo@example.org','0895654754'),
('latifpadmasari@example.org','+62 (0888) 978-3252'),
('latifpadmasari@example.org','088 007 3900'),
('lega72@example.org','(054) 008-8637'),
('lidyapangestu@example.com','+62-548-674-9842'),
('limar53@example.net','+62 (075) 000-8119'),
('limar53@example.net','082 229 9132'),
('limar98@example.org','(0228) 112 8428'),
('lukitamayasari@example.net','+62 (089) 532 6415'),
('lukitamayasari@example.net','082 587 6048'),
('lyulianti@example.org','+62 (0439) 095 1100'),
('lyulianti@example.org','+62-908-106-1428'),
('maheswarabaktianto@example.net','+62 (054) 408 0791'),
('maheswarabaktianto@example.net','+62 (086) 394 7606'),
('maida92@example.com','+62 (087) 373 7717'),
('malikanababan@example.net','(071) 339-0995'),
('manullangira@example.org','+62 (321) 753 2429'),
('maras14@example.net','+62 (74) 153-2822'),
('maulanapatricia@example.com','(0509) 079 0195'),
('maulanapatricia@example.com','+62 (097) 477-8608'),
('maulanapatricia@example.com','+62 (23) 115 7816'),
('maulanapatricia@example.com','084 852 0604'),
('mrahimah@example.com','+62 (0278) 458 1753'),
('mrahimah@example.com','+62 (0407) 978 5934'),
('mumpuniutama@example.org','+62-806-360-8091'),
('mursita01@example.net','(0241) 122 9216'),
('mursita01@example.net','+62-0948-786-1185'),
('muyainah@example.com','+62 (694) 043-1391'),
('najamdabukke@example.org','(046) 332-3919'),
('najamdabukke@example.org','+62 (0081) 339-7510'),
('najamdabukke@example.org','+62 (020) 195 8742'),
('najamdabukke@example.org','+62 (070) 812-7375'),
('najamdabukke@example.org','+62 (677) 778 0347'),
('najib59@example.com','+62-852-575-4037'),
('nasab15@example.net','+62 (0874) 323 7464'),
('nasab15@example.net','+62 (11) 293 3855'),
('nasab15@example.net','+62-038-388-0113'),
('nasab15@example.net','0881761113'),
('natsirhilda@example.com','(026) 798 8171'),
('natsirhilda@example.com','+62-0814-439-7845'),
('natsirjono@example.net','+62 (145) 293 9471'),
('natsirjono@example.net','080 762 2759'),
('niyagapradipta@example.net','(0530) 904 7043'),
('niyagapradipta@example.net','+62-018-551-1251'),
('nnasyiah@example.com','+62 (0585) 417-6193'),
('nnasyiah@example.com','+62 (069) 659 9200'),
('nwidiastuti@example.net','(043) 797-3618'),
('oktavianiedi@example.com','+62-068-078-0592'),
('omahendra@example.com','(0188) 198-0437'),
('omahendra@example.com','+62 (048) 323-5047'),
('omahendra@example.com','+62 (0720) 384-3429'),
('opudjiastuti@example.com','+62 (532) 063-1341'),
('osudiati@example.net','080 364 5746'),
('osudiati@example.net','0845362684'),
('padmatamba@example.net','(0028) 013-5366'),
('padmatamba@example.net','080 519 1935'),
('palastrigara@example.com','(0470) 360 8472'),
('palastrigara@example.com','+62 (0315) 588 2958'),
('permatafitriani@example.com','+62 (0902) 644-0606'),
('permatafitriani@example.com','+62 (652) 100 5034'),
('pradanayessi@example.net','(052) 307-2296'),
('pradanayessi@example.net','+62 (495) 103-5261'),
('prakasapurwa@example.com','082 816 1033'),
('prakasapurwa@example.com','088 696 5375'),
('pramadan@example.com','(051) 817 1497'),
('pramadan@example.com','+62 (091) 804-8230'),
('prasetyabella@example.net','+62 (11) 952-2599'),
('prasetyabella@example.net','+62 (603) 050-4026'),
('prasetyabella@example.net','+62-0911-246-2909'),
('prasetyarajasa@example.com','(022) 606 8354'),
('prasetyarajasa@example.com','+62 (032) 182 4943'),
('prasetyarajasa@example.com','+62-707-805-6206'),
('prayitna27@example.org','(046) 818 4814'),
('puji38@example.net','+62 (980) 305-2991'),
('putraibrani@example.com','(046) 177-3353'),
('rahayu87@example.org','+62 (40) 449-0576'),
('rahmanlaksita@example.net','+62-0786-954-9640'),
('raisa80@example.org','+62-686-799-5219'),
('safitrigalak@example.com','(041) 267 7920'),
('samosirrosman@example.com','+62 (073) 777 8075'),
('saptonojayeng@example.com','(031) 125-0070'),
('saptonojayeng@example.com','(080) 456 3072'),
('sarah91@example.org','+62 (04) 568 2932'),
('sarah91@example.org','+62 (085) 555 6129'),
('sarah91@example.org','+62 (488) 518-0918'),
('sbudiman@example.org','(0122) 291-4525'),
('sbudiman@example.org','+62 (05) 410-3924'),
('sbudiman@example.org','+62 (064) 865 4527'),
('sihombinglantar@example.com','+62 (834) 560-2889'),
('sihombingqueen@example.org','+62 (005) 381 7630'),
('sihombingqueen@example.org','+62 (098) 368 6924'),
('sihombingutama@example.org','+62 (983) 129-3505'),
('sihombingutama@example.org','+62-236-941-7840'),
('silviariyanti@example.org','+62-10-243-9218'),
('silviariyanti@example.org','+62-142-227-2730'),
('suciyulianti@example.org','(0107) 888 8748'),
('suciyulianti@example.org','+62 (01) 831-3576'),
('tania31@example.net','(0207) 248-5893'),
('tania31@example.net','(077) 836 2751'),
('tania31@example.net','0853980839'),
('taniasimbolon@example.org','+62-035-493-7665'),
('taniasimbolon@example.org','0855509981'),
('twaluyo@example.org','+62 (0940) 335 8500'),
('uaryani@example.com','(0284) 553-3233'),
('uaryani@example.com','(0637) 760 5216'),
('uaryani@example.com','+62 (0241) 681 6164'),
('uaryani@example.com','+62 (066) 663-7224'),
('usuryono@example.net','(0527) 661-5201'),
('usuryono@example.net','(0741) 730-8783'),
('usuryono@example.net','+62-059-107-5107'),
('utamahardiansyah@example.net','+62 (0127) 876-9036'),
('utamahardiansyah@example.net','+62-868-496-4734'),
('uuwais@example.org','+62 (089) 629-7057'),
('vanesa24@example.com','(0100) 132 6776'),
('vanesa24@example.com','+62 (083) 188 6505'),
('vanesapermata@example.net','(024) 042 7202'),
('vanesapermata@example.net','+62 (039) 026-1250'),
('vanesapermata@example.net','+62 (93) 624 8423'),
('vanesapermata@example.net','085 258 1470'),
('vanyafujiati@example.org','(0758) 323 8947'),
('vanyafujiati@example.org','+62 (079) 838 2273'),
('vanyafujiati@example.org','+62-0267-241-4883'),
('vinopuspita@example.com','+62 (31) 184 9317'),
('wahyusaragih@example.net','+62 (564) 406-2870'),
('wakiman29@example.org','(0771) 731-1730'),
('wakiman29@example.org','+62 (089) 750 3497'),
('wakiman29@example.org','+62 (097) 897 2734'),
('waluyoeja@example.org','+62 (656) 884-0884'),
('waluyoganjaran@example.com','+62 (38) 813 3890'),
('waluyoganjaran@example.com','084 457 4812'),
('waluyoilyas@example.com','+62 (15) 499-9811'),
('warjijailani@example.org','(0185) 027 4843'),
('wartaprasetya@example.org','(0193) 857-0343'),
('wartaprasetya@example.org','+62-07-698-4340'),
('wartaprasetya@example.org','+62-528-885-5902'),
('wastutikemal@example.net','+62 (013) 221-3192'),
('wastutikemal@example.net','+62 (085) 496-0354'),
('wgunarto@example.com','+62 (030) 991-0535'),
('widiastutinadine@example.org','+62 (67) 848 3314'),
('widiastutinadine@example.org','+62-0262-508-1154'),
('winarnowage@example.org','+62 (0304) 522 6284'),
('winarnowage@example.org','+62 (0744) 499-5890'),
('winda56@example.com','+62-076-770-8365'),
('xananauwais@example.org','+62 (644) 844-9394'),
('ynainggolan@example.net','+62 (69) 081-4357'),
('ynainggolan@example.net','+62-003-658-1573'),
('yolandakani@example.net','(0198) 064-0551'),
('yolandakani@example.net','+62-0712-287-8710'),
('yolandakani@example.net','0801776808'),
('zalindra02@example.com','0873633999'),
('zalindra02@example.com','089 691 4081');
/*!40000 ALTER TABLE `telepon_pengguna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telepon_rumah_sakit`
--

DROP TABLE IF EXISTS `telepon_rumah_sakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telepon_rumah_sakit` (
  `id_rumah_sakit` int(11) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rumah_sakit`,`no_telepon`),
  UNIQUE KEY `no_telepon` (`no_telepon`),
  CONSTRAINT `telepon_rumah_sakit_ibfk_1` FOREIGN KEY (`id_rumah_sakit`) REFERENCES `rumah_sakit` (`id_rumah_sakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telepon_rumah_sakit`
--

LOCK TABLES `telepon_rumah_sakit` WRITE;
/*!40000 ALTER TABLE `telepon_rumah_sakit` DISABLE KEYS */;
INSERT INTO `telepon_rumah_sakit` VALUES
(60,'(053) 050-7005'),
(198,'(0078) 581-7557'),
(247,'+62 (069) 329 3359'),
(267,'0863057869'),
(306,'+62-080-237-5924'),
(345,'(0265) 061-3853'),
(345,'(0348) 580-3078'),
(345,'(0579) 333-6237'),
(345,'(072) 577 2203'),
(345,'(0924) 194-0804'),
(345,'(097) 290 8430'),
(345,'+62 (0256) 700-9772'),
(345,'+62 (0331) 918 2674'),
(345,'+62 (0381) 017 2025'),
(345,'+62 (05) 246-2864'),
(345,'+62 (076) 118 9368'),
(345,'+62 (079) 575-2506'),
(345,'+62 (085) 578 9429'),
(345,'+62 (095) 693-0343'),
(345,'+62 (317) 927 9002'),
(345,'+62 (32) 545-1500'),
(345,'+62 (72) 519-2534'),
(345,'+62-003-463-5288'),
(345,'+62-0058-829-8305'),
(345,'+62-015-830-9429'),
(345,'+62-0711-915-7038'),
(345,'+62-0968-394-7720'),
(345,'+62-31-465-6318'),
(345,'+62-87-423-6125'),
(345,'+62-98-274-2942'),
(345,'082 641 7292'),
(345,'082 679 6856'),
(345,'086 882 5201'),
(345,'0864968508'),
(345,'0866111211'),
(345,'0868900864'),
(428,'0848419060'),
(432,'(038) 726 0348'),
(514,'(094) 698-2676'),
(532,'+62 (0120) 263 5062'),
(574,'+62 (0818) 952 4926'),
(576,'(0126) 637-3202'),
(698,'+62 (05) 920-8958'),
(718,'(068) 208-4409'),
(757,'(0678) 732 3372'),
(766,'+62 (665) 878 5122'),
(791,'+62 (799) 353-7526'),
(879,'+62-329-365-1454'),
(887,'(035) 800 6840'),
(949,'084 862 0813');
/*!40000 ALTER TABLE `telepon_rumah_sakit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenaga_medis`
--

DROP TABLE IF EXISTS `tenaga_medis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenaga_medis` (
  `email` varchar(255) NOT NULL,
  `nama_departemen` varchar(255) NOT NULL,
  `id_rumah_sakit` int(11) NOT NULL,
  `NIKes` varchar(255) NOT NULL,
  `jenis_profesi` varchar(255) NOT NULL,
  PRIMARY KEY (`email`,`NIKes`),
  UNIQUE KEY `NIKes` (`NIKes`),
  KEY `nama_departemen` (`nama_departemen`,`id_rumah_sakit`),
  CONSTRAINT `tenaga_medis_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pengguna` (`email`),
  CONSTRAINT `tenaga_medis_ibfk_2` FOREIGN KEY (`nama_departemen`, `id_rumah_sakit`) REFERENCES `departemen` (`nama_departemen`, `id_rumah_sakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenaga_medis`
--

LOCK TABLES `tenaga_medis` WRITE;
/*!40000 ALTER TABLE `tenaga_medis` DISABLE KEYS */;
INSERT INTO `tenaga_medis` VALUES
('adiarja64@example.org','Anak',879,'7705608782022','Perawat'),
('akarsanairawan@example.org','Kulit',766,'1781995750772','Perawat'),
('asirwanda75@example.com','Kulit',60,'2158204792806','Perawat'),
('asmuni43@example.net','Umum',698,'5401169512024','Perawat'),
('baktiadizulaika@example.org','Umum',698,'0675344740006','Dokter'),
('balapatimahendra@example.net','Umum',247,'0804117496554','Perawat'),
('cawisonozulaika@example.net','Gigi',247,'6050854185884','Dokter'),
('cemplunk36@example.com','Kulit',574,'4740325361641','Dokter'),
('cemplunkadriansyah@example.org','Kardiologi',60,'3554909742570','Dokter'),
('chutapea@example.org','Kulit',306,'0470468978218','Perawat'),
('crajata@example.org','Kulit',766,'7869740626931','Dokter'),
('dalima15@example.net','Neurologi',698,'2555631500460','Perawat'),
('elma89@example.net','Neurologi',698,'2043953803531','Perawat'),
('emangunsong@example.com','Kardiologi',60,'9691335785406','Perawat'),
('emaniswahyudi@example.com','Anak',949,'3334088134874','Dokter'),
('endra26@example.com','Bedah',432,'1891190831364','Perawat'),
('fsiregar@example.org','Gigi',766,'1217818617330','Dokter'),
('fujiatititi@example.org','Anak',949,'6743816645488','Dokter'),
('gamanto56@example.com','Anak',879,'1586622022440','Dokter'),
('ganda51@example.net','Neurologi',198,'2311364923415','Perawat'),
('garamarbun@example.com','Kardiologi',428,'9287775976742','Perawat'),
('hafshahpermata@example.org','Umum',757,'2616903648898','Perawat'),
('halimahandayani@example.org','Kardiologi',574,'8954942475070','Dokter'),
('handayanioskar@example.org','Anak',791,'4839728188730','Dokter'),
('harsanto38@example.net','Kardiologi',532,'8086542246788','Perawat'),
('harsanto52@example.com','Kardiologi',532,'1921336123234','Perawat'),
('harsayapangestu@example.net','Kulit',306,'6035757919002','Perawat'),
('hartakanugroho@example.org','Gigi',879,'2664259037712','Perawat'),
('hasanbudiman@example.org','Anak',766,'2675675460206','Dokter'),
('hassanahasmadi@example.com','Kulit',574,'7097080058420','Perawat'),
('hestiutami@example.org','Gigi',879,'6756891279813','Dokter'),
('humairagunarto@example.net','Anak',879,'5344919500110','Dokter'),
('ida60@example.net','Gigi',766,'1950156722334','Perawat'),
('irfanpuspita@example.org','Gigi',766,'0418712793187','Perawat'),
('jabal43@example.com','Neurologi',306,'2380624787074','Dokter'),
('jnasyidah@example.net','Gigi',514,'7707009692962','Dokter'),
('jonogunawan@example.net','Kulit',267,'1892120701399','Perawat'),
('jwijaya@example.net','Neurologi',60,'6069483250955','Perawat'),
('kamila99@example.net','Kardiologi',757,'0446008092591','Perawat'),
('kamilasudiati@example.net','Gigi',345,'1246932226845','Dokter'),
('karen51@example.org','Anak',60,'7816274127472','Perawat'),
('karjahalim@example.net','Kulit',887,'6868974552888','Perawat'),
('kasiran02@example.com','Kulit',574,'5185350206731','Perawat'),
('kayunputra@example.net','Kardiologi',345,'8288361054708','Perawat'),
('keisha01@example.net','Kardiologi',791,'5607275067643','Dokter'),
('kgunarto@example.net','Neurologi',306,'8386148256779','Dokter'),
('kiandra54@example.org','Gigi',879,'0233903014960','Perawat'),
('knasyidah@example.org','Kulit',306,'6106136359228','Perawat'),
('kusumokezia@example.org','Neurologi',306,'3450458181436','Dokter'),
('langgengnashiruddin@example.net','Kardiologi',757,'6658280216372','Dokter'),
('latifpadmasari@example.org','Kulit',718,'9351301421546','Perawat'),
('lega72@example.org','Gigi',879,'8740973000936','Dokter'),
('lidyapangestu@example.com','Neurologi',198,'4276627158325','Dokter'),
('lukitamayasari@example.net','Anak',576,'9255360992750','Perawat'),
('lyulianti@example.org','Kulit',514,'1732512365085','Dokter'),
('malikanababan@example.net','Kardiologi',757,'4919645893839','Dokter'),
('manullangira@example.org','Anak',267,'4337686118429','Dokter'),
('maras14@example.net','Bedah',432,'7804294266998','Dokter'),
('maulanapatricia@example.com','Gigi',514,'5399936194910','Dokter'),
('mrahimah@example.com','Neurologi',532,'1482206393961','Dokter'),
('mumpuniutama@example.org','Kardiologi',345,'1116956897997','Dokter'),
('mursita01@example.net','Anak',267,'5930965857263','Perawat'),
('muyainah@example.com','Anak',791,'8795142015198','Dokter'),
('najamdabukke@example.org','Kardiologi',428,'3033587009576','Perawat'),
('najib59@example.com','Kardiologi',428,'8469635985557','Perawat'),
('nasab15@example.net','Anak',879,'0942042243888','Perawat'),
('natsirhilda@example.com','Anak',267,'8978881199668','Perawat'),
('niyagapradipta@example.net','Anak',60,'7021367346429','Dokter'),
('oktavianiedi@example.com','Anak',766,'6854548384399','Dokter'),
('padmatamba@example.net','Neurologi',698,'3231362088611','Perawat'),
('palastrigara@example.com','Kulit',514,'6467713229250','Perawat'),
('permatafitriani@example.com','Kardiologi',887,'5795813019374','Dokter'),
('pramadan@example.com','Kardiologi',345,'3418755359460','Dokter'),
('prasetyarajasa@example.com','Anak',879,'6476282281729','Dokter'),
('prayitna27@example.org','Kulit',532,'6195802846384','Dokter'),
('puji38@example.net','Neurologi',198,'4917310989924','Dokter'),
('putraibrani@example.com','Bedah',432,'2889249887652','Perawat'),
('raisa80@example.org','Kulit',267,'0847125316049','Perawat'),
('safitrigalak@example.com','Gigi',432,'1850779093746','Perawat'),
('saptonojayeng@example.com','Kulit',574,'3176634210225','Dokter'),
('sbudiman@example.org','Neurologi',698,'6421291578803','Dokter'),
('sihombinglantar@example.com','Neurologi',718,'9350438417798','Perawat'),
('sihombingutama@example.org','Umum',698,'9173799408188','Dokter'),
('suciyulianti@example.org','Gigi',766,'8455206096029','Perawat'),
('taniasimbolon@example.org','Anak',879,'6760843605438','Perawat'),
('twaluyo@example.org','Kulit',574,'1677907901236','Perawat'),
('usuryono@example.net','Neurologi',198,'1843757441677','Dokter'),
('utamahardiansyah@example.net','Anak',345,'8296772561814','Dokter'),
('uuwais@example.org','Gigi',576,'1013773091907','Perawat'),
('vanesa24@example.com','Bedah',432,'7509986804563','Perawat'),
('wahyusaragih@example.net','Umum',247,'0027854913423','Perawat'),
('wakiman29@example.org','Kulit',514,'5422865734213','Perawat'),
('waluyoeja@example.org','Kardiologi',532,'4062767046178','Perawat'),
('waluyoganjaran@example.com','Kulit',60,'6184514054125','Perawat'),
('waluyoilyas@example.com','Neurologi',306,'8438871832024','Dokter'),
('warjijailani@example.org','Kulit',887,'6092270913146','Dokter'),
('widiastutinadine@example.org','Gigi',766,'7785220705425','Dokter'),
('winarnowage@example.org','Neurologi',60,'5288651836482','Dokter'),
('winda56@example.com','Umum',532,'3025929780793','Dokter'),
('zalindra02@example.com','Anak',791,'7507595894494','Perawat');
/*!40000 ALTER TABLE `tenaga_medis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-16 22:01:41
